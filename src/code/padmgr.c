/**
 * @file padmgr.c
 *
 * This file implements communicating with joybus devices at a high level and serving the results to other threads.
 *
 * Any device that can be plugged into one of the four controller ports such as a standard N64 controller is a joybus
 * device. Some joybus devices are also located inside the cartridge such as EEPROM for save data or the Real-Time
 * Clock, however neither of these are used in Zelda64 and so this type of communication is unimplemented. Of the
 * possible devices that can be plugged into the controller ports, the only device that padmgr will recognize and
 * attempt to communicate with is the standard N64 controller.
 *
 * Communicating with these devices is broken down into various layers:
 *
 * Other threads                    : The rest of the program that will use the polled data
 *  |
 * PadMgr                           : Manages devices, submits polling commands at vertical retrace
 *  |
 * Libultra osCont* routines        : Interface for building commands and safely using the Serial Interface
 *  |
 * Serial Interface                 : Hardware unit for sending joybus commands and receiving data via DMA
 *  |
 * PIF                              : Forwards joybus commands and receives response data from the devices
 *  |---¬---¬---¬-------¬
 *  1   2   3   4       5           : The joybus devices plugged into the four controller ports or on the cartridge
 *
 * Joybus communication is handled on another thread as polling and receiving controller data is a slow process; the
 * N64 programming manual section 26.2.4.1 quotes 2 milliseconds as the expected delay from calling
 * `osContStartReadData` to receiving the data. By running this on a separate thread to the game state, work can be
 * done while waiting for this operation to complete.
 */
#include "global.h"
#include "terminal.h"

#define PADMGR_LOG(controllerNum, msg)                                    \
    if (1) {                                                              \
        osSyncPrintf(VT_FGCOL(YELLOW));                                   \
        /* padmgr: Controller %d: %s */                                   \
        osSyncPrintf("padmgr: %dコン: %s\n", (controllerNum) + 1, (msg)); \
        osSyncPrintf(VT_RST);                                             \
    }                                                                     \
    (void)0

#define LOG_SEVERITY_NOLOG 0
#define LOG_SEVERITY_CRITICAL 1
#define LOG_SEVERITY_ERROR 2
#define LOG_SEVERITY_VERBOSE 3

s32 gPadMgrLogSeverity = LOG_SEVERITY_CRITICAL;

/**
 * Acquires exclusive access to the serial event queue.
 *
 * When a DMA to/from PIF RAM completes, an SI interrupt is generated to notify the process that the DMA has completed
 * and a message is posted to the serial event queue. If multiple processes are trying to use the SI at the same time
 * it becomes ambiguous as to which DMA has completed, so a locking system is required to arbitrate access to the SI.
 *
 * Once the task requiring the serial event queue is complete, it should be released with a call to
 * `PadMgr_ReleaseSerialEventQueue()`.
 *
 * If another process tries to acquire the event queue, the current thread will be blocked until the event queue is
 * released. Note the possibility for a deadlock, if the thread that already holds the serial event queue attempts to
 * acquire it again it will block forever.
 *
 * @return The message queue to which SI interrupt events are posted.
 *
 * @see PadMgr_ReleaseSerialEventQueue
 */
OSMesgQueue* PadMgr_AcquireSerialEventQueue(PadMgr* padMgr) {
    OSMesgQueue* serialEventQueue = NULL;

    if (gPadMgrLogSeverity >= LOG_SEVERITY_VERBOSE) {
        // "serialMsgQ Waiting for lock"
        osSyncPrintf("%2d %d serialMsgQロック待ち         %08x %08x          %08x\n", osGetThreadId(NULL),
                     MQ_GET_COUNT(&padMgr->serialLockQueue), padMgr, &padMgr->serialLockQueue, &serialEventQueue);
    }

    osRecvMesg(&padMgr->serialLockQueue, (OSMesg*)&serialEventQueue, OS_MESG_BLOCK);

    if (gPadMgrLogSeverity >= LOG_SEVERITY_VERBOSE) {
        // "serialMsgQ Locked"
        osSyncPrintf("%2d %d serialMsgQをロックしました                     %08x\n", osGetThreadId(NULL),
                     MQ_GET_COUNT(&padMgr->serialLockQueue), serialEventQueue);
    }

    return serialEventQueue;
}

