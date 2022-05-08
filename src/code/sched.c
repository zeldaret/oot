/**
 * @file sched.c
 *
 * This file implements a cooperative scheduler for managing tasks that run on the RSP and RDP
 * asynchronously such as graphics and audio processing. Tasks are prepared and sent to it from
 * other threads, where it is placed in a queue until the necessary resources are available. Tasks
 * are usually ran in the order they are received, with one exception described below. Tasks can
 * also request, through flags, whether the scheduler should swap the active framebuffer once the
 * task completes.
 * Together with irqmgr.c, these systems implement the libultra video and task scheduling model from
 * the libultra "sched" module. Notably, the original sched module supports a wider range of ways to
 * communicate with the RDP, while the Zelda 64 implementation only allows the RSP microcode to send
 * commands to the RDP. The Zelda 64 implementation also has more complex behavior involving the
 * framebuffers.
 *
 * There are four task types supported:
 *
 * M_NULTASK
 *  "NULL" tasks.
 *  Tasks of this type don't perform any operations, it can be used to "flush" the task queue. Threads
 *  can wait for this task to complete to ensure there are no more tasks queued in the scheduler.
 *
 * M_GFXTASK
 *  Graphics Processing tasks.
 *  Only these tasks can make use of the RDP.
 *
 * M_AUDTASK
 *  Audio Processing tasks.
 *  These tasks have a higher "priority" than other tasks. If an audio task is enqueued and another
 *  task is currently running, the scheduler will signal to the running task that it should "yield"
 *  the RSP to the audio task. The running task will save it's current state and stop running, allowing
 *  the scheduler to send the audio task. This ensures that audio data is always available to be consumed
 *  by the audio DAC even if another task such as graphics is running slow, avoiding undesirable sound
 *  artifacts. This is the meaning of "cooperative" scheduler, the current task must acknowledge the
 *  yield request rather than be immediately interrupted as it would be in a preemptive scheduler.
 *
 * M_NJPEGTASK
 *  JPEG to RGBA16 decoding tasks.
 *
 * @see irqmgr.c
 */
#include "global.h"

#define RSP_DONE_MSG 667
#define RDP_DONE_MSG 668
#define NOTIFY_MSG 670 // original name: ENTRY_MSG

vs32 sLogScheduler = false;

OSTime sRSPGFXStartTime;
OSTime sRSPAudioStartTime;
OSTime sRSPOtherStartTime;
OSTime sRDPStartTime;

/**
 * Set the current framebuffer to the swapbuffer pointed to by the provided cfb
 */
void Sched_SwapFrameBuffer(CfbInfo* cfbInfo) {
    u16 width;

    LogUtils_CheckValidPointer("cfbinfo->swapbuffer", cfbInfo->swapBuffer, "../sched.c", 340);

    if (cfbInfo->swapBuffer != NULL) {
        // Register the swapbuffer to display on next VI
        osViSwapBuffer(cfbInfo->swapBuffer);
        cfbInfo->updateTimer = cfbInfo->updateRate;

        if (sLogScheduler) {
            osSyncPrintf("osViSwapBuffer %08x %08x %08x\n", osViGetCurrentFramebuffer(), osViGetNextFramebuffer(),
                         (cfbInfo != NULL) ? cfbInfo->swapBuffer : NULL);
        }

        width = (cfbInfo->viMode != NULL) ? cfbInfo->viMode->comRegs.width : (u32)gScreenWidth;
        Fault_SetFrameBuffer(cfbInfo->swapBuffer, width, 16);

        if (HREG(80) == 0xD && HREG(95) != 0xD) {
            HREG(81) = 0;
            HREG(82) = 0;
            HREG(83) = 1;
            HREG(84) = 0;
            HREG(85) = 1;
            HREG(86) = 0;
            HREG(87) = 0;
            HREG(88) = 0;
            HREG(89) = 0;
            HREG(90) = 0;
            HREG(91) = 0;
            HREG(92) = 0;
            HREG(93) = 0;
            HREG(94) = 0;
            HREG(95) = 0xD;
        }
        if (HREG(80) == 0xD && HREG(81) == 2) {
            osViSetSpecialFeatures((HREG(82) != 0) ? OS_VI_GAMMA_ON : OS_VI_GAMMA_OFF);
            osViSetSpecialFeatures((HREG(83) != 0) ? OS_VI_DITHER_FILTER_ON : OS_VI_DITHER_FILTER_OFF);
            osViSetSpecialFeatures((HREG(84) != 0) ? OS_VI_GAMMA_DITHER_ON : OS_VI_GAMMA_DITHER_OFF);
            osViSetSpecialFeatures((HREG(85) != 0) ? OS_VI_DIVOT_ON : OS_VI_DIVOT_OFF);
        }
    }
    cfbInfo->unk_10 = 0;
}

