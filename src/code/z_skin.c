#include "gfx.h"
#include "segmented_address.h"
#include "sys_matrix.h"
#include "z_math.h"
#include "play_state.h"
#include "skin.h"
#include "skin_matrix.h"

// Holds limb -> model matrices for each limb of the skeleton currently being drawn
MtxF gSkinLimbMatrices[60];

void Skin_UpdateVertices(MtxF* mtx, SkinVertex* skinVertices, SkinLimbModif* modifEntry, Vtx* vtxBuf, Vec3f* pos) {
    Vtx* vtx;
    SkinVertex* vertexEntry;

    // For each vertex in the buffer
    for (vertexEntry = skinVertices; vertexEntry < &skinVertices[modifEntry->vtxCount]; vertexEntry++) {
        f32 tx;
        f32 ty;
        f32 tz;
        Vec3f transformedNormal;
        Vec3f untransformedNormal;

        vtx = &vtxBuf[vertexEntry->index];

        // Install position
        vtx->n.ob[0] = pos->x;
        vtx->n.ob[1] = pos->y;
        vtx->n.ob[2] = pos->z;

        // Save translation part of matrix
        tx = mtx->xw;
        ty = mtx->yw;
        tz = mtx->zw;

        // Zero the translation part for updating normals
        mtx->xw = mtx->yw = mtx->zw = 0.0f;

        untransformedNormal.x = vertexEntry->normX;
        untransformedNormal.y = vertexEntry->normY;
        untransformedNormal.z = vertexEntry->normZ;

        // Transform the normal.
        // Note that this assumes that mtx after setting the translation part to 0 is a pure rotation matrix.
        // Normals need to be transformed according to the inverse-transpose, for rotation matrices the
        // inverse is the transpose and transpose is an involution so the inverse-transpose of a rotation
        // matrix is itself. Further, the matrix transformation is assumed to be norm-preserving, which is
        // the case for a rotation matrix, so that the normal doesn't require any pre- or post-normalization.
        SkinMatrix_Vec3fMtxFMultXYZ(mtx, &untransformedNormal, &transformedNormal);

        // Install normal
        vtx->n.n[0] = transformedNormal.x;
        vtx->n.n[1] = transformedNormal.y;
        vtx->n.n[2] = transformedNormal.z;

        // Restore translation part of matrix
        mtx->xw = tx;
        mtx->yw = ty;
        mtx->zw = tz;
    }
}