/**
 * Relinquishes access to the serial message queue, allowing another process to acquire and use it.
 *
 * @param serialEventQueue The serial message queue acquired by `PadMgr_AcquireSerialEventQueue`
 *
 * @see PadMgr_AcquireSerialEventQueue
 */
void PadMgr_ReleaseSerialEventQueue(PadMgr* padMgr, OSMesgQueue* serialEventQueue) {
    if (gPadMgrLogSeverity >= LOG_SEVERITY_VERBOSE) {
        // "serialMsgQ Unlock"
        osSyncPrintf("%2d %d serialMsgQロック解除します   %08x %08x %08x\n", osGetThreadId(NULL),
                     MQ_GET_COUNT(&padMgr->serialLockQueue), padMgr, &padMgr->serialLockQueue, serialEventQueue);
    }

    osSendMesg(&padMgr->serialLockQueue, (OSMesg)serialEventQueue, OS_MESG_BLOCK);

    if (gPadMgrLogSeverity >= LOG_SEVERITY_VERBOSE) {
        // "serialMsgQ Unlocked"
        osSyncPrintf("%2d %d serialMsgQロック解除しました %08x %08x %08x\n", osGetThreadId(NULL),
                     MQ_GET_COUNT(&padMgr->serialLockQueue), padMgr, &padMgr->serialLockQueue, serialEventQueue);
    }
}

/**
 * Locks controller input data while padmgr is reading new inputs or another thread is using the current inputs.
 * This prevents new inputs overwriting the current inputs while they are in use.
 *
 * @see PadMgr_UnlockPadData
 */
void PadMgr_LockPadData(PadMgr* padMgr) {
    osRecvMesg(&padMgr->lockQueue, NULL, OS_MESG_BLOCK);
}

/**
 * Unlocks controller input data, allowing padmgr to read new inputs or another thread to access the most recently
 * polled inputs.
 *
 * @see PadMgr_LockPadData
 */
void PadMgr_UnlockPadData(PadMgr* padMgr) {
    osSendMesg(&padMgr->lockQueue, NULL, OS_MESG_BLOCK);
}

/**
 * Activates the rumble pak for all controllers it is enabled on, stops it for all controllers it is disabled on and
 * attempts to initialize it for a controller if it is not already initialized.
 */
