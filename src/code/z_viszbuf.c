/**
 * @file z_viszbuf.c
 * Description: Visualise the z-buffer (AKA depth buffer), using cycling RGBA or a single fading color.
 *
 * This is done by reading the z-buffer as if it were a color image, the format of which is specified by `useRgba`:
 *
 * - false will produce a monotonic fade from primColor to envColor as depth increases
 * - true produces vibrant almost-periodic-looking bands.
 *
 * In both cases this occurs because of the format the depth information takes: it is 18-bit, and is a nonnegative
 * floating-point number with
 *
 *     bbb      mmmmmmmmmmm dd|dd
 *     exponent mantissa    dz value (only first 16 bits visible to CPU)
 *
 * Reading z-buffer as IA16:
 *
 *     bbbmmmmm mmmmmmdd
 *     iiiiiiii aaaaaaaa
 *
 * Since floating-point numbers of this format have the same ordering as their binary/hex representation, increasing
 * the depth also increases the intensity in the IA16 representation and hence the interpolation parameter used to
 * combine primColor and envColor. The alpha is ignored by the RenderMode.
 *
 * Reading z-buffer as RGBA16:
 *
 *     bbbmm mmmmm mmmmd d
 *     rrrrr ggggg bbbbb a
 *
 * The red increases monotonically with the depth. The significant visible oscillation is the green component, because
 * it rolls over every time the second-most-significant bit of the mantissa increments. The blue component oscillates
 * too rapidly to be particularly visible (it rolls over when the 7th-most-significant bit increments). The alpha is
 * again ignored by the RenderMode.
 */

#include "global.h"

// Height of the fragments the z-buffer is split into.
// It is the maximum amount of lines such that all rgba16 SCREEN_WIDTH-long lines fit into TMEM.
#define VISZBUF_ZBUFFRAG_HEIGHT (TMEM_SIZE / (SCREEN_WIDTH * G_IM_SIZ_16b_BYTES))

// z-buffer
extern u16 D_0E000000[];

/**
 * Initialise to IA type with white and black as default colours.
 */
void VisZbuf_Init(VisZbuf* this) {
    this->useRgba = false;
    this->setScissor = false;
    this->primColor.r = 255;
    this->primColor.g = 255;
    this->primColor.b = 255;
    this->primColor.a = 255;
    this->envColor.a = 255;
    this->envColor.r = 0;
    this->envColor.g = 0;
    this->envColor.b = 0;
}

void VisZbuf_Destroy(VisZbuf* this) {
}

void VisZbuf_Draw(VisZbuf* this, Gfx** gfxp) {
    Gfx* gfx = *gfxp;
    u16* zbufFrag = D_0E000000;
    s32 fmt;// = (this->useRgba == false) ? G_IM_FMT_IA : G_IM_FMT_RGBA;
    s32 y;
    s32 height;

    if (this->useRgba == 0) {
        fmt = G_IM_FMT_IA;
    } else {
        fmt = G_IM_FMT_RGBA;
    }
    
    height = VISZBUF_ZBUFFRAG_HEIGHT;

    gDPPipeSync(gfx++);
    // Scissoring is only required if the scissor has not been set prior.
    if (this->setScissor == true) {
        gDPSetScissor(gfx++, G_SC_NON_INTERLACE, 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    }

    // No palette so can use all of TMEM.
    // G_RM_OPA_SURF discards all information previously in the pixel, and the current alpha, leaving only the color
    // from this filter.
    gDPSetOtherMode(gfx++,
                    G_AD_DISABLE | G_CD_MAGICSQ | G_CK_NONE | G_TC_FILT | G_TF_POINT | G_TT_NONE | G_TL_TILE |
                        G_TD_CLAMP | G_TP_NONE | G_CYC_1CYCLE | G_PM_NPRIMITIVE,
                    G_AC_NONE | G_ZS_PRIM | G_RM_OPA_SURF | G_RM_OPA_SURF2);

    // LERP between primColor and envColor in 1-cycle mode using the z-buffer value.
    gDPSetCombineLERP(gfx++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT,
                      PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT);
    gDPSetColor(gfx++, G_SETPRIMCOLOR, this->primColor.rgba);
    gDPSetColor(gfx++, G_SETENVCOLOR, this->envColor.rgba);

    for (y = 0; y <= SCREEN_HEIGHT - height; y += height) {
        // Load a few lines of the z-buffer.
        gDPLoadTextureBlock(gfx++, zbufFrag, fmt, G_IM_SIZ_16b, SCREEN_WIDTH, height, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                            G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

        // Overwrite them with the calculated colours.
        gSPTextureRectangle(gfx++, 0, y << 2, SCREEN_WIDTH << 2, (y + height) << 2, G_TX_RENDERTILE, 0, 0, 1 << 10,
                            1 << 10);
        zbufFrag += SCREEN_WIDTH * height;
    }

    gDPPipeSync(gfx++);
    *gfxp = gfx;
}
