#include <ultra64.h>
#include <global.h>
#include <vt.h>

#include <PR/os_cont.h>
#include <ultra64/controller.h>
#include <padmgr.h>

/*
Absent: padmgr_force_stop_ON     padmgr.o 
Absent: padmgr_force_stop_OFF     padmgr.o 
padmgr_PakConnectCheck     padmgr.o 
padmgr_HandleDoneReadPadMsg     padmgr.o 
padmgr_ConnectCheck     padmgr.o 
Absent: padmgr_RequestPadData_NonLock     padmgr.o 
Absent: padmgr_ClearPadData     padmgr.o 
Absent: padmgr_Create     padmgr.o 
Absent: padmgr_isConnectedController     padmgr.o 
*/

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
    s32 tried_rumble_comm;
    OSMesgQueue* ctrlrqueue;
    s32 ctrlr;
    s32 var4;
    s32 i;

    temp = 1;
    ctrlrqueue = PadMgr_LockSerialMesgQueue(padmgr);
    tried_rumble_comm = 0;

    for (i = 0; i < 4; i++) {
        if (padmgr->Key_switch[i] != 0) {
            if (padmgr->pad_status[i].status & 1) {
                if (padmgr->pak_type[i] == temp) {
                    if (padmgr->rumble_enable[i] != 0) {
                        if (padmgr->rumble_counter[i] < 3) {
                            osSyncPrintf(VT_FGCOL(YELLOW));
                            osSyncPrintf("padmgr: %dコン: %s\n", i + 1, "振動パック ぶるぶるぶるぶる");
                            osSyncPrintf(VT_RST);

                            if (osSetVibration(&padmgr->unk_controller[i], temp) != 0) {
                                padmgr->pak_type[i] = 0;
                                osSyncPrintf(VT_FGCOL(YELLOW));
                                osSyncPrintf("padmgr: %dコン: %s\n", i + 1, "振動パックで通信エラーが発生しました");
                                osSyncPrintf(VT_RST);
                            } else {
                                padmgr->rumble_counter[i] = 3;
                            }

                            tried_rumble_comm = 1;
                        }
                    } else {
                        if (padmgr->rumble_counter[i] != 0) {
                            osSyncPrintf(VT_FGCOL(YELLOW));
                            osSyncPrintf("padmgr: %dコン: %s\n", i + 1, "振動パック 停止");
                            osSyncPrintf(VT_RST);

                            if (osSetVibration(&padmgr->unk_controller[i], 0) != 0) {
                                padmgr->pak_type[i] = 0;
                                osSyncPrintf(VT_FGCOL(YELLOW));
                                osSyncPrintf("padmgr: %dコン: %s\n", i + 1, "振動パックで通信エラーが発生しました");
                                osSyncPrintf(VT_RST);
                            } else {
                                padmgr->rumble_counter[i]--;
                            }

                            tried_rumble_comm = 1;
                        }
                    }
                }
            } else {
                if (padmgr->pak_type[i] != 0) {
                    if (padmgr->pak_type[i] == 1) {
                        osSyncPrintf(VT_FGCOL(YELLOW));
                        osSyncPrintf("padmgr: %dコン: %s\n", i + 1, "振動パックが抜かれたようです");
                        osSyncPrintf(VT_RST);
                        padmgr->pak_type[i] = 0;
                    } else {
                        osSyncPrintf(VT_FGCOL(YELLOW));
                        osSyncPrintf("padmgr: %dコン: %s\n", i + 1,
                                     "振動パックではないコントローラパックが抜かれたようです");
                        osSyncPrintf(VT_RST);
                        padmgr->pak_type[i] = 0;
                    }
                }
            }
        }
    }

    if (!tried_rumble_comm) {
        ctrlr = D_8016A4F0 % 4;

        if ((padmgr->Key_switch[ctrlr] != 0) && (padmgr->pad_status[ctrlr].status & 1) && (padmgr->pak_type[ctrlr] != 1)) {
            var4 = osProbeVibrationPack(ctrlrqueue, &padmgr->unk_controller[ctrlr], ctrlr);

            if (var4 == 0) {
                padmgr->pak_type[ctrlr] = 1;
                osSetVibration(&padmgr->unk_controller[ctrlr], 1);
                osSetVibration(&padmgr->unk_controller[ctrlr], 0);
                osSyncPrintf(VT_FGCOL(YELLOW));
                osSyncPrintf("padmgr: %dコン: %s\n", ctrlr + 1, "振動パックを認識しました");
                osSyncPrintf(VT_RST);
            } else if (var4 == 11) {
                padmgr->pak_type[ctrlr] = 2;
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
u32 D_8012D284 = 0; //errcnt
u32 D_8016A4F0;
#pragma GLOBAL_ASM("asm/non_matchings/code/padmgr/PadMgr_RumbleControl.s")
#endif


//func_800A2300 in 1.0
void PadMgr_RumbleStop(PadMgr* padmgr){
    s32 i;
    OSMesgQueue* ctrlrqueue;

    ctrlrqueue = PadMgr_LockSerialMesgQueue(padmgr);

    for (i = 0; i < 4; i++) {
        if (osProbeVibrationPack(ctrlrqueue, &padmgr->unk_controller[i], i) == 0) {
            if ((gFaultStruct.msgId == 0) && (padmgr->rumble_on_frames != 0)) {
                osSyncPrintf(VT_FGCOL(YELLOW));
                // EUC-JP: コン | 'Con'? , EUC-JP:  振動パック 停止 | Stop vibration pack
                osSyncPrintf("padmgr: %dコン: %s\n", i + 1, "振動パック 停止");
                osSyncPrintf(VT_RST);
            }

            osSetVibration(&padmgr->unk_controller[i], 0);
        }
    }

    PadMgr_UnlockSerialMesgQueue(padmgr, ctrlrqueue);
}

void PadMgr_RumbleReset(PadMgr* padmgr) {
    padmgr->rumble_off_frames = 3;
}

void PadMgr_RumbleSetSingle(PadMgr* padmgr, u32 ctrlr, u32 rumble) {
    padmgr->rumble_enable[ctrlr] = rumble;
    padmgr->rumble_on_frames = 0xF0;
}

// 800A23CC in 1.0
void PadMgr_RumbleSet(PadMgr* padmgr, u8* ctrlr_rumbles)
{
    s32 i;
    for(i=0; i<4; ++i){
        padmgr->rumble_enable[i] = ctrlr_rumbles[i];
    }
    padmgr->rumble_on_frames = 0xF0;
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
        input->prev.input = input->current.input;
        input->prev.status = input->current.status;
        temp_v0 = phi_s3->unk4;
        switch(padnow1->errno){
        case 0:
            input->current.input = padnow1->input;
            input->current.status = padnow1->status;
            if (padmgr->Key_switch[i] == 0) {
                padmgr->Key_switch[i] = 1;
                osSyncPrintf(&D_80145AF0); //"\x1b[33m"
                osSyncPrintf(&D_80145AF8, phi_s2 + 1, &D_80145B0C); //"padmgr: %dCon: %s\n" : "Recognized"
                osSyncPrintf(&D_80145B1C); //"\x1b[m"
            }
            break;
        case 4:
            input->current.input = input->prev.input;
            input->current.status = input->prev.status;
            LogUtils_LogThreadId(&D_80145B20, 0x17c); //"../padmgr.c"
            osSyncPrintf(&D_80145B2C, padmgr->Key_switch[i]); //"this->Key_switch[i] = %d\n"
            osSyncPrintf(&D_80145B48); //"\x1b[33m"
            osSyncPrintf(&D_80145B50, temp_s1, &D_80145B64); //"padmgr: %dCon: %s\n" : "Overrun error occurred"
            osSyncPrintf(&D_80145B80); //"\x1b[m"
            break;
        case 8:
            input->current.input.button = 0;
            input->current.input.x = 0;
            input->current.input.y = 0;
            temp_v0_2 = arg0 + phi_s2;
            input->current.errno = padnow1->errno;
            if (temp_v0_2->Key_switch != 0){
                temp_v0_2->Key_switch = 0;
                temp_v0_2->pak_type = 0;
                temp_v0_2->rumble_counter = 0xff;
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
        input->pressed_diff.input.button = input->current.input.button & (input->prev.input.button ^ input->current.input.button);
        input->released_adj.input.button = input->prev.input.button & (input->prev.input.button ^ input->current.input.button);
        func_800FCC6C(input);
        input->pressed_diff.input.x = (input->current.input.x - input->prev.input.x) + input->pressed_diff.input.x;
        input->pressed_diff.input.y = (input->current.input.y - input->prev.input.y) + input->pressed_diff.input.y;
    }
    PadMgr_UnlockPadData(arg0);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/padmgr/PadMgr_ProcessInputs.s")
#endif

void PadMgr_HandleRetraceMsg(PadMgr *padmgr) {
    OSMesgQueue *queue; //s1
    u32 i;
    u32 mask;

    queue = PadMgr_LockSerialMesgQueue(padmgr);
    osContStartReadData(queue);
    if (padmgr->unk_460){
        padmgr->unk_460(padmgr, padmgr->unk_464);
    }
    osRecvMesg(queue, NULL, OS_MESG_BLOCK);
    osContGetReadData(&padmgr->pads[0]);
    if (padmgr->prenmi_shutdown){
        bzero(&padmgr->pads[0], 0x18);
    }
    PadMgr_ProcessInputs(padmgr);
    func_80103210(queue);
    osRecvMesg(queue, NULL, OS_MESG_BLOCK);
    func_8010328C(padmgr);
    PadMgr_UnlockSerialMesgQueue(padmgr, queue);
    
    mask = 0; //s2
    for(i=0; i-4!=0; ++i){ //s1
        if(padmgr->pad_status[i].errno == 0){
            if(padmgr->pad_status[i].type - 5 == 0){
                mask |= 1 << i;
            }else{
                LogUtils_LogThreadId("../padmgr.c", 0x1ca);
                osSyncPrintf("this->pad_status[i].type = %x\n", padmgr->pad_status[i].type);
                //EUC-JP: 知らない種類のコントローラが接続されています | An unknown type of controller is connected
                osSyncPrintf("知らない種類のコントローラが接続されています\n");
            }
        }
    }
    padmgr->valid_ctrlrs_mask = mask;
    
    if (gFaultStruct.msgId){
        PadMgr_RumbleStop(padmgr);
    }else if (padmgr->rumble_off_frames > 0){
        --padmgr->rumble_off_frames;
        PadMgr_RumbleStop(padmgr);
    }else if (padmgr->rumble_on_frames == 0){
        PadMgr_RumbleStop(padmgr);
    }else if (!padmgr->prenmi_shutdown){
        PadMgr_RumbleControl(padmgr);
        --padmgr->rumble_on_frames;
    }
}

void PadMgr_HandlePreNMI(PadMgr* padmgr) {
    osSyncPrintf("padmgr_HandlePreNMI()\n");
    padmgr->prenmi_shutdown = 1;
    PadMgr_RumbleReset(padmgr);
}

#ifdef NON_MATCHING
//Regalloc differences
void PadMgr_RequestPadData(PadMgr *padmgr, Input *inputs, s32 mode)
{
    u32 i;
    Input *pm_inputs;
    Input *newin;

    PadMgr_LockPadData(padmgr);
    pm_inputs = padmgr->inputs;
    newin = inputs;
    for(i=0; i<4; ++i){
        if(mode){
            *newin = *pm_inputs;
            pm_inputs->pressed_diff.input.button = 0;
            pm_inputs->pressed_diff.input.x = 0;
            pm_inputs->pressed_diff.input.y = 0;
            pm_inputs->released_adj.input.button = 0;
        }else{
            //Correct instructions, wrong regalloc
            newin->prev = newin->current;
            newin->current = pm_inputs->current;
            newin->pressed_diff.input.button = newin->current.input.button & (newin->prev.input.button ^ newin->current.input.button);
            newin->released_adj.input.button = newin->prev.input.button & (newin->prev.input.button ^ newin->current.input.button);
            func_800FCC6C(newin);
            newin->pressed_diff.input.x = (newin->current.input.x - newin->prev.input.x) + newin->pressed_diff.input.x;
            newin->pressed_diff.input.y = (newin->current.input.y - newin->prev.input.y) + newin->pressed_diff.input.y;
        }
        ++pm_inputs;
        ++newin;
    }
    PadMgr_UnlockPadData(padmgr);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/padmgr/PadMgr_RequestPadData.s")
#endif

//800A2918 in 1.0
void PadMgr_MainProc(PadMgr* padmgr) {
    s16* mesg;
    s32 exit;

    mesg = NULL;
    // EUC-JP: コントローラスレッド実行開始 | Start of controller thread execution
    osSyncPrintf("コントローラスレッド実行開始\n");
    exit = 0;

    while (!exit){
        if ((D_8012D280 > 2) && (padmgr->queue3.validCount == 0)) {
            // EUC-JP: コントローラスレッドイベント待ち | Waiting for controller thread event
            osSyncPrintf("コントローラスレッドイベント待ち %lld\n", OS_CYCLES_TO_USEC(osGetTime()));
        }

        osRecvMesg(&padmgr->queue3, &mesg, OS_MESG_BLOCK);
        LogUtils_CheckNullPointer("msg", mesg, "../padmgr.c", 563);

        switch (*mesg){
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

//func_800A2A14 in 1.0
void PadMgr_Init(PadMgr* padmgr, OSMesgQueue* ctrlrqueue, UNK_TYPE arg2, OSId id, OSPri priority, void* stack)
{
    // EUC-JP: パッドマネージャ作成 | Create pad manager
    osSyncPrintf("パッドマネージャ作成 padmgr_Create()\n");
    bzero(padmgr, sizeof(PadMgr));
    padmgr->unk_78 = arg2;

    osCreateMesgQueue(&padmgr->queue3, padmgr->msgbuf3, 4);
    IrqMgr_AddClient(padmgr->unk_78, &padmgr->unk_70, &padmgr->queue3);
    osCreateMesgQueue(&padmgr->queue1, padmgr->msgbuf1, 1);
    PadMgr_UnlockSerialMesgQueue(padmgr, ctrlrqueue);
    osCreateMesgQueue(&padmgr->queue2, padmgr->msgbuf2, 1);
    PadMgr_UnlockPadData(padmgr);
    func_800FCD40(ctrlrqueue, &padmgr->valid_ctrlrs_mask, padmgr);

    padmgr->ncontrollers = 4;
    func_80104D00(padmgr->ncontrollers);

    osCreateThread(&padmgr->thread, id, PadMgr_MainProc, padmgr, stack, priority);
    osStartThread(&padmgr->thread);
}