void PadMgr_UpdateRumble(PadMgr* padMgr) {
    static u32 sRumbleErrorCount = 0; // original name: "errcnt"
    static u32 sRumbleUpdateCounter;
    s32 motorStart = MOTOR_START; // required for matching?
    s32 triedRumbleComm;
    OSMesgQueue* serialEventQueue = PadMgr_AcquireSerialEventQueue(padMgr);
    s32 ret;
    s32 i;

    triedRumbleComm = false;

    for (i = 0; i < MAXCONTROLLERS; i++) {
        if (padMgr->ctrlrIsConnected[i]) {
            // Check status for whether a controller pak is connected
            if (padMgr->padStatus[i].status & CONT_CARD_ON) {
                if (padMgr->pakType[i] == CONT_PAK_RUMBLE) {
                    if (padMgr->rumbleEnable[i]) {
                        if (padMgr->rumbleTimer[i] < 3) {
                            // "Rumble pack brrr"
                            PADMGR_LOG(i, "振動パック ぶるぶるぶるぶる");

                            // This should be the osMotorStart macro, however the temporary variable motorStart is
                            // currently required for matching
                            if (__osMotorAccess(&padMgr->rumblePfs[i], motorStart) != 0) {
                                padMgr->pakType[i] = CONT_PAK_NONE;

                                // "A communication error has occurred with the vibration pack"
                                PADMGR_LOG(i, "振動パックで通信エラーが発生しました");
                            } else {
                                padMgr->rumbleTimer[i] = 3;
                            }

                            triedRumbleComm = true;
                        }
                    } else {
                        if (padMgr->rumbleTimer[i] != 0) {
                            // "Stop vibration pack"
                            PADMGR_LOG(i, "振動パック 停止");

                            if (osMotorStop(&padMgr->rumblePfs[i]) != 0) {
                                padMgr->pakType[i] = CONT_PAK_NONE;

                                // "A communication error has occurred with the vibration pack"
                                PADMGR_LOG(i, "振動パックで通信エラーが発生しました");
                            } else {
                                padMgr->rumbleTimer[i]--;
                            }

                            triedRumbleComm = true;
                        }
                    }
                }
            } else {
                if (padMgr->pakType[i] != CONT_PAK_NONE) {
                    if (padMgr->pakType[i] == CONT_PAK_RUMBLE) {
                        // "It seems that a vibration pack was pulled out"
                        PADMGR_LOG(i, "振動パックが抜かれたようです");
                        padMgr->pakType[i] = CONT_PAK_NONE;
                    } else {
                        // "It seems that a controller pack that is not a vibration pack was pulled out"
                        PADMGR_LOG(i, "振動パックではないコントローラパックが抜かれたようです");
                        padMgr->pakType[i] = CONT_PAK_NONE;
                    }
                }
            }
        }
    }

    if (!triedRumbleComm) {
        // Try to initialize the rumble pak for controller port `i` if a controller pak is connected and
        // not already known to be an initialized a rumble pak
        i = sRumbleUpdateCounter % MAXCONTROLLERS;

        if (padMgr->ctrlrIsConnected[i] && (padMgr->padStatus[i].status & CONT_CARD_ON) &&
            padMgr->pakType[i] != CONT_PAK_RUMBLE) {
            ret = osMotorInit(serialEventQueue, &padMgr->rumblePfs[i], i);

            if (ret == 0) {
                padMgr->pakType[i] = CONT_PAK_RUMBLE;
                osMotorStart(&padMgr->rumblePfs[i]);
                osMotorStop(&padMgr->rumblePfs[i]);

                // "Recognized vibration pack"
                PADMGR_LOG(i, "振動パックを認識しました");
            } else if (ret == PFS_ERR_DEVICE) {
                padMgr->pakType[i] = CONT_PAK_OTHER;
            } else if (ret == PFS_ERR_CONTRFAIL) {
                LOG_NUM("++errcnt", ++sRumbleErrorCount, "../padmgr.c", 282);

                // "Controller pack communication error"
                PADMGR_LOG(i, "コントローラパックの通信エラー");
            }
        }
    }
    sRumbleUpdateCounter++;

    PadMgr_ReleaseSerialEventQueue(padMgr, serialEventQueue);
}

/**
 * Immediately stops rumble on all controllers
 */
void PadMgr_RumbleStop(PadMgr* padMgr) {
    s32 i;
    OSMesgQueue* serialEventQueue = PadMgr_AcquireSerialEventQueue(padMgr);

    for (i = 0; i < MAXCONTROLLERS; i++) {
        if (osMotorInit(serialEventQueue, &padMgr->rumblePfs[i], i) == 0) {
            // If there is a rumble pak attached to this controller, stop it

            if (gFaultMgr.msgId == 0 && padMgr->rumbleOnTimer != 0) {
                // "Stop rumble pak"
                PADMGR_LOG(i, "振動パック 停止");
            }
            osMotorStop(&padMgr->rumblePfs[i]);
        }
    }

    PadMgr_ReleaseSerialEventQueue(padMgr, serialEventQueue);
}

