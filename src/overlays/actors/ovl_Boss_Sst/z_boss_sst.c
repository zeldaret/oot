#include "z_boss_sst.h"
#include "overlays/actors/ovl_Bg_Sst_Floor/z_bg_sst_floor.h"

#define FLAGS 0x00000435

#define THIS ((BossSst*)thisx)

#define NON_MATCHING

void BossSst_Init(Actor* thisx, GlobalContext* globalCtx);
void BossSst_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BossSst_Update(Actor* thisx, GlobalContext* globalCtx);
void BossSst_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_8092FBE4(BossSst* this);
void func_8092CAA0(BossSst* this);
void func_80934338(Actor* thisx, GlobalContext* globalCtx);
void func_80930474(BossSst *this);
void func_80933CEC(BossSst* this, s32 arg1);
void func_80933D2C(BossSst* this, u16 sfxId);
void func_80933978(BossSst *this, GlobalContext *globalCtx, s32 arg2);
void func_8092F0BC(BossSst *this, GlobalContext *globalCtx);
void func_8092DB30(BossSst *this);
void func_80933C80(BossSst* this, s32 arg1);
void func_8092DCEC(BossSst *this, s32 arg1);
void func_80935A20(BossSst *this, s32 arg1);
void func_809352DC(Actor* thisx, GlobalContext* globalCtx);
void func_8092FC60(BossSst* this, GlobalContext* globalCtx);
void func_8092CAD0(BossSst* this, GlobalContext* globalCtx);
void func_809360FC(BossSst* this, GlobalContext* globalCtx);
void func_8092DB4C(BossSst* this, GlobalContext* globalCtx);
void func_8093051C(BossSst* this, GlobalContext* globalCtx);
void func_8093639C(Actor* thisx, GlobalContext* globalCtx);
void func_80932A80(BossSst* this, GlobalContext* globalCtx);
void func_80932C38(BossSst* this, GlobalContext* globalCtx);
void func_8092E510(BossSst* this, GlobalContext* globalCtx);
void func_8092EA00(BossSst* this, GlobalContext* globalCtx);
void func_8092CB0C(BossSst* this, GlobalContext* globalCtx);
void func_8092CC58(BossSst *this, GlobalContext *globalCtx);
void func_8093285C(BossSst* this, GlobalContext* globalCtx);
void func_8092DAB8(BossSst* this, GlobalContext* globalCtx);
void func_8092F434(BossSst *this, GlobalContext *globalCtx);
void func_8092F7DC(BossSst *this, GlobalContext *globalCtx);
void func_8092DFFC(BossSst *this, GlobalContext *globalCtx);
void func_8092F374(BossSst *this, GlobalContext *globalCtx);
void func_8092F8F0(BossSst *this, GlobalContext *globalCtx);
void func_8092E2E0(BossSst *this, GlobalContext *globalCtx);
void func_8092E438(BossSst *this, GlobalContext *globalCtx);
void func_8092E830(BossSst *this, GlobalContext *globalCtx);
void func_8092EAE0(BossSst *this, GlobalContext *globalCtx);
void func_809307B4(BossSst *this, GlobalContext *globalCtx);
void func_80930BC0(BossSst *this, GlobalContext *globalCtx);
void func_80930FE8(BossSst *this, GlobalContext *globalCtx);
void func_80931300(BossSst *this, GlobalContext *globalCtx);
void func_8092F6F0(BossSst *this, GlobalContext *globalCtx);
void func_80932DAC(BossSst *this, GlobalContext *globalCtx);
void func_8092FE44(BossSst *this, GlobalContext *globalCtx);
void func_80930158(BossSst *this, GlobalContext *globalCtx);
void func_80933290(BossSst *this, GlobalContext *globalCtx);
void func_80930934(BossSst *this, GlobalContext *globalCtx);
void func_80930D70(BossSst *this, GlobalContext *globalCtx);
void func_809310CC(BossSst *this, GlobalContext *globalCtx);
void func_80931560(BossSst *this, GlobalContext *globalCtx);
void func_80932FF0(BossSst *this, GlobalContext *globalCtx);
void func_8092FFF0(BossSst *this, GlobalContext *globalCtx);
void func_80930284(BossSst *this, GlobalContext *globalCtx);
void func_8093043C(BossSst *this, GlobalContext *globalCtx);
void func_809338DC(BossSst *this, GlobalContext *globalCtx);
void func_809317F8(BossSst *this, GlobalContext *globalCtx);
void func_809330B4(BossSst *this, GlobalContext *globalCtx);
void func_80933170(BossSst *this, GlobalContext *globalCtx);
void func_80933210(BossSst *this, GlobalContext *globalCtx);
void func_80931928(BossSst *this, GlobalContext *globalCtx);
void func_80931A5C(BossSst *this, GlobalContext *globalCtx);
void func_80931D5C(BossSst *this, GlobalContext *globalCtx);
void func_80931F84(BossSst *this, GlobalContext *globalCtx);
void func_80931EC0(BossSst *this, GlobalContext *globalCtx);
void func_8092DD50(BossSst *this, GlobalContext *globalCtx);
void func_809333F4(BossSst *this, GlobalContext *globalCtx);
void func_8093234C(BossSst *this, GlobalContext *globalCtx);
void func_80933608(BossSst *this, GlobalContext *globalCtx);
void func_8092DEA0(BossSst *this, GlobalContext *globalCtx);
void func_8092E3A0(BossSst *this, GlobalContext *globalCtx);
void func_809324F4(BossSst *this, GlobalContext *globalCtx);
void func_80933748(BossSst *this, GlobalContext *globalCtx);
void func_80932674(BossSst *this, GlobalContext *globalCtx);



void func_8092F3F0(BossSst* this);
void func_8092F790(BossSst* this);
void func_8092DF40(BossSst* this);
void func_8092F30C(BossSst* this);
void func_8092F894(BossSst* this);
void func_8092E25C(BossSst* this);
void func_8092E3E8(BossSst* this);
void func_8092E790(BossSst* this);
void func_8092EA50(BossSst* this);
void func_80933B84(BossSst* this);
void func_80935764(BossSst* this);
void func_80935F30(BossSst* this);
void func_8092F65C(BossSst* this);
void func_80932D10(BossSst* this);
void func_8092FDD0(BossSst* this);
void func_809300E4(BossSst* this);
void func_8093323C(BossSst* this);
void func_809308A4(BossSst* this);
void func_80930CE4(BossSst* this);
void func_80931044(BossSst* this);
void func_809314F0(BossSst* this);
void func_80932FA0(BossSst* this);
void func_8092FF94(BossSst* this);
void func_80930238(BossSst* this);
void func_80935948(BossSst* this);
void func_80931788(BossSst* this);
void func_80933064(BossSst* this);
void func_80933134(BossSst* this);
void func_80935890(BossSst* this);
void func_809331E8(BossSst* this);
void func_809319D0(BossSst* this);
void func_80931D04(BossSst* this);
void func_80931EF8(BossSst* this);
void func_80931E70(BossSst* this);
void func_80933328(BossSst* this);
void func_809322B4(BossSst* this);
void func_80933554(BossSst* this);
void func_8092DE48(BossSst* this);
void func_8092E34C(BossSst* this);
void func_809324A4(BossSst* this);
void func_80933724(BossSst* this);
void func_8093265C(BossSst* this);
void func_80935CDC(BossSst* this);
void func_80932808(BossSst* this);




extern UNK_TYPE D_06013D80;
extern SkeletonHeader D_06017C40;
extern AnimationHeader D_0600E7B8;
extern SkeletonHeader D_06004DE0;
extern SkeletonHeader D_0600A350;
extern AnimationHeader D_060002E8;
extern AnimationHeader D_06005860;
extern AnimationHeader D_0600B6FC;
extern AnimationHeader D_0600CC6C;
extern AnimationHeader D_0600C288;
extern AnimationHeader D_0600DC2C;
extern AnimationHeader D_0600B0D8;
extern AnimationHeader D_0600ACD4;
extern AnimationHeader D_0600D458;
extern AnimationHeader D_0600C9BC;
extern AnimationHeader D_0600C5B0;
extern Gfx D_06017EE0[];
extern Gfx D_06017F80[];
extern Gfx D_040184B0[];


