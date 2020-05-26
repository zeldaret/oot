.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_801479A0
    .asciz "G_ZBUFFER"
    .balign 4
    .asciz "G_TEXTURE_ENABLE"
    .balign 4
    .asciz "G_SHADE"
    .balign 4
    .asciz "G_SHADING_SMOOTH"
    .balign 4
    .asciz "G_CULL_FRONT"
    .balign 4
    .asciz "G_CULL_BACK"
    .balign 4
    .asciz "G_FOG"
    .balign 4
    .asciz "G_LIGHTING"
    .balign 4
    .asciz "G_TEXTURE_GEN"
    .balign 4
    .asciz "G_TEXTURE_GEN_LINEAR"
    .balign 4
    .asciz "G_LOD"
    .balign 4
    .asciz "G_MTX_PROJECTION"
    .balign 4
    .asciz "G_MTX_MODELVIEW"
    .balign 4
    .asciz "G_MTX_LOAD"
    .balign 4
    .asciz "G_MTX_MUL"
    .balign 4
    .asciz "G_MTX_PUSH"
    .balign 4
    .asciz "G_MTX_NOPUSH"
    .balign 4
    .asciz "?"
    .balign 4

glabel D_80147A98
    .asciz "COMBINED"
    .balign 4

glabel D_80147AA4
    .asciz "TEXEL0"
    .balign 4

glabel D_80147AAC
    .asciz "TEXEL1"
    .balign 4

glabel D_80147AB4
    .asciz "PRIMITIVE"
    .balign 4

glabel D_80147AC0
    .asciz "SHADE"
    .balign 4

glabel D_80147AC8
    .asciz "ENVIRONMENT"
    .balign 4

glabel D_80147AD4
    .asciz "CENTER"
    .balign 4

glabel D_80147ADC
    .asciz "SCALE"
    .balign 4

glabel D_80147AE4
    .asciz "1"
    .balign 4

glabel D_80147AE8
    .asciz "NOISE"
    .balign 4

glabel D_80147AF0
    .asciz "K4"
    .balign 4
glabel D_80147AF4
    .asciz "COMBINED_ALPHA"
    .balign 4

glabel D_80147B04
    .asciz "0"
    .balign 4

glabel D_80147B08
    .asciz "TEXEL0_ALPHA"
    .balign 4

glabel D_80147B18
    .asciz "TEXEL1_ALPHA"
    .balign 4

glabel D_80147B28
    .asciz "PRIMITIVE_ALPHA"
    .balign 4

glabel D_80147B38
    .asciz "SHADE_ALPHA"
    .balign 4

glabel D_80147B44
    .asciz "ENV_ALPHA"
    .balign 4

glabel D_80147B50
    .asciz "LOD_FRACTION"
    .balign 4

glabel D_80147B60
    .asciz "PRIM_LOD_FRAC"
    .balign 4

glabel D_80147B70
    .asciz "K5"
    .balign 4    

glabel D_80147B74
    .asciz "0"
    .balign 4

glabel D_80147B78
    .asciz "0"
    .balign 4

glabel D_80147B7C
    .asciz "?"
    .balign 4

glabel D_80147B80
    .asciz "LOD_FRACTION"
    .balign 4

glabel D_80147B90
    .asciz "COMBINED"
    .balign 4

glabel D_80147B9C
    .asciz "TEXEL0"
    .balign 4

glabel D_80147BA4
    .asciz "TEXEL1"
    .balign 4

glabel D_80147BAC
    .asciz "PRIMITIVE"
    .balign 4

glabel D_80147BB8
    .asciz "SHADE"
    .balign 4

glabel D_80147BC0
    .asciz "ENVIRONMENT"
    .balign 4

glabel D_80147BCC
    .asciz "PRIM_LOD_FRAC"
    .balign 4

glabel D_80147BDC
    .asciz "1"
    .balign 4

glabel D_80147BE0
    .asciz "0"
    .balign 4