/**
 * Prevents rumble for 3 VI, ~0.05 seconds at 60 VI/sec
 */
void PadMgr_RumbleReset(PadMgr* padMgr) {
    padMgr->rumbleOffTimer = 3;
}

/**
 * Enables or disables rumble on controller port `port` for 240 VI,
 * ~4 seconds at 60 VI/sec and ~4.8 seconds at 50 VI/sec
 */
void PadMgr_RumbleSetSingle(PadMgr* padMgr, u32 port, u32 rumble) {
    padMgr->rumbleEnable[port] = rumble;
    padMgr->rumbleOnTimer = 240;
}

/**
 * Enables or disables rumble on all controller ports for 240 VI,
 * ~4 seconds at 60 VI/sec and ~4.8 seconds at 50 VI/sec
 *
 * @param enable Array of u8 of length MAXCONTROLLERS containing either true or false to enable or disable rumble
 *               for that controller
 */
void PadMgr_RumbleSet(PadMgr* padMgr, u8* enable) {
    s32 i;

    for (i = 0; i < MAXCONTROLLERS; i++) {
        padMgr->rumbleEnable[i] = enable[i];
    }

    padMgr->rumbleOnTimer = 240;
}

/**
 * Updates `padMgr->inputs` based on the error response of each controller
 */
void PadMgr_UpdateInputs(PadMgr* padMgr) {
    s32 i;
    Input* input;
    OSContPad* pad; // original name: "padnow1"
    s32 buttonDiff;

    PadMgr_LockPadData(padMgr);

    for (input = &padMgr->inputs[0], pad = &padMgr->pads[0], i = 0; i < padMgr->nControllers; i++, input++, pad++) {
        input->prev = input->cur;

        switch (pad->errno) {
            case 0:
                // No error, copy inputs
                input->cur = *pad;
                if (!padMgr->ctrlrIsConnected[i]) {
                    padMgr->ctrlrIsConnected[i] = true;
                    // "Recognized"
                    PADMGR_LOG(i, "認識しました");
                }
                break;
            case (CHNL_ERR_OVERRUN >> 4):
                // Overrun error, reuse previous inputs
                input->cur = input->prev;
                LOG_NUM("this->Key_switch[i]", padMgr->ctrlrIsConnected[i], "../padmgr.c", 380);
                // "Overrun error occurred"
                PADMGR_LOG(i, "オーバーランエラーが発生");
                break;
            case (CHNL_ERR_NORESP >> 4):
                // No response error, take inputs as 0
                input->cur.button = 0;
                input->cur.stick_x = 0;
                input->cur.stick_y = 0;
                input->cur.errno = pad->errno;
                if (padMgr->ctrlrIsConnected[i]) {
                    // If we get no response, consider the controller disconnected
                    padMgr->ctrlrIsConnected[i] = false;
                    padMgr->pakType[i] = CONT_PAK_NONE;
                    padMgr->rumbleTimer[i] = UINT8_MAX;
                    // "Not responding"
                    PADMGR_LOG(i, "応答しません");
                }
                break;
            default:
                // Unknown error response
                LOG_HEX("padnow1->errno", pad->errno, "../padmgr.c", 396);
                Fault_AddHungupAndCrash("../padmgr.c", 397);
                break;
        }

        // Calculate pressed and relative inputs
        buttonDiff = input->prev.button ^ input->cur.button;
        input->press.button |= (u16)(buttonDiff & input->cur.button);
        input->rel.button |= (u16)(buttonDiff & input->prev.button);
        PadUtils_UpdateRelXY(input);
        input->press.stick_x += (s8)(input->cur.stick_x - input->prev.stick_x);
        input->press.stick_y += (s8)(input->cur.stick_y - input->prev.stick_y);
    }

    PadMgr_UnlockPadData(padMgr);
}

