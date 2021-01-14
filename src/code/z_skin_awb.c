#include "ultra64.h"
#include "global.h"
#include "macros.h"
#include "overlays/actors/ovl_En_fHG/z_en_fhg.h"

void func_800A6460(GlobalContext* globalCtx, PSkinAwb* skin, s32 limbIndex) {
    s32 phi_t1;
    SkinLimb** skeleton = SEGMENTED_TO_VIRTUAL(skin->skeletonHeader->segment);
    Struct_800A5E28* temp_v1 = SEGMENTED_TO_VIRTUAL(((SkinLimb*)SEGMENTED_TO_VIRTUAL(skeleton[limbIndex]))->segment);
    Struct_800A598C* temp_v0 = SEGMENTED_TO_VIRTUAL(temp_v1->unk_4);
    Struct_800A598C* phi_s0;
    Struct_800A57C0* temp_s1;

    for (phi_t1 = 0; phi_t1 < 2; phi_t1++) {
        Vtx* temp2 = skin->avbTbl[limbIndex].buf[phi_t1];

        for (phi_s0 = temp_v0; phi_s0 < temp_v0 + temp_v1->unk_2; phi_s0++) {
            Struct_800A57C0* phi_s1 = SEGMENTED_TO_VIRTUAL(phi_s0->unk_8);

            for (temp_s1 = phi_s1; temp_s1 < phi_s1 + phi_s0->unk_0; temp_s1++) {
                Vtx* temp_t5_3 = &temp2[temp_s1->unk_0];

                temp_t5_3->v.flag = 0;
                temp_t5_3->v.tc[0] = temp_s1->unk_2;
                temp_t5_3->v.tc[1] = temp_s1->unk_4;
                temp_t5_3->v.cn[3] = temp_s1->unk_9;
            }
        }
    }
}

void func_800A663C(GlobalContext* globalCtx, PSkinAwb* skin, SkeletonHeader* skeletonHeader,
                   AnimationHeader* animationHeader) {
    s32 limbCount;
    s32 i;
    SkinLimb** skeleton;
    SkinAvb* avbEntry;
    u16* temp_s1;
    SkinLimb* limb;
    SkeletonHeader* virtSkelHeader;

    virtSkelHeader = SEGMENTED_TO_VIRTUAL(skeletonHeader);
    skin->avbCount = virtSkelHeader->limbCount;
    skin->skeletonHeader = virtSkelHeader;

    skeleton = (SkinLimb**)SEGMENTED_TO_VIRTUAL(skin->skeletonHeader->segment);
    limbCount = skin->skeletonHeader->limbCount;
    skin->avbTbl = ZeldaArena_MallocDebug(limbCount * sizeof(SkinAvb), "../z_skin_awb.c", 212);
    if (skin->avbTbl == NULL) {
        __assert("pskin_awb->avb_tbl != NULL", "../z_skin_awb.c", 214);
    }
    for (i = 0; i < limbCount; i++) {
        avbEntry = &skin->avbTbl[i];
        limb = (SkinLimb*)SEGMENTED_TO_VIRTUAL(skeleton[i]);

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
            avbEntry->buf[1] = ZeldaArena_MallocDebug(*temp_s1 * sizeof(Vtx), "../z_skin_awb.c", 240);
            if (avbEntry->buf[1] == 0) {
                __assert("psavb->buf[1] != NULL", "../z_skin_awb.c", 242);
            }
            func_800A6460(globalCtx, skin, i);
        }
        if (1) {}
    }
    SkelAnime_InitSkin(globalCtx, &skin->skelAnime, skeletonHeader, animationHeader);
}

void func_800A6888(GlobalContext* globalCtx, PSkinAwb* arg1) {
    s32 i;
    if (arg1->avbTbl != NULL) {
        for (i = 0; i < arg1->avbCount; i++) {
            if (arg1->avbTbl[i].buf[0] != 0) {
                ZeldaArena_FreeDebug(arg1->avbTbl[i].buf[0], "../z_skin_awb.c", 276);
                arg1->avbTbl[i].buf[0] = 0;
            }
            if (arg1->avbTbl[i].buf[1] != 0) {
                ZeldaArena_FreeDebug(arg1->avbTbl[i].buf[1], "../z_skin_awb.c", 280);
                arg1->avbTbl[i].buf[1] = 0;
            }
        }
        if (arg1->avbTbl != NULL) {
            ZeldaArena_FreeDebug(arg1->avbTbl, "../z_skin_awb.c", 286);
        }
        SkelAnime_Free(&arg1->skelAnime, globalCtx);
    }
}