glabel D_80147BE4
    .asciz "マイクロコードが一致しなかった\n"
    # EUC-JP: マイクロコードが一致しなかった | Microcode did not match
    .balign 4

glabel D_80147C04
    .asciz "|"
    .balign 4

glabel D_80147C08
    .asciz "%s"
    .balign 4
    .asciz "AA_EN"
    .balign 4
    .asciz "Z_CMP"
    .balign 4
    .asciz "Z_UPD"
    .balign 4
    .asciz "IM_RD"
    .balign 4
    .asciz "CLR_ON_CVG"
    .balign 4
    .asciz "CVG_DST_CLAMP"
    .balign 4
    .asciz "CVG_DST_WRAP"
    .balign 4
    .asciz "CVG_DST_FULL"
    .balign 4
    .asciz "CVG_DST_SAVE"
    .balign 4
    .asciz "ZMODE_OPA"
    .balign 4
    .asciz "ZMODE_INTER"
    .balign 4
    .asciz "ZMODE_XLU"
    .balign 4
    .asciz "ZMODE_DEC"
    .balign 4
    .asciz "CVG_X_ALPHA"
    .balign 4
    .asciz "ALPHA_CVG_SEL"
    .balign 4
    .asciz "FORCE_BL"
    .balign 4
    .asciz "G_BL_CLR_IN"
    .balign 4
    .asciz "G_BL_CLR_MEM"
    .balign 4
    .asciz "G_BL_CLR_BL"
    .balign 4
    .asciz "G_BL_CLR_FOG"
    .balign 4
    .asciz "G_BL_A_IN"
    .balign 4
    .asciz "G_BL_A_FOG"
    .balign 4
    .asciz "G_BL_A_SHADE"
    .balign 4
    .asciz "G_BL_0"
    .balign 4
    .asciz "G_BL_CLR_IN"
    .balign 4
    .asciz "G_BL_CLR_MEM"
    .balign 4
    .asciz "G_BL_CLR_BL"
    .balign 4
    .asciz "G_BL_CLR_FOG"
    .balign 4
    .asciz "G_BL_1MA"
    .balign 4
    .asciz "G_BL_A_MEM"
    .balign 4
    .asciz "G_BL_1"
    .balign 4
    .asciz "G_BL_0"
    .balign 4

glabel D_80147D98
    .asciz "%s|"
    .balign 4

glabel D_80147D9C
    .asciz "\nGBL_c1(%s, %s, %s, %s)|"
    .balign 4

glabel D_80147DB8
    .asciz "\nGBL_c2(%s, %s, %s, %s)"
    .balign 4

glabel D_80147DD0
    .asciz "\n{{%6d, %6d, %6d, %d, %6d, %6d, %3d, %3d, %3d, %3d}}, /* vc%d */"
    .balign 4

glabel D_80147E14
    .asciz "\n{{%6d, %6d, %6d, %d, %6d, %6d, %3d, %3d, %3d, %3d}}, /* vn%d */"
    .balign 4

glabel D_80147E58
    .asciz "%08x:"
    .balign 4

glabel D_80147E60
    .asciz "%08x-%08x:"
    .balign 4

glabel D_80147E6C
    .asciz " "
    .balign 4

glabel D_80147E70
    .asciz "gsSPNoOp(),"
    .balign 4

glabel D_80147E7C
    .asciz "gsSPDisplayList(0x%08x),"
    .balign 4

glabel D_80147E98
    .asciz "gsSPBranchList(0x%08x),"
    .balign 4

glabel D_80147EB0
    .asciz "RDPHALF_1(0x%08x),"
    .balign 4

glabel D_80147EC4
    .asciz "gsSPTextureRectangle(%d,%d,%d,%d,%d,%d,%d,%d,%d),"
    .balign 4

glabel D_80147EF8
    .asciz "gsSPLoadUcode(0x%08x, 0x%08x),"
    .balign 4

glabel D_80147F18
    .asciz "gsSPLoadUcodeEx(0x%08x, 0x%08x, 0x%05x),"
    .balign 4

