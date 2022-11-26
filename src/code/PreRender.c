/**
 * @file PreRender.c
 *
 * This file implements various routines important to framebuffer effects, such as RDP accelerated color and depth
 * buffer copies and coverage drawing. Also contains software implementations of the Video Interface anti-aliasing and
 * divot filters.
 */
#include "global.h"
#include "alloca.h"

void PreRender_SetValuesSave(PreRender* this, u32 width, u32 height, void* fbuf, void* zbuf, void* cvg) {
    this->widthSave = width;
    this->heightSave = height;
    this->fbufSave = fbuf;
    this->cvgSave = cvg;
    this->zbufSave = zbuf;
    this->ulxSave = 0;
    this->ulySave = 0;
    this->lrxSave = width - 1;
    this->lrySave = height - 1;
}

void PreRender_Init(PreRender* this) {
    bzero(this, sizeof(PreRender));
    ListAlloc_Init(&this->alloc);
}

void PreRender_SetValues(PreRender* this, u32 width, u32 height, void* fbuf, void* zbuf) {
    this->width = width;
    this->height = height;
    this->fbuf = fbuf;
    this->zbuf = zbuf;
    this->ulx = 0;
    this->uly = 0;
    this->lrx = width - 1;
    this->lry = height - 1;
}

void PreRender_Destroy(PreRender* this) {
    ListAlloc_FreeAll(&this->alloc);
}

/**
 * Copies RGBA16 image `img` to `imgDst`
 *
 * @param gfxp      Display list pointer
 * @param img       Image to copy from
 * @param imgDst    Buffer to copy to
 */
void PreRender_CopyImage(PreRender* this, Gfx** gfxp, void* img, void* imgDst) {
    Gfx* gfx;
    s32 rowsRemaining;
    s32 curRow;
    s32 nRows;

    LogUtils_CheckNullPointer("this", this, "../PreRender.c", 215);
    LogUtils_CheckNullPointer("glistpp", gfxp, "../PreRender.c", 216);
    gfx = *gfxp;
    LogUtils_CheckNullPointer("glistp", gfx, "../PreRender.c", 218);

    gDPPipeSync(gfx++);
    // Configure the cycle type to COPY mode, disable blending
    gDPSetOtherMode(gfx++,
                    G_AD_PATTERN | G_CD_MAGICSQ | G_CK_NONE | G_TC_CONV | G_TF_POINT | G_TT_NONE | G_TL_TILE |
                        G_TD_CLAMP | G_TP_NONE | G_CYC_COPY | G_PM_NPRIMITIVE,
                    G_AC_NONE | G_ZS_PIXEL | G_RM_NOOP | G_RM_NOOP2);
    // Set the destination buffer as the color image and set the scissoring region to the entire image
    gDPSetColorImage(gfx++, G_IM_FMT_RGBA, G_IM_SIZ_16b, this->width, imgDst);
    gDPSetScissor(gfx++, G_SC_NON_INTERLACE, 0, 0, this->width, this->height);

    // Calculate the max number of rows that can fit into TMEM at once
    nRows = TMEM_SIZE / (this->width * G_IM_SIZ_16b_BYTES);

    rowsRemaining = this->height;
    curRow = 0;
    while (rowsRemaining > 0) {
        s32 uls = 0;
        s32 lrs = this->width - 1;
        s32 ult;
        s32 lrt;

        // Make sure that we don't load past the end of the source image
        nRows = MIN(rowsRemaining, nRows);

        // Determine the upper and lower bounds of the rect to draw
        ult = curRow;
        lrt = ult + nRows - 1;

        // Load a horizontal strip of the source image in RGBA16 format
        gDPLoadTextureTile(gfx++, img, G_IM_FMT_RGBA, G_IM_SIZ_16b, this->width, this->height, uls, ult, lrs, lrt, 0,
                           G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                           G_TX_NOLOD);

        // Draw that horizontal strip to the destination image, dsdx is 4 << 10 for COPY mode
        gSPTextureRectangle(gfx++, uls << 2, ult << 2, lrs << 2, lrt << 2, G_TX_RENDERTILE, uls << 5, ult << 5, 4 << 10,
                            1 << 10);

        rowsRemaining -= nRows;
        curRow += nRows;
    }

    gDPPipeSync(gfx++);
    gDPSetColorImage(gfx++, G_IM_FMT_RGBA, G_IM_SIZ_16b, this->width, this->fbuf);
    *gfxp = gfx;
}

/**
 * Copies part of `this->fbufSave` in the region (this->ulx, this->uly), (this->lrx, this->lry) to the same location in
 * `this->fbuf`.
 */