s32 func_800A698C(PSkinAwb* skin, SkinLimb** skeleton, MtxF* mf, u8 mtxIndex, u8 limbIndex) {
    MtxF* temp_a1;
    SkinLimb* limb;
    MtxF* sp6C;
    s32 temp_ret;
    MtxF sp28;

    limb = (SkinLimb*)SEGMENTED_TO_VIRTUAL(skeleton[limbIndex]);
    if (mtxIndex == 0xFF) {
        SkinMatrix_GetClear(&sp6C);
    } else {
        sp6C = &mf[(s32)mtxIndex];
    }

    SkinMatrix_MtxFMtxFMult(sp6C, &mf[limbIndex], &sp28);
    SkinMatrix_MtxFCopy(&sp28, &mf[limbIndex]);

    if (limb->child != 0xFF) {
        temp_ret = func_800A698C(skin, skeleton, mf, limbIndex, limb->child);
        if (temp_ret != 0) {
            return temp_ret;
        }
    }

    if (limb->sibling != 0xFF) {
        temp_ret = func_800A698C(skin, skeleton, mf, mtxIndex, limb->sibling);
        if (temp_ret != 0) {
            return temp_ret;
        }
    }
    return 0;
}

#ifdef NON_MATCHING
// Matches except for an `addiu s0, s0, 0`, which obviously does nothing.
// Likely some indexing optimization I can't figure out.
s32 func_800A6AC4(PSkinAwb* skin, MtxF* arg1, Actor* actor, s32 arg3) {
    s32 i;
    u32 zero = 0;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f18;
    s32 temp_ret;
    f32 temp_f4;
    f32 temp_f6;
    f32 temp_f8;
    SkinLimb** skeleton = SEGMENTED_TO_VIRTUAL(skin->skeletonHeader->segment);
    Vec3s* temp_s0 = &skin->skelAnime.jointTable[0];

    temp_s0++;
    temp_f16 = temp_s0[0].x;
    temp_f14 = temp_s0[0].y;
    temp_f18 = temp_s0[0].z;
    
    if (arg3 != 0) {

        temp_f6 = temp_s0[-1].x;
        temp_f4 = temp_s0[-1].y;
        temp_f8 = temp_s0[-1].z;
        
        temp_s0 += zero;
        
        if (arg3 == 0x23) {
            EnfHG* horse = (EnfHG*) actor;

            temp_f14 += horse->turnRot;
        }
        SkinMatrix_SetRotateRPYTranslate(arg1, temp_f16, temp_f14, temp_f18, temp_f6, temp_f4, temp_f8);
    } else {
        SkinMatrix_SetRotateRPYTranslate(arg1, temp_f16, temp_f14, temp_f18, 0.0f, 0.0f, 0.0f);
    }
    temp_s0++;
    for (i = 1; i < skin->skeletonHeader->limbCount; i++) {
        SkinLimb* temp_v0_2 = SEGMENTED_TO_VIRTUAL(skeleton[i]);

        temp_f6 = temp_v0_2->jointPos.x;
        temp_f4 = temp_v0_2->jointPos.y;
        temp_f8 = temp_v0_2->jointPos.z;
        temp_f16 = temp_s0->x;
        temp_f14 = temp_s0->y;
        temp_f18 = temp_s0->z;
        temp_s0++;
        SkinMatrix_SetRotateRPYTranslate(&arg1[i], temp_f16, temp_f14, temp_f18, temp_f6, temp_f4, temp_f8);
    }

    SkinMatrix_SetScaleRotateYRPTranslate(
        &skin->mtx, actor->scale.x, actor->scale.y, actor->scale.z, actor->shape.rot.x,
        actor->shape.rot.y, actor->shape.rot.z, actor->posRot.pos.x,
        actor->posRot.pos.y + (actor->shape.unk_08 * actor->scale.y), actor->posRot.pos.z);
    temp_ret = func_800A698C(skin, SEGMENTED_TO_VIRTUAL(skin->skeletonHeader->segment), arg1, 0xFF, 0);
    if (temp_ret == 0) {
        return temp_ret;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_awb/func_800A6AC4.s")
#endif
