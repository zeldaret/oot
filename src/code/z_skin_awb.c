#include "global.h"
#include "overlays/actors/ovl_En_fHG/z_en_fhg.h"

void func_800A6460(GlobalContext* globalCtx, PSkinAwb* skin, s32 limbIndex) {
    s32 i;
    SkinLimb** skeleton = SEGMENTED_TO_VIRTUAL(skin->skeletonHeader->segment);
    Struct_800A5E28* temp_v1 = SEGMENTED_TO_VIRTUAL(((SkinLimb*)SEGMENTED_TO_VIRTUAL(skeleton[limbIndex]))->segment);
    Struct_800A598C* temp_v0 = SEGMENTED_TO_VIRTUAL(temp_v1->unk_4);
    Struct_800A598C* phi_s0;
    Struct_800A57C0* temp_s1;

    for (i = 0; i < 2; i++) {
        Vtx* temp2 = skin->avbTbl[limbIndex].buf[i];

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
    SkeletonHeader* virtSkelHeader = SEGMENTED_TO_VIRTUAL(skeletonHeader);

    skin->avbCount = virtSkelHeader->limbCount;
    skin->skeletonHeader = virtSkelHeader;

    skeleton = SEGMENTED_TO_VIRTUAL(skin->skeletonHeader->segment);
    limbCount = skin->skeletonHeader->limbCount;
    skin->avbTbl = ZeldaArena_MallocDebug(limbCount * sizeof(SkinAvb), "../z_skin_awb.c", 212);

    ASSERT(skin->avbTbl != NULL, "pskin_awb->avb_tbl != NULL", "../z_skin_awb.c", 214);
    for (i = 0; i < limbCount; i++) {
        SkinAvb* avbEntry = &skin->avbTbl[i];
        SkinLimb* limb = SEGMENTED_TO_VIRTUAL(skeleton[i]);

        if ((limb->unk_8 != 4) || (limb->segment == NULL)) {
            avbEntry->unk_0 = 0;

            avbEntry->buf[0] = NULL;
            avbEntry->buf[1] = NULL;
        } else {
            Struct_800A5E28* temp_s1 = SEGMENTED_TO_VIRTUAL(((void)0, limb->segment));

            avbEntry->unk_0 = 0;
            avbEntry->buf[0] = ZeldaArena_MallocDebug(temp_s1->unk_0 * sizeof(Vtx), "../z_skin_awb.c", 235);
            ASSERT(avbEntry->buf[0] != NULL, "psavb->buf[0] != NULL", "../z_skin_awb.c", 237);
            avbEntry->buf[1] = ZeldaArena_MallocDebug(temp_s1->unk_0 * sizeof(Vtx), "../z_skin_awb.c", 240);
            ASSERT(avbEntry->buf[1] != NULL, "psavb->buf[1] != NULL", "../z_skin_awb.c", 242);
            func_800A6460(globalCtx, skin, i);
        }
        if (1) {}
    }
    SkelAnime_InitSkin(globalCtx, &skin->skelAnime, skeletonHeader, animationHeader);
}

void func_800A6888(GlobalContext* globalCtx, PSkinAwb* arg1) {
    if (arg1->avbTbl != NULL) {
        s32 i;

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

s32 func_800A698C(PSkinAwb* skin, SkinLimb** skeleton, MtxF* mf, u8 parentIndex, u8 limbIndex) {
    s32 pad;
    SkinLimb* limb = SEGMENTED_TO_VIRTUAL(skeleton[limbIndex]);
    MtxF* mtx;
    s32 temp_ret;
    MtxF sp28;

    if (parentIndex == 0xFF) {
        SkinMatrix_GetClear(&mtx);
    } else {
        mtx = &mf[(s32)parentIndex];
    }

    SkinMatrix_MtxFMtxFMult(mtx, &mf[limbIndex], &sp28);
    SkinMatrix_MtxFCopy(&sp28, &mf[limbIndex]);

    if (limb->child != 0xFF) {
        temp_ret = func_800A698C(skin, skeleton, mf, limbIndex, limb->child);
        if (temp_ret) { // func_800A698C only returns false
            return temp_ret;
        }
    }

    if (limb->sibling != 0xFF) {
        temp_ret = func_800A698C(skin, skeleton, mf, parentIndex, limb->sibling);
        if (temp_ret) { // func_800A698C only returns false
            return temp_ret;
        }
    }
    return false;
}

s32 func_800A6AC4(PSkinAwb* skin, MtxF* arg1, Actor* actor, s32 arg3) {
    s32 i;
    s32 pad;
    f32 yRot;
    f32 xRot;
    f32 zRot;
    s32 temp_ret;
    f32 yTransl;
    f32 xTransl;
    f32 zTransl;
    SkinLimb** skeleton = SEGMENTED_TO_VIRTUAL(skin->skeletonHeader->segment);
    Vec3s* jointRot = &skin->skelAnime.jointTable[0];

    jointRot++;
    xRot = jointRot[0].x;
    yRot = jointRot[0].y;
    zRot = jointRot[0].z;

    if (arg3 != 0) {

        jointRot--;
        xTransl = jointRot[0].x;
        yTransl = jointRot[0].y;
        zTransl = jointRot[0].z;
        jointRot++;

        if (arg3 == 0x23) {
            EnfHG* horse = (EnfHG*)actor;

            yRot += horse->turnRot;
        }
        SkinMatrix_SetRotateRPYTranslate(arg1, xRot, yRot, zRot, xTransl, yTransl, zTransl);
    } else {
        SkinMatrix_SetRotateRPYTranslate(arg1, xRot, yRot, zRot, 0.0f, 0.0f, 0.0f);
    }
    jointRot++;
    for (i = 1; i < skin->skeletonHeader->limbCount; i++) {
        SkinLimb* limb = SEGMENTED_TO_VIRTUAL(skeleton[i]);

        xTransl = limb->jointPos.x;
        yTransl = limb->jointPos.y;
        zTransl = limb->jointPos.z;
        xRot = jointRot->x;
        yRot = jointRot->y;
        zRot = jointRot->z;
        jointRot++;
        SkinMatrix_SetRotateRPYTranslate(&arg1[i], xRot, yRot, zRot, xTransl, yTransl, zTransl);
    }

    SkinMatrix_SetScaleRotateYRPTranslate(
        &skin->mtx, actor->scale.x, actor->scale.y, actor->scale.z, actor->shape.rot.x, actor->shape.rot.y,
        actor->shape.rot.z, actor->world.pos.x, actor->world.pos.y + (actor->shape.yOffset * actor->scale.y),
        actor->world.pos.z);

    temp_ret = func_800A698C(skin, SEGMENTED_TO_VIRTUAL(skin->skeletonHeader->segment), arg1, 0xFF, 0);
    if (!temp_ret) { // func_800A698C only returns false
        return temp_ret;
    }
    return 0;
}
