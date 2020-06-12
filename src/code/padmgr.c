#include <ultra64.h>
#include <global.h>
#include <vt.h>

#include <PR/os_cont.h>
#include <ultra64/controller.h>

s32 D_8012D280 = 1;

OSMesgQueue* PadMgr_LockSerialMesgQueue(PadMgr* padmgr) {
    OSMesgQueue* ctrlrQ = NULL;

    if (D_8012D280 > 2) {
        // "serialMsgQ Waiting for lock"
        osSyncPrintf("%2d %d serialMsgQロック待ち         %08x %08x          %08x\n", osGetThreadId(NULL),
                     padmgr->serialMsgQ.validCount, padmgr, &padmgr->serialMsgQ, &ctrlrQ);
    }

    osRecvMesg(&padmgr->serialMsgQ, &ctrlrQ, OS_MESG_BLOCK);

    if (D_8012D280 > 2) {
        // "serialMsgQ Locked"
        osSyncPrintf("%2d %d serialMsgQをロックしました                     %08x\n", osGetThreadId(NULL),
                     padmgr->serialMsgQ.validCount, ctrlrQ);
    }

    return ctrlrQ;
}

void PadMgr_UnlockSerialMesgQueue(PadMgr* padmgr, OSMesgQueue* ctrlrQ) {
    if (D_8012D280 > 2) {
        // "serialMsgQ Unlock"
        osSyncPrintf("%2d %d serialMsgQロック解除します   %08x %08x %08x\n", osGetThreadId(NULL),
                     padmgr->serialMsgQ.validCount, padmgr, &padmgr->serialMsgQ, ctrlrQ);
    }

    osSendMesg(&padmgr->serialMsgQ, ctrlrQ, OS_MESG_BLOCK);

    if (D_8012D280 > 2) {
        // "serialMsgQ Unlocked"
        osSyncPrintf("%2d %d serialMsgQロック解除しました %08x %08x %08x\n", osGetThreadId(NULL),
                     padmgr->serialMsgQ.validCount, padmgr, &padmgr->serialMsgQ, ctrlrQ);
    }
}

void PadMgr_LockPadData(PadMgr* padmgr) {
    osRecvMesg(&padmgr->lockMsgQ, NULL, OS_MESG_BLOCK);
}

void PadMgr_UnlockPadData(PadMgr* padmgr) {
    osSendMesg(&padmgr->lockMsgQ, NULL, OS_MESG_BLOCK);
}

