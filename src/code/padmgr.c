#include <ultra64.h>
#include <global.h>
#include <vt.h>

#include <PR/os_cont.h>
#include <ultra64/controller.h>
#include <padmgr.h>

s32 D_8012D280 = 1;

OSMesgQueue* PadMgr_LockGetControllerQueue(PadMgr* padmgr) {
    OSMesgQueue* ctrlrqueue = NULL;

    if (D_8012D280 > 2) {
        // EUC-JP: ロック待ち | Waiting for lock
        osSyncPrintf("%2d %d serialMsgQロック待ち         %08x %08x          %08x\n", osGetThreadId(NULL),
                     padmgr->queue1.validCount, padmgr, &padmgr->queue1, &ctrlrqueue);
    }

    osRecvMesg(&padmgr->queue1, &ctrlrqueue, OS_MESG_BLOCK);

    if (D_8012D280 > 2) {
        // EUC-JP: をロックしました | Locked
        osSyncPrintf("%2d %d serialMsgQをロックしました                     %08x\n", osGetThreadId(NULL),
                     padmgr->queue1.validCount, ctrlrqueue);
    }

    return ctrlrqueue;
}

void PadMgr_UnlockReleaseControllerQueue(PadMgr* padmgr, OSMesgQueue* ctrlrqueue) {
    if (D_8012D280 > 2) {
        // EUC-JP: ロック解除します | Unlock
        osSyncPrintf("%2d %d serialMsgQロック解除します   %08x %08x %08x\n", osGetThreadId(NULL),
                     padmgr->queue1.validCount, padmgr, &padmgr->queue1, ctrlrqueue);
    }

    osSendMesg(&padmgr->queue1, ctrlrqueue, OS_MESG_BLOCK);

    if (D_8012D280 > 2) {
        // EUC-JP: ロック解除しました | Unlocked
        osSyncPrintf("%2d %d serialMsgQロック解除しました %08x %08x %08x\n", osGetThreadId(NULL),
                     padmgr->queue1.validCount, padmgr, &padmgr->queue1, ctrlrqueue);
    }
}

void PadMgr_Lock2(PadMgr* padmgr) {
    osRecvMesg(&padmgr->queue2, NULL, OS_MESG_BLOCK);
}

void PadMgr_Unlock2(PadMgr* padmgr) {
    osSendMesg(&padmgr->queue2, NULL, OS_MESG_BLOCK);
}

