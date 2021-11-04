#include "global.h"

MtxF D_801600C0[60];
char D_80160FC0[0x10];

void func_800A57C0(MtxF* mtx, SkinVtx* skinVertices, Struct_800A598C* arg2, Vtx* arg3, Vec3f* arg4) {
    Vtx* vtx;
    SkinVtx* skinVtxEntry;
    f32 temp_x;
    f32 temp_y;
    f32 temp_z;
    Vec3f sp70;
    Vec3f sp64;

    for (skinVtxEntry = skinVertices; skinVtxEntry < &skinVertices[arg2->skinVerticesCount]; skinVtxEntry++) {
        vtx = &arg3[skinVtxEntry->vtxIndex];

        vtx->n.ob[0] = arg4->x;
        vtx->n.ob[1] = arg4->y;
        vtx->n.ob[2] = arg4->z;

        temp_x = mtx->xw;
        temp_y = mtx->yw;
        temp_z = mtx->zw;
        mtx->zw = 0.0f;
        mtx->yw = 0.0f;
        mtx->xw = 0.0f;

        sp64.x = skinVtxEntry->x;
        sp64.y = skinVtxEntry->y;
        sp64.z = skinVtxEntry->z;
        SkinMatrix_Vec3fMtxFMultXYZ(mtx, &sp64, &sp70);
        vtx->n.n[0] = sp70.x;
        vtx->n.n[1] = sp70.y;
        vtx->n.n[2] = sp70.z;

        mtx->xw = temp_x;
        mtx->yw = temp_y;
        mtx->zw = temp_z;
    }
}

