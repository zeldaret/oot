#include <ultra64.h>
#include <global.h>
#include <vt.h>

#include <PR/os_cont.h>
#include <ultra64/controller.h>

s32 D_8012D280 = 1;

OSMesgQueue* PadMgr_LockSerialMesgQueue(PadMgr* padmgr) {
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

void PadMgr_UnlockSerialMesgQueue(PadMgr* padmgr, OSMesgQueue* ctrlrqueue) {
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

void PadMgr_LockPadData(PadMgr* padmgr) {
    osRecvMesg(&padmgr->queue2, NULL, OS_MESG_BLOCK);
}

void PadMgr_UnlockPadData(PadMgr* padmgr) {
    osSendMesg(&padmgr->queue2, NULL, OS_MESG_BLOCK);
}

#ifdef NON_MATCHING
// regalloc and minor ordering differences
void PadMgr_RumbleControl(PadMgr* padmgr) {
    static u32 errcnt = 0;
    static u32 D_8016A4F0;
    s32 temp;
    s32 triedRumbleComm;
    OSMesgQueue* ctrlrqueue;
    s32 ctrlr;
    s32 var4;
    s32 i;

    temp = 1;
    ctrlrqueue = PadMgr_LockSerialMesgQueue(padmgr);
    triedRumbleComm = 0;

    for (i = 0; i < 4; i++) {
        if (padmgr->ctrlrIsConnected[i] != 0) {
            if (padmgr->pad_status[i].status & 1) {
                if (padmgr->pakType[i] == temp) {
                    if (padmgr->rumbleEnable[i] != 0) {
                        if (padmgr->rumbleCounter[i] < 3) {
                            osSyncPrintf(VT_FGCOL(YELLOW));
                            osSyncPrintf("padmgr: %dコン: %s\n", i + 1, "振動パック ぶるぶるぶるぶる");
                            osSyncPrintf(VT_RST);

                            if (osSetRumble(&padmgr->unk_controller[i], temp) != 0) {
                                padmgr->pakType[i] = 0;
                                osSyncPrintf(VT_FGCOL(YELLOW));
                                osSyncPrintf("padmgr: %dコン: %s\n", i + 1, "振動パックで通信エラーが発生しました");
                                osSyncPrintf(VT_RST);
                            } else {
                                padmgr->rumbleCounter[i] = 3;
                            }

                            triedRumbleComm = 1;
                        }
                    } else {
                        if (padmgr->rumbleCounter[i] != 0) {
                            osSyncPrintf(VT_FGCOL(YELLOW));
                            osSyncPrintf("padmgr: %dコン: %s\n", i + 1, "振動パック 停止");
                            osSyncPrintf(VT_RST);

                            if (osSetRumble(&padmgr->unk_controller[i], 0) != 0) {
                                padmgr->pakType[i] = 0;
                                osSyncPrintf(VT_FGCOL(YELLOW));
                                osSyncPrintf("padmgr: %dコン: %s\n", i + 1, "振動パックで通信エラーが発生しました");
                                osSyncPrintf(VT_RST);
                            } else {
                                padmgr->rumbleCounter[i]--;
                            }

                            triedRumbleComm = 1;
                        }
                    }
                }
            } else {
                if (padmgr->pakType[i] != 0) {
                    if (padmgr->pakType[i] == 1) {
                        osSyncPrintf(VT_FGCOL(YELLOW));
                        osSyncPrintf("padmgr: %dコン: %s\n", i + 1, "振動パックが抜かれたようです");
                        osSyncPrintf(VT_RST);
                        padmgr->pakType[i] = 0;
                    } else {
                        osSyncPrintf(VT_FGCOL(YELLOW));
                        osSyncPrintf("padmgr: %dコン: %s\n", i + 1,
                                     "振動パックではないコントローラパックが抜かれたようです");
                        osSyncPrintf(VT_RST);
                        padmgr->pakType[i] = 0;
                    }
                }
            }
        }
    }

    if (!triedRumbleComm) {
        ctrlr = D_8016A4F0 % 4;

        if ((padmgr->ctrlrIsConnected[ctrlr] != 0) && (padmgr->pad_status[ctrlr].status & 1) &&
            (padmgr->pakType[ctrlr] != 1)) {
            var4 = osProbeRumblePak(ctrlrqueue, &padmgr->unk_controller[ctrlr], ctrlr);

            if (var4 == 0) {
                padmgr->pakType[ctrlr] = 1;
                osSetRumble(&padmgr->unk_controller[ctrlr], 1);
                osSetRumble(&padmgr->unk_controller[ctrlr], 0);
                osSyncPrintf(VT_FGCOL(YELLOW));
                osSyncPrintf("padmgr: %dコン: %s\n", ctrlr + 1, "振動パックを認識しました");
                osSyncPrintf(VT_RST);
            } else if (var4 == 11) {
                padmgr->pakType[ctrlr] = 2;
            } else if (var4 == 4) {
                LOG_NUM("++errcnt", ++errcnt, "../padmgr.c", 282);
                osSyncPrintf(VT_FGCOL(YELLOW));
                osSyncPrintf("padmgr: %dコン: %s\n", ctrlr + 1, "コントローラパックの通信エラー");
                osSyncPrintf(VT_RST);
            }
        }
    }

    D_8016A4F0++;
    PadMgr_UnlockSerialMesgQueue(padmgr, ctrlrqueue);
}
#else
u32 D_8012D284 = 0; // errcnt
u32 D_8016A4F0;
#pragma GLOBAL_ASM("asm/non_matchings/code/padmgr/PadMgr_RumbleControl.s")
#endif

// func_800A2300 in 1.0
void PadMgr_RumbleStop(PadMgr* padmgr) {
    s32 i;
    OSMesgQueue* ctrlrqueue;

    ctrlrqueue = PadMgr_LockSerialMesgQueue(padmgr);

    for (i = 0; i < 4; i++) {
        if (osProbeRumblePak(ctrlrqueue, &padmgr->unk_controller[i], i) == 0) {
            if ((gFaultStruct.msgId == 0) && (padmgr->rumbleOnFrames != 0)) {
                osSyncPrintf(VT_FGCOL(YELLOW));
                // EUC-JP: コン | 'Con'? , EUC-JP:  振動パック 停止 | Stop vibration pack
                osSyncPrintf("padmgr: %dコン: %s\n", i + 1, "振動パック 停止");
                osSyncPrintf(VT_RST);
            }

            osSetRumble(&padmgr->unk_controller[i], 0);
        }
    }

    PadMgr_UnlockSerialMesgQueue(padmgr, ctrlrqueue);
}

void PadMgr_RumbleReset(PadMgr* padmgr) {
    padmgr->rumbleOffFrames = 3;
}

void PadMgr_RumbleSetSingle(PadMgr* padmgr, u32 ctrlr, u32 rumble) {
    padmgr->rumbleEnable[ctrlr] = rumble;
    padmgr->rumbleOnFrames = 0xF0;
}

// 800A23CC in 1.0
void PadMgr_RumbleSet(PadMgr* padmgr, u8* ctrlrRumbles) {
    s32 i;
    for (i = 0; i < 4; ++i) {
        padmgr->rumbleEnable[i] = ctrlrRumbles[i];
    }
    padmgr->rumbleOnFrames = 0xF0;
}

#if 0
void PadMgr_ProcessInputs(PadMgr* padmgr) {
    /*
    void *sp34;
    s32 temp_s1;
    s32 temp_v0_5;
    u16 temp_a1;
    u16 temp_v1_2;
    u8 temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v1;
    void *phi_s0;
    void *phi_s3;
    s32 phi_s2;
    s32 phi_s1;
    */
    Input* input;
    PadState* padnow1; //name from debug string
    s32 i;

    PadMgr_LockPadData(padmgr);
    input = padmgr->inputs; //s0
    padnow1 = padmgr->pads; //s3
    for(i=0; i<padmgr->ncontrollers; ++i, ++input, ++padnow1){
        input->prev.in = input->cur.in;
        input->prev.status = input->cur.status;
        temp_v0 = phi_s3->unk4;
        switch(padnow1->errno){
        case 0:
            input->cur.in = padnow1->input;
            input->cur.status = padnow1->status;
            if (padmgr->ctrlrIsConnected[i] == 0) {
                padmgr->ctrlrIsConnected[i] = 1;
                osSyncPrintf(&D_80145AF0); //"\x1b[33m"
                osSyncPrintf(&D_80145AF8, phi_s2 + 1, &D_80145B0C); //"padmgr: %dCon: %s\n" : "Recognized"
                osSyncPrintf(&D_80145B1C); //"\x1b[m"
            }
            break;
        case 4:
            input->cur.in = input->prev.in;
            input->cur.status = input->prev.status;
            LogUtils_LogThreadId(&D_80145B20, 0x17c); //"../padmgr.c"
            osSyncPrintf(&D_80145B2C, padmgr->ctrlrIsConnected[i]); //"this->ctrlrIsConnected[i] = %d\n"
            osSyncPrintf(&D_80145B48); //"\x1b[33m"
            osSyncPrintf(&D_80145B50, temp_s1, &D_80145B64); //"padmgr: %dCon: %s\n" : "Overrun error occurred"
            osSyncPrintf(&D_80145B80); //"\x1b[m"
            break;
        case 8:
            input->cur.in.button = 0;
            input->cur.in.x = 0;
            input->cur.in.y = 0;
            temp_v0_2 = arg0 + phi_s2;
            input->cur.errno = padnow1->errno;
            if (temp_v0_2->ctrlrIsConnected != 0){
                temp_v0_2->ctrlrIsConnected = 0;
                temp_v0_2->pakType = 0;
                temp_v0_2->rumbleCounter = 0xff;
                osSyncPrintf(&D_80145B84); //"\x1b[33m"
                osSyncPrintf(&D_80145B8C, phi_s2 + 1, &D_80145BA0); //"padmgr: %dCon: %s\n" : "Do not respond"
                osSyncPrintf(&D_80145BB0); //"\x1b[m"
            }
            break;
        default:
            LogUtils_LogThreadId(&D_80145BB4, 0x18c); //"../padmgr.c"
            osSyncPrintf(&D_80145BC0, padnow1->errno); //"padnow1->errno = %x\n"
            Fault_AddHungupAndCrash(&D_80145BD8, 0x18d); //"../padmgr.c"
        }
        input->press.in.button = input->cur.in.button & (input->prev.in.button ^ input->cur.in.button);
        input->rel.in.button = input->prev.in.button & (input->prev.in.button ^ input->cur.in.button);
        func_800FCC6C(input);
        input->press.in.x = (input->cur.in.x - input->prev.in.x) + input->press.in.x;
        input->press.in.y = (input->cur.in.y - input->prev.in.y) + input->press.in.y;
    }
    PadMgr_UnlockPadData(arg0);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/padmgr/PadMgr_ProcessInputs.s")
#endif

void PadMgr_HandleRetraceMsg(PadMgr* padmgr) {
    OSMesgQueue* queue; // s1
    u32 i;
    u32 mask;

    queue = PadMgr_LockSerialMesgQueue(padmgr);
    osContStartReadData(queue);
    if (padmgr->retraceCallback) {
        padmgr->retraceCallback(padmgr, padmgr->retraceCallbackValue);
    }
    osRecvMesg(queue, NULL, OS_MESG_BLOCK);
    osContGetReadData(&padmgr->pads[0]);
    if (padmgr->preNMIShutdown) {
        bzero(&padmgr->pads[0], 0x18);
    }
    PadMgr_ProcessInputs(padmgr);
    func_80103210(queue);
    osRecvMesg(queue, NULL, OS_MESG_BLOCK);
    func_8010328C(padmgr);
    PadMgr_UnlockSerialMesgQueue(padmgr, queue);

    mask = 0;
    for (i = 0; i - 4 != 0; ++i) {
        if (padmgr->pad_status[i].errno == 0) {
            if (padmgr->pad_status[i].type - 5 == 0) {
                mask |= 1 << i;
            } else {
                LogUtils_LogThreadId("../padmgr.c", 0x1ca);
                osSyncPrintf("this->pad_status[i].type = %x\n", padmgr->pad_status[i].type);
                // EUC-JP: 知らない種類のコントローラが接続されています | An unknown type of controller is connected
                osSyncPrintf("知らない種類のコントローラが接続されています\n");
            }
        }
    }
    padmgr->validCtrlrsMask = mask;

    if (gFaultStruct.msgId) {
        PadMgr_RumbleStop(padmgr);
    } else if (padmgr->rumbleOffFrames > 0) {
        --padmgr->rumbleOffFrames;
        PadMgr_RumbleStop(padmgr);
    } else if (padmgr->rumbleOnFrames == 0) {
        PadMgr_RumbleStop(padmgr);
    } else if (!padmgr->preNMIShutdown) {
        PadMgr_RumbleControl(padmgr);
        --padmgr->rumbleOnFrames;
    }
}

void PadMgr_HandlePreNMI(PadMgr* padmgr) {
    osSyncPrintf("padmgr_HandlePreNMI()\n");
    padmgr->preNMIShutdown = 1;
    PadMgr_RumbleReset(padmgr);
}

#ifdef NON_MATCHING
// Regalloc differences
void PadMgr_RequestPadData(PadMgr* padmgr, Input* inputs, s32 mode) {
    u32 i;
    Input* pmInputs;
    Input* newin;

    PadMgr_LockPadData(padmgr);
    pmInputs = padmgr->inputs;
    newin = inputs;
    for (i = 0; i < 4; ++i) {
        if (mode) {
            *newin = *pmInputs;
            pmInputs->press.in.button = 0;
            pmInputs->press.in.x = 0;
            pmInputs->press.in.y = 0;
            pmInputs->rel.in.button = 0;
        } else {
            // Correct instructions, wrong regalloc
            newin->prev = newin->cur;
            newin->cur = pmInputs->cur;
            newin->press.in.button = newin->cur.in.button & (newin->prev.in.button ^ newin->cur.in.button);
            newin->rel.in.button = newin->prev.in.button & (newin->prev.in.button ^ newin->cur.in.button);
            func_800FCC6C(newin);
            newin->press.in.x = (newin->cur.in.x - newin->prev.in.x) + newin->press.in.x;
            newin->press.in.y = (newin->cur.in.y - newin->prev.in.y) + newin->press.in.y;
        }
        ++pmInputs;
        ++newin;
    }
    PadMgr_UnlockPadData(padmgr);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/padmgr/PadMgr_RequestPadData.s")
#endif

// 800A2918 in 1.0
void PadMgr_MainProc(PadMgr* padmgr) {
    s16* mesg;
    s32 exit;

    mesg = NULL;
    // EUC-JP: コントローラスレッド実行開始 | Start of controller thread execution
    osSyncPrintf("コントローラスレッド実行開始\n");
    exit = 0;

    while (!exit) {
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

                PadMgr_HandleRetraceMsg(padmgr);

                if (D_8012D280 > 2) {
                    osSyncPrintf("padmgr_HandleRetraceMsg END   %lld\n", OS_CYCLES_TO_USEC(osGetTime()));
                }

                break;
            case OS_SC_PRE_NMI_MSG:
                PadMgr_HandlePreNMI(padmgr);
                break;
            case OS_SC_NMI_MSG:
                exit = 1;
                break;
        }
    }

    IrqMgr_RemoveClient(padmgr->unk_78, &padmgr->unk_70);
    // EUC-JP: コントローラスレッド実行終了 | Controller thread execution end
    osSyncPrintf("コントローラスレッド実行終了\n");
}

// func_800A2A14 in 1.0
void PadMgr_Init(PadMgr* padmgr, OSMesgQueue* siIntMsgQ, UNK_TYPE arg2, OSId id, OSPri priority, void* stack) {
    // EUC-JP: パッドマネージャ作成 | Create pad manager
    osSyncPrintf("パッドマネージャ作成 padmgr_Create()\n");
    bzero(padmgr, sizeof(PadMgr));
    padmgr->unk_78 = arg2;

    osCreateMesgQueue(&padmgr->queue3, padmgr->msgbuf3, 4);
    IrqMgr_AddClient(padmgr->unk_78, &padmgr->unk_70, &padmgr->queue3);
    osCreateMesgQueue(&padmgr->queue1, padmgr->msgbuf1, 1);
    PadMgr_UnlockSerialMesgQueue(padmgr, siIntMsgQ);
    osCreateMesgQueue(&padmgr->queue2, padmgr->msgbuf2, 1);
    PadMgr_UnlockPadData(padmgr);
    func_800FCD40(siIntMsgQ, &padmgr->validCtrlrsMask, padmgr);

    padmgr->ncontrollers = 4;
    func_80104D00(padmgr->ncontrollers);

    osCreateThread(&padmgr->thread, id, PadMgr_MainProc, padmgr, stack, priority);
    osStartThread(&padmgr->thread);
}
