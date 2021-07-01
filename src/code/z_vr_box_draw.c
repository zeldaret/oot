#include "global.h"

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
    OPEN_DISPS(gfxCtx, "../z_vr_box_draw.c", 52);

    func_800945A0(gfxCtx);

    gSPSegment(POLY_OPA_DISP++, 0x7, skyboxCtx->staticSegments[0]);
    gSPSegment(POLY_OPA_DISP++, 0x8, skyboxCtx->staticSegments[1]);
    gSPSegment(POLY_OPA_DISP++, 0x9, skyboxCtx->staticSegments[2]);

    gDPSetPrimColor(POLY_OPA_DISP++, 0x00, 0x00, 0, 0, 0, alpha);
    gSPTexture(POLY_OPA_DISP++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);

    sSkyboxDrawMatrix = Graph_Alloc(gfxCtx, sizeof(Mtx));

    Matrix_Translate(x, y, z, MTXMODE_NEW);
    Matrix_Scale(1.0f, 1.0f, 1.0f, MTXMODE_APPLY);
    Matrix_RotateX(skyboxCtx->rot.x, MTXMODE_APPLY);
    Matrix_RotateY(skyboxCtx->rot.y, MTXMODE_APPLY);
    Matrix_RotateZ(skyboxCtx->rot.z, MTXMODE_APPLY);
    Matrix_ToMtx(sSkyboxDrawMatrix, "../z_vr_box_draw.c", 76);
    gSPMatrix(POLY_OPA_DISP++, sSkyboxDrawMatrix, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gDPSetColorDither(POLY_OPA_DISP++, G_CD_MAGICSQ);
    gDPSetTextureFilter(POLY_OPA_DISP++, G_TF_BILERP);

    gDPLoadTLUT_pal256(POLY_OPA_DISP++, skyboxCtx->staticSegments[2]);
    gDPSetTextureLUT(POLY_OPA_DISP++, G_TT_RGBA16);
    gDPSetTextureConvert(POLY_OPA_DISP++, G_TC_FILT);

    if (skyboxCtx->unk_140) {
        gSPDisplayList(POLY_OPA_DISP++, skyboxCtx->dListBuf);
        gSPDisplayList(POLY_OPA_DISP++, skyboxCtx->dListBuf + 150 * 1);

        gDPPipeSync(POLY_OPA_DISP++);

        gDPLoadTLUT_pal256(POLY_OPA_DISP++, (u16*)skyboxCtx->staticSegments[2] + 256 * 1);

        gSPDisplayList(POLY_OPA_DISP++, skyboxCtx->dListBuf + 150 * 2);
        gSPDisplayList(POLY_OPA_DISP++, skyboxCtx->dListBuf + 150 * 3);

        if (skyboxId != SKYBOX_BAZAAR) {
            if (skyboxId <= SKYBOX_HOUSE_KAKARIKO || skyboxId > SKYBOX_BOMBCHU_SHOP) {
                gDPPipeSync(POLY_OPA_DISP++);
                gDPLoadTLUT_pal256(POLY_OPA_DISP++, (u16*)skyboxCtx->staticSegments[2] + 256 * 2);
                gSPDisplayList(POLY_OPA_DISP++, skyboxCtx->dListBuf + 150 * 4);
                gSPDisplayList(POLY_OPA_DISP++, skyboxCtx->dListBuf + 150 * 5);
                gDPPipeSync(POLY_OPA_DISP++);

                if (skyboxCtx->unk_140 != 2) {
                    gDPLoadTLUT_pal256(POLY_OPA_DISP++, (u16*)skyboxCtx->staticSegments[2] + 256 * 3);
                    gSPDisplayList(POLY_OPA_DISP++, skyboxCtx->dListBuf + 150 * 6);
                    gSPDisplayList(POLY_OPA_DISP++, skyboxCtx->dListBuf + 150 * 7);
                }
            }
        }
    } else {
        gSPDisplayList(POLY_OPA_DISP++, skyboxCtx->dListBuf);
        gSPDisplayList(POLY_OPA_DISP++, skyboxCtx->dListBuf + 150 * 2);
        gSPDisplayList(POLY_OPA_DISP++, skyboxCtx->dListBuf + 150 * 4);
        gSPDisplayList(POLY_OPA_DISP++, skyboxCtx->dListBuf + 150 * 6);
        gSPDisplayList(POLY_OPA_DISP++, skyboxCtx->dListBuf + 150 * 8);
        if (skyboxId == SKYBOX_CUTSCENE_MAP) {
            gSPDisplayList(POLY_OPA_DISP++, skyboxCtx->dListBuf + 150 * 10);
        }
    }

    gDPPipeSync(POLY_OPA_DISP++);

    CLOSE_DISPS(gfxCtx, "../z_vr_box_draw.c", 125);
}

void SkyboxDraw_Update(SkyboxContext* skyboxCtx) {
}