void func_800A598C(GraphicsContext* gfxCtx, PSkinAwb* skin, s32 limbIndex, s32 arg3) {
    s32 count;
    SkinLimb** skeleton;
    SkinLimb* limb;
    SkinAnimatedLimbData* data;
    Struct_800A598C* entry;
    SkinAvb* avb;
    s32 limbsModificationsCount;
    f32 scale;
    SkinVtx* skinVertices;
    SkinLimbModif* limbsModifications;
    Vtx* vtx;
    Struct_800A598C* temp_2;
    Vec3f spDC;
    Vec3f spD0;
    SkinLimbModif* modifEntry;

    OPEN_DISPS(gfxCtx, "../z_skin.c", 254);

    skeleton = (SkinLimb**)SEGMENTED_TO_VIRTUAL(skin->skeletonHeader->segment);
    data = SEGMENTED_TO_VIRTUAL(((SkinLimb*)SEGMENTED_TO_VIRTUAL(skeleton[limbIndex]))->segment);
    temp_2 = (Struct_800A598C*)SEGMENTED_TO_VIRTUAL(data->unk_4);

    avb = &skin->avbTbl[limbIndex];

    vtx = avb->buf[avb->index];
    count = data->unk_2;

    for (entry = temp_2; entry < temp_2 + count; entry++) {
        limbsModificationsCount = entry->limbsModificationsCount;
        skinVertices = (SkinVtx*)SEGMENTED_TO_VIRTUAL(entry->skinVertices);
        limbsModifications = (SkinLimbModif*)SEGMENTED_TO_VIRTUAL(entry->limbsModifications);

        if (limbsModificationsCount == 1) {
            Vec3f spAC;

            spAC.x = limbsModifications[0].x;
            spAC.y = limbsModifications[0].y;
            spAC.z = limbsModifications[0].z;
            SkinMatrix_Vec3fMtxFMultXYZ(&D_801600C0[limbsModifications[0].limbIndex], &spAC, &spDC);
        } else if (arg3 == 1) {
            Vec3f spA0;

            modifEntry = &limbsModifications[entry->unk_4];

            spA0.x = modifEntry->x;
            spA0.y = modifEntry->y;
            spA0.z = modifEntry->z;
            SkinMatrix_Vec3fMtxFMultXYZ(&D_801600C0[modifEntry->limbIndex], &spA0, &spDC);
        } else {
            Vec3f phi_f20;
            Vec3f sp88;

            phi_f20.x = phi_f20.y = phi_f20.z = 0.0f;

            for (modifEntry = &limbsModifications[0]; modifEntry < &limbsModifications[limbsModificationsCount];
                 modifEntry++) {
                scale = modifEntry->scale * 0.01f;

                sp88.x = modifEntry->x;
                sp88.y = modifEntry->y;
                sp88.z = modifEntry->z;
                SkinMatrix_Vec3fMtxFMultXYZ(&D_801600C0[modifEntry->limbIndex], &sp88, &spD0);
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

        func_800A57C0(&D_801600C0[limbsModifications[entry->unk_4].limbIndex], skinVertices, entry, vtx, &spDC);
    }

    gSPSegment(POLY_OPA_DISP++, 0x08, avb->buf[avb->index]);

    avb->index = (avb->index == 0) ? 1 : 0;

    CLOSE_DISPS(gfxCtx, "../z_skin.c", 344);
}

/**
 * Draw a limb of type SKIN_LIMB_TYPE_ANIMATED, of the skeleton `skin` at index `limbIndex`
 * The vertices of this limb are modified dynamically
 */
void Skin_DrawAnimatedLimb(GraphicsContext* gfxCtx, PSkinAwb* skin, s32 limbIndex, s32 arg3, s32 drawFlag) {
    SkinLimb** skeleton;
    SkinAnimatedLimbData* data;

    OPEN_DISPS(gfxCtx, "../z_skin.c", 364);

    skeleton = SEGMENTED_TO_VIRTUAL(skin->skeletonHeader->segment);
    data = SEGMENTED_TO_VIRTUAL(((SkinLimb*)SEGMENTED_TO_VIRTUAL(skeleton[limbIndex]))->segment);
    if (!(drawFlag & SKIN_DRAW_FLAG_1)) {
        func_800A598C(gfxCtx, skin, limbIndex, arg3);
    }
    gSPDisplayList(POLY_OPA_DISP++, data->dlist);

    CLOSE_DISPS(gfxCtx, "../z_skin.c", 377);
}

/**
 * Draw a limb of type SKIN_LIMB_TYPE_NORMAL, of the skeleton `skin` at index `limbIndex`
 */
void Skin_DrawLimb(GraphicsContext* gfxCtx, PSkinAwb* skin, s32 limbIndex, Gfx* dlistOverride, s32 drawFlag) {
    Gfx* gfx = dlistOverride;
    SkinLimb** skeleton;
    s32 pad;

    OPEN_DISPS(gfxCtx, "../z_skin.c", 395);
    skeleton = SEGMENTED_TO_VIRTUAL(skin->skeletonHeader->segment);
    if (dlistOverride == NULL) {
        gfx = ((SkinLimb*)SEGMENTED_TO_VIRTUAL(skeleton[limbIndex]))->segment;
    }
    if (gfx != NULL) {
        Mtx* mtx = SkinMatrix_MtxFToNewMtx(gfxCtx, &D_801600C0[limbIndex]);
        if (mtx != NULL) {
            gSPMatrix(POLY_OPA_DISP++, mtx, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_OPA_DISP++, gfx);
            gSPPopMatrix(POLY_OPA_DISP++, G_MTX_MODELVIEW);
            gDPPipeSync(POLY_OPA_DISP++);
        }
    }
    CLOSE_DISPS(gfxCtx, "../z_skin.c", 433);
}

void Skin_DrawImpl(Actor* actor, GlobalContext* globalCtx, PSkinAwb* skin, SkinPostLimbDraw postLimbDraw,
                   SkinOverrideLimbDraw overrideLimbDraw, s32 arg5, s32 arg6, s32 drawFlag) {
    s32 i;
    s32 segmentType;
    SkinLimb** skeleton;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    s32 pad;

    OPEN_DISPS(gfxCtx, "../z_skin.c", 471);

    if (!(drawFlag & SKIN_DRAW_FLAG_1)) {
        func_800A6AC4(skin, D_801600C0, actor, arg5);
    }

    skeleton = SEGMENTED_TO_VIRTUAL(skin->skeletonHeader->segment);

    if (!(drawFlag & SKIN_DRAW_FLAG_CUSTOM_MATRIX)) {
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
            Skin_DrawAnimatedLimb(gfxCtx, skin, i, arg6, drawFlag);
        } else if (segmentType == SKIN_LIMB_TYPE_NORMAL && shouldDraw == true) {
            Skin_DrawLimb(gfxCtx, skin, i, NULL, drawFlag);
        }
    }

    if (postLimbDraw != NULL) {
        postLimbDraw(actor, globalCtx, skin);
    }

close_disps:
    CLOSE_DISPS(gfxCtx, "../z_skin.c", 534);
}

// Skin_Draw... Something?
void func_800A6330(Actor* actor, GlobalContext* globalCtx, PSkinAwb* skin, SkinPostLimbDraw postLimbDraw, s32 arg4) {
    Skin_DrawImpl(actor, globalCtx, skin, postLimbDraw, NULL, arg4, false, SKIN_DRAW_FLAG_NONE);
}

// Skin_Draw... Something?
void func_800A6360(Actor* actor, GlobalContext* globalCtx, PSkinAwb* skin, SkinPostLimbDraw postLimbDraw,
                   SkinOverrideLimbDraw overrideLimbDraw, s32 arg5) {
    Skin_DrawImpl(actor, globalCtx, skin, postLimbDraw, overrideLimbDraw, arg5, false, SKIN_DRAW_FLAG_NONE);
}

// Skin_Draw... Something?
void func_800A6394(Actor* actor, GlobalContext* globalCtx, PSkinAwb* skin, SkinPostLimbDraw postLimbDraw,
                   SkinOverrideLimbDraw overrideLimbDraw, s32 arg5, s32 arg6) {
    Skin_DrawImpl(actor, globalCtx, skin, postLimbDraw, overrideLimbDraw, arg5, arg6, SKIN_DRAW_FLAG_NONE);
}

// Skin_Draw?
void func_800A63CC(Actor* actor, GlobalContext* globalCtx, PSkinAwb* skin, SkinPostLimbDraw postLimbDraw,
                   SkinOverrideLimbDraw overrideLimbDraw, s32 arg5, s32 arg6, s32 drawFlag) {
    Skin_DrawImpl(actor, globalCtx, skin, postLimbDraw, overrideLimbDraw, arg5, arg6, drawFlag);
}

void func_800A6408(PSkinAwb* skin, s32 limbIndex, Vec3f* arg2, Vec3f* dst) {
    MtxF mtxf;

    SkinMatrix_MtxFMtxFMult(&skin->mtx, &D_801600C0[limbIndex], &mtxf);
    SkinMatrix_Vec3fMtxFMultXYZ(&mtxf, arg2, dst);
}
