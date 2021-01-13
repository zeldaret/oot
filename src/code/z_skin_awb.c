#include "ultra64.h"
#include "global.h"
#include "macros.h"

void func_800A6460(GlobalContext *globalCtx, PSkinAwb *arg1, s32 arg2);
#ifdef NON_MATCHING
/*
u32 func_800A6460(GlobalContext *globalCtx, PSkinAwb *arg1, s32 arg2) {
    ?32 sp44;
    s32 sp18;
    s32 i;
    s32 temp_t3;
    s32 temp_t4;
    s32 temp_t5;
    s32 temp_t5_2;
    s32 temp_t8;
    u8 temp_t4_2;
    u32* temp_v0;
    void *temp_s1;
    void *temp_t3_2;
    u8 *temp_t5_3;
    s16 *temp_v1;
    u32* phi_s0;
    s32 *phi_t3;
    u16 *phi_s1;
    s32 phi_t1;
    u32 phi_s0_2;

    temp_t3 = arg1->skeletonHeader
    temp_t4 = ((s32*)SEGMENTED_TO_VIRTUAL(temp_t3))[arg2];
    temp_t5 = ((s32*)SEGMENTED_TO_VIRTUAL(temp_t4))[3];
    temp_v1 = (s16*)SEGMENTED_TO_VIRTUAL(temp_t5);
    temp_t8 = temp_v1[2];
    sp44 = 0;
    sp18 = temp_t8;
    temp_v0 = (s32*)SEGMENTED_TO_VIRTUAL(temp_t8)
    phi_s0 = temp_v0[4*temp_v1[1]];
    for (i = 0; i != 2, i++){
        phi_t3 = temp_v0;
        phi_s0_2 = phi_s0;

        if (temp_v0 < phi_s0) {
    loop_2:
            temp_t5_2 = phi_t3[2];
            temp_t4_2 = (u8*)SEGMENTED_TO_VIRTUAL(temp_t5_2)
            phi_s1 = temp_t4_2;

            if (temp_t4_2 < (u32) temp_t4_2[10*phi_t3[0]]) {
    loop_3:
                temp_s1 = phi_s1 + 0xA;
                temp_t5_3 = (*phi_s1 * 0x10) + (arg1->avbTbl[arg2].buf[i]);
                temp_t5_3[6] = (u16)0;
                temp_t5_3[8] = (s16) phi_s1[2];
                temp_t5_3[A] = (s16) phi_s1[4];
                temp_t5_3[F] = (u8) phi_s1[9];
                if ((u32) temp_s1 < (u32) ((phi_t3[0]] * 0xA) + temp_t4_2)) {
                    goto loop_3;
                }
                phi_s0_2 = temp_v0[4*temp_v1[1]];
            }
            temp_t3_2 = phi_t3 + 0x10;
            phi_t3 = temp_t3_2;
            phi_s0 = phi_s0_2;
            if ((u32) temp_t3_2 < phi_s0_2) {
                goto loop_2;
            }
        }
        i++;
    };
    return temp_v0;
}
*/
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_awb/func_800A6460.s")
#endif

