/**
 * This file implements a framebuffer effect relying on the depth buffer (Z buffer).
 * It merely allows LERPing between two colors, using the Z buffer bytes (interpreted as either ia16 or rgba16) as the
 * factor.
 * Z buffer values are two bytes each. They are floating point, which makes the effect not that interesting for an
 * actual application as that doesn't map well to be interpreted as ia16 or rgba16, though some discontinuous gradients
 * can be seen.
 */

#include "ultra64.h"
#include "gfx.h"
#include "vis.h"

// z-buffer
extern u16 D_0E000000[];

void VisZBuffer_Init(VisZBuffer* this) {
    this->useRgba = false;
    this->setScissor = false;
    this->primColor.r = 255;
    this->primColor.g = 255;
    this->primColor.b = 255;
    this->primColor.a = 255;

    // clang-format off
    this->envColor.r = 0; \
    this->envColor.g = 0; \
    this->envColor.b = 0; \
    this->envColor.a = 255;
    // clang-format on
}

void VisZBuffer_Destroy(VisZBuffer* this) {
}

void VisZBuffer_Draw(VisZBuffer* this, Gfx** gfxp) {
    Gfx* gfx = *gfxp;
    s32 pad;
    u16* tex = D_0E000000;
    s32 fmt = !this->useRgba ? G_IM_FMT_IA : G_IM_FMT_RGBA;
    s32 y;
    s32 height = TMEM_SIZE / (SCREEN_WIDTH * G_IM_SIZ_16b_BYTES);

    gDPPipeSync(gfx++);
    if (this->setScissor == true) {
        gDPSetScissor(gfx++, G_SC_NON_INTERLACE, 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    }

    gDPSetOtherMode(gfx++,
                    G_AD_DISABLE | G_CD_MAGICSQ | G_CK_NONE | G_TC_FILT | G_TF_POINT | G_TT_NONE | G_TL_TILE |
                        G_TD_CLAMP | G_TP_NONE | G_CYC_1CYCLE | G_PM_NPRIMITIVE,
                    G_AC_NONE | G_ZS_PRIM | G_RM_OPA_SURF | G_RM_OPA_SURF2);
    gDPSetCombineLERP(gfx++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT,
                      PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT);

    gDPSetColor(gfx++, G_SETPRIMCOLOR, this->primColor.rgba);
    gDPSetColor(gfx++, G_SETENVCOLOR, this->envColor.rgba);

    for (y = 0; y <= SCREEN_HEIGHT - height; y += height) {
        gDPLoadTextureBlock(gfx++, tex, fmt, G_IM_SIZ_16b, SCREEN_WIDTH, height, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                            G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

        gSPTextureRectangle(gfx++, 0, y << 2, SCREEN_WIDTH << 2, (y + height) << 2, G_TX_RENDERTILE, 0, 0, 1 << 10,
                            1 << 10);
        tex += SCREEN_WIDTH * height;
    }

    gDPPipeSync(gfx++);
    *gfxp = gfx;
}
