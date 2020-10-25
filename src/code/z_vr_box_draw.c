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

    gSPSegment(oGfxCtx->polyOpa.p++, 7, skyboxCtx->staticSegments[0]);
    gSPSegment(oGfxCtx->polyOpa.p++, 8, skyboxCtx->staticSegments[1]);
    gSPSegment(oGfxCtx->polyOpa.p++, 9, skyboxCtx->staticSegments[2]);

    gDPSetPrimColor(oGfxCtx->polyOpa.p++, 0x00, 0x00, 0, 0, 0, alpha);
    gSPTexture(oGfxCtx->polyOpa.p++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);

    sSkyboxDrawMatrix = Graph_Alloc(gfxCtx, sizeof(Mtx));

    Matrix_Translate(x, y, z, MTXMODE_NEW);
    Matrix_Scale(1.0f, 1.0f, 1.0f, MTXMODE_APPLY);
    Matrix_RotateX(skyboxCtx->rot.x, MTXMODE_APPLY);
    Matrix_RotateY(skyboxCtx->rot.y, MTXMODE_APPLY);
    Matrix_RotateZ(skyboxCtx->rot.z, MTXMODE_APPLY);
    Matrix_ToMtx(sSkyboxDrawMatrix, "../z_vr_box_draw.c", 76);
    gSPMatrix(oGfxCtx->polyOpa.p++, sSkyboxDrawMatrix, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gDPSetColorDither(oGfxCtx->polyOpa.p++, G_CD_MAGICSQ);
    gDPSetTextureFilter(oGfxCtx->polyOpa.p++, G_TF_BILERP);

    gDPLoadTLUT_pal256(oGfxCtx->polyOpa.p++, skyboxCtx->staticSegments[2]);
    gDPSetTextureLUT(oGfxCtx->polyOpa.p++, G_TT_RGBA16);
    gDPSetTextureConvert(oGfxCtx->polyOpa.p++, G_TC_FILT);

    if (skyboxCtx->unk_140) {
        gSPDisplayList(oGfxCtx->polyOpa.p++, skyboxCtx->dpList);
        gSPDisplayList(oGfxCtx->polyOpa.p++, skyboxCtx->dpList + 150 * 1);

        gDPPipeSync(oGfxCtx->polyOpa.p++);

        gDPLoadTLUT_pal256(oGfxCtx->polyOpa.p++, (u16*)skyboxCtx->staticSegments[2] + 256 * 1);

        gSPDisplayList(oGfxCtx->polyOpa.p++, skyboxCtx->dpList + 150 * 2);
        gSPDisplayList(oGfxCtx->polyOpa.p++, skyboxCtx->dpList + 150 * 3);

        if (skyboxId != 2) {
            if (skyboxId <= 0x10 || skyboxId >= 0x19) {
                gDPPipeSync(oGfxCtx->polyOpa.p++);
                gDPLoadTLUT_pal256(oGfxCtx->polyOpa.p++, (u16*)skyboxCtx->staticSegments[2] + 256 * 2);
                gSPDisplayList(oGfxCtx->polyOpa.p++, skyboxCtx->dpList + 150 * 4);
                gSPDisplayList(oGfxCtx->polyOpa.p++, skyboxCtx->dpList + 150 * 5);
                gDPPipeSync(oGfxCtx->polyOpa.p++);

                if (skyboxCtx->unk_140 != 2) {
                    gDPLoadTLUT_pal256(oGfxCtx->polyOpa.p++, (u16*)skyboxCtx->staticSegments[2] + 256 * 3);
                    gSPDisplayList(oGfxCtx->polyOpa.p++, skyboxCtx->dpList + 150 * 6);
                    gSPDisplayList(oGfxCtx->polyOpa.p++, skyboxCtx->dpList + 150 * 7);
                }
            }
        }
    } else {
        gSPDisplayList(oGfxCtx->polyOpa.p++, skyboxCtx->dpList);
        gSPDisplayList(oGfxCtx->polyOpa.p++, skyboxCtx->dpList + 150 * 2);
        gSPDisplayList(oGfxCtx->polyOpa.p++, skyboxCtx->dpList + 150 * 4);
        gSPDisplayList(oGfxCtx->polyOpa.p++, skyboxCtx->dpList + 150 * 6);
        gSPDisplayList(oGfxCtx->polyOpa.p++, skyboxCtx->dpList + 150 * 8);
        if (skyboxId == 5) {
            gSPDisplayList(oGfxCtx->polyOpa.p++, skyboxCtx->dpList + 150 * 10);
        }
    }

    gDPPipeSync(oGfxCtx->polyOpa.p++);

    CLOSE_DISPS(gfxCtx, "../z_vr_box_draw.c", 125);
}

void SkyboxDraw_Update(SkyboxContext* skyboxCtx) {
}