void func_800A663C(GlobalContext *globalCtx, PSkinAwb *skin, SkeletonHeader *skeletonHeader, AnimationHeader *animationHeader) {
    s32 limbCount;
    s32 i;
    SkinLimb** skeleton;
    SkinAvb *avbEntry;
    u16 *temp_s1;
    SkinLimb* limb;
    SkeletonHeader* virtSkelHeader;

    virtSkelHeader = SEGMENTED_TO_VIRTUAL(skeletonHeader);
    skin->avbCount = virtSkelHeader->limbCount;
    skin->skeletonHeader = virtSkelHeader;
    
    skeleton = (SkinLimb**) SEGMENTED_TO_VIRTUAL(skin->skeletonHeader->segment);
    limbCount = skin->skeletonHeader->limbCount;
    skin->avbTbl = ZeldaArena_MallocDebug(limbCount * sizeof(SkinAvb), "../z_skin_awb.c", 212);
    if (skin->avbTbl == NULL) {
        __assert("pskin_awb->avb_tbl != NULL", "../z_skin_awb.c", 214);
    }
    for(i = 0; i < limbCount; i++) {
        avbEntry = &skin->avbTbl[i];
        limb = (SkinLimb*) SEGMENTED_TO_VIRTUAL(skeleton[i]);
        
        if ((limb->unk_8 != 4) || (limb->segment == NULL)) {
            avbEntry->unk_0 = 0;
            
            avbEntry->buf[0] = NULL;
            avbEntry->buf[1] = NULL;
        } else {
            temp_s1 = (u16*)SEGMENTED_TO_VIRTUAL(((void)0, limb->segment));
            avbEntry->unk_0 = 0;
            avbEntry->buf[0] = ZeldaArena_MallocDebug(*temp_s1 * sizeof(Vtx), "../z_skin_awb.c", 235);
            if (avbEntry->buf[0] == 0) {
                __assert("psavb->buf[0] != NULL", "../z_skin_awb.c", 237);
            }
            avbEntry->buf[1] = ZeldaArena_MallocDebug(*temp_s1 * sizeof(Vtx),  "../z_skin_awb.c", 240);
            if (avbEntry->buf[1] == 0) {
                __assert("psavb->buf[1] != NULL", "../z_skin_awb.c", 242);
            }
            func_800A6460(globalCtx, skin, i);
        }
        if(1){}
        
    }
    SkelAnime_InitSkin(globalCtx, &skin->skelAnime, skeletonHeader, animationHeader);
}

void func_800A6888(GlobalContext *globalCtx, PSkinAwb *arg1) {
    s32 i;
    if (arg1->avbTbl != NULL) {
        for (i = 0; i < arg1->avbCount; i++){
            if (arg1->avbTbl[i].buf[0] != 0) {
                ZeldaArena_FreeDebug(arg1->avbTbl[i].buf[0], "../z_skin_awb.c", 0x114);
                arg1->avbTbl[i].buf[0] = 0;
            }
            if (arg1->avbTbl[i].buf[1] != 0) {
                ZeldaArena_FreeDebug(arg1->avbTbl[i].buf[1], "../z_skin_awb.c", 0x118);
                arg1->avbTbl[i].buf[1] = 0;
            }
        }
        if (arg1->avbTbl != NULL) {
            ZeldaArena_FreeDebug(arg1->avbTbl, "../z_skin_awb.c", 0x11E);
        }
        SkelAnime_Free(&arg1->skelAnime, globalCtx);
    }
}

#ifdef NON_MATCHING
/*
s32 func_800A698C(s32 arg0, s32 **arg1, MtxF *mf, u8 arg3, u8 arg4) {
    MtxF *temp_a1;
    u8* sp70;
    MtxF *sp6C;
    s32 temp_ret;
    MtxF sp28;

    sp70 = (u8*)SEGMENTED_TO_VIRTUAL(arg1[arg4]);
    if ((s32)arg3 == 0xFF) {
        SkinMatrix_GetClear(&sp6C);
    } else {
        sp6C = &mf[(s32)arg3];
    }
    temp_a1 = &mf[arg4];

    SkinMatrix_MtxFMtxFMult(sp6C, temp_a1, &sp28);
    SkinMatrix_MtxFCopy(&sp28, temp_a1);
    
    if (sp70[6] != 0xFF) {
        temp_ret = func_800A698C(arg0, arg1, mf, arg4, sp70[6]);
        if (temp_ret != 0) {
            return temp_ret;
        }
    }
    
    if (sp70[7] != 0xFF) {
        temp_ret = func_800A698C(arg0, arg1, mf, arg3, sp70[7]);
        if (temp_ret != 0) {
            return temp_ret;
        }
    }
    return 0;
}
*/
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_awb/func_800A698C.s")
#endif