/**
 * Routine to carry out framebuffer swap on VI retrace and task completion
 */
void Sched_RetraceSwapBuffer(SchedContext* sc, CfbInfo* cfbInfo) {
    if (sc->firstSwap) {
        sc->firstSwap = false;

        if (gIrqMgrResetStatus == IRQ_RESET_STATUS_IDLE) {
            ViConfig_UpdateVi(false);
        }
    }
    Sched_SwapFrameBuffer(cfbInfo);
}

void Sched_HandleReset(SchedContext* sc) {
    OSTime now;

    if (sc->curRSPTask != NULL) {
        now = osGetTime();

        if (sc->curRSPTask->framebuffer == NULL) {
            // audio and jpeg tasks end up in here
            LOG_TIME("(((u64)(now - audio_rsp_start_time)*(1000000LL/15625LL))/((62500000LL*3/4)/15625LL))",
                     OS_CYCLES_TO_USEC(now - sRSPAudioStartTime), "../sched.c", 421);
        } else if (OS_CYCLES_TO_USEC(now - sRSPGFXStartTime) > 1000000 ||
                   OS_CYCLES_TO_USEC(now - sRDPStartTime) > 1000000) {
            // More than 1 second since the RSP or RDP tasks began, halt the RSP and RDP
            RcpUtils_Reset();
            // Manually send RSP/RDP done messages to the scheduler interrupt queue if appropriate
            if (sc->curRSPTask != NULL) {
                LOG_TIME("(((u64)(now - graph_rsp_start_time)*(1000000LL/15625LL))/((62500000LL*3/4)/15625LL))",
                         OS_CYCLES_TO_USEC(now - sRSPGFXStartTime), "../sched.c", 427);
                osSendMesg(&sc->interruptQueue, (OSMesg)RSP_DONE_MSG, OS_MESG_NOBLOCK);
            }
            if (sc->curRDPTask != NULL) {
                LOG_TIME("(((u64)(now - rdp_start_time)*(1000000LL/15625LL))/((62500000LL*3/4)/15625LL))",
                         OS_CYCLES_TO_USEC(now - sRDPStartTime), "../sched.c", 431);
                osSendMesg(&sc->interruptQueue, (OSMesg)RDP_DONE_MSG, OS_MESG_NOBLOCK);
            }
        }
    }
}

void Sched_HandleStop(SchedContext* sc) {
    // black the screen and reset the VI y scale just in time for NMI reset
    ViConfig_UpdateVi(true);
}

/**
 * Enqueue a task to either the audio task list or the gfx task list
 */
void Sched_QueueTask(SchedContext* sc, OSScTask* task) {
    s32 type = task->list.t.type;

    ASSERT((type == M_AUDTASK) || (type == M_GFXTASK) || (type == M_NJPEGTASK) || (type == M_NULTASK),
           "(type == M_AUDTASK) || (type == M_GFXTASK) || (type == M_NJPEGTASK) || (type == M_NULTASK)", "../sched.c",
           463);

    if (type == M_AUDTASK) {
        if (sLogScheduler) {
            // "You have entered an audio task"
            osSyncPrintf("オーディオタスクをエントリしました\n");
        }
        // Add to audio queue
        if (sc->audioListTail != NULL) {
            sc->audioListTail->next = task;
        } else {
            sc->audioListHead = task;
        }
        sc->audioListTail = task;

        // Set audio flag
        sc->doAudio = true;
    } else {
        if (sLogScheduler) {
            // "Entered graph task"
            osSyncPrintf("グラフタスクをエントリしました\n");
        }
        // Add to graphics queue
        if (sc->gfxListTail != NULL) {
            sc->gfxListTail->next = task;
        } else {
            sc->gfxListHead = task;
        }
        sc->gfxListTail = task;
    }
    task->next = NULL;
    task->state = task->flags & OS_SC_RCP_MASK;
}