Gfx D_80936990[] = {
    gsDPPipeSync(),
    gsDPSetCombineLERP(NOISE, ENVIRONMENT, PRIMITIVE, ENVIRONMENT, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsSPEndDisplayList()
};

Gfx D_809369A8[] = {
    gsDPPipeSync(),
    gsDPSetCombineLERP(0, 0, 0, PRIMITIVE, 0, 0, 0, PRIMITIVE, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL | G_RM_PASS, AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPEndDisplayList()
};

Vtx D_809369C8[] = {
    VTX(0x0190, 0x0190, 0x0000, 0x0800, 0x0000, 0xFF, 0xFF, 0xFF, 0xFF), 
    VTX(0xFE70, 0x0190, 0x0000, 0x0000, 0x0000, 0xFF, 0xFF, 0xFF, 0xFF), 
    VTX(0xFE70, 0xFE70, 0x0000, 0x0000, 0x1800, 0xFF, 0xFF, 0xFF, 0xFF), 
    VTX(0x0190, 0xFE70, 0x0000, 0x0800, 0x1800, 0xFF, 0xFF, 0xFF, 0xFF)
};

u32 D_80936A08[] = {
    0x04040404, 0x04040404, 0x04040404, 0x04040404, 
    0x08080808, 0x08080808, 0x08080808, 0x08080808, 
    0x0C0C0C0C, 0x0C0C0C0C, 0x0C0C0C0C, 0x0C0C0C0C, 
    0x10101010, 0x10101010, 0x10101010, 0x10101010, 
    0x14141414, 0x14141414, 0x14141414, 0x14141414, 
    0x18181818, 0x18181818, 0x18181818, 0x18181818, 
    0x1C1C1C1C, 0x1C1C1C1C, 0x1C1C1C1C, 0x1C1C1C1C, 
    0x20202020, 0x20202020, 0x20202020, 0x20202020, 
    0x24242424, 0x24242424, 0x24242424, 0x24242424, 
    0x28282828, 0x28282828, 0x28282828, 0x28282828, 
    0x2C2C2C2C, 0x2C2C2C2C, 0x2C2C2C2C, 0x2C2C2C2C, 
    0x30303030, 0x30303030, 0x30303030, 0x30303030, 
    0x34343434, 0x34343434, 0x34343434, 0x34343434, 
    0x38383838, 0x38383838, 0x38383838, 0x38383838, 
    0x3C3C3C3C, 0x3C3C3C3C, 0x3C3C3C3C, 0x3C3C3C3C, 
    0x40404040, 0x40404040, 0x40404040, 0x40404040, 
    0x44444444, 0x44444444, 0x44444444, 0x44444444, 
    0x48484848, 0x48484848, 0x48484848, 0x48484848, 
    0x4C4C4C4C, 0x4C4C4C4C, 0x4C4C4C4C, 0x4C4C4C4C, 
    0x50505050, 0x50505050, 0x50505050, 0x50505050, 
    0x54545454, 0x54545454, 0x54545454, 0x54545454, 
    0x58585858, 0x58585858, 0x58585858, 0x58585858, 
    0x5C5C5C5C, 0x5C5C5C5C, 0x5C5C5C5C, 0x5C5C5C5C, 
    0x60606060, 0x60606060, 0x60606060, 0x60606060, 
    0x64646464, 0x64646464, 0x64646464, 0x64646464, 
    0x68686868, 0x68686868, 0x68686868, 0x68686868, 
    0x6C6C6C6C, 0x6C6C6C6C, 0x6C6C6C6C, 0x6C6C6C6C, 
    0x70707070, 0x70707070, 0x70707070, 0x70707070, 
    0x74747474, 0x74747474, 0x74747474, 0x74747474, 
    0x78787878, 0x78787878, 0x78787878, 0x78787878, 
    0x7C7C7C7C, 0x7C7C7C7C, 0x7C7C7C7C, 0x7C7C7C7C, 
    0x80808080, 0x80808080, 0x80808080, 0x80808080, 
    0x84848484, 0x84848484, 0x84848484, 0x84848484, 
    0x88888888, 0x88888888, 0x88888888, 0x88888888, 
    0x8C8C8C8C, 0x8C8C8C8C, 0x8C8C8C8C, 0x8C8C8C8C, 
    0x90909090, 0x90909090, 0x90909090, 0x90909090, 
    0x94949494, 0x94949494, 0x94949494, 0x94949494, 
    0x98989898, 0x98989898, 0x98989898, 0x98989898, 
    0x9C9C9C9C, 0x9C9C9C9C, 0x9C9C9C9C, 0x9C9C9C9C, 
    0xA0A0A0A0, 0xA0A0A0A0, 0xA0A0A0A0, 0xA0A0A0A0, 
    0xA4A4A4A4, 0xA4A4A4A4, 0xA4A4A4A4, 0xA4A4A4A4, 
    0xA8A8A8A8, 0xA8A8A8A8, 0xA8A8A8A8, 0xA8A8A8A8, 
    0xACACACAC, 0xACACACAC, 0xACACACAC, 0xACACACAC, 
    0xB0B0B0B0, 0xB0B0B0B0, 0xB0B0B0B0, 0xB0B0B0B0, 
    0xB4B4B4B4, 0xB4B4B4B4, 0xB4B4B4B4, 0xB4B4B4B4, 
    0xB8B8B8B8, 0xB8B8B8B8, 0xB8B8B8B8, 0xB8B8B8B8, 
    0xBCBCBCBC, 0xBCBCBCBC, 0xBCBCBCBC, 0xBCBCBCBC, 
    0xC0C0C0C0, 0xC0C0C0C0, 0xC0C0C0C0, 0xC0C0C0C0, 
    0xC4C4C4C4, 0xC4C4C4C4, 0xC4C4C4C4, 0xC4C4C4C4, 
    0xC8C8C8C8, 0xC8C8C8C8, 0xC8C8C8C8, 0xC8C8C8C8, 
    0xCCCCCCCC, 0xCCCCCCCC, 0xCCCCCCCC, 0xCCCCCCCC, 
    0xD0D0D0D0, 0xD0D0D0D0, 0xD0D0D0D0, 0xD0D0D0D0, 
    0xD4D4D4D4, 0xD4D4D4D4, 0xD4D4D4D4, 0xD4D4D4D4, 
    0xD8D8D8D8, 0xD8D8D8D8, 0xD8D8D8D8, 0xD8D8D8D8, 
    0xDCDCDCDC, 0xDCDCDCDC, 0xDCDCDCDC, 0xDCDCDCDC, 
    0xE0E0E0E0, 0xE0E0E0E0, 0xE0E0E0E0, 0xE0E0E0E0, 
    0xE4E4E4E4, 0xE4E4E4E4, 0xE4E4E4E4, 0xE4E4E4E4, 
    0xE8E8E8E8, 0xE8E8E8E8, 0xE8E8E8E8, 0xE8E8E8E8, 
    0xECECECEC, 0xECECECEC, 0xECECECEC, 0xECECECEC, 
    0xF0F0F0F0, 0xF0F0F0F0, 0xF0F0F0F0, 0xF0F0F0F0, 
    0xF4F4F4F4, 0xF4F4F4F4, 0xF4F4F4F4, 0xF4F4F4F4, 
    0xF8F8F8F8, 0xF8F8F8F8, 0xF8F8F8F8, 0xF8F8F8F8, 
    0xFCFCFCFC, 0xFCFCFCFC, 0xFCFCFCFC, 0xFCFCFCFC, 
    0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
};

Gfx D_80936E08[] = {
    gsDPPipeSync(),
    gsSPMatrix(0x01000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPSetCombineLERP(0, 0, 0, 0, PRIMITIVE, 0, TEXEL0, 0, 0, 0, 0, PRIMITIVE, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(Z_CMP | Z_UPD | IM_RD | CVG_DST_FULL | ZMODE_XLU | FORCE_BL | G_RM_PASS, Z_CMP | Z_UPD | IM_RD | CVG_DST_FULL | ZMODE_XLU | FORCE_BL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetEnvColor(0x00, 0x00, 0x00, 0x00),
    gsDPLoadTextureBlock(D_80936A08, G_IM_FMT_I, G_IM_SIZ_8b, 16, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(D_809369C8, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx D_80936E90[] = {
    VTX(0xFF80, 0x0000, 0x004B, 0xFD81, 0xFF81, 0xA0, 0x97, 0xCD, 0xFF), 
    VTX(0x0081, 0x0000, 0x004A, 0x066A, 0xFF5B, 0xA0, 0x97, 0xCD, 0xFF), 
    VTX(0x0000, 0x0000, 0xFF6C, 0x0216, 0x0726, 0xA0, 0x97, 0xCD, 0xFF)
};

u32 D_80936EC0[] = {
    0x00000000, 0x00000000, 0x01060907, 0x1215222F, 
    0x3129200D, 0x06030100, 0x00000000, 0x00000000, 
    0x00000000, 0x00000101, 0x07203A46, 0x526B8591, 
    0x968E744C, 0x2C1B0F09, 0x00000000, 0x00000000, 
    0x00000000, 0x0003040F, 0x235793B3, 0xC9D8E4E9, 
    0xE9E7D2B3, 0x8B704B29, 0x0F040000, 0x00000000, 
    0x00000000, 0x01061538, 0x6EA4DDF2, 0xFAFDFFFD, 
    0xFDFAFAEF, 0xDECAAC7C, 0x43170301, 0x00000000, 
    0x00000000, 0x04184382, 0xC6E3F7FD, 0xFFFFFFFF, 
    0xFFFFFBFB, 0xF8F2EECC, 0x8E4F1A04, 0x03000000, 
    0x00000001, 0x175190C4, 0xF1FBFDFF, 0xFFFFFFFF, 
    0xFFFDFFFD, 0xFDFDF8EC, 0xCC8E4612, 0x03000000, 
    0x01010307, 0x4EA7CFE9, 0xF7FDFFFF, 0xFFFFFFFF, 
    0xFFFFFDFF, 0xFFFDFFF8, 0xEEC98134, 0x07000000, 
    0x00010721, 0x9EE1E7F4, 0xFAFDFFFF, 0xFFFFFFFD, 
    0xFFFDFFFF, 0xFFFFFFFB, 0xF7E4AF5C, 0x18010000, 
    0x0003134C, 0xD3ECEEF5, 0xFDFFFFFF, 0xFFFFFFFF, 
    0xFFFFFFFF, 0xFFFFFFFF, 0xFAF2CD85, 0x29060000, 
    0x00093485, 0xE0EBF1FA, 0xFFFFFFFF, 0xFFFFFFFD, 
    0xFDFFFFFF, 0xFFFFFDFA, 0xFAFAE4AA, 0x490C0000, 
    0x031051AC, 0xE7F4F8FA, 0xFFFFFFFF, 0xFFFFFFFD, 
    0xFDFFFFFF, 0xFFFFFBFA, 0xFAF7F1CD, 0x6D1A0300, 
    0x03156BC7, 0xEFF7FBFD, 0xFDFFFFFF, 0xFFFFFFFD, 
    0xFFFFFFFF, 0xFFFDFBFB, 0xFAF7F2DE, 0x90290400, 
    0x032088E0, 0xFAFBFAFD, 0xFFFFFFFF, 0xFFFFFFFF, 
    0xFFFFFFFF, 0xFFFFFDFA, 0xF7F1ECE3, 0xA8430C01, 
    0x06269EEE, 0xFBFBFFFF, 0xFDFFFFFF, 0xFFFFFFFF, 
    0xFFFFFFFF, 0xFFFFFDFA, 0xEEE6E9E3, 0xB3511001, 
    0x041DA7F4, 0xFFFDFFFF, 0xFFFFFFFF, 0xFFFDFFFF, 
    0xFFFFFFFF, 0xFFFDFFFB, 0xF5F1EBE3, 0xB85F1501, 
    0x0315A7F8, 0xFFFDFDFF, 0xFFFFFFFF, 0xFFFDFFFF, 
    0xFFFFFFFF, 0xFFFFFFFD, 0xFAF4EFE7, 0xC06B1A09, 
    0x0315B8FD, 0xFFFDFDFF, 0xFDFFFFFF, 0xFFFFFFFF, 
    0xFFFFFFFF, 0xFFFFFFFF, 0xFAF4EEE9, 0xCC7A1809, 
    0x0C18CDFF, 0xFAFBFDFD, 0xFFFFFFFF, 0xFFFFFFFF, 
    0xFFFFFFFF, 0xFFFDFFFF, 0xFBF4EEEB, 0xD27D1509, 
    0x090FC9F5, 0xE9F7FBFD, 0xFFFFFFFF, 0xFFFFFFFF, 
    0xFFFDFFFF, 0xFFFFFFFB, 0xF7EFE9E7, 0xC6731707, 
    0x0406B9EC, 0xD7F1FBFD, 0xFFFFFFFF, 0xFFFFFFFF, 
    0xFFFDFFFF, 0xFFFFFFFA, 0xF7F1E9E1, 0xB55D0F09, 
    0x00039EF1, 0xDAEEFAFD, 0xFDFFFFFF, 0xFFFFFFFF, 
    0xFFFDFFFD, 0xFDFDFBFD, 0xF8F1ECD8, 0x9845090C, 
    0x00035DF2, 0xEEF5F7F7, 0xFAFDFFFF, 0xFFFFFFFF, 
    0xFFFBFBFD, 0xFBFBFBFA, 0xF5F1EFD2, 0x872F040A, 
    0x000120C7, 0xEBF5F2EC, 0xF4FDFFFF, 0xFFFFFDFD, 
    0xFFFFFDFB, 0xFAFAFAF4, 0xF2EFEEC7, 0x6D230407, 
    0x0000037D, 0xCDF2ECE6, 0xF1F8FBFF, 0xFFFFFFFF, 
    0xFDFDFBFB, 0xF8F7F8F4, 0xECF2E6A8, 0x4B130A07, 
    0x0000013A, 0x9BEBEBDD, 0xE3F5FDFF, 0xFFFFFFFF, 
    0xFFFDFDFB, 0xF8F8F4EF, 0xEBEBCD76, 0x2609090D, 
    0x00000017, 0x62D7E9DD, 0xDEF2FBFF, 0xFFFFFDFF, 
    0xFFFFFDFB, 0xF8F8F4F2, 0xEFE3A140, 0x0D030309, 
    0x00000003, 0x2082E0E1, 0xE7F5FFFF, 0xFFFFFFFD, 
    0xFFFBFDFB, 0xFAF8F7F1, 0xE4BE661D, 0x03000101, 
    0x00000000, 0x042B96CC, 0xD8EEFBFF, 0xFFFFFFFF, 
    0xFFFDFBFB, 0xFAFAF7E6, 0xC3772906, 0x00000000, 
    0x00000000, 0x00032154, 0x79B0D8F1, 0xF8FFFFFF, 
    0xFDFAF7EF, 0xE6D3B685, 0x4B1A0400, 0x00000000, 
    0x00000000, 0x0000030A, 0x183D73AA, 0xD5ECF4F7, 
    0xF2E1CAB3, 0x9E7D5129, 0x0C010000, 0x00000000, 
    0x00000000, 0x00000000, 0x0003040C, 0x274E6B73, 
    0x62544C43, 0x3A271706, 0x01000000, 0x00000000, 
    0x00000000, 0x00000000, 0x00000100, 0x060F1B15, 
    0x100C120F, 0x0C090401, 0x00000000, 0x00000000
};

Gfx D_809372C0[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(D_80936EC0, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(NOISE, ENVIRONMENT, PRIMITIVE, ENVIRONMENT, TEXEL0, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_DECAL2),
    gsSPClearGeometryMode(G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsSPVertex(D_80936E90, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList()
};

Vec3f D_80937340 = { -50.0f, 0.0f, 0.0f };
Vec3f D_8093734C = { 0.0f, 0.0f, 0.0f };
Vec3f D_80937358 = { 100.0f, 100.0f, 0.0f };
Vec3f D_80937364 = { 0.0f, 0.0f, 0.0f };
Vec3f D_80937370 = { 0.0f, 0.0f, 0.0f };

Vec3f D_8093737C[] = {
    {-100.0f, 300.0f, 0.0f },
    {100.0f, 300.0f, 100.0f },
    {-50.0f, 600.0f, 100.0f },
    {0.0f, 400.0f, 200.0f },
    {0.0f, 200.0f, 200.0f },
    {-100.0f, 0.0f, 200.0f },
    {-200.0f, 0.0f, 100.0f },
    {-110.0f, 180.0f, 730.0f }
};

Vec3f D_809373DC[] = {
    {200.0f, 800.0f, 800.0f },
    {-200.0f, 700.0f, 1400.0f },
    {200.0f, 100.0f, 750.0f },
    {0.0f, 200.0f, 900.0f },
    {0.0f, 200.0f, 900.0f },
    {300.0f, 400.0f, 1200.0f },
    {-100.0f, 200.0f, 800.0f },
    {-100.0f, 200.0f, 800.0f }
};

Vec3f D_8093743C = { 0.0f, 0.0f, 0.0f };
u32 D_80937448 = 0;
u32 D_8093744C[] = {0,0,0,0,0,0};

Color_RGBA8 D_80937464 = { 255, 255, 255, 255 };
Color_RGBA8 D_80937468 = { 0, 0, 0, 255 };

s32 D_8093746C[] = { 
    0x00000000, 0x00000000 
};

const ActorInit Boss_Sst_InitVars = {
    ACTOR_BOSS_SST,
    ACTORTYPE_BOSS,
    FLAGS,
    OBJECT_SST,
    sizeof(BossSst),
    (ActorFunc)BossSst_Init,
    (ActorFunc)BossSst_Destroy,
    (ActorFunc)BossSst_Update,
    (ActorFunc)BossSst_Draw,
};

// D_80937494
static ColliderJntSphItemInit sJntSphItemsInit2[11] = {
    {
        { 0x01, { 0x20000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 2, { { 2000, -1500, 250 }, 65 }, 100 },
    },
    {
        { 0x01, { 0x20000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 10, { { 0, 0, 0 }, 22 }, 100 },
    },
    {
        { 0x01, { 0x20000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 11, { { 500, 0, 0 }, 22 }, 100 },
    },
    {
        { 0x01, { 0x20000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 15, { { -250, -250, 0 }, 25 }, 100 },
    },
    {
        { 0x01, { 0x20000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 16, { { 500, -250, 0 }, 25 }, 100 },
    },
    {
        { 0x01, { 0x20000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 20, { { 250, -250, 0 }, 25 }, 100 },
    },
    {
        { 0x01, { 0x20000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 21, { { 500, -250, 0 }, 25 }, 100 },
    },
    {
        { 0x01, { 0x20000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 25, { { 0, 0, 0 }, 27 }, 100 },
    },
    {
        { 0x01, { 0x20000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 26, { { 750, 0, 0 }, 26 }, 100 },
    },
    {
        { 0x01, { 0x20000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 5, { { 750, -150, 0 }, 21 }, 100 },
    },
    {
        { 0x01, { 0x20000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 6, { { 750, 0, 0 }, 20 }, 100 },
    },
};

ColliderJntSphInit sJntSphInit2 =
{
    { COLTYPE_UNK0, 0x10, 0x09, 0x38, 0x10, COLSHAPE_JNTSPH },
    11, sJntSphItemsInit2,
};

// D_80937630
static ColliderJntSphItemInit sJntSphItemsInit1[11] = {
    {
        { 0x01, { 0x20000000, 0x00, 0x30 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 7, { { 1500, 0, 0 }, 70 }, 100 },
    },
    {
        { 0x01, { 0x20000000, 0x00, 0x30 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 6, { { 0, 0, 0 }, 75 }, 100 },
    },
    {
        { 0x01, { 0x20000000, 0x00, 0x30 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 4, { { 5000, 0, 0 }, 120 }, 100 },
    },
    {
        { 0x01, { 0x20000000, 0x00, 0x30 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 3, { { -2500, 0, 0 }, 150 }, 100 },
    },
    {
        { 0x01, { 0x20000000, 0x00, 0x30 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 43, { { 1500, 0, 0 }, 80 }, 100 },
    },
    {
        { 0x01, { 0x20000000, 0x00, 0x30 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 43, { { 7500, 0, 0 }, 70 }, 100 },
    },
    {
        { 0x01, { 0x20000000, 0x00, 0x30 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 44, { { 3000, 0, 0 }, 60 }, 100 },
    },
    {
        { 0x01, { 0x20000000, 0x00, 0x30 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 40, { { 1500, 0, 0 }, 80 }, 100 },
    },
    {
        { 0x01, { 0x20000000, 0x00, 0x30 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 40, { { 7500, 0, 0 }, 70 }, 100 },
    },
    {
        { 0x01, { 0x20000000, 0x00, 0x30 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 41, { { 3000, 0, 0 }, 60 }, 100 },
    },
    {
        { 0x01, { 0x20000000, 0x00, 0x30 }, { 0x00000080, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 8, { { 1500, 0, 0 }, 70 }, 100 },
    },
};

// D_809377BC
 ColliderJntSphInit sJntSphInit1 =
{
    { COLTYPE_UNK12, 0x10, 0x0D, 0x38, 0x10, COLSHAPE_JNTSPH },
    11, sJntSphItemsInit1,
};

// D_809377CC
 ColliderCylinderInit sCylinderInit1 =
{
    { COLTYPE_UNK0, 0x00, 0x08, 0x00, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
    { 85, 100, -50, { 0, 0, 0 } },
};

// D_809377F8
 ColliderCylinderInit sCylinderInit2 =
{
    { COLTYPE_UNK10, 0x10, 0x00, 0x00, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x20000000, 0x04, 0x10 }, { 0x00000000, 0x00, 0x00 }, 0x19, 0x00, 0x00 },
    { 85, 1, 0, { 0, 0, 0 } },
};

CollisionCheckInfoInit D_80937824 = {
    0x24, 0x0064, 0x0064, 0xC8
};

DamageTable D_8093782C = {
    0x00, 0x02, 0x01, 0x02, 0x00, 0x02, 0x02, 0x02, 
    0x01, 0x02, 0x04, 0x02, 0x34, 0x02, 0x04, 0x02,
    0x02, 0x00, 0x34, 0x44, 0x00, 0x00, 0x01, 0x04, 
    0x02, 0x02, 0x08, 0x04, 0x00, 0x00, 0x04, 0x00
};

AnimationHeader* D_8093784C[] = { 
    0x060002E8, 0x06005860 
};

AnimationHeader* D_80937854[] = {
    0x06004EC4, 0x0600A434
};

AnimationHeader* D_8093785C[] = {
    0x06004FB4, 0x0600A524
};

AnimationHeader* D_80937864[] = {
    0x060050A8, 0x0600A618
};

AnimationHeader* D_8093786C[] = {
    0x0600529C, 0x0600A848
};

AnimationHeader* D_80937874[] = {
    0x0600539C, 0x0600A948
};

AnimationHeader* D_8093787C[] = {
    0x0600549C, 0x0600AA4C
};

AnimationHeader* D_80937884[] = {
    0x06005588, 0x0600AB38
};

// D_8093788C
InitChainEntry sInitChain[] = {
    ICHAIN_S8(naviEnemyId, 41, ICHAIN_CONTINUE),
    ICHAIN_U8(unk_1F, 5, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 20, ICHAIN_STOP),
};

// Color_RGBA8 D_80937898 = { 80, 80, 150, 255 };
// Color_RGBA8 D_8093789C = { 40, 40, 80, 255 };
// Color_RGBA8 D_809378A0 = { 0, 0, 0, 255 };
// Color_RGBA8 D_809378A4 = { 100, 100, 100, 0 };
Color_RGBA8 D_80937898[] = {{ 80, 80, 150, 255 },
    { 40, 40, 80, 255 },
    { 0, 0, 0, 255 }, 
    { 100, 100, 100, 0 }
};

s32 D_809378A8 = 0;
Vec3f D_809378AC = { 0.0f, 0.0f, 0.0f };
Vec3f D_809378B8 = { 1000.0f, 0.0f, 0.0f };
Vec3f D_809378C4[] = {
    {0.0f, 0.0f, 340.0f },
    {-160.0f, 0.0f, 250.0f },
    {160.0f, 0.0f, 250.0f }
};
s32 D_809378E8 = 0;

BossSst* D_80938C90; // Head?
BossSst* D_80938C98[2]; // Hands?
//BossSst* D_80938C98; // Hand 1
//BossSst* D_80938C9C; // Hand 2
BgSstFloor* D_80938CA0;
Vec3f D_80938CA8[2];

s16 D_80938CC0[2];
s16 D_80938CC4; // cam

#ifdef NON_MATCHING
// stack
void BossSst_Init(Actor* thisx, GlobalContext *globalCtx) {
    BossSst* this = THIS;
    ColliderCylinder* collider2 = &this->collider2;
    ColliderJntSph* collider1 = &this->collider1;
    //ActorContext* actorCtx = &globalCtx->actorCtx;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    Collider_InitCylinder(globalCtx, collider2);
    Collider_InitJntSph(globalCtx, collider1);
    func_80061ED4(&this->actor.colChkInfo, &D_8093782C, &D_80937824);
    Flags_SetSwitch(globalCtx, 0x14);
    if (this->actor.params == -1) {
        D_80938CA0 = (BgSstFloor*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_BG_SST_FLOOR, 
            D_80937340.x, D_80937340.y, D_80937340.z, 0, 0, 0, 0);
        SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06017C40, &D_0600E7B8, this->limbDrawTable, this->transitionDrawTable, 45);
        ActorShape_Init(&this->actor.shape, 70000.0f, ActorShadow_DrawFunc_Circle, 95.0f);
        Collider_SetJntSph(globalCtx, collider1, &this->actor, &sJntSphInit1, this->colliderItems);
        Collider_SetCylinder(globalCtx, collider2, &this->actor, &sCylinderInit1);
        D_80938C90 = this;
        this->actor.posRot.pos.x = 0.0f;
        this->actor.posRot.pos.y = 0.0f;
        this->actor.posRot.pos.z = -650.0f;
        this->actor.initPosRot.pos = this->actor.posRot.pos;
        this->actor.shape.rot.y = 0;
        if (Flags_GetClear(globalCtx, globalCtx->roomCtx.curRoom.num)) {
            Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_DOOR_WARP1, -50.0f, 0.0f, 400.0f, 0, 0, 0, -1);
            Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_B_HEART, -50.0f, 0.0f, -200.0f, 0, 0, 0, 0);
            Actor_Kill(&this->actor);
        } else {
            D_80938C98[0] = (BossSst*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_BOSS_SST, 
                this->actor.posRot.pos.x + 200.0f, 
                this->actor.posRot.pos.y, 
                this->actor.posRot.pos.z + 400.0f, 
                0, this->actor.shape.rot.y, 0, 0);
            D_80938C98[1] = (BossSst*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_BOSS_SST, 
                this->actor.posRot.pos.x + -200.0f, 
                this->actor.posRot.pos.y, 
                this->actor.posRot.pos.z + 400.0f, 
                0, this->actor.shape.rot.y, 0, 1);
            D_80938C98[0]->actor.attachedB = &D_80938C98[1]->actor;
            D_80938C98[1]->actor.attachedB = &D_80938C98[0]->actor;

            this->actor.flags &= ~1;
            this->actor.update = func_80934338;
            this->actor.draw = func_809352DC;
            this->unk_3C4 = -650.0f;
            this->actor.unk_4C = 4000.0f;
            func_8092CAA0(this);
            Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, 9);
        }
    } else {
        Collider_SetJntSph(globalCtx, collider1, &this->actor, &sJntSphInit2, this->colliderItems);
        Collider_SetCylinder(globalCtx, collider2, &this->actor, &sCylinderInit2);
        if (this->actor.params == 0) {
            SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06004DE0, &D_060002E8, this->limbDrawTable, this->transitionDrawTable, 27);
            this->unk_194 = -1;
            this->collider1.list[0].dim.modelSphere.center.z *= -1;
        } else {
            SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_0600A350, &D_06005860, this->limbDrawTable, this->transitionDrawTable, 27);
            this->unk_194 = 1;
        }

        ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 95.0f);
        this->unk_19E = -0xDAC;
        this->actor.unk_4C = 5000.0f;
        this->actor.flags &= ~1;
        func_8092FBE4(this);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/BossSst_Init.s")
#endif

void BossSst_Destroy(Actor *thisx, GlobalContext *globalCtx) {
    BossSst* this = THIS;

    Collider_DestroyJntSph(globalCtx, &this->collider1);
    Collider_DestroyCylinder(globalCtx, &this->collider2);
    func_800F89E8(&this->unk_3C8);
}

void func_8092CAA0(BossSst *this) {
    this->actor.draw = NULL;
    D_80938C98[0]->actor.draw = NULL;
    D_80938C98[1]->actor.draw = NULL;
    this->unk_194 = 0;
    this->actionFunc = func_8092CAD0;
}

void func_8092CAD0(BossSst *this, GlobalContext *globalCtx) {
    if (this->actor.yDistFromLink < 1000.0f) {
        func_8092CB0C(this, globalCtx);
    }
}

void func_8092CB0C(BossSst *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;

    this->unk_198 = 0x263;
    this->unk_195 = 0;
    player->actor.posRot.pos.x = D_80937340.x;
    player->actor.posRot.pos.y = 1000.0f;
    player->actor.posRot.pos.z = D_80937340.z;
    player->linearVelocity = player->actor.velocity.y = 0.0f;
    player->actor.shape.rot.y = -0x8000;
    player->targetYaw = -0x8000;
    player->currentYaw = -0x8000;
    player->dropY = 0;
    player->stateFlags1 |= 0x20;
    
    func_80064520(globalCtx, &globalCtx->csCtx);
    func_8002DF54(globalCtx, &this->actor, 8);
    D_80938CC4 = Gameplay_CreateSubCamera(globalCtx);
    Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
    Gameplay_ChangeCameraStatus(globalCtx, D_80938CC4, 7);
    Math_Vec3f_Copy(&D_8093734C, &player->actor.posRot.pos);
    if (gSaveContext.eventChkInf[7] & 0x80) {
        D_80937358.z = -100.0f;
    }

    func_800C04D8(globalCtx, D_80938CC4, &D_8093734C, &D_80937358);
    Audio_SetBGM(0x100100FF);
    this->actionFunc = func_8092CC58;
}

void func_8092CC58(BossSst *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;
    s32 sp48;
    s32 sp44;
    s32 sp3C;

    if (this->unk_198 != 0) {
        this->unk_198--;
    }

    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_0600DC2C, -3.0f);
    }

    if (this->unk_198 == 0) {
        D_80938C98[1]->actor.flags |= 1;
        D_80938C98[0]->actor.flags |= 1;
        player->stateFlags1 &= ~0x20;
        func_80064534(globalCtx, &globalCtx->csCtx);
        func_8002DF54(globalCtx, &this->actor, 7);
        D_8093734C.y += 30.0f;
        D_8093734C.z += 300.0f;
        func_800C04D8(globalCtx, D_80938CC4, &D_8093734C, &D_80937358);
        func_800C078C(globalCtx, 0, D_80938CC4);
        Gameplay_ChangeCameraStatus(globalCtx, D_80938CC4, 1);
        Gameplay_ChangeCameraStatus(globalCtx, 0, 7);
        Gameplay_ClearCamera(globalCtx, D_80938CC4);
        gSaveContext.eventChkInf[7] |= 0x80;
        func_8092DB30(this);
        this->collider1.base.maskA |= 1;
        D_80938C98[0]->collider1.base.maskA |= 1;
        D_80938C98[1]->collider1.base.maskA |= 1;
        this->unk_198 = 0x70;
    } else if (this->unk_198 >= 0x222) {
        if (player->actor.posRot.pos.y > 100.0f) {
            player->actor.posRot.pos.x = D_80937340.x;
            player->actor.posRot.pos.z = D_80937340.z;
            player->linearVelocity = 0.0f;
            player->actor.shape.rot.y = -0x8000;
            player->targetYaw = -0x8000;
            player->currentYaw = -0x8000;
        }

        Math_Vec3f_Copy(&D_8093734C, &player->actor.posRot.pos);
        if ((player->actor.bgCheckFlags & 2) != 0) {
            if (this->unk_195 == 0) {
                D_80938CA0->actor.params = 1;
                this->unk_195 = 1;
                func_800AA000(this->actor.xyzDistFromLinkSq, 0xFF, 0x14, 0x96);
                Audio_PlayActorSound2(&D_80938CA0->actor, NA_SE_EN_SHADEST_TAIKO_HIGH);
            } else if (gSaveContext.eventChkInf[7] & 0x80) {
                D_80938C98[1]->actor.draw = BossSst_Draw;
                D_80938C98[0]->actor.draw = BossSst_Draw;
                this->actor.draw = func_809352DC;
                this->unk_198 = 0xB2;
                D_8093734C.y = 0.0f;
                D_8093734C.z = 0.0f;
                D_8093734C.x = -73.0f;
            } else {
                this->unk_198 = 0x222;
            }
        }
    } else if (this->unk_198 >= 0x1DE) {
        D_80937358.x += 10;
        D_80937358.y += 10;
        D_80937358.z -= 10;
    } else if (this->unk_198 >= 0x1C0) {
        if (this->unk_198 == 0x1CC) {
            D_80938C98[1]->actor.draw = BossSst_Draw;
            D_80938C98[0]->actor.draw = BossSst_Draw;
            this->actor.draw = func_809352DC;
            player->actor.posRot.pos.x = D_80937340.x;
            player->actor.posRot.pos.z = D_80937340.z;
            func_8092FDD0(D_80938C98[1]);
        }

        if (this->unk_198 >= 0x1CD) {
            D_80937358.x -= 40.0f;
            D_80937358.y -= 40.0f;
            D_80937358.z += 20.0f;
        } else if (this->unk_198 == 0x1CC) {
            D_8093734C.x = D_80938C98[1]->actor.initPosRot.pos.x;
            D_8093734C.y = D_80938C98[1]->actor.initPosRot.pos.y - 20.0f;
            D_8093734C.z = D_80938C98[1]->actor.initPosRot.pos.z + 10;
            D_80937358.x = D_80938C98[1]->actor.initPosRot.pos.x + 150.0f;
            D_80937358.y = D_80938C98[1]->actor.initPosRot.pos.y + 100.0f;
            D_80937358.z = D_80938C98[1]->actor.initPosRot.pos.z + 80.0f;
        }
    } else {
        if (this->unk_198 >= 0x174) {
            sp44 = this->unk_198 - 0x174;
            sp48 = 6;
            if (this->unk_198 == 0x1BF) {
                D_8093734C = player->actor.posRot.pos;
                D_80937358.x = -250.0f;
                D_80937358.y = 160.0f;
                D_80937358.z = -190.0f;
            } else if (sp44 == 0xB) {
                D_8093734C.x = D_80938C98[1]->actor.initPosRot.pos.x + 30.0f;
                D_8093734C.y = D_80938C98[1]->actor.initPosRot.pos.y;
                D_8093734C.z = D_80938C98[1]->actor.initPosRot.pos.z + 20.0f;
                D_80937358.x = D_80938C98[1]->actor.initPosRot.pos.x + 100.0f;
                D_80937358.y = D_80938C98[1]->actor.initPosRot.pos.y + 10;
                D_80937358.z = D_80938C98[1]->actor.initPosRot.pos.z - 210.0f;
            } else if (sp44 == 0x3E) {
                D_8093734C.x = D_80938C98[0]->actor.initPosRot.pos.x;
                D_8093734C.y = D_80938C98[0]->actor.initPosRot.pos.y + 50.0f;
                D_8093734C.z = D_80938C98[0]->actor.initPosRot.pos.z + 100.0f;
                D_80937358.x = D_80938C98[0]->actor.initPosRot.pos.x + 110.0f;
                D_80937358.y = D_80938C98[0]->actor.initPosRot.pos.y + 180.0f;
                D_80937358.z = D_80938C98[0]->actor.initPosRot.pos.z - 70.0f;
            }
            
        } else if (this->unk_198 >= 0x130) {
            sp44 = this->unk_198 - 0x130;
            sp48 = 5;
            if (sp44 == 0xB) {
                D_8093734C.x = D_80938C98[1]->actor.initPosRot.pos.x + 40.0f;
                D_8093734C.y = D_80938C98[1]->actor.initPosRot.pos.y - 90.0f;
                D_8093734C.z = D_80938C98[1]->actor.initPosRot.pos.z - 40.0f;
                D_80937358.x = D_80938C98[1]->actor.initPosRot.pos.x - 20.0f;
                D_80937358.y = D_80938C98[1]->actor.initPosRot.pos.y + 210.0f;
                D_80937358.z = D_80938C98[1]->actor.initPosRot.pos.z + 170.0f;
            } else if (this->unk_198 == 0x170) {
                D_8093734C.x = D_80938C98[0]->actor.initPosRot.pos.x - 20.0f;
                D_8093734C.y = D_80938C98[0]->actor.initPosRot.pos.y;
                D_8093734C.z = D_80938C98[0]->actor.initPosRot.pos.z;
                D_80937358.x = D_80938C98[0]->actor.initPosRot.pos.x - 70.0f;
                D_80937358.y = D_80938C98[0]->actor.initPosRot.pos.y + 170.0f;
                D_80937358.z = D_80938C98[0]->actor.initPosRot.pos.z + 150.0f;
            }
            
        } else if (this->unk_198 >= 0xF4) {
            sp44 = this->unk_198 - 0xF4;
            sp48 = 4;
            if (sp44 == 0xB) {
                D_8093734C.x = D_80938C98[1]->actor.initPosRot.pos.x + 30.0f;
                D_8093734C.y = D_80938C98[1]->actor.initPosRot.pos.y + 70.0f;
                D_8093734C.z = D_80938C98[1]->actor.initPosRot.pos.z + 40.0f;
                D_80937358.x = D_80938C98[1]->actor.initPosRot.pos.x + 110.0f;
                D_80937358.y = D_80938C98[1]->actor.initPosRot.pos.y - 140.0f;
                D_80937358.z = D_80938C98[1]->actor.initPosRot.pos.z - 10;
            } else if (this->unk_198 == 0x12C) {
                D_8093734C.x = D_80938C98[0]->actor.initPosRot.pos.x - 20.0f;
                D_8093734C.y = D_80938C98[0]->actor.initPosRot.pos.y - 80.0f;
                D_8093734C.z = D_80938C98[0]->actor.initPosRot.pos.z + 320.0f;
                D_80937358.x = D_80938C98[0]->actor.initPosRot.pos.x - 130.0f;
                D_80937358.y = D_80938C98[0]->actor.initPosRot.pos.y + 130.0f;
                D_80937358.z = D_80938C98[0]->actor.initPosRot.pos.z - 150.0f;
            }
            
        } else if (this->unk_198 >= 0xC0) {
            sp44 = this->unk_198 - 0xC0;
            sp48 = 3;
            if (this->unk_198 == 0xF0) {
                D_8093734C.x = D_80938C98[0]->actor.initPosRot.pos.x - 190.0f;
                D_8093734C.y = D_80938C98[0]->actor.initPosRot.pos.y - 110.0f;
                D_8093734C.z = D_80938C98[0]->actor.initPosRot.pos.z + 40.0f;
                D_80937358.x = D_80938C98[0]->actor.initPosRot.pos.x + 120.0f;
                D_80937358.y = D_80938C98[0]->actor.initPosRot.pos.y + 130.0f;
                D_80937358.z = D_80938C98[0]->actor.initPosRot.pos.z + 50.0f;
            } else if (sp44 == 0xC) {
                
                D_8093734C.x = D_80937340.x + 50.0f;
                D_8093734C.y = D_80937340.y - 90.0f;
                D_8093734C.z = D_80937340.z - 200.0f;
                D_80937358.x = D_80937340.x + 50.0f;
                D_80937358.y = D_80937340.y + 350.0f;
                D_80937358.z = D_80937340.z + 150.0f;
            }
            
        } else if (this->unk_198 >= 0x94) {
            sp44 = this->unk_198 - 0x94;
            sp48 = 2;
        } else if (this->unk_198 >= 0x70) {
            sp44 = this->unk_198 - 0x70;
            sp48 = 1;
        } else {
            sp44 = this->unk_198 % 0x1C;
            sp48 = 0;
        }

        if (this->unk_198 < 0xC7) {
            sp3C = 0xC6 - this->unk_198;
            if ((gSaveContext.eventChkInf[7] & 0x80) && (sp3C < 0x2D)) {
                D_8093734C.x += 4.92f;
                D_8093734C.y += 2.0f;
                D_80937358.x -= 0.79999995f;
                D_80937358.y -= 3.6f;
                D_80937358.z += 10.0f;
            } else if (this->unk_198 < 0x15) {
                D_8093734C.y -= 7.0f;
                D_8093734C.z += 9.0f;
                D_80937358.x += 6.5f;
                D_80937358.y += 4.0f;
                D_80937358.z += 15.5f;
                this->unk_194 = 1;
                this->actor.flags |= 0x80;
            } else if (sp3C < 0x28) {
                D_8093734C.x += 1.25f;
                D_8093734C.y += 3.5f;
                D_8093734C.z += 5.0f;
                D_80937358.x += 2.0f;
                D_80937358.y -= 8.5f;
            } else if (sp3C >= 0x2D) {
               if (sp3C < 0x55) {
                    D_8093734C.x -= 2.5f;
                    D_8093734C.y += 4.25f;
                    D_8093734C.z -= 12.0f;
                    D_80937358.x -= 6.5f;
                    D_80937358.y += 1.25f;
                    D_80937358.z -= 3.5f;
                } else if (sp3C == 0x55) {
                    if (!(gSaveContext.eventChkInf[7] & 0x80)) {
                        TitleCard_InitBossName(globalCtx, &globalCtx->actorCtx.titleCtx, SEGMENTED_TO_VIRTUAL(&D_06013D80), 0xA0, 0xB4, 0x80, 0x28);
                    }
    
                    Audio_SetBGM(0x1B);
                    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_0600C288, -5.0f);
                    func_80933D2C(this, NA_SE_EN_SHADEST_DISAPPEAR);
                }
            }
        }

        if (sp44 == 0xC) {
            func_8092FDD0(D_80938C98[1]);
        }

        if ((sp44 != 5) && ((sp44 % ((sp48 * 2) + 7)) == 5)) {
            func_809300E4(D_80938C98[0]);
        }
    }

    if (this->actionFunc != func_8092DB4C) {
        func_800C04D8(globalCtx, D_80938CC4, &D_8093734C, &D_80937358);
    }
}

void func_8092DA6C(BossSst *this) {
    if (this->skelAnime.animCurrentSeg != &D_0600DC2C) {
        SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_0600DC2C, -5.0f);
    }

    this->actionFunc = func_8092DAB8;
}

void func_8092DAB8(BossSst *this, GlobalContext *globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((D_8093746C[D_80938C98[0]->actor.params] == 0) && 
        (D_8093746C[D_80938C98[1]->actor.params] == 0)) {
        func_8092DB30(this);
    }
}

void func_8092DB30(BossSst *this) {
    this->unk_198 = 0x7F;
    this->unk_195 = 0;
    this->actionFunc = func_8092DB4C;
}

void func_8092DB4C(BossSst *this, GlobalContext *globalCtx) {
    s32 tmp;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((this->unk_195 == 0) &&
        ((D_8093746C[D_80938C98[0]->actor.params] == 1) || (D_8093746C[D_80938C98[0]->actor.params] == 0)) &&
        ((D_8093746C[D_80938C98[1]->actor.params] == 1) || (D_8093746C[D_80938C98[1]->actor.params] == 0))) {
        this->unk_195 = 1;
    }

    if ((this->unk_195 != 0) && (this->unk_198 != 0)) {
        this->unk_198--;
    }

    if (this->unk_198 == 0) {
        if ((PLAYER->actor.posRot.pos.y > -50.0f) && ((PLAYER->stateFlags1 & 0x6080) == 0)) {
            tmp = (Math_Rand_ZeroOne() <= 0.5f);
            D_80938C98[tmp]->unk_195 = 1;
            func_8092DA6C(this);
        } else {
            this->unk_198 = 0x1C;
        }
    } else {
        Math_SmoothScaleMaxS(&this->actor.shape.rot.y, func_8002DAC0(&PLAYER->actor, &D_80937340) + 0x8000, 4, 0x400);
        if ((this->unk_198 == 0x1C) || (this->unk_198 == 0x54)) {
            func_80933D2C(this, NA_SE_EN_SHADEST_PRAY);
        }
    }
    
}

void func_8092DCEC(BossSst *this, s32 arg1) {
    if (arg1 != 0) {
        SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_0600C9BC, -5.0f);
    } else {
        SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_0600C5B0, -5.0f);
    }
    this->actionFunc = func_8092DD50;
}

void func_8092DD50(BossSst *this, GlobalContext *globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        if ((D_8093746C[D_80938C98[0]->actor.params] == 8) && (D_8093746C[D_80938C98[1]->actor.params] == 8)) {
            func_8092DE48(this);
        } else if ((D_8093746C[D_80938C98[0]->actor.params] == 9) || (D_8093746C[D_80938C98[1]->actor.params] == 9)) {
            func_8092E34C(this);
        } else if (this->skelAnime.animCurrentSeg == &D_0600C9BC) {
            func_8092E3E8(this);
        } else {
            func_8092DA6C(this);
        }
    }
}

void func_8092DE48(BossSst *this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_0600E7B8, -5.0f);
    this->actor.speedXZ = 0.0f;
    this->collider2.base.acFlags |= 1;
    this->actionFunc = func_8092DEA0;
}

void func_8092DEA0(BossSst *this, GlobalContext *globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((D_80938C98[0]->unk_195 != 0) && (D_80938C98[0]->actionFunc == func_8093285C) && 
        (D_80938C98[1]->unk_195 != 0) && (D_80938C98[1]->actionFunc == func_8093285C)) {
        func_8092DF40(this);
    } else {
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 4, 0x800, 0x400);
    }
}

void func_8092DF40(BossSst *this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_0600B0D8, 0.5f, 0.0f, SkelAnime_GetFrameCount(&D_0600B0D8.genericHeader), 3, -5.0f);
    func_80933C80(D_80938C98[0], 0x20);
    func_80933C80(D_80938C98[1], 0x20);
    this->collider1.base.atFlags |= 1;
    this->actor.speedXZ = 3.0f;
    this->unk_3C4 = -650.0f;
    this->unk_195 = 0;
    this->actionFunc = func_8092DFFC;
}

void func_8092DFFC(BossSst *this, GlobalContext *globalCtx) {
    f32 tmpf1;
    s32 sp30;

    sp30 = SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((this->unk_195 == 0) && (func_800A56C8(&this->skelAnime, 6.0f) != 0)) {
        this->unk_195 = 1;
        this->actor.speedXZ = 0.25f;
        this->skelAnime.animPlaybackSpeed = 0.2f;
    }

    this->actor.speedXZ *= 1.25f;
    this->actor.speedXZ = CLAMP_MAX(this->actor.speedXZ, 45.0f);

    if (this->unk_195 != 0) {
        if (Math_SmoothScaleMaxMinF(&this->unk_3C4, 650.0f, 0.4f, this->actor.speedXZ, 1.0f) < 10.0f) {
            this->unk_3C4 = 650.0f;
            func_8092E25C(this);
        } else {
            tmpf1 = (650.0f - this->unk_3C4) * 3.0f;
            if (tmpf1 > 180.0f) {
                tmpf1 = 180.0f;
            }

            this->actor.posRot.pos.y = this->actor.initPosRot.pos.y - tmpf1;
        }

        if (sp30 == 0) {
            D_80938CA8[0].z += 5.0f;
            D_80938CA8[1].z += 5.0f;
        }
    } else {
        Math_SmoothScaleMaxF(&this->unk_3C4, -700.0f, 0.4f, this->actor.speedXZ);
        Math_ApproxF(&this->actor.posRot.pos.y, this->actor.initPosRot.pos.y - 180.0f, 20.0f);
        D_80938CA8[0].y += 5.0f;
        D_80938CA8[1].y += 5.0f;
    }

    if (this->collider1.base.atFlags & 2) {
        this->collider1.base.atFlags &= ~3;
        D_80938C98[0]->collider1.base.atFlags &= ~3;
        D_80938C98[1]->collider1.base.atFlags &= ~3;
        func_8002F71C(globalCtx, &this->actor, 10.0f, this->actor.shape.rot.y, 5.0f);
        func_8002F7DC(&PLAYER->actor, NA_SE_PL_BODY_HIT);
    }
}

void func_8092E25C(BossSst *this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_0600DC2C, -20.0f);
    this->unk_1A4 = func_8002DAC0(&this->actor, &D_80937340);
    this->collider1.base.atFlags &= ~3;
    this->collider2.base.acFlags &= ~1;
    this->unk_3C4 *= -1.0f;
    this->actionFunc = func_8092E2E0;
}

void func_8092E2E0(BossSst *this, GlobalContext *globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->unk_1A4, 4, 0x800, 0x100) == 0) {
        func_80930474(D_80938C98[0]);
        func_80930474(D_80938C98[1]);
        func_8092DB30(this);
    }
}

void func_8092E34C(BossSst *this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_0600E7B8, -5.0f);
    this->unk_195 = 0;
    this->collider2.base.acFlags |= 1;
    this->actionFunc = func_8092E3A0;
}

void func_8092E3A0(BossSst *this, GlobalContext *globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_195 != 0) {
        func_8092E3E8(this);
    }
}

void func_8092E3E8(BossSst *this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_0600C288, -5.0f);
    this->collider2.base.acFlags &= ~1;
    this->actionFunc = func_8092E438;
}

void func_8092E438(BossSst *this, GlobalContext *globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        func_8092DA6C(this);
    }
}

void func_8092E470(BossSst *this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_0600B6FC, -5.0f);
    func_8003426C(&this->actor, 0, 0xFF, 0, SkelAnime_GetFrameCount(&D_0600B6FC.genericHeader));
    this->collider1.base.atFlags &= ~3;
    this->collider2.base.acFlags &= ~1;
    this->unk_194 = 0;
    this->actor.flags &= ~0x80;
    func_80933D2C(this, NA_SE_EN_SHADEST_FREEZE);
    this->actionFunc = func_8092E510;
}

void func_8092E510(BossSst *this, GlobalContext *globalCtx) {
    f32 tmpf1;
    s32 sp30;
    f32 tmpf2;

    Math_ApproxF(&D_80938CA8[0].z, 600.0f, 20.0f);
    Math_ApproxF(&D_80938CA8[1].z, 600.0f, 20.0f);
    Math_ApproxF(&D_80938CA8[0].x, 200.0f, 20.0f);
    Math_ApproxF(&D_80938CA8[1].x, -200.0f, 20.0f);
    this->actor.velocity.y += this->actor.gravity;
    sp30 = SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    tmpf2 = this->skelAnime.animCurrentFrame;
    if (tmpf2 <= 6.0f) {
        tmpf1 = (sinf(0.28559935f * tmpf2) * 100.0f) + (this->actor.initPosRot.pos.y - 180.0f);
        if (this->actor.posRot.pos.y < tmpf1) {
            this->actor.posRot.pos.y = tmpf1;
        }
    } else if (tmpf2 <= 11.0f) {
        this->actor.posRot.pos.y = (sinf(0.28559935f * tmpf2) * 170.0f) + (this->actor.initPosRot.pos.y - 250.0f);
    } else {
        this->actor.posRot.pos.y = (sinf((tmpf2 - 11.0f) * 0.62831855f) * 50.0f) + (this->actor.initPosRot.pos.y - 250.0f);
    }

    if ((sp30 != 0) || func_800A56C8(&this->skelAnime, 11.0f)) {
        func_80933D2C(this, NA_SE_EN_SHADEST_LAND);
    }

    if (this->unk_3C4 < -500.0f) {
        Math_SmoothScaleMaxMinF(&this->unk_3C4, -500.0f, 1.0f, 50.0f, 5.0f);
    } else {
        Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 0.5f, 15.0f, 3.0f);
        this->unk_3C4 += this->actor.speedXZ;
    }

    this->unk_3C4 = CLAMP_MAX(this->unk_3C4, 400.0f);

    this->actor.posRot.pos.y += this->actor.velocity.y;
    if (sp30 != 0) {
        func_8092E790(this);
    }
}

void func_8092E790(BossSst *this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_0600ACD4, -5.0f);
    this->collider2.base.acFlags |= 1;
    this->collider2.body.bumper.flags = 0xFC00702;
    this->actor.speedXZ = 0.0f;
    this->collider1.list[10].body.bumperFlags |= 5;
    this->collider1.list[0].body.bumperFlags &= ~1;
    if (this->actionFunc != func_8092EA00) {
        this->unk_198 = 0x32;
    }

    this->actionFunc = func_8092E830;
}

void func_8092E830(BossSst *this, GlobalContext *globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_ApproxF(&D_80938CA8[0].z, 600.0f, 20.0f);
    Math_ApproxF(&D_80938CA8[1].z, 600.0f, 20.0f);
    Math_ApproxF(&D_80938CA8[0].x, 200.0f, 20.0f);
    Math_ApproxF(&D_80938CA8[1].x, -200.0f, 20.0f);
    if ((this->actor.flags & 0x2000) == 0x2000) {
        this->unk_198 += 2;
        this->unk_198 = CLAMP_MAX(this->unk_198, 0x32);
    } else {
        if (this->unk_198 != 0) {
            this->unk_198--;
        }

        if (this->unk_198 == 0) {
            func_8093323C(D_80938C98[0]);
            func_8093323C(D_80938C98[1]);
            func_8092EA50(this);
        }
    }
}

void func_8092E930(BossSst *this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_0600CC6C, -3.0f);
    func_8003426C(&this->actor, 0x4000, 0xFF, 0, SkelAnime_GetFrameCount(&D_0600CC6C.genericHeader));
    func_8003426C(&D_80938C98[0]->actor, 0x4000, 0xFF, 0, SkelAnime_GetFrameCount(&D_0600CC6C.genericHeader));
    func_8003426C(&D_80938C98[1]->actor, 0x4000, 0xFF, 0, SkelAnime_GetFrameCount(&D_0600CC6C.genericHeader));
    this->collider2.base.acFlags &= ~1;
    func_80933D2C(this, NA_SE_EN_SHADEST_DAMAGE);
    this->actionFunc = func_8092EA00;
}

void func_8092EA00(BossSst *this, GlobalContext *globalCtx) {
    if (this->unk_198 != 0) {
        this->unk_198--;
    }

    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        func_8092E790(this);
    }
}

void func_8092EA50(BossSst *this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_0600D458, -5.0f);
    this->collider2.base.acFlags &= ~1;
    this->collider2.body.bumper.flags = 0xFFCFFFFF;
    this->collider1.list[10].body.bumperFlags &= ~5;
    this->collider1.list[0].body.bumperFlags |= 1;
    this->unk_194 = 1;
    this->actor.speedXZ = 5.0f;
    this->actionFunc = func_8092EAE0;
}

void func_8092EAE0(BossSst *this, GlobalContext *globalCtx) {
    s32 sp34;
    f32 frame;
    f32 sp2C;

    sp34 = SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    frame = this->skelAnime.animCurrentFrame;
    if (frame < 10.0f) {
        this->actor.posRot.pos.y += 10.0f;
        D_80938CA8[0].y -= 10.0f;
        D_80938CA8[1].y -= 10.0f;
        Math_SmoothScaleMaxMinF(&this->unk_3C4, -750.0f, 1.0f, this->actor.speedXZ, 2.0f);
    } else {
        this->actor.speedXZ *= 1.25f;
        this->actor.speedXZ = CLAMP_MAX(this->actor.speedXZ, 50.0f);
        sp2C = Math_SmoothScaleMaxMinF(&this->unk_3C4, -650.0f, 1.0f, this->actor.speedXZ, 2.0f);
        sp2C += Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y, this->actor.initPosRot.pos.y, 0.5f, 30.0f, 3.0f);
    }
    if ((sp34 != 0) && (sp2C < 10.0f)) {
        this->actor.posRot.pos.y = this->actor.initPosRot.pos.y;
        this->unk_3C4 = -650.0f;
        func_80930474(D_80938C98[0]);
        func_80930474(D_80938C98[1]);
        func_8092DB30(this);
    }
}

void func_8092EC74(f32 arg0, s32 arg1) {
    Vec3f* ptr1 = &D_8093737C[arg1];
    Vec3f* ptr2 = &D_809373DC[arg1];

    if (arg1 != 0) {
        Math_Vec3f_Copy(&D_8093734C, &D_8093737C[arg1 - 1]);
        Math_Vec3f_Copy(&D_80937358, &D_809373DC[arg1 - 1]);
    }

    D_80937364.x = (ptr1->x - D_8093734C.x) * arg0;
    D_80937364.y = (ptr1->y - D_8093734C.y) * arg0;
    D_80937364.z = (ptr1->z - D_8093734C.z) * arg0;

    D_80937370.x = (ptr2->x - D_80937358.x) * arg0;
    D_80937370.y = (ptr2->y - D_80937358.y) * arg0;
    D_80937370.z = (ptr2->z - D_80937358.z) * arg0;
}

void func_8092ED9C(BossSst *this, GlobalContext *globalCtx) {
    Vec3f sp3C;
    Vec3f sp30;
    f32 sp2C;
    f32 sp28;

    D_8093734C.x = D_8093734C.x + D_80937364.x;
    D_8093734C.y = D_8093734C.y + D_80937364.y;
    D_8093734C.z = D_8093734C.z + D_80937364.z;
    D_80937358.x = D_80937358.x + D_80937370.x;
    D_80937358.y = D_80937358.y + D_80937370.y;
    D_80937358.z = D_80937358.z + D_80937370.z;

    sp2C = Math_Sins(this->actor.shape.rot.y);
    sp28 = Math_Coss(this->actor.shape.rot.y);
    sp3C.x = (this->actor.posRot.pos.x + (D_8093734C.z * sp2C)) + (D_8093734C.x * sp28);
    sp3C.y = (this->actor.initPosRot.pos.y - 140.0f) + D_8093734C.y;
    sp3C.z = (this->actor.posRot.pos.z + (D_8093734C.z * sp28)) - (D_8093734C.x * sp2C);
    sp30.x = (this->actor.posRot.pos.x + (D_80937358.z * sp2C)) + (D_80937358.x * sp28);
    sp30.y = (this->actor.initPosRot.pos.y - 140.0f) + D_80937358.y;
    sp30.z = (this->actor.posRot.pos.z + (D_80937358.z * sp28)) - (D_80937358.x * sp2C);
    func_800C04D8(globalCtx, D_80938CC4, &sp3C, &sp30);
}

void func_8092EF28(BossSst *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;

    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_0600E7B8, -5.0f);
    func_80933D2C(this, NA_SE_EN_SHADEST_DEAD);
    func_8003426C(&this->actor, 0x4000, 0xFF, 0, 0x3C);
    func_8003426C(&D_80938C98[0]->actor, 0x4000, 0xFF, 0, 0x3C);
    func_8003426C(&D_80938C98[1]->actor, 0x4000, 0xFF, 0, 0x3C);
    this->unk_198 = 0x3C;
    this->collider2.base.acFlags &= ~1;
    this->collider1.base.maskA &= ~1;
    D_80938C98[0]->collider1.base.maskA &= ~1;
    D_80938C98[1]->collider1.base.maskA &= ~1;
    Audio_SetBGM(0x100100FF);
    D_80938CC4 = Gameplay_CreateSubCamera(globalCtx);
    Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
    Gameplay_ChangeCameraStatus(globalCtx, D_80938CC4, 7);
    func_800C078C(globalCtx, D_80938CC4, 0);
    func_8002DF54(globalCtx, &player->actor, 8);
    func_80064520(globalCtx, &globalCtx->csCtx);
    Math_Vec3f_Copy(&D_80937358, &globalCtx->cameraPtrs[globalCtx->activeCamera]->eye);
    this->actionFunc = func_8092F0BC;
}

void func_8092F0BC(BossSst *this, GlobalContext *globalCtx) {
    Player* player;
    f32 sp20;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_198 != 0) {
        this->unk_198 = this->unk_198 - 1;
    }

    Math_ApproxF(&this->actor.posRot.pos.y, this->actor.initPosRot.pos.y - 140.0f, 20.0f);
    if (this->unk_198 == 0) {
        func_80932D10(D_80938C98[0]);
        func_80932D10(D_80938C98[1]);
        func_8092F30C(this);
    } else if (this->unk_198 >= 0x31) {
        func_800C04D8(globalCtx, D_80938CC4, &this->actor.posRot2.pos, &D_80937358);
        Math_ApproxF(&this->unk_3C4, -350.0f, 10.0f);
    } else if (this->unk_198 == 0x30) {
        player = PLAYER;
        sp20 = Math_Sins(this->actor.shape.rot.y);
        player->actor.posRot.pos.x = (Math_Coss(this->actor.shape.rot.y) * -120.0f) + (D_80937340.x + (400.0f * sp20));
        sp20 = Math_Coss(this->actor.shape.rot.y);
        player->actor.posRot.pos.z = (D_80937340.z + (400.0f * sp20)) - (Math_Sins(this->actor.shape.rot.y) * -120.0f);
        player->actor.shape.rot.y = func_8002DAC0(&player->actor, &D_80937340);
        func_8002DBD0(&this->actor, &D_80937358, &globalCtx->cameraPtrs[globalCtx->activeCamera]->eye);
        func_8002DBD0(&this->actor, &D_8093734C, &globalCtx->cameraPtrs[globalCtx->activeCamera]->at);
        this->unk_3C4 = -350.0f;
        this->actor.posRot.pos.x = D_80937340.x - (Math_Sins(this->actor.shape.rot.y) * 350.0f);
        this->actor.posRot.pos.z = D_80937340.z - (Math_Coss(this->actor.shape.rot.y) * 350.0f);
        func_8092EC74(0.020833334f, 0);
        func_8092ED9C(this, globalCtx);
        return;
    } else {
        func_8092ED9C(this, globalCtx);
    }
}

void func_8092F30C(BossSst *this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_0600E7B8, -5.0f);
    this->unk_198 = 0xA0;
    this->unk_1A4 = this->actor.shape.rot.y;
    func_8092EC74(0.0125f, 1);
    this->actionFunc = func_8092F374;
}

void func_8092F374(BossSst *this, GlobalContext *globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_198 != 0) {
        this->unk_198--;
    }

    if ((this->unk_198 == 0) && (this->actor.shape.rot.y == this->unk_1A4)) {
        func_8092F3F0(this);
    } else if (this->unk_198 >= 0x50) {
        func_8092ED9C(this, globalCtx);
    }
}

