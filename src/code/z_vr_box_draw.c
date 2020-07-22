#include <global.h>

Mtx* sSkyboxDrawMatrix;

Mtx* SkyboxDraw_UpdateMatrix(SkyboxContext* skyboxCtx, f32 x, f32 y, f32 z) {
    Matrix_Translate(x, y, z, MTXMODE_NEW);
    Matrix_Scale(1.0f, 1.0f, 1.0f, MTXMODE_APPLY);
    Matrix_RotateX(skyboxCtx->rot.x, MTXMODE_APPLY);
    Matrix_RotateY(skyboxCtx->rot.y, MTXMODE_APPLY);
    Matrix_RotateZ(skyboxCtx->rot.z, MTXMODE_APPLY);
    return Matrix_ToMtx(sSkyboxDrawMatrix, "../z_vr_box_draw.c", 42);
}

void SkyboxDraw_Draw(SkyboxContext* skyboxCtx, GraphicsContext* gfxCtx, s16 skyboxId, s16 alpha, f32 x, f32 y, f32 z) {
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, gfxCtx, "../z_vr_box_draw.c", 52);
    func_800945A0(gfxCtx);

    gSPSegment(gfxCtx->polyOpa.p++, 7, skyboxCtx->staticSegments[0]);
    gSPSegment(gfxCtx->polyOpa.p++, 8, skyboxCtx->staticSegments[1]);
    gSPSegment(gfxCtx->polyOpa.p++, 9, skyboxCtx->staticSegments[2]);

    gDPSetPrimColor(gfxCtx->polyOpa.p++, 0x00, 0x00, 0, 0, 0, alpha);
    gSPTexture(gfxCtx->polyOpa.p++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON)

        sSkyboxDrawMatrix = Graph_Alloc(gfxCtx, sizeof(Mtx));

    Matrix_Translate(x, y, z, MTXMODE_NEW);
    Matrix_Scale(1.0f, 1.0f, 1.0f, MTXMODE_APPLY);
    Matrix_RotateX(skyboxCtx->rot.x, MTXMODE_APPLY);
    Matrix_RotateY(skyboxCtx->rot.y, MTXMODE_APPLY);
    Matrix_RotateZ(skyboxCtx->rot.z, MTXMODE_APPLY);
    Matrix_ToMtx(sSkyboxDrawMatrix, "../z_vr_box_draw.c", 76);
    gSPMatrix(gfxCtx->polyOpa.p++, sSkyboxDrawMatrix, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gDPSetColorDither(gfxCtx->polyOpa.p++, G_CD_MAGICSQ);
    gDPSetTextureFilter(gfxCtx->polyOpa.p++, G_TF_BILERP);

    gDPLoadTLUT_pal256(gfxCtx->polyOpa.p++, skyboxCtx->staticSegments[2]);
    gDPSetTextureLUT(gfxCtx->polyOpa.p++, G_TT_RGBA16);
    gDPSetTextureConvert(gfxCtx->polyOpa.p++, G_TC_FILT);

    if (skyboxCtx->unk_140) {
        gSPDisplayList(gfxCtx->polyOpa.p++, skyboxCtx->dpList);
        gSPDisplayList(gfxCtx->polyOpa.p++, skyboxCtx->dpList + 150 * 1);

        gDPPipeSync(gfxCtx->polyOpa.p++);

        gDPLoadTLUT_pal256(gfxCtx->polyOpa.p++, (u16*)skyboxCtx->staticSegments[2] + 256 * 1);

        gSPDisplayList(gfxCtx->polyOpa.p++, skyboxCtx->dpList + 150 * 2);
        gSPDisplayList(gfxCtx->polyOpa.p++, skyboxCtx->dpList + 150 * 3);

        if (skyboxId != 2) {
            if (skyboxId <= 0x10 || skyboxId >= 0x19) {
                gDPPipeSync(gfxCtx->polyOpa.p++);
                gDPLoadTLUT_pal256(gfxCtx->polyOpa.p++, (u16*)skyboxCtx->staticSegments[2] + 256 * 2);
                gSPDisplayList(gfxCtx->polyOpa.p++, skyboxCtx->dpList + 150 * 4);
                gSPDisplayList(gfxCtx->polyOpa.p++, skyboxCtx->dpList + 150 * 5);
                gDPPipeSync(gfxCtx->polyOpa.p++);

                if (skyboxCtx->unk_140 != 2) {
                    gDPLoadTLUT_pal256(gfxCtx->polyOpa.p++, (u16*)skyboxCtx->staticSegments[2] + 256 * 3);
                    gSPDisplayList(gfxCtx->polyOpa.p++, skyboxCtx->dpList + 150 * 6);
                    gSPDisplayList(gfxCtx->polyOpa.p++, skyboxCtx->dpList + 150 * 7);
                }
            }
        }
    } else {
        gSPDisplayList(gfxCtx->polyOpa.p++, skyboxCtx->dpList);
        gSPDisplayList(gfxCtx->polyOpa.p++, skyboxCtx->dpList + 150 * 2);
        gSPDisplayList(gfxCtx->polyOpa.p++, skyboxCtx->dpList + 150 * 4);
        gSPDisplayList(gfxCtx->polyOpa.p++, skyboxCtx->dpList + 150 * 6);
        gSPDisplayList(gfxCtx->polyOpa.p++, skyboxCtx->dpList + 150 * 8);
        if (skyboxId == 5) {
            gSPDisplayList(gfxCtx->polyOpa.p++, skyboxCtx->dpList + 150 * 10);
        }
    }

    gDPPipeSync(gfxCtx->polyOpa.p++);
    Graph_CloseDisps(dispRefs, gfxCtx, "../z_vr_box_draw.c", 125);
}

void SkyboxDraw_Update(SkyboxContext* skyboxCtx) {
}
