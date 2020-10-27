#include "global.h"

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_awb/func_800A6460.s")
/* void func_800A6460(GlobalContext* arg0, PSkinAwb* arg1, s32 arg2) {
    s32 sp18;
    s32 temp_t1;
    s32 temp_t4;
    Struct_800A5F60* temp_t5;
    s32 temp_t5_2;
    s32 temp_t8;
    u32 temp_t3;
    u32 temp_t4_2;
    Struct_800A598C* temp_v0;
    void *temp_s1;
    void *temp_t3_2;
    void *temp_t5_3;
    Struct_800A5E28* temp_v1;
    Struct_800A598C* phi_s0;
    void *phi_t3;
    void *phi_s1;
    s32 phi_t1;
    u32 phi_s0_2;

    temp_t5 = (Struct_800A5F60*)SEGMENTED_TO_VIRTUAL(((UNK_TYPE*)SEGMENTED_TO_VIRTUAL(arg1->unk_0->unk_0))[arg2]);
    temp_v1 = (Struct_800A5E28*)SEGMENTED_TO_VIRTUAL(temp_t5->unk_C);
    temp_v0 = (Struct_800A598C*)SEGMENTED_TO_VIRTUAL(temp_v1->unk_4);

    phi_s0 = &temp_v0[temp_v1->unk_2];
    for (phi_t1 = 0; phi_t1 != 2; phi_t1++) {
        while (phi_s0 < &temp_v0[temp_v1->unk_2]) {

        }

        if (temp_v0 < phi_s0) {
loop_2:
            temp_t4_2 = SEGMENTED_TO_VIRTUAL(temp_v0->unk_8);
            phi_s1 = temp_t4_2;
            if (temp_t4_2 < ((temp_v0->unk_0 * 0xA) + temp_t4_2)) {
loop_3:
                phi_s1 = phi_s1 + 0xA;
                temp_t5_3 = (*phi_s1 * 0x10) + (&arg1->avbTbl[arg2] + (phi_t1 * 4))->unk_4;
                temp_t5_3->unk6 = 0;
                temp_t5_3->unk8 = phi_s1->unk-8;
                temp_t5_3->unkA = phi_s1->unk-6;
                temp_t5_3->unkF = phi_s1->unk-1;
                if (phi_s1 < ((temp_v0->unk_0 * 0xA) + temp_t4_2)) {
                    goto loop_3;
                }
            }
            temp_v0 = temp_v0 + 0x10;
            if (temp_v0 < phi_s0) {
                goto loop_2;
            }
        }
    }
} */

typedef struct {
    u16 unk_0;
} Struct_800A663C;

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_awb/func_800A663C.s")
/* void func_800A663C(GlobalContext *globalCtx, PSkinAwb *arg1, SkeletonHeader* arg2, AnimationHeader *arg3) {
    UNK_TYPE* temp_s0;
    SkinAvb *temp_s0_2;
    Struct_800A663C* temp_s1;
    Struct_800A5F60 *temp_v1_2;
    s32 i;

    arg1->unk_0 = (UnkPSkinAwb_0*)SEGMENTED_TO_VIRTUAL(arg2);
    arg1->avbCount = arg1->unk_0->unk_4;
    temp_s0 = SEGMENTED_TO_VIRTUAL(arg1->unk_0->unk_0);
    arg1->avbTbl = ZeldaArena_MallocDebug(arg1->unk_0->unk_4 * sizeof(SkinAvb), "../z_skin_awb.c", 212);
    if (arg1->avbTbl == NULL) {
        __assert("pskin_awb->avb_tbl != NULL", "../z_skin_awb.c", 214);
    }
    for (i = 0; i != arg1->avbCount; i++) {
        temp_s0_2 = &arg1->avbTbl[i];
        temp_v1_2 = (Struct_800A5F60*)SEGMENTED_TO_VIRTUAL(temp_s0[i]);
        temp_s0_2->unk_0 = 0;
        if (temp_v1_2->unk_8 != 4 || temp_v1_2->unk_C == NULL) {
            temp_s0_2->buf[0] = NULL;
            temp_s0_2->buf[1] = NULL;
        } else {
            temp_s1 = (Struct_800A663C*)SEGMENTED_TO_VIRTUAL(temp_v1_2->unk_C);
            temp_s0_2->buf[0] = ZeldaArena_MallocDebug(temp_s1->unk_0 * sizeof(Struct_800A57C0_2), "../z_skin_awb.c", 235);
            if (temp_s0_2->buf[0] == NULL) {
                __assert("psavb->buf[0] != NULL", "../z_skin_awb.c", 237);
            }
            temp_s0_2->buf[1] = ZeldaArena_MallocDebug(temp_s1->unk_0 * sizeof(Struct_800A57C0_2), "../z_skin_awb.c", 240);
            if (temp_s0_2->buf[1] == NULL) {
                __assert("psavb->buf[1] != NULL", "../z_skin_awb.c", 242);
            }
            func_800A6460(globalCtx, arg1, i);
        }
    }
    SkelAnime_InitSkin(globalCtx, &arg1->skelAnime, arg2, arg3);
} */