void func_8092F3F0(BossSst *this) {
    this->unk_198 = 0xA0;
    func_8092EC74(0.0125f, 2);
    this->actionFunc = func_8092F434;
}

void func_8092F434(BossSst *this, GlobalContext *globalCtx) {
    f32 var;

    if (this->unk_198 != 0) {
        this->unk_198--;
    }

    if (this->unk_198 >= 0x50) {
        if (this->unk_198 == 0x50) {
            D_80937448 = 1;
        }

        func_8092ED9C(this, globalCtx);
        D_80937464.r = D_80937464.g = D_80937464.b = (this->unk_198 * 3) - 0xF0;
        if (this->unk_198 == 0x50) {
            func_8092EC74(0.0125f, 3);
        }
    } else {
        if (0){};
        D_80937464.b = (0x50 - this->unk_198) / 1.0f;
        D_80937464.r = D_80937464.g = 
        D_80937468.r = D_80937468.g = D_80937468.b = (0x50 - this->unk_198) / 8.0f;
        func_8092ED9C(this, globalCtx);
        if (this->unk_198 == 0) {
            func_8092F65C(this);
        }
    }
}

void func_8092F65C(BossSst *this) {
    this->actor.speedXZ = 1.0f;
    Math_Vec3f_Copy(&D_8093734C, &D_8093737C[3]);
    Math_Vec3f_Copy(&D_80937358, &D_809373DC[3]);
    D_80937364.x = 0.0f;
    D_80937364.z = 0.0f;
    D_80937364.y = -50.0f;
    Math_Vec3f_Copy(&D_80937370, &D_8093743C);
    this->actionFunc = func_8092F6F0;
}

