/**
 * @file z_fbdemo.c
 *
 * This file implements an unused transition system that takes the current screen and converts it to large tiles.
 *
 * The static version will just display this tiled screen, while the dynamic version has the visual effect of `sucking`
 * the tiled screen into a single point.
 *
 * @note While the init function allows for custom number of rows and columns, there are multiple hardcoded features
 * that seem meant for 10 rows and 7 columns.
 *     All the `0x20`s correspond to divding the screen in this way (`gScreenWidth`/ 10 = `gScreenHeight` / 7 = 0x20)
 *     The dynamic version using the 5th row and 4th column as the point to suck towards
 */
#include "global.h"

// color framebuffer
extern u16 D_0F000000[];

Gfx D_8012AFB0[] = {
    gsDPPipeSync(),
    gsDPSetCycleType(G_CYC_FILL),
    gsDPSetColorImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 320, D_0F000000),
    gsDPSetFillColor((GPACK_RGBA5551(65, 65, 65, 1) << 16) | GPACK_RGBA5551(65, 65, 65, 1)),
    gsDPFillRectangle(0, 0, 319, 239),
    gsDPPipeSync(),
    gsDPSetFillColor((GPACK_RGBA5551(65, 65, 255, 1) << 16) | GPACK_RGBA5551(65, 65, 255, 1)),
    gsDPFillRectangle(20, 20, 300, 220),
    gsDPPipeSync(),
    gsSPEndDisplayList(),
};

Gfx sTransTileSetupDL[] = {
    gsDPPipeSync(),
    gsSPTexture(0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_ZBUFFER | G_SHADE | G_CULL_BOTH | G_FOG | G_LIGHTING | G_TEXTURE_GEN |
                          G_TEXTURE_GEN_LINEAR | G_LOD | G_SHADING_SMOOTH),
    gsDPSetCombineMode(G_CC_DECALRGB, G_CC_DECALRGB),
    gsDPSetOtherMode(G_AD_DISABLE | G_CD_MAGICSQ | G_CK_NONE | G_TC_FILT | G_TF_BILERP | G_TT_NONE | G_TL_TILE |
                         G_TD_CLAMP | G_TP_PERSP | G_CYC_1CYCLE | G_PM_1PRIMITIVE,
                     G_AC_NONE | G_ZS_PIXEL | G_RM_AA_OPA_SURF | G_RM_AA_OPA_SURF2),
    gsSPEndDisplayList(),
};