// SkinAwb_Free
void func_800A6888(GlobalContext* arg0, PSkinAwb* arg1) {
    if (arg1->avbTbl != NULL) {
        s32 i;
        for (i = 0; i < arg1->avbCount; i++) {
            if (arg1->avbTbl[i].buf[0] != NULL) {
                ZeldaArena_FreeDebug(arg1->avbTbl[i].buf[0], "../z_skin_awb.c", 276);
                arg1->avbTbl[i].buf[0] = NULL;
            }
            if (arg1->avbTbl[i].buf[1] != NULL) {
                ZeldaArena_FreeDebug(arg1->avbTbl[i].buf[1], "../z_skin_awb.c", 280);
                arg1->avbTbl[i].buf[1] = NULL;
            }
        }
        if (arg1->avbTbl != NULL) {
            ZeldaArena_FreeDebug(arg1->avbTbl, "../z_skin_awb.c", 286);
        }
        SkelAnime_Free(&arg1->skelAnime, arg0);
    }
}

s32 func_800A698C(PSkinAwb* arg0, UNK_TYPE* arg1, Mtx* arg2, u8 arg3, u8 arg4) {
    s32 temp_v1 = arg3;
    Struct_800A5F60* sp70 = (Struct_800A5F60*)SEGMENTED_TO_VIRTUAL(arg1[arg4]);
    MtxF *sp6C;
    s32 temp_ret;
    MtxF sp28;

    if (temp_v1 == 0xFF) {
        SkinMatrix_GetClear(&sp6C);
    } else {
        sp6C = &arg2[temp_v1];
    }

    SkinMatrix_MtxFMtxFMult(sp6C, &arg2[arg4], &sp28);
    SkinMatrix_MtxFCopy(&sp28, &arg2[arg4]);

    if (sp70->unk_6 != 0xFF) {
        temp_ret = func_800A698C(arg0, arg1, arg2, arg4, sp70->unk_6);
        if (temp_ret != 0) {
            return temp_ret;
        }
    }
    if (sp70->unk_7 != 0xFF) {
        temp_ret = func_800A698C(arg0, arg1, arg2, arg3, sp70->unk_7);
        if (temp_ret != 0) {
            return temp_ret;
        }
    }
    return 0;
}

typedef struct {
    /* 0x000 */ Actor actor;
    /* 0x14C */ UNK_TYPE unk_14C;
    /* 0x150 */ UNK_TYPE unk_150;
    /* 0x154 */ PSkinAwb skin;
} SkinActor;

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_awb/func_800A6AC4.s")
/* s32 func_800A6AC4(PSkinAwb* arg0, MtxF* arg1, Actor* arg2, s32 arg3) {
    UNK_TYPE* sp58;
    Vec3s *temp_s0;
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
    s32 temp_v1;
    u32 temp_v0;
    u32 temp_v0_3;
    Vec3s *temp_v0_2;
    f32 phi_f14;
    MtxF *phi_s3;
    s32 phi_s1;

    sp58 = SEGMENTED_TO_VIRTUAL(arg0->unk_0->unk_0);
    temp_f16 = arg0->skelAnime.limbDrawTbl[0].x;
    phi_f14 =  arg0->skelAnime.limbDrawTbl[0].y;
    temp_f18 = arg0->skelAnime.limbDrawTbl[0].z;
    if (arg3 != 0) {
        temp_f10 =  arg0->skelAnime.limbDrawTbl[1].x;
        temp_f4_2 = arg0->skelAnime.limbDrawTbl[1].y;
        temp_f12 =  arg0->skelAnime.limbDrawTbl[1].z;
        if (arg3 == 0x23) {
            phi_f14 += ((SkinActor*)arg2)->skin.skelAnime.unk_3E.y;
        }
        SkinMatrix_SetRotateRPYTranslate(&arg1[0], temp_f16, phi_f14, temp_f18, temp_f10, temp_f4_2, temp_f12);
    } else {
        SkinMatrix_SetRotateRPYTranslate(&arg1[0], temp_f16, phi_f14, temp_f18, 0.0f, 0.0f, 0.0f);
    }
    for (phi_s1 = 1; phi_s1 < arg0->unk_0->unk_4; phi_s1++) {
        temp_v0_2 = (Vec3s*)SEGMENTED_TO_VIRTUAL(sp58[phi_s1]);
        SkinMatrix_SetRotateRPYTranslate(&arg1[phi_s1], 
                        arg0->skelAnime.limbDrawTbl[phi_s1].x, 
                        arg0->skelAnime.limbDrawTbl[phi_s1].y, 
                        arg0->skelAnime.limbDrawTbl[phi_s1].z, 
                        temp_v0_2->x, temp_v0_2->y, temp_v0_2->z);
    }
    SkinMatrix_SetScaleRotateYRPTranslate(&arg0->mtx, 
                    arg2->scale.x, arg2->scale.y, arg2->scale.z, 
                    arg2->shape.rot.x, arg2->shape.rot.y, arg2->shape.rot.z, 
                    arg2->posRot.pos.x, arg2->posRot.pos.y + (arg2->shape.unk_08 * arg2->scale.y), arg2->posRot.pos.z);
    temp_ret = func_800A698C(arg0, SEGMENTED_TO_VIRTUAL(arg0->unk_0->unk_0), arg1, 0xFF, 0);
    if (temp_ret == 0) {
        return temp_ret;
    }
    return 0;
} */
