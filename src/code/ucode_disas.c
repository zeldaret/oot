#include "global.h"

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
        DISAS_LOG("マイクロコードが一致しなかった\n"); // "Microcode did not match"
        this->ucodeType = UCODE_NULL;
    }
}

void UCodeDisas_ParseGeometryMode(UCodeDisas* this, u32 mode) {
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

void UCodeDisas_ParseRenderMode(UCodeDisas* this, u32 mode) {
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
    if (this->enableLog == 0) {} else { osSyncPrintf("\nGBL_c1(%s, %s, %s, %s)|",
        D_8012DDDC[0][a >> 12 & 3], D_8012DDDC[1][a >> 8 & 3], D_8012DDDC[2][a >> 4 & 3], D_8012DDDC[3][a >> 0 & 3]); }
    // clang-format on

    if (this->enableLog) {
        osSyncPrintf("\nGBL_c2(%s, %s, %s, %s)", D_8012DDDC[0][b >> 12 & 3], D_8012DDDC[1][b >> 8 & 3],
                     D_8012DDDC[2][b >> 4 & 3], D_8012DDDC[3][b >> 0 & 3]);
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

// Todo: clean this up

typedef struct {
    s8 cmd;
    u8 v0;
    u8 v1;
    u8 wd;
    u32 pad;
} Gline3DFix;

typedef struct {
    int cmd : 8;
    u8 pad;
    u8 prim_min_level;
    u8 prim_level;
    u8 r;
    u8 g;
    u8 b;
    u8 a;
} GsetcolorMod;

typedef struct {
    u8 cmd;
    char pad[3];
    u16 z;
    u16 d;
} Gsetprimdepth;

typedef struct {
    s32 cmd : 8;
    u32 type : 8;
    u32 len : 16;
    union {
        u32 u32;
        f32 f32;
    } value;
} Gnoop;

typedef struct {
    u8 cmd;
    u8 pad[2];
    u8 params;
    u32 addr;
} Gmatrix;

typedef struct {
    u8 cmd;
    u32 a : 4;
    u32 c : 5;
    u32 z : 3;
    u32 x : 3;
    u32 e : 4;
    u32 g : 5;
    u32 b : 4;
    u32 f : 4;
    u32 v : 3;
    u32 t : 3;
    u32 d : 3;
    u32 y : 3;
    u32 w : 3;
    u32 h : 3;
    u32 u : 3;
    u32 s : 3;
} GsetcombineMod;

typedef struct {
    u32 cmd : 8;
    u32 pad0 : 8;
    u32 sft : 8;
    u32 len : 8;
    u32 data : 32;
} GsetothermodeMod;

typedef union {
    Gwords words;
    Gnoop noop;
    Gmatrix matrix;
    Gdma dma;
    Gtri tri;
    Gline3D line;
    Gpopmtx popmtx;
    Gsegment segment;
    GsetothermodeH setothermodeH;
    GsetothermodeL setothermodeL;
    GsetothermodeMod setothermode;
    Gtexture texture;
    Gperspnorm perspnorm;
    Gsetimg setimg;
    GsetcombineMod setcombine;
    GsetcolorMod setcolor; // mod
    Gfillrect fillrect;    /* use for setscissor also */
    Gsettile settile;
    Gloadtile loadtile; /* use for loadblock also, th is dxt */
    Gsettilesize settilesize;
    Gloadtlut loadtlut;
    Gsetprimdepth setprimdepth;
    long long int force_structure_alignment;
} GfxMod;

#ifdef NON_EQUIVALENT
void UCodeDisas_Disassemble(UCodeDisas* this, u32 ptr) {
    GfxMod* gfx; // 0x394 -> s5
    u32 exit;    // 0x378 -> 0x308
    u32 addr;
    s32 i0;
    u32 rdpHalf; // 0x384 -> 0x2FC
    u16 linkDlLow;
    u8 sid;
    GfxMod curGfx; // 0x370 -> 0x2F0 (pointer to it in s8)
    u8 cmd;        // s1

    gfx = ptr;
    exit = false;

    while (!exit) {
        this->dlCnt++;

        gfx = UCodeDisas_TranslateAddr(this, gfx);
        DISAS_LOG("%08x:", gfx);

        curGfx = *gfx;
        cmd = curGfx.dma.cmd;
        addr = UCodeDisas_TranslateAddr(this, curGfx.dma.addr);

        DISAS_LOG("%08x-%08x:", curGfx.words.w0, curGfx.words.w1);

        for (i0 = 0; i0 < this->dlDepth; i0++) {
            DISAS_LOG(" ");
        }

        // 848
        switch (cmd) {
            case G_SPNOOP: {
                // 850
                DISAS_LOG("gsSPNoOp(),");
                break;
            }
            case G_DL: {
                // 878
                Gdma dma = gfx->dma;
                switch (dma.par) // minor reordering (branch instruction)
                {
                    case 0: {
                        // 8B0
                        DISAS_LOG("gsSPDisplayList(0x%08x),", dma.addr);
                        this->dlStack[this->dlDepth++] = gfx + 1;
                        gfx = (GfxMod*)addr - 1;
                        break;
                    }
                    case 1: {
                        // 900
                        DISAS_LOG("gsSPBranchList(0x%08x),", dma.addr);
                        gfx = (GfxMod*)addr - 1;
                        break;
                    }
                }
                break;
            }
            case G_RDPHALF_1: {
                // 928
                DISAS_LOG("RDPHALF_1(0x%08x),", curGfx.dma.addr);
                rdpHalf = curGfx.dma.addr;
                break;
            }
            case G_TEXRECT: // small reordering
            {
                // 94C
                Gtexrect rect = *(Gtexrect*)gfx;
                DISAS_LOG("gsSPTextureRectangle(%d,%d,%d,%d,%d,%d,%d,%d,%d),", rect.xh, rect.yh, rect.xl, rect.yl,
                          rect.tile, gfx[1].words.w1 >> 16, gfx[1].words.w1 & 0xFFFF, gfx[2].words.w1 >> 16,
                          gfx[2].words.w1 & 0xFFFF);

                gfx += 3 - 1;
                this->pipeSyncRequired = true;

                break;
            }
            case G_LOAD_UCODE: // len loaded from sp+2F2 instead of s8+2
            {
                // A08
                u16 len = curGfx.dma.len;
                if (len == 0x7FF) {
                    // A1C
                    DISAS_LOG("gsSPLoadUcode(0x%08x, 0x%08x),", curGfx.dma.addr, rdpHalf);
                } else {
                    // A3C
                    DISAS_LOG("gsSPLoadUcodeEx(0x%08x, 0x%08x, 0x%05x),", curGfx.dma.addr, rdpHalf, len + 1);
                }
                // A5C
                UCodeDisas_SetCurUCodeImpl(this, (void*)UCodeDisas_TranslateAddr(this, curGfx.dma.addr));
                this->loaducodeCnt++;
                break;
            }
            case G_ENDDL: {
                // A84
                DISAS_LOG("gsSPEndDisplayList(),");
                if (this->dlDepth <= 0) {
                    // AA0
                    exit = true;
                } else {
                    // AB0
                    GfxMod* ret = (GfxMod*)this->dlStack[--this->dlDepth];
                    gfx = ret - 1;
                }
                break;
            }
            case G_SETTILE: // reordering
            {
                // AD4
                Gsettile settile = gfx->settile;
                DISAS_LOG("gsDPSetTile(%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d),", settile.fmt, settile.siz, settile.line,
                          settile.tmem, settile.tile, settile.palette, (settile.ct << 2) + (settile.mt), settile.maskt,
                          settile.shiftt, (settile.cs << 2) + (settile.ms), settile.masks, settile.shifts);

                if (this->tileSyncRequired) {
                    // BB8
                    DISAS_LOG("### TileSyncが必要です。\n");
                    this->syncErr++;
                }
                break;
            }
            case G_LOADTILE: // minor reordering (branch instruction)
            {
                // BE0
                Gloadtile loadtile = gfx->loadtile;
                DISAS_LOG("gsDPLoadTile(%d,%d,%d,%d,%d),", loadtile.tile, loadtile.sh, loadtile.th, loadtile.sl,
                          loadtile.tl);
                break;
            }
            // starting here, replacing gfx with curGfx breaks everything for some reason
            case G_LOADBLOCK: // gfx instead of curGfx(?)
            {
                // C4C
                Gloadtile loadtile = curGfx.loadtile;
                DISAS_LOG("gsDPLoadBlock(%d,%d,%d,%d,%d),", loadtile.tile, loadtile.sh, loadtile.th, loadtile.sl,
                          loadtile.tl);
                if (this->loadSyncRequired) {
                    // CB8
                    DISAS_LOG("### LoadSyncが必要です。\n");
                    this->syncErr++;
                }
                // CDC
                this->pipeSyncRequired = true;
                break;
            }
            case G_SETTILESIZE: // gfx instead of curGfx(?) + minor reordering (branch instruction)
            {
                // CE8
                Gloadtile loadtile = curGfx.loadtile;
                DISAS_LOG("gsDPSetTileSize(%d,%d,%d,%d,%d),", loadtile.tile, loadtile.sh, loadtile.th, loadtile.sl,
                          loadtile.tl);
                break;
            }
            case G_LOADTLUT: // gfx instead of curGfx(?) + minor reordering (branch instruction)
            {
                // D54
                Gloadtlut loadtlut = curGfx.loadtlut;
                DISAS_LOG("gsDPLoadTLUTCmd(%d,%d),", loadtlut.tile, loadtlut.sh >> 2);
                break;
            }
            case G_SETCOMBINE: // gfx instead of curGfx(?) + minor reordering (branch instruction)
            {
                // DA8
                GsetcombineMod setcombine = curGfx.setcombine;
                DISAS_LOG("gsDPSetCombineLERP(%s,%s,%s,%s, %s,%s,%s,%s, %s,%s,%s,%s, %s,%s,%s,%s),",
                          UCodeDisas_ParseCombineColor(setcombine.a, 1), UCodeDisas_ParseCombineColor(setcombine.b, 2),
                          UCodeDisas_ParseCombineColor(setcombine.c, 3), UCodeDisas_ParseCombineColor(setcombine.d, 4),

                          UCodeDisas_ParseCombineAlpha(setcombine.z, 1), UCodeDisas_ParseCombineAlpha(setcombine.y, 2),
                          UCodeDisas_ParseCombineAlpha(setcombine.x, 3), UCodeDisas_ParseCombineAlpha(setcombine.w, 4),

                          UCodeDisas_ParseCombineColor(setcombine.e, 1), UCodeDisas_ParseCombineColor(setcombine.f, 2),
                          UCodeDisas_ParseCombineColor(setcombine.g, 3), UCodeDisas_ParseCombineColor(setcombine.h, 4),

                          UCodeDisas_ParseCombineAlpha(setcombine.v, 1), UCodeDisas_ParseCombineAlpha(setcombine.u, 2),
                          UCodeDisas_ParseCombineAlpha(setcombine.t, 3), UCodeDisas_ParseCombineAlpha(setcombine.s, 4));

                // F98
                if (this->pipeSyncRequired) {
                    // FA8
                    DISAS_LOG("### PipeSyncが必要です。\n");
                    this->syncErr++;
                }
                break;
            }
            case G_SETOTHERMODE_H: // small reordering
            {
                // FD0
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

                u32 len = curGfx.setothermode.len + 1;
                u32 sft = (-curGfx.setothermode.sft - len) + 32;
                u32 i1;
                u32 i2;

                for (i1 = 0; i1 < ARRAY_COUNTU(sUCodeDisasModeHMacros); i1++) {
                    // 1004
                    if (sft == sUCodeDisasModeHMacros[i1].shift) {
                        for (i2 = 0; i2 < 4; i2++) {
                            // 102C ?
                            if (curGfx.setothermode.data == sUCodeDisasModeHMacros[i1].values[i2].value) {
                                // 1038
                                DISAS_LOG("gsDP%s(%s),", sUCodeDisasModeHMacros[i1].name,
                                          sUCodeDisasModeHMacros[i1].values[i2].name);
                                goto block_1;
                            }
                        }
                    }
                }
                // 1078
                DISAS_LOG("gsSPSetOtherModeH(%d, %d, 0x%08x),", sft, len, curGfx.setothermode.data);
            block_1:
                // 1098
                this->modeH &= (((1 - (1 << len)) << sft) - 1);
                this->modeH |= curGfx.setothermode.data;

                // 10C0
                if (this->pipeSyncRequired) {
                    DISAS_LOG("### PipeSyncが必要です。\n");
                    this->syncErr++;
                }

                break;
            }
            case G_SETOTHERMODE_L: // small reordering + (i1 != 2) instead of (i1 < 2)
            {
                // 10F0
                static F3dzexSetModeMacro sUCodeDisasModeLMacros[] = {
                    F3DZEX_SETRENDERMACRO("gsDPSetAlphaCompare", G_MDSFT_ALPHACOMPARE, 2, G_AC_NONE, G_AC_THRESHOLD,
                                          G_AC_DITHER, -1),
                    F3DZEX_SETRENDERMACRO("gsDPSetDepthSource", G_MDSFT_ZSRCSEL, 1, G_ZS_PIXEL, G_ZS_PRIM, -1, -1),
                };

                u32 len = curGfx.setothermode.len + 1;
                u32 sft = (-curGfx.setothermode.sft - len) + 32;
                u32 i1;
                u32 i2;

                // 1114
                if (sft == G_MDSFT_RENDERMODE) {
                    // 111C
                    DISAS_LOG("\ngsDPSetRenderBlender(");
                    UCodeDisas_ParseRenderMode(this, curGfx.setothermode.data);
                    DISAS_LOG("\n),");
                } else {
                    // 1154
                    // checks (i1 != 2) instead of (i1 < 2) for some reason (this does not happen above)
                    for (i1 = 0; i1 < ARRAY_COUNTU(sUCodeDisasModeLMacros); i1++) {
                        if (sft == sUCodeDisasModeLMacros[i1].shift) {
                            for (i2 = 0; i2 < 4; i2++) {
                                if (curGfx.setothermode.data == sUCodeDisasModeLMacros[i1].values[i2].value) {
                                    // 1198
                                    DISAS_LOG("gsDP%s(%s),", sUCodeDisasModeLMacros[i1].name,
                                              sUCodeDisasModeLMacros[i1].values[i2].name);
                                    goto block_2;
                                }
                            }
                        }
                    }
                    // 11D8
                    DISAS_LOG("gsSPSetOtherModeL(%d, %d, 0x%08x),", sft, len, curGfx.setothermode.data);
                }
            block_2:
                // 11F4
                this->modeL &= (((1 - (1 << len)) << sft) - 1);
                this->modeL |= curGfx.setothermode.data;

                if (this->pipeSyncRequired) {
                    DISAS_LOG("### PipeSyncが必要です。\n");
                    this->syncErr++;
                }
                break;
            }
            case G_RDPSETOTHERMODE: {
                // 1250
                DISAS_LOG("gsDPSetOtherMode(0x%08x, 0x%08x),", curGfx.words.w0 & 0xFFFFFF, curGfx.words.w1);
                this->modeH = curGfx.words.w0 & 0xFFF;
                this->modeL = curGfx.words.w1;

                if (this->pipeSyncRequired) {
                    DISAS_LOG("### PipeSyncが必要です。\n");
                    this->syncErr++;
                }
                break;
            }
            case G_SETSCISSOR: // gfx instead of curGfx(?) + reordering
            {
                // 12C0
                Gfillrect setscissor = curGfx.fillrect;
                const char* modeStr;

                modeStr = (setscissor.pad == G_SC_NON_INTERLACE)
                              ? "G_SC_NON_INTERLACE"
                              : (setscissor.pad == G_SC_ODD_INTERLACE)
                                    ? "G_SC_ODD_INTERLACE"
                                    : (setscissor.pad == G_SC_EVEN_INTERLACE) ? "G_SC_EVEN_INTERLACE" : "???";
                if ((setscissor.x0frac | setscissor.y0frac | setscissor.x1frac | setscissor.y1frac)) {
                    // 1368
                    // reordering here
                    DISAS_LOG("gsDPSetScissorFrac(%s, %d, %d, %d, %d),", modeStr,
                              (setscissor.x0 << 2) + setscissor.x0frac, (setscissor.y0 << 2) + setscissor.y0frac,
                              (setscissor.x1 << 2) + setscissor.x1frac, (setscissor.y1 << 2) + setscissor.y1frac);
                } else {
                    // 13E8
                    DISAS_LOG("gsDPSetScissor(%s, %d, %d, %d, %d),", modeStr, setscissor.x0, setscissor.y0,
                              setscissor.x1, setscissor.y1);
                }
                break;
            }
            case G_FILLRECT: // gfx instead of curGfx(?)
            {
                // 1438
                Gfillrect fillrect = curGfx.fillrect;

                DISAS_LOG("gsDPFillRectangle(%d, %d, %d, %d),", fillrect.x0, fillrect.y0, fillrect.x1, fillrect.y1);

                this->pipeSyncRequired = true;
                break;
            }
            case G_SETCIMG: // reordering
            {
                // 14a4
                u8 fmt = (curGfx.words.w0 & 0xE00000) >> 0x15;
                u8 siz = (curGfx.words.w0 & 0x180000) >> 0x13;

                DISAS_LOG("gsDPSetColorImage(G_IM_FMT_%s, G_IM_SIZ_%s, %d, 0x%08x(0x%08x) ),",
                          (fmt == G_IM_FMT_RGBA)
                              ? "RGBA"
                              : (fmt == G_IM_FMT_YUV) ? "YUV"
                                                      : (fmt == G_IM_FMT_CI) ? "CI" : (fmt == G_IM_FMT_IA) ? "IA" : "I",
                          (siz == G_IM_SIZ_4b) ? "4b"
                                               : (siz == G_IM_SIZ_8b) ? "8b" : (siz == G_IM_SIZ_16b) ? "16b" : "32b",
                          curGfx.setimg.wd + 1, curGfx.setimg.dram, addr);

                if (this->pipeSyncRequired) {
                    DISAS_LOG("### PipeSyncが必要です。\n");
                    this->syncErr++;
                }
                break;
            }
            case G_SETZIMG: {
                // 15E0
                DISAS_LOG("gsDPSetDepthImage(0x%08x(0x%08x)),", curGfx.words.w1, addr);

                if (this->pipeSyncRequired) {
                    DISAS_LOG("### PipeSyncが必要です。\n");
                    this->syncErr++;
                }
                break;
            }
            case G_SETTIMG: // reordering
            {
                // 1630
                u8 fmt = (curGfx.words.w0 & 0xE00000) >> 0x15;
                u8 siz = (curGfx.words.w0 & 0x180000) >> 0x13;

                DISAS_LOG("gsDPSetTextureImage(G_IM_FMT_%s, G_IM_SIZ_%s, %d, 0x%08x(0x%08x)),",
                          (fmt == G_IM_FMT_RGBA)
                              ? "RGBA"
                              : (fmt == G_IM_FMT_YUV) ? "YUV"
                                                      : (fmt == G_IM_FMT_CI) ? "CI" : (fmt == G_IM_FMT_IA) ? "IA" : "I",
                          (siz == G_IM_SIZ_4b) ? "4b"
                                               : (siz == G_IM_SIZ_8b) ? "8b" : (siz == G_IM_SIZ_16b) ? "16b" : "32b",
                          curGfx.setimg.wd + 1, curGfx.setimg.dram, addr);
                break;
            }
            case G_SETENVCOLOR: // minor reordering
            {
                // 1740
                DISAS_LOG("gsDPSetEnvColor(%d, %d, %d, %d),", curGfx.setcolor.r, curGfx.setcolor.g, curGfx.setcolor.b,
                          curGfx.setcolor.a);

                if (this->pipeSyncRequired) {
                    DISAS_LOG("### PipeSyncが必要です。\n");
                    this->syncErr++;
                }
                break;
            }
            case G_SETBLENDCOLOR: // minor reordering
            {
                // 17A0
                DISAS_LOG("gsDPSetBlendColor(%d, %d, %d, %d),", curGfx.setcolor.r, curGfx.setcolor.g, curGfx.setcolor.b,
                          curGfx.setcolor.a);

                if (this->pipeSyncRequired) {
                    DISAS_LOG("### PipeSyncが必要です。\n");
                    this->syncErr++;
                }
                break;
            }
            case G_SETFOGCOLOR: // minor reordering
            {
                // 1800
                DISAS_LOG("gsDPSetFogColor(%d, %d, %d, %d),", curGfx.setcolor.r, curGfx.setcolor.g, curGfx.setcolor.b,
                          curGfx.setcolor.a);

                if (this->pipeSyncRequired) {
                    DISAS_LOG("### PipeSyncが必要です。\n");
                    this->syncErr++;
                }
                break;
            }
            case G_SETFILLCOLOR: {
                // 1860
                DISAS_LOG("gsDPSetFillColor(0x%08x),", curGfx.words.w1);

                if (this->pipeSyncRequired) {
                    DISAS_LOG("### PipeSyncが必要です。\n");
                    this->syncErr++;
                }
                break;
            }
            case G_SETPRIMDEPTH: {
                // 18AC
                DISAS_LOG("gsDPSetPrimDepth(%d, %d),", curGfx.setprimdepth.z, curGfx.setprimdepth.d);

                if (this->pipeSyncRequired) {
                    DISAS_LOG("### PipeSyncが必要です。\n");
                    this->syncErr++;
                }
                break;
            }
            case G_SETPRIMCOLOR: // reordering
            {
                // 18FC
                DISAS_LOG("gsDPSetPrimColor(%d, %d, %d, %d, %d, %d),", curGfx.setcolor.prim_min_level,
                          curGfx.setcolor.prim_level, curGfx.setcolor.r, curGfx.setcolor.g, curGfx.setcolor.b,
                          curGfx.setcolor.a);
                break;
            }
            case G_RDPFULLSYNC: {
                // 1940
                DISAS_LOG("gsDPFullSync(),");
                if (this->pipeSyncRequired) {
                    DISAS_LOG("### PipeSyncが必要です。\n");
                    this->syncErr++;
                }
                break;
            }
            case G_RDPTILESYNC: {
                // 1988
                DISAS_LOG("gsDPTileSync(),");
                this->tileSyncRequired = false;
                break;
            }
            case G_RDPPIPESYNC: {
                // 19A8
                DISAS_LOG("gsDPPipeSync(),");
                this->pipeSyncRequired = false;
                break;
            }
            case G_RDPLOADSYNC: {
                // 19C8
                DISAS_LOG("gsDPLoadSync(),");
                this->loadSyncRequired = false;
                break;
            }
            case G_NOOP: {
                // 19E8
                switch (curGfx.noop.type) {
                    case 0: // curGfx.noop.value.u32 should be reused
                    {
                        // 1A10
                        if (curGfx.noop.value.u32 == 0) {
                            DISAS_LOG("gsDPNoOp(),");
                        } else {
                            DISAS_LOG("gsDPNoOpTag(%08x),", curGfx.noop.value.u32);
                        }
                        break;
                    }
                    case 1: {
                        // 1A4C
                        DISAS_LOG("count_gsDPNoOpHere([%s:%d]),", curGfx.noop.value.u32, curGfx.dma.len);
                        break;
                    }
                    case 7: {
                        // 1A6C
                        DISAS_LOG("count_gsDPNoOpOpenDisp([%s:%d]),", curGfx.noop.value.u32, curGfx.noop.len);
                        break;
                    }
                    case 8: {
                        // 1A8C
                        DISAS_LOG("count_gsDPNoOpCloseDisp([%s:%d]),", curGfx.noop.value.u32, curGfx.noop.len);
                        break;
                    }
                    case 2: // minor reordering
                    {
                        // 1AAC
                        DISAS_LOG("count_gsDPNoOpString(%c%s%c, %d),", '"', curGfx.noop.value.u32, '"',
                                  curGfx.noop.len);
                        break;
                    }
                    case 3: {
                        // 1AD8
                        DISAS_LOG("count_gsDPNoOpWord(0x%08x, %d),", curGfx.noop.value.u32, curGfx.noop.len);
                        break;
                    }
                    case 4: {
                        // 1AFC
                        DISAS_LOG("count_gsDPNoOpFloat(%8.3f, %d),", curGfx.noop.value.f32, curGfx.noop.len);
                        break;
                    }
                    case 5: // missing a move
                    {
                        // 1B30
                        if (curGfx.noop.len == 0) {
                            DISAS_LOG("count_gsDPNoOpQuiet(),");
                        } else {
                            DISAS_LOG("count_gsDPNoOpVerbose(),");
                        }
                        this->enableLog = curGfx.noop.len;
                        break;
                    }
                    case 6: {
                        // 1B74
                        /*! @bug arguments are not printed */
                        DISAS_LOG("count_gsDPNoOpCallBack(%08x,%d),");
                        ((void (*)(UCodeDisas*, u32))curGfx.noop.value.u32)(this, curGfx.noop.len);
                        break;
                    }
                    default: // curGfx.noop.type seems reused
                    {
                        // 1BA0
                        DISAS_LOG("gsDPNoOpTag3(%02x, %08x, %04x),", curGfx.noop.type, curGfx.noop.value.u32,
                                  curGfx.noop.len);
                        break;
                    }
                }
                break;
            }
            default: {
                // 1BBC
                // there's a problem here
                switch (this->ucodeType) {
                    case UCODE_F3DZEX:
                    case UCODE_UNK: {
                        // 1BE8
                        switch (curGfx.dma.cmd) // which one to choose here?
                        {
                            case G_MTX: // gfx instead of curGfx(?) + lbu -> lb + reordering
                            {
                                // 1C3C
                                Gmatrix gmtx = curGfx.matrix;
                                MtxF mtx;
                                MatrixInternal* mtxp = (MatrixInternal*)addr;
                                s32 i1;
                                u32 params;
                                DISAS_LOG("gsSPMatrix(0x%08x(%08x), 0", gmtx.addr, addr);

                                params = (gmtx.params ^ G_MTX_PUSH);

                                for (i1 = 0; i1 < ARRAY_COUNT(sUCodeDisasMtxFlags); i1++) {
                                    DISAS_LOG("|%s", (sUCodeDisasMtxFlags[i1].value & params)
                                                         ? sUCodeDisasMtxFlags[i1].setName
                                                         : sUCodeDisasMtxFlags[i1].unsetName);
                                }
                                DISAS_LOG("),", gmtx.addr); /*! @bug gmtx.addr shouldn't be here*/

                                if (this->enableLog >= 2) {
                                    MtxConv_L2F(&mtx, mtxp);
                                    DISAS_LOG("\n");
                                    /*! @bug  %.04x.%04x is a typo, should be  %04x.%04x */
                                    DISAS_LOG(
                                        "/ %04x.%04x %04x.%04x %04x.%04x %.04x.%04x \\/ %12.6f %12.6f %12.6f %12.6f "
                                        "\\\n"
                                        "| %04x.%04x %04x.%04x %04x.%04x %.04x.%04x || %12.6f %12.6f %12.6f %12.6f |\n"
                                        "| %04x.%04x %04x.%04x %04x.%04x %.04x.%04x || %12.6f %12.6f %12.6f %12.6f |\n"
                                        "\\ %04x.%04x %04x.%04x %04x.%04x %.04x.%04x /\\ %12.6f %12.6f %12.6f %12.6f "
                                        "/\n",
                                        mtxp->intPart[0][0], mtxp->fracPart[0][0], mtxp->intPart[1][0],
                                        mtxp->fracPart[1][0], mtxp->intPart[2][0], mtxp->fracPart[2][0],
                                        mtxp->intPart[3][0], mtxp->fracPart[3][0], mtx.mf[0][0], mtx.mf[1][0],
                                        mtx.mf[2][0], mtx.mf[3][0],

                                        mtxp->intPart[0][1], mtxp->fracPart[0][1], mtxp->intPart[1][1],
                                        mtxp->fracPart[1][1], mtxp->intPart[2][1], mtxp->fracPart[2][1],
                                        mtxp->intPart[3][1], mtxp->fracPart[3][1], mtx.mf[0][1], mtx.mf[1][1],
                                        mtx.mf[2][1], mtx.mf[3][1],

                                        mtxp->intPart[0][2], mtxp->fracPart[0][2], mtxp->intPart[1][2],
                                        mtxp->fracPart[1][2], mtxp->intPart[2][2], mtxp->fracPart[2][2],
                                        mtxp->intPart[3][2], mtxp->fracPart[3][2], mtx.mf[0][2], mtx.mf[1][2],
                                        mtx.mf[2][2], mtx.mf[3][2],

                                        mtxp->intPart[0][3], mtxp->fracPart[0][3], mtxp->intPart[1][3],
                                        mtxp->fracPart[1][3], mtxp->intPart[2][3], mtxp->fracPart[2][3],
                                        mtxp->intPart[3][3], mtxp->fracPart[3][3], mtx.mf[0][3], mtx.mf[1][3],
                                        mtx.mf[2][3], mtx.mf[3][3]);
                                }
                                break;
                            }
                            case G_VTX: {
                                // 1EF4
                                // this is not correct
                                s32 numv = (curGfx.words.w0 >> 12) & 0xFF;
                                s32 vbidx = ((curGfx.words.w0 & 0xFF) >> 1) - numv;
                                DISAS_LOG("gsSPVertex(0x%08x(0x%08x), %d, %d),", curGfx.words.w1, addr, numv, vbidx);

                                this->vtxCnt += numv;
                                this->spvtxCnt++;

                                if (this->enableLog >= 2) {
                                    UCodeDisas_PrintVertices(this, addr, numv, vbidx);
                                }
                                break;
                            }
                            case G_MODIFYVTX: // additional move
                            {
                                // 1F74
                                u16 where = curGfx.dma.len;
                                DISAS_LOG("gsSPModifyVertex(%d, %s, %08x),", curGfx.dma.par,
                                          (where == G_MWO_POINT_RGBA)
                                              ? "G_MWO_POINT_RGBA"
                                              : (where == G_MWO_POINT_ST)
                                                    ? "G_MWO_POINT_ST"
                                                    : (where == G_MWO_POINT_XYSCREEN)
                                                          ? "G_MWO_POINT_XYSCREEN"
                                                          : (where == G_MWO_POINT_ZSCREEN) ? "G_MWO_POINT_ZSCREEN"
                                                                                           : "G_MWO_POINT_????",
                                          curGfx.dma.addr);
                                this->vtxCnt += curGfx.dma.par;
                                this->spvtxCnt++;
                                break;
                            }
                            case G_TRI1: // a Gtri1 struct should probably be used here + code missing
                            {
                                // 2024
                                Gwords words2 = curGfx.words;
                                DISAS_LOG("gsSP1Triangle(%d, %d, %d),", ((words2.w0 >> 16) & 0xFF) / 2,
                                          ((words2.w0 >> 8) & 0xFF) / 2, ((words2.w0 >> 0) & 0xFF) / 2);

                                this->pipeSyncRequired = true;
                                this->tri1Cnt++;
                                break;
                            }
                            case G_LINE3D: // curGfx should be used here(?)
                            {
                                // 20BC
                                Gline3DFix* line = (Gline3DFix*)&curGfx;
                                if (line->wd == 0) {
                                    DISAS_LOG("gsSPLine3D(%d, %d),", line->v0, line->v1);
                                } else {
                                    DISAS_LOG("gsSPLineW3D(%d, %d, %d),", line->v0, line->v1, line->wd);
                                }
                                this->pipeSyncRequired = true;
                                this->lineCnt++;
                                break;
                            }
                            case G_TRI2: // gfx instead of curGfx(?) + a Gtri2 struct should probably be used here +
                                         // code missing
                            {
                                Gwords words2 = curGfx.words;
                                DISAS_LOG("gsSP2Triangles(%d, %d, %d, 0, %d, %d, %d, 0),",
                                          ((words2.w0 >> 16) & 0xFF) / 2, ((words2.w0 >> 8) & 0xFF) / 2,
                                          ((words2.w0 >> 0) & 0xFF) / 2, ((words2.w1 >> 16) & 0xFF) / 2,
                                          ((words2.w1 >> 8) & 0xFF) / 2, ((words2.w1 >> 0) & 0xFF) / 2);

                                this->pipeSyncRequired = true;
                                this->tri2Cnt++;
                                break;
                            }
                            case G_QUAD: // gfx instead of curGfx(?)  + a Gquad struct should probably be used here +
                                         // code missing
                            {
                                Gwords words2 = curGfx.words;
                                DISAS_LOG("gsSP1Quadrangle(%d, %d, %d, %d, 0),", ((words2.w0 >> 16) & 0xFF) / 2,
                                          ((words2.w0 >> 8) & 0xFF) / 2, ((words2.w0 >> 0) & 0xFF) / 2,
                                          ((words2.w1 >> 0) & 0xFF) / 2);
                                this->pipeSyncRequired = true;
                                this->quadCnt++;
                                break;
                            }
                            case G_CULLDL: // code missing
                            {
                                DISAS_LOG("gsSPCullDisplayList(%d, %d),", (curGfx.words.w0 & 0xFFFF) / 2,
                                          (curGfx.words.w1 & 0xFFFF) / 2);
                                break;
                            }
                            case G_BRANCH_Z: {
                                GfxMod* dst = UCodeDisas_TranslateAddr(this, rdpHalf);
                                DISAS_LOG("gsSPBranchLessZraw(0x%08x(0x%08x), %d, 0x%08x),", rdpHalf, dst,
                                          (curGfx.words.w0 & 0xFFF) / 2, curGfx.words.w1);
                                gfx = dst - 1;
                                break;
                            }
                            case G_TEXTURE: // gfx instead of curGfx(?) + reordering + arithmetic issue?
                            {
                                Gtexture texture = curGfx.texture;
                                if (texture.lodscale == 0) {
                                    DISAS_LOG("gsSPTexture(%d, %d, %d, %d, %s),", texture.s, texture.t,
                                              texture.tile >> 3, texture.tile & 7, texture.on ? "G_ON" : "G_OFF");
                                } else {
                                    DISAS_LOG("gsSPTextureL(%d, %d, %d, %d, %d, %s),", texture.s, texture.t,
                                              texture.tile >> 3, texture.lodscale, texture.tile & 7,
                                              texture.on ? "G_ON" : "G_OFF");
                                }
                                break;
                            }
                            case G_POPMTX: // gfx instead of curGfx(?) + reordering
                            {
                                Gwords words2 = curGfx.words;
                                s32 num = words2.w1 / 64;
                                if (num == 1) {
                                    DISAS_LOG("gsSPPopMatrix(G_MTX_MODELVIEW),");
                                } else {
                                    DISAS_LOG("gsSPPopMatrixN(G_MTX_MODELVIEW, %d),", num);
                                }
                                break;
                            }
                            case G_GEOMETRYMODE: {
                                u32 clearbits = curGfx.words.w0 & 0xFFFFFF;
                                u32 setbits = curGfx.words.w1 & 0xFFFFFF; // ?? setbits should be 32bit

                                if (clearbits == 0) {
                                    DISAS_LOG("gsSPLoadGeometryMode(");
                                    UCodeDisas_ParseGeometryMode(this, setbits);
                                    DISAS_LOG("),");
                                } else {
                                    if (setbits == 0) {
                                        DISAS_LOG("gsSPClearGeometryMode(");
                                        UCodeDisas_ParseGeometryMode(this, ~clearbits);
                                        DISAS_LOG("),");
                                    } else {
                                        if (clearbits == 0xFFFFFF) {
                                            DISAS_LOG("gsSPSetGeometryMode(");
                                            UCodeDisas_ParseGeometryMode(this, setbits);
                                            DISAS_LOG("),");
                                        } else {
                                            DISAS_LOG("gsSPGeometryMode(");
                                            UCodeDisas_ParseGeometryMode(this, ~clearbits);
                                            DISAS_LOG(",");
                                            UCodeDisas_ParseGeometryMode(this, setbits);
                                            DISAS_LOG("),");
                                        }
                                    }
                                }
                                this->geometryMode &= clearbits;
                                this->geometryMode |= setbits;
                                break;
                            }
                            case G_MOVEWORD: // gfx instead of curGfx(?) + missing code + missing copy
                            {
                                Gdma dma = curGfx.dma; // Gsegment ?
                                switch (dma.par) {
                                    case G_MW_SEGMENT: {
                                        DISAS_LOG("gsSPSegment(%d, 0x%08x),", dma.len, dma.addr / 4);
                                        break;
                                    }
                                    case G_MW_CLIP: {
                                        DISAS_LOG("gsSPClipRatio(FRUSTRATIO_%d), ",
                                                  (dma.addr != 0) ? dma.addr : -dma.addr);
                                        gfx += 4 - 1;
                                        break;
                                    }
                                    case G_MW_NUMLIGHT: {
                                        DISAS_LOG("gsSPNumLights(%d), ", dma.addr / 24);
                                        break;
                                    }
                                    case G_MW_LIGHTCOL: {
                                        DISAS_LOG("gsSPLightColor(%d, %d), ", ((dma.addr & 0xF0) >> 5) + 1, dma.addr);
                                        break;
                                        gfx += 2 - 1;
                                    }
                                    case G_MW_FOG: {
                                        DISAS_LOG("gsSPFogFactor(%d, %d),", dma.addr >> 16, dma.addr & 0xFFFF);
                                        break;
                                    }
                                    case G_MW_PERSPNORM: {
                                        DISAS_LOG("gsSPPerspNormalize(%d),", dma.addr);
                                        break;
                                    }
                                    default: {
                                        DISAS_LOG("gsMoveWd(%d, %d, %d), ", dma.par, dma.len, dma.addr);
                                        break;
                                    }
                                }
                                break;
                            }
                            case G_MOVEMEM: // gfx instead of curGfx(?) + code is wrong
                            {
                                Gwords words2 = curGfx.words;
                                s32 offset = (words2.w0 >> 8) & 0xFF;
                                s32 size = (((words2.w0 >> 16) >> 3) + 1) * 8;
                                s32 index = words2.w0 & 0xFF;
                                Vp_t* vp = (Vp_t*)addr;

                                switch (index) {
                                    case G_MV_VIEWPORT: {
                                        DISAS_LOG("gsSPViewport(0x%08x(0x%08x)),", words2.w1, vp);
                                        DISAS_LOG("\t# vscale=[%d %d %d %d], ", vp->vscale[0], vp->vscale[1],
                                                  vp->vscale[2], vp->vscale[3]);
                                        DISAS_LOG("vtrans=[%d %d %d %d] ", vp->vtrans[0], vp->vtrans[1], vp->vtrans[2],
                                                  vp->vtrans[3]);
                                        break;
                                    }
                                    case G_MV_MATRIX: {
                                        DISAS_LOG("gsSPForceMatrix(0x%08x),", words2.w1);
                                        break;
                                    }
                                    case G_MV_LIGHT: {
                                        switch ((offset * 8)) {
                                            case G_MVO_LOOKATX: {
                                                DISAS_LOG("gsSPLookAtX(0x%08x),", words2.w1);
                                                break;
                                            }
                                            case G_MVO_LOOKATY: {
                                                DISAS_LOG("gsSPLookAtY(0x%08x),", words2.w1);
                                                break;
                                            }
                                            default: {
                                                DISAS_LOG("gsSPLight(0x%08x,%d),", words2.w1, (offset * 8 - 24) / 24);
                                                break;
                                            }
                                        }
                                        break;
                                    }
                                    default: {
                                        DISAS_LOG("gsMoveMem(0x%08x, %d, %d, %d),", words2.w1, size, index, offset * 8);
                                        break;
                                    }
                                }
                                break;
                            }
                            default: {
                                DISAS_LOG("AnyDisplayList(),");
                            }
                        }
                    }
                    case UCODE_S2DEX: {
                        // 29FC?
                        switch (curGfx.dma.cmd) // which one to choose here?
                        {
                            case G_BG_COPY: // gfx instead of curGfx(?) + missing copy
                            {
                                DISAS_LOG("gsSPBgRectCopy(0x%08x(0x%08x)),", curGfx.words.w1, addr);
                                this->pipeSyncRequired = true;
                                break;
                            }
                            case G_BG_1CYC: // gfx instead of curGfx(?) + missing copy
                            {
                                DISAS_LOG("gsSPBgRect1Cyc(0x%08x(0x%08x)),", curGfx.words.w1, addr);
                                this->pipeSyncRequired = true;
                                break;
                            }
                            case G_OBJ_SPRITE: // gfx instead of curGfx(?) + missing copy
                            {
                                DISAS_LOG("gsSPObjSprite(0x%08x(0x%08x)),", curGfx.words.w1, addr);
                                this->pipeSyncRequired = true;
                                break;
                            }
                            case G_OBJ_RECTANGLE: // gfx instead of curGfx(?) + missing copy
                            {
                                DISAS_LOG("gsSPObjRectangle(0x%08x(0x%08x)),", curGfx.words.w1, addr);
                                this->pipeSyncRequired = true;
                                break;
                            }
                            case G_OBJ_RECTANGLE_R: // gfx instead of curGfx(?)
                            {
                                DISAS_LOG("gsSPObjRectangleR(0x%08x(0x%08x)),", curGfx.words.w1, addr);
                                this->pipeSyncRequired = true;
                                break;
                            }
                            case G_RDPHALF_0: {
                                DISAS_LOG("RDPHALF_0(0x%02x, 0x%08x, 0x%04x),", curGfx.dma.par, curGfx.dma.addr,
                                          curGfx.dma.len);
                                sid = curGfx.dma.par;
                                rdpHalf = curGfx.dma.addr;
                                linkDlLow = curGfx.dma.len;
                                break;
                            }
                            case G_OBJ_MOVEMEM: // gfx instead of curGfx(?)
                            {
                                Gdma dma = curGfx.dma;
                                if (dma.par == 23) {
                                    DISAS_LOG("gsSPObjMatrix(0x%08x(0x%08x)),", dma.addr, addr);
                                } else {
                                    DISAS_LOG("gsSPObjSubMatrix(0x%08x(0x%08x)),", dma.addr, addr);
                                }
                                break;
                            }
                            case G_OBJ_LOADTXTR: // gfx instead of curGfx(?)
                            {
                                DISAS_LOG("gsSPObjLoadTxtr(0x%08x(0x%08x)),", curGfx.dma.addr, addr);
                                break;
                            }
                            case G_OBJ_LDTX_SPRITE: // gfx instead of curGfx(?)
                            {
                                DISAS_LOG("gsSPObjLoadTxSprite(0x%08x(0x%08x)),", curGfx.dma.addr, addr);
                                break;
                            }
                            case G_OBJ_LDTX_RECT: // gfx instead of curGfx(?)
                            {
                                DISAS_LOG("gsSPObjLoadTxRect(0x%08x(0x%08x)),", curGfx.dma.addr, addr);
                                break;
                            }
                            case G_OBJ_LDTX_RECT_R: // gfx instead of curGfx(?)
                            {
                                DISAS_LOG("gsSPObjLoadTxRectR(0x%08x(0x%08x)),", curGfx.dma.addr, addr);
                                break;
                            }
                            case G_SELECT_DL: // gfx instead of curGfx(?)
                            {
                                Gdma dma = curGfx.dma;
                                u32 dlAddr = UCodeDisas_TranslateAddr(this, (linkDlLow << 16) | dma.len);
                                if (dma.par == 0) {
                                    DISAS_LOG("gsSPSelectDL(0x%08x, %d, 0x%08x, 0x%08x),", dlAddr, sid, rdpHalf,
                                              dma.addr);
                                } else {
                                    DISAS_LOG("gsSPSelectBranchDL(0x%08x, %d, 0x%08x, 0x%08x),", dlAddr, sid, rdpHalf,
                                              dma.addr);
                                }

                                break;
                            }
                            case 0xDB: // gfx instead of curGfx(?)
                            {
                                Gdma dma = curGfx.dma;
                                switch (dma.par) {
                                    case 6: {
                                        u32 segId = dma.len / 2;
                                        DISAS_LOG("gsSPSegment(%d, 0x%08x),", segId, dma.addr);
                                        this->segments[segId] = dma.addr & 0xFFFFFF;
                                        break;
                                    }
                                    case 8: {
                                        DISAS_LOG("gsSPSetStatus(0x%08x, 0x%08x),", dma.len, dma.addr);
                                        break;
                                    }
                                    default: {
                                        DISAS_LOG("gsMoveWd(%d, %d, %d), ", dma, dma.len, dma.addr);
                                        break;
                                    }
                                }
                                break;
                            }
                            case G_OBJ_RENDERMODE: // gfx instead of curGfx(?)
                            {
                                DISAS_LOG("gsSPObjRenderMode(0x%08x),", curGfx.dma.addr);
                            }
                            default: {
                                DISAS_LOG("AnyDisplayList(),");
                                break;
                            }
                        }
                    }
                }
            }
        }

        DISAS_LOG("\n");

        gfx++;
    }
}
#else
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
#endif

void UCodeDisas_RegisterUCode(UCodeDisas* this, s32 count, UCodeInfo* ucodeArray) {
    this->ucodeInfoCount = count;
    this->ucodeInfo = ucodeArray;
}

void UCodeDisas_SetCurUCode(UCodeDisas* this, void* ptr) {
    UCodeDisas_SetCurUCodeImpl(this, ptr);
}

// 4 bytes of nops, separating this file from audio_synthesis and padding .text
// to a 32-byte boundary. Unclear what this comes from... maybe the audio
// library was built separately and aligned to 32 bytes?
#pragma GLOBAL_ASM("asm/non_matchings/code/ucode_disas/pad_800DACB0.s")