void Skin_ApplyLimbModifications(GraphicsContext* gfxCtx, Skin* skin, s32 limbIndex, s32 staticFlag) {
    s32 modifCount;
    SkinLimb** skeleton;
    SkinLimb* limb;
    SkinAnimatedLimbData* data;
    SkinLimbModif* modif;
    SkinLimbVtx* vtxEntry;
    s32 transformCount;
    f32 scale;
    SkinVertex* skinVertices;
    SkinTransformation* limbTransformations;
    Vtx* vtxBuf;
    SkinLimbModif* modifications;
    Vec3f vtxPoint;
    Vec3f transformedLimbPos;
    SkinTransformation* transformationEntry;

    OPEN_DISPS(gfxCtx, "../z_skin.c", 254);

    skeleton = (SkinLimb**)SEGMENTED_TO_VIRTUAL(skin->skeletonHeader->segment);
    data = SEGMENTED_TO_VIRTUAL(((SkinLimb*)SEGMENTED_TO_VIRTUAL(skeleton[limbIndex]))->segment);
    modifications = (SkinLimbModif*)SEGMENTED_TO_VIRTUAL(data->limbModifications);

    vtxEntry = &skin->vtxTable[limbIndex];
    vtxBuf = vtxEntry->buf[vtxEntry->index];
    modifCount = data->limbModifCount;

    for (modif = modifications; modif < modifications + modifCount; modif++) {
        transformCount = modif->transformCount;
        skinVertices = (SkinVertex*)SEGMENTED_TO_VIRTUAL(modif->skinVertices);
        limbTransformations = (SkinTransformation*)SEGMENTED_TO_VIRTUAL(modif->limbTransformations);

        if (transformCount == 1) {
            // Exactly one transform, just multiply the position by the limb -> model matrix
            // to get the model-space position
            Vec3f limbPos;

            limbPos.x = limbTransformations[0].x;
            limbPos.y = limbTransformations[0].y;
            limbPos.z = limbTransformations[0].z;

            SkinMatrix_Vec3fMtxFMultXYZ(&gSkinLimbMatrices[limbTransformations[0].limbIndex], &limbPos, &vtxPoint);
        } else if (staticFlag == 1) {
            // There are multiple transforms, but this flag selects a static choice encoded in the modification info
            Vec3f limbPos;

            transformationEntry = &limbTransformations[modif->staticLimbTransformationIndex];

            limbPos.x = transformationEntry->x;
            limbPos.y = transformationEntry->y;
            limbPos.z = transformationEntry->z;

            SkinMatrix_Vec3fMtxFMultXYZ(&gSkinLimbMatrices[transformationEntry->limbIndex], &limbPos, &vtxPoint);
        } else {
            // There are multiple transforms, which need to be weighted together to arrive at the result
            Vec3f finalLimbPos;

            finalLimbPos.x = finalLimbPos.y = finalLimbPos.z = 0.0f;

            // For each transformation, compute the weighted transformation
            //      y = sum(i, w[i] * M[i] * x[i])
            for (transformationEntry = &limbTransformations[0];
                 transformationEntry < &limbTransformations[transformCount]; transformationEntry++) {
                Vec3f limbPos;

                scale = transformationEntry->weight * 0.01f;

                limbPos.x = transformationEntry->x;
                limbPos.y = transformationEntry->y;
                limbPos.z = transformationEntry->z;

                SkinMatrix_Vec3fMtxFMultXYZ(&gSkinLimbMatrices[transformationEntry->limbIndex], &limbPos,
                                            &transformedLimbPos);

                transformedLimbPos.x *= scale;
                transformedLimbPos.y *= scale;
                transformedLimbPos.z *= scale;

                finalLimbPos.x += transformedLimbPos.x;
                finalLimbPos.y += transformedLimbPos.y;
                finalLimbPos.z += transformedLimbPos.z;
            }

            vtxPoint.x = finalLimbPos.x;
            vtxPoint.y = finalLimbPos.y;
            vtxPoint.z = finalLimbPos.z;
        }

        // This will install the position and normal into the model space vertices.
        // The matrix argument is used to transform the vertex normal, which is not taken as a weighted sum like the
        // position. The normal therefore always uses the static index for choosing the matrix.
        Skin_UpdateVertices(&gSkinLimbMatrices[limbTransformations[modif->staticLimbTransformationIndex].limbIndex],
                            skinVertices, modif, vtxBuf, &vtxPoint);
    }

    // Set segment for vertex buffer access
    gSPSegment(POLY_OPA_DISP++, 0x08, vtxEntry->buf[vtxEntry->index]);

    // Alternate vertex buffer
    vtxEntry->index = (vtxEntry->index == 0) ? 1 : 0;

    CLOSE_DISPS(gfxCtx, "../z_skin.c", 344);
}

/**
 * Draw a limb of type SKIN_LIMB_TYPE_ANIMATED, of the skeleton `skin` at index `limbIndex`
 * The vertices of this limb are modified dynamically
 */