glabel D_80147F44
    .asciz "gsSPEndDisplayList(),"
    .balign 4

glabel D_80147F5C
    .asciz "gsDPSetTile(%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d),"
    .balign 4

glabel D_80147F90
    .asciz "### TileSyncが必要です。\n"
    # EUC-JP: が必要です。| Is required.
    .balign 4

glabel D_80147FAC
    .asciz "gsDPLoadTile(%d,%d,%d,%d,%d),"
    .balign 4

glabel D_80147FCC
    .asciz "gsDPLoadBlock(%d,%d,%d,%d,%d),"
    .balign 4

glabel D_80147FEC
    .asciz "### LoadSyncが必要です。\n"
    # EUC-JP: が必要です。| Is required.
    .balign 4

glabel D_80148008
    .asciz "gsDPSetTileSize(%d,%d,%d,%d,%d),"
    .balign 4

glabel D_8014802C
    .asciz "gsDPLoadTLUTCmd(%d,%d),"
    .balign 4

glabel D_80148044
    .asciz "gsDPSetCombineLERP(%s,%s,%s,%s, %s,%s,%s,%s, %s,%s,%s,%s, %s,%s,%s,%s),"
    .balign 4

glabel D_8014808C
    .asciz "### PipeSyncが必要です。\n"
    # EUC-JP: が必要です。| Is required.
    .balign 4
    .asciz "SetAlphaDither"
    .balign 4
    .asciz "G_AD_PATTERN"
    .balign 4
    .asciz "G_AD_NOTPATTERN"
    .balign 4
    .asciz "G_AD_NOISE"
    .balign 4
    .asciz "G_AD_DISABLE"
    .balign 4
    .asciz "SetColorDither"
    .balign 4
    .asciz "G_CD_MAGICSQ"
    .balign 4
    .asciz "G_CD_BAYER"
    .balign 4
    .asciz "G_CD_NOISE"
    .balign 4
    .asciz "-1"
    .balign 4
    .asciz "SetCombineKey"
    .balign 4
    .asciz "G_CK_NONE"
    .balign 4
    .asciz "G_CK_KEY"
    .balign 4
    .asciz "-1"
    .balign 4
    .asciz "-1"
    .balign 4
    .asciz "SetTextureConvert"
    .balign 4
    .asciz "G_TC_CONV"
    .balign 4
    .asciz "G_TC_FILTCONV"
    .balign 4
    .asciz "G_TC_FILT"
    .balign 4
    .asciz "-1"
    .balign 4
    .asciz "SetTextureFilter"
    .balign 4
    .asciz "G_TF_POINT"
    .balign 4
    .asciz "G_TF_AVERAGE"
    .balign 4
    .asciz "G_TF_BILERP"
    .balign 4
    .asciz "-1"
    .balign 4
    .asciz "SetTextureLUT"
    .balign 4
    .asciz "G_TT_NONE"
    .balign 4
    .asciz "G_TT_RGBA16"
    .balign 4
    .asciz "G_TT_IA16"
    .balign 4
    .asciz "-1"
    .balign 4
    .asciz "SetTextureLOD"
    .balign 4
    .asciz "G_TL_TILE"
    .balign 4
    .asciz "G_TL_LOD"
    .balign 4
    .asciz "-1"
    .balign 4
    .asciz "-1"
    .balign 4
    .asciz "SetTextureDetail"
    .balign 4
    .asciz "G_TD_CLAMP"
    .balign 4
    .asciz "G_TD_SHARPEN"
    .balign 4
    .asciz "G_TD_DETAIL"
    .balign 4
    .asciz "-1"
    .balign 4
    .asciz "SetTexturePersp"
    .balign 4
    .asciz "G_TP_PERSP"
    .balign 4
    .asciz "G_TP_NONE"
    .balign 4
    .asciz "-1"
    .balign 4
    .asciz "-1"
    .balign 4
    .asciz "SetCycleType"
    .balign 4
    .asciz "G_CYC_1CYCLE"
    .balign 4
    .asciz "G_CYC_2CYCLE"
    .balign 4
    .asciz "G_CYC_COPY"
    .balign 4
    .asciz "G_CYC_FILL"
    .balign 4
    .asciz "SetColorDither"
    .balign 4
    .asciz "G_CD_MAGICSQ"
    .balign 4
    .asciz "G_CD_BAYER"
    .balign 4
    .asciz "G_CD_NOISE"
    .balign 4
    .asciz "-1"
    .balign 4
    .asciz "PipelineMode"
    .balign 4
    .asciz "G_PM_1PRIMITIVE"
    .balign 4
    .asciz "G_PM_NPRIMITIVE"
    .balign 4
    .asciz "-1"
    .balign 4
    .asciz "-1"
    .balign 4

