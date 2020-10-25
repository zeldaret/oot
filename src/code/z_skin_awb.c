#include "global.h"

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_awb/func_800A6460.s")
/* u32 func_800A6460(GlobalContext* arg0, PSkinAwb *arg1, s32 arg2) {
    ?32 sp44;
    s32 sp18;
    s32 temp_t1;
    s32 temp_t5;
    u32 temp_t4;
    u32 temp_v0;
    void *temp_s1;
    void *temp_t3;
    void *temp_t5_2;
    void *temp_t7;
    void *temp_t9;
    void *temp_v1;
    u32 phi_s0;
    void *phi_t3;
    void *phi_s1;
    s32 phi_t1;
    u32 phi_s0_2;

    temp_t7 = ((gSegments[((u32) (*arg1->unk0 * 0x10) >> 0x1C)] + (*arg1->unk0 & 0xFFFFFF)) + 0x80000000) + (arg2 * 4);
    temp_t9 = ((*temp_t7 & 0xFFFFFF) + gSegments[((u32) (*temp_t7 * 0x10) >> 0x1C)]) + 0x80000000;
    temp_v1 = ((temp_t9->unkC & 0xFFFFFF) + gSegments[((u32) (temp_t9->unkC * 0x10) >> 0x1C)]) + 0x80000000;
    sp44 = 0;
    sp18 = temp_v1->unk4;
    temp_v0 = (gSegments[((u32) (temp_v1->unk4 * 0x10) >> 0x1C)] + (temp_v1->unk4 & 0xFFFFFF)) + 0x80000000;
    phi_s0 = (temp_v1->unk2 * 0x10) + temp_v0;
    phi_t1 = 0;
loop_1:
    phi_t3 = (void *) temp_v0;
    phi_s0_2 = phi_s0;
    if (temp_v0 < phi_s0) {
loop_2:
        temp_t5 = phi_t3->unk8;
        temp_t4 = (gSegments[((u32) (temp_t5 * 0x10) >> 0x1C)] + (temp_t5 & 0xFFFFFF)) + 0x80000000;
        phi_s1 = (void *) temp_t4;
        if (temp_t4 < (u32) ((phi_t3->unk0 * 0xA) + temp_t4)) {
loop_3:
            temp_s1 = phi_s1 + 0xA;
            temp_t5_2 = (*phi_s1 * 0x10) + ((arg1->unk48 + (arg2 * 0xC)) + phi_t1)->unk4;
            temp_t5_2->unk6 = (u16)0;
            temp_t5_2->unk8 = (s16) temp_s1->unk-8;
            temp_t5_2->unkA = (s16) temp_s1->unk-6;
            temp_t5_2->unkF = (u8) temp_s1->unk-1;
            phi_s1 = temp_s1;
            if ((u32) temp_s1 < (u32) ((phi_t3->unk0 * 0xA) + temp_t4)) {
                goto loop_3;
            }
            phi_s0_2 = (temp_v1->unk2 * 0x10) + temp_v0;
        }
        temp_t3 = phi_t3 + 0x10;
        phi_t3 = temp_t3;
        phi_s0 = phi_s0_2;
        if ((u32) temp_t3 < phi_s0_2) {
            goto loop_2;
        }
    }
    temp_t1 = phi_t1 + 4;
    phi_t1 = temp_t1;
    if (temp_t1 != 8) {
        goto loop_1;
    }
    return temp_v0;
} */

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_awb/func_800A663C.s")
/* void func_800A663C(GlobalContext *globalCtx, PSkinAwb *arg1, SkeletonHeader *arg2, AnimationHeader *arg3) {
    s32 sp44;
    char *temp_v0;
    s32 temp_s2;
    s32 temp_v0_3;
    u8 temp_t0;
    void *temp_s0;
    void *temp_s0_2;
    void *temp_s1;
    void *temp_v0_2;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v1;
    void *phi_s4;
    s32 phi_s3;
    s32 phi_s2;

    temp_v0 = (gSegments[((u32) ((s32) arg2 * 0x10) >> 0x1C)] + ((s32) arg2 & 0xFFFFFF)) + 0x80000000;
    arg1->unk_00 = temp_v0;
    arg1->unk44 = (?32) temp_v0->unk4;
    temp_t0 = (u8) temp_v0[4];
    temp_s0 = (gSegments[((u32) (temp_v0->unk0 * 0x10) >> 0x1C)] + (temp_v0->unk0 & 0xFFFFFF)) + 0x80000000;
    arg2 = arg2;
    sp44 = (s32) temp_t0;
    temp_v0_2 = ZeldaArena_MallocDebug(temp_t0 * 0xC, (const char *) "../z_skin_awb.c", 0xD4);
    arg1->avbTbl = temp_v0_2;
    if (temp_v0_2 == NULL) {
        __assert((const char *) "pskin_awb->avb_tbl != NULL", (const char *) "../z_skin_awb.c", 0xD6);
    }
    phi_s4 = temp_s0;
    phi_s3 = 0;
    phi_s2 = 0;
    if (sp44 > 0) {
loop_3:
        temp_v0_3 = *phi_s4;
        temp_s0_2 = arg1->avbTbl + phi_s3;
        temp_v1 = ((temp_v0_3 & 0xFFFFFF) + gSegments[((temp_v0_3 * 0x10) >> 0x1C)]) + 0x80000000;
        if ((temp_v1->unk8 != 4) || (temp_v1->unkC == 0)) {
            temp_s0_2->unk0 = 0;
            temp_s0_2->unk4 = NULL;
            temp_s0_2->unk8 = NULL;
        } else {
            temp_s0_2->unk0 = 0;
            temp_s1 = ((temp_v1->unkC & 0xFFFFFF) + gSegments[((temp_v1->unkC * 0x10) >> 0x1C)]) + 0x80000000;
            temp_v0_4 = ZeldaArena_MallocDebug((*temp_s1 * 0x10), "../z_skin_awb.c", 0xEB);
            temp_s0_2->unk4 = temp_v0_4;
            if (temp_v0_4 == 0) {
                __assert("psavb->buf[0] != NULL", "../z_skin_awb.c", 0xED);
            }
            temp_v0_5 = ZeldaArena_MallocDebug((*temp_s1 * 0x10), "../z_skin_awb.c", 0xF0);
            temp_s0_2->unk8 = temp_v0_5;
            if (temp_v0_5 == 0) {
                __assert("psavb->buf[1] != NULL", "../z_skin_awb.c", 0xF2);
            }
            func_800A6460(globalCtx, arg1, phi_s2);
        }
        temp_s2 = phi_s2 + 1;
        phi_s4 = phi_s4 + 4;
        phi_s3 = phi_s3 + 0xC;
        phi_s2 = temp_s2;
        if (temp_s2 != sp44) {
            goto loop_3;
        }
    }
    SkelAnime_InitSkin(globalCtx, &arg1->skelAnime, arg2, arg3);
} */

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_awb/func_800A6888.s")
/* void func_800A6888(GlobalContext *arg0, PSkinAwb *arg1) {
    s32 temp_s2;
    void *temp_a0;
    void *temp_v0;
    void *phi_a3;
    s32 phi_s0;
    void *phi_v0;
    s32 phi_s2;
    void *phi_a3_2;
    void *phi_a3_3;

    if (arg1->avbTbl != NULL) {
        phi_a3_2 = arg1->avbTbl;
        if (arg1->unk_44 > 0) {
            phi_a3 = arg1->avbTbl;
            phi_s0 = 0;
            phi_s2 = 0;
loop_3:
            temp_v0 = phi_a3 + phi_s0;
            phi_v0 = temp_v0;
            phi_a3_3 = phi_a3;
            if (temp_v0->unk4 != 0) {
                ZeldaArena_FreeDebug(temp_v0->unk4, "../z_skin_awb.c", 0x114);
                (arg1->avbTbl + phi_s0)->unk4 = 0;
                phi_v0 = arg1->avbTbl + phi_s0;
                phi_a3_3 = arg1->avbTbl;
            }
            temp_a0 = phi_v0->unk8;
            if (temp_a0 != 0) {
                ZeldaArena_FreeDebug(temp_a0, "../z_skin_awb.c", 0x118);
                (arg1->avbTbl + phi_s0)->unk8 = 0;
                phi_a3_3 = arg1->avbTbl;
            }
            temp_s2 = phi_s2 + 1;
            phi_a3 = phi_a3_3;
            phi_s0 = phi_s0 + 0xC;
            phi_s2 = temp_s2;
            phi_a3_2 = phi_a3_3;
            if (temp_s2 < arg1->unk_44) {
                goto loop_3;
            }
        }
        if (phi_a3_2 != NULL) {
            ZeldaArena_FreeDebug(phi_a3_2, "../z_skin_awb.c", 0x11E);
        }
        SkelAnime_Free(&arg1->skelAnime, arg0);
    }
} */

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_awb/func_800A698C.s")
/* s32 func_800A698C(s32 arg0, s32 arg1, s32 arg2, u8 arg3, u8 arg4) {
    void *sp70;
    MtxF *sp6C;
    ? sp28;
    MtxF *sp24;
    MtxF *temp_a1;
    s32 temp_ret;
    s32 temp_ret_2;
    void *temp_t9;

    temp_t9 = arg1 + (arg4 * 4);
    sp70 = ((*temp_t9 & 0xFFFFFF) + gSegments[((u32) (*temp_t9 * 0x10) >> 0x1C)]) + 0x80000000;
    if (arg3 == 0xFF) {
        func_800A72FC(&sp6C);
    } else {
        sp6C = (arg3 << 6) + arg2;
    }
    temp_a1 = (arg4 << 6) + arg2;
    sp24 = temp_a1;
    func_800A6FA0(sp6C, temp_a1, (MtxF *) &sp28);
    func_800A735C(&sp28, temp_a1);
    if (sp70->unk6 != 0xFF) {
        temp_ret = func_800A698C(arg0, arg1, arg2, arg4, (?32) sp70->unk6);
        if (temp_ret != 0) {
            return temp_ret;
        }
    }
    if (sp70->unk7 != 0xFF) {
        temp_ret_2 = func_800A698C(arg0, arg1, arg2, arg3, (?32) sp70->unk7);
        if (temp_ret_2 != 0) {
            return temp_ret_2;
        }
    }
    return 0;
} */

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_awb/func_800A6AC4.s")
/* s32 func_800A6AC4(PSkinAwb *arg0, MtxF* arg1, Actor *arg2, s32 arg3) {
    void *sp58;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f16;
    f32 temp_f18;
    s16 temp_f10;
    s16 temp_f4;
    s16 temp_f4_2;
    s16 temp_f6;
    s16 temp_f6_2;
    s16 temp_f8;
    s32 temp_ret;
    s32 temp_s1;
    s32 temp_v1;
    void *temp_s0;
    void *temp_s0_2;
    void *temp_v0;
    f32 phi_f14;
    void *phi_s2;
    void *phi_s0;
    s32 phi_s3;
    s32 phi_s1;

    sp58 = (gSegments[((u32) (*arg0->unk0 * 0x10) >> 0x1C)] + (*arg0->unk0 & 0xFFFFFF)) + 0x80000000;
    temp_f4 = arg0->unk6C->unk6;
    temp_f6 = arg0->unk6C->unk8;
    temp_f8 = arg0->unk6C->unkA;
    temp_s0 = arg0->unk6C + 6;
    temp_f16 = (f32) temp_f4;
    temp_f14 = (f32) temp_f6;
    temp_f18 = (f32) temp_f8;
    if (arg3 != 0) {
        temp_f10 = temp_s0->unk-6;
        temp_f4_2 = temp_s0->unk-4;
        temp_f6_2 = temp_s0->unk-2;
        temp_f12 = (f32) temp_f6_2;
        phi_f14 = temp_f14;
        if (arg3 == 0x23) {
            phi_f14 = temp_f14 + (f32) arg2->unk1E0;
        }
        func_800A7B84(temp_f12, phi_f14, arg1, (s32) ((s32) temp_f16 << 0x10) >> 0x10, (s32) ((s32) phi_f14 << 0x10) >> 0x10, (s32) ((s32) temp_f18 << 0x10) >> 0x10, (f32) temp_f10, (f32) temp_f4_2, temp_f12);
    } else {
        func_800A7B84(temp_f14, arg1, (s32) ((s32) temp_f16 << 0x10) >> 0x10, (s32) ((s32) temp_f14 << 0x10) >> 0x10, (s32) ((s32) temp_f18 << 0x10) >> 0x10, 0.0f, 0.0f, 0.0f);
    }
    if ((s32) arg0->unk_0->unk_4 >= 2) {
        phi_s2 = sp58 + 4;
        phi_s0 = (arg0->unk6C + 6) + 6;
        phi_s3 = arg1 + 0x40;
        phi_s1 = 1;
loop_7:
        temp_v1 = *phi_s2;
        temp_s0_2 = phi_s0 + 6;
        temp_v0 = ((temp_v1 & 0xFFFFFF) + gSegments[((u32) (temp_v1 * 0x10) >> 0x1C)]) + 0x80000000;
        temp_f14_2 = (f32) temp_s0_2->unk-4;
        temp_f12_2 = (f32) temp_v0->unk4;
        func_800A7B84(temp_f12_2, temp_f14_2, phi_s3, (s32) ((s32) (f32) temp_s0_2->unk-6 << 0x10) >> 0x10, (s32) ((s32) temp_f14_2 << 0x10) >> 0x10, (s32) ((s32) (f32) temp_s0_2->unk-2 << 0x10) >> 0x10, (f32) temp_v0->unk0, (f32) temp_v0->unk2, temp_f12_2);
        temp_s1 = phi_s1 + 1;
        phi_s2 = phi_s2 + 4;
        phi_s0 = temp_s0_2;
        phi_s3 = phi_s3 + 0x40;
        phi_s1 = temp_s1;
        if (temp_s1 < (s32) arg0->unk0->unk4) {
            goto loop_7;
        }
    }
    func_800A7B04(arg0 + 4, arg2->unk50, arg2->unk54, arg2->unk58, (?32) arg2->unkB4, (?32) arg2->unkB6, (?32) arg2->unkB8, arg2->unk24, arg2->unk28 + (arg2->unkBC * arg2->unk54), arg2->unk2C);
    temp_ret = func_800A698C(arg0, (gSegments[((u32) (arg0->unk0->unk0 * 0x10) >> 0x1C)] + (arg0->unk0->unk0 & 0xFFFFFF)) + 0x80000000, arg1, 0xFF, 0);
    if (temp_ret == 0) {
        return temp_ret;
    }
    return 0;
} */