void PadMgr_RumbleControl(PadMgr* padmgr) {
    static u32 errcnt = 0;
    static u32 frame;
    s32 temp;
    s32 triedRumbleComm;
    OSMesgQueue* ctrlrQ;
    s32 var4;
    s32 i;

    temp = 1;
    ctrlrQ = PadMgr_LockSerialMesgQueue(padmgr);
    triedRumbleComm = 0;

    for (i = 0; i < 4; i++) {
        if (padmgr->ctrlrIsConnected[i]) {
            if (padmgr->padStatus[i].status & 1) {
                if (padmgr->pakType[i] == temp) {
                    if (padmgr->rumbleEnable[i] != 0) {
                        if (padmgr->rumbleCounter[i] < 3) {
                            // clang-format off
                            if (1) {} osSyncPrintf(VT_FGCOL(YELLOW));
                            // clang-format on

                            // "Vibration pack jumble jumble"?
                            osSyncPrintf("padmgr: %dコン: %s\n", i + 1, "振動パック ぶるぶるぶるぶる");
                            osSyncPrintf(VT_RST);

                            if (osSetRumble(&padmgr->unk_controller[i], temp) != 0) {
                                padmgr->pakType[i] = 0;
                                osSyncPrintf(VT_FGCOL(YELLOW));
                                // "A communication error has occurred with the vibraton pack"
                                osSyncPrintf("padmgr: %dコン: %s\n", i + 1, "振動パックで通信エラーが発生しました");
                                osSyncPrintf(VT_RST);
                            } else {
                                padmgr->rumbleCounter[i] = 3;
                            }

                            triedRumbleComm = 1;
                        }
                    } else {
                        if (padmgr->rumbleCounter[i] != 0) {
                            // clang-format off
                            if (1) {} osSyncPrintf(VT_FGCOL(YELLOW));
                            // clang-format on

                            // "Stop vibration pack"
                            osSyncPrintf("padmgr: %dコン: %s\n", i + 1, "振動パック 停止");
                            osSyncPrintf(VT_RST);

                            if (osSetRumble(&padmgr->unk_controller[i], 0) != 0) {
                                padmgr->pakType[i] = 0;
                                osSyncPrintf(VT_FGCOL(YELLOW));
                                // "A communication error has occurred with the vibration pack"
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
                        // "It seems that a vibration pack was pulled out"
                        osSyncPrintf("padmgr: %dコン: %s\n", i + 1, "振動パックが抜かれたようです");
                        osSyncPrintf(VT_RST);
                        padmgr->pakType[i] = 0;
                    } else {
                        osSyncPrintf(VT_FGCOL(YELLOW));
                        // "It seems that a controller pack that is not a vibration pack was pulled out"
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
        i = frame % 4;

        if (padmgr->ctrlrIsConnected[i] && (padmgr->padStatus[i].status & 1) && (padmgr->pakType[i] != 1)) {
            var4 = osProbeRumblePak(ctrlrQ, &padmgr->unk_controller[i], i);

            if (var4 == 0) {
                padmgr->pakType[i] = 1;
                osSetRumble(&padmgr->unk_controller[i], 1);
                osSetRumble(&padmgr->unk_controller[i], 0);
                osSyncPrintf(VT_FGCOL(YELLOW));
                // "Recognized vibration pack"
                osSyncPrintf("padmgr: %dコン: %s\n", i + 1, "振動パックを認識しました");
                osSyncPrintf(VT_RST);
            } else if (var4 == 11) {
                padmgr->pakType[i] = 2;
            } else if (var4 == 4) {
                LOG_NUM("++errcnt", ++errcnt, "../padmgr.c", 282);
                osSyncPrintf(VT_FGCOL(YELLOW));
                // "Controller pack communication error"
                osSyncPrintf("padmgr: %dコン: %s\n", i + 1, "コントローラパックの通信エラー");
                osSyncPrintf(VT_RST);
            }
        }
    }

    frame++;
    PadMgr_UnlockSerialMesgQueue(padmgr, ctrlrQ);
}

void PadMgr_RumbleStop(PadMgr* padmgr) {
    s32 i;
    OSMesgQueue* ctrlrQ;

    ctrlrQ = PadMgr_LockSerialMesgQueue(padmgr);

    for (i = 0; i < 4; i++) {
        if (osProbeRumblePak(ctrlrQ, &padmgr->unk_controller[i], i) == 0) {
            if ((gFaultStruct.msgId == 0) && (padmgr->rumbleOnFrames != 0)) {
                osSyncPrintf(VT_FGCOL(YELLOW));
                osSyncPrintf("padmgr: %dコン: %s\n", i + 1, "振動パック 停止"); // "Stop vibration pack"
                osSyncPrintf(VT_RST);
            }

            osSetRumble(&padmgr->unk_controller[i], 0);
        }
    }

    PadMgr_UnlockSerialMesgQueue(padmgr, ctrlrQ);
}

void PadMgr_RumbleReset(PadMgr* padmgr) {
    padmgr->rumbleOffFrames = 3;
}

void PadMgr_RumbleSetSingle(PadMgr* padmgr, u32 ctrlr, u32 rumble) {
    padmgr->rumbleEnable[ctrlr] = rumble;
    padmgr->rumbleOnFrames = 240;
}

void PadMgr_RumbleSet(PadMgr* padmgr, u8* ctrlrRumbles) {
    s32 i;

    for (i = 0; i < 4; i++) {
        padmgr->rumbleEnable[i] = ctrlrRumbles[i];
    }

    padmgr->rumbleOnFrames = 240;
}

void PadMgr_ProcessInputs(PadMgr* padmgr) {
    s32 i;
    Input* input;
    PadState* padnow1; // original name
    s32 buttonDiff;

    PadMgr_LockPadData(padmgr);

    input = &padmgr->inputs[0];
    padnow1 = &padmgr->pads[0];

    for (i = 0; i < padmgr->ncontrollers; i++, input++, padnow1++) {
        input->prev = input->cur;

        if (1) {} // Necessary to match

        switch (padnow1->errno) {
            case 0:
                input->cur = *padnow1;
                if (!padmgr->ctrlrIsConnected[i]) {
                    padmgr->ctrlrIsConnected[i] = true;
                    osSyncPrintf(VT_FGCOL(YELLOW));
                    osSyncPrintf("padmgr: %dコン: %s\n", i + 1, "認識しました"); // "Recognized"
                    osSyncPrintf(VT_RST);
                }
                break;
            case 4:
                input->cur = input->prev;
                LOG_NUM("this->Key_switch[i]", padmgr->ctrlrIsConnected[i], "../padmgr.c", 380);
                osSyncPrintf(VT_FGCOL(YELLOW));
                osSyncPrintf("padmgr: %dコン: %s\n", i + 1, "オーバーランエラーが発生"); // "Overrun error occurred"
                osSyncPrintf(VT_RST);
                break;
            case 8:
                input->cur.in.button = 0;
                input->cur.in.x = 0;
                input->cur.in.y = 0;
                input->cur.errno = padnow1->errno;
                if (padmgr->ctrlrIsConnected[i]) {
                    padmgr->ctrlrIsConnected[i] = false;
                    padmgr->pakType[i] = 0;
                    padmgr->rumbleCounter[i] = 0xFF;
                    osSyncPrintf(VT_FGCOL(YELLOW));
                    osSyncPrintf("padmgr: %dコン: %s\n", i + 1, "応答しません"); // "Do not respond"?
                    osSyncPrintf(VT_RST);
                }
                break;
            default:
                LOG_HEX("padnow1->errno", padnow1->errno, "../padmgr.c", 396);
                Fault_AddHungupAndCrash("../padmgr.c", 397);
        }

        buttonDiff = input->prev.in.button ^ input->cur.in.button;
        input->press.in.button |= (u16)(buttonDiff & input->cur.in.button);
        input->rel.in.button |= (u16)(buttonDiff & input->prev.in.button);
        PadUtils_UpdateRelXY(input);
        input->press.in.x += (s8)(input->cur.in.x - input->prev.in.x);
        input->press.in.y += (s8)(input->cur.in.y - input->prev.in.y);
    }

    PadMgr_UnlockPadData(padmgr);
}

void PadMgr_HandleRetraceMsg(PadMgr* padmgr) {
    s32 i;
    OSMesgQueue* queue;
    u32 mask;

    queue = PadMgr_LockSerialMesgQueue(padmgr);
    osContStartReadData(queue);
    if (padmgr->retraceCallback) {
        padmgr->retraceCallback(padmgr, padmgr->retraceCallbackValue);
    }
    osRecvMesg(queue, NULL, OS_MESG_BLOCK);
    osContGetReadData(padmgr->pads);
    if (padmgr->preNMIShutdown) {
        bzero(padmgr->pads, sizeof(padmgr->pads));
    }
    PadMgr_ProcessInputs(padmgr);
    osContStartQuery(queue);
    osRecvMesg(queue, NULL, OS_MESG_BLOCK);
    osContGetQuery(padmgr->padStatus);
    PadMgr_UnlockSerialMesgQueue(padmgr, queue);

    mask = 0;
    for (i = 0; i < 4; i++) {
        if (padmgr->padStatus[i].errno == 0) {
            if (padmgr->padStatus[i].type == 5) {
                mask |= 1 << i;
            } else {
                LOG_HEX("this->pad_status[i].type", padmgr->padStatus[i].type, "../padmgr.c", 458);
                // "An unknown type of controller is connected"
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
    padmgr->preNMIShutdown = true;
    PadMgr_RumbleReset(padmgr);
}

void PadMgr_RequestPadData(PadMgr* padmgr, Input* inputs, s32 mode) {
    s32 i;
    Input* ogInput;
    Input* newInput;
    s32 buttonDiff;

    PadMgr_LockPadData(padmgr);

    ogInput = &padmgr->inputs[0];
    newInput = &inputs[0];
    for (i = 0; i < 4; i++) {
        if (mode != 0) {
            *newInput = *ogInput;
            ogInput->press.in.button = 0;
            ogInput->press.in.x = 0;
            ogInput->press.in.y = 0;
            ogInput->rel.in.button = 0;
        } else {
            newInput->prev = newInput->cur;
            newInput->cur = ogInput->cur;
            buttonDiff = newInput->prev.in.button ^ newInput->cur.in.button;
            newInput->press.in.button = newInput->cur.in.button & buttonDiff;
            newInput->rel.in.button = newInput->prev.in.button & buttonDiff;
            PadUtils_UpdateRelXY(newInput);
            newInput->press.in.x += (s8)(newInput->cur.in.x - newInput->prev.in.x);
            newInput->press.in.y += (s8)(newInput->cur.in.y - newInput->prev.in.y);
        }
        ogInput++;
        newInput++;
    }

    PadMgr_UnlockPadData(padmgr);
}

void PadMgr_ThreadEntry(PadMgr* padmgr) {
    s16* mesg = NULL;
    s32 exit;

    // "Controller thread execution start"
    osSyncPrintf("コントローラスレッド実行開始\n");

    exit = false;
    while (!exit) {
        if ((D_8012D280 > 2) && (padmgr->interruptMsgQ.validCount == 0)) {
            // "Waiting for controller thread event"
            osSyncPrintf("コントローラスレッドイベント待ち %lld\n", OS_CYCLES_TO_USEC(osGetTime()));
        }

        osRecvMesg(&padmgr->interruptMsgQ, &mesg, OS_MESG_BLOCK);
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
                exit = true;
                break;
        }
    }

    IrqMgr_RemoveClient(padmgr->irqMgr, &padmgr->irqClient);

    // "Controller thread execution end"
    osSyncPrintf("コントローラスレッド実行終了\n");
}

void PadMgr_Init(PadMgr* padmgr, OSMesgQueue* siIntMsgQ, IrqMgr* irqMgr, OSId id, OSPri priority, void* stack) {
    // "Pad Manager creation"
    osSyncPrintf("パッドマネージャ作成 padmgr_Create()\n");

    bzero(padmgr, sizeof(PadMgr));
    padmgr->irqMgr = irqMgr;

    osCreateMesgQueue(&padmgr->interruptMsgQ, padmgr->interruptMsgBuf, 4);
    IrqMgr_AddClient(padmgr->irqMgr, &padmgr->irqClient, &padmgr->interruptMsgQ);
    osCreateMesgQueue(&padmgr->serialMsgQ, padmgr->serialMsgBuf, 1);
    PadMgr_UnlockSerialMesgQueue(padmgr, siIntMsgQ);
    osCreateMesgQueue(&padmgr->lockMsgQ, padmgr->lockMsgBuf, 1);
    PadMgr_UnlockPadData(padmgr);
    func_800FCD40(siIntMsgQ, &padmgr->validCtrlrsMask, padmgr);

    padmgr->ncontrollers = 4;
    func_80104D00(padmgr->ncontrollers);

    osCreateThread(&padmgr->thread, id, PadMgr_ThreadEntry, padmgr, stack, priority);
    osStartThread(&padmgr->thread);
}