void TransitionTile_InitGraphics(TransitionTile* this) {
    s32 frame;
    s32 row;
    s32 row2;
    s32 rowTex;
    Vtx* vtx;
    s32 col;
    s32 colTex;
    Gfx* gfx;

    guMtxIdent(&this->modelView);
    guMtxIdent(&this->unk_98);
    guOrtho(&this->projection, 0.0f, SCREEN_WIDTH, SCREEN_HEIGHT, 0.0f, -1000.0f, 1000.0f, 1.0f);

    for (frame = 0; frame < 2; frame++) {
        this->frame = frame;
        vtx = (this->frame == 0) ? this->vtxFrame1 : this->vtxFrame2;
        colTex = 0;
        for (col = 0; col < this->cols + 1; col++) {
            rowTex = 0;
            for (row = 0; row < this->rows + 1; row++) {
                Vtx_t* vtx2 = &vtx->v;

                vtx++;
                vtx2->tc[0] = rowTex << 6;
                vtx2->ob[0] = row * 0x20;
                vtx2->ob[1] = col * 0x20;
                vtx2->ob[2] = -5;
                vtx2->flag = 0;
                vtx2->tc[1] = colTex << 6;
                vtx2->cn[0] = 0;
                vtx2->cn[1] = 0;
                vtx2->cn[2] = 120;
                vtx2->cn[3] = 255;

                rowTex += 0x20;
            }

            colTex += 0x20;
        }
    }

    gfx = this->gfx;
    colTex = 0;
    for (col = 0; col < this->cols; col++) {
        gSPVertex(gfx++, SEGMENT_ADDR(0xA, (u32)col * (this->rows + 1) * sizeof(Vtx)), 2 * (this->rows + 1), 0);

        rowTex = 0;
        row2 = 0;
        row = 0;
        while (row < this->rows) {
            gDPPipeSync(gfx++);

            gDPLoadTextureTile(gfx++, SEGMENT_ADDR(0xB, 0), G_IM_FMT_RGBA, G_IM_SIZ_16b, SCREEN_WIDTH, SCREEN_HEIGHT,
                               rowTex, colTex, rowTex + 0x20, colTex + 0x20, 0, G_TX_NOMIRROR | G_TX_WRAP,
                               G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

            gSP1Quadrangle(gfx++, row, row + 1, row2 + this->rows + 2, this->rows + row2 + 1, 0);

            rowTex += 0x20;
            row2++;
            row++;
        }

        colTex += 0x20;
    }

    gDPPipeSync(gfx++);
    gSPEndDisplayList(gfx++);

    LOG_NUM("this->col * (1 + this->row * (1 + 7 + 1)) + 1 + 1", this->cols * (1 + this->rows * 9) + 2, "../z_fbdemo.c",
            144);
    LOG_NUM("gp - this->gfxtbl", gfx - this->gfx, "../z_fbdemo.c", 145);
}

void TransitionTile_InitVtxData(TransitionTile* this) {
    s32 col;
    s32 row;

    for (col = 0; col < this->cols + 1; col++) {
        for (row = 0; row < this->rows + 1; row++) {
            (this->vtxData + row + col * (this->rows + 1))->x = row * 0x20;
            (this->vtxData + row + col * (this->rows + 1))->y = col * 0x20;
        }
    }
}

void TransitionTile_Destroy(TransitionTile* this) {
    osSyncPrintf("fbdemo_cleanup(%08x)\n", this);
    osSyncPrintf("msleep(100);\n");
    Sleep_Msec(100);

    if (this->vtxData != NULL) {
        SystemArena_FreeDebug(this->vtxData, "../z_fbdemo.c", 180);
        this->vtxData = NULL;
    }
    if (this->vtxFrame1 != NULL) {
        SystemArena_FreeDebug(this->vtxFrame1, "../z_fbdemo.c", 181);
        this->vtxFrame1 = NULL;
    }
    if (this->vtxFrame2 != NULL) {
        SystemArena_FreeDebug(this->vtxFrame2, "../z_fbdemo.c", 182);
        this->vtxFrame2 = NULL;
    }
    if (this->gfx != NULL) {
        SystemArena_FreeDebug(this->gfx, "../z_fbdemo.c", 183);
        this->gfx = NULL;
    }
}

TransitionTile* TransitionTile_Init(TransitionTile* this, s32 rows, s32 cols) {
    osSyncPrintf("fbdemo_init(%08x, %d, %d)\n", this, rows, cols);
    bzero(this, sizeof(TransitionTile));
    this->frame = 0;
    this->rows = rows;
    this->cols = cols;
    this->vtxData =
        SystemArena_MallocDebug((rows + 1) * sizeof(TransitionTileVtxData) * (cols + 1), "../z_fbdemo.c", 195);
    this->vtxFrame1 = SystemArena_MallocDebug((rows + 1) * sizeof(Vtx) * (cols + 1), "../z_fbdemo.c", 196);
    this->vtxFrame2 = SystemArena_MallocDebug((rows + 1) * sizeof(Vtx) * (cols + 1), "../z_fbdemo.c", 197);
    this->gfx = SystemArena_MallocDebug((this->cols * (1 + this->rows * 9) + 2) * sizeof(Gfx), "../z_fbdemo.c", 198);

    if ((this->vtxData == NULL) || (this->vtxFrame1 == NULL) || (this->vtxFrame2 == NULL) || (this->gfx == NULL)) {
        osSyncPrintf("fbdemo_init allocation error\n");
        if (this->vtxData != NULL) {
            SystemArena_FreeDebug(this->vtxData, "../z_fbdemo.c", 202);
            this->vtxData = NULL;
        }
        if (this->vtxFrame1 != NULL) {
            SystemArena_FreeDebug(this->vtxFrame1, "../z_fbdemo.c", 203);
            this->vtxFrame1 = NULL;
        }
        if (this->vtxFrame2 != NULL) {
            SystemArena_FreeDebug(this->vtxFrame2, "../z_fbdemo.c", 204);
            this->vtxFrame2 = NULL;
        }
        if (this->gfx != NULL) {
            SystemArena_FreeDebug(this->gfx, "../z_fbdemo.c", 205);
            this->gfx = NULL;
        }
        return NULL;
    }
    
    TransitionTile_InitGraphics(this);
    TransitionTile_InitVtxData(this);
    this->frame = 0;

    return this;
}

void TransitionTile_SetVtx(TransitionTile* this) {
    s32 col;
    s32 row;
    Vtx* vtx;

    for (col = 0; col < this->cols + 1; col++) {
        for (row = 0; row < this->rows + 1; row++) {
            vtx = (this->frame == 0) ? this->vtxFrame1 : this->vtxFrame2;
            (vtx + row + col * (this->rows + 1))->v.ob[0] = (this->vtxData + row + col * (this->rows + 1))->x;

            vtx = (this->frame == 0) ? this->vtxFrame1 : this->vtxFrame2;
            (vtx + row + col * (this->rows + 1))->v.ob[1] = (this->vtxData + row + col * (this->rows + 1))->y;
        }
    }
}

void TransitionTile_Draw(TransitionTile* this, Gfx** gfxP) {
    Gfx* gfx = *gfxP;

    gSPDisplayList(gfx++, sTransTileSetupDL);
    TransitionTile_SetVtx(this);
    gSPMatrix(gfx++, &this->projection, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    gSPMatrix(gfx++, &this->modelView, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPSegment(gfx++, 0xA, this->frame == 0 ? this->vtxFrame1 : this->vtxFrame2);
    gSPSegment(gfx++, 0xB, this->zBuffer);
    gSPDisplayList(gfx++, sTransTileSetupDL);
    gSPDisplayList(gfx++, this->gfx);
    gDPPipeSync(gfx++);
    this->frame ^= 1;
    *gfxP = gfx;
}

void TransitionTile_UpdateDynamic(TransitionTile* this) {
    s32 col;
    s32 row;
    f32 diffX;
    f32 diffY;
    f32 scale;

    for (col = 0; col < this->cols + 1; col++) {
        for (row = 0; row < this->rows + 1; row++) {
            diffX = (this->vtxData + row + col * (this->rows + 1))->x - (this->vtxData + 5 + 4 * (this->rows + 1))->x;
            diffY = (this->vtxData + row + col * (this->rows + 1))->y - (this->vtxData + 5 + 4 * (this->rows + 1))->y;
            scale = (SQ(diffX) + SQ(diffY)) / 100.0f;
            if (scale != 0.0f) {
                if (scale < 1.0f) {
                    scale = 1.0f;
                }
                (this->vtxData + row + col * (this->rows + 1))->x -= diffX / scale;
                (this->vtxData + row + col * (this->rows + 1))->y -= diffY / scale;
            }
        }
    }
}

void TransitionTile_UpdateStatic(TransitionTile* this) {
}

s32 func_800B23F0(TransitionTile* this) {
    return 0;
}