glabel D_80148374
    .asciz "gsDP%s(%s),"
    .balign 4

glabel D_80148380
    .asciz "gsSPSetOtherModeH(%d, %d, 0x%08x),"
    .balign 4

glabel D_801483A4
    .asciz "### PipeSyncが必要です。\n"
    # EUC-JP: が必要です。| Is required.
    .balign 4
    .asciz "gsDPSetAlphaCompare"
    .balign 4
    .asciz "G_AC_NONE"
    .balign 4
    .asciz "G_AC_THRESHOLD"
    .balign 4
    .asciz "G_AC_DITHER"
    .balign 4
    .asciz "-1"
    .balign 4
    .asciz "gsDPSetDepthSource"
    .balign 4
    .asciz "G_ZS_PIXEL"
    .balign 4
    .asciz "G_ZS_PRIM"
    .balign 4
    .asciz "-1"
    .balign 4
    .asciz "-1"
    .balign 4

glabel D_80148434
    .asciz "\ngsDPSetRenderBlender("
    .balign 4

glabel D_8014844C
    .asciz "\n),"
    .balign 4

glabel D_80148450
    .asciz "gsDP%s(%s),"
    .balign 4

glabel D_8014845C
    .asciz "gsSPSetOtherModeL(%d, %d, 0x%08x),"
    .balign 4

glabel D_80148480
    .asciz "### PipeSyncが必要です。\n"
    # EUC-JP: が必要です。 | Is required.
    .balign 4

glabel D_8014849C
    .asciz "gsDPSetOtherMode(0x%08x, 0x%08x),"
    .balign 4

glabel D_801484C0
    .asciz "### PipeSyncが必要です。\n"
    # EUC-JP: が必要です。 | Is required.
    .balign 4

glabel D_801484DC
    .asciz "G_SC_NON_INTERLACE"
    .balign 4

glabel D_801484F0
    .asciz "G_SC_ODD_INTERLACE"
    .balign 4

glabel D_80148504
    .asciz "G_SC_EVEN_INTERLACE"
    .balign 4

glabel D_80148518
    .asciz "???"
    .balign 4

glabel D_8014851C
    .asciz "gsDPSetScissorFrac(%s, %d, %d, %d, %d),"
    .balign 4

glabel D_80148544
    .asciz "gsDPSetScissor(%s, %d, %d, %d, %d),"
    .balign 4

glabel D_80148568
    .asciz "gsDPFillRectangle(%d, %d, %d, %d),"
    .balign 4

glabel D_8014858C
    .asciz "gsDPSetColorImage(G_IM_FMT_%s, G_IM_SIZ_%s, %d, 0x%08x(0x%08x) ),"
    .balign 4

glabel D_801485D0
    .asciz "RGBA"
    .balign 4

glabel D_801485D8
    .asciz "YUV"
    .balign 4

glabel D_801485DC
    .asciz "CI"
    .balign 4

glabel D_801485E0
    .asciz "IA"
    .balign 4

glabel D_801485E4
    .asciz "I"
    .balign 4

glabel D_801485E8
    .asciz "4b"
    .balign 4

glabel D_801485EC
    .asciz "8b"
    .balign 4