#ifdef NON_MATCHING /*
s32 func_800A6AC4(PSkinAwb *arg0, s32 arg1, void *arg2, s32 arg3) {
    void *sp58;
    f32 temp_f0;
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
    s32 temp_v0;
    s32 temp_v0_3;
    s32 temp_v1;
    void *temp_s0;
    void *temp_s0_2;
    void *temp_v0_2;
    f32 phi_f14;
    void *phi_s2;
    void *phi_s0;
    s32 phi_s3;
    s32 phi_s1;

    temp_v0 = arg0->skeletonHeader;
    sp58 = (gSegments[(u32) (temp_v0 * 0x10) >> 0x1C] + (temp_v0 & 0xFFFFFF)) + 0x80000000;
    temp_s0 = arg0->skelAnime->limbDrawTbl;
    temp_f4 = temp_s0->unk6;
    temp_f6 = temp_s0->unk8;
    temp_f8 = temp_s0->unkA;
    temp_s0 = temp_s0 + 6;
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
        SkinMatrix_SetRotateRPYTranslate(temp_f12, phi_f14, arg1, (s32) ((s32) temp_f16 << 0x10) >> 0x10, (s32) ((s32) phi_f14 << 0x10) >> 0x10, (s32) ((s32) temp_f18 << 0x10) >> 0x10, (f32) temp_f10, (f32) temp_f4_2, temp_f12);
    } else {
        SkinMatrix_SetRotateRPYTranslate(temp_f14, arg1, (s32) ((s32) temp_f16 << 0x10) >> 0x10, (s32) ((s32) temp_f14 << 0x10) >> 0x10, (s32) ((s32) temp_f18 << 0x10) >> 0x10, 0.0f, 0.0f, 0.0f);
    }
    if ((s32) arg0->unk0->unk4 >= 2) {
        phi_s2 = sp58 + 4;
        phi_s0 = (temp_s0 + 6) + 6;
        phi_s3 = arg1 + 0x40;
        phi_s1 = 1;
loop_7:
        temp_v1 = *phi_s2;
        temp_s0_2 = phi_s0 + 6;
        temp_v0_2 = ((temp_v1 & 0xFFFFFF) + gSegments[(u32) (temp_v1 * 0x10) >> 0x1C]) + 0x80000000;
        temp_f14_2 = (f32) temp_s0_2->unk-4;
        temp_f12_2 = (f32) temp_v0_2->unk4;
        SkinMatrix_SetRotateRPYTranslate(temp_f12_2, temp_f14_2, phi_s3, (s32) ((s32) (f32) temp_s0_2->unk-6 << 0x10) >> 0x10, (s32) ((s32) temp_f14_2 << 0x10) >> 0x10, (s32) ((s32) (f32) temp_s0_2->unk-2 << 0x10) >> 0x10, (f32) temp_v0_2->unk0, (f32) temp_v0_2->unk2, temp_f12_2);
        temp_s1 = phi_s1 + 1;
        phi_s2 = phi_s2 + 4;
        phi_s0 = temp_s0_2;
        phi_s3 = phi_s3 + 0x40;
        phi_s1 = temp_s1;
        if (temp_s1 < (s32) arg0->unk0->unk4) {
            goto loop_7;
        }
    }
    temp_f0 = arg2->unk54;
    SkinMatrix_SetScaleRotateYRPTranslate(arg0 + 4, (bitwise f32) arg2->unk50, temp_f0, (bitwise f32) arg2->unk58, (?32) arg2->unkB4, (?32) arg2->unkB6, (?32) arg2->unkB8, arg2->unk24, arg2->unk28 + (arg2->unkBC * temp_f0), arg2->unk2C);
    temp_v0_3 = arg0->unk0->unk0;
    temp_ret = func_800A698C(arg0, (gSegments[(u32) (temp_v0_3 * 0x10) >> 0x1C] + (temp_v0_3 & 0xFFFFFF)) + 0x80000000, arg1, 0xFF, 0);
    if (temp_ret == 0) {
        return temp_ret;
    }
    return 0;
}
*/
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_awb/func_800A6AC4.s")
#endif