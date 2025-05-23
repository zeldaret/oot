#include "global.h"
#include "ucode_disas.h"

#if DEBUG_FEATURES

typedef struct F3dzexConst {
    /* 0x00 */ u32 value;
    /* 0x04 */ const char* name;
} F3dzexConst; // size = 0x8

typedef struct F3dzexFlag {
    /* 0x00 */ u32 value;
    /* 0x04 */ const char* setName;
    /* 0x08 */ const char* unsetName;
} F3dzexFlag; // size = 0x0C

typedef struct F3dzexRenderMode {
    /* 0x00 */ const char* name;
    /* 0x04 */ u32 value;
    /* 0x08 */ u32 mask;
} F3dzexRenderMode; // size = 0x0C

typedef struct F3dzexSetModeMacroValue {
    /* 0x00 */ const char* name;
    /* 0x04 */ u32 value;
} F3dzexSetModeMacroValue; // size = 0x8

typedef struct F3dzexSetModeMacro {
    /* 0x00 */ const char* name;
    /* 0x04 */ u32 shift;
    /* 0x08 */ u32 len;
    /* 0x0C */ F3dzexSetModeMacroValue values[4];
} F3dzexSetModeMacro; // size = 0x2C

typedef void (*UcodeDisasCallback)(UCodeDisas*, u32);