void func_8092F6F0(BossSst *this, GlobalContext *globalCtx) {
    this->actor.speedXZ *= 1.5f;
    if (Math_ApproxF(&this->actor.posRot.pos.y, this->actor.initPosRot.pos.y - 230.0f, this->actor.speedXZ) != 0) {
        func_8092F790(this);
    }

    if (D_8093734C.y > 200.0f) {
        func_8092ED9C(this, globalCtx);
    }
}

void func_8092F790(BossSst *this) {
    func_80935764(this);
    this->unk_198 = 0x50;
    func_8092EC74(0.016666668f, 5);
    this->actionFunc = func_8092F7DC;
}

void func_8092F7DC(BossSst *this, GlobalContext *globalCtx) {
    if (this->unk_198 != 0) {
        this->unk_198--;
    }

    this->actor.scale.y = this->actor.scale.y - 0.00025f;
    this->actor.scale.x = this->actor.scale.x + 0.000075f;
    this->actor.scale.z = this->actor.scale.z + 0.000075f;
    this->actor.posRot.pos.y = this->actor.initPosRot.pos.y - (11500.0f * this->actor.scale.y);
    if (this->unk_198 == 0) {
        func_8092F894(this);
        return;
    }

    if (this->unk_198 >= 20.0f) {
        func_8092ED9C(this, globalCtx);
    }
}

void func_8092F894(BossSst *this) {
    this->actor.draw = func_8093639C;
    this->unk_198 = 0x28;
    Audio_SetBGM(0x21);
    func_8092EC74(0.025f, 6);
    this->actionFunc = func_8092F8F0;
}

//Color_RGBA8 D_80937898
#ifdef NON_MATCHING
// RGBA assigns
void func_8092F8F0(BossSst *this, GlobalContext *globalCtx) {
    Vec3f sp7C;
    s32 i;

    this->unk_198--;
    if (this->unk_196 == 0) {
        if (this->unk_198 < -0xAA) {
            func_8092ED9C(this, globalCtx);
            func_800C078C(globalCtx, 0, D_80938CC4);
            Gameplay_ChangeCameraStatus(globalCtx, D_80938CC4, 1);
            Gameplay_ChangeCameraStatus(globalCtx, 0, 7);
            Gameplay_ClearCamera(globalCtx, D_80938CC4);
            func_8002DF54(globalCtx, &PLAYER->actor, 7);
            func_80064534(globalCtx, &globalCtx->csCtx);
            Actor_Kill(&this->actor);
            Actor_Kill(&D_80938C98[0]->actor);
            Actor_Kill(&D_80938C98[1]->actor);
            Flags_SetClear(globalCtx, globalCtx->roomCtx.curRoom.num);
        }
    } else if (this->unk_700[0].unk_24 == 0) {
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_DOOR_WARP1, -50.0f, 0.0f, 0.0f, 0, 0, 0, -1);
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_B_HEART, (Math_Sins(this->actor.shape.rot.y) * 200.0f) + -50.0f, 0.0f, Math_Coss(this->actor.shape.rot.y) * 200.0f, 0, 0, 0, 0);
        func_8092EC74(1.0f, 7);
        this->unk_196 = 0;
    } else if (this->unk_198 == 0) {
        this->unk_700[0].unk_22 = 0;
        this->unk_700[1].unk_22 = -1;
        this->unk_700[2].unk_22 = -1;
    } else if (this->unk_198 > 0) {
        this->unk_700[0].unk_22 += 5;
        func_8092ED9C(this, globalCtx);
    }

    D_80937898[0].a = this->unk_700[0].unk_24;
    D_80937898[0].a = this->unk_700[0].unk_24;

    for (i = 0; i < 5; i++) {
        sp7C.x = Math_Rand_CenteredFloat(800.0f) + D_80937340.x;
        sp7C.y = (Math_Rand_ZeroOne() * 5.0f) + (D_80937340.y + -28.0f);
        sp7C.z = Math_Rand_CenteredFloat(800.0f) + D_80937340.z;
        func_8002949C(globalCtx, &sp7C, &D_80937898[0], &D_80937898[1], 0, 0x3E8);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092F8F0.s")
#endif

void func_8092FBE4(BossSst *this) {
    D_8093746C[this->actor.params] = 0;
    this->collider1.base.atFlags &= ~3;
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, D_8093784C[this->actor.params], 5.0f);
    this->unk_195 = 0;
    this->unk_198 = 0x14;
    this->actionFunc = func_8092FC60;
}

void func_8092FC60(BossSst *this, GlobalContext *globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_ApproxF(&this->actor.posRot.pos.y, this->actor.groundY, 20.0f);
    Math_ApproxF(&this->actor.posRot.pos.x, this->actor.initPosRot.pos.x, 1.0f);
    Math_ApproxF(&this->actor.posRot.pos.z, this->actor.initPosRot.pos.z, 1.0f);
    if (D_8093746C[this->actor.attachedB->params] == 8) {
        Player* player = PLAYER;

        if (this->unk_198 != 0) {
            this->unk_198--;
        }

        if ((this->unk_198 == 0) && 
            (player->actor.posRot.pos.y > -50.0f) && !(player->stateFlags1 & 0x6080)) {
            func_80933B84(this);
        }
    } else if (D_80938C90->actionFunc == func_8092DB4C) {
        if ((this->actor.params == 1) && ((D_80938C90->unk_198 % 0x1C) == 0xC)) {
            func_8092FDD0(this);
        } else if ((this->actor.params == 0) && ((D_80938C90->unk_198 % 7) == 5) && (D_80938C90->unk_198 < 0x70)) {
            func_809300E4(this);
        }
    }
}

void func_8092FDD0(BossSst *this) {
    D_8093746C[this->actor.params] = 1;
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_8093785C[this->actor.params], 5.0f);
    this->actor.shape.rot.x = 0;
    this->unk_198 = 0xC;
    this->actionFunc = func_8092FE44;
}

void func_8092FE44(BossSst *this, GlobalContext *globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (D_8093746C[((BossSst*)this->actor.attachedB)->actor.params] == 8) {
        func_8092FBE4(this);
        return;
    }

    if (this->unk_198 != 0) {
        this->unk_198 = this->unk_198 - 1;
    }

    if (this->unk_198 >= 3) {
        this->actor.shape.rot.x -= 0x100;
        Math_ApproxF(&this->actor.posRot.pos.y, 180.0f, 20.0f);
    } else {
        this->actor.shape.rot.x += 0x300;
        Math_ApproxF(&this->actor.posRot.pos.y, 0.0f, 60.0f);
    }

    if (this->unk_198 == 0) {
        D_80938CA0->actor.params = 1;
        if (D_80938C90->actionFunc == func_8092DAB8) {
            if (this->unk_195 != 0) {
                func_80933B84(this);
            } else {
                func_8092FBE4(this);
            }
        } else {
            func_8092FF94(this);
        }
        func_800AA000(this->actor.xyzDistFromLinkSq, 0xFF, 0x14, 0x96);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_SHADEST_TAIKO_HIGH);
    }
}

void func_8092FF94(BossSst *this) {
    D_80938CA0->actor.params = 1;
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, D_80937854[this->actor.params]);
    this->actionFunc = func_8092FFF0;
}

void func_8092FFF0(BossSst *this, GlobalContext *globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (D_8093746C[this->actor.attachedB->params] == 8) {
        func_8092FBE4(this);
        return;
    }

    Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y, 40.0f, 0.5f, 20.0f, 3.0f);
    Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, -0x800, 0x100);
    Math_ApproxF(&this->actor.posRot.pos.x, this->actor.initPosRot.pos.x, 1.0f);
    Math_ApproxF(&this->actor.posRot.pos.z, this->actor.initPosRot.pos.z, 1.0f);
    if ((D_80938C90->actionFunc != func_8092CC58) && ((D_80938C90->unk_198 % 0x1C) == 0xC)) {
        func_8092FDD0(this);
    }
}