void Sched_Yield(SchedContext* sc) {
    if (!(sc->curRSPTask->state & OS_SC_YIELD)) {
        // Not already been asked to yield
        ASSERT(sc->curRSPTask->list.t.type != M_AUDTASK, "sc->curRSPTask->list.t.type != M_AUDTASK", "../sched.c", 496);

        sc->curRSPTask->state |= OS_SC_YIELD;

        // Send yield request
        osSpTaskYield();

        if (sLogScheduler) {
            osSyncPrintf("%08d:osSpTaskYield\n", (u32)(OS_CYCLES_TO_USEC(osGetTime())));
        }
    }
}

/**
 * Check if the fraembuffer the gfx task wants to use is allowed
 */
OSScTask* Sched_GfxTaskFramebufferValid(SchedContext* sc, OSScTask* task) {
    if (task == NULL) {
        return NULL;
    }

    // If there are pending swaps, wait until there are none (within 2 VI)

    if (sc->pendingSwapBuf1 != NULL) {
        if (0) {
            ASSERT(sc->pendingSwapBuf1 != NULL, "sc->pending_swapbuffer1", "../sched.c", UNK_LINE);
        }
        return NULL;
    }

    if (sc->pendingSwapBuf2 != NULL) {
        if (0) {
            ASSERT(sc->pendingSwapBuf2 != NULL, "sc->pending_swapbuffer2", "../sched.c", UNK_LINE);
        }
        return NULL;
    }

    // If the task's framebuffer is one of the pending swaps or NULL.
    // In conjunction with the above, these checks are redundant as the pending swap buffers will only be
    // NULL here, so these could have been simplified to checks for the task's framebuffer being non-NULL.

    if (((sc->pendingSwapBuf2 != NULL) ? sc->pendingSwapBuf2->swapBuffer : NULL) == task->framebuffer->framebuffer) {
        return NULL;
    }

    if (((sc->pendingSwapBuf1 != NULL) ? sc->pendingSwapBuf1->swapBuffer : NULL) == task->framebuffer->framebuffer) {
        return NULL;
    }

    // If the task's framebuffer is the current framebuffer, abort

    if (osViGetCurrentFramebuffer() == task->framebuffer->framebuffer) {
        return NULL;
    }

    return task;
}

/**
 * Schedules the next tasks to run on the RSP and RDP
 *
 * @param sc Scheduler
 * @param spTaskOut Next task to run on the RSP
 * @param dpTaskOut Next task to run on the RDP
 * @param state Bits containing whether the RSP and RDP are currently in use
 * @return Bits containing whether the RSP and RDP will be in use after starting the next tasks
 */
