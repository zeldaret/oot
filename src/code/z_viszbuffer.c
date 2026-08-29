/**
 * This file implements a framebuffer effect relying on the depth buffer (Z buffer).
 * It merely allows LERPing between two colors (from color2 to color1), using the Z buffer bytes (interpreted as either
 * ia16 or rgba16 depending on the type being 0 or not) as the factor.
 *
 * Z buffer values are two bytes each. They are floating point, which makes the effect not that interesting for an
 * actual application as that doesn't map well to be interpreted as ia16 or rgba16, though some discontinuous gradients
 * can be seen.
 *
 * The bit layout of Z buffer values is:
 * 0bEEEM_MMMM_MMMM_MMDD
 * Where E is the 3 exponent bits, M is the 11 mantissa bits,
 * and D is 2 of the 4 dz value bits (the remaining two are stored in the "hidden" 9th bit of each byte).
 * In 3D space, Z values increase from front (near plane) to back (far plane).
 *
 * Interpreted as ia16:
 * 0bIIII_IIII_AAAA_AAAA
 * The intensity channel takes its value from the exponent bits and the high mantissa bits, so it continuously increases
 * from front to back.
 * The alpha channel mostly takes its value from the lowest mantissa bits, so it increases from front to back but also
 * rolls over frequently.
 * This can be observed in-game by setting color1 to white and color2 to black.
 * From front to back, the intensity gradient is a continuous increase.
 * The alpha is ignored due to the render mode VisZBuffer uses.
 *
 * Interpreted as rgba16:
 * 0bRRRR_RGGG_GGBB_BBBA
 * The red channel mostly takes its value from the exponent bits, so it continuously increases from front to back.
 * The green channel takes its value from the middle mantissa bits, so it increases from front to back but also rolls
 * over frequently.
 * The blue channel mostly takes its value from the lowest mantissa bits, so it increases from front to back and also
 * rolls over even more frequently.
 * This can be observed in-game by setting color1 to white and color2 to black.
 * From front to back, the gradients for each color channel are then:
 * - red: continuous increase
 * - green: discontinuous succession of continuous increases
 * - blue: like green but even higher frequency
 */

#include "ultra64.h"
#include "gfx.h"
#include "vis.h"

// z-buffer
extern u16 D_0E000000[];

void VisZBuffer_Init(VisZBuffer* this) {
    this->params.type = 0;
    this->params.setScissor = false;
    this->params.color1.r = 255;
    this->params.color1.g = 255;
    this->params.color1.b = 255;
    this->params.color1.a = 255;

    // clang-format off
    this->params.color2.r = 0; \
    this->params.color2.g = 0; \
    this->params.color2.b = 0; \
    this->params.color2.a = 255;
    // clang-format on
}

void VisZBuffer_Destroy(VisZBuffer* this) {
}

void VisZBuffer_Draw(VisZBuffer* this, Gfx** gfxP) {
    Gfx* gfx = *gfxP;
    s32 pad;
    u16* tex = D_0E000000;
    s32 fmt = this->params.type == 0 ? G_IM_FMT_IA : G_IM_FMT_RGBA;
    s32 y;
    s32 height = TMEM_SIZE / (SCREEN_WIDTH * G_IM_SIZ_16b_BYTES);

    gDPPipeSync(gfx++);
    if (this->params.setScissor == true) {
        gDPSetScissor(gfx++, G_SC_NON_INTERLACE, 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    }

    gDPSetOtherMode(gfx++,
                    G_AD_DISABLE | G_CD_MAGICSQ | G_CK_NONE | G_TC_FILT | G_TF_POINT | G_TT_NONE | G_TL_TILE |
                        G_TD_CLAMP | G_TP_NONE | G_CYC_1CYCLE | G_PM_NPRIMITIVE,
                    G_AC_NONE | G_ZS_PRIM | G_RM_OPA_SURF | G_RM_OPA_SURF2);
    gDPSetCombineLERP(gfx++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT,
                      PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT);

    gDPSetColor(gfx++, G_SETPRIMCOLOR, this->params.color1.rgba);
    gDPSetColor(gfx++, G_SETENVCOLOR, this->params.color2.rgba);

    for (y = 0; y <= SCREEN_HEIGHT - height; y += height) {
        gDPLoadTextureBlock(gfx++, tex, fmt, G_IM_SIZ_16b, SCREEN_WIDTH, height, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                            G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

        gSPTextureRectangle(gfx++, 0, y << 2, SCREEN_WIDTH << 2, (y + height) << 2, G_TX_RENDERTILE, 0, 0, 1 << 10,
                            1 << 10);
        tex += SCREEN_WIDTH * height;
    }

    gDPPipeSync(gfx++);
    *gfxP = gfx;
}
