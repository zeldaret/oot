#include <ultra64.h>
#include <global.h>

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

OSMesgQueue* padmgr_LockSerialMesgQ(PadMgr* padmgr)
{
    OSMesgQueue* ctrlrqueue = NULL;

    if (D_8012D280 > 2)
        osSyncPrintf(D_801457B0, osGetThreadId(NULL), padmgr->queue1.validCount, padmgr, &padmgr->queue1, &ctrlrqueue);

    osRecvMesg(&padmgr->queue1, &ctrlrqueue, OS_MESG_BLOCK);

    if (D_8012D280 > 2)
        osSyncPrintf(D_801457F0, osGetThreadId(NULL), padmgr->queue1.validCount, ctrlrqueue);

    return ctrlrqueue;
}

void padmgr_UnlockSerialMesgQ(PadMgr* padmgr, OSMesgQueue* ctrlrqueue)
{
    if (D_8012D280 > 2)
        osSyncPrintf(D_8014582C, osGetThreadId(NULL), padmgr->queue1.validCount, padmgr, &padmgr->queue1, ctrlrqueue);

    osSendMesg(&padmgr->queue1, ctrlrqueue, OS_MESG_BLOCK);

    if (D_8012D280 > 2)
        osSyncPrintf(D_80145860, osGetThreadId(NULL), padmgr->queue1.validCount, padmgr, &padmgr->queue1, ctrlrqueue);
}

void padmgr_LockContData(PadMgr* padmgr)
{
    osRecvMesg(&padmgr->queue2, NULL, OS_MESG_BLOCK);
}

void padmgr_UnlockContData(PadMgr* padmgr)
{
    osSendMesg(&padmgr->queue2, NULL, OS_MESG_BLOCK);
}