s32 Sched_Schedule(SchedContext* sc, OSScTask** spTaskOut, OSScTask** dpTaskOut, s32 state) {
    s32 ret = state;
    OSScTask* gfxTask = sc->gfxListHead;
    OSScTask* audioTask = sc->audioListHead;

    if (sc->doAudio && (state & OS_SC_SP)) {
        // If we should schedule an audio task and the RSP is available
        // Mark audio task to enqueue
        *spTaskOut = audioTask;
        // RSP no longer available
        ret &= ~OS_SC_SP;
        // Audio task is about to be sent
        sc->doAudio = false;
        // Advance task queue
        sc->audioListHead = sc->audioListHead->next;
        if (sc->audioListHead == NULL) {
            sc->audioListTail = NULL;
        }
    } else if (gfxTask != NULL) {
        // GFX Task
        if ((gfxTask->state & OS_SC_YIELDED) || !(gfxTask->flags & OS_SC_NEEDS_RDP)) {
            // If this is a yielded GFX task, or the RDP is not needed for this GFX task
            if (state & OS_SC_SP) {
                // If the RSP is available, enqueue the task and mark the RSP as in use
                *spTaskOut = gfxTask;
                ret &= ~OS_SC_SP;
                // Advance task queue
                sc->gfxListHead = sc->gfxListHead->next;
                if (sc->gfxListHead == NULL) {
                    sc->gfxListTail = NULL;
                }
            }
        } else if (state == (OS_SC_SP | OS_SC_DP)) {
            // Both the RSP and RDP are available, check requested framebuffer
            if (gfxTask->framebuffer == NULL || Sched_GfxTaskFramebufferValid(sc, gfxTask) != NULL) {
                // Enqueue the task to both the RSP and RDP and mark both as in use
                *spTaskOut = *dpTaskOut = gfxTask;
                ret &= ~(OS_SC_SP | OS_SC_DP);
                // Advance task queue
                sc->gfxListHead = sc->gfxListHead->next;
                if (sc->gfxListHead == NULL) {
                    sc->gfxListTail = NULL;
                }
            }
        }
    }
    return ret;
}

/**
 * Routine to swap the framebuffer on task completion
 */
void Sched_TaskSwapBuffer(SchedContext* sc, OSScTask* task) {
    if (sc->pendingSwapBuf1 == NULL) {
        sc->pendingSwapBuf1 = task->framebuffer;

        LogUtils_CheckValidPointer("sc->pending_swapbuffer1", sc->pendingSwapBuf1, "../sched.c", 618);

        if (sc->curBuf == NULL || sc->curBuf->updateTimer < 1) {
            Sched_RetraceSwapBuffer(sc, task->framebuffer);
        }
    }
}

/**
 * Checks if the task is done, i.e. it has relinquished access to both the RSP and RDP.
 * If so, send a message to the task's message queue if there is one, and swap the framebuffer
 * if required.
 */
u32 Sched_TaskComplete(SchedContext* sc, OSScTask* task) {
    // Check that the task has released both the RSP and RDP. For graphics tasks that use both,
    // the RSP will typically finish before the RDP, as the RSP can halt while the RDP is still
    // working through the command buffer.
    if (!(task->state & (OS_SC_DP | OS_SC_SP))) {
        // send a message to the notify queue if there is one
        if (task->msgQueue != NULL) {
            osSendMesg(task->msgQueue, task->msg, OS_MESG_BLOCK);
        }

        // Swap the framebuffer if needed
        if (task->flags & OS_SC_SWAPBUFFER) {
            Sched_TaskSwapBuffer(sc, task);
        }
        return true;
    }
    return false;
}

/**
 * Runs the next tasks. The scheduler doesn't support running RDP tasks without
 * passthrough via the RSP, if there is no RSP task to run then the RDP task will
 * also do nothing.
 */
