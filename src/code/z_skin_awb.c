#include "global.h"
#include "overlays/actors/ovl_En_fHG/z_en_fhg.h"

/**
 * Initialises the Vtx buffers used for limb at index `limbIndex`
 */
void Skin_InitAnimatedLimb(GlobalContext* globalCtx, PSkinAwb* skin, s32 limbIndex) {
    s32 i;
    SkinLimb** skeleton = SEGMENTED_TO_VIRTUAL(skin->skeletonHeader->segment);
    SkinAnimatedLimbData* animatedLimbData =
        SEGMENTED_TO_VIRTUAL(((SkinLimb*)SEGMENTED_TO_VIRTUAL(skeleton[limbIndex]))->segment);
    Struct_800A598C* temp_v0 = SEGMENTED_TO_VIRTUAL(animatedLimbData->unk_4);
    Struct_800A598C* entry;
    SkinVtx* skinVtxEntry;

    for (i = 0; i < ARRAY_COUNT(skin->avbTbl->buf); i++) {
        Vtx* vertices = skin->avbTbl[limbIndex].buf[i];

        for (entry = temp_v0; entry < temp_v0 + animatedLimbData->unk_2; entry++) {
            SkinVtx* skinVertices = SEGMENTED_TO_VIRTUAL(entry->skinVertices);

            for (skinVtxEntry = skinVertices; skinVtxEntry < &skinVertices[entry->skinVerticesCount]; skinVtxEntry++) {
                Vtx* vtx = &vertices[skinVtxEntry->vtxIndex];

                vtx->n.flag = 0;
                vtx->n.tc[0] = skinVtxEntry->u;
                vtx->n.tc[1] = skinVtxEntry->v;
                vtx->n.a = skinVtxEntry->alpha;
            }
        }
    }
}

/**
 * Initializes a skin skeleton to looping animation, dynamically allocating the frame tables,
 * and dynamically allocating and initializing the Vtx buffers for its animated limbs
 */
void Skin_Init(GlobalContext* globalCtx, PSkinAwb* skin, SkeletonHeader* skeletonHeader,
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

        if ((limb->segmentType != SKIN_LIMB_TYPE_ANIMATED) || (limb->segment == NULL)) {
            avbEntry->index = 0;

            avbEntry->buf[0] = NULL;
            avbEntry->buf[1] = NULL;
        } else {
            SkinAnimatedLimbData* animatedLimbData = SEGMENTED_TO_VIRTUAL(((void)0, limb->segment));

            avbEntry->index = 0;
            avbEntry->buf[0] = ZeldaArena_MallocDebug(animatedLimbData->vtxCount * sizeof(Vtx), "../z_skin_awb.c", 235);
            ASSERT(avbEntry->buf[0] != NULL, "psavb->buf[0] != NULL", "../z_skin_awb.c", 237);
            avbEntry->buf[1] = ZeldaArena_MallocDebug(animatedLimbData->vtxCount * sizeof(Vtx), "../z_skin_awb.c", 240);
            ASSERT(avbEntry->buf[1] != NULL, "psavb->buf[1] != NULL", "../z_skin_awb.c", 242);
            Skin_InitAnimatedLimb(globalCtx, skin, i);
        }
    }

    SkelAnime_InitSkin(globalCtx, &skin->skelAnime, skeletonHeader, animationHeader);
}

/**
 * Frees the dynamically allocated Vtx buffers and tables
 */
void Skin_Free(GlobalContext* globalCtx, PSkinAwb* skin) {
    if (skin->avbTbl != NULL) {
        s32 i;

        for (i = 0; i < skin->avbCount; i++) {
            if (skin->avbTbl[i].buf[0] != NULL) {
                ZeldaArena_FreeDebug(skin->avbTbl[i].buf[0], "../z_skin_awb.c", 276);
                skin->avbTbl[i].buf[0] = NULL;
            }
            if (skin->avbTbl[i].buf[1] != NULL) {
                ZeldaArena_FreeDebug(skin->avbTbl[i].buf[1], "../z_skin_awb.c", 280);
                skin->avbTbl[i].buf[1] = NULL;
            }
        }

        if (skin->avbTbl != NULL) {
            ZeldaArena_FreeDebug(skin->avbTbl, "../z_skin_awb.c", 286);
        }

        SkelAnime_Free(&skin->skelAnime, globalCtx);
    }
}

s32 func_800A698C(PSkinAwb* skin, SkinLimb** skeleton, MtxF* mf, u8 parentIndex, u8 limbIndex) {
    s32 pad;
    SkinLimb* limb = SEGMENTED_TO_VIRTUAL(skeleton[limbIndex]);
    MtxF* mtx;
    s32 ret;
    MtxF sp28;

    if (parentIndex == LIMB_DONE) {
        SkinMatrix_GetClear(&mtx);
    } else {
        mtx = &mf[(s32)parentIndex];
    }

    SkinMatrix_MtxFMtxFMult(mtx, &mf[limbIndex], &sp28);
    SkinMatrix_MtxFCopy(&sp28, &mf[limbIndex]);

    if (limb->child != LIMB_DONE) {
        ret = func_800A698C(skin, skeleton, mf, limbIndex, limb->child);
        if (ret) { // func_800A698C only returns false
            return ret;
        }
    }

    if (limb->sibling != LIMB_DONE) {
        ret = func_800A698C(skin, skeleton, mf, parentIndex, limb->sibling);
        if (ret) { // func_800A698C only returns false
            return ret;
        }
    }

    return false;
}

/**
 * Recursively applies matrix tranformations to each limb
 */
s32 func_800A6AC4(PSkinAwb* skin, MtxF* mf, Actor* actor, s32 arg3) {
    s32 i;
    s32 pad;
    f32 yRot;
    f32 xRot;
    f32 zRot;
    s32 ret;
    f32 yTransl;
    f32 xTransl;
    f32 zTransl;
    SkinLimb** skeleton = SEGMENTED_TO_VIRTUAL(skin->skeletonHeader->segment);
    Vec3s* jointRot = &skin->skelAnime.jointTable[0];

    jointRot++;
    xRot = jointRot->x;
    yRot = jointRot->y;
    zRot = jointRot->z;

    if (arg3 != 0) {
        jointRot--;
        xTransl = jointRot->x;
        yTransl = jointRot->y;
        zTransl = jointRot->z;
        jointRot++;

        if (arg3 == 0x23) {
            EnfHG* horse = (EnfHG*)actor;

            yRot += horse->turnRot;
        }
        SkinMatrix_SetRotateRPYTranslate(mf, xRot, yRot, zRot, xTransl, yTransl, zTransl);
    } else {
        SkinMatrix_SetRotateRPYTranslate(mf, xRot, yRot, zRot, 0.0f, 0.0f, 0.0f);
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
        SkinMatrix_SetRotateRPYTranslate(&mf[i], xRot, yRot, zRot, xTransl, yTransl, zTransl);
    }

    SkinMatrix_SetScaleRotateYRPTranslate(
        &skin->mtx, actor->scale.x, actor->scale.y, actor->scale.z, actor->shape.rot.x, actor->shape.rot.y,
        actor->shape.rot.z, actor->world.pos.x, actor->world.pos.y + (actor->shape.yOffset * actor->scale.y),
        actor->world.pos.z);

    ret = func_800A698C(skin, SEGMENTED_TO_VIRTUAL(skin->skeletonHeader->segment), mf, LIMB_DONE, 0);
    if (!ret) { // func_800A698C only returns false
        return ret;
    }

    return false;
}
