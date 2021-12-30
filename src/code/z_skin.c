#include "global.h"

MtxF gSkinLimbMatrices[60]; // holds matrices for each limb of the skeleton currently being drawn
char D_80160FC0[0x10];

void Skin_UpdateVertices(MtxF* mtx, SkinVertex* skinVertices, SkinLimbModif* modifEntry, Vtx* arg3, Vec3f* pos) {
    Vtx* vtx;
    SkinVertex* vertexEntry;
    f32 xwTemp;
    f32 ywTemp;
    f32 zwTemp;
    Vec3f normal;
    Vec3f sp64;

    for (vertexEntry = skinVertices; vertexEntry < &skinVertices[modifEntry->vtxCount]; vertexEntry++) {
        vtx = &arg3[vertexEntry->vtxIndex];

        vtx->n.ob[0] = pos->x;
        vtx->n.ob[1] = pos->y;
        vtx->n.ob[2] = pos->z;

        xwTemp = mtx->xw;
        ywTemp = mtx->yw;
        zwTemp = mtx->zw;

        mtx->zw = 0.0f;
        mtx->yw = 0.0f;
        mtx->xw = 0.0f;

        sp64.x = vertexEntry->x;
        sp64.y = vertexEntry->y;
        sp64.z = vertexEntry->z;

        SkinMatrix_Vec3fMtxFMultXYZ(mtx, &sp64, &normal);

        vtx->n.n[0] = normal.x;
        vtx->n.n[1] = normal.y;
        vtx->n.n[2] = normal.z;

        mtx->xw = xwTemp;
        mtx->yw = ywTemp;
        mtx->zw = zwTemp;
    }
}

void func_800A598C(GraphicsContext* gfxCtx, Skin* skin, s32 limbIndex, s32 arg3) {
    s32 modifCount;
    SkinLimb** skeleton;
    SkinLimb* limb;
    SkinAnimatedLimbData* data;
    SkinLimbModif* modif;
    SkinLimbVtx* avb;
    s32 transformCount;
    f32 scale;
    SkinVertex* skinVertices;
    SkinTransformation* limbTransformations;
    Vtx* vtx;
    SkinLimbModif* modifications;
    Vec3f spDC;
    Vec3f spD0;
    SkinTransformation* trnasformationEntry;

    OPEN_DISPS(gfxCtx, "../z_skin.c", 254);

    skeleton = (SkinLimb**)SEGMENTED_TO_VIRTUAL(skin->skeletonHeader->segment);
    data = SEGMENTED_TO_VIRTUAL(((SkinLimb*)SEGMENTED_TO_VIRTUAL(skeleton[limbIndex]))->segment);
    modifications = (SkinLimbModif*)SEGMENTED_TO_VIRTUAL(data->limbModifications);

    avb = &skin->vtxTable[limbIndex];

    vtx = avb->buf[avb->index];
    modifCount = data->limbModifCount;

    for (modif = modifications; modif < modifications + modifCount; modif++) {
        transformCount = modif->transformCount;
        skinVertices = (SkinVertex*)SEGMENTED_TO_VIRTUAL(modif->skinVertices);
        limbTransformations = (SkinTransformation*)SEGMENTED_TO_VIRTUAL(modif->limbTransformations);

        if (transformCount == 1) {
            Vec3f spAC;

            spAC.x = limbTransformations[0].x;
            spAC.y = limbTransformations[0].y;
            spAC.z = limbTransformations[0].z;

            SkinMatrix_Vec3fMtxFMultXYZ(&gSkinLimbMatrices[limbTransformations[0].limbIndex], &spAC, &spDC);
        } else if (arg3 == 1) {
            Vec3f spA0;

            trnasformationEntry = &limbTransformations[modif->unk_4];

            spA0.x = trnasformationEntry->x;
            spA0.y = trnasformationEntry->y;
            spA0.z = trnasformationEntry->z;

            SkinMatrix_Vec3fMtxFMultXYZ(&gSkinLimbMatrices[trnasformationEntry->limbIndex], &spA0, &spDC);
        } else {
            Vec3f phi_f20;
            Vec3f sp88;

            phi_f20.x = phi_f20.y = phi_f20.z = 0.0f;

            for (trnasformationEntry = &limbTransformations[0];
                 trnasformationEntry < &limbTransformations[transformCount]; trnasformationEntry++) {
                scale = trnasformationEntry->scale * 0.01f;

                sp88.x = trnasformationEntry->x;
                sp88.y = trnasformationEntry->y;
                sp88.z = trnasformationEntry->z;

                SkinMatrix_Vec3fMtxFMultXYZ(&gSkinLimbMatrices[trnasformationEntry->limbIndex], &sp88, &spD0);

                spD0.x *= scale;
                spD0.y *= scale;
                spD0.z *= scale;

                phi_f20.x += spD0.x;
                phi_f20.y += spD0.y;
                phi_f20.z += spD0.z;
            }

            spDC.x = phi_f20.x;
            spDC.y = phi_f20.y;
            spDC.z = phi_f20.z;
        }

        Skin_UpdateVertices(&gSkinLimbMatrices[limbTransformations[modif->unk_4].limbIndex], skinVertices, modif, vtx,
                            &spDC);
    }

    gSPSegment(POLY_OPA_DISP++, 0x08, avb->buf[avb->index]);

    avb->index = (avb->index == 0) ? 1 : 0;

    CLOSE_DISPS(gfxCtx, "../z_skin.c", 344);
}