void Sched_RunTask(SchedContext* sc, OSScTask* spTask, OSScTask* dpTask) {
    ASSERT(sc->curRSPTask == NULL, "sc->curRSPTask == NULL", "../sched.c", 663);

    // If there is no RSP task there's nothing to do.
    if (spTask != NULL) {
        if (spTask->list.t.type == M_NULTASK) {
            // NULTASK is a sync/flush operation, immediately relinquish the RSP
            // and RDP and mark done.
            if (spTask->flags & OS_SC_NEEDS_RSP) {
                spTask->state &= ~OS_SC_SP;
                sc->curRSPTask = NULL;
            }
            if (spTask->flags & OS_SC_NEEDS_RDP) {
                spTask->state &= ~OS_SC_DP;
                sc->curRDPTask = NULL;
            }
            // Finalize
            Sched_TaskComplete(sc, spTask);
            return;
        }

        spTask->state &= ~(OS_SC_YIELD | OS_SC_YIELDED);
        // Write back data cache and load the OSTask into the RSP
        osWritebackDCacheAll();
        osSpTaskLoad(&spTask->list);

        // Begin profiling timers
        if (spTask->list.t.type == M_AUDTASK) {
            sRSPAudioStartTime = osGetTime();
        } else if (spTask->list.t.type == M_GFXTASK) {
            sRSPGFXStartTime = osGetTime();
        } else {
            sRSPOtherStartTime = osGetTime();
        }

        // Run RSP
        osSpTaskStartGo(&spTask->list);

        if (sLogScheduler) {
            osSyncPrintf(
                "%08d:osSpTaskStartGo(%08x) %s\n", (u32)OS_CYCLES_TO_USEC(osGetTime()), &spTask->list,
                (spTask->list.t.type == M_AUDTASK ? "AUDIO" : (spTask->list.t.type == M_GFXTASK ? "GRAPH" : "OTHER")));
        }

        // Set currently running RSP task
        sc->curRSPTask = spTask;

        // If the task also uses the RDP, set current running RDP task
        if (spTask == dpTask && sc->curRDPTask == NULL) {
            sc->curRDPTask = dpTask;
            sRDPStartTime = sRSPGFXStartTime;
        }
    }
}

void Sched_HandleNotification(SchedContext* sc) {
    OSScTask* nextRSP = NULL;
    OSScTask* nextRDP = NULL;
    s32 state;
    OSScTask* task = NULL;

    // Enqueue any tasks sent by other threads
    while (osRecvMesg(&sc->cmdQueue, (OSMesg*)&task, OS_MESG_NOBLOCK) != -1) {
        Sched_QueueTask(sc, task);
    }

    // If an audio task has been enqueued and there is currently an RSP task running,
    // signal to the currently running task to yield the RSP so that the audio task may
    // be ran as soon as possible.
    if (sc->doAudio && sc->curRSPTask != NULL) {
        if (sLogScheduler) {
            osSyncPrintf("[YIELD B]");
        }
        Sched_Yield(sc);
        return;
    }

    // Run next task in the queue if there is one and the necessary resources are available
    state = ((sc->curRSPTask == NULL) << 1) | (sc->curRDPTask == NULL);
    if (Sched_Schedule(sc, &nextRSP, &nextRDP, state) != state) {
        Sched_RunTask(sc, nextRSP, nextRDP);
    }
    if (sLogScheduler) {
        osSyncPrintf("EN sc:%08x sp:%08x dp:%08x state:%x\n", sc, nextRSP, nextRDP, state);
    }
}

void Sched_HandleRetrace(SchedContext* sc) {
    if (sLogScheduler) {
        osSyncPrintf("%08d:scHandleRetrace %08x\n", (u32)OS_CYCLES_TO_USEC(osGetTime()), osViGetCurrentFramebuffer());
    }
    ViConfig_UpdateBlack();
    sc->retraceCount++;

    // Retrace handlers run after VI context swap. The last swap buffer may now be the current buffer.
    if (osViGetCurrentFramebuffer() == ((sc->pendingSwapBuf1 != NULL) ? sc->pendingSwapBuf1->swapBuffer : NULL)) {
        if (sc->curBuf != NULL) {
            sc->curBuf->unk_10 = 0;
        }
        if (sc->pendingSwapBuf1 != NULL) {
            sc->pendingSwapBuf1->unk_10 = 0;
        }
        // Advance buffers
        sc->curBuf = sc->pendingSwapBuf1;
        sc->pendingSwapBuf1 = sc->pendingSwapBuf2;
        sc->pendingSwapBuf2 = NULL;
    }

    if (sc->curBuf != NULL) {
        // Swap the framebuffer when the update timer runs out
        if (sc->curBuf->updateTimer > 0) {
            sc->curBuf->updateTimer--;
        }
        if (sc->curBuf->updateTimer <= 0 && sc->pendingSwapBuf1 != NULL) {
            Sched_RetraceSwapBuffer(sc, sc->pendingSwapBuf1);
        }
    }

    if (sLogScheduler) {
        osSyncPrintf("%08x %08x %08x %d\n", osViGetCurrentFramebuffer(), osViGetNextFramebuffer(),
                     (sc->pendingSwapBuf1 != NULL) ? sc->pendingSwapBuf1->swapBuffer : NULL,
                     (sc->curBuf != NULL) ? sc->curBuf->updateTimer : 0);
    }

    // Run the notification handler to enqueue any waiting tasks and possibly run one
    Sched_HandleNotification(sc);
}