glabel D_801485F0
    .asciz "16b"
    .balign 4

glabel D_801485F4
    .asciz "32b"
    .balign 4

glabel D_801485F8
    .asciz "### PipeSyncが必要です。\n"
    # EUC-JP: が必要です。 | Is required.
    .balign 4

glabel D_80148614
    .asciz "gsDPSetDepthImage(0x%08x(0x%08x)),"
    .balign 4

glabel D_80148638
    .asciz "### PipeSyncが必要です。\n"
    # EUC-JP: が必要です。 | Is required.
    .balign 4

glabel D_80148654
    .asciz "gsDPSetTextureImage(G_IM_FMT_%s, G_IM_SIZ_%s, %d, 0x%08x(0x%08x)),"
    .balign 4

glabel D_80148698
    .asciz "RGBA"
    .balign 4

glabel D_801486A0
    .asciz "YUV"
    .balign 4

glabel D_801486A4
    .asciz "CI"
    .balign 4

glabel D_801486A8
    .asciz "IA"
    .balign 4

glabel D_801486AC
    .asciz "I"
    .balign 4

glabel D_801486B0
    .asciz "4b"
    .balign 4

glabel D_801486B4
    .asciz "8b"
    .balign 4

glabel D_801486B8
    .asciz "16b"
    .balign 4

glabel D_801486BC
    .asciz "32b"
    .balign 4

glabel D_801486C0
    .asciz "gsDPSetEnvColor(%d, %d, %d, %d),"
    .balign 4

glabel D_801486E4
    .asciz "### PipeSyncが必要です。\n"
    # EUC-JP: が必要です。 | Is required.
    .balign 4

glabel D_80148700
    .asciz "gsDPSetBlendColor(%d, %d, %d, %d),"
    .balign 4

glabel D_80148724
    .asciz "### PipeSyncが必要です。\n"
    # EUC-JP: が必要です。 | Is required.
    .balign 4

glabel D_80148740
    .asciz "gsDPSetFogColor(%d, %d, %d, %d),"
    .balign 4

glabel D_80148764
    .asciz "### PipeSyncが必要です。\n"
    # EUC-JP: が必要です。 | Is required.
    .balign 4

glabel D_80148780
    .asciz "gsDPSetFillColor(0x%08x),"
    .balign 4

glabel D_8014879C
    .asciz "### PipeSyncが必要です。\n"
    # EUC-JP: が必要です。 | Is required.
    .balign 4

glabel D_801487B8
    .asciz "gsDPSetPrimDepth(%d, %d),"
    .balign 4

glabel D_801487D4
    .asciz "### PipeSyncが必要です。\n"
    # EUC-JP: が必要です。 | Is required.
    .balign 4

glabel D_801487F0
    .asciz "gsDPSetPrimColor(%d, %d, %d, %d, %d, %d),"
    .balign 4

glabel D_8014881C
    .asciz "gsDPFullSync(),"
    .balign 4

glabel D_8014882C
    .asciz "### PipeSyncが必要です。\n"
    # EUC-JP: が必要です。 | Is required.
    .balign 4

glabel D_80148848
    .asciz "gsDPTileSync(),"
    .balign 4

glabel D_80148858
    .asciz "gsDPPipeSync(),"
    .balign 4

glabel D_80148868
    .asciz "gsDPLoadSync(),"
    .balign 4

glabel D_80148878
    .asciz "gsDPNoOp(),"
    .balign 4

glabel D_80148884
    .asciz "gsDPNoOpTag(%08x),"
    .balign 4

glabel D_80148898
    .asciz "count_gsDPNoOpHere([%s:%d]),"
    .balign 4

glabel D_801488B8
    .asciz "count_gsDPNoOpOpenDisp([%s:%d]),"
    .balign 4

glabel D_801488DC
    .asciz "count_gsDPNoOpCloseDisp([%s:%d]),"
    .balign 4

glabel D_80148900
    .asciz "count_gsDPNoOpString(%c%s%c, %d),"
    .balign 4