void func_809300E4(BossSst *this) {
    D_8093746C[this->actor.params] = 1;
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_8093785C[this->actor.params], 5.0f);
    this->actor.shape.rot.x = 0;
    this->unk_198 = 5;
    this->actionFunc = func_80930158;
}

void func_80930158(BossSst *this, GlobalContext *globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (D_8093746C[((BossSst*)this->actor.attachedB)->actor.params] == 8) {
        func_8092FBE4(this);
        return;
    }

    if (this->unk_198 != 0) {
        this->unk_198--;
    }

    if (this->unk_198 != 0) {
        this->actor.shape.rot.x -= 0x140;
        Math_ApproxF(&this->actor.posRot.pos.y, 60.0f, 15.0f);
    } else {
        this->actor.shape.rot.x += 0x500;
        Math_ApproxF(&this->actor.posRot.pos.y, 0.0f, 60.0f);
    }

    if (this->unk_198 == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_SHADEST_TAIKO_LOW);
        func_80930238(this);
    }
}

void func_80930238(BossSst *this) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, D_80937854[this->actor.params]);
    this->actionFunc = func_80930284;
}

void func_80930284(BossSst *this, GlobalContext *globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (D_8093746C[this->actor.attachedB->params] == 8) {
        func_8092FBE4(this);
        return;
    }

    Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y, 40.0f, 0.5f, 20.0f, 3.0f);
    Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, -0x400, 0xA0);
    Math_ApproxF(&this->actor.posRot.pos.x, this->actor.initPosRot.pos.x, 1.0f);
    Math_ApproxF(&this->actor.posRot.pos.z, this->actor.initPosRot.pos.z, 1.0f);
    if (D_80938C90->actionFunc == func_8092DAB8) {
        if (!(this->unk_195 == 0)) {
            func_80933B84(this);
        } else {
            func_8092FBE4(this);
        }
        return;
    }

    if ((D_80938C90->actionFunc != func_8092CC58) && 
        ((D_80938C90->unk_198 % 7) == 5) && 
        ((D_80938C90->unk_198 % 0x1C) != 5)) {
        func_809300E4(this);
    }
}

void func_809303C8(BossSst *this) {
    D_8093746C[this->actor.params] = 2;
    this->collider1.base.atFlags &= ~3;
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_8093787C[this->actor.params], 6.0f);
    this->actionFunc = func_8093043C;
}

void func_8093043C(BossSst *this, GlobalContext *globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        func_80930474(this);
    }
}

void func_80930474(BossSst *this) {
    D_8093746C[this->actor.params] = 2;
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_80937884[this->actor.params], 10.0f);
    this->collider1.base.atFlags &= ~3;
    this->collider1.base.acFlags |= 1;
    this->actor.flags |= 1;
    func_80933CEC(this, 0);
    this->unk_198 = 0;
    this->actionFunc = func_8093051C;
    this->actor.speedXZ = 3.0f;
}

void func_8093051C(BossSst *this, GlobalContext *globalCtx) {
    f32 sp3C;
    s32 sp38;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    this->actor.speedXZ = this->actor.speedXZ * 1.2f;
    this->actor.speedXZ = CLAMP_MAX(this->actor.speedXZ, 50.0f);

    sp3C = Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.x, this->actor.initPosRot.pos.x, 0.3f, this->actor.speedXZ, 1.0f);
    sp3C += Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.z, this->actor.initPosRot.pos.z, 0.3f, this->actor.speedXZ, 1.0f);
    if (this->unk_198 != 0) {
        if (this->unk_198 != 0) {
            this->unk_198--;
        }

        this->actor.posRot.pos.y = (sinf((this->unk_198 * M_PI) * 0.0625f) * 250.0f) + this->actor.initPosRot.pos.y;
        if (this->unk_198 == 0) {
            func_8092FBE4(this);
        } else if (this->unk_198 == 4) {
            SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, D_8093784C[this->actor.params], 4.0f);
        }
    } else {
        sp38 = Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, this->actor.initPosRot.rot.y, 0x200);
        sp38 &= Math_ApproxUpdateScaledS(&this->actor.shape.rot.z, this->actor.initPosRot.rot.z, 0x200);
        sp38 &= Math_ApproxUpdateScaledS(&this->unk_1A0, 0, 0x800);
        func_8002F974(&this->actor, NA_SE_EN_SHADEST_HAND_FLY - SFX_FLAG);
        if ((Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y, 250.0f, 0.5f, 70.0f, 5.0f) < 1.0f) &&
            (sp38 != 0) && (sp3C < 10.0f)) {
            this->unk_198 = 8;
        }
    }
}

void func_80930748(BossSst *this) {
    D_8093746C[this->actor.params] = 3;
    this->unk_198 = 0;
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_8093785C[this->actor.params], 10.0f);
    this->actionFunc = func_809307B4;
}

void func_809307B4(BossSst *this, GlobalContext *globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_198 != 0) {
        if (this->unk_198 != 0) {
            this->unk_198--;
        }

        if (this->unk_198 == 0) {
            func_809308A4(this);
        }
    } else {
        Player* player = PLAYER;
        if ((Math_ApproxF(&this->actor.posRot.pos.y, 300.0f, 30.0f) != 0) && (this->actor.xzDistFromLink < 140.0f)) {
            this->unk_198 = 0x14;
        }

        Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, -0x1000, 0x100);
        Math_SmoothScaleMaxF(&this->actor.posRot.pos.x, player->actor.posRot.pos.x, 0.5f, 40.0f);
        Math_SmoothScaleMaxF(&this->actor.posRot.pos.z, player->actor.posRot.pos.z, 0.5f, 40.0f);
        func_8002F974(&this->actor, NA_SE_EN_SHADEST_HAND_FLY - SFX_FLAG);
    }
}

void func_809308A4(BossSst *this) {
    D_8093746C[this->actor.params] = 3;
    this->actor.velocity.y = 1.0f;
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_80937854[this->actor.params], 10.0f);
    func_80933C80(this, 0x20);
    this->unk_195 = 0;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_SHADEST_FLY_ATTACK);
    this->actionFunc = func_80930934;
}

void func_80930934(BossSst *this, GlobalContext *globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_ApproxS(&this->unk_19E, -0xDAC, 0x1F4);
    Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, 0, 0x1000);
    Math_ApproxUpdateScaledS(&this->unk_1A0, 0, 0x1000);
    if (this->unk_198 != 0) {
        if (this->unk_198 != 0) {
            this->unk_198--;
        }

        if (this->unk_198 == 0) {
            if (this->collider1.base.acFlags & 1) {
                func_809303C8(this);
            } else {
                this->collider1.base.acFlags |= 1;
                func_8092FBE4(this);
            }
        }
    } else {
        if (this->unk_195 != 0) {
            this->unk_198 = 0x1E;
            this->collider1.base.atFlags &= ~3;
        } else {
            this->actor.velocity.y *= 1.5f;
            if (Math_ApproxF(&this->actor.posRot.pos.y, this->actor.groundY, this->actor.velocity.y) != 0) {
                this->unk_195 = 1;
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_SHADEST_TAIKO_LOW);
                func_80935948(this);
                this->collider2.base.atFlags |= 1;
                Collider_CylinderUpdate(&this->actor, &this->collider2);
                this->collider2.dim.radius = sCylinderInit2.dim.radius;
            }
        }

        if (this->collider1.base.atFlags & 2) {
            Player* player = PLAYER;    

            player->actor.posRot.pos.x = (Math_Sins(this->actor.yawTowardsLink) * 100.0f) + this->actor.posRot.pos.x;
            player->actor.posRot.pos.z = (Math_Coss(this->actor.yawTowardsLink)* 100.0f) + this->actor.posRot.pos.z;
            
            this->collider1.base.atFlags &= ~3;
            func_8002F71C(globalCtx, &this->actor, 5.0f, this->actor.yawTowardsLink, 0.0f);
        }

        Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, 0, 0x200);
    }
}

void func_80930B18(BossSst *this) {
    D_8093746C[this->actor.params] = 4;
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_8093785C[this->actor.params], 10.0f);
    this->unk_3C4 = func_8002DBB0(&this->actor, &D_80938C90->actor.posRot.pos);
    this->actor.posRot.rot.y = func_8002DAC0(&D_80938C90->actor, &this->actor.posRot.pos);
    this->unk_1A4 = this->actor.initPosRot.rot.y + (this->unk_194 * 8192);
    this->actionFunc = func_80930BC0;
}

void func_80930BC0(BossSst *this, GlobalContext *globalCtx) {
    s32 tmp;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    tmp = Math_ApproxF(&this->actor.posRot.pos.y, 50.0f, 4.0f);
    tmp &= Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, this->unk_1A4, 0x200);
    tmp &= Math_ApproxUpdateScaledS(&this->actor.posRot.rot.y, this->unk_1A4, 0x400);
    tmp &= Math_SmoothScaleMaxMinF(&this->unk_3C4, D_80938C90->actor.xzDistFromLink, 0.5f, 60.0f, 1.0f) < 10.0f;

    this->actor.posRot.pos.x = (Math_Sins(this->actor.posRot.rot.y) * this->unk_3C4) + D_80938C90->actor.posRot.pos.x;
    this->actor.posRot.pos.z = (Math_Coss(this->actor.posRot.rot.y) * this->unk_3C4) + D_80938C90->actor.posRot.pos.z;
    if (tmp) {
        func_80930CE4(this);
    } else {
        func_8002F974(&this->actor, NA_SE_EN_SHADEST_HAND_FLY - SFX_FLAG);
    }
}

void func_80930CE4(BossSst *this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_80937854[this->actor.params], 5.0f);
    func_80933C80(this, 0x10);
    this->unk_1A4 = this->actor.initPosRot.rot.y - (this->unk_194 * 8192);
    this->unk_19C = 0x300;
    this->unk_19A = 0;
    this->unk_195 = 0;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_SHADEST_FLY_ATTACK);
    this->actionFunc = func_80930D70;
}

void func_80930D70(BossSst *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;
    s16 tmp;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    this->unk_19A += 0x60;
    this->unk_19A = CLAMP_MAX(this->unk_19A, this->unk_19C);

    if (Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->unk_1A4, 4, this->unk_19A, 0x10) == 0) {
        this->collider1.base.maskA &= ~4;
        func_80930474(this);
    } else if (this->collider1.base.atFlags & 2) {
        this->collider1.base.atFlags &= ~3;
        this->unk_195 = 1;
        func_8002F71C(globalCtx, &this->actor, 5.0f, this->actor.shape.rot.y - (this->unk_194 * 0x3800), 0.0f);
        func_8002F7DC(&player->actor, NA_SE_PL_BODY_HIT);
        tmp = this->actor.shape.rot.y - (this->unk_194 * 0x1400);
        if (((s16)(tmp - this->unk_1A4) * this->unk_194) > 0) {
            this->unk_1A4 = tmp;
        }
    }

    if ((this->unk_195 == 0) &&
        ((40.0f < player->unk_4DA) || 
         (1.0f < player->actor.posRot.pos.y))) {
        this->collider1.base.atFlags |= 1;
        this->collider1.base.maskA &= ~4;
    } else {
        this->collider1.base.atFlags &= ~1;
        this->collider1.base.maskA |= 4;
    }

    this->actor.posRot.pos.x = (Math_Sins(this->actor.shape.rot.y) * this->unk_3C4) + D_80938C90->actor.posRot.pos.x;
    this->actor.posRot.pos.z = (Math_Coss(this->actor.shape.rot.y) * this->unk_3C4) + D_80938C90->actor.posRot.pos.z;
}

void func_80930F80(BossSst *this) {
    D_8093746C[this->actor.params] = 5;
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_8093787C[this->actor.params], 10.0f);
    this->actionFunc = func_80930FE8;
}

void func_80930FE8(BossSst *this, GlobalContext *globalCtx) {
    s32 sp1C = Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 0x400);

    if ((SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) && (sp1C != 0)) {
        func_80931044(this);
    }
}

void func_80931044(BossSst *this) {
    this->actor.speedXZ = 0.5f;
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_80937864[this->actor.params], 5.0f);
    func_80933CEC(this, 1);
    this->unk_1A6 = this->unk_194 * 0x3F00;
    func_80933C80(this, 0x10);
    this->actionFunc = func_809310CC;
}

void func_809310CC(BossSst *this, GlobalContext *globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_ApproxF(&this->actor.posRot.pos.y, 80.0f, 20.0f);
    if (Math_ApproxUpdateScaledS(&this->actor.shape.rot.z, this->unk_1A6, 0x400) != 0) {
        this->unk_1A6 = -this->unk_1A6;
    }

    this->actor.speedXZ *= 1.25f;
    this->actor.speedXZ = CLAMP_MAX(this->actor.speedXZ, 50.0f);

    this->actor.posRot.pos.x += this->actor.speedXZ * Math_Sins(this->actor.shape.rot.y);
    this->actor.posRot.pos.z += this->actor.speedXZ * Math_Coss(this->actor.shape.rot.y);
    if (this->actor.bgCheckFlags & 8) {
        func_80930474(this);
    } else if (this->collider1.base.atFlags & 2) {
        func_8002F7DC(&PLAYER->actor, NA_SE_PL_BODY_HIT);
        func_8002F71C(globalCtx, &this->actor, 10.0f, this->actor.shape.rot.y, 5.0f);
        func_80930474(this);
    }

    func_8002F974(&this->actor, NA_SE_EN_SHADEST_HAND_FLY - SFX_FLAG);
}

void func_80931210(BossSst *this) {
    D_8093746C[this->actor.params] = 6;
    if (D_8093746C[((BossSst*)this->actor.attachedB)->actor.params] != 6) {
        func_80931210((BossSst*)this->actor.attachedB);
    }

    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_8093785C[this->actor.params], 10.0f);
    this->unk_3C4 = func_8002DBB0(&this->actor, &D_80938C90->actor.posRot.pos);
    this->actor.posRot.rot.y = func_8002DAC0(&D_80938C90->actor, &this->actor.posRot.pos);
    this->unk_1A4 = this->actor.initPosRot.rot.y - (this->unk_194 * 6144);
    this->unk_1A6 = this->unk_194 * 16384;
    this->unk_198 = 0;
    this->unk_195 = 0;
    ((BossSst*)this->actor.attachedB)->unk_195 = 0;
    this->actionFunc = func_80931300;
}

void func_80931300(BossSst *this, GlobalContext *globalCtx) {

    if (this->unk_198 != 0) {
        if (this->unk_198 != 0) {
            this->unk_198--;
        }

        if (this->unk_198 == 0) {
            func_809314F0(this);
            func_809314F0((BossSst*)this->actor.attachedB);
            ((BossSst*)this->actor.attachedB)->unk_3C4 = this->unk_3C4;
        }
    } else if (this->unk_195 == 0) {
        this->unk_195 = SkelAnime_FrameUpdateMatrix(&this->skelAnime);
        this->unk_195 &= Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, 0, 0x600);
        this->unk_195 &= Math_ApproxUpdateScaledS(&this->actor.shape.rot.z, this->unk_1A6, 0x600);
        this->unk_195 &= Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, this->unk_1A4, 0x200);
        this->unk_195 &= Math_ApproxUpdateScaledS(&this->actor.posRot.rot.y, this->unk_1A4, 0x400);
        this->unk_195 &= Math_SmoothScaleMaxMinF(&this->unk_3C4, D_80938C90->actor.xzDistFromLink, 0.5f, 50.0f, 1.0f) < 10.0f;
        this->unk_195 &= Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y, 95.0f, 0.5f, 30.0f, 1.0f) < 1.0f;
        
        this->actor.posRot.pos.x = (Math_Sins(this->actor.posRot.rot.y) * this->unk_3C4) + D_80938C90->actor.posRot.pos.x;
        this->actor.posRot.pos.z = (Math_Coss(this->actor.posRot.rot.y) * this->unk_3C4) + D_80938C90->actor.posRot.pos.z;
    } else if (((BossSst*)this->actor.attachedB)->unk_195 != 0) {
        this->unk_198 = 0x14;
    }
}

void func_809314F0(BossSst *this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_80937854[this->actor.params], 3.0f);
    this->unk_198 = 0;
    this->unk_19C = 0x240;
    this->unk_19A = 0;
    this->unk_195 = 0;
    func_80933C80(this, 0x20);
    this->actionFunc = func_80931560;
}

void func_80931560(BossSst *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_198 != 0) {
        if (this->unk_198 != 0) {
            this->unk_198--;
        }

        if (this->unk_198 == 0) {
            if (D_809378A8 != 0) {
                Item_DropCollectible(globalCtx, &this->actor.posRot.pos, (Math_Rand_ZeroOne() < 0.5f) ? 8 : 15);
                D_809378A8 = 0;
            }

            func_80933978(this, globalCtx, 1);
            func_80931788(this);
        }
    } else {
        if (this->collider1.base.atFlags & 2) {
            this->collider1.base.atFlags &= ~3;
            ((BossSst*)this->actor.attachedB)->collider1.base.atFlags &= ~3;
            func_809338DC(this, globalCtx);
        }

        if (this->unk_195 != 0) {
            this->unk_198 = 0x1E;
            this->collider1.base.atFlags &= ~3;
            if (!(player->stateFlags2 & 0x80)) {
                D_809378A8 = 1;
            }
        } else {
            this->unk_19A += 0x40;
            this->unk_19A = CLAMP_MAX(this->unk_19A, this->unk_19C);

            if (Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, this->actor.initPosRot.rot.y, this->unk_19A) != 0) {
                if (this->actor.params == 0) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_SHADEST_CLAP);
                }
                this->unk_195 = 1;
            } else {
                func_8002F974(&this->actor, NA_SE_EN_SHADEST_HAND_FLY - SFX_FLAG);
            }

            this->actor.posRot.pos.x = (Math_Sins(this->actor.shape.rot.y) * this->unk_3C4) + D_80938C90->actor.posRot.pos.x;
            this->actor.posRot.pos.z = (Math_Coss(this->actor.shape.rot.y) * this->unk_3C4) + D_80938C90->actor.posRot.pos.z;
        }
    }

    if (player->actor.attachedA == &this->actor) {
        player->unk_850 = 0;
        player->actor.posRot.pos = this->actor.posRot.pos;
    }
}

void func_80931788(BossSst *this) {
    this->unk_1A4 = this->actor.initPosRot.rot.y - (this->unk_194 * 4096);
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_8093785C[this->actor.params], 10.0f);
    this->collider1.base.atFlags &= ~3;
    this->actionFunc = func_809317F8;
}

void func_809317F8(BossSst *this, GlobalContext *globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_ApproxUpdateScaledS(&this->actor.shape.rot.z, 0, 0x200);
    if (Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, this->unk_1A4, 0x100) != 0) {
        func_80930474(this);
    }
    this->actor.posRot.pos.x = (Math_Sins(this->actor.shape.rot.y) * this->unk_3C4) + D_80938C90->actor.posRot.pos.x;
    this->actor.posRot.pos.z = (Math_Coss(this->actor.shape.rot.y) * this->unk_3C4) + D_80938C90->actor.posRot.pos.z;
}

void func_809318A0(BossSst *this) {
    D_8093746C[this->actor.params] = 7;
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_8093785C[this->actor.params], 10.0f);
    this->unk_1A4 = this->unk_194 * -0x5000;
    this->unk_1A6 = this->unk_194 * 16384;
    this->actionFunc = func_80931928;
}

void func_80931928(BossSst *this, GlobalContext *globalCtx) {
    s32 sp2C;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    sp2C = Math_SmoothScaleMaxMinS(&this->actor.shape.rot.z, this->unk_1A6, 4, 0x800, 0x100) == 0;
    sp2C &= Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, this->actor.yawTowardsLink + this->unk_1A4, 0xA00);
    Math_SmoothScaleMaxF(&this->actor.posRot.pos.y, 95.0f, 0.5f, 20.0f);
    if (sp2C != 0) {
        func_809319D0(this);
    }
}

void func_809319D0(BossSst *this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_80937864[this->actor.params], 5.0f);
    this->actor.posRot.rot.y = this->actor.shape.rot.y + (this->unk_194 * 16384);
    this->unk_1A4 = this->actor.posRot.rot.y;
    this->unk_198 = 0x1E;
    this->actor.speedXZ = 0.5f;
    func_80933C80(this, 0x20);
    this->actionFunc = func_80931A5C;
}