void Skin_DrawAnimatedLimb(GraphicsContext* gfxCtx, Skin* skin, s32 limbIndex, s32 staticFlag, s32 drawFlags) {
    SkinLimb** skeleton;
    SkinAnimatedLimbData* data;

    OPEN_DISPS(gfxCtx, "../z_skin.c", 364);

    skeleton = SEGMENTED_TO_VIRTUAL(skin->skeletonHeader->segment);
    data = SEGMENTED_TO_VIRTUAL(((SkinLimb*)SEGMENTED_TO_VIRTUAL(skeleton[limbIndex]))->segment);

    if (!(drawFlags & SKIN_DRAW_FLAG_CUSTOM_TRANSFORMS)) {
        Skin_ApplyLimbModifications(gfxCtx, skin, limbIndex, staticFlag);
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

void Skin_DrawImpl(Actor* actor, PlayState* play, Skin* skin, SkinPostLimbDraw postLimbDraw,
                   SkinOverrideLimbDraw overrideLimbDraw, s32 setTranslation, s32 staticFlag, s32 drawFlags) {
    s32 i;
    s32 segmentType;
    SkinLimb** skeleton;
    GraphicsContext* gfxCtx = play->state.gfxCtx;
    Mtx* mtx;

    OPEN_DISPS(gfxCtx, "../z_skin.c", 471);

    // Prepare all limb transformations
    if (!(drawFlags & SKIN_DRAW_FLAG_CUSTOM_TRANSFORMS)) {
        Skin_ApplyAnimTransformations(skin, gSkinLimbMatrices, actor, setTranslation);
    }

    skeleton = SEGMENTED_TO_VIRTUAL(skin->skeletonHeader->segment);

    // No custom matrix, set model -> world matrix
    if (!(drawFlags & SKIN_DRAW_FLAG_CUSTOM_MATRIX)) {
        gSPMatrix(POLY_OPA_DISP++, &gIdentityMtx, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        mtx = SkinMatrix_MtxFToNewMtx(gfxCtx, &skin->mtx);

        if (mtx == NULL) {
            goto close_disps;
        }

        gSPMatrix(POLY_OPA_DISP++, mtx, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    }

    // Draw each limb, transformed were prepared in advance above this loop so there's no tree walk required at this
    // stage unlike how z_skelanime skeleton drawing is implemented.
    for (i = 0; i < skin->skeletonHeader->limbCount; i++) {
        s32 shouldDraw = true;

        if (overrideLimbDraw != NULL) {
            shouldDraw = overrideLimbDraw(actor, play, i, skin);
        }

        segmentType = ((SkinLimb*)SEGMENTED_TO_VIRTUAL(skeleton[i]))->segmentType;

        if (segmentType == SKIN_LIMB_TYPE_ANIMATED && shouldDraw == true) {
            Skin_DrawAnimatedLimb(gfxCtx, skin, i, staticFlag, drawFlags);
        } else if (segmentType == SKIN_LIMB_TYPE_NORMAL && shouldDraw == true) {
            Skin_DrawLimb(gfxCtx, skin, i, NULL, drawFlags);
        }
    }

    if (postLimbDraw != NULL) {
        postLimbDraw(actor, play, skin);
    }

close_disps:
    CLOSE_DISPS(gfxCtx, "../z_skin.c", 534);
}


/**
 * Draws a skin model.
 * Allows specifying postLimbDraw and setTranslation.
 */
void Skin_DrawPT(Actor* actor, PlayState* play, Skin* skin, SkinPostLimbDraw postLimbDraw, s32 setTranslation) {
    Skin_DrawImpl(actor, play, skin, postLimbDraw, NULL, setTranslation, false, 0);
}

/**
 * Draws a skin model.
 * Allows specifying OverrideLimbDraw, postLimbDraw and setTranslation.
 */
void Skin_DrawPOT(Actor* actor, PlayState* play, Skin* skin, SkinPostLimbDraw postLimbDraw,
                   SkinOverrideLimbDraw overrideLimbDraw, s32 setTranslation) {
    Skin_DrawImpl(actor, play, skin, postLimbDraw, overrideLimbDraw, setTranslation, false, 0);
}

/**
 * Draws a skin model.
 * Allows specifying OverrideLimbDraw, postLimbDraw, setTranslation, and staticFlag.
 */
void Skin_DrawPOTS(Actor* actor, PlayState* play, Skin* skin, SkinPostLimbDraw postLimbDraw,
                   SkinOverrideLimbDraw overrideLimbDraw, s32 setTranslation, s32 staticFlag) {
    Skin_DrawImpl(actor, play, skin, postLimbDraw, overrideLimbDraw, setTranslation, staticFlag, 0);
}

/**
 * Draws a skin model.
 * Allows specifying all variables.
 */
void Skin_DrawPOTSF(Actor* actor, PlayState* play, Skin* skin, SkinPostLimbDraw postLimbDraw,
                   SkinOverrideLimbDraw overrideLimbDraw, s32 setTranslation, s32 staticFlag, s32 drawFlags) {
    Skin_DrawImpl(actor, play, skin, postLimbDraw, overrideLimbDraw, setTranslation, staticFlag, drawFlags);
}

/**
 * Retrieve the world space location of offset expressed in the limb coordinate
 * system for the limb identified by limbIndex, the world space vector is returned
 * in dst.
 */
void Skin_GetLimbPos(Skin* skin, s32 limbIndex, Vec3f* offset, Vec3f* dst) {
    MtxF mtxf;

    // skin->mtx is a model -> world transformation
    // gSkinLimbMatrices[limbIndex] is a limb -> model transformation
    // Their product is then limb -> world
    SkinMatrix_MtxFMtxFMult(&skin->mtx, &gSkinLimbMatrices[limbIndex], &mtxf);
    // Multiply the offset vector with the limb -> world matrix to get the offset in world space
    SkinMatrix_Vec3fMtxFMultXYZ(&mtxf, offset, dst);
}