glabel D_80148924
    .asciz "count_gsDPNoOpWord(0x%08x, %d),"
    .balign 4

glabel D_80148944
    .asciz "count_gsDPNoOpFloat(%8.3f, %d),"
    .balign 4

glabel D_80148964
    .asciz "count_gsDPNoOpQuiet(),"
    .balign 4

glabel D_8014897C
    .asciz "count_gsDPNoOpVerbose(),"
    .balign 4

glabel D_80148998
    .asciz "count_gsDPNoOpCallBack(%08x,%d),"
    .balign 4

glabel D_801489BC
    .asciz "gsDPNoOpTag3(%02x, %08x, %04x),"
    .balign 4

glabel D_801489DC
    .asciz "gsSPMatrix(0x%08x(%08x), 0"
    .balign 4

glabel D_801489F8
    .asciz "|%s"
    .balign 4

glabel D_801489FC
    .asciz "),"
    .balign 4

glabel D_80148A00
    .asciz "\n"
    .balign 4

glabel D_80148A04
    .ascii "/ %04x.%04x %04x.%04x %04x.%04x %.04x.%04x \\/ %12.6f %12.6f %12.6f %12.6f \\\n"
    .ascii "| %04x.%04x %04x.%04x %04x.%04x %.04x.%04x || %12.6f %12.6f %12.6f %12.6f |\n"
    .ascii "| %04x.%04x %04x.%04x %04x.%04x %.04x.%04x || %12.6f %12.6f %12.6f %12.6f |\n"
    .asciz "\\ %04x.%04x %04x.%04x %04x.%04x %.04x.%04x /\\ %12.6f %12.6f %12.6f %12.6f /\n"
    .balign 4

glabel D_80148B38
    .asciz "gsSPVertex(0x%08x(0x%08x), %d, %d),"
    .balign 4

glabel D_80148B5C
    .asciz "gsSPModifyVertex(%d, %s, %08x),"
    .balign 4

glabel D_80148B7C
    .asciz "G_MWO_POINT_RGBA"
    .balign 4

glabel D_80148B90
    .asciz "G_MWO_POINT_ST"
    .balign 4

glabel D_80148BA0
    .asciz "G_MWO_POINT_XYSCREEN"
    .balign 4

glabel D_80148BB8
    .asciz "G_MWO_POINT_ZSCREEN"
    .balign 4

glabel D_80148BCC
    .asciz "G_MWO_POINT_????"
    .balign 4

glabel D_80148BE0
    .asciz "gsSP1Triangle(%d, %d, %d),"
    .balign 4

glabel D_80148BFC
    .asciz "gsSPLine3D(%d, %d),"
    .balign 4

glabel D_80148C10
    .asciz "gsSPLineW3D(%d, %d, %d),"
    .balign 4

glabel D_80148C2C
    .asciz "gsSP2Triangles(%d, %d, %d, 0, %d, %d, %d, 0),"
    .balign 4

glabel D_80148C5C
    .asciz "gsSP1Quadrangle(%d, %d, %d, %d, 0),"
    .balign 4

glabel D_80148C80
    .asciz "gsSPCullDisplayList(%d, %d),"
    .balign 4

glabel D_80148CA0
    .asciz "gsSPBranchLessZraw(0x%08x(0x%08x), %d, 0x%08x),"
    .balign 4

glabel D_80148CD0
    .asciz "gsSPTexture(%d, %d, %d, %d, %s),"
    .balign 4

glabel D_80148CF4
    .asciz "G_ON"
    .balign 4

glabel D_80148CFC
    .asciz "G_OFF"
    .balign 4

glabel D_80148D04
    .asciz "gsSPTextureL(%d, %d, %d, %d, %d, %s),"
    .balign 4

glabel D_80148D2C
    .asciz "G_ON"
    .balign 4

glabel D_80148D34
    .asciz "G_OFF"
    .balign 4

glabel D_80148D3C
    .asciz "gsSPPopMatrix(G_MTX_MODELVIEW),"
    .balign 4