void PadMgr_HandleRetrace(PadMgr* padMgr) {
    s32 i;
    OSMesgQueue* serialEventQueue = PadMgr_AcquireSerialEventQueue(padMgr);
    u32 mask;

    // Begin reading controller data
    osContStartReadData(serialEventQueue);

    // Execute retrace callback
    if (padMgr->retraceCallback != NULL) {
        padMgr->retraceCallback(padMgr, padMgr->retraceCallbackArg);
    }

    // Wait for controller data
    osRecvMesg(serialEventQueue, NULL, OS_MESG_BLOCK);
    osContGetReadData(padMgr->pads);

    // If resetting, clear all controllers
    if (padMgr->isResetting) {
        bzero(padMgr->pads, sizeof(padMgr->pads));
    }

    // Update input data
    PadMgr_UpdateInputs(padMgr);

    // Query controller status for all controllers
    osContStartQuery(serialEventQueue);
    osRecvMesg(serialEventQueue, NULL, OS_MESG_BLOCK);
    osContGetQuery(padMgr->padStatus);

    PadMgr_ReleaseSerialEventQueue(padMgr, serialEventQueue);

    // Update the state of connected controllers
    mask = 0;
    for (i = 0; i < MAXCONTROLLERS; i++) {
        if (padMgr->padStatus[i].errno == 0) {
            // Only standard N64 controllers are supported
            if (padMgr->padStatus[i].type == CONT_TYPE_NORMAL) {
                mask |= 1 << i;
            } else {
                LOG_HEX("this->pad_status[i].type", padMgr->padStatus[i].type, "../padmgr.c", 458);
                // "An unknown type of controller is connected"
                osSyncPrintf("知らない種類のコントローラが接続されています\n");
            }
        }
    }
    padMgr->validCtrlrsMask = mask;

    if (gFaultMgr.msgId != 0) {
        // If fault is active, no rumble
        PadMgr_RumbleStop(padMgr);
    } else if (padMgr->rumbleOffTimer > 0) {
        // If the rumble off timer is active, no rumble
        --padMgr->rumbleOffTimer;
        PadMgr_RumbleStop(padMgr);
    } else if (padMgr->rumbleOnTimer == 0) {
        // If the rumble on timer is inactive, no rumble
        PadMgr_RumbleStop(padMgr);
    } else if (!padMgr->isResetting) {
        // If not resetting, update rumble
        PadMgr_UpdateRumble(padMgr);
        --padMgr->rumbleOnTimer;
    }
}

void PadMgr_HandlePreNMI(PadMgr* padMgr) {
    osSyncPrintf("padmgr_HandlePreNMI()\n");
    padMgr->isResetting = true;
    PadMgr_RumbleReset(padMgr);
}

/**
 * Fetches the most recently polled inputs from padmgr
 *
 * @param inputs   Array of Input of length MAXCONTROLLERS to copy inputs into
 * @param gamePoll True if polling inputs for updating the game state
 */
void PadMgr_RequestPadData(PadMgr* padMgr, Input* inputs, s32 gameRequest) {
    s32 i;
    Input* inputIn;
    Input* inputOut;
    s32 buttonDiff;

    PadMgr_LockPadData(padMgr);

    for (inputIn = &padMgr->inputs[0], inputOut = &inputs[0], i = 0; i < MAXCONTROLLERS; i++, inputIn++, inputOut++) {
        if (gameRequest) {
            // Copy inputs as-is, press and rel are calculated prior in `PadMgr_UpdateInputs`
            *inputOut = *inputIn;
            // Zero parts of the press and rel inputs in the polled inputs so they are not read more than once
            inputIn->press.button = 0;
            inputIn->press.stick_x = 0;
            inputIn->press.stick_y = 0;
            inputIn->rel.button = 0;
        } else {
            // Take as the previous inputs the inputs that are currently in the destination array
            inputOut->prev = inputOut->cur;
            // Copy current inputs from the polled inputs
            inputOut->cur = inputIn->cur;
            // Calculate press and rel from these
            buttonDiff = inputOut->prev.button ^ inputOut->cur.button;
            inputOut->press.button = inputOut->cur.button & buttonDiff;
            inputOut->rel.button = inputOut->prev.button & buttonDiff;
            PadUtils_UpdateRelXY(inputOut);
            inputOut->press.stick_x += (s8)(inputOut->cur.stick_x - inputOut->prev.stick_x);
            inputOut->press.stick_y += (s8)(inputOut->cur.stick_y - inputOut->prev.stick_y);
        }
    }

    PadMgr_UnlockPadData(padMgr);
}