void func_80931A5C(BossSst *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;

    if (this->unk_198 != 0) {
        this->unk_198--;
    }

    this->actor.posRot.rot.y = ((1.0f - sinf(this->unk_198 * 0.05235988f)) * (this->unk_194 * 8192)) + this->unk_1A4;
    this->actor.shape.rot.y = this->actor.posRot.rot.y - (this->unk_194 * 16384);
    if (this->unk_198 < 5) {
        Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 0.5f, 25.0f, 5.0f);
        if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
            this->collider1.base.atFlags &= ~3;
            this->actor.speedXZ = 0.0f;
            if (player->stateFlags2 & 0x80) {
                if (Math_Rand_ZeroOne() < 0.5f) {
                    func_80931D04(this);
                } else {
                    func_80931EF8(this);
                }
            } else {
                Item_DropCollectible(globalCtx, &this->actor.posRot.pos, Math_Rand_ZeroOne() < 0.5f ? 8 : 15);
                func_80930474(this);
            }
        }
    } else {
        this->actor.speedXZ *= 1.26f;
        this->actor.speedXZ = CLAMP_MAX(this->actor.speedXZ, 70.0f);
        func_8002F974(&this->actor, NA_SE_EN_SHADEST_HAND_FLY - SFX_FLAG);
    }

    if (this->collider1.base.atFlags & 2) {
        this->collider1.base.atFlags &= ~3;
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_SHADEST_CATCH);
        func_809338DC(this, globalCtx);
        this->unk_198 = CLAMP_MAX(this->unk_198, 5);
    }

    this->actor.posRot.pos.x += this->actor.speedXZ * Math_Sins(this->actor.posRot.rot.y);
    this->actor.posRot.pos.z += this->actor.speedXZ * Math_Coss(this->actor.posRot.rot.y);
    if (player->stateFlags2 & 0x80) {
        player->unk_850 = 0;
        player->actor.posRot.pos = this->actor.posRot.pos;
        player->actor.shape.rot.y = this->actor.shape.rot.y;
    }
}

void func_80931D04(BossSst *this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, D_8093786C[this->actor.params], -10.0f);
    this->unk_198 = 0x14;
    this->actionFunc = func_80931D5C;
}

void func_80931D5C(BossSst *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_198 != 0) {
        this->unk_198--;
    }

    if (!(player->stateFlags2 & 0x80)) {
        func_80933978(this, globalCtx, 1);
        func_80931E70(this);
        return;
    }

    player->actor.posRot.pos = this->actor.posRot.pos;
    if (this->unk_198 == 0) {
        this->unk_198 = 0x14;
        if (LINK_IS_CHILD) {
            func_8002F7DC(&player->actor, NA_SE_VO_LI_DAMAGE_S_KID);
        } else {
            func_8002F7DC(&player->actor, NA_SE_VO_LI_DAMAGE_S);
        }

        globalCtx->unk_11D58(globalCtx, -8);
    }

    if (func_800A56C8(&this->skelAnime, 0.0f) != 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_SHADEST_CATCH);
    }
}

void func_80931E70(BossSst *this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_80937854[this->actor.params], 10.0f);
    this->actionFunc = func_80931EC0;
}

void func_80931EC0(BossSst *this, GlobalContext *globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        func_80930474(this);
    }
}

void func_80931EF8(BossSst *this) {
    this->unk_1A2 = -0x4000;
    this->unk_198 = 1;
    this->unk_3C8.x = this->actor.posRot.pos.x - (Math_Sins(this->actor.shape.rot.y) * 200.0f);
    this->unk_3C8.y = this->actor.posRot.pos.y;
    this->unk_3C8.z = this->actor.posRot.pos.z - (Math_Coss(this->actor.shape.rot.y) * 200.0f);
    this->actionFunc = func_80931F84;
}

void func_80931F84(BossSst *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;
    f32 sp28;

    if (Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, this->unk_1A2, (this->unk_198 * 228) + 0x1C8) != 0) {
        if (this->unk_1A2 != 0) {
            this->unk_1A2 = 0;
            if (this->unk_198 == 4) {
                SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_80937854[this->actor.params], 4.0f);
            }
        } else {
            if (this->unk_198 == 4) {
                player->actor.shape.rot.x = 0;
                player->actor.shape.rot.z = 0;
                func_80930474(this);
                return;
            }

            if (this->unk_198 == 3) {
                this->unk_1A2 = -0x6000;
            } else {
                this->unk_1A2 = -0x4000;
            }

            this->unk_198++;
        }
    }

    this->actor.posRot.pos.y = (Math_Coss(this->actor.shape.rot.x + 0x4000) * 200.0f) + this->unk_3C8.y;
    sp28 = Math_Sins(this->actor.shape.rot.x + 0x4000) * 200.0f;
    this->actor.posRot.pos.x = (Math_Sins(this->actor.shape.rot.y) * sp28) + this->unk_3C8.x;
    this->actor.posRot.pos.z = (Math_Coss(this->actor.shape.rot.y) * sp28) + this->unk_3C8.z;
    if (this->unk_198 != 4) {
        this->actor.shape.rot.z = (this->actor.shape.rot.x + 0x4000) * this->unk_194;
    } else {
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.z, 0, 0x800);
    }

    if (player->stateFlags2 & 0x80) {
        player->unk_850 = 0;
        Math_Vec3f_Copy(&player->actor.posRot.pos, &this->actor.posRot.pos);
        player->actor.shape.rot.x = this->actor.shape.rot.x;
        player->actor.shape.rot.z = (this->unk_194 * -16384) + this->actor.shape.rot.z;
    } else {
        Math_ApproxUpdateScaledS(&player->actor.shape.rot.x, 0, 0x600);
        Math_ApproxUpdateScaledS(&player->actor.shape.rot.z, 0, 0x600);
        player->actor.posRot.pos.x += 20.0f * Math_Sins(this->actor.shape.rot.y);
        player->actor.posRot.pos.z += 20.0f * Math_Coss(this->actor.shape.rot.y);
    }

    if ((this->unk_198 == 4) && (this->unk_1A2 == 0)&&
        (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) && 
        (player->stateFlags2 & 0x80)) {
        func_80933978(this, globalCtx, 0);
        player->actor.posRot.pos.x += 70.0f * Math_Sins(this->actor.shape.rot.y);
        player->actor.posRot.pos.z += 70.0f * Math_Coss(this->actor.shape.rot.y);
        func_8002F71C(globalCtx, &this->actor, 15.0f, this->actor.shape.rot.y, 2.0f);
        func_8002F7DC(&player->actor, NA_SE_PL_BODY_HIT);
    }

    func_8002F974(&this->actor, NA_SE_EN_SHADEST_HAND_FLY - SFX_FLAG);
}

void func_809322B4(BossSst *this) {
    D_8093746C[this->actor.params] = 8;
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_80937854[this->actor.params], 4.0f);
    this->unk_198 = 0x24;
    Math_Vec3f_Copy(&this->unk_3C8, &this->actor.posRot.pos);
    func_8003426C(&this->actor, 0, 0xFF, 0, 0xC8);
    this->actionFunc = func_8093234C;
}

void func_8093234C(BossSst *this, GlobalContext *globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_198 != 0) {
        this->unk_198--;
    }

    if (!(this->unk_198 % 4)) {
        if (this->unk_198 % 8) {
            SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_80937854[this->actor.params], 4.0f);
        } else {
            SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_80937864[this->actor.params], 6.0f);
        }
    }

    this->actor.dmgEffectTimer = 0xC8;
    this->actor.posRot.pos.x += Math_Rand_CenteredFloat(20.0f);
    this->actor.posRot.pos.y += Math_Rand_CenteredFloat(20.0f);
    this->actor.posRot.pos.z += Math_Rand_CenteredFloat(20.0f);

    if (this->actor.posRot.pos.y < (this->actor.groundY + 100.0f)) {
        Math_ApproxF(&this->actor.posRot.pos.y, this->actor.groundY + 100.0f, 20.0f);
    }

    if (this->unk_198 == 0) {
        func_809324A4(this);
    }
}

void func_809324A4(BossSst *this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_80937874[this->actor.params], 8.0f);
    this->actionFunc = func_809324F4;
}

void func_809324F4(BossSst *this, GlobalContext *globalCtx) {
    f32 tmpf1;
    s32 tmp;

    tmpf1 = Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.x, this->actor.initPosRot.pos.x, 0.5f, 25.0f, 1.0f);
    tmpf1 += Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.z, this->actor.initPosRot.pos.z, 0.5f, 25.0f, 1.0f);
    tmpf1 += Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y, this->actor.initPosRot.pos.y + 200.0f, 0.2f, 30.0f, 1.0f);
    tmp = Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, 0x4000, 0x400);
    tmp &= Math_ApproxUpdateScaledS(&this->actor.shape.rot.z, 0, 0x1000);
    tmp &= Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, this->actor.initPosRot.rot.y, 0x800);
    tmp &= Math_ApproxS(&this->unk_19E, -0x5DC, 0x1F4);
    tmp &= Math_ApproxUpdateScaledS(&this->unk_1A0, this->unk_194 * -8192, 0x800);
    this->actor.dmgEffectTimer = 0xC8;
    if ((tmpf1 < 30.0f) && (tmp != 0)) {
        func_8093265C(this);
    } else {
        func_8002F974(&this->actor, NA_SE_EN_SHADEST_HAND_FLY - SFX_FLAG);
    }
}

void func_8093265C(BossSst *this) {
    this->unk_198 = 0xC8;
    this->actionFunc = func_80932674;
}

void func_80932674(BossSst *this, GlobalContext *globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_198 != 0) {
        this->unk_198--;
    }

    this->actor.shape.rot.x = (sinf(this->unk_198 * 0.62831855f) * 8192.0f) + 16384.0f;
    this->unk_1A0 = (sinf(this->unk_198 * 0.7853982f) * 10240.0f) + (this->unk_194 * -8192);
    
    if (!(this->unk_198 % 8)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_SHADEST_SHAKEHAND);
    }

    if (D_8093746C[this->actor.attachedB->params] == 8) {
        if ((((BossSst*)this->actor.attachedB)->actionFunc == func_80932674) ||
           (((BossSst*)this->actor.attachedB)->actionFunc == func_8093285C)) {
            func_80932808(this);
        } else if (this->unk_198 == 0) {
            this->unk_198 = 0x50;
        }
    } else if (this->unk_198 == 0) {
        this->actor.flags |= 1;
        func_809308A4(this);
    }
}

void func_80932808(BossSst *this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_80937864[this->actor.params], 10.0f);
    this->unk_195 = 0;
    this->actionFunc = func_8093285C;
}

void func_8093285C(BossSst *this, GlobalContext *globalCtx) {
    if (this->unk_195 == 0) {
        this->unk_195 = SkelAnime_FrameUpdateMatrix(&this->skelAnime);
        this->unk_195 &= Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, 0, 0x800);
        this->unk_195 &= Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, this->actor.initPosRot.rot.y + (this->unk_194 * 4096), 0x800);
        this->unk_195 &= Math_ApproxUpdateScaledS(&this->unk_1A0, 0, 0x800);
        this->unk_195 &= Math_ApproxUpdateScaledS(&this->actor.shape.rot.z, this->unk_194 * 10240, 0x800);
        this->unk_195 &= Math_ApproxS(&this->unk_19E, -0xDAC, 0x1F4);
        if (this->unk_195 != 0) {
            this->actor.dmgEffectTimer = 0;
        }
    } else if (this->collider1.base.atFlags & 2) {
        this->collider1.base.atFlags &= ~3;
        ((BossSst*)this->actor.attachedB)->collider1.base.atFlags &= ~3;
        D_80938C90->collider1.base.atFlags &= ~3;
        func_8002F71C(globalCtx, &this->actor, 10.0f, this->actor.shape.rot.y, 5.0f);
        func_8002F7DC(&PLAYER->actor, NA_SE_PL_BODY_HIT);
    }
}

void func_809329D4(BossSst *hand) {
    SkelAnime_ChangeAnimTransitionStop(&hand->skelAnime, D_8093784C[hand->actor.params], 10.0f);
    if (hand->actionFunc != func_80932C38) {
        hand->unk_195 = 0;
    }

    hand->collider1.base.atFlags &= ~3;
    hand->collider1.base.acFlags |= 1;
    func_80933CEC(hand, 1);
    func_8003426C(&hand->actor, 0, 0xFF, 0, SkelAnime_GetFrameCount(&D_0600B6FC.genericHeader));
    hand->actionFunc = func_80932A80;
}

void func_80932A80(BossSst *this, GlobalContext *globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_SmoothScaleMaxF(&this->actor.posRot.pos.z, (Math_Coss(D_80938C90->actor.shape.rot.y) * 200.0f) + this->actor.initPosRot.pos.z, 0.5f, 25.0f);
    Math_SmoothScaleMaxF(&this->actor.posRot.pos.x, (Math_Sins(D_80938C90->actor.shape.rot.y) * 200.0f) + this->actor.initPosRot.pos.x, 0.5f, 25.0f);
    if (this->unk_195 == 0) {
        Math_ApproxUpdateScaledS(&this->unk_1A0, 0, 0x800);
        Math_ApproxS(&this->unk_19E, -0xDAC, 0x1F4);
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, this->actor.initPosRot.rot.x, 0x800);
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.z, this->actor.initPosRot.rot.z, 0x800);
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, this->actor.initPosRot.rot.y, 0x800);
        if (D_80938C90->actionFunc == func_8092E830) {
            this->unk_195 = 1;
            SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_80937874[this->actor.params], 10.0f);
        }
    } else {
        Math_ApproxF(&this->actor.posRot.pos.y, this->actor.groundY, 30.0f);
    }
}

void func_80932BDC(BossSst *hand) {
    hand->actor.shape.rot.x = 0;
    SkelAnime_ChangeAnimTransitionStop(&hand->skelAnime, D_8093785C[hand->actor.params], 3.0f);
    hand->unk_198 = 6;
    hand->actionFunc = func_80932C38;
}

void func_80932C38(BossSst *this, GlobalContext *globalCtx) {
    if (this->unk_198 != 0) {
        this->unk_198--;
    }

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_198 >= 2) {
        this->actor.shape.rot.x -= 0x200;
        Math_ApproxF(&this->actor.posRot.pos.y, this->actor.groundY + 200.0f, 50.0f);
    } else {
        this->actor.shape.rot.x += 0x400;
        Math_ApproxF(&this->actor.posRot.pos.y, this->actor.groundY, 100.0f);
    }

    if (this->unk_198 == 0) {
        if (this->actor.groundY >= 0.0f) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_SHADEST_TAIKO_HIGH);
        }
        func_809329D4(this);
    }
}

void func_80932D10(BossSst *this) {
    D_8093746C[this->actor.params] = 0xB;
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_8093785C[this->actor.params], 2.0f);
    this->actor.shape.rot.x = 0;
    this->unk_198 = 0xA0;
    if (this->actor.params == 0) {
        this->unk_1A2 = -0x800;
    } else {
        this->unk_1A2 = 0;
        this->actor.shape.rot.x = -0x800;
    }

    this->unk_19A = 0x180;
    this->actionFunc = func_80932DAC;
}

void func_80932DAC(BossSst *this, GlobalContext *globalCtx) {
    if (this->unk_198 != 0) {
        this->unk_198--;
    }

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_SmoothScaleMaxF(&this->actor.posRot.pos.z, (Math_Coss(D_80938C90->actor.shape.rot.y) * 200.0f) + this->actor.initPosRot.pos.z, 0.5f, 25.0f);
    Math_SmoothScaleMaxF(&this->actor.posRot.pos.x, (Math_Sins(D_80938C90->actor.shape.rot.y) * 200.0f) + this->actor.initPosRot.pos.x, 0.5f, 25.0f);
    if (Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, this->unk_1A2, this->unk_19A) != 0) {
        if (this->unk_1A2 != 0) {
            this->unk_1A2 = 0;
            SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_80937854[this->actor.params], 5.0f);
        } else {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_SHADEST_TAIKO_HIGH);
            this->unk_1A2 = -0x800;
            SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_8093785C[this->actor.params], 5.0f);
        }

        if (this->unk_198 < 80.0f) {
            this->unk_19A -= 0x40;
            this->unk_19A = CLAMP_MIN(this->unk_19A, 0x40);
        }
    }

    this->actor.posRot.pos.y = ((((this->unk_19A * 0.00390625f) + 0.5f) * 150.0f) * -0.00048828125f) * this->actor.shape.rot.x;
    if (this->unk_198 == 0) {
        func_80932FA0(this);
    }
}

void func_80932FA0(BossSst *this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_80937854[this->actor.params], 5.0f);
    this->actionFunc = func_80932FF0;
}

void func_80932FF0(BossSst *this, GlobalContext *globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, -0x800, this->unk_19A);
    Math_ApproxF(&this->actor.posRot.pos.y, 90.0f, 5.0f);
    if (D_80938C90->actionFunc == func_8092F6F0) {
        func_80933064(this);
    }
}

void func_80933064(BossSst *this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_80937854[this->actor.params], 3.0f);
    this->actionFunc = func_809330B4;
}

void func_809330B4(BossSst *this, GlobalContext *globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, 0, 0x400);
    this->actor.posRot.pos.y = D_80938C90->actor.posRot.pos.y + 230.0f;
    if (D_80938C90->actionFunc == func_8092F7DC) {
        func_80933134(this);
    }
}

void func_80933134(BossSst *this) {
    func_80935890(this);
    this->actor.shape.shadowDrawFunc = NULL;
    this->unk_198 = 0x50;
    this->actionFunc = func_80933170;
}

void func_80933170(BossSst *this, GlobalContext *globalCtx) {
    if (this->unk_198 != 0) {
        this->unk_198--;
    }

    this->actor.scale.y = this->actor.scale.y - 0.00025f;
    this->actor.scale.x = this->actor.scale.x + 0.000025f;
    this->actor.scale.z = this->actor.scale.z + 0.000025f;
    this->actor.posRot.pos.y = 0.0f;
    if (this->unk_198 == 0) {
        func_809331E8(this);
    }
}

void func_809331E8(BossSst *this) {
    this->actor.draw = func_8093639C;
    this->unk_198 = 0x14;
    this->unk_700[0].unk_22 = 0;
    this->actionFunc = func_80933210;
}

void func_80933210(BossSst *this, GlobalContext *globalCtx) {
    if (this->unk_198 != 0) {
        this->unk_198--;
    }

    if (this->unk_198 == 0) {
        this->unk_196 = 0;
    }
}

void func_8093323C(BossSst *this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_8093787C[this->actor.params], 10.0f);
    this->unk_195 = 0;
    this->actionFunc = func_80933290;
}

void func_80933290(BossSst *this, GlobalContext *globalCtx) {
    Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y, 250.0f, 0.5f, 70.0f, 5.0f);
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        if (this->unk_195 == 0) {
            SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_80937884[this->actor.params], 10.0f);
            this->unk_195 = 1;
        }
    }
    func_8002F974(&this->actor, NA_SE_EN_SHADEST_HAND_FLY - SFX_FLAG);
}

void func_80933328(BossSst *this) {
    BossSstStruct1* ptr;
    s32 i;

    D_8093746C[this->actor.params] = 9;
    Math_Vec3f_Copy(&this->unk_3C8, &this->actor.posRot.pos);
    func_80933554((BossSst*)this->actor.attachedB);
    this->unk_195 = 0;
    this->unk_196 = 1;
    this->unk_198 = 0x23;
    for (i = 0; i < 18; i++) {
        ptr = &this->unk_700[i];
        ptr->unk_20 = 0;
    }

    func_80935A20(this, 0);
    func_8003426C(&this->actor, 0, 0xFF, 0, 0xA);
    this->unk_19A = 0;
    this->actionFunc = func_809333F4;
}