glabel D_80148D5C
    .asciz "gsSPPopMatrixN(G_MTX_MODELVIEW, %d),"
    .balign 4

glabel D_80148D84
    .asciz "gsSPLoadGeometryMode("
    .balign 4

glabel D_80148D9C
    .asciz "),"
    .balign 4

glabel D_80148DA0
    .asciz "gsSPClearGeometryMode("
    .balign 4

glabel D_80148DB8
    .asciz "),"
    .balign 4

glabel D_80148DBC
    .asciz "gsSPSetGeometryMode("
    .balign 4

glabel D_80148DD4
    .asciz "),"
    .balign 4

glabel D_80148DD8
    .asciz "gsSPGeometryMode("
    .balign 4

glabel D_80148DEC
    .asciz ", "
    .balign 4

glabel D_80148DF0
    .asciz "),"
    .balign 4

glabel D_80148DF4
    .asciz "gsSPSegment(%d, 0x%08x),"
    .balign 4

glabel D_80148E10
    .asciz "gsSPClipRatio(FRUSTRATIO_%d), "
    .balign 4

glabel D_80148E30
    .asciz "gsSPNumLights(%d), "
    .balign 4

glabel D_80148E44
    .asciz "gsSPLightColor(%d, %d), "
    .balign 4

glabel D_80148E60
    .asciz "gsSPFogFactor(%d, %d),"
    .balign 4

glabel D_80148E78
    .asciz "gsSPPerspNormalize(%d),"
    .balign 4

glabel D_80148E90
    .asciz "gsMoveWd(%d, %d, %d), "
    .balign 4

glabel D_80148EA8
    .asciz "gsSPViewport(0x%08x(0x%08x)),"
    .balign 4

glabel D_80148EC8
    .asciz "	# vscale=[%d %d %d %d], "
    .balign 4

glabel D_80148EE4
    .asciz "vtrans=[%d %d %d %d] "
    .balign 4

glabel D_80148EFC
    .asciz "gsSPForceMatrix(0x%08x),"
    .balign 4

glabel D_80148F18
    .asciz "gsSPLookAtX(0x%08x),"
    .balign 4

glabel D_80148F30
    .asciz "gsSPLookAtY(0x%08x),"
    .balign 4

glabel D_80148F48
    .asciz "gsSPLight(0x%08x,%d),"
    .balign 4

glabel D_80148F60
    .asciz "gsMoveMem(0x%08x, %d, %d, %d),"
    .balign 4

glabel D_80148F80
    .asciz "AnyDisplayList(),"
    .balign 4

glabel D_80148F94
    .asciz "gsSPBgRectCopy(0x%08x(0x%08x)),"
    .balign 4

glabel D_80148FB4
    .asciz "gsSPBgRect1Cyc(0x%08x(0x%08x)),"
    .balign 4

glabel D_80148FD4
    .asciz "gsSPObjSprite(0x%08x(0x%08x)),"
    .balign 4

glabel D_80148FF4
    .asciz "gsSPObjRectangle(0x%08x(0x%08x)),"
    .balign 4

glabel D_80149018
    .asciz "gsSPObjRectangleR(0x%08x(0x%08x)),"
    .balign 4

glabel D_8014903C
    .asciz "RDPHALF_0(0x%02x, 0x%08x, 0x%04x),"
    .balign 4

glabel D_80149060
    .asciz "gsSPObjMatrix(0x%08x(0x%08x)),"
    .balign 4

glabel D_80149080
    .asciz "gsSPObjSubMatrix(0x%08x(0x%08x)),"
    .balign 4

glabel D_801490A4
    .asciz "gsSPObjLoadTxtr(0x%08x(0x%08x)),"
    .balign 4

glabel D_801490C8
    .asciz "gsSPObjLoadTxSprite(0x%08x(0x%08x)),"
    .balign 4

glabel D_801490F0
    .asciz "gsSPObjLoadTxRect(0x%08x(0x%08x)),"
    .balign 4