/**
 * RSP has signalled that the task has either completed or yielded.
 */
void Sched_HandleRSPDone(SchedContext* sc) {
    OSScTask* curRSPTask;
    OSScTask* nextRSP = NULL;
    OSScTask* nextRDP = NULL;
    s32 state;

    ASSERT(sc->curRSPTask != NULL, "sc->curRSPTask", "../sched.c", 819);

    // Task profiling
    if (sc->curRSPTask->list.t.type == M_AUDTASK) {
        gRSPAudioTotalTime += osGetTime() - sRSPAudioStartTime;
    } else if (sc->curRSPTask->list.t.type == M_GFXTASK) {
        gRSPGFXTotalTime += osGetTime() - sRSPGFXStartTime;
    } else {
        gRSPOtherTotalTime += osGetTime() - sRSPOtherStartTime;
    }

    // Release RSP
    curRSPTask = sc->curRSPTask;
    sc->curRSPTask = NULL;

    if (sLogScheduler) {
        osSyncPrintf("RSP DONE %d %d", curRSPTask->state & OS_SC_YIELD, osSpTaskYielded(&curRSPTask->list));
    }

    if ((curRSPTask->state & OS_SC_YIELD) && osSpTaskYielded(&curRSPTask->list)) {
        if (sLogScheduler) {
            osSyncPrintf("[YIELDED]\n");
        }
        // Task yielded, set yielded state
        curRSPTask->state |= OS_SC_YIELDED;
        // Add it to the front of the queue
        curRSPTask->next = sc->gfxListHead;
        sc->gfxListHead = curRSPTask;
        if (sc->gfxListTail == NULL) {
            sc->gfxListTail = curRSPTask;
        }
    } else {
        if (sLogScheduler) {
            osSyncPrintf("[NOT YIELDED]\n");
        }
        // Task has completed on the RSP, unset RSP flag and check if the task is fully complete
        curRSPTask->state &= ~OS_SC_SP;
        Sched_TaskComplete(sc, curRSPTask);
    }

    // Run next task in the queue if there is one and the necessary resources are available
    state = ((sc->curRSPTask == NULL) << 1) | (sc->curRDPTask == NULL);
    if (Sched_Schedule(sc, &nextRSP, &nextRDP, state) != state) {
        Sched_RunTask(sc, nextRSP, nextRDP);
    }
    if (sLogScheduler) {
        osSyncPrintf("SP sc:%08x sp:%08x dp:%08x state:%x\n", sc, nextRSP, nextRDP, state);
    }
}

/**
 * RDP has signalled task done upon reaching a DPFullSync command
 */
void Sched_HandleRDPDone(SchedContext* sc) {
    OSScTask* curTask;
    OSScTask* nextRSP = NULL;
    OSScTask* nextRDP = NULL;
    s32 state;

    // Task profiling
    gRDPTotalTime = osGetTime() - sRDPStartTime;

    // Sanity check
    ASSERT(sc->curRDPTask != NULL, "sc->curRDPTask", "../sched.c", 878);
    ASSERT(sc->curRDPTask->list.t.type == M_GFXTASK, "sc->curRDPTask->list.t.type == M_GFXTASK", "../sched.c", 879);

    // Release RDP
    curTask = sc->curRDPTask;
    sc->curRDPTask = NULL;

    // Task has completed on the RDP, unset RDP flag and check if the task is fully complete
    curTask->state &= ~OS_SC_DP;
    Sched_TaskComplete(sc, curTask);

    // Run next task in the queue if there is one and the necessary resources are available
    state = ((sc->curRSPTask == NULL) << 1) | (sc->curRDPTask == NULL);
    if (Sched_Schedule(sc, &nextRSP, &nextRDP, state) != state) {
        Sched_RunTask(sc, nextRSP, nextRDP);
    }
    if (sLogScheduler) {
        osSyncPrintf("DP sc:%08x sp:%08x dp:%08x state:%x\n", sc, nextRSP, nextRDP, state);
    }
}