void func_809333F4(BossSst *this, GlobalContext *globalCtx) {
    f32 sp24;
    f32 sp20;

    if (this->unk_198 != 0) {
        this->unk_198--;
    }

    if ((this->unk_198 & 1) != 0) {
        func_80935A20(this, (this->unk_198 >> 1) + 1);
    }

    if (this->unk_195 != 0) {
        func_80935F30(this);
        func_80930474(this);
        D_80938C90->unk_195 = 1;
        return;
    }

    this->actor.dmgEffectTimer = 0xA;
    if (this->unk_19A != 0) {
        sp24 = Math_Sins(this->actor.attachedB->shape.rot.x) * 5.0f;
        sp20 = Math_Coss(this->actor.attachedB->shape.rot.x) * 5.0f;
        if ((this->unk_19A & 1) != 0) {
            sp24 *= -1.0f;
            sp20 *= -1.0f;
        }

        this->actor.posRot.pos.x = (Math_Coss(this->actor.attachedB->shape.rot.y) * sp20) + this->unk_3C8.x;
        this->actor.posRot.pos.y = this->unk_3C8.y + sp24;
        this->actor.posRot.pos.z = (Math_Sins(this->actor.attachedB->shape.rot.y) * sp20) + this->unk_3C8.z;
        this->unk_19A--;
    }
}

void func_80933554(BossSst *this) {
    D_8093746C[this->actor.params] = 0xA;
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_80937864[this->actor.params], 5.0f);
    this->unk_195 = 0;
    this->actor.dmgEffectTimer = 0;
    if (this->unk_196 == 1) {
        this->unk_196 = 0;
    }

    this->unk_3C4 = func_8002DBB0(&this->actor, &((BossSst*)this->actor.attachedB)->unk_3C8);
    this->unk_1A4 = func_8002DAC0(&this->actor, &((BossSst*)this->actor.attachedB)->unk_3C8);
    func_80933CEC(this, 1);
    this->actionFunc = func_80933608;
}

void func_80933608(BossSst *this, GlobalContext *globalCtx) {
    s32 tmp;

    tmp = Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, this->unk_1A4, 0x400);
    tmp &= Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, 0x1000, 0x400);
    tmp &= Math_ApproxUpdateScaledS(&this->actor.shape.rot.z, 0, 0x800);
    tmp &= Math_ApproxUpdateScaledS(&this->unk_1A0, 0, 0x400);
    tmp &= Math_ApproxF(&this->actor.posRot.pos.y, ((BossSst*)this->actor.attachedB)->unk_3C8.y + 200.0f, 50.0f);
    tmp &= Math_ApproxF(&this->unk_3C4, 400.0f, 60.0f);
    this->actor.posRot.pos.x = ((BossSst*)this->actor.attachedB)->unk_3C8.x - (Math_Sins(this->unk_1A4) * this->unk_3C4);
    this->actor.posRot.pos.z = ((BossSst*)this->actor.attachedB)->unk_3C8.z - (Math_Coss(this->unk_1A4) * this->unk_3C4);
    if ((SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) && (tmp != 0)) {
        func_80933724(this);
    }
}

void func_80933724(BossSst *this) {
    this->unk_198 = 9;
    this->actionFunc = func_80933748;
    this->actor.speedXZ = 0.5f;
}

void func_80933748(BossSst *this, GlobalContext *globalCtx) {
    if ((this->unk_198 & 1) != 0) {
        this->actor.speedXZ *= 1.5f;
        this->actor.speedXZ = CLAMP_MAX(this->actor.speedXZ, 60.0f);

        if (Math_ApproxF(&this->unk_3C4, 100.0f, this->actor.speedXZ) != 0) {
            func_80935CDC(this);
            if (this->unk_198 != 0) {
                this->unk_198--;
            }

            if (this->unk_198 != 0) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EV_ICE_BROKEN);
            }

            ((BossSst*)this->actor.attachedB)->unk_19A = 5;
        }
    } else {
        this->actor.speedXZ *= 0.8f;
        Math_ApproxF(&this->unk_3C4, 500.0f, this->actor.speedXZ);
        if ((this->actor.speedXZ < 2.0f) && (this->unk_198 != 0)) {
            this->unk_198--;
        }
    }

    this->actor.posRot.pos.x = ((BossSst*)this->actor.attachedB)->unk_3C8.x - (Math_Sins(this->unk_1A4) * this->unk_3C4);
    this->actor.posRot.pos.z = ((BossSst*)this->actor.attachedB)->unk_3C8.z - (Math_Coss(this->unk_1A4) * this->unk_3C4);
    this->actor.posRot.pos.y = ((BossSst*)this->actor.attachedB)->unk_3C8.y + (this->unk_3C4 * 0.4f);
    if (this->unk_198 == 0) {
        ((BossSst*)this->actor.attachedB)->unk_195 = 1;
        func_80930474(this);
    }

    func_8002F974(&this->actor, NA_SE_EN_SHADEST_HAND_FLY - SFX_FLAG);
}

void func_809338DC(BossSst *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;

    if (globalCtx->unk_11D4C(globalCtx, &player->actor) != 0) {
        player->actor.attachedA = &this->actor;
        if (player->actor.colChkInfo.health > 0) {
            this->collider1.base.maskA &= ~1;
            if (D_8093746C[this->actor.params] == 6) {
                ((BossSst*)this->actor.attachedB)->collider1.base.maskA &= ~1;
            }
        }
    }
}

void func_80933978(BossSst *this, GlobalContext *globalCtx, s32 arg2) {
    Player* player = PLAYER;

    if (player->actor.attachedA == &this->actor) {
        player->actor.attachedA = NULL;
        player->unk_850 = 0x64;
        this->collider1.base.maskA |= 1;
        ((BossSst*)this->actor.attachedB)->collider1.base.maskA |= 1;
        if (arg2 != 0) {
            func_8002F71C(globalCtx, &this->actor, 0.0f, this->actor.shape.rot.y, 0.0f);
        }
    }
}

void func_809339F8(BossSst *this) {
    BossSst* hand;
    Vec3f* vec;
    f32 sp1C;
    f32 sp18;
    s32 i;

    sp1C = Math_Sins(this->actor.shape.rot.y);
    sp18 = Math_Coss(this->actor.shape.rot.y);
    if (this->actionFunc != func_8092E2E0) {
        this->actor.posRot.pos.x = (this->unk_3C4 * sp1C) + D_80937340.x;
        this->actor.posRot.pos.z = (this->unk_3C4 * sp18) + D_80937340.z;
    }
    
    for (i = 0; i < 2; i++) {
        hand = D_80938C98[i];
        vec = &D_80938CA8[i];

        hand->actor.posRot.pos.x = (this->actor.posRot.pos.x + (vec->z * sp1C)) + (vec->x * sp18);
        hand->actor.posRot.pos.y = this->actor.posRot.pos.y + vec->y;
        hand->actor.posRot.pos.z = (this->actor.posRot.pos.z + (vec->z * sp18)) - (vec->x * sp1C);

        hand->actor.initPosRot.pos.x = (this->actor.posRot.pos.x + (400.0f * sp1C)) + ((-200.0f * hand->unk_194) * sp18);
        hand->actor.initPosRot.pos.y = this->actor.posRot.pos.y;
        hand->actor.initPosRot.pos.z = (this->actor.posRot.pos.z + (400.0f * sp18)) - ((-200.0f * hand->unk_194) * sp1C);
        
        hand->actor.initPosRot.rot.y = this->actor.shape.rot.y;
        hand->actor.shape.rot.y = D_80938CC0[i] + this->actor.shape.rot.y;

        if (hand->actor.posRot.pos.y < hand->actor.groundY) {
            hand->actor.posRot.pos.y = hand->actor.groundY;
        }
    }
}

void func_80933B84(BossSst *this) {
    f32 tmpf1 = Math_Rand_ZeroOne() * 6.0f;
    s32 tmp;

    if (D_8093746C[((BossSst*)this->actor.attachedB)->actor.params] == 8) {
        tmpf1 *= 0.8333333f;
        if (tmpf1 > 4.0f) {
            tmpf1 = 4.0f;
        }
    }

    tmp = tmpf1;
    if (tmp == 0) {
        func_80930748(this);
    } else if (tmp == 1) {
        func_80930B18(this);
    } else if (tmp == 2) {
        func_80930F80(this);
    } else if (tmp == 5) {
        func_80931210(this);
    } else {
        func_809318A0(this);
    }
}

void func_80933C80(BossSst *this, s32 arg1) {
    s32 i;

    this->collider1.base.atFlags |= 1;
    for (i = 0; i < 11; i++) {
        this->collider1.list[i].body.toucher.damage = arg1;
    }
}

void func_80933CEC(BossSst *this, s32 arg1) {
    this->collider1.base.acFlags &= ~2;
    if (arg1 != 0) {
        this->collider1.base.type = 0xC;
        this->collider1.base.acFlags |= 4;
    } else {
        this->collider1.base.type = 0;
        this->collider1.base.acFlags &= ~4;
    }
}

void func_80933D2C(BossSst *this, u16 sfxId) {
    func_80078914(&this->unk_3C8, sfxId);
}

void func_80933D54(BossSst *this, GlobalContext *globalCtx) {
    s32 sp24;

    if ((this->collider1.base.acFlags & 2) && (this->collider1.base.type != 0xC)) {
        sp24 = 1;
        this->collider1.base.acFlags &= ~2;
        if ((this->actor.colChkInfo.damageEffect != 0) || (this->actor.colChkInfo.damage != 0)) {
            this->collider1.base.atFlags &= ~3;
            this->collider1.base.acFlags &= ~1;
            this->collider1.base.maskA &= ~4;
            func_80933978(this, globalCtx, 1);
            if (D_8093746C[this->actor.attachedB->params] == 6) {
                func_80933978((BossSst*)this->actor.attachedB, globalCtx, 1);
                func_80930474((BossSst*)this->actor.attachedB);
            }

            this->actor.flags &= ~1;
            if (this->actor.colChkInfo.damageEffect == 3) {
                func_80933328(this);
            } else {
                func_809322B4(this);
                if (D_8093746C[this->actor.attachedB->params] != 8) {
                    sp24 = 0;
                }
            }

            func_8092DCEC(D_80938C90, sp24);
            Item_DropCollectible(globalCtx, &this->actor.posRot.pos, Math_Rand_ZeroOne() < 0.5f ? 8 : 15);
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_SHADEST_DAMAGE_HAND);
        }
    }
}

void func_80933EE0(BossSst *this, GlobalContext *globalCtx) {
    if (this->collider2.base.acFlags & 2) {
        this->collider2.base.acFlags &= ~2;
        if ((this->actor.colChkInfo.damageEffect != 0) || (this->actor.colChkInfo.damage != 0)) {
            if (this->actionFunc == func_8092E830) {
                if (Actor_ApplyDamage(&this->actor) == 0) {
                    func_80032C7C(globalCtx, &this->actor);
                    func_8092EF28(this, globalCtx);
                } else {
                    func_8092E930(this);
                }

                func_80932BDC(D_80938C98[0]);
                func_80932BDC(D_80938C98[1]);
            } else {
                func_8092E470(this);
                if (D_8093746C[D_80938C98[1]->actor.params] == 9) {
                    func_80935F30(D_80938C98[1]);
                } else if (D_8093746C[D_80938C98[0]->actor.params] == 9) {
                    func_80935F30(D_80938C98[0]);
                }

                func_809329D4(D_80938C98[1]);
                func_809329D4(D_80938C98[0]);
            }
        }
    }
}

void BossSst_Update(Actor *thisx, GlobalContext *globalCtx) {
    BossSst* this = THIS;
    s32 params;
    BossSstStruct2* ptr;

    if (this->collider2.base.atFlags & 1) {
        if ((this->unk_700[0].unk_20 < 5) ||
            (this->actor.xzDistFromLink < ((this->unk_700[2].unk_1E * 0.01f) * sCylinderInit2.dim.radius)) || 
            (this->collider2.base.atFlags & 2)) {
            this->collider2.base.atFlags &= ~3;
        } else {
            this->collider2.dim.radius = (this->unk_700[0].unk_1E * 0.01f) * sCylinderInit2.dim.radius;
        }
    }

    func_80933D54(this, globalCtx);
    this->actionFunc(this, globalCtx);
    func_8002E4B4(globalCtx, &this->actor, 50.0f, 130.0f, 0.0f, 5);
    Actor_SetHeight(&this->actor, 0.0f);
    if (this->collider1.base.atFlags & 1) {
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
    }

    if ((D_80938C90->actionFunc != func_8092CAD0) && 
        (D_80938C90->actionFunc != func_8092CC58) && 
        (this->collider1.base.acFlags & 1)) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
    }

    if (this->collider1.base.maskA & 1) {
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
    }

    if (this->collider2.base.atFlags & 1) {
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider2.base);
    }

    params = D_8093746C[this->actor.params];
    if ((params != 11) && 
        (params != 0) && 
        (params != 1) &&
        (params != 9)) {
        this->unk_9D2++;
        this->unk_9D2 = CLAMP_MAX(this->unk_9D2, 7);
    } else {
        this->unk_9D2--;
        this->unk_9D2 = CLAMP_MIN(this->unk_9D2, 0);
    }

    ptr = &this->unk_9D4[this->unk_9D0];
    Math_Vec3f_Copy(&ptr->unk_00, &this->actor.posRot.pos);
    ptr->unk_0C = this->actor.shape.rot;
    ptr->unk_14 = this->unk_19E;
    ptr->unk_18 = this->unk_1A0;

    this->unk_9D0 = (this->unk_9D0 + 1) % 7;
    func_809360FC(this, globalCtx);
}

#ifdef NON_MATCHING
// D_80938CC0 wrong type
void func_80934338(Actor *thisx, GlobalContext *globalCtx) {
    BossSst *this = THIS;
    s32 dy;

    func_8002DBD0(&this->actor, &D_80938CA8[1], &D_80938C98[1]->actor.posRot.pos);
    func_8002DBD0(&this->actor, &D_80938CA8[0], &D_80938C98[0]->actor.posRot.pos);

    D_80938CC0[0] = D_80938C98[0]->actor.shape.rot.y - this->actor.shape.rot.y;
    D_80938CC0[1] = D_80938C98[1]->actor.shape.rot.y - this->actor.shape.rot.y;
    
    func_80933EE0(this, globalCtx);
    this->actionFunc(this, globalCtx);
    if (this->unk_194 != 0) {
        if ((globalCtx->actorCtx.unk_03 == 0) || (this->actor.dmgEffectTimer != 0)) {
            this->actor.flags &= ~0x80;
        } else {
            this->actor.flags |= 0x80;
        }
    }

    if (this->collider1.base.atFlags & 1) {
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
    }

    if ((this->actionFunc != func_8092CAD0) && (this->actionFunc != func_8092CC58)) {
        if (this->collider2.base.acFlags & 1) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider2.base);
        }
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
    }

    if (this->collider1.base.maskA & 1) {
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
    }

    func_809339F8(this);
    if ((!this->unk_194 || ((this->actor.flags & 0x80) == 0x80)) &&
       ((this->actionFunc == func_8092DEA0) || 
        (this->actionFunc == func_8092DFFC) || 
        (this->actionFunc == func_8092E3A0) || 
        (this->actionFunc == func_8092E510) || 
        (this->actionFunc == func_8092E830) || 
        (this->actionFunc == func_8092EA00))) {
        this->actor.flags |= 1;
    } else {
        this->actor.flags &= ~1;
    }

    if (this->actionFunc == func_8092DFFC) {
        func_80933D2C(this, NA_SE_EN_SHADEST_MOVE - SFX_FLAG);
    }

    func_809360FC(this, globalCtx);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80934338.s")
#endif

s32 func_809345A4(GlobalContext *globalCtx, s32 limbIndex, Gfx **dList, Vec3f *pos, Vec3s *rot, Actor *thisx) {
    BossSst *this = THIS;

    if (limbIndex == 1) {
        pos->z += this->unk_19E;
        rot->y += this->unk_1A0;
    }

    return 0;
}

void func_809345F0(GlobalContext *globalCtx, s32 limbIndex, Gfx **dList, Vec3s *rot, Actor *thisx) {
    BossSst *this = THIS;

    func_800628A4(limbIndex, &this->collider1);
}

s32 func_80934628(GlobalContext *globalCtx, s32 limbIndex, Gfx **dList, Vec3f *pos, Vec3s *rot, BossSstStruct2* ptr, Gfx **gfx) {
    if (limbIndex == 1) {
        pos->z += ptr->unk_14;
        rot->y += ptr->unk_18;
    }

    return 0;
}

void BossSst_Draw(Actor *thisx, GlobalContext *globalCtx) {
    BossSst* this = THIS;

    GraphicsContext *gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_boss_sst.c", 6563);
    func_80093D18(globalCtx->state.gfxCtx);

    gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0x80, D_80937464.r, D_80937464.g, D_80937464.b, 0xFF);

    if (D_80937448 == 0) {
        gSPSegment(gfxCtx->polyOpa.p++, 0x08, &D_80116280[2]);
    } else {
        gDPSetEnvColor(gfxCtx->polyOpa.p++, D_80937468.r, D_80937468.g, D_80937468.b, 0x00);
        gSPSegment(gfxCtx->polyOpa.p++, 0x08, D_80936990);
    }

    SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount, func_809345A4, func_809345F0, &this->actor);
    
    if (this->unk_9D2 >= 2) {
        BossSstStruct2* phi_s0;
        BossSstStruct2* phi_a0;
        s32 i;
        s32 phi_s5;
        s32 sp8C;
        s32 pad2;
        
        func_80093D84(globalCtx->state.gfxCtx);
        
        sp8C = (this->unk_9D2 >> 1);
        phi_s5 = (this->unk_9D0 + 4) % 7;
        phi_s0 = &this->unk_9D4[phi_s5];
        phi_a0 = &this->unk_9D4[(phi_s5 + 2) % 7];
        for(i = 0; i < sp8C; i++) {
            if (900.0f < func_800CB650(&phi_a0->unk_00, &phi_s0->unk_00)) {
                func_800D1694(phi_s0->unk_00.x, phi_s0->unk_00.y, phi_s0->unk_00.z, &phi_s0->unk_0C);
                Matrix_Scale(0.02f, 0.02f, 0.02f, 1);

                gSPSegment(gfxCtx->polyXlu.p++, 0x08, D_809369A8);
                gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, ((3 - i) * 10) + 20, 0, ((3 - i) * 20) + 50, ((3 - i) * 30) + 70);
                
                gfxCtx->polyXlu.p = SkelAnime_DrawSV2(globalCtx,this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount, &func_80934628, 0, &phi_s0->unk_00, gfxCtx->polyXlu.p);
            }
            phi_s5 = (phi_s5 + 5) % 7;
            phi_a0 = phi_s0;
            phi_s0 = &this->unk_9D4[phi_s5];
        }
    }
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_boss_sst.c", 0x19FE);
    func_8093639C(thisx, globalCtx);
}