#ifdef NON_MATCHING
void padmgr_RumbleControl(PadMgr* padmgr)
{
    s32 tried_rumble_comm;
    OSMesgQueue* ctrlrqueue;
    s32 ctrlr;
    s32 var4;
    s32 i;

    ctrlrqueue = padmgr_LockSerialMesgQ(padmgr);
    tried_rumble_comm = 0;

    for (i = 0; i < 4; i++){
        if (padmgr->Key_switch[i] != 0){
            if (padmgr->pad_status[i].status & 1){
                if (padmgr->pak_type[i] == 1){
                    
                    if (padmgr->rumble_enable[i]){
                        if (padmgr->rumble_counter[i] < 3){
                            osSyncPrintf(D_80145894); //"\x1b[33m" (probably formatting/debugger interface)
                            osSyncPrintf(D_8014589C, i + 1, D_801458B0); //"padmgr: %d[JPN]Con: ", "[JPN]Vibration pack jumble jumble"
                            osSyncPrintf(D_801458CC); //"\x1b[m" (probably formatting/debugger interface)
                            if (osSetVibration(&padmgr->unk_controller[i], 1) != 0){
                                padmgr->pak_type[i] = 0;
                                osSyncPrintf(D_801458D0);
                                osSyncPrintf(D_801458D8, i + 1, D_801458EC); //"A communication error has occurred with the vibraton pack"
                                osSyncPrintf(D_80145914);
                            }else{
                                padmgr->rumble_counter[i] = 3;
                            }
                            tried_rumble_comm = 1;
                        }
                    }else{
                        if (padmgr->rumble_counter[i] != 0){
                            osSyncPrintf(D_80145918);
                            osSyncPrintf(D_80145920, i + 1, D_80145934); //"Stop vibration pack"
                            osSyncPrintf(D_80145944);
                            if (osSetVibration(&padmgr->unk_controller[i], 0) != 0){
                                padmgr->pak_type[i] = 0;
                                osSyncPrintf(D_80145948);
                                osSyncPrintf(D_80145950, i + 1, D_80145964); //"A communication error has occurred with the vibration pack"
                                osSyncPrintf(D_8014598C);
                            }else{
                                padmgr->rumble_counter[i]--;
                            }
                            tried_rumble_comm = 1;
                        }
                    }
                    
                }
            }else{
                if (padmgr->pak_type[i] != 0){
                    if (padmgr->pak_type[i] == 1){
                        osSyncPrintf(D_80145990);
                        osSyncPrintf(D_80145998, i + 1, D_801459AC); //"Vibration pack seems to be pulled out"
                        osSyncPrintf(D_801459CC);
                        padmgr->pak_type[i] = 0;
                    }else{
                        osSyncPrintf(D_801459D0);
                        osSyncPrintf(D_80145A24);
                        osSyncPrintf(D_801459D8, i + 1, D_801459EC); //"It seems that a controller pack that is not a vibration pack was pulled out"
                        padmgr->pak_type[i] = 0;
                    }
                }
            }
        }
    }

    if (!tried_rumble_comm)
    {
        ctrlr = D_8016A4F0 % 4;

        if ((padmgr->Key_switch[ctrlr] != 0) && (padmgr->pad_status[ctrlr].status & 1) && (padmgr->pak_type[ctrlr] != 1))
        {
            var4 = osProbeVibrationPack(ctrlrqueue, &padmgr->unk_controller[ctrlr], ctrlr);

            if (var4 == 0)
            {
                padmgr->pak_type[ctrlr] = 1;
                osSetVibration(&padmgr->unk_controller[ctrlr], 1);
                osSetVibration(&padmgr->unk_controller[ctrlr], 0);
                osSyncPrintf(D_80145A28);
                osSyncPrintf(D_80145A30, ctrlr + 1, D_80145A44); //"Recognized vibration pack"
                osSyncPrintf(D_80145A60);
            }
            else if (var4 == 11)
            {
                padmgr->pak_type[ctrlr] = 2;
            }
            else if (var4 == 4)
            {
                LogUtils_LogThreadId(D_80145A64, 282);
                ++D_8012D284;
                osSyncPrintf(D_80145A70, D_8012D284); //"++errcnt = %d"
                osSyncPrintf(D_80145A80);
                osSyncPrintf(D_80145A88, ctrlr + 1, D_80145A9C); //"Controller pack communication error"
                osSyncPrintf(D_80145ABC);
            }
        }
    }

    D_8016A4F0++;
    padmgr_UnlockSerialMesgQ(padmgr, ctrlrqueue);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/padmgr/padmgr_RumbleControl.s")
#endif

//func_800A2300 in 1.0
void padmgr_RumbleStop(PadMgr* padmgr)
{
    s32 i;
    OSMesgQueue* ctrlrqueue;

    ctrlrqueue = padmgr_LockSerialMesgQ(padmgr);

    for (i = 0; i < 4; i++)
    {
        if (osProbeVibrationPack(ctrlrqueue, &padmgr->unk_controller[i], i) == 0)
        {
            if ((gFaultStruct.msgId == 0) && (padmgr->rumble_on_frames != 0))
            {
                osSyncPrintf(D_80145AC0);
                osSyncPrintf(D_80145AC8, i + 1, D_80145ADC); //"Stop vibration pack"
                osSyncPrintf(D_80145AEC);
            }

            osSetVibration(&padmgr->unk_controller[i], 0);
        }
    }

    padmgr_UnlockSerialMesgQ(padmgr, ctrlrqueue);
}

void padmgr_RumbleReset(PadMgr* padmgr)
{
    padmgr->rumble_off_frames = 3;
}

void padmgr_RumbleSetSingle(PadMgr* padmgr, u32 ctrlr, u32 rumble)
{
    padmgr->rumble_enable[ctrlr] = rumble;
    padmgr->rumble_on_frames = 0xF0;
}

void padmgr_RumbleSet(PadMgr* padmgr, u8* ctrlr_rumbles)
{
    //This volatile nonsense is probably not what they wrote--
    //padmgr_RumbleSetSingle above is never called and its symbol isn't exported,
    //so it looks like that was probably inlined. But we couldn't get any of that
    //to work or match. This, however, does match.
    s32 i;
    for(i=0; i<4; ++i){
        *(volatile u8*)&padmgr->rumble_enable[i] = ctrlr_rumbles[i];
    }
    *(volatile u8*)&padmgr->rumble_on_frames = 0xF0;
}

#ifdef NON_MATCHING
void func_800C7974(PadMgr* padmgr)
{
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

    padmgr_LockContData();
    input = padmgr->inputs; //s0
    padnow1 = padmgr->pads; //s3
    for(i=0; i<padmgr->ncontrollers; ++i, ++input, ++padnow1){ //TODO with an extra if (padmgr->ncontrollers > 0)
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
        
        temp_v1_2 = phi_s0->unk6;
        temp_a1 = phi_s0->unk0;
        temp_v0_5 = temp_v1_2 ^ temp_a1;
        phi_s0->unkC = (u16) (phi_s0->unkC | (temp_v0_5 & temp_a1));
        phi_s0->unk12 = (u16) (phi_s0->unk12 | (temp_v0_5 & temp_v1_2));
        func_800FCC6C(phi_s0, temp_a1);
        phi_s0->unkE = (s8) (phi_s0->unkE + (phi_s0->unk2 - phi_s0->unk8));
        phi_s0->unkF = (s8) (phi_s0->unkF + (phi_s0->unk3 - phi_s0->unk9));
    }
    padmgr_UnlockContData(arg0);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/padmgr/func_800C7974.s")
#endif

void padmgr_HandleRetraceMsg(PadMgr *padmgr)
{
    OSMesgQueue *queue; //s1
    u32 i;
    u32 mask;

    queue = padmgr_LockSerialMesgQ(padmgr);
    osContStartReadData(queue);
    if (padmgr->unk_460 != NULL){
        padmgr->unk_460(padmgr, padmgr->unk_464);
    }
    osRecvMesg(queue, NULL, OS_MESG_BLOCK);
    osContGetReadData(&padmgr->pads[0]);
    if (padmgr->prenmi_shutdown){
        bzero(&padmgr->pads[0], 0x18);
    }
    func_800C7974(padmgr);
    func_80103210(queue);
    osRecvMesg(queue, NULL, OS_MESG_BLOCK);
    func_8010328C(padmgr);
    padmgr_UnlockSerialMesgQ(padmgr, queue);
    
    mask = 0; //s2
    for(i=0; i-4!=0; ++i){ //s1
        if(padmgr->pad_status[i].errno == 0){
            if(padmgr->pad_status[i].type - 5 == 0){
                mask |= 1 << i;
            }else{
                LogUtils_LogThreadId(D_80145BE4, 0x1ca); //"../padmgr.c", line 0x1CA
                osSyncPrintf(D_80145BF0, padmgr->pad_status[i].type); //"this->pad_status[i].type = %x\n"
                osSyncPrintf(D_80145C10); //"An unknown type of controller is connected"
            }
        }
    }
    padmgr->valid_ctrlrs_mask = mask;
    
    if (gFaultStruct.msgId){
        padmgr_RumbleStop(padmgr);
        return;
    }
    if ((s32)(padmgr->rumble_off_frames) > 0){
        padmgr->rumble_off_frames = *(volatile u8*)&padmgr->rumble_off_frames - 1;
        padmgr_RumbleStop(padmgr);
        return;
    }
    if (padmgr->rumble_on_frames == 0){
        padmgr_RumbleStop(padmgr);
        return;
    }
    if (!padmgr->prenmi_shutdown){
        padmgr_RumbleControl(padmgr);
        --padmgr->rumble_on_frames;
    }
}

void padmgr_HandlePreNMI(PadMgr* padmgr)
{
    osSyncPrintf(D_80145C40); //"padmgr_HandlePreNMI()\n"
    padmgr->prenmi_shutdown = 1;
    padmgr_RumbleReset(padmgr);
}

#ifdef NON_MATCHING
//Regalloc differences
void padmgr_RequestPadData(PadMgr *padmgr, Input *inputs, s32 mode)
{
    u32 i;
    Input *pm_inputs;
    Input *newin;

    padmgr_LockContData(padmgr);
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
            newin->prev = newin->current;
            newin->current = pm_inputs->current;
            newin->pressed_diff.input.button = newin->current.input.button & (newin->prev.input.button ^ newin->current.input.button);
            newin->released_adj.input.button = newin->prev.input.button & (newin->prev.input.button ^ newin->current.input.button);
            func_800FCC6C(newin);
            newin->pressed_diff.input.x = (newin->current.input.x - newin->prev.input.x) + newin->pressed_diff.input.x;
            newin->pressed_diff.input.y = (newin->current.input.y - newin->prev.input.y) + newin->pressed_diff.input.y;
            /*
            //Correct instructions, wrong regalloc
            newin->prev = newin->current;
            newin->current = pm_inputs->current;
            newin->pressed_diff.input.button = newin->current.input.button & (newin->prev.input.button ^ newin->current.input.button);
            newin->released_adj.input.button = newin->prev.input.button & (newin->prev.input.button ^ newin->current.input.button);
            func_800FCC6C(newin);
            newin->pressed_diff.input.x = (newin->current.input.x - newin->prev.input.x) + newin->pressed_diff.input.x;
            newin->pressed_diff.input.y = (newin->current.input.y - newin->prev.input.y) + newin->pressed_diff.input.y;
            */
        }
        ++pm_inputs;
        ++newin;
    }
    padmgr_UnlockContData(padmgr);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/padmgr/padmgr_RequestPadData.s")
#endif

//800A2918 in 1.0
void padmgr_MainProc(PadMgr* padmgr) //probably static
{
    s16* mesg;
    s32 exit;

    mesg = NULL;
    osSyncPrintf(D_80145C58); //"Start of controller thread execution"
    exit = 0;

    while (!exit){
        if ((D_8012D280 > 2) && (padmgr->queue3.validCount == 0))
            osSyncPrintf(D_80145C78, (osGetTime() * 64) / 3000); //"Waiting for controller thread event"

        osRecvMesg(&padmgr->queue3, &mesg, OS_MESG_BLOCK);
        LogUtils_CheckNullPointer(D_80145CA0, mesg, D_80145CA4, 563); //"msg", "../padmgr.c", line 563

        switch (*mesg){
            case 1:
                if (D_8012D280 > 2)
                    osSyncPrintf(D_80145CB0, (osGetTime() * 64) / 3000); //"padmgr_HandleRetraceMsg START %lld\n"

                padmgr_HandleRetraceMsg(padmgr);

                if (D_8012D280 > 2)
                    osSyncPrintf(D_80145CD4, (osGetTime() * 64) / 3000); //"padmgr_HandleRetraceMsg END   %lld\n"

                break;
            case 4:
                padmgr_HandlePreNMI(padmgr);
                break;
            case 3:
                exit = 1;
                break;
        }
    }

    func_800D3300(padmgr->unk_78, &padmgr->unk_70);
    osSyncPrintf(D_80145CF8); //Not translated, probably "End of controller thread execution"
}

//func_800A2A14 in 1.0
void padmgr_Init(PadMgr* padmgr, OSMesgQueue* ctrlrqueue, UNK_TYPE arg2, OSId id, OSPri priority, void* stack)
{
    osSyncPrintf(D_80145D18); //"Create pad manager"
    bzero(padmgr, sizeof(PadMgr));
    padmgr->unk_78 = arg2;

    osCreateMesgQueue(&padmgr->queue3, padmgr->msgbuf3, 4);
    func_800D3220(padmgr->unk_78, &padmgr->unk_70, &padmgr->queue3);
    osCreateMesgQueue(&padmgr->queue1, padmgr->msgbuf1, 1);
    padmgr_UnlockSerialMesgQ(padmgr, ctrlrqueue);
    osCreateMesgQueue(&padmgr->queue2, padmgr->msgbuf2, 1);
    padmgr_UnlockContData(padmgr);
    func_800FCD40(ctrlrqueue, &padmgr->valid_ctrlrs_mask, padmgr);

    padmgr->ncontrollers = 4;
    func_80104D00(padmgr->ncontrollers);

    osCreateThread(&padmgr->thread, id, padmgr_MainProc, padmgr, stack, priority);
    osStartThread(&padmgr->thread);
}