/**
 * Called by other threads in order to wake the scheduler up immediately to enqueue and
 * possibly run a task that has been sent to the task queue. Otherwise, any pending tasks
 * will be enqueued at VI retrace.
 *
 * Original name: osScKickEntryMsg
 */
void Sched_Notify(SchedContext* sc) {
    if (sLogScheduler) {
        osSyncPrintf("osScKickEntryMsg\n");
    }

    osSendMesg(&sc->interruptQueue, (OSMesg)NOTIFY_MSG, OS_MESG_BLOCK);
}

void Sched_ThreadEntry(void* arg) {
    OSMesg msg = NULL;
    SchedContext* sc = (SchedContext*)arg;

    while (true) {
        if (sLogScheduler) {
            // "%08d: standby"
            osSyncPrintf("%08d:待機中\n", (u32)OS_CYCLES_TO_USEC(osGetTime()));
        }

        // Await interrupt messages, either from the OS, IrqMgr, or another thread
        osRecvMesg(&sc->interruptQueue, &msg, OS_MESG_BLOCK);

        switch ((s32)msg) {
            case NOTIFY_MSG:
                // Notification from another thread
                if (sLogScheduler) {
                    osSyncPrintf("%08d:ENTRY_MSG\n", (u32)OS_CYCLES_TO_USEC(osGetTime()));
                }
                Sched_HandleNotification(sc);
                continue;
            case RSP_DONE_MSG:
                // RSP task complete
                if (sLogScheduler) {
                    osSyncPrintf("%08d:RSP_DONE_MSG\n", (u32)OS_CYCLES_TO_USEC(osGetTime()));
                }
                Sched_HandleRSPDone(sc);
                continue;
            case RDP_DONE_MSG:
                // RDP task complete
                if (sLogScheduler) {
                    osSyncPrintf("%08d:RDP_DONE_MSG\n", (u32)OS_CYCLES_TO_USEC(osGetTime()));
                }
                Sched_HandleRDPDone(sc);
                continue;
        }
        switch (((OSScMsg*)msg)->type) {
            case OS_SC_RETRACE_MSG:
                // VI retrace
                Sched_HandleRetrace(sc);
                continue;
            case OS_SC_PRE_NMI_MSG:
                // PreNMI
                Sched_HandleReset(sc);
                continue;
            case OS_SC_NMI_MSG:
                // NMI
                Sched_HandleStop(sc);
                continue;
        }
    }
}

void Sched_Init(SchedContext* sc, void* stack, OSPri priority, UNK_TYPE arg3, UNK_TYPE arg4, IrqMgr* irqMgr) {
    bzero(sc, sizeof(SchedContext));
    sc->firstSwap = true;

    // Create message queues for receiving interrupt events and tasks
    osCreateMesgQueue(&sc->interruptQueue, sc->interruptMsgBuf, ARRAY_COUNT(sc->interruptMsgBuf));
    osCreateMesgQueue(&sc->cmdQueue, sc->cmdMsgBuf, ARRAY_COUNT(sc->cmdMsgBuf));
    osSetEventMesg(OS_EVENT_SP, &sc->interruptQueue, RSP_DONE_MSG);
    osSetEventMesg(OS_EVENT_DP, &sc->interruptQueue, RDP_DONE_MSG);
    IrqMgr_AddClient(irqMgr, &sc->irqClient, &sc->interruptQueue);
    osCreateThread(&sc->thread, THREAD_ID_SCHED, Sched_ThreadEntry, sc, stack, priority);
    osStartThread(&sc->thread);
}