s32 func_80934A44(GlobalContext *globalCtx, s32 limbIndex, Gfx **dList, Vec3f *pos, Vec3s *rot, Actor* thisx, Gfx **gfx) {
    BossSst *this = THIS;
    s32 sp30;
    s32 tmp2;
    s32 tmp;
    f32 sp24;

    if (((this->actor.flags & 0x80) != 0x80) && (this->unk_194 != 0)) {
        *dList = NULL;
    } else if (this->actionFunc == func_8092F374) {
        sp30 = (this->unk_198 / 10) + 1;
        if ((limbIndex == 3) || (limbIndex == 0x27) || (limbIndex == 0x2A)) {
            sp24 = sinf(this->unk_198 * 0.62831855f);
            rot->x += ((((1280.0f * Math_Rand_ZeroOne()) + 2560.0f) / (2 * 8.0f)) * sp30) * sp24;
            sp24 = sinf((this->unk_198 % 5) * 0.62831855f);
            rot->z -= (((((2048.0f * Math_Rand_ZeroOne()) + 4096.0f) / (2 * 8.0f)) * sp30) * sp24) + 4096.0f;
            if (limbIndex == 3) {
                sp24 = sinf(this->unk_198 * 0.62831855f);
                rot->y += ((((1280.0f * Math_Rand_ZeroOne()) + 2560.0f) / (2 * 8.0f)) * sp30) * sp24;
            }
        } else if ((limbIndex == 5) || (limbIndex == 6)) {
            sp24 = sinf((this->unk_198 % 5) * 0.62831855f);
            rot->z -= ((((((640.0f * Math_Rand_ZeroOne()) + 1280.0f) / (2 * 8.0f)) * sp30) * sp24) + 1280.0f);
            if (limbIndex == 5) {
                sp24 = sinf(this->unk_198 * 0.62831855f);
                rot->x += ((((1280.0f * Math_Rand_ZeroOne()) + 2560.0f) / (2 * 8.0f)) * sp30) * sp24;
                sp24 = sinf(this->unk_198 * 0.62831855f);
                rot->y += ((((1280.0f * Math_Rand_ZeroOne()) + 2560.0f) / (2 * 8.0f)) * sp30) * sp24;
            }
        } else if (limbIndex == 2) {
            sp24 = sinf(this->unk_198 * 0.62831855f);
            rot->x += ((((512.0f * Math_Rand_ZeroOne()) + 1024.0f) / (2 * 8.0f)) * sp30) * sp24;
            sp24 = sinf(this->unk_198 * 0.62831855f);
            rot->y += ((((512.0f * Math_Rand_ZeroOne()) + 1024.0f) / (2 * 8.0f)) * sp30) * sp24;
            sp24 = sinf((this->unk_198 % 5) * 0.62831855f);
            rot->z -= (((((256.0f * Math_Rand_ZeroOne()) + 512.0f) / (2 * 8.0f)) * sp30) * sp24) + 512.0f;
        }
    } else if (this->actionFunc == func_8092F0BC) {
        if (this->unk_198 >= 0x31) {
            tmp = this->unk_198 - 0x24;
        } else {
            tmp2 = (this->unk_198 >= 7) ? 6 : this->unk_198;
            tmp = tmp2 * 2;
        }

        if ((limbIndex == 3) || (limbIndex == 0x27) || (limbIndex == 0x2A)) {
            rot->z -= 8192.0f * sinf(tmp * 0.1308997f);
        } else if ((limbIndex == 5) || (limbIndex == 6)) {
            rot->z -= 2560.0f * sinf(tmp * 0.1308997f);
        } else if (limbIndex == 2) {
            rot->z -= 1024.0f * sinf(tmp * 0.1308997f);
        }
    } else if ((this->actionFunc == func_8092F434) || 
        (this->actionFunc == func_8092F6F0) || 
        (this->actionFunc == func_8092F7DC)) {
        if ((limbIndex == 3) || (limbIndex == 0x27) || (limbIndex == 0x2A)) {
            rot->z -= 0x1000;
        } else if ((limbIndex == 5) || (limbIndex == 6)) {
            rot->z -= 0x500;
        } else if (limbIndex == 2) {
            rot->z -= 0x200;
        }
    }

    return 0;
}

void func_80935238(GlobalContext *globalCtx, s32 limbIndex, Gfx **dList, Vec3s *rot, Actor *thisx, Gfx **gfx) {
    BossSst *this = THIS;
    Vec3f sp18;

    if (limbIndex == 8) {
        Matrix_MultVec3f(&D_809378AC, &this->actor.posRot2.pos);
        Matrix_MultVec3f(&D_809378B8, &sp18);
        this->collider2.dim.pos.x = sp18.x;
        this->collider2.dim.pos.y = sp18.y;
        this->collider2.dim.pos.z = sp18.z;
    }

    func_800628A4(limbIndex, &this->collider1);
}

void func_809352DC(Actor *thisx, GlobalContext *globalCtx) {
    BossSst *this = THIS;
    s32 pad;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_boss_sst.c", 6810);
    if ((this->actor.flags & 0x80) != 0x80) {
        func_80093D18(globalCtx->state.gfxCtx);
        gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0x80, D_80937464.r, D_80937464.g, D_80937464.b, 255);
        if (D_80937448 == 0) {
            gSPSegment(gfxCtx->polyOpa.p++, 0x08, &D_80116280[2]);
        } else {
            gDPSetEnvColor(gfxCtx->polyOpa.p++, D_80937468.r, D_80937468.g, D_80937468.b, 0);
            gSPSegment(gfxCtx->polyOpa.p++, 0x08, D_80936990);
        }
    } else {
        func_80093D84(globalCtx->state.gfxCtx);
        gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0x80, 255, 255, 255, 255);
        gSPSegment(gfxCtx->polyXlu.p++, 0x08, &D_80116280[2]);
    }

    if (this->actionFunc == func_8092F374) {
        f32 sp68;
        f32 sp64;

        sp68 = Math_Rand_ZeroOne() * 6.2831855f;
        sp64 = Math_Rand_ZeroOne() * 6.2831855f;
        Matrix_RotateY(sp64, MTXMODE_APPLY);
        Matrix_RotateX(sp68, MTXMODE_APPLY);
        Matrix_Scale((this->unk_198 * 0.000375f) + 1.0f, 
            1.0f - (this->unk_198 * 0.00075f), 
            (this->unk_198 * 0.000375f) + 1.0f, MTXMODE_APPLY);
        Matrix_RotateX(-sp68, MTXMODE_APPLY);
        Matrix_RotateY(-sp64, MTXMODE_APPLY);
    }

    if ((this->actor.flags & 0x80) != 0x80) {
        gfxCtx->polyOpa.p = SkelAnime_DrawSV2(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, 
            this->skelAnime.dListCount, func_80934A44, func_80935238, &this->actor, gfxCtx->polyOpa.p);
    } else {
        gfxCtx->polyXlu.p = SkelAnime_DrawSV2(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, 
            this->skelAnime.dListCount, func_80934A44, func_80935238, &this->actor, gfxCtx->polyXlu.p);
    }

    if ((this->actionFunc == func_8092CC58) && 
        ((this->unk_198 < 0x72) && (this->unk_198 >= 0x15))) {
        s32 tmp;
        Vec3f sp54;
        Vec3f sp48;

        func_80093D84(globalCtx->state.gfxCtx);
        gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, 0x00, 0x00, 0x12, 0xFF);

        tmp = 0x388 - (this->unk_198 * 8);
        sp54.x = 35.0f;
        sp54.y = tmp + -250.0f;
        sp54.z = 190.0f;
        if (sp54.y > 450.0f) {
            sp54.y = 450.0f;
        }

        Matrix_MultVec3fExt(&sp54, &sp48, &globalCtx->mf_11DA0);
        Matrix_Translate(this->actor.posRot.pos.x + sp48.x, this->actor.posRot.pos.y + sp48.y, this->actor.posRot.pos.z + sp48.z, MTXMODE_NEW);
        Matrix_Scale(1.0f, 1.0f, 1.0f, MTXMODE_APPLY);

        gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_sst.c", 6934), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(gfxCtx->polyXlu.p++, D_80936E08);
    }

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_boss_sst.c", 6941);

    SkinMatrix_Vec3fMtxFMultXYZ(&globalCtx->mf_11D60, &this->actor.posRot2.pos, &this->unk_3C8);
    func_8093639C(&this->actor, globalCtx);
}

#ifdef NON_MATCHING
void func_80935764(BossSst *this) {
    f32 sp24;
    f32 sp20;
    s32 i;
    BossSstStruct1* ptr;

    this->unk_196 = 3;
    sp24 = Math_Sins(this->actor.shape.rot.y);
    sp20 = Math_Coss(this->actor.shape.rot.y);

    for (i = 0; i < 3; i++) {
        ptr = &this->unk_700[i];

        ptr->unk_00.x = (D_809378C4[i].x * sp20) + 
                (this->actor.posRot.pos.x + (D_809378C4[i].z * sp24));
        ptr->unk_00.y = 0.0f;
        ptr->unk_00.z = (this->actor.posRot.pos.z + (sp20 * D_809378C4[i].z)) - 
                (D_809378C4[i].x * sp24);
        
        ptr->unk_1E = 0x5AA;
        ptr->unk_24 = 0xFE;
        ptr->unk_22 = 0x41;
        
    }

    this->unk_700[3].unk_22 = -1;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80935764.s")
#endif

void func_80935890(BossSst *this) {
    this->unk_196 = 3;
    this->unk_700[0].unk_00.x = ((Math_Coss(this->actor.shape.rot.y) * 30.0f) * this->unk_194) + this->actor.posRot.pos.x;
    this->unk_700[0].unk_00.z = this->actor.posRot.pos.z - ((Math_Sins(this->actor.shape.rot.y) * 30.0f) * this->unk_194);
    this->unk_700[0].unk_00.y = this->actor.posRot.pos.y;
    this->unk_700[0].unk_1E = 0x8FC;
    this->unk_700[0].unk_24 = 0xFE;
    this->unk_700[0].unk_22 = 5;
    this->unk_700[1].unk_22 = -1;
}

void func_80935948(BossSst *this) {
    s32 i;
    BossSstStruct1* ptr;
    s32 var1;
    s32 var2 = 0x78;
    s32 var3 = 0xFA;

    Audio_PlayActorSound2(&this->actor, NA_SE_EN_SHADEST_HAND_WAVE);
    this->unk_196 = 2;

    var1 = 9;
    for (i = 0; var1 < 12; i++) {
        ptr = &this->unk_700[i];
        Math_Vec3f_Copy(&ptr->unk_00, &this->actor.posRot.pos);
        ptr->unk_20 = var1 * 2;
        var1++;
        ptr->unk_1E = var2;
        ptr->unk_24 = var3 / ptr->unk_20;
        
        var2 -= 50;
        var3 -= 25; 
    }
}

void func_80935A20(BossSst *this, s32 arg1) {
    BossSstStruct1* ptr = &this->unk_700[arg1]; 
    Sphere16* sphere;
    s32 tmp;

    if (arg1 < 0xB) {
        sphere = &this->collider1.list[arg1].dim.worldSphere;

        ptr->unk_00.x = sphere->center.x;
        ptr->unk_00.y = sphere->center.y;
        ptr->unk_00.z = sphere->center.z;
        if (arg1 == 0) {
            ptr->unk_00.x -= 25.0f;
            ptr->unk_00.y -= 25.0f;
            ptr->unk_00.z -= 25.0f;
        }
    } else {
        sphere = &this->collider1.list[0].dim.worldSphere;

        tmp = ((arg1 - 0xB) & 1) ? 1 : -1;
        ptr->unk_00.x = (tmp * 25.0f) + sphere->center.x;
        
        tmp = ((arg1 - 0xB) & 2) ? 1 : -1;
        ptr->unk_00.y = (tmp * 25.0f) + sphere->center.y;
        
        tmp = ((arg1 - 0xB) & 4) ? 1 : -1;
        ptr->unk_00.z = (tmp * 25.0f) + sphere->center.z;
    }

    ptr->unk_00.x -= this->actor.posRot.pos.x;
    ptr->unk_00.y -= this->actor.posRot.pos.y;
    ptr->unk_00.z -= this->actor.posRot.pos.z;

    ptr->unk_22 = 0;

    ptr->unk_18.x = Math_Rand_ZeroOne() * 65536.0f;
    ptr->unk_18.y = Math_Rand_ZeroOne() * 65536.0f;
    ptr->unk_18.z = Math_Rand_ZeroOne() * 65536.0f;

    ptr->unk_24 = 0x78;
    ptr->unk_20 = 1;
    
    ptr->unk_0C.x = ((Math_Rand_ZeroOne() * 0.06f) + 0.12f) * ptr->unk_00.x;
    ptr->unk_0C.y = (Math_Rand_ZeroOne() * 15.0f) + 5.0f;
    ptr->unk_0C.z = ((Math_Rand_ZeroOne() * 0.06f) + 0.12f) * ptr->unk_00.z;
    ptr->unk_1E = 0xFA0;
    
    if ((arg1 & 1) == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_PL_FREEZE_S);
    }
}

void func_80935CDC(BossSst *this) {
    BossSstStruct1* ptr;
    Vec3f sp78;
    s32 i;
    f32 tmpf1;

    this->unk_196 = 1;
    tmpf1 = Math_Coss(this->actor.shape.rot.x) * 50.0f;
    sp78.x = (Math_Coss(this->actor.shape.rot.y) * tmpf1) + this->actor.posRot.pos.x;
    sp78.y = ((Math_Sins(this->actor.shape.rot.x) * 50.0f) + this->actor.posRot.pos.y) - 10.0f;
    sp78.z = (Math_Sins(this->actor.shape.rot.y) * tmpf1) + this->actor.posRot.pos.z;

    for (i = 0; i < 18; i++) {
        ptr = &this->unk_700[i];
        Math_Vec3f_Copy(&ptr->unk_00, &sp78);
        ptr->unk_22 = 1;
        ptr->unk_18.x = Math_Rand_ZeroOne() * 65536.0f;
        ptr->unk_18.y = Math_Rand_ZeroOne() * 65536.0f;
        ptr->unk_18.z = Math_Rand_ZeroOne() * 65536.0f;

        ptr->unk_24 = 0x78;
        ptr->unk_20 = 1;

        ptr->unk_0C.x = Math_Rand_CenteredFloat(20.0f);
        ptr->unk_0C.y = (Math_Rand_ZeroOne() * 10.0f) + 3.0f;
        ptr->unk_0C.z = Math_Rand_CenteredFloat(20.0f);

        ptr->unk_1E = (Math_Rand_ZeroOne() * 200.0f) + 400.0f;
    }
}

void func_80935F30(BossSst *this) {
    BossSstStruct1* ptr;
    s32 i;

    this->unk_700[0].unk_22 = 1;
    Audio_PlayActorSound2(&this->actor, NA_SE_PL_ICE_BROKEN);

    for (i = 0; i < 18; i++) {
        ptr = &this->unk_700[i];
        if (ptr->unk_20 != 0) {
            ptr->unk_00.x += this->actor.posRot.pos.x;
            ptr->unk_00.y += this->actor.posRot.pos.y;
            ptr->unk_00.z += this->actor.posRot.pos.z;
        }
    }
}


void func_809360FC(BossSst *this, GlobalContext *globalCtx) {
    s32 pad;
    BossSstStruct1* ptr;
    s32 i;
    BossSstStruct1* ptr2;
    s32 tmp;

    if (this->unk_196 != 0) {
        if (this->unk_196 == 1) {
            if (this->unk_700[0].unk_22 != 0) {
                for (i = 0; i < 18; i++) {
                    if (this){};
                    ptr = &this->unk_700[i];
                    if (ptr->unk_20 != 0) {
                        ptr->unk_00.x += ptr->unk_0C.x;
                        ptr->unk_00.y += ptr->unk_0C.y;
                        ptr->unk_00.z += ptr->unk_0C.z;
                        ptr->unk_24 -= 3;
                        ptr->unk_0C.y -= 1.0f;
                        ptr->unk_18.x += 0xD00;
                        ptr->unk_18.y += 0x1100;
                        ptr->unk_18.z += 0x1500;
                    }
                }
            }

            if (this->unk_700[0].unk_24 == 0) {
                this->unk_196 = 0;
            }
        } else if (this->unk_196 == 2) {
            for (i = 0; i != 3; i++) {
                ptr = &this->unk_700[i];

                tmp = ptr->unk_20 * 2;
                ptr->unk_1E += (CLAMP_MAX(tmp, 0x14) + i);
                if (ptr->unk_20 != 0) {
                    ptr->unk_20--;
                }
            }

            if (this->unk_700[0].unk_20 == 0) {
                this->unk_196 = 0;
            }
        } else if (this->unk_196 == 3) {
            ptr = &this->unk_700[0];
            if (this->actor.params == -1) {
                SkinMatrix_Vec3fMtxFMultXYZ(&globalCtx->mf_11D60, &this->actor.posRot2.pos, &this->unk_3C8);
                func_80933D2C(this, NA_SE_EN_SHADEST_LAST - SFX_FLAG);
            }

            while (ptr->unk_22 != -1) {
                if (ptr->unk_22 == 0) {
                    ptr->unk_24 -= 2;
                } else {
                    ptr->unk_1E += ptr->unk_22;
                }

                ptr->unk_1E = CLAMP_MAX(ptr->unk_1E, 0x2710);
                ptr++;
            }
        }
    }
}

void func_8093639C(Actor* thisx, GlobalContext *globalCtx) {
    BossSst* this = THIS;
    s32 i;
    BossSstStruct1* ptr;
    f32 pad;

    if (this->unk_196 != 0) {
        GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
        Gfx* dispRefs[4];

        Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_boss_sst.c", 7302);
        func_80093D84(globalCtx->state.gfxCtx);
        if (this->unk_196 == 1) {
            gSPSegment(gfxCtx->polyXlu.p++, 0x08, 
                Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 
                    (u8)globalCtx->gameplayFrames, 0x20, 0x10, 1, 0, 
                    (u8)(globalCtx->gameplayFrames * 2), 0x40, 0x20));
            gDPSetEnvColor(gfxCtx->polyXlu.p++, 0x00, 0x32, 0x64, this->unk_700[0].unk_24);
            gSPDisplayList(gfxCtx->polyXlu.p++, D_06017EE0);

            for (i = 0; i < 18; i++) {
                ptr = &this->unk_700[i];
                if (ptr->unk_20 != 0) {
                    func_8003435C(&ptr->unk_00, globalCtx);
                    if (this->unk_700[0].unk_22 != 0) {
                        Matrix_Translate(ptr->unk_00.x, ptr->unk_00.y, ptr->unk_00.z, 0);
                    } else {
                        Matrix_Translate(ptr->unk_00.x + this->actor.posRot.pos.x, ptr->unk_00.y + this->actor.posRot.pos.y, ptr->unk_00.z + this->actor.posRot.pos.z, 0);
                    }

                    Matrix_RotateRPY(ptr->unk_18.x, ptr->unk_18.y, ptr->unk_18.z, 1);
                    Matrix_Scale(ptr->unk_1E * 0.001f, ptr->unk_1E * 0.001f, ptr->unk_1E * 0.001f, 1);
                    
                    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_sst.c", 7350), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                    gSPDisplayList(gfxCtx->polyXlu.p++, D_06017F80);
                }
            }
        } else if (this->unk_196 == 2) {
            f32 tmpf1 = 0.005f;
            gDPPipeSync(gfxCtx->polyXlu.p++);
            gSPSegment(gfxCtx->polyXlu.p++, 0x08, 
                Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 
                    globalCtx->gameplayFrames & 0x7F, 0, 0x20, 0x40, 1, 0, 
                    (u8)(globalCtx->gameplayFrames * -15), 0x20, 0x40));

            for (i = 0; i < 3; i++, tmpf1 -= 0.001f) {

                ptr = &this->unk_700[i];
                if (ptr->unk_20 != 0) {
                    Matrix_Translate(ptr->unk_00.x, ptr->unk_00.y, ptr->unk_00.z, 0);
                    Matrix_Scale(ptr->unk_1E * 0.001f, tmpf1, ptr->unk_1E * 0.001f, 1);

                    gDPPipeSync(gfxCtx->polyXlu.p++);
                    gDPSetPrimColor(gfxCtx->polyXlu.p++, 0x80, 0x80, 0x1E, 0x00, 0x1E, ptr->unk_24 * ptr->unk_20);
                    gDPSetEnvColor(gfxCtx->polyXlu.p++, 0x1E, 0x00, 0x1E, 0x00);
                    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_sst.c", 7396), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                    gSPDisplayList(gfxCtx->polyXlu.p++, D_040184B0);
                }
            }
        } else if (this->unk_196 == 3) {
            gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0x80, 0x0A, 0x0A, 0x50, 0x00);
            gDPSetEnvColor(gfxCtx->polyXlu.p++, 0x0A, 0x0A, 0x0A, this->unk_700[0].unk_24);
            
            ptr = &this->unk_700[0];
            while (ptr->unk_22 != -1) {
                Matrix_Translate(ptr->unk_00.x, ptr->unk_00.y, ptr->unk_00.z, 0);
                Matrix_Scale(ptr->unk_1E * 0.001f, 1.0f, ptr->unk_1E * 0.001f, 1);

                gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_sst.c", 7423), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(gfxCtx->polyXlu.p++, D_809372C0);
                ptr++;
            }
        }

        Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_boss_sst.c", 7433);
    }
}