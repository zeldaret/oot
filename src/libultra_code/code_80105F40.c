#include <ultra64.h>
#include <global.h>

#include <ultra64/controller.h> 

#if 0
//#ifdef NON_MATCHING

typedef struct {
    u8 unk[0x20];
} unk_t;

//TODO check SM64
s32 func_80105F40(OSMesgQueue* ctrlrqueue, u32 ctrlridx, u16 Oxfourhundred, unk_t* arg3)
{
    s32 sp44;
    s32 sp40;
    s32 temp_a0;
    s32 temp_ret;
    s32 temp_s2;
    s32 temp_s3;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    void *temp_s0;
    void *temp_s0_2;
    void *phi_s0;
    s32 phi_v0;
    void *phi_s0_2;
    s32 phi_v0_2;
    void *phi_s0_3;
    void *phi_s0_4;
    s32 phi_s3;
    s32 phi_s5;
    s32 phi_s3_2;

    __osSiGetAccess();
    sp40 = (s32) (Oxfourhundred << 5);
    sp44 = (s32) (Oxfourhundred >> 3);
    phi_s5 = 2;
loop_1:
    if ((_osCont_lastPollType != 2) || (ctrlridx != D_80134D20))
    {
        _osCont_lastPollType = (u8)2U;
        D_80134D20 = ctrlridx;
        phi_s0_3 = &D_80175960;
        if (ctrlridx > 0)
        {
            temp_a0 = ctrlridx & 3;
            temp_v0 = 0 + 4;
            phi_s0 = &D_80175960;
            phi_v0 = temp_v0;
            phi_s0_2 = &D_80175960;
            phi_v0_2 = temp_v0;
            if (((temp_a0 == 0) || (temp_a0 != temp_v0_3)) || (temp_v0_3 != ctrlridx))
            {
loop_7:
                phi_s0_2->unk0 = (u8)0;
                phi_s0_2->unk1 = (u8)0;
                phi_s0_2->unk2 = (u8)0;
                phi_s0_2->unk3 = (u8)0;
                temp_v0_2 = phi_v0_2 + 4;
                temp_s0 = phi_s0_2 + 4;
                phi_s0_2 = temp_s0;
                phi_v0_2 = temp_v0_2;
                phi_s0_3 = temp_s0;
                if (temp_v0_2 != ctrlridx)
                {
                    goto loop_7;
                }
            }
            else
            {

            }
        }
        D_80175960.unk3C = 1;
        phi_s0_3->unk0 = (u8)0xff;
        phi_s0_3->unk1 = (u8)3;
        phi_s0_3->unk2 = (u8)0x21;
        phi_s0_3->unk3 = (u8)2;
        phi_s0_3->unk26 = (u8)0xff;
        phi_s0_3->unk27 = (u8)0xfe;
        phi_s0_4 = phi_s0_3;
    }
    else
    {
        phi_s0_4 = &D_80175960 + ctrlridx;
    }
    phi_s0_4->unk4 = sp44;
    phi_s0_4->unk5 = (s8) (func_80106170(Oxfourhundred & 0xffff, Oxfourhundred) | sp40);
    __osSiRawStartDma(1, &D_80175960);
    osRecvMesg(ctrlrqueue, 0, 1);
    __osSiRawStartDma(0, &D_80175960);
    osRecvMesg(ctrlrqueue, 0, 1);
    temp_s2 = phi_s0_4 + 6;
    temp_s3 = (s32) (phi_s0_4->unk2 & 0xc0) >> 4;
    if (temp_s3 == 0)
    {
        if (phi_s0_4->unk26 != func_80106240(temp_s2))
        {
            temp_ret = func_80101910(ctrlrqueue, ctrlridx);
            phi_s3_2 = temp_ret;
            if (temp_ret == 0)
            {
                phi_s3 = 4;
block_16:
block_17:
                phi_s3_2 = phi_s3;
                if (phi_s3 == 4)
                {
                    phi_s5 = phi_s5 - 1;
                    phi_s3_2 = phi_s3;
                    if (phi_s5 >= 0)
                    {
                        goto loop_1;
                    }
                }
            }
        }
        else
        {
            bcopy(temp_s2, arg3, 0x20);
            phi_s3 = temp_s3;
            goto block_17;
        }
    }
    else
    {
        phi_s3 = 1;
        goto block_16;
    }
    __osSiRelAccess();
    return phi_s3_2;
}

#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_80105F40/code_80105F40.s")
#endif