#ifdef NON_MATCHING
// regalloc and minor ordering differences
void func_800C740C(PadMgr* padmgr) {
    static u32 D_8012D284 = 0;
    static u32 D_8016A4F0;
    s32 temp;
    s32 var1;
    OSMesgQueue* ctrlrqueue;
    s32 var3;
    s32 var4;
    s32 i;

    temp = 1;
    ctrlrqueue = PadMgr_LockGetControllerQueue(padmgr);
    var1 = 0;

    for (i = 0; i < 4; i++) {
        if (padmgr->unk_2AA[i] != 0) {
            if (padmgr->pad_status[i].status & 1) {
                if (padmgr->unk_2AE[i] == temp) {
                    if (padmgr->unk_2B2[i] != 0) {
                        if (padmgr->unk_2B6[i] < 3) {
                            osSyncPrintf(VT_FGCOL(YELLOW));
                            osSyncPrintf("padmgr: %dコン: %s\n", i + 1, "振動パック ぶるぶるぶるぶる");
                            osSyncPrintf(VT_RST);

                            if (osSetVibration(&padmgr->unk_controller[i], temp) != 0) {
                                padmgr->unk_2AE[i] = 0;
                                osSyncPrintf(VT_FGCOL(YELLOW));
                                osSyncPrintf("padmgr: %dコン: %s\n", i + 1, "振動パックで通信エラーが発生しました");
                                osSyncPrintf(VT_RST);
                            } else {
                                padmgr->unk_2B6[i] = 3;
                            }

                            var1 = 1;
                        }
                    } else {
                        if (padmgr->unk_2B6[i] != 0) {
                            osSyncPrintf(VT_FGCOL(YELLOW));
                            osSyncPrintf("padmgr: %dコン: %s\n", i + 1, "振動パック 停止");
                            osSyncPrintf(VT_RST);

                            if (osSetVibration(&padmgr->unk_controller[i], 0) != 0) {
                                padmgr->unk_2AE[i] = 0;
                                osSyncPrintf(VT_FGCOL(YELLOW));
                                osSyncPrintf("padmgr: %dコン: %s\n", i + 1, "振動パックで通信エラーが発生しました");
                                osSyncPrintf(VT_RST);
                            } else {
                                padmgr->unk_2B6[i]--;
                            }

                            var1 = 1;
                        }
                    }
                }
            } else {
                if (padmgr->unk_2AE[i] != 0) {
                    if (padmgr->unk_2AE[i] == 1) {
                        osSyncPrintf(VT_FGCOL(YELLOW));
                        osSyncPrintf("padmgr: %dコン: %s\n", i + 1, "振動パックが抜かれたようです");
                        osSyncPrintf(VT_RST);
                        padmgr->unk_2AE[i] = 0;
                    } else {
                        osSyncPrintf(VT_FGCOL(YELLOW));
                        osSyncPrintf("padmgr: %dコン: %s\n", i + 1,
                                     "振動パックではないコントローラパックが抜かれたようです");
                        osSyncPrintf(VT_RST);
                        padmgr->unk_2AE[i] = 0;
                    }
                }
            }
        }
    }

    if (!var1) {
        var3 = D_8016A4F0 % 4;

        if ((padmgr->unk_2AA[var3] != 0) && (padmgr->pad_status[var3].status & 1) && (padmgr->unk_2AE[var3] != 1)) {
            var4 = osProbeVibrationPack(ctrlrqueue, &padmgr->unk_controller[var3], var3);

            if (var4 == 0) {
                padmgr->unk_2AE[var3] = 1;
                osSetVibration(&padmgr->unk_controller[var3], 1);
                osSetVibration(&padmgr->unk_controller[var3], 0);
                osSyncPrintf(VT_FGCOL(YELLOW));
                osSyncPrintf("padmgr: %dコン: %s\n", var3 + 1, "振動パックを認識しました");
                osSyncPrintf(VT_RST);
            } else if (var4 == 11) {
                padmgr->unk_2AE[var3] = 2;
            } else if (var4 == 4) {
                LOG_NUM("++errcnt", ++D_8012D284, "../padmgr.c", 282);
                osSyncPrintf(VT_FGCOL(YELLOW));
                osSyncPrintf("padmgr: %dコン: %s\n", var3 + 1, "コントローラパックの通信エラー");
                osSyncPrintf(VT_RST);
            }
        }
    }

    D_8016A4F0++;
    PadMgr_UnlockReleaseControllerQueue(padmgr, ctrlrqueue);
}
#else
u32 D_8012D284 = 0;
u32 D_8016A4F0;
#pragma GLOBAL_ASM("asm/non_matchings/code/padmgr/func_800C740C.s")
#endif

// func_800A2300 in 1.0
void func_800C7818(PadMgr* padmgr) {
    s32 i;
    OSMesgQueue* ctrlrqueue;

    ctrlrqueue = PadMgr_LockGetControllerQueue(padmgr);

    for (i = 0; i < 4; i++) {
        if (osProbeVibrationPack(ctrlrqueue, &padmgr->unk_controller[i], i) == 0) {
            if ((gFaultStruct.msgId == 0) && (padmgr->unk_45D != 0)) {
                osSyncPrintf(VT_FGCOL(YELLOW));
                // EUC-JP: コン | 'Con'? , EUC-JP:  振動パック 停止 | Stop vibration pack
                osSyncPrintf("padmgr: %dコン: %s\n", i + 1, "振動パック 停止");
                osSyncPrintf(VT_RST);
            }

            osSetVibration(&padmgr->unk_controller[i], 0);
        }
    }

    PadMgr_UnlockReleaseControllerQueue(padmgr, ctrlrqueue);
}

void func_800C7928(PadMgr* padmgr) {
    padmgr->unk_45C = 3;
}

void func_800C7934(PadMgr* padmgr, u32 a1, u32 a2) {
    padmgr->unk_2B2[a1] = a2;
    padmgr->unk_45D = 0xF0;
}

