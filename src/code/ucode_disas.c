#include <global.h>

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
    osSyncPrintf

u32 UCodeDisas_TranslateAddr(UCodeDisas* this, u32 addr) {
    u32 physical = this->segments[SEGMENT_NUMBER(addr)] + SEGMENT_OFFSET(addr);
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

const char* UCodeDisas_ParseCombineColor(u32 value, u32 idx) {
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
        case 6:
            ret = (idx == 2) ? "CENTER" : (idx == 3) ? "SCALE" : "1";
            break;
        case 7:
            ret = (idx == 1) ? "NOISE" : (idx == 2) ? "K4" : (idx == 3) ? "COMBINED_ALPHA" : "0";
            break;
        default:
            if (idx == 3) {
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

const char* UCodeDisas_ParseCombineAlpha(u32 value, u32 idx) {
    const char* ret = "?";
    switch (value) {
        case 0:
            ret = (idx == 3) ? "LOD_FRACTION" : "COMBINED";
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
        case 6:
            ret = (idx == 3) ? "PRIM_LOD_FRAC" : "1";
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
        // Microcode did not match
        DISAS_LOG("マイクロコードが一致しなかった\n");
        this->ucodeType = UCODE_NULL;
    }
}

#ifdef NON_MATCHING
// s4/s6 swap (basically same diff as UCodeDisas_ParseRenderMode)
void UCodeDisas_ParseGeometryMode(UCodeDisas* this, u32 mode) {
    u32 first = true;
    s32 i;

    for (i = 0; i < ARRAY_COUNT(sUCodeDisasGeometryModes); i++) {
        if (sUCodeDisasGeometryModes[i].value & mode) {
            u32 cond = first;
            if (!cond) {
                DISAS_LOG("|");
            }
            first = false;

            DISAS_LOG("%s", sUCodeDisasGeometryModes[i].name);
        }
    }
}
#else
void UCodeDisas_ParseGeometryMode(UCodeDisas* this, u32 mode);
#pragma GLOBAL_ASM("asm/non_matchings/code/ucode_disas/UCodeDisas_ParseGeometryMode.s")
#endif

#ifdef NON_MATCHING
// s1/s2 swap (basically same diff as UCodeDisas_ParseGeometryMode)
void UCodeDisas_ParseRenderMode(UCodeDisas* this, u32 mode) {
    s32 i;
    s32 a;
    s32 b;

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

    static const char* D_8012DDDC[4][4] = {
        { "G_BL_CLR_IN", "G_BL_CLR_MEM", "G_BL_CLR_BL", "G_BL_CLR_FOG" },
        { "G_BL_A_IN", "G_BL_A_FOG", "G_BL_A_SHADE", "G_BL_0" },
        { "G_BL_CLR_IN", "G_BL_CLR_MEM", "G_BL_CLR_BL", "G_BL_CLR_FOG" },
        { "G_BL_1MA", "G_BL_A_MEM", "G_BL_1", "G_BL_0" },
    };

    for (i = 0; i < ARRAY_COUNT(sUCodeDisasRenderModeFlags); i++) {
        if ((mode & sUCodeDisasRenderModeFlags[i].mask) == sUCodeDisasRenderModeFlags[i].value) {
            DISAS_LOG("%s|", sUCodeDisasRenderModeFlags[i].name);
        }
    }

    a = (mode >> 18) & 0x3333;
    b = (mode >> 16) & 0x3333;

    if (1) {}
    // clang-format off
    if (this->enableLog == 0) {} else { osSyncPrintf("\nGBL_c1(%s, %s, %s, %s)|", D_8012DDDC[0][a >> 12 & 3], D_8012DDDC[1][a >> 8 & 3], D_8012DDDC[2][a >> 4 & 3], D_8012DDDC[3][a >> 0 & 3]); }
    // clang-format on

    if (this->enableLog) {
        osSyncPrintf("\nGBL_c2(%s, %s, %s, %s)", D_8012DDDC[0][b >> 12 & 3], D_8012DDDC[1][b >> 8 & 3],
                     D_8012DDDC[2][b >> 4 & 3], D_8012DDDC[3][b >> 0 & 3]);
    }
}
#else
F3dzexRenderMode sUCodeDisasRenderModeFlags[] = {
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
const char* D_8012DDDC[4][4] = {
    { "G_BL_CLR_IN", "G_BL_CLR_MEM", "G_BL_CLR_BL", "G_BL_CLR_FOG" },
    { "G_BL_A_IN", "G_BL_A_FOG", "G_BL_A_SHADE", "G_BL_0" },
    { "G_BL_CLR_IN", "G_BL_CLR_MEM", "G_BL_CLR_BL", "G_BL_CLR_FOG" },
    { "G_BL_1MA", "G_BL_A_MEM", "G_BL_1", "G_BL_0" },
};
#pragma GLOBAL_ASM("asm/non_matchings/code/ucode_disas/UCodeDisas_ParseRenderMode.s")
#endif

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

void UCodeDisas_Disassemble(UCodeDisas* this, Gfx* gfx0);
#pragma GLOBAL_ASM("asm/non_matchings/code/ucode_disas/UCodeDisas_Disassemble.rodata.s")
F3dzexSetModeMacro sUCodeDisasModeHMacros[] = {
    F3DZEX_SETRENDERMACRO("SetAlphaDither", G_MDSFT_ALPHADITHER, 2, G_AD_PATTERN, G_AD_NOTPATTERN, G_AD_NOISE,
                          G_AD_DISABLE),
    F3DZEX_SETRENDERMACRO("SetColorDither", G_MDSFT_RGBDITHER, 2, G_CD_MAGICSQ, G_CD_BAYER, G_CD_NOISE, -1),
    F3DZEX_SETRENDERMACRO("SetCombineKey", G_MDSFT_COMBKEY, 1, G_CK_NONE, G_CK_KEY, -1, -1),
    F3DZEX_SETRENDERMACRO("SetTextureConvert", G_MDSFT_TEXTCONV, 3, G_TC_CONV, G_TC_FILTCONV, G_TC_FILT, -1),
    F3DZEX_SETRENDERMACRO("SetTextureFilter", G_MDSFT_TEXTFILT, 2, G_TF_POINT, G_TF_AVERAGE, G_TF_BILERP, -1),
    F3DZEX_SETRENDERMACRO("SetTextureLUT", G_MDSFT_TEXTLUT, 2, G_TT_NONE, G_TT_RGBA16, G_TT_IA16, -1),
    F3DZEX_SETRENDERMACRO("SetTextureLOD", G_MDSFT_TEXTLOD, 1, G_TL_TILE, G_TL_LOD, -1, -1),
    F3DZEX_SETRENDERMACRO("SetTextureDetail", G_MDSFT_TEXTDETAIL, 2, G_TD_CLAMP, G_TD_SHARPEN, G_TD_DETAIL, -1),
    F3DZEX_SETRENDERMACRO("SetTexturePersp", G_MDSFT_TEXTPERSP, 1, G_TP_PERSP, G_TP_NONE, -1, -1),
    F3DZEX_SETRENDERMACRO("SetCycleType", G_MDSFT_CYCLETYPE, 2, G_CYC_1CYCLE, G_CYC_2CYCLE, G_CYC_COPY, G_CYC_FILL),
    F3DZEX_SETRENDERMACRO("SetColorDither", G_MDSFT_COLORDITHER, 2, G_CD_MAGICSQ, G_CD_BAYER, G_CD_NOISE, -1),
    F3DZEX_SETRENDERMACRO("PipelineMode", G_MDSFT_PIPELINE, 1, G_PM_1PRIMITIVE, G_PM_NPRIMITIVE, -1, -1),
};

#pragma GLOBAL_ASM("asm/non_matchings/code/ucode_disas/UCodeDisas_Disassemble.rodata2.s")
F3dzexSetModeMacro sUCodeDisasModeLMacros[] = {
    F3DZEX_SETRENDERMACRO("gsDPSetAlphaCompare", G_MDSFT_ALPHACOMPARE, 2, G_AC_NONE, G_AC_THRESHOLD, G_AC_DITHER, -1),
    F3DZEX_SETRENDERMACRO("gsDPSetDepthSource", G_MDSFT_ZSRCSEL, 1, G_ZS_PIXEL, G_ZS_PRIM, -1, -1),
};
#pragma GLOBAL_ASM("asm/non_matchings/code/ucode_disas/UCodeDisas_Disassemble.s")

void UCodeDisas_RegisterUCode(UCodeDisas* this, s32 count, UCodeInfo* ucodeArray) {
    this->ucodeInfoCount = count;
    this->ucodeInfo = ucodeArray;
}

void UCodeDisas_SetCurUCode(UCodeDisas* this, void* ptr) {
    UCodeDisas_SetCurUCodeImpl(this, ptr);
}