/**
 * Draw a limb of type SKIN_LIMB_TYPE_ANIMATED, of the skeleton `skin` at index `limbIndex`
 * The vertices of this limb are modified dynamically
 */
void Skin_DrawAnimatedLimb(GraphicsContext* gfxCtx, Skin* skin, s32 limbIndex, s32 arg3, s32 drawFlags) {
    SkinLimb** skeleton;
    SkinAnimatedLimbData* data;

    OPEN_DISPS(gfxCtx, "../z_skin.c", 364);

    skeleton = SEGMENTED_TO_VIRTUAL(skin->skeletonHeader->segment);
    data = SEGMENTED_TO_VIRTUAL(((SkinLimb*)SEGMENTED_TO_VIRTUAL(skeleton[limbIndex]))->segment);

    if (!(drawFlags & SKIN_DRAW_FLAG_1)) {
        func_800A598C(gfxCtx, skin, limbIndex, arg3);
    }

    gSPDisplayList(POLY_OPA_DISP++, data->dlist);

    CLOSE_DISPS(gfxCtx, "../z_skin.c", 377);
}

/**
 * Draw a limb of type SKIN_LIMB_TYPE_NORMAL, of the skeleton `skin` at index `limbIndex`
 */
void Skin_DrawLimb(GraphicsContext* gfxCtx, Skin* skin, s32 limbIndex, Gfx* dlistOverride, s32 drawFlags) {
    Gfx* gfx = dlistOverride;
    SkinLimb** skeleton;
    s32 pad;

    OPEN_DISPS(gfxCtx, "../z_skin.c", 395);

    skeleton = SEGMENTED_TO_VIRTUAL(skin->skeletonHeader->segment);

    if (dlistOverride == NULL) {
        gfx = ((SkinLimb*)SEGMENTED_TO_VIRTUAL(skeleton[limbIndex]))->segment;
    }

    if (gfx != NULL) {
        Mtx* mtx = SkinMatrix_MtxFToNewMtx(gfxCtx, &gSkinLimbMatrices[limbIndex]);

        if (mtx != NULL) {
            gSPMatrix(POLY_OPA_DISP++, mtx, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_OPA_DISP++, gfx);
            gSPPopMatrix(POLY_OPA_DISP++, G_MTX_MODELVIEW);
            gDPPipeSync(POLY_OPA_DISP++);
        }
    }

    CLOSE_DISPS(gfxCtx, "../z_skin.c", 433);
}

