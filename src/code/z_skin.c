#include "global.h"

MtxF D_801600C0[60];
char D_80160FC0[0x10];

void func_800A57C0(MtxF* mtx, Struct_800A57C0* arg1, Struct_800A598C* arg2, Vtx* arg3, Vec3f* arg4) {
    Vtx* temp_s2;
    Struct_800A57C0* phi_s1;
    f32 temp_x;
    f32 temp_y;
    f32 temp_z;
    Vec3f sp70;
    Vec3f sp64;

    for (phi_s1 = arg1; phi_s1 < arg1 + arg2->unk_0; phi_s1++) {
        temp_s2 = &arg3[phi_s1->unk_0];
        temp_s2->n.ob[0] = arg4->x;
        temp_s2->n.ob[1] = arg4->y;
        temp_s2->n.ob[2] = arg4->z;
        temp_x = mtx->xw;
        temp_y = mtx->yw;
        temp_z = mtx->zw;
        mtx->zw = 0.0f;
        mtx->yw = 0.0f;
        mtx->xw = 0.0f;
        sp64.x = phi_s1->unk_6;
        sp64.y = phi_s1->unk_7;
        sp64.z = phi_s1->unk_8;
        SkinMatrix_Vec3fMtxFMultXYZ(mtx, &sp64, &sp70);
        temp_s2->n.n[0] = sp70.x;
        temp_s2->n.n[1] = sp70.y;
        temp_s2->n.n[2] = sp70.z;
        mtx->xw = temp_x;
        mtx->yw = temp_y;
        mtx->zw = temp_z;
    }
}

void func_800A598C(GraphicsContext* gfxCtx, PSkinAwb* skin, s32 limbIndex, s32 arg3) {
    s32 temp_1;
    SkinLimb** skeleton;
    SkinLimb* limb;
    Struct_800A5E28* data;
    Struct_800A598C* phi_s6;
    SkinAvb* avb;
    s32 temp_a0_2;
    f32 temp_f20;
    Struct_800A57C0* temp_v0;
    Struct_800A598C_2* temp_s3;
    Vtx* spEC;
    Struct_800A598C* temp_2;
    Vec3f spDC;
    Vec3f spD0;
    Struct_800A598C_2* phi_s0;

    OPEN_DISPS(gfxCtx, "../z_skin.c", 254);

    skeleton = (SkinLimb**)SEGMENTED_TO_VIRTUAL(skin->skeletonHeader->segment);
    data = SEGMENTED_TO_VIRTUAL(((SkinLimb*)SEGMENTED_TO_VIRTUAL(skeleton[limbIndex]))->segment);
    temp_2 = (Struct_800A598C*)SEGMENTED_TO_VIRTUAL(data->unk_4);

    avb = &skin->avbTbl[limbIndex];

    spEC = avb->buf[avb->unk_0];
    temp_1 = data->unk_2;

    for (phi_s6 = temp_2; phi_s6 < temp_2 + temp_1; phi_s6++) {
        temp_a0_2 = phi_s6->unk_2;
        temp_v0 = (Struct_800A57C0*)SEGMENTED_TO_VIRTUAL(phi_s6->unk_8);
        temp_s3 = (Struct_800A598C_2*)SEGMENTED_TO_VIRTUAL(phi_s6->unk_C);

        if (temp_a0_2 == 1) {
            Vec3f spAC;

            spAC.x = temp_s3[0].x;
            spAC.y = temp_s3[0].y;
            spAC.z = temp_s3[0].z;
            SkinMatrix_Vec3fMtxFMultXYZ(&D_801600C0[temp_s3[0].unk_0], &spAC, &spDC);
        } else if (arg3 == 1) {
            Vec3f spA0;

            phi_s0 = &temp_s3[phi_s6->unk_4];

            spA0.x = phi_s0->x;
            spA0.y = phi_s0->y;
            spA0.z = phi_s0->z;
            SkinMatrix_Vec3fMtxFMultXYZ(&D_801600C0[phi_s0->unk_0], &spA0, &spDC);
        } else {
            Vec3f phi_f20;
            Vec3f sp88;

            phi_f20.x = phi_f20.y = phi_f20.z = 0.0f;

            for (phi_s0 = &temp_s3[0]; phi_s0 < &temp_s3[temp_a0_2]; phi_s0++) {
                temp_f20 = phi_s0->unk_8 * 0.01f;

                sp88.x = phi_s0->x;
                sp88.y = phi_s0->y;
                sp88.z = phi_s0->z;
                SkinMatrix_Vec3fMtxFMultXYZ(&D_801600C0[phi_s0->unk_0], &sp88, &spD0);
                spD0.x *= temp_f20;
                spD0.y *= temp_f20;
                spD0.z *= temp_f20;
                phi_f20.x += spD0.x;
                phi_f20.y += spD0.y;
                phi_f20.z += spD0.z;
            }
            spDC.x = phi_f20.x;
            spDC.y = phi_f20.y;
            spDC.z = phi_f20.z;
        }
        func_800A57C0(&D_801600C0[temp_s3[phi_s6->unk_4].unk_0], temp_v0, phi_s6, spEC, &spDC);
    }
    gSPSegment(POLY_OPA_DISP++, 0x08, avb->buf[avb->unk_0]);

    avb->unk_0 = (avb->unk_0 == 0) ? 1 : 0;

    CLOSE_DISPS(gfxCtx, "../z_skin.c", 344);
}

