#include <global.h>

Mtx* sVrBoxDrawMtx;

Mtx* VrBoxDraw_UpdateMatrix(SkyboxContext* vrbox, f32 x, f32 y, f32 z) {
    Matrix_Translate(x, y, z, MTXMODE_NEW);
    Matrix_Scale(1.0f, 1.0f, 1.0f, MTXMODE_APPLY);
    Matrix_RotateX(vrbox->rot.x, MTXMODE_APPLY);
    Matrix_RotateY(vrbox->rot.y, MTXMODE_APPLY);
    Matrix_RotateZ(vrbox->rot.z, MTXMODE_APPLY);
    return Matrix_ToMtx(sVrBoxDrawMtx, "../z_vr_box_draw.c", 42);
}

void VrBoxDraw_Draw(SkyboxContext* vrbox, GraphicsContext* gfxCtx, s16 skyboxId, s16 alpha, f32 x, f32 y, f32 z) {
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, gfxCtx, "../z_vr_box_draw.c", 52);
    func_800945A0(gfxCtx);

    gSPSegment(gfxCtx->polyOpa.p++, 7, vrbox->staticSegments[0]);
    gSPSegment(gfxCtx->polyOpa.p++, 8, vrbox->staticSegments[1]);
    gSPSegment(gfxCtx->polyOpa.p++, 9, vrbox->staticSegments[2]);

    gDPSetPrimColor(gfxCtx->polyOpa.p++, 0x00, 0x00, 0x00, 0x00, 0x00, alpha);
    gSPTexture(gfxCtx->polyOpa.p++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON)

    sVrBoxDrawMtx = Graph_Alloc(gfxCtx, sizeof(Mtx));

    Matrix_Translate(x, y, z, MTXMODE_NEW);
    Matrix_Scale(1.0f, 1.0f, 1.0f, MTXMODE_APPLY);
    Matrix_RotateX(vrbox->rot.x, MTXMODE_APPLY);
    Matrix_RotateY(vrbox->rot.y, MTXMODE_APPLY);
    Matrix_RotateZ(vrbox->rot.z, MTXMODE_APPLY);
    Matrix_ToMtx(sVrBoxDrawMtx, "../z_vr_box_draw.c", 76);
    gSPMatrix(gfxCtx->polyOpa.p++, sVrBoxDrawMtx, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gDPSetColorDither(gfxCtx->polyOpa.p++, G_CD_MAGICSQ);
    gDPSetTextureFilter(gfxCtx->polyOpa.p++, G_TF_BILERP);

    gDPLoadTLUT_pal256(gfxCtx->polyOpa.p++, vrbox->staticSegments[2]);
    gDPSetTextureLUT(gfxCtx->polyOpa.p++, G_TT_RGBA16);
    gDPSetTextureConvert(gfxCtx->polyOpa.p++, G_TC_FILT);

    if (vrbox->unk_140) {
        gSPDisplayList(gfxCtx->polyOpa.p++, vrbox->dpList);
        gSPDisplayList(gfxCtx->polyOpa.p++, vrbox->dpList + 150 * 1);

        gDPPipeSync(gfxCtx->polyOpa.p++);

        gDPLoadTLUT_pal256(gfxCtx->polyOpa.p++, (u16*)vrbox->staticSegments[2] + 256 * 1);

        gSPDisplayList(gfxCtx->polyOpa.p++, vrbox->dpList + 150 * 2);
        gSPDisplayList(gfxCtx->polyOpa.p++, vrbox->dpList + 150 * 3);

        if (skyboxId != 2) {
            if (skyboxId <= 0x10 || skyboxId >= 0x19) {
                gDPPipeSync(gfxCtx->polyOpa.p++);
                gDPLoadTLUT_pal256(gfxCtx->polyOpa.p++, (u16*)vrbox->staticSegments[2] + 256 * 2);
                gSPDisplayList(gfxCtx->polyOpa.p++, vrbox->dpList + 150 * 4);
                gSPDisplayList(gfxCtx->polyOpa.p++, vrbox->dpList + 150 * 5);
                gDPPipeSync(gfxCtx->polyOpa.p++);

                if (vrbox->unk_140 != 2) {
                    gDPLoadTLUT_pal256(gfxCtx->polyOpa.p++, (u16*)vrbox->staticSegments[2] + 256 * 3);
                    gSPDisplayList(gfxCtx->polyOpa.p++, vrbox->dpList + 150 * 6);
                    gSPDisplayList(gfxCtx->polyOpa.p++, vrbox->dpList + 150 * 7);
                }
            }
        }
    } else {
        gSPDisplayList(gfxCtx->polyOpa.p++, vrbox->dpList);
        gSPDisplayList(gfxCtx->polyOpa.p++, vrbox->dpList + 150 * 2);
        gSPDisplayList(gfxCtx->polyOpa.p++, vrbox->dpList + 150 * 4);
        gSPDisplayList(gfxCtx->polyOpa.p++, vrbox->dpList + 150 * 6);
        gSPDisplayList(gfxCtx->polyOpa.p++, vrbox->dpList + 150 * 8);
        if (skyboxId == 5) {
            gSPDisplayList(gfxCtx->polyOpa.p++, vrbox->dpList + 150 * 10);
        }
    }

    gDPPipeSync(gfxCtx->polyOpa.p++);
    Graph_CloseDisps(dispRefs, gfxCtx, "../z_vr_box_draw.c", 125);
}

void VrBoxDraw_Update(SkyboxContext* vrbox) {
}