void PadMgr_ThreadEntry(PadMgr* padMgr) {
    s16* msg = NULL;
    s32 exit;

    osSyncPrintf("コントローラスレッド実行開始\n"); // "Controller thread execution start"

    exit = false;
    while (!exit) {
        if (gPadMgrLogSeverity >= LOG_SEVERITY_VERBOSE && MQ_IS_EMPTY(&padMgr->interruptQueue)) {
            // "Waiting for controller thread event"
            osSyncPrintf("コントローラスレッドイベント待ち %lld\n", OS_CYCLES_TO_USEC(osGetTime()));
        }

        osRecvMesg(&padMgr->interruptQueue, (OSMesg*)&msg, OS_MESG_BLOCK);
        LogUtils_CheckNullPointer("msg", msg, "../padmgr.c", 563);

        switch (*msg) {
            case OS_SC_RETRACE_MSG:
                if (gPadMgrLogSeverity >= LOG_SEVERITY_VERBOSE) {
                    osSyncPrintf("padmgr_HandleRetraceMsg START %lld\n", OS_CYCLES_TO_USEC(osGetTime()));
                }

                PadMgr_HandleRetrace(padMgr);

                if (gPadMgrLogSeverity >= LOG_SEVERITY_VERBOSE) {
                    osSyncPrintf("padmgr_HandleRetraceMsg END   %lld\n", OS_CYCLES_TO_USEC(osGetTime()));
                }
                break;
            case OS_SC_PRE_NMI_MSG:
                PadMgr_HandlePreNMI(padMgr);
                break;
            case OS_SC_NMI_MSG:
                exit = true;
                break;
        }
    }

    IrqMgr_RemoveClient(padMgr->irqMgr, &padMgr->irqClient);

    osSyncPrintf("コントローラスレッド実行終了\n"); // "Controller thread execution end"
}

void PadMgr_Init(PadMgr* padMgr, OSMesgQueue* serialEventQueue, IrqMgr* irqMgr, OSId id, OSPri priority, void* stack) {
    osSyncPrintf("パッドマネージャ作成 padmgr_Create()\n"); // "Pad Manager creation"

    bzero(padMgr, sizeof(PadMgr));
    padMgr->irqMgr = irqMgr;

    osCreateMesgQueue(&padMgr->interruptQueue, padMgr->interruptMsgBuf, ARRAY_COUNT(padMgr->interruptMsgBuf));
    IrqMgr_AddClient(padMgr->irqMgr, &padMgr->irqClient, &padMgr->interruptQueue);

    osCreateMesgQueue(&padMgr->serialLockQueue, &padMgr->serialMsg, 1);
    PadMgr_ReleaseSerialEventQueue(padMgr, serialEventQueue);

    osCreateMesgQueue(&padMgr->lockQueue, &padMgr->lockMsg, 1);
    PadMgr_UnlockPadData(padMgr);

    PadSetup_Init(serialEventQueue, (u8*)&padMgr->validCtrlrsMask, padMgr->padStatus);

    padMgr->nControllers = MAXCONTROLLERS;
    osContSetCh(padMgr->nControllers);

    osCreateThread(&padMgr->thread, id, (void (*)(void*))PadMgr_ThreadEntry, padMgr, stack, priority);
    osStartThread(&padMgr->thread);
}