void Skin_DrawImpl(Actor* actor, GlobalContext* globalCtx, Skin* skin, SkinPostLimbDraw postLimbDraw,
                   SkinOverrideLimbDraw overrideLimbDraw, s32 setTranslation, s32 arg6, s32 drawFlags) {
    s32 i;
    s32 segmentType;
    SkinLimb** skeleton;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    s32 pad;

    OPEN_DISPS(gfxCtx, "../z_skin.c", 471);

    if (!(drawFlags & SKIN_DRAW_FLAG_1)) {
        Skin_ApplyLimbTransformations(skin, gSkinLimbMatrices, actor, setTranslation);
    }

    skeleton = SEGMENTED_TO_VIRTUAL(skin->skeletonHeader->segment);

    if (!(drawFlags & SKIN_DRAW_FLAG_CUSTOM_MATRIX)) {
        Mtx* mtx;

        gSPMatrix(POLY_OPA_DISP++, &gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        mtx = SkinMatrix_MtxFToNewMtx(gfxCtx, &skin->mtx);
        if (mtx == NULL) {
            goto close_disps;
        }
        gSPMatrix(POLY_OPA_DISP++, mtx, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    }

    for (i = 0; i < skin->skeletonHeader->limbCount; i++) {
        s32 shouldDraw = true;

        if (overrideLimbDraw != NULL) {
            shouldDraw = overrideLimbDraw(actor, globalCtx, i, skin);
        }

        segmentType = ((SkinLimb*)SEGMENTED_TO_VIRTUAL(skeleton[i]))->segmentType;

        if (segmentType == SKIN_LIMB_TYPE_ANIMATED && shouldDraw == true) {
            Skin_DrawAnimatedLimb(gfxCtx, skin, i, arg6, drawFlags);
        } else if (segmentType == SKIN_LIMB_TYPE_NORMAL && shouldDraw == true) {
            Skin_DrawLimb(gfxCtx, skin, i, NULL, drawFlags);
        }
    }

    if (postLimbDraw != NULL) {
        postLimbDraw(actor, globalCtx, skin);
    }

close_disps:
    CLOSE_DISPS(gfxCtx, "../z_skin.c", 534);
}

// Skin_Draw... Something?
// ganondorf horse, ganondorfs horse, normal horse, zelda horse, horse in viewer
void func_800A6330(Actor* actor, GlobalContext* globalCtx, Skin* skin, SkinPostLimbDraw postLimbDraw,
                   s32 setTranslation) {
    Skin_DrawImpl(actor, globalCtx, skin, postLimbDraw, NULL, setTranslation, false, 0);
}

// Skin_Draw... Something?
// twice in epona, child epona
void func_800A6360(Actor* actor, GlobalContext* globalCtx, Skin* skin, SkinPostLimbDraw postLimbDraw,
                   SkinOverrideLimbDraw overrideLimbDraw, s32 arg5) {
    Skin_DrawImpl(actor, globalCtx, skin, postLimbDraw, overrideLimbDraw, arg5, false, 0);
}

// Skin_Draw... Something?
// unused
void func_800A6394(Actor* actor, GlobalContext* globalCtx, Skin* skin, SkinPostLimbDraw postLimbDraw,
                   SkinOverrideLimbDraw overrideLimbDraw, s32 arg5, s32 arg6) {
    Skin_DrawImpl(actor, globalCtx, skin, postLimbDraw, overrideLimbDraw, arg5, arg6, 0);
}

// Skin_Draw?
// once in normal
void func_800A63CC(Actor* actor, GlobalContext* globalCtx, Skin* skin, SkinPostLimbDraw postLimbDraw,
                   SkinOverrideLimbDraw overrideLimbDraw, s32 arg5, s32 arg6, s32 drawFlags) {
    Skin_DrawImpl(actor, globalCtx, skin, postLimbDraw, overrideLimbDraw, arg5, arg6, drawFlags);
}

void Skin_GetLimbPos(Skin* skin, s32 limbIndex, Vec3f* offset, Vec3f* dst) {
    MtxF mtxf;

    SkinMatrix_MtxFMtxFMult(&skin->mtx, &gSkinLimbMatrices[limbIndex], &mtxf);
    SkinMatrix_Vec3fMtxFMultXYZ(&mtxf, offset, dst);
}