void PreRender_CopyImageRegionImpl(PreRender* this, Gfx** gfxp) {
    Gfx* gfx;
    s32 rowsRemaining;
    s32 curRow;
    s32 nRows;

    LogUtils_CheckNullPointer("this", this, "../PreRender.c", 278);
    LogUtils_CheckNullPointer("glistpp", gfxp, "../PreRender.c", 279);
    gfx = *gfxp;
    LogUtils_CheckNullPointer("glistp", gfx, "../PreRender.c", 281);

    gDPPipeSync(gfx++);
    // Configure the cycle type to COPY mode, disable blending
    gDPSetOtherMode(gfx++,
                    G_AD_PATTERN | G_CD_MAGICSQ | G_CK_NONE | G_TC_CONV | G_TF_POINT | G_TT_NONE | G_TL_TILE |
                        G_TD_CLAMP | G_TP_NONE | G_CYC_COPY | G_PM_NPRIMITIVE,
                    G_AC_NONE | G_ZS_PIXEL | G_RM_NOOP | G_RM_NOOP2);
    // Set the destination buffer as the color image and set the scissoring region to the destination region
    gDPSetColorImage(gfx++, G_IM_FMT_RGBA, G_IM_SIZ_16b, this->width, this->fbuf);
    gDPSetScissor(gfx++, G_SC_NON_INTERLACE, this->ulx, this->uly, this->lrx + 1, this->lry + 1);

    // Calculate the max number of rows that can fit into TMEM at once
    nRows = TMEM_SIZE / ((this->lrxSave - this->ulxSave + 1) * G_IM_SIZ_16b_BYTES);

    rowsRemaining = (this->lrySave - this->ulySave) + 1;
    curRow = 0;
    while (rowsRemaining > 0) {
        s32 ult;
        s32 lrt;
        s32 uly;

        // Make sure that we don't load past the end of the source image
        nRows = MIN(rowsRemaining, nRows);

        // Determine the upper and lower bounds of the rect to draw
        ult = this->ulySave + curRow;
        lrt = ult + nRows - 1;
        uly = this->uly + curRow;

        // Load a horizontal strip of the source image in RGBA16 format
        gDPLoadTextureTile(gfx++, this->fbufSave, G_IM_FMT_RGBA, G_IM_SIZ_16b, this->widthSave, this->height - 1,
                           this->ulxSave, ult, this->lrxSave, lrt, 0, G_TX_NOMIRROR | G_TX_WRAP,
                           G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

        // Draw that horizontal strip to the destination image, dsdx is 4 << 10 for COPY mode
        gSPTextureRectangle(gfx++, this->ulx << 2, uly << 2, this->lrx << 2, (uly + nRows - 1) << 2, G_TX_RENDERTILE,
                            this->ulxSave << 5, ult << 5, 4 << 10, 1 << 10);

        rowsRemaining -= nRows;
        curRow += nRows;
    }

    // Reset the color image and scissor
    gDPPipeSync(gfx++);
    gDPSetColorImage(gfx++, G_IM_FMT_RGBA, G_IM_SIZ_16b, this->width, this->fbuf);
    gDPSetScissor(gfx++, G_SC_NON_INTERLACE, 0, 0, this->width, this->height);
    *gfxp = gfx;
}

/**
 * Copies `buf` to `bufSave`, discarding the alpha channel and modulating the RGB channel by
 * the color ('r', 'g', 'b', 'a')
 */
void func_800C170C(PreRender* this, Gfx** gfxp, void* buf, void* bufSave, u32 r, u32 g, u32 b, u32 a) {
    Gfx* gfx;
    s32 rowsRemaining;
    s32 curRow;
    s32 nRows;

    LogUtils_CheckNullPointer("this", this, "../PreRender.c", 343);
    LogUtils_CheckNullPointer("glistpp", gfxp, "../PreRender.c", 344);
    gfx = *gfxp;
    LogUtils_CheckNullPointer("glistp", gfx, "../PreRender.c", 346);

    gDPPipeSync(gfx++);
    // Set the cycle type to 1-cycle mode to use the color combiner
    gDPSetOtherMode(gfx++,
                    G_AD_DISABLE | G_CD_DISABLE | G_CK_NONE | G_TC_FILT | G_TF_POINT | G_TT_NONE | G_TL_TILE |
                        G_TD_CLAMP | G_TP_NONE | G_CYC_1CYCLE | G_PM_NPRIMITIVE,
                    G_AC_NONE | G_ZS_PRIM | G_RM_OPA_SURF | G_RM_OPA_SURF2);
    gDPSetEnvColor(gfx++, r, g, b, a);

    // Redundant setting of color combiner, overwritten immediately
    // Would preserve rgb exactly while replacing the alpha channel with full alpha
    gDPSetCombineLERP(gfx++, 0, 0, 0, TEXEL0, 0, 0, 0, 1, 0, 0, 0, TEXEL0, 0, 0, 0, 1);
    // Modulate TEXEL0 by ENVIRONMENT, replace alpha with full alpha
    gDPSetCombineLERP(gfx++, TEXEL0, 0, ENVIRONMENT, 0, 0, 0, 0, 1, TEXEL0, 0, ENVIRONMENT, 0, 0, 0, 0, 1);
    // Set the destination buffer as the color image and set the scissoring region to the entire image
    gDPSetColorImage(gfx++, G_IM_FMT_RGBA, G_IM_SIZ_16b, this->width, bufSave);
    gDPSetScissor(gfx++, G_SC_NON_INTERLACE, 0, 0, this->width, this->height);

    // Calculate the max number of rows that can fit into TMEM at once
    nRows = TMEM_SIZE / (this->width * G_IM_SIZ_16b_BYTES);

    rowsRemaining = this->height;
    curRow = 0;
    while (rowsRemaining > 0) {
        s32 uls = 0;
        s32 lrs = this->width - 1;
        s32 ult;
        s32 lrt;

        // Make sure that we don't load past the end of the source image
        nRows = MIN(rowsRemaining, nRows);

        // Determine the upper and lower bounds of the rect to draw
        ult = curRow;
        lrt = curRow + nRows - 1;

        // Load a horizontal strip of the source image in RGBA16 format
        gDPLoadTextureTile(gfx++, buf, G_IM_FMT_RGBA, G_IM_SIZ_16b, this->width, this->height, uls, ult, lrs, lrt, 0,
                           G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                           G_TX_NOLOD);

        // Draw that horizontal strip to the destination image
        gSPTextureRectangle(gfx++, uls << 2, ult << 2, (lrs + 1) << 2, (lrt + 1) << 2, G_TX_RENDERTILE, uls << 5,
                            ult << 5, 1 << 10, 1 << 10);

        rowsRemaining -= nRows;
        curRow += nRows;
    }

    gDPPipeSync(gfx++);
    gDPSetColorImage(gfx++, G_IM_FMT_RGBA, G_IM_SIZ_16b, this->width, this->fbuf);
    *gfxp = gfx;
}

/**
 * Copies `fbuf` to `fbufSave`, discarding the alpha channel and leaving the rgb channel unchanged
 */
void func_800C1AE8(PreRender* this, Gfx** gfxp, void* fbuf, void* fbufSave) {
    func_800C170C(this, gfxp, fbuf, fbufSave, 255, 255, 255, 255);
}

/**
 * Reads the coverage values stored in the RGBA16 format `img` with dimensions `this->width`, `this->height` and
 * converts it to an 8-bpp intensity image.
 *
 * @param gfxp      Display list pointer
 * @param img       Image to read coverage from
 * @param cvgDst    Buffer to store coverage into
 */
void PreRender_CoverageRgba16ToI8(PreRender* this, Gfx** gfxp, void* img, void* cvgDst) {
    Gfx* gfx;
    s32 rowsRemaining;
    s32 curRow;
    s32 nRows;

    LogUtils_CheckNullPointer("this", this, "../PreRender.c", 422);
    LogUtils_CheckNullPointer("glistpp", gfxp, "../PreRender.c", 423);
    gfx = *gfxp;
    LogUtils_CheckNullPointer("glistp", gfx, "../PreRender.c", 425);

    gDPPipeSync(gfx++);
    gDPSetOtherMode(gfx++,
                    G_AD_DISABLE | G_CD_DISABLE | G_CK_NONE | G_TC_FILT | G_TF_POINT | G_TT_NONE | G_TL_TILE |
                        G_TD_CLAMP | G_TP_NONE | G_CYC_1CYCLE | G_PM_NPRIMITIVE,
                    G_AC_NONE | G_ZS_PRIM | G_RM_PASS | G_RM_OPA_CI2);

    // Set the combiner to draw the texture as-is, discarding alpha channel
    gDPSetCombineLERP(gfx++, 0, 0, 0, TEXEL0, 0, 0, 0, 0, 0, 0, 0, TEXEL0, 0, 0, 0, 0);
    // Set the destination color image to the provided address
    gDPSetColorImage(gfx++, G_IM_FMT_I, G_IM_SIZ_8b, this->width, cvgDst);
    // Set up a scissor based on the source image
    gDPSetScissor(gfx++, G_SC_NON_INTERLACE, 0, 0, this->width, this->height);

    // Calculate the max number of rows that can fit into TMEM at once
    nRows = TMEM_SIZE / (this->width * G_IM_SIZ_16b_BYTES);

    // Set up the number of remaining rows
    rowsRemaining = this->height;
    curRow = 0;
    while (rowsRemaining > 0) {
        s32 uls = 0;
        s32 lrs = this->width - 1;
        s32 ult;
        s32 lrt;

        // Make sure that we don't load past the end of the source image
        nRows = MIN(rowsRemaining, nRows);

        // Determine the upper and lower bounds of the rect to draw
        ult = curRow;
        lrt = curRow + nRows - 1;

        // Load a horizontal strip of the source image in IA16 format. Since the source image is stored in memory as
        // RGBA16, the bits are reinterpreted into IA16:
        //
        // r     g      b     a
        // 11111 111 11 11111 1
        // i         a
        // 11111 111 11 11111 1
        //
        // I = (r << 3) | (g >> 2)
        // A = (g << 6) | (b << 1) | a
        //
        // Since it is expected that r = g = b = cvg in the source image, this results in
        //  I = (cvg << 3) | (cvg >> 2)
        // This expands the 5-bit coverage into an 8-bit value
        gDPLoadTextureTile(gfx++, img, G_IM_FMT_IA, G_IM_SIZ_16b, this->width, this->height, uls, ult, lrs, lrt, 0,
                           G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                           G_TX_NOLOD);

        // Draw that horizontal strip to the destination image. With the combiner and blender configuration set above,
        // the intensity (I) channel of the loaded IA16 texture will be written as-is to the I8 color image, each pixel
        // in the final image is
        //  I = (cvg << 3) | (cvg >> 2)
        gSPTextureRectangle(gfx++, uls << 2, ult << 2, (lrs + 1) << 2, (lrt + 1) << 2, G_TX_RENDERTILE, uls << 5,
                            ult << 5, 1 << 10, 1 << 10);

        // Update the number of rows remaining and index of the row being drawn
        rowsRemaining -= nRows;
        curRow += nRows;
    }

    // Reset the color image to the current framebuffer
    gDPPipeSync(gfx++);
    gDPSetColorImage(gfx++, G_IM_FMT_RGBA, G_IM_SIZ_16b, this->width, this->fbuf);
    *gfxp = gfx;
}

/**
 * Saves zbuf to zbufSave
 */
void PreRender_SaveZBuffer(PreRender* this, Gfx** gfxp) {
    LogUtils_CheckNullPointer("this->zbuf_save", this->zbufSave, "../PreRender.c", 481);
    LogUtils_CheckNullPointer("this->zbuf", this->zbuf, "../PreRender.c", 482);

    if ((this->zbufSave != NULL) && (this->zbuf != NULL)) {
        PreRender_CopyImage(this, gfxp, this->zbuf, this->zbufSave);
    }
}

/**
 * Saves fbuf to fbufSave
 */
void PreRender_SaveFramebuffer(PreRender* this, Gfx** gfxp) {
    LogUtils_CheckNullPointer("this->fbuf_save", this->fbufSave, "../PreRender.c", 495);
    LogUtils_CheckNullPointer("this->fbuf", this->fbuf, "../PreRender.c", 496);

    if ((this->fbufSave != NULL) && (this->fbuf != NULL)) {
        func_800C1AE8(this, gfxp, this->fbuf, this->fbufSave);
    }
}

/**
 * Fetches the coverage of the current framebuffer into an image of the same format as the current color image, storing
 * it over the framebuffer in memory.
 */
void PreRender_FetchFbufCoverage(PreRender* this, Gfx** gfxp) {
    Gfx* gfx = *gfxp;

    gDPPipeSync(gfx++);
    // Set the blend color to full white and set maximum depth
    gDPSetBlendColor(gfx++, 255, 255, 255, 8);
    gDPSetPrimDepth(gfx++, 0xFFFF, 0xFFFF);

    // Uses G_RM_VISCVG to blit the coverage values to the framebuffer
    //
    // G_RM_VISCVG is the following special render mode:
    //  IM_RD    : Allow read-modify-write operations on the framebuffer
    //  FORCE_BL : Apply the blender to all pixels rather than just edges
    //  (G_BL_CLR_IN * G_BL_0 + G_BL_CLR_BL * G_BL_A_MEM) / (G_BL_0 + G_BL_CLR_BL) = G_BL_A_MEM
    //
    // G_BL_A_MEM ("memory alpha") is coverage, therefore this blender configuration emits only the coverage
    // and discards any pixel colors. For an RGBA16 framebuffer, each of the three color channels r,g,b will
    // receive the coverage value individually.
    //
    // Also disables other modes such as alpha compare and texture perspective correction
    gDPSetOtherMode(gfx++,
                    G_AD_DISABLE | G_CD_DISABLE | G_CK_NONE | G_TC_FILT | G_TF_POINT | G_TT_NONE | G_TL_TILE |
                        G_TD_CLAMP | G_TP_NONE | G_CYC_1CYCLE | G_PM_NPRIMITIVE,
                    G_AC_NONE | G_ZS_PRIM | G_RM_VISCVG | G_RM_VISCVG2);
    // Set up a scissor with the same dimensions as the framebuffer
    gDPSetScissor(gfx++, G_SC_NON_INTERLACE, 0, 0, this->width, this->height);
    // Fill rectangle to obtain the coverage values as an RGBA16 image
    gDPFillRectangle(gfx++, 0, 0, this->width, this->height);
    gDPPipeSync(gfx++);

    *gfxp = gfx;
}

/**
 * Draws the coverage of the current framebuffer `this->fbuf` to an I8 image at `this->cvgSave`. Overwrites
 * `this->fbuf` in the process.
 */
void PreRender_DrawCoverage(PreRender* this, Gfx** gfxp) {
    PreRender_FetchFbufCoverage(this, gfxp);
    LogUtils_CheckNullPointer("this->cvg_save", this->cvgSave, "../PreRender.c", 532);
    if (this->cvgSave != NULL) {
        PreRender_CoverageRgba16ToI8(this, gfxp, this->fbuf, this->cvgSave);
    }
}

/**
 * Restores zbufSave to zbuf
 */
void PreRender_RestoreZBuffer(PreRender* this, Gfx** gfxp) {
    PreRender_CopyImage(this, gfxp, this->zbufSave, this->zbuf);
}

/**
 * Draws a full-screen image to the current framebuffer, that sources the rgb channel from `this->fbufSave` and
 * the alpha channel from `this->cvgSave` modulated by environment color.
 */
void func_800C213C(PreRender* this, Gfx** gfxp) {
    Gfx* gfx;
    s32 rowsRemaining;
    s32 curRow;
    s32 nRows;
    s32 rtile = 1;

    if (this->cvgSave != NULL) {
        LogUtils_CheckNullPointer("this", this, "../PreRender.c", 563);
        LogUtils_CheckNullPointer("glistpp", gfxp, "../PreRender.c", 564);
        gfx = *gfxp;
        LogUtils_CheckNullPointer("glistp", gfx, "../PreRender.c", 566);

        gDPPipeSync(gfx++);
        gDPSetEnvColor(gfx++, 255, 255, 255, 32);
        // Effectively disable blending in both cycles. It's 2-cycle so that TEXEL1 can be used to point to a different
        // texture tile.
        gDPSetOtherMode(gfx++,
                        G_AD_DISABLE | G_CD_DISABLE | G_CK_NONE | G_TC_FILT | G_TF_POINT | G_TT_NONE | G_TL_TILE |
                            G_TD_CLAMP | G_TP_NONE | G_CYC_2CYCLE | G_PM_NPRIMITIVE,
                        G_AC_NONE | G_ZS_PRIM | AA_EN | CVG_DST_CLAMP | ZMODE_OPA | CVG_X_ALPHA |
                            GBL_c1(G_BL_CLR_IN, G_BL_0, G_BL_CLR_IN, G_BL_1) |
                            GBL_c2(G_BL_CLR_IN, G_BL_0, G_BL_CLR_IN, G_BL_1));

        // Set up the color combiner: first cycle: TEXEL0, TEXEL1 + ENVIRONMENT; second cycle: G_CC_PASS2
        gDPSetCombineLERP(gfx++, 0, 0, 0, TEXEL0, 1, 0, TEXEL1, ENVIRONMENT, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED);

        nRows = 4;

        rowsRemaining = this->height;
        curRow = 0;
        while (rowsRemaining > 0) {
            s32 uls = 0;
            s32 lrs = this->width - 1;
            s32 ult;
            s32 lrt;

            // Make sure that we don't load past the end of the source image
            nRows = MIN(rowsRemaining, nRows);

            // Determine the upper and lower bounds of the rect to draw
            ult = curRow;
            lrt = curRow + nRows - 1;

            // Load the frame buffer line
            gDPLoadMultiTile(gfx++, this->fbufSave, 0x0000, G_TX_RENDERTILE, G_IM_FMT_RGBA, G_IM_SIZ_16b, this->width,
                             this->height, uls, ult, lrs, lrt, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
                             G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

            // Load the coverage line
            gDPLoadMultiTile(gfx++, this->cvgSave, 0x0160, rtile, G_IM_FMT_I, G_IM_SIZ_8b, this->width, this->height,
                             uls, ult, lrs, lrt, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                             G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

            // Draw a texture for which the rgb channels come from the framebuffer and the alpha channel comes from
            // coverage, modulated by env color
            gSPTextureRectangle(gfx++, uls << 2, ult << 2, (lrs + 1) << 2, (lrt + 1) << 2, G_TX_RENDERTILE, uls << 5,
                                ult << 5, 1 << 10, 1 << 10);

            rowsRemaining -= nRows;
            curRow += nRows;
        }

        gDPPipeSync(gfx++);
        *gfxp = gfx;
    }
}

/**
 * Copies fbufSave to fbuf
 */
void PreRender_RestoreFramebuffer(PreRender* this, Gfx** gfxp) {
    PreRender_CopyImage(this, gfxp, this->fbufSave, this->fbuf);
}

/**
 * Copies part of `this->fbufSave` in the region (this->ulx, this->uly), (this->lrx, this->lry) to the same location in
 * `this->fbuf`.
 */
void PreRender_CopyImageRegion(PreRender* this, Gfx** gfxp) {
    PreRender_CopyImageRegionImpl(this, gfxp);
}

/**
 * Applies the Video Interface anti-aliasing of silhouette edges to an image.
 *
 * This filter performs a linear interpolation on partially covered pixels between the current pixel color (called
 * foreground color) and a "background" pixel color obtained by sampling fully covered pixels at the six highlighted
 * points in the following 5x3 neighborhood:
 *    _ _ _ _ _
 *  |   o   o   |
 *  | o   X   o |
 *  |   o   o   |
 *    ‾ ‾ ‾ ‾ ‾
 * Whether a pixel is partially covered is determined by reading the coverage values associated with the image.
 * Coverage is a measure of how many subpixels the last drawn primitive covered. A fully covered pixel is one with a
 * full coverage value, the entire pixel was covered by the primitive.
 * The background color is calculated as the average of the "penultimate" minimum and maximum colors in the 5x3
 * neighborhood.
 *
 * The final color is calculated by interpolating the foreground and background color weighted by the coverage:
 *      OutputColor = cvg * ForeGround + (1.0 - cvg) * BackGround
 *
 * This is a software implementation of the same algorithm used in the Video Interface hardware when Anti-Aliasing is
 * enabled in the VI Control Register.
 *
 * Patent describing the algorithm:
 *
 * Gossett, C. P., & van Hook, T. J. (Filed 1995, Published 1998)
 * Antialiasing of silhouette edges (USOO5742277A)
 * U.S. Patent and Trademark Office
 * Expired 2015-10-06
 * https://patents.google.com/patent/US5742277A/en
 *
 * @param this  PreRender instance
 * @param x     Center pixel x
 * @param y     Center pixel y
 */
void PreRender_AntiAliasFilter(PreRender* this, s32 x, s32 y) {
    s32 i;
    s32 j;
    s32 buffCvg[5 * 3];
    s32 buffR[5 * 3];
    s32 buffG[5 * 3];
    s32 buffB[5 * 3];
    s32 xi;
    s32 yi;
    s32 pad;
    s32 pmaxR;
    s32 pmaxG;
    s32 pmaxB;
    s32 pminR;
    s32 pminG;
    s32 pminB;
    Color_RGBA16 pxIn;
    Color_RGBA16 pxOut;
    u32 outR;
    u32 outG;
    u32 outB;

    // Extract pixels in the 5x3 neighborhood
    for (i = 0; i < 5 * 3; i++) {
        xi = x + (i % 5) - 2;
        yi = y + (i / 5) - 1;

        // Clamp coordinates to the edges of the image
        if (xi < 0) {
            xi = 0;
        } else if (xi > (this->width - 1)) {
            xi = this->width - 1;
        }
        if (yi < 0) {
            yi = 0;
        } else if (yi > (this->height - 1)) {
            yi = this->height - 1;
        }

        // Extract color channels for each pixel, convert 5-bit color channels to 8-bit
        pxIn.rgba = this->fbufSave[xi + yi * this->width];
        buffR[i] = (pxIn.r << 3) | (pxIn.r >> 2);
        buffG[i] = (pxIn.g << 3) | (pxIn.g >> 2);
        buffB[i] = (pxIn.b << 3) | (pxIn.b >> 2);
        buffCvg[i] = this->cvgSave[xi + yi * this->width] >> 5;
    }

    if (buffCvg[7] == 7) {
        osSyncPrintf("Error, should not be in here \n");
        return;
    }

    pmaxR = pminR = buffR[7];
    pmaxG = pminG = buffG[7];
    pmaxB = pminB = buffB[7];

    // For each neighbor
    for (i = 1; i < 5 * 3; i += 2) {
        // Only sample fully covered pixels
        if (buffCvg[i] == 7) {
            // Determine "Penultimate Maximum" Value

            // If current maximum is less than this neighbor
            if (pmaxR < buffR[i]) {
                // For each neighbor (again)
                for (j = 1; j < 5 * 3; j += 2) {
                    // If not the neighbor we were at before, and this neighbor has a larger value and this pixel is
                    // fully covered, that means the neighbor at `i` is the "penultimate maximum"
                    if ((i != j) && (buffR[j] >= buffR[i]) && (buffCvg[j] == 7)) {
                        pmaxR = buffR[i];
                    }
                }
            }
            if (pmaxG < buffG[i]) {
                for (j = 1; j < 5 * 3; j += 2) {
                    if ((i != j) && (buffG[j] >= buffG[i]) && (buffCvg[j] == 7)) {
                        pmaxG = buffG[i];
                    }
                }
            }
            if (pmaxB < buffB[i]) {
                for (j = 1; j < 5 * 3; j += 2) {
                    if ((i != j) && (buffB[j] >= buffB[i]) && (buffCvg[j] == 7)) {
                        pmaxB = buffB[i];
                    }
                }
            }

            if (1) {}

            // Determine "Penultimate Minimum" Value

            // Same as above with inverted conditions
            if (pminR > buffR[i]) {
                for (j = 1; j < 5 * 3; j += 2) {
                    if ((i != j) && (buffR[j] <= buffR[i]) && (buffCvg[j] == 7)) {
                        pminR = buffR[i];
                    }
                }
            }
            if (pminG > buffG[i]) {
                for (j = 1; j < 5 * 3; j += 2) {
                    if ((i != j) && (buffG[j] <= buffG[i]) && (buffCvg[j] == 7)) {
                        pminG = buffG[i];
                    }
                }
            }
            if (pminB > buffB[i]) {
                for (j = 1; j < 5 * 3; j += 2) {
                    if ((i != j) && (buffB[j] <= buffB[i]) && (buffCvg[j] == 7)) {
                        pminB = buffB[i];
                    }
                }
            }
        }
    }

    // The background color is determined by averaging the penultimate minimum and maximum pixels, and subtracting the
    // ForeGround color:
    //      BackGround = (pMax + pMin) - (ForeGround) * 2

    // OutputColor = cvg * ForeGround + (1.0 - cvg) * BackGround
    outR = buffR[7] + ((s32)((7 - buffCvg[7]) * (pmaxR + pminR - (buffR[7] * 2)) + 4) >> 3);
    outG = buffG[7] + ((s32)((7 - buffCvg[7]) * (pmaxG + pminG - (buffG[7] * 2)) + 4) >> 3);
    outB = buffB[7] + ((s32)((7 - buffCvg[7]) * (pmaxB + pminB - (buffB[7] * 2)) + 4) >> 3);

    pxOut.r = outR >> 3;
    pxOut.g = outG >> 3;
    pxOut.b = outB >> 3;
    pxOut.a = 1;
    this->fbufSave[x + y * this->width] = pxOut.rgba;
}

// Selects the median value from a1, a2, a3
#define MEDIAN3(a1, a2, a3)                                                    \
    (((a2) >= (a1)) ? (((a3) >= (a2)) ? (a2) : (((a1) >= (a3)) ? (a1) : (a3))) \
                    : (((a2) >= (a3)) ? (a2) : (((a3) >= (a1)) ? (a1) : (a3))))

/**
 * Applies the Video Interface divot filter to an image.
 *
 * This filter removes "divots" in an anti-aliased image, single-pixel holes created when many boundary edges all
 * occupy a single pixel. The algorithm removes these by sliding a 3-pixel-wide window across each row of pixels and
 * replaces the center pixel color with the median pixel color in the window.
 *
 * This is a software implementation of the same algorithm used in the Video Interface hardware when OS_VI_DIVOT_ON is
 * set in the VI Control Register.
 *
 * @param this  PreRender instance
 */
void PreRender_DivotFilter(PreRender* this) {
    s32 x;
    s32 y;
    s32 pad1;
    u8* buffR = alloca(this->width);
    u8* buffG = alloca(this->width);
    u8* buffB = alloca(this->width);
    s32 pad2[3];
    s32 pxR;
    s32 pxG;
    s32 pxB;

    for (y = 0; y < this->height; y++) {
        // The divot filter is applied row-by-row as it only needs to use pixels that are horizontally adjacent

        // Decompose each pixel into color channels
        for (x = 0; x < this->width; x++) {
            Color_RGBA16 pxIn;

            pxIn.rgba = this->fbufSave[x + y * this->width];
            buffR[x] = pxIn.r;
            buffG[x] = pxIn.g;
            buffB[x] = pxIn.b;
        }

        // Apply the divot filter itself. For pixels with partial coverage, the filter selects the median value from a
        // window of 3 pixels in a horizontal row and uses that as the value for the center pixel.
        for (x = 1; x < this->width - 1; x++) {
            Color_RGBA16 pxOut;
            s32 cvg = this->cvgSave[x + y * this->width];

            // Reject pixels with full coverage. The hardware video filter divot circuit checks if all 3 pixels in the
            // window have partial coverage, here only the center pixel is checked.
            cvg >>= 5;
            if (cvg == 7) {
                continue;
            }

            // This condition is checked before entering this function, it will always pass if it runs.
            if ((R_HREG_MODE == HREG_MODE_PRERENDER ? R_PRERENDER_DIVOT_CONTROL : 0) != 0) {
                if ((R_HREG_MODE == HREG_MODE_PRERENDER ? R_PRERENDER_DIVOT_CONTROL : 0) != 0) {}

                if ((R_HREG_MODE == HREG_MODE_PRERENDER ? R_PRERENDER_DIVOT_CONTROL : 0) ==
                    PRERENDER_DIVOT_PARTIAL_CVG_RED) {
                    // Fill the pixel with full red, likely for debugging
                    pxR = 31;
                    pxG = 0;
                    pxB = 0;
                } else {
                    // Prepare sampling window
                    u8* windowR = &buffR[x - 1];
                    u8* windowG = &buffG[x - 1];
                    u8* windowB = &buffB[x - 1];

                    if ((R_HREG_MODE == HREG_MODE_PRERENDER ? R_PRERENDER_DIVOT_CONTROL : 0) ==
                        PRERENDER_DIVOT_PRINT_COLOR) {
                        osSyncPrintf("red=%3d %3d %3d %3d grn=%3d %3d %3d %3d blu=%3d %3d %3d %3d \n", windowR[0],
                                     windowR[1], windowR[2], MEDIAN3(windowR[0], windowR[1], windowR[2]), windowG[0],
                                     windowG[1], windowG[2], MEDIAN3(windowG[0], windowG[1], windowG[2]), windowB[0],
                                     windowB[1], windowB[2], MEDIAN3(windowB[0], windowB[1], windowB[2]));
                    }

                    // Sample the median value from the 3 pixel wide window

                    // (Both blocks contain the same code)
                    if ((R_HREG_MODE == HREG_MODE_PRERENDER ? R_PRERENDER_DIVOT_CONTROL : 0) ==
                        PRERENDER_DIVOT_ALTERNATE_COLOR) {
                        pxR = MEDIAN3(windowR[0], windowR[1], windowR[2]);
                        pxG = MEDIAN3(windowG[0], windowG[1], windowG[2]);
                        pxB = MEDIAN3(windowB[0], windowB[1], windowB[2]);
                    } else {
                        pxR = MEDIAN3(windowR[0], windowR[1], windowR[2]);
                        pxG = MEDIAN3(windowG[0], windowG[1], windowG[2]);
                        pxB = MEDIAN3(windowB[0], windowB[1], windowB[2]);
                    }
                }

                pxOut.r = pxR;
                pxOut.g = pxG;
                pxOut.b = pxB;
                pxOut.a = 1;
            }
            this->fbufSave[x + y * this->width] = pxOut.rgba;
        }
    }
}

/**
 * Applies the Video Interface anti-aliasing filter and (optionally) the divot filter to `this->fbufSave` using
 * `this->cvgSave`
 */
void PreRender_ApplyFilters(PreRender* this) {
    s32 x;
    s32 y;

    if ((this->cvgSave != NULL) && (this->fbufSave != NULL)) {
        // Apply AA filter
        for (y = 0; y < this->height; y++) {
            for (x = 0; x < this->width; x++) {
                s32 cvg = this->cvgSave[x + y * this->width];

                cvg >>= 5;
                cvg++;
                if (cvg != 8) {
                    // If this pixel has only partial coverage, perform the Video Filter interpolation on it
                    PreRender_AntiAliasFilter(this, x, y);
                }
            }
        }

        if ((R_HREG_MODE == HREG_MODE_PRERENDER ? R_PRERENDER_DIVOT_CONTROL : 0) != 0) {
            // Apply divot filter
            PreRender_DivotFilter(this);
        }
    }
}