glabel D_80149114
    .asciz "gsSPObjLoadTxRectR(0x%08x(0x%08x)),"
    .balign 4

glabel D_80149138
    .asciz "gsSPSelectDL(0x%08x, %d, 0x%08x, 0x%08x),"
    .balign 4

glabel D_80149164
    .asciz "gsSPSelectBranchDL(0x%08x, %d, 0x%08x, 0x%08x),"
    .balign 4

glabel D_80149194
    .asciz "gsSPSegment(%d, 0x%08x),"
    .balign 4

glabel D_801491B0
    .asciz "gsSPSetStatus(0x%08x, 0x%08x),"
    .balign 4

glabel D_801491D0
    .asciz "gsMoveWd(%d, %d, %d), "
    .balign 4

glabel D_801491E8
    .asciz "gsSPObjRenderMode(0x%08x),"
    .balign 4

glabel D_80149204
    .asciz "AnyDisplayList(),"
    .balign 4

glabel D_80149218
    .asciz "\n"
    .balign 4

glabel jtbl_8014921C
    .word L800D7D28
    .word L800D7D34
    .word L800D7D40
    .word L800D7D4C
    .word L800D7D58
    .word L800D7D64
    .word L800D7D70
    .word L800D7DA8

glabel jtbl_8014923C
    .word L800D7E2C
    .word L800D7E38
    .word L800D7E44
    .word L800D7E50
    .word L800D7E5C
    .word L800D7E68
    .word L800D7E74
    .word L800D7E80

glabel jtbl_8014925C
    .word L800D7ECC
    .word L800D7EEC
    .word L800D7EF8
    .word L800D7F04
    .word L800D7F10
    .word L800D7F1C
    .word L800D7F28
    .word L800D7F48

glabel jtbl_8014927C
    .word L800D86D8
    .word L800D854C
    .word L800D8754
    .word L800D8530
    .word L800D85F8
    .word L800D8DC0
    .word L800D8CA0
    .word L800D8620
    .word L800D9890
    .word L800D9698
    .word L800D9678
    .word L800D9658
    .word L800D9610
    .word L800D9890
    .word L800D9890
    .word L800D9890
    .word L800D8F90
    .word L800D957C
    .word L800D8F20
    .word L800D8A24
    .word L800D9890
    .word L800D89B8
    .word L800D891C
    .word L800D88B0
    .word L800D87A4
    .word L800D9108
    .word L800D9530
    .word L800D94D0
    .word L800D9470
    .word L800D95CC
    .word L800D9410
    .word L800D8A78
    .word L800D9300
    .word L800D92B0
    .word L800D9174

glabel jtbl_80149308
    .word L800D96E0
    .word L800D971C
    .word L800D977C
    .word L800D97AC
    .word L800D97CC
    .word L800D9800
    .word L800D9844
    .word L800D973C
    .word L800D975C

glabel jtbl_8014932C
    .word L800DA008
    .word L800DA100
    .word L800DA168
    .word L800D990C
    .word L800DA2B4
    .word L800DA4E8

glabel jtbl_80149344
    .word L800D9BC4
    .word L800D9C44
    .word L800D9F68
    .word L800D9FB4
    .word L800D9CF4
    .word L800D9DF0
    .word L800D9EC4
    .word L800D9D8C

glabel jtbl_80149364
    .word L800DA3E8
    .word L800DA4B0
    .word L800DA39C
    .word L800DA4B0
    .word L800DA33C
    .word L800DA4B0
    .word L800DA464
    .word L800DA4B0
    .word L800DA41C
    .word L800DA4B0
    .word L800DA4B0
    .word L800DA4B0
    .word L800DA490

glabel jtbl_80149398
    .word L800DA814
    .word L800DA7D0
    .word L800DAC14
    .word L800DAA50
    .word L800DA950
    .word L800DA990
    .word L800DA9D0
    .word L800DAA10
    .word L800DA78C
    .word L800DA748
    .word L800DABD8