#define F3DZEX_CONST(name) \
    { name, #name }
#define F3DZEX_FLAG(set, unset) \
    { set, #set, #unset }
#define F3DZEX_RENDERMODE(name, mask) \
    { #name, name, mask }
#define F3DZEX_SETRENDERMACRO(name, shift, len, value0, value1, value2, value3)                 \
    {                                                                                           \
        name, shift, len, {                                                                     \
            { #value0, value0 }, { #value1, value1 }, { #value2, value2 }, { #value3, value3 }, \
        }                                                                                       \
    }

#define DISAS_LOG        \
    if (this->enableLog) \
    PRINTF

void* UCodeDisas_TranslateAddr(UCodeDisas* this, uintptr_t addr) {
    uintptr_t physical = this->segments[SEGMENT_NUMBER(addr)] + SEGMENT_OFFSET(addr);

    return PHYSICAL_TO_VIRTUAL(physical);
}

F3dzexConst sUCodeDisasGeometryModes[] = {
    F3DZEX_CONST(G_ZBUFFER),     F3DZEX_CONST(G_TEXTURE_ENABLE),
    F3DZEX_CONST(G_SHADE),       F3DZEX_CONST(G_SHADING_SMOOTH),
    F3DZEX_CONST(G_CULL_FRONT),  F3DZEX_CONST(G_CULL_BACK),
    F3DZEX_CONST(G_FOG),         F3DZEX_CONST(G_LIGHTING),
    F3DZEX_CONST(G_TEXTURE_GEN), F3DZEX_CONST(G_TEXTURE_GEN_LINEAR),
    F3DZEX_CONST(G_LOD),
};

F3dzexFlag sUCodeDisasMtxFlags[] = {
    F3DZEX_FLAG(G_MTX_PROJECTION, G_MTX_MODELVIEW),
    F3DZEX_FLAG(G_MTX_LOAD, G_MTX_MUL),
    F3DZEX_FLAG(G_MTX_PUSH, G_MTX_NOPUSH),
};

typedef enum CombinerArg {
    COMBINER_A = 1,
    COMBINER_B,
    COMBINER_C,
    COMBINER_D
} CombinerArg;

const char* UCodeDisas_GetCombineColorName(u32 value, u32 arg) {
    const char* ret = "?";

    switch (value) {
        case G_CCMUX_COMBINED:
            ret = "COMBINED";
            break;

        case G_CCMUX_TEXEL0:
            ret = "TEXEL0";
            break;

        case G_CCMUX_TEXEL1:
            ret = "TEXEL1";
            break;

        case G_CCMUX_PRIMITIVE:
            ret = "PRIMITIVE";
            break;

        case G_CCMUX_SHADE:
            ret = "SHADE";
            break;

        case G_CCMUX_ENVIRONMENT:
            ret = "ENVIRONMENT";
            break;

        case 6: // G_CCMUX_CENTER, G_CCMUX_SCALE, G_CCMUX_1
            ret = (arg == COMBINER_B) ? "CENTER" : (arg == COMBINER_C) ? "SCALE" : "1";
            break;

        case 7: // G_CCMUX_NOISE, G_CCMUX_K4, G_CCMUX_COMBINED_ALPHA, G_CCMUX_0
            ret = (arg == COMBINER_A)   ? "NOISE"
                  : (arg == COMBINER_B) ? "K4"
                  : (arg == COMBINER_C) ? "COMBINED_ALPHA"
                                        : "0";
            break;

        default:
            if (arg == COMBINER_C) {
                switch (value) {
                    case G_CCMUX_TEXEL0_ALPHA:
                        ret = "TEXEL0_ALPHA";
                        break;

                    case G_CCMUX_TEXEL1_ALPHA:
                        ret = "TEXEL1_ALPHA";
                        break;

                    case G_CCMUX_PRIMITIVE_ALPHA:
                        ret = "PRIMITIVE_ALPHA";
                        break;

                    case G_CCMUX_SHADE_ALPHA:
                        ret = "SHADE_ALPHA";
                        break;

                    case G_CCMUX_ENV_ALPHA:
                        ret = "ENV_ALPHA";
                        break;

                    case G_CCMUX_LOD_FRACTION:
                        ret = "LOD_FRACTION";
                        break;

                    case G_CCMUX_PRIM_LOD_FRAC:
                        ret = "PRIM_LOD_FRAC";
                        break;

                    case G_CCMUX_K5:
                        ret = "K5";
                        break;

                    default:
                        ret = "0";
                        break;
                }
            } else {
                ret = "0";
            }
    }
    return ret;
}

const char* UCodeDisas_GetCombineAlphaName(u32 value, u32 arg) {
    const char* ret = "?";

    switch (value) {
        case 0: // G_ACMUX_LOD_FRACTION, G_ACMUX_COMBINED
            ret = (arg == COMBINER_C) ? "LOD_FRACTION" : "COMBINED";
            break;

        case G_ACMUX_TEXEL0:
            ret = "TEXEL0";
            break;

        case G_ACMUX_TEXEL1:
            ret = "TEXEL1";
            break;

        case G_ACMUX_PRIMITIVE:
            ret = "PRIMITIVE";
            break;

        case G_ACMUX_SHADE:
            ret = "SHADE";
            break;

        case G_ACMUX_ENVIRONMENT:
            ret = "ENVIRONMENT";
            break;

        case 6: // G_ACMUX_PRIM_LOD_FRAC, G_ACMUX_1
            ret = (arg == COMBINER_C) ? "PRIM_LOD_FRAC" : "1";
            break;

        case G_ACMUX_0:
            ret = "0";
            break;
    }
    return ret;
}

void UCodeDisas_Init(UCodeDisas* this) {
    u32 i;

    bzero(this, sizeof(UCodeDisas));
    for (i = 0; i < NUM_SEGMENTS; i++) {
        this->segments[i] = gSegments[i];
    }
}

void UCodeDisas_Destroy(UCodeDisas* this) {
}

void UCodeDisas_SetCurUCodeImpl(UCodeDisas* this, void* ptr) {
    s32 i;

    for (i = 0; i < this->ucodeInfoCount; i++) {
        if (ptr == this->ucodeInfo[i].ptr) {
            this->ucodeType = this->ucodeInfo[i].type;
            break;
        }
    }
    if (i >= this->ucodeInfoCount) {
        DISAS_LOG(T("マイクロコードが一致しなかった\n", "Microcode did not match\n"));
        this->ucodeType = UCODE_TYPE_NULL;
    }
}

void UCodeDisas_PrintGeometryMode(UCodeDisas* this, u32 mode) {
    u32 first = true;
    s32 i;

    for (i = 0; i < ARRAY_COUNT(sUCodeDisasGeometryModes); i++) {
        if ((sUCodeDisasGeometryModes[i].value & mode) == 0) {
            continue;
        }

        if (first) {
        } else {
            DISAS_LOG("|");
        }
        first = false;

        DISAS_LOG("%s", sUCodeDisasGeometryModes[i].name);
    }
}

void UCodeDisas_PrintRenderMode(UCodeDisas* this, u32 mode) {
    static F3dzexRenderMode sUCodeDisasRenderModeFlags[] = {
        F3DZEX_RENDERMODE(AA_EN, 0x8),
        F3DZEX_RENDERMODE(Z_CMP, 0x10),
        F3DZEX_RENDERMODE(Z_UPD, 0x20),
        F3DZEX_RENDERMODE(IM_RD, 0x40),
        F3DZEX_RENDERMODE(CLR_ON_CVG, 0x80),
        F3DZEX_RENDERMODE(CVG_DST_CLAMP, 0x300),
        F3DZEX_RENDERMODE(CVG_DST_WRAP, 0x300),
        F3DZEX_RENDERMODE(CVG_DST_FULL, 0x300),
        F3DZEX_RENDERMODE(CVG_DST_SAVE, 0x300),
        F3DZEX_RENDERMODE(ZMODE_OPA, 0xC00),
        F3DZEX_RENDERMODE(ZMODE_INTER, 0xC00),
        F3DZEX_RENDERMODE(ZMODE_XLU, 0xC00),
        F3DZEX_RENDERMODE(ZMODE_DEC, 0xC00),
        F3DZEX_RENDERMODE(CVG_X_ALPHA, 0x1000),
        F3DZEX_RENDERMODE(ALPHA_CVG_SEL, 0x2000),
        F3DZEX_RENDERMODE(FORCE_BL, 0x4000),
    };
    static const char* sBlenderInputNames[4][4] = {
        { "G_BL_CLR_IN", "G_BL_CLR_MEM", "G_BL_CLR_BL", "G_BL_CLR_FOG" },
        { "G_BL_A_IN", "G_BL_A_FOG", "G_BL_A_SHADE", "G_BL_0" },
        { "G_BL_CLR_IN", "G_BL_CLR_MEM", "G_BL_CLR_BL", "G_BL_CLR_FOG" },
        { "G_BL_1MA", "G_BL_A_MEM", "G_BL_1", "G_BL_0" },
    };

    s32 i;
    s32 a;
    s32 b;

    for (i = 0; i < ARRAY_COUNT(sUCodeDisasRenderModeFlags); i++) {
        if ((mode & sUCodeDisasRenderModeFlags[i].mask) != sUCodeDisasRenderModeFlags[i].value) {
            continue;
        }

        DISAS_LOG("%s|", sUCodeDisasRenderModeFlags[i].name);
    }

    a = (mode >> 18) & 0x3333;
    b = (mode >> 16) & 0x3333;

    // clang-format off
    if (this->enableLog == 0) {} else { PRINTF("\nGBL_c1(%s, %s, %s, %s)|",
        sBlenderInputNames[0][a >> 12 & 3], sBlenderInputNames[1][a >> 8 & 3], sBlenderInputNames[2][a >> 4 & 3], sBlenderInputNames[3][a >> 0 & 3]);
    }
    // clang-format on

    if (this->enableLog) {
        PRINTF("\nGBL_c2(%s, %s, %s, %s)", sBlenderInputNames[0][b >> 12 & 3], sBlenderInputNames[1][b >> 8 & 3],
               sBlenderInputNames[2][b >> 4 & 3], sBlenderInputNames[3][b >> 0 & 3]);
    }
}

void UCodeDisas_PrintVertices(UCodeDisas* this, Vtx* vtx, s32 count, s32 start) {
    s32 i;

    for (i = 0; i < count; i++) {
        if (this->geometryMode & G_LIGHTING) {
            DISAS_LOG("\n{{%6d, %6d, %6d, %d, %6d, %6d, %3d, %3d, %3d, %3d}}, /* vc%d */", vtx->n.ob[0], vtx->n.ob[1],
                      vtx->n.ob[2], vtx->n.flag, vtx->n.tc[0], vtx->n.tc[1], vtx->n.n[0], vtx->n.n[1], vtx->n.n[2],
                      vtx->n.a, start + i);
        } else {
            DISAS_LOG("\n{{%6d, %6d, %6d, %d, %6d, %6d, %3d, %3d, %3d, %3d}}, /* vn%d */", vtx->v.ob[0], vtx->v.ob[1],
                      vtx->v.ob[2], vtx->v.flag, vtx->v.tc[0], vtx->v.tc[1], vtx->v.cn[0], vtx->v.cn[1], vtx->v.cn[2],
                      vtx->v.cn[3], start + i);
        }
        vtx++;

        if (1) {}
    }
}

void UCodeDisas_Disassemble(UCodeDisas* this, Gfx* ptr) {
    u32 pad;
    uintptr_t addr;
    u32 rdpHalf;
    u16 linkDlLow;
    u8 sid;
    u8 cmd;
    s32 i;
    u32 exit;
    Gfx curGfx[1];

    exit = false;

    while (!exit) {
        this->dlCnt++;

        ptr = UCodeDisas_TranslateAddr(this, (uintptr_t)ptr);
        DISAS_LOG("%08x:", ptr);

        *curGfx = *ptr;
        cmd = curGfx->noop.cmd;
        addr = (uintptr_t)UCodeDisas_TranslateAddr(this, (uintptr_t)curGfx->noop.value.addr);

        DISAS_LOG("%08x-%08x:", curGfx->words.w0, curGfx->words.w1);

        for (i = 0; i < this->dlDepth; i++) {
            DISAS_LOG(" ");
        }

        switch (cmd) {
            case G_SPNOOP: {
                DISAS_LOG("gsSPNoOp(),");
            } break;

            case G_DL: {
                Gdma dma = ptr->dma;

                switch (dma.par) {
                    case G_DL_PUSH: {
                        DISAS_LOG("gsSPDisplayList(0x%08x),", dma.addr);
                        this->dlStack[this->dlDepth++] = (Gfx*)(ptr + 1);
                        ptr = (Gfx*)addr - 1;
                    } break;

                    case G_DL_NOPUSH: {
                        DISAS_LOG("gsSPBranchList(0x%08x),", dma.addr);
                        ptr = (Gfx*)addr - 1;
                    } break;
                }
            } break;

            case G_RDPHALF_1: {
                DISAS_LOG("RDPHALF_1(0x%08x),", curGfx->dma.addr);
                rdpHalf = curGfx->dma.addr;
            } break;

            case G_TEXRECT: {
                Gtexrect rect = *(Gtexrect*)ptr;

                DISAS_LOG("gsSPTextureRectangle(%d,%d,%d,%d,%d,%d,%d,%d,%d),", rect.xl, rect.yl, rect.xh, rect.yh,
                          rect.tile, ptr[1].words.w1 >> 16, ptr[1].words.w1 & 0xFFFF, ptr[2].words.w1 >> 16,
                          ptr[2].words.w1 & 0xFFFF);

                ptr += 3 - 1;
                this->pipeSyncRequired = true;
            } break;

            case G_LOAD_UCODE: {
                if (curGfx->dma.len == SP_UCODE_DATA_SIZE - 1) {
                    DISAS_LOG("gsSPLoadUcode(0x%08x, 0x%08x),", curGfx->dma.addr, rdpHalf);
                } else {
                    DISAS_LOG("gsSPLoadUcodeEx(0x%08x, 0x%08x, 0x%05x),", curGfx->dma.addr, rdpHalf,
                              curGfx->dma.len + 1);
                }
                UCodeDisas_SetCurUCodeImpl(this, UCodeDisas_TranslateAddr(this, curGfx->dma.addr));
                this->loaducodeCnt++;
            } break;

            case G_ENDDL: {
                DISAS_LOG("gsSPEndDisplayList(),");
                if (this->dlDepth <= 0) {
                    exit = true;
                } else {
                    ptr = this->dlStack[--this->dlDepth] - 1;
                }
            } break;

            case G_SETTILE: {
                Gsettile settile = ptr->settile;

                DISAS_LOG("gsDPSetTile(%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d),", settile.fmt, settile.siz, settile.line,
                          settile.tmem, settile.tile, settile.palette, (settile.ct << 1) + settile.mt, settile.maskt,
                          settile.shiftt, (settile.cs << 1) + settile.ms, settile.masks, settile.shifts);

                if (this->tileSyncRequired) {
                    DISAS_LOG(T("### TileSyncが必要です。\n", "### TileSync is required.\n"));
                    this->syncErr++;
                }
            } break;

            case G_LOADTILE: {
                Gloadtile loadtile = ptr->loadtile;

                DISAS_LOG("gsDPLoadTile(%d,%d,%d,%d,%d),", loadtile.tile, loadtile.sl, loadtile.tl, loadtile.sh,
                          loadtile.th);
            } break;

            case G_LOADBLOCK: {
                Gloadtile loadtile = ptr->loadtile;

                DISAS_LOG("gsDPLoadBlock(%d,%d,%d,%d,%d),", loadtile.tile, loadtile.sl, loadtile.tl, loadtile.sh,
                          loadtile.th);

                if (this->loadSyncRequired) {
                    DISAS_LOG(T("### LoadSyncが必要です。\n", "### LoadSync is required.\n"));
                    this->syncErr++;
                }
                this->pipeSyncRequired = true;
            } break;

            case G_SETTILESIZE: {
                Gloadtile loadtile = ptr->loadtile;

                DISAS_LOG("gsDPSetTileSize(%d,%d,%d,%d,%d),", loadtile.tile, loadtile.sl, loadtile.tl, loadtile.sh,
                          loadtile.th);
            } break;

            case G_LOADTLUT: {
                Gloadtlut loadtlut = ptr->loadtlut;

                DISAS_LOG("gsDPLoadTLUTCmd(%d,%d),", loadtlut.tile, loadtlut.sh >> 2);
            } break;

            case G_SETCOMBINE: {
                Gsetcombine setcombine = ptr->setcombine;

                DISAS_LOG("gsDPSetCombineLERP(%s,%s,%s,%s, %s,%s,%s,%s, %s,%s,%s,%s, %s,%s,%s,%s),",
                          UCodeDisas_GetCombineColorName(setcombine.a0, COMBINER_A),
                          UCodeDisas_GetCombineColorName(setcombine.b0, COMBINER_B),
                          UCodeDisas_GetCombineColorName(setcombine.c0, COMBINER_C),
                          UCodeDisas_GetCombineColorName(setcombine.d0, COMBINER_D),

                          UCodeDisas_GetCombineAlphaName(setcombine.Aa0, COMBINER_A),
                          UCodeDisas_GetCombineAlphaName(setcombine.Ab0, COMBINER_B),
                          UCodeDisas_GetCombineAlphaName(setcombine.Ac0, COMBINER_C),
                          UCodeDisas_GetCombineAlphaName(setcombine.Ad0, COMBINER_D),

                          UCodeDisas_GetCombineColorName(setcombine.a1, COMBINER_A),
                          UCodeDisas_GetCombineColorName(setcombine.b1, COMBINER_B),
                          UCodeDisas_GetCombineColorName(setcombine.c1, COMBINER_C),
                          UCodeDisas_GetCombineColorName(setcombine.d1, COMBINER_D),

                          UCodeDisas_GetCombineAlphaName(setcombine.Aa1, COMBINER_A),
                          UCodeDisas_GetCombineAlphaName(setcombine.Ab1, COMBINER_B),
                          UCodeDisas_GetCombineAlphaName(setcombine.Ac1, COMBINER_C),
                          UCodeDisas_GetCombineAlphaName(setcombine.Ad1, COMBINER_D));

                if (this->pipeSyncRequired) {
                    DISAS_LOG(T("### PipeSyncが必要です。\n", "### PipeSync is required.\n"));
                    this->syncErr++;
                }
            } break;

            case G_SETOTHERMODE_H: {
                static F3dzexSetModeMacro sUCodeDisasModeHMacros[] = {
                    F3DZEX_SETRENDERMACRO("SetAlphaDither", G_MDSFT_ALPHADITHER, 2, G_AD_PATTERN, G_AD_NOTPATTERN,
                                          G_AD_NOISE, G_AD_DISABLE),
                    F3DZEX_SETRENDERMACRO("SetColorDither", G_MDSFT_RGBDITHER, 2, G_CD_MAGICSQ, G_CD_BAYER, G_CD_NOISE,
                                          -1),
                    F3DZEX_SETRENDERMACRO("SetCombineKey", G_MDSFT_COMBKEY, 1, G_CK_NONE, G_CK_KEY, -1, -1),
                    F3DZEX_SETRENDERMACRO("SetTextureConvert", G_MDSFT_TEXTCONV, 3, G_TC_CONV, G_TC_FILTCONV, G_TC_FILT,
                                          -1),
                    F3DZEX_SETRENDERMACRO("SetTextureFilter", G_MDSFT_TEXTFILT, 2, G_TF_POINT, G_TF_AVERAGE,
                                          G_TF_BILERP, -1),
                    F3DZEX_SETRENDERMACRO("SetTextureLUT", G_MDSFT_TEXTLUT, 2, G_TT_NONE, G_TT_RGBA16, G_TT_IA16, -1),
                    F3DZEX_SETRENDERMACRO("SetTextureLOD", G_MDSFT_TEXTLOD, 1, G_TL_TILE, G_TL_LOD, -1, -1),
                    F3DZEX_SETRENDERMACRO("SetTextureDetail", G_MDSFT_TEXTDETAIL, 2, G_TD_CLAMP, G_TD_SHARPEN,
                                          G_TD_DETAIL, -1),
                    F3DZEX_SETRENDERMACRO("SetTexturePersp", G_MDSFT_TEXTPERSP, 1, G_TP_PERSP, G_TP_NONE, -1, -1),
                    F3DZEX_SETRENDERMACRO("SetCycleType", G_MDSFT_CYCLETYPE, 2, G_CYC_1CYCLE, G_CYC_2CYCLE, G_CYC_COPY,
                                          G_CYC_FILL),
                    F3DZEX_SETRENDERMACRO("SetColorDither", G_MDSFT_COLORDITHER, 2, G_CD_MAGICSQ, G_CD_BAYER,
                                          G_CD_NOISE, -1),
                    F3DZEX_SETRENDERMACRO("PipelineMode", G_MDSFT_PIPELINE, 1, G_PM_1PRIMITIVE, G_PM_NPRIMITIVE, -1,
                                          -1),
                };

                u32 len = curGfx->setothermodeH.len + 1;
                u32 sft = (-curGfx->setothermodeH.sft - len) + 32;
                u32 s2 = curGfx->setothermodeH.data * 1;
                u32 j;
                u32 k;

                for (j = 0; j < ARRAY_COUNTU(sUCodeDisasModeHMacros); j++) {
                    if (sft == sUCodeDisasModeHMacros[j].shift) {
                        for (k = 0; k < ARRAY_COUNTU(sUCodeDisasModeHMacros[j].values); k++) {
                            if (s2 == sUCodeDisasModeHMacros[j].values[k].value) {
                                DISAS_LOG("gsDP%s(%s),", sUCodeDisasModeHMacros[j].name,
                                          sUCodeDisasModeHMacros[j].values[k].name);
                                goto found_othermode_hi_macro;
                            }
                        }
                    }
                }
                DISAS_LOG("gsSPSetOtherModeH(%d, %d, 0x%08x),", sft, len, s2);

            found_othermode_hi_macro:
                this->modeH &= ((1 - (1 << len)) << sft) - 1;
                this->modeH |= s2;

                if (this->pipeSyncRequired) {
                    DISAS_LOG(T("### PipeSyncが必要です。\n", "### PipeSync is required.\n"));
                    this->syncErr++;
                }
            } break;

            case G_SETOTHERMODE_L: {
                static F3dzexSetModeMacro sUCodeDisasModeLMacros[] = {
                    F3DZEX_SETRENDERMACRO("gsDPSetAlphaCompare", G_MDSFT_ALPHACOMPARE, 2, G_AC_NONE, G_AC_THRESHOLD,
                                          G_AC_DITHER, -1),
                    F3DZEX_SETRENDERMACRO("gsDPSetDepthSource", G_MDSFT_ZSRCSEL, 1, G_ZS_PIXEL, G_ZS_PRIM, -1, -1),
                };

                u32 len = curGfx->setothermodeL.len + 1;
                u32 sft = (-curGfx->setothermodeL.sft - len) + 32;
                u32 s2 = curGfx->setothermodeL.data * 1;
                u32 j;
                u32 k;

                if (sft == G_MDSFT_RENDERMODE) {
                    DISAS_LOG("\ngsDPSetRenderBlender(");
                    UCodeDisas_PrintRenderMode(this, s2);
                    DISAS_LOG("\n),");
                } else {
                    for (j = 0; j * 1 < ARRAY_COUNTU(sUCodeDisasModeLMacros); j++) {
                        if (sft == sUCodeDisasModeLMacros[j].shift) {
                            for (k = 0; k < ARRAY_COUNTU(sUCodeDisasModeLMacros[j].values); k++) {
                                if (s2 == sUCodeDisasModeLMacros[j].values[k].value) {
                                    DISAS_LOG("gsDP%s(%s),", sUCodeDisasModeLMacros[j].name,
                                              sUCodeDisasModeLMacros[j].values[k].name);
                                    goto found_othermode_lo_macro;
                                }
                            }
                        }
                    }
                    DISAS_LOG("gsSPSetOtherModeL(%d, %d, 0x%08x),", sft, len, s2);
                }

            found_othermode_lo_macro:
                this->modeL &= (((1 - (1 << len)) << sft) - 1);
                this->modeL |= s2;

                if (this->pipeSyncRequired) {
                    DISAS_LOG(T("### PipeSyncが必要です。\n", "### PipeSync is required.\n"));
                    this->syncErr++;
                }
            } break;

            case G_RDPSETOTHERMODE: {
                DISAS_LOG("gsDPSetOtherMode(0x%08x, 0x%08x),", curGfx->words.w0 & 0xFFFFFF, curGfx->words.w1);
                this->modeH = curGfx->words.w0 & 0xFFF;
                this->modeL = curGfx->words.w1;

                if (this->pipeSyncRequired) {
                    DISAS_LOG(T("### PipeSyncが必要です。\n", "### PipeSync is required.\n"));
                    this->syncErr++;
                }
            } break;

            case G_SETSCISSOR: {
                Gfillrect setscissor = ptr->fillrect;
                const char* modeStr;

                modeStr = (setscissor.pad == G_SC_NON_INTERLACE)    ? "G_SC_NON_INTERLACE"
                          : (setscissor.pad == G_SC_ODD_INTERLACE)  ? "G_SC_ODD_INTERLACE"
                          : (setscissor.pad == G_SC_EVEN_INTERLACE) ? "G_SC_EVEN_INTERLACE"
                                                                    : "???";

                if (setscissor.x0frac | setscissor.y0frac | setscissor.x1frac | setscissor.y1frac) {
                    if (1) {}
                    DISAS_LOG("gsDPSetScissorFrac(%s, %d, %d, %d, %d),", modeStr,
                              (setscissor.x0 << 2) + setscissor.x0frac, (setscissor.y0 << 2) + setscissor.y0frac,
                              (setscissor.x1 << 2) + setscissor.x1frac, (setscissor.y1 << 2) + setscissor.y1frac);
                } else {
                    DISAS_LOG("gsDPSetScissor(%s, %d, %d, %d, %d),", modeStr, setscissor.x0, setscissor.y0,
                              setscissor.x1, setscissor.y1);
                }
            } break;

            case G_FILLRECT: {
                Gfillrect fillrect = ptr->fillrect;

                DISAS_LOG("gsDPFillRectangle(%d, %d, %d, %d),", fillrect.x1, fillrect.y1, fillrect.x0, fillrect.y0);

                this->pipeSyncRequired = true;
            } break;

            case G_SETCIMG: {
                u32 fmt = ((curGfx->words.w0 & 0xE00000) >> 0x15) & 0xFF;
                u32 siz = ((curGfx->words.w0 & 0x180000) >> 0x13) & 0xFF;

                DISAS_LOG("gsDPSetColorImage(G_IM_FMT_%s, G_IM_SIZ_%s, %d, 0x%08x(0x%08x) ),",
                          (fmt == G_IM_FMT_RGBA)  ? "RGBA"
                          : (fmt == G_IM_FMT_YUV) ? "YUV"
                          : (fmt == G_IM_FMT_CI)  ? "CI"
                          : (fmt == G_IM_FMT_IA)  ? "IA"
                                                  : "I",
                          (siz == G_IM_SIZ_4b)    ? "4b"
                          : (siz == G_IM_SIZ_8b)  ? "8b"
                          : (siz == G_IM_SIZ_16b) ? "16b"
                                                  : "32b",
                          (curGfx->dma.len & 0xFFF) + 1, curGfx->setimg.dram, addr);

                if (this->pipeSyncRequired) {
                    DISAS_LOG(T("### PipeSyncが必要です。\n", "### PipeSync is required.\n"));
                    this->syncErr++;
                }
            } break;

            case G_SETZIMG: {
                DISAS_LOG("gsDPSetDepthImage(0x%08x(0x%08x)),", curGfx->setimg.dram, addr);

                if (this->pipeSyncRequired) {
                    DISAS_LOG(T("### PipeSyncが必要です。\n", "### PipeSync is required.\n"));
                    this->syncErr++;
                }
            } break;

            case G_SETTIMG: {
                u32 fmt = ((curGfx->words.w0 & 0xE00000) >> 0x15) & 0xFF;
                u32 siz = ((curGfx->words.w0 & 0x180000) >> 0x13) & 0xFF;

                DISAS_LOG("gsDPSetTextureImage(G_IM_FMT_%s, G_IM_SIZ_%s, %d, 0x%08x(0x%08x)),",
                          (fmt == G_IM_FMT_RGBA)  ? "RGBA"
                          : (fmt == G_IM_FMT_YUV) ? "YUV"
                          : (fmt == G_IM_FMT_CI)  ? "CI"
                          : (fmt == G_IM_FMT_IA)  ? "IA"
                                                  : "I",
                          (siz == G_IM_SIZ_4b)    ? "4b"
                          : (siz == G_IM_SIZ_8b)  ? "8b"
                          : (siz == G_IM_SIZ_16b) ? "16b"
                                                  : "32b",
                          (curGfx->dma.len & 0xFFF) + 1, curGfx->setimg.dram, addr);
            } break;

            case G_SETENVCOLOR: {
                DISAS_LOG("gsDPSetEnvColor(%d, %d, %d, %d),", curGfx->setcolor.r, curGfx->setcolor.g,
                          curGfx->setcolor.b, curGfx->setcolor.a);

                if (this->pipeSyncRequired) {
                    DISAS_LOG(T("### PipeSyncが必要です。\n", "### PipeSync is required.\n"));
                    this->syncErr++;
                }
            } break;

            case G_SETBLENDCOLOR: {
                DISAS_LOG("gsDPSetBlendColor(%d, %d, %d, %d),", curGfx->setcolor.r, curGfx->setcolor.g,
                          curGfx->setcolor.b, curGfx->setcolor.a);

                if (this->pipeSyncRequired) {
                    DISAS_LOG(T("### PipeSyncが必要です。\n", "### PipeSync is required.\n"));
                    this->syncErr++;
                }
            } break;

            case G_SETFOGCOLOR: {
                DISAS_LOG("gsDPSetFogColor(%d, %d, %d, %d),", curGfx->setcolor.r, curGfx->setcolor.g,
                          curGfx->setcolor.b, curGfx->setcolor.a);

                if (this->pipeSyncRequired) {
                    DISAS_LOG(T("### PipeSyncが必要です。\n", "### PipeSync is required.\n"));
                    this->syncErr++;
                }
            } break;

            case G_SETFILLCOLOR: {
                DISAS_LOG("gsDPSetFillColor(0x%08x),", curGfx->setcolor.color);

                if (this->pipeSyncRequired) {
                    DISAS_LOG(T("### PipeSyncが必要です。\n", "### PipeSync is required.\n"));
                    this->syncErr++;
                }
            } break;

            case G_SETPRIMDEPTH: {
                DISAS_LOG("gsDPSetPrimDepth(%d, %d),", curGfx->setprimdepth.z, curGfx->setprimdepth.dz);

                if (this->pipeSyncRequired) {
                    DISAS_LOG(T("### PipeSyncが必要です。\n", "### PipeSync is required.\n"));
                    this->syncErr++;
                }
            } break;

            case G_SETPRIMCOLOR: {
                DISAS_LOG("gsDPSetPrimColor(%d, %d, %d, %d, %d, %d),", curGfx->setcolor.prim_min_level,
                          curGfx->setcolor.prim_level, curGfx->setcolor.r, curGfx->setcolor.g, curGfx->setcolor.b,
                          curGfx->setcolor.a);
            } break;

            case G_RDPFULLSYNC: {
                DISAS_LOG("gsDPFullSync(),");

                if (this->pipeSyncRequired) {
                    DISAS_LOG(T("### PipeSyncが必要です。\n", "### PipeSync is required.\n"));
                    this->syncErr++;
                }
            } break;

            case G_RDPTILESYNC: {
                DISAS_LOG("gsDPTileSync(),");
                this->tileSyncRequired = false;
            } break;

            case G_RDPPIPESYNC: {
                DISAS_LOG("gsDPPipeSync(),");
                this->pipeSyncRequired = false;
            } break;

            case G_RDPLOADSYNC: {
                DISAS_LOG("gsDPLoadSync(),");
                this->loadSyncRequired = false;
            } break;

            case G_NOOP: {
                switch (curGfx->noop.type) {
                    case 0: {
                        if (curGfx->noop.value.u32 == 0) {
                            DISAS_LOG("gsDPNoOp(),");
                        } else {
                            DISAS_LOG("gsDPNoOpTag(%08x),", curGfx->noop.value.u32);
                        }
                    } break;

                    case 1: {
                        DISAS_LOG("count_gsDPNoOpHere([%s:%d]),", curGfx->noop.value.str, curGfx->noop.len);
                    } break;

                    case 7: {
                        DISAS_LOG("count_gsDPNoOpOpenDisp([%s:%d]),", curGfx->noop.value.str, curGfx->noop.len);
                    } break;

                    case 8: {
                        DISAS_LOG("count_gsDPNoOpCloseDisp([%s:%d]),", curGfx->noop.value.str, curGfx->noop.len);
                    } break;

                    case 2: {
                        DISAS_LOG("count_gsDPNoOpString(%c%s%c, %d),", '"', curGfx->noop.value.str, '"',
                                  curGfx->noop.len);
                    } break;

                    case 3: {
                        DISAS_LOG("count_gsDPNoOpWord(0x%08x, %d),", curGfx->noop.value.u32, curGfx->noop.len);
                    } break;

                    case 4: {
                        DISAS_LOG("count_gsDPNoOpFloat(%8.3f, %d),", curGfx->noop.value.f32, curGfx->noop.len);
                    } break;

                    case 5: {
                        if (curGfx->noop.len == 0) {
                            DISAS_LOG("count_gsDPNoOpQuiet(),");
                        } else {
                            DISAS_LOG("count_gsDPNoOpVerbose(),");
                        }
                        this->enableLog = curGfx->noop.len;
                    } break;

                    case 6: {
                        //! @bug arguments are not printed
                        DISAS_LOG("count_gsDPNoOpCallBack(%08x,%d),");
                        ((UcodeDisasCallback)curGfx->noop.value.callback)(this, curGfx->noop.len);
                    } break;

                    default: {
                        DISAS_LOG("gsDPNoOpTag3(%02x, %08x, %04x),", curGfx->noop.type, curGfx->noop.value.u32,
                                  curGfx->noop.len);
                    } break;
                }
            } break;

            default: {
                switch (this->ucodeType) {
                    case UCODE_TYPE_F3DZEX:
                    case UCODE_TYPE_UNK: {
                        switch (cmd) {
                            case G_MTX: {
                                Gdma2 gmtx = ptr->dma2;
                                u32 params;
                                MtxF mtxF;
                                s32 j = 0;

                                DISAS_LOG("gsSPMatrix(0x%08x(%08x), 0", gmtx.addr, addr);

                                params = gmtx.par ^ G_MTX_PUSH;

                                for (; j != ARRAY_COUNT(sUCodeDisasMtxFlags); j++) {
                                    DISAS_LOG("|%s", (sUCodeDisasMtxFlags[j].value & params)
                                                         ? sUCodeDisasMtxFlags[j].setName
                                                         : sUCodeDisasMtxFlags[j].unsetName);
                                }
                                DISAS_LOG("),", gmtx.addr); //! @bug gmtx.addr shouldn't be here

                                if (this->enableLog >= 2) {
                                    MtxConv_L2F(&mtxF, (Mtx*)addr);
                                    DISAS_LOG("\n");

                                    //! @bug  %.04x.%04x is a typo, should be  %04x.%04x
                                    // clang-format off
                                    DISAS_LOG(
                                        "/ %04x.%04x %04x.%04x %04x.%04x %.04x.%04x \\/ %12.6f %12.6f %12.6f %12.6f \\\n"
                                        "| %04x.%04x %04x.%04x %04x.%04x %.04x.%04x || %12.6f %12.6f %12.6f %12.6f |\n"
                                        "| %04x.%04x %04x.%04x %04x.%04x %.04x.%04x || %12.6f %12.6f %12.6f %12.6f |\n"
                                        "\\ %04x.%04x %04x.%04x %04x.%04x %.04x.%04x /\\ %12.6f %12.6f %12.6f %12.6f /\n",
                                        ((Mtx*)addr)->intPart[0][0], ((Mtx*)addr)->fracPart[0][0],
                                        ((Mtx*)addr)->intPart[1][0], ((Mtx*)addr)->fracPart[1][0],
                                        ((Mtx*)addr)->intPart[2][0], ((Mtx*)addr)->fracPart[2][0],
                                        ((Mtx*)addr)->intPart[3][0], ((Mtx*)addr)->fracPart[3][0],
                                        mtxF.mf[0][0], mtxF.mf[1][0], mtxF.mf[2][0], mtxF.mf[3][0],
                                        ((Mtx*)addr)->intPart[0][1], ((Mtx*)addr)->fracPart[0][1],
                                        ((Mtx*)addr)->intPart[1][1], ((Mtx*)addr)->fracPart[1][1],
                                        ((Mtx*)addr)->intPart[2][1], ((Mtx*)addr)->fracPart[2][1],
                                        ((Mtx*)addr)->intPart[3][1], ((Mtx*)addr)->fracPart[3][1],
                                        mtxF.mf[0][1], mtxF.mf[1][1], mtxF.mf[2][1], mtxF.mf[3][1],
                                        ((Mtx*)addr)->intPart[0][2], ((Mtx*)addr)->fracPart[0][2],
                                        ((Mtx*)addr)->intPart[1][2], ((Mtx*)addr)->fracPart[1][2],
                                        ((Mtx*)addr)->intPart[2][2], ((Mtx*)addr)->fracPart[2][2],
                                        ((Mtx*)addr)->intPart[3][2], ((Mtx*)addr)->fracPart[3][2],
                                        mtxF.mf[0][2], mtxF.mf[1][2], mtxF.mf[2][2], mtxF.mf[3][2],
                                        ((Mtx*)addr)->intPart[0][3], ((Mtx*)addr)->fracPart[0][3],
                                        ((Mtx*)addr)->intPart[1][3], ((Mtx*)addr)->fracPart[1][3],
                                        ((Mtx*)addr)->intPart[2][3], ((Mtx*)addr)->fracPart[2][3],
                                        ((Mtx*)addr)->intPart[3][3], ((Mtx*)addr)->fracPart[3][3],
                                        mtxF.mf[0][3], mtxF.mf[1][3], mtxF.mf[2][3], mtxF.mf[3][3]);
                                    // clang-format on
                                }
                            } break;

                            case G_VTX: {
                                u32 numv = curGfx->words.w0;
                                u32 vbidx;

                                numv >>= 12;
                                numv &= 0xFF;
                                vbidx = (curGfx->vtx.par >> 1) - numv;

                                DISAS_LOG("gsSPVertex(0x%08x(0x%08x), %d, %d),", curGfx->vtx.addr, addr, numv, vbidx);

                                this->vtxCnt += numv;
                                this->spvtxCnt++;

                                if (this->enableLog >= 2) {
                                    UCodeDisas_PrintVertices(this, (Vtx*)addr, numv, vbidx);
                                }
                            } break;

                            case G_MODIFYVTX: {
                                DISAS_LOG("gsSPModifyVertex(%d, %s, %08x),", curGfx->dma.par,
                                          (curGfx->dma.len == G_MWO_POINT_RGBA)       ? "G_MWO_POINT_RGBA"
                                          : (curGfx->dma.len == G_MWO_POINT_ST)       ? "G_MWO_POINT_ST"
                                          : (curGfx->dma.len == G_MWO_POINT_XYSCREEN) ? "G_MWO_POINT_XYSCREEN"
                                          : (curGfx->dma.len == G_MWO_POINT_ZSCREEN)  ? "G_MWO_POINT_ZSCREEN"
                                                                                      : "G_MWO_POINT_????",
                                          curGfx->dma.addr);
                                this->vtxCnt += curGfx->dma.par;
                                this->spvtxCnt++;
                            } break;

                            case G_TRI1: {
                                Gtri gtri = ptr->tri;
                                Tri tri = gtri.tri;

                                DISAS_LOG("gsSP1Triangle(%d, %d, %d),", tri.v[0] / 2, tri.v[1] / 2, tri.v[2] / 2);

                                this->tri1Cnt++;
                                this->pipeSyncRequired = true;
                            } break;

                            case G_LINE3D: {
                                if (curGfx->line.wd == 0) {
                                    DISAS_LOG("gsSPLine3D(%d, %d),", curGfx->line.v0, curGfx->line.v1);
                                } else {
                                    DISAS_LOG("gsSPLineW3D(%d, %d, %d),", curGfx->line.v0, curGfx->line.v1,
                                              curGfx->line.wd);
                                }

                                this->lineCnt++;
                                this->pipeSyncRequired = true;
                            } break;

                            case G_TRI2: {
                                Gtri2 tri2 = ptr->tri2;
                                u32 v0, v1, v2;
                                u32 v3, v4, v5;

                                v0 = tri2.tri1.v[0] / 2;
                                v1 = tri2.tri1.v[1] / 2;
                                v2 = tri2.tri1.v[2] / 2;

                                v3 = tri2.tri2.v[0] / 2;
                                v4 = tri2.tri2.v[1] / 2;
                                v5 = tri2.tri2.v[2] / 2;

                                DISAS_LOG("gsSP2Triangles(%d, %d, %d, 0, %d, %d, %d, 0),", v0, v1, v2, v3, v4, v5);

                                this->tri2Cnt++;
                                this->pipeSyncRequired = true;
                            } break;

                            case G_QUAD: {
                                Gquad quad = ptr->quad;
                                u32 v0, v1, v2, v3;

                                v0 = quad.tri1.v[0] / 2;
                                v1 = quad.tri1.v[1] / 2;
                                v2 = quad.tri1.v[2] / 2;
                                v3 = quad.tri2.v[2] / 2;

                                DISAS_LOG("gsSP1Quadrangle(%d, %d, %d, %d, 0),", v0, v1, v2, v3);

                                this->quadCnt++;
                                this->pipeSyncRequired = true;
                            } break;

                            case G_CULLDL: {
                                DISAS_LOG("gsSPCullDisplayList(%d, %d),", (curGfx->cull.vstart_x2) / 2,
                                          (curGfx->cull.vend_x2) / 2);
                            } break;

                            case G_BRANCH_Z: {
                                addr = (uintptr_t)UCodeDisas_TranslateAddr(this, rdpHalf);
                                DISAS_LOG("gsSPBranchLessZraw(0x%08x(0x%08x), %d, 0x%08x),", rdpHalf, addr,
                                          (curGfx->words.w0 & 0xFFF) / 2, curGfx->words.w1);
                                ptr = (Gfx*)addr - 1;
                            } break;

                            case G_TEXTURE: {
                                Gtexture texture = ptr->texture;

                                if (texture.lodscale == 0) {
                                    DISAS_LOG("gsSPTexture(%d, %d, %d, %d, %s),", texture.s, texture.t, texture.level,
                                              texture.tile, texture.on ? "G_ON" : "G_OFF");
                                } else {
                                    DISAS_LOG("gsSPTextureL(%d, %d, %d, %d, %d, %s),", texture.s, texture.t,
                                              texture.level, texture.lodscale, texture.tile,
                                              texture.on ? "G_ON" : "G_OFF");
                                }
                            } break;

                            case G_POPMTX: {
                                Gpopmtx popmtx = ptr->popmtx;

                                if (popmtx.param / 64 == 1) {
                                    DISAS_LOG("gsSPPopMatrix(G_MTX_MODELVIEW),");
                                } else {
                                    DISAS_LOG("gsSPPopMatrixN(G_MTX_MODELVIEW, %d),", popmtx.param / 64);
                                }
                            } break;

                            case G_GEOMETRYMODE: {
                                u32 clearbits = curGfx->words.w0 & 0xFFFFFF;
                                u32 setbits = curGfx->words.w1 & 0xFFFFFF;

                                if (clearbits == 0) {
                                    DISAS_LOG("gsSPLoadGeometryMode(");
                                    UCodeDisas_PrintGeometryMode(this, setbits);
                                    DISAS_LOG("),");
                                } else if (setbits == 0) {
                                    DISAS_LOG("gsSPClearGeometryMode(");
                                    UCodeDisas_PrintGeometryMode(this, ~clearbits);
                                    DISAS_LOG("),");
                                } else if (clearbits == 0xFFFFFF) {
                                    DISAS_LOG("gsSPSetGeometryMode(");
                                    UCodeDisas_PrintGeometryMode(this, setbits);
                                    DISAS_LOG("),");
                                } else {
                                    DISAS_LOG("gsSPGeometryMode(");
                                    UCodeDisas_PrintGeometryMode(this, ~clearbits);
                                    DISAS_LOG(", ");
                                    UCodeDisas_PrintGeometryMode(this, setbits);
                                    DISAS_LOG("),");
                                }

                                this->geometryMode &= clearbits;
                                this->geometryMode |= setbits;
                                break; // this break needs to be inside, but the other cases need their breaks to be
                                       // outside...
                            }

                            case G_MOVEWORD: {
                                u32 pad;
                                Gdma dma = ptr->dma;
                                Gmovewd movewd = ptr->movewd;

                                movewd.index = dma.par;
                                movewd.offset = dma.len;
                                movewd.data = dma.addr;
                                switch (movewd.index) {
                                    case G_MW_SEGMENT: {
                                        DISAS_LOG("gsSPSegment(%d, 0x%08x),", movewd.offset / 4, movewd.data);
                                        this->segments[movewd.offset / 4] = movewd.data & 0xFFFFFF;
                                    } break;

                                    case G_MW_CLIP: {
                                        DISAS_LOG("gsSPClipRatio(FRUSTRATIO_%d), ",
                                                  (movewd.data != 0) ? movewd.data : -movewd.data);
                                        ptr += 4 - 1;
                                    } break;

                                    case G_MW_NUMLIGHT: {
                                        DISAS_LOG("gsSPNumLights(%d), ", movewd.data / 24);
                                    } break;

                                    case G_MW_LIGHTCOL: {
                                        DISAS_LOG("gsSPLightColor(%d, %d), ", ((movewd.offset & 0xF0) >> 5) + 1,
                                                  movewd.data);
                                        ptr += 2 - 1;
                                    } break;

                                    case G_MW_FOG: {
                                        DISAS_LOG("gsSPFogFactor(%d, %d),", movewd.data >> 16, movewd.data & 0xFFFF);
                                    } break;

                                    case G_MW_PERSPNORM: {
                                        DISAS_LOG("gsSPPerspNormalize(%d),", movewd.data);
                                    } break;

                                    default: {
                                        DISAS_LOG("gsMoveWd(%d, %d, %d), ", movewd.index, movewd.offset, movewd.data);
                                    } break;
                                }
                            } break;

                            case G_MOVEMEM: {
                                Gmovemem movemem = ptr->movemem;
                                Vp_t* vp = (Vp_t*)addr;

                                switch (movemem.index) {
                                    case G_MV_VIEWPORT: {
                                        DISAS_LOG("gsSPViewport(0x%08x(0x%08x)),", movemem.data, vp);
                                        DISAS_LOG("\t# vscale=[%d %d %d %d], ", vp->vscale[0], vp->vscale[1],
                                                  vp->vscale[2], vp->vscale[3]);
                                        DISAS_LOG("vtrans=[%d %d %d %d] ", vp->vtrans[0], vp->vtrans[1], vp->vtrans[2],
                                                  vp->vtrans[3]);
                                    } break;

                                    case G_MV_MATRIX: {
                                        DISAS_LOG("gsSPForceMatrix(0x%08x),", movemem.data);
                                        ptr += 2 - 1;
                                    } break;

                                    case G_MV_LIGHT: {
                                        switch (movemem.offset * 8) {
                                            case G_MVO_LOOKATX: {
                                                DISAS_LOG("gsSPLookAtX(0x%08x),", movemem.data);
                                            } break;

                                            case G_MVO_LOOKATY: {
                                                DISAS_LOG("gsSPLookAtY(0x%08x),", movemem.data);
                                            } break;

                                            default: {
                                                DISAS_LOG("gsSPLight(0x%08x,%d),", movemem.data,
                                                          (movemem.offset * 8 - 0x18) / 0x18);
                                            } break;
                                        }
                                    } break;

                                    default: {
                                        DISAS_LOG("gsMoveMem(0x%08x, %d, %d, %d),", movemem.data,
                                                  ((movemem.size >> 3) + 1) * 8, movemem.index, movemem.offset * 8);
                                    } break;
                                }
                            } break;

                            default: {
                                DISAS_LOG("AnyDisplayList(),");
                            } break;
                        }
                    } break;

                    case UCODE_TYPE_S2DEX: {
                        switch (cmd) {
                            case G_BG_COPY: {
                                Gwords words = ptr->words;

                                DISAS_LOG("gsSPBgRectCopy(0x%08x(0x%08x)),", words.w1, addr);
                                this->pipeSyncRequired = true;
                            } break;

                            case G_BG_1CYC: {
                                Gwords words = ptr->words;

                                DISAS_LOG("gsSPBgRect1Cyc(0x%08x(0x%08x)),", words.w1, addr);
                                this->pipeSyncRequired = true;
                            } break;

                            case G_OBJ_SPRITE: {
                                Gwords words = ptr->words;

                                DISAS_LOG("gsSPObjSprite(0x%08x(0x%08x)),", words.w1, addr);
                                this->pipeSyncRequired = true;
                            } break;

                            case G_OBJ_RECTANGLE: {
                                Gwords words = ptr->words;

                                DISAS_LOG("gsSPObjRectangle(0x%08x(0x%08x)),", words.w1, addr);
                                this->pipeSyncRequired = true;
                            } break;

                            case G_OBJ_RECTANGLE_R: {
                                Gwords words = ptr->words;

                                DISAS_LOG("gsSPObjRectangleR(0x%08x(0x%08x)),", words.w1, addr);
                                this->pipeSyncRequired = true;
                            } break;

                            case G_RDPHALF_0: {
                                DISAS_LOG("RDPHALF_0(0x%02x, 0x%08x, 0x%04x),", curGfx->dma.par, curGfx->dma.addr,
                                          curGfx->dma.len);
                                sid = curGfx->dma.par;
                                rdpHalf = curGfx->dma.addr;
                                linkDlLow = curGfx->dma.len;
                            } break;

                            case G_OBJ_MOVEMEM: {
                                Gdma dma = ptr->dma;

                                if (dma.par == 23) {
                                    DISAS_LOG("gsSPObjMatrix(0x%08x(0x%08x)),", dma.addr, addr);
                                } else {
                                    DISAS_LOG("gsSPObjSubMatrix(0x%08x(0x%08x)),", dma.addr, addr);
                                }
                            } break;

                            case G_OBJ_LOADTXTR: {
                                Gdma dma = ptr->dma;

                                DISAS_LOG("gsSPObjLoadTxtr(0x%08x(0x%08x)),", dma.addr, addr);
                            } break;

                            case G_OBJ_LDTX_SPRITE: {
                                Gdma dma = ptr->dma;

                                DISAS_LOG("gsSPObjLoadTxSprite(0x%08x(0x%08x)),", dma.addr, addr);
                            } break;

                            case G_OBJ_LDTX_RECT: {
                                Gdma dma = ptr->dma;

                                DISAS_LOG("gsSPObjLoadTxRect(0x%08x(0x%08x)),", dma.addr, addr);
                            } break;

                            case G_OBJ_LDTX_RECT_R: {
                                Gdma dma = ptr->dma;

                                DISAS_LOG("gsSPObjLoadTxRectR(0x%08x(0x%08x)),", dma.addr, addr);
                            } break;

                            case G_SELECT_DL: {
                                Gdma dma = ptr->dma;
                                uintptr_t dlAddr =
                                    (uintptr_t)UCodeDisas_TranslateAddr(this, (dma.len << 16) | (linkDlLow));
                                uintptr_t dmaAddr = dma.addr;

                                if (dma.par == 0) {
                                    DISAS_LOG("gsSPSelectDL(0x%08x, %d, 0x%08x, 0x%08x),", dlAddr, sid, rdpHalf,
                                              dmaAddr);
                                } else {
                                    DISAS_LOG("gsSPSelectBranchDL(0x%08x, %d, 0x%08x, 0x%08x),", dlAddr, sid, rdpHalf,
                                              dmaAddr);
                                }
                            } break;

                            case G_MOVEWORD: {
                                u32 pad[2];
                                Gmovewd movewd = ptr->movewd;

                                switch (movewd.index) {
                                    case 6: {
                                        u32 segId = movewd.offset / 4;

                                        DISAS_LOG("gsSPSegment(%d, 0x%08x),", segId, movewd.data);
                                        this->segments[segId] = movewd.data & 0xFFFFFF;
                                    } break;

                                    case 8: {
                                        DISAS_LOG("gsSPSetStatus(0x%08x, 0x%08x),", movewd.offset, movewd.data);
                                    } break;

                                    default: {
                                        DISAS_LOG("gsMoveWd(%d, %d, %d), ", movewd.index, movewd.offset, movewd.data);
                                    } break;
                                }
                            } break;

                            case G_OBJ_RENDERMODE: {
                                Gdma dma = ptr->dma;

                                DISAS_LOG("gsSPObjRenderMode(0x%08x),", dma.addr);
                            } break;

                            default: {
                                DISAS_LOG("AnyDisplayList(),");
                            } break;
                        }
                    }
                }
            } break;
        }

        DISAS_LOG("\n");

        ptr++;
    }
}

void UCodeDisas_RegisterUCode(UCodeDisas* this, s32 count, UCodeInfo* ucodeArray) {
    this->ucodeInfoCount = count;
    this->ucodeInfo = ucodeArray;
}

void UCodeDisas_SetCurUCode(UCodeDisas* this, void* ptr) {
    UCodeDisas_SetCurUCodeImpl(this, ptr);
}

#endif