#ifdef NON_MATCHING
// minor ordering difference
// 800A23CC in 1.0
void func_800C7948(PadMgr* padmgr, u8* a1) {
    padmgr->unk_2B2[0] = a1[0];
    padmgr->unk_2B2[1] = a1[1];
    padmgr->unk_2B2[2] = a1[2];
    padmgr->unk_2B2[3] = a1[3];

    padmgr->unk_45D = 0xF0; // NON MATCHING - T0 and T9 are reordered for some reason
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/padmgr/func_800C7948.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/code/padmgr/func_800C7974.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/padmgr/func_800C7C14.s")

void func_800C7DD0(PadMgr* padmgr) {
    osSyncPrintf("padmgr_HandlePreNMI()\n");
    padmgr->unk_45E = 1;
    func_800C7928(padmgr);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/padmgr/func_800C7E08.s")
// void func_800C7E08(Input*, u32);

// 800A2918 in 1.0
void PadMgr_Run(PadMgr* padmgr) {
    s16* mesg;
    s32 bVar2;

    mesg = NULL;
    // EUC-JP: コントローラスレッド実行開始 | Start of controller thread execution
    osSyncPrintf("コントローラスレッド実行開始\n");
    bVar2 = 0;

    while (bVar2 == 0) {
        if ((D_8012D280 > 2) && (padmgr->queue3.validCount == 0)) {
            // EUC-JP: コントローラスレッドイベント待ち | Waiting for controller thread event
            osSyncPrintf("コントローラスレッドイベント待ち %lld\n", OS_CYCLES_TO_USEC(osGetTime()));
        }

        osRecvMesg(&padmgr->queue3, &mesg, OS_MESG_BLOCK);
        LogUtils_CheckNullPointer("msg", mesg, "../padmgr.c", 563);

        switch (*mesg) {
            case OS_SC_RETRACE_MSG:
                if (D_8012D280 > 2) {
                    osSyncPrintf("padmgr_HandleRetraceMsg START %lld\n", OS_CYCLES_TO_USEC(osGetTime()));
                }

                func_800C7C14(padmgr);

                if (D_8012D280 > 2) {
                    osSyncPrintf("padmgr_HandleRetraceMsg END   %lld\n", OS_CYCLES_TO_USEC(osGetTime()));
                }

                break;
            case OS_SC_PRE_NMI_MSG:
                func_800C7DD0(padmgr);
                break;
            case OS_SC_NMI_MSG:
                bVar2 = 1;
                break;
        }
    }

    IrqMgr_RemoveClient(padmgr->unk_78, &padmgr->unk_70);
    // EUC-JP: コントローラスレッド実行終了 | Controller thread execution end
    osSyncPrintf("コントローラスレッド実行終了\n");
}

// func_800A2A14 in 1.0
void PadMgr_Init(PadMgr* padmgr, OSMesgQueue* ctrlrqueue, UNK_TYPE arg2, OSId id, OSPri priority, void* stack) {
    // EUC-JP: パッドマネージャ作成 | Create pad manager
    osSyncPrintf("パッドマネージャ作成 padmgr_Create()\n");
    bzero(padmgr, sizeof(PadMgr));
    padmgr->unk_78 = arg2;

    osCreateMesgQueue(&padmgr->queue3, padmgr->msgbuf3, 4);
    IrqMgr_AddClient(padmgr->unk_78, &padmgr->unk_70, &padmgr->queue3);
    osCreateMesgQueue(&padmgr->queue1, padmgr->msgbuf1, 1);
    PadMgr_UnlockReleaseControllerQueue(padmgr, ctrlrqueue);
    osCreateMesgQueue(&padmgr->queue2, padmgr->msgbuf2, 1);
    PadMgr_Unlock2(padmgr);
    func_800FCD40(ctrlrqueue, &padmgr->unk_2A8, padmgr);

    padmgr->unk_2A9 = 4;
    func_80104D00(padmgr->unk_2A9);

    osCreateThread(&padmgr->thread, id, PadMgr_Run, padmgr, stack, priority);
    osStartThread(&padmgr->thread);
}