void Skin_DrawAnimatedLimb(GraphicsContext* gfxCtx, PSkinAwb* skin, s32 limbIndex, s32 arg3, s32 drawFlag) {
    SkinLimb** skeleton;
    Struct_800A5E28* temp_t9;

    OPEN_DISPS(gfxCtx, "../z_skin.c", 364);
    skeleton = SEGMENTED_TO_VIRTUAL(skin->skeletonHeader->segment);
    temp_t9 = SEGMENTED_TO_VIRTUAL(((SkinLimb*)SEGMENTED_TO_VIRTUAL(skeleton[limbIndex]))->segment);
    if (!(drawFlag & SKIN_DRAW_FLAG_1)) {
        func_800A598C(gfxCtx, skin, limbIndex, arg3);
    }
    gSPDisplayList(POLY_OPA_DISP++, temp_t9->unk_8);
    CLOSE_DISPS(gfxCtx, "../z_skin.c", 377);
}

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

void Skin_DrawImpl(Actor* actor, GlobalContext* globalCtx, PSkinAwb* skin, SkinPostLimbDraw postLimbDraw, SkinOverrideLimbDraw overrideLimbDraw,
                   s32 arg5, s32 arg6, s32 drawFlag) {
    s32 i;
    s32 segmentType;
    SkinLimb** skeleton;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    s32 pad;

    OPEN_DISPS(gfxCtx, "../z_skin.c", 471);
    if (!(drawFlag & SKIN_DRAW_FLAG_1)) {
        func_800A6AC4(skin, &D_801600C0[0], actor, arg5);
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

        segmentType = ((SkinLimb*)SEGMENTED_TO_VIRTUAL(skeleton[i]))->unk_8;
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

void func_800A6330(Actor* actor, GlobalContext* globalCtx, PSkinAwb* skin, SkinPostLimbDraw postLimbDraw, s32 arg4) {
    Skin_DrawImpl(actor, globalCtx, skin, postLimbDraw, NULL, arg4, false, SKIN_DRAW_FLAG_NONE);
}

void func_800A6360(Actor* actor, GlobalContext* globalCtx, PSkinAwb* skin, SkinPostLimbDraw postLimbDraw, SkinOverrideLimbDraw overrideLimbDraw, s32 arg5) {
    Skin_DrawImpl(actor, globalCtx, skin, postLimbDraw, overrideLimbDraw, arg5, false, SKIN_DRAW_FLAG_NONE);
}

void func_800A6394(Actor* actor, GlobalContext* globalCtx, PSkinAwb* skin, SkinPostLimbDraw postLimbDraw, SkinOverrideLimbDraw overrideLimbDraw,
                   s32 arg5, s32 arg6) {
    Skin_DrawImpl(actor, globalCtx, skin, postLimbDraw, overrideLimbDraw, arg5, arg6, SKIN_DRAW_FLAG_NONE);
}

void func_800A63CC(Actor* actor, GlobalContext* globalCtx, PSkinAwb* skin, SkinPostLimbDraw postLimbDraw, SkinOverrideLimbDraw overrideLimbDraw,
                   s32 arg5, s32 arg6, s32 drawFlag) {
    Skin_DrawImpl(actor, globalCtx, skin, postLimbDraw, overrideLimbDraw, arg5, arg6, drawFlag);
}

void func_800A6408(PSkinAwb* skin, s32 limbIndex, Vec3f* arg2, Vec3f* dst) {
    MtxF mtxf;

    SkinMatrix_MtxFMtxFMult(&skin->mtx, &D_801600C0[limbIndex], &mtxf);
    SkinMatrix_Vec3fMtxFMultXYZ(&mtxf, arg2, dst);
}
