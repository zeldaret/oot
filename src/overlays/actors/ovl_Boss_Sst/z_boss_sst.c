/*
 * File: z_boss_sst.c
 * Overlay: ovl_Boss_Sst
 * Description: Bongo Bongo
 */

#include "z_boss_sst.h"
#include "overlays/actors/ovl_Bg_Sst_Floor/z_bg_sst_floor.h"

#define FLAGS 0x00000435

#define THIS ((BossSst*)thisx)

#define LEFT 0
#define RIGHT 1
#define OTHER_HAND ((BossSst*)this->actor.child)
#define HAND_STATE(hand) sHandState[hand->actor.params]

typedef enum {
    /*  0 */ HAND_WAIT,
    /*  1 */ HAND_BEAT,
    /*  2 */ HAND_RETREAT,
    /*  3 */ HAND_SLAM,
    /*  4 */ HAND_SWEEP,
    /*  5 */ HAND_PUNCH,
    /*  6 */ HAND_CLAP,
    /*  7 */ HAND_GRAB,
    /*  8 */ HAND_DAMAGED,
    /*  9 */ HAND_FROZEN,
    /* 10 */ HAND_BREAK_ICE,
    /* 11 */ HAND_DEATH
} BossSstHandStates;

typedef enum {
    /* 0 */ BONGO_NULL,
    /* 1 */ BONGO_ICE,
    /* 2 */ BONGO_SHOCKWAVE,
    /* 3 */ BONGO_SHADOW
} BossSstEffectModes;

void BossSst_Init(Actor* thisx, GlobalContext* globalCtx);
void BossSst_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BossSst_UpdateHand(Actor* thisx, GlobalContext* globalCtx);
void BossSst_UpdateHead(Actor* thisx, GlobalContext* globalCtx);
void BossSst_DrawHand(Actor* thisx, GlobalContext* globalCtx);
void BossSst_DrawHead(Actor* thisx, GlobalContext* globalCtx);
void BossSst_UpdateEffect(Actor* thisx, GlobalContext* globalCtx);
void BossSst_DrawEffect(Actor* thisx, GlobalContext* globalCtx);

void BossSst_HeadSfx(BossSst* this, u16 sfxId);

void BossSst_HeadSetupLurk(BossSst* this);
void BossSst_HeadLurk(BossSst* this, GlobalContext* globalCtx);
void BossSst_HeadSetupIntro(BossSst* this, GlobalContext* globalCtx);
void BossSst_HeadIntro(BossSst* this, GlobalContext* globalCtx);
void BossSst_HeadSetupNeutral(BossSst* this);
void BossSst_HeadNeutral(BossSst* this, GlobalContext* globalCtx);
void BossSst_HeadWait(BossSst* this, GlobalContext* globalCtx);

void BossSst_HeadSetupDamagedHand(BossSst* this, s32 arg1);
void BossSst_HeadDamagedHand(BossSst* this, GlobalContext* globalCtx);
void BossSst_HeadSetupReadyCharge(BossSst* this);
void BossSst_HeadReadyCharge(BossSst* this, GlobalContext* globalCtx);
void BossSst_HeadSetupCharge(BossSst* this);
void BossSst_HeadCharge(BossSst* this, GlobalContext* globalCtx);
void BossSst_HeadSetupEndCharge(BossSst* this);
void BossSst_HeadEndCharge(BossSst* this, GlobalContext* globalCtx);

void BossSst_HeadSetupFrozenHand(BossSst* this);
void BossSst_HeadFrozenHand(BossSst* this, GlobalContext* globalCtx);
void BossSst_HeadSetupUnfreezeHand(BossSst* this);
void BossSst_HeadUnfreezeHand(BossSst* this, GlobalContext* globalCtx);

void BossSst_HeadStunned(BossSst* this, GlobalContext* globalCtx);
void BossSst_HeadSetupVulnerable(BossSst* this);
void BossSst_HeadVulnerable(BossSst* this, GlobalContext* globalCtx);
void BossSst_HeadDamage(BossSst* this, GlobalContext* globalCtx);
void BossSst_HeadSetupRecover(BossSst* this);
void BossSst_HeadRecover(BossSst* this, GlobalContext* globalCtx);

void BossSst_HeadDeath(BossSst* this, GlobalContext* globalCtx);
void BossSst_HeadSetupThrash(BossSst* this);
void BossSst_HeadThrash(BossSst* this, GlobalContext* globalCtx);
void BossSst_HeadSetupDarken(BossSst* this);
void BossSst_HeadDarken(BossSst* this, GlobalContext* globalCtx);
void BossSst_HeadSetupFall(BossSst* this);
void BossSst_HeadFall(BossSst* this, GlobalContext* globalCtx);
void BossSst_HeadSetupMelt(BossSst* this);
void BossSst_HeadMelt(BossSst* this, GlobalContext* globalCtx);
void BossSst_HeadSetupFinish(BossSst* this);
void BossSst_HeadFinish(BossSst* this, GlobalContext* globalCtx);

void BossSst_HandGrabPlayer(BossSst* this, GlobalContext* globalCtx);
void BossSst_HandReleasePlayer(BossSst* this, GlobalContext* globalCtx, s32 arg2);
void BossSst_HandSelectAttack(BossSst* this);
void BossSst_HandSetDamage(BossSst* this, s32 arg1);
void BossSst_HandSetInvulnerable(BossSst* this, s32 arg1);

void BossSst_HandSetupWait(BossSst* this);
void BossSst_HandWait(BossSst* this, GlobalContext* globalCtx);
void BossSst_HandSetupDownbeat(BossSst* this);
void BossSst_HandDownbeat(BossSst* this, GlobalContext* globalCtx);
void BossSst_HandSetupOffbeat(BossSst* this);
void BossSst_HandOffbeat(BossSst* this, GlobalContext* globalCtx);
void BossSst_HandSetupDownbeatEnd(BossSst* this);
void BossSst_HandDownbeatEnd(BossSst* this, GlobalContext* globalCtx);
void BossSst_HandSetupOffbeatEnd(BossSst* this);
void BossSst_HandOffbeatEnd(BossSst* this, GlobalContext* globalCtx);

void BossSst_HandReadySlam(BossSst* this, GlobalContext* globalCtx);
void BossSst_HandSetupSlam(BossSst* this);
void BossSst_HandSlam(BossSst* this, GlobalContext* globalCtx);
void BossSst_HandEndSlam(BossSst* this, GlobalContext* globalCtx);

void BossSst_HandReadySweep(BossSst* this, GlobalContext* globalCtx);
void BossSst_HandSetupSweep(BossSst* this);
void BossSst_HandSweep(BossSst* this, GlobalContext* globalCtx);

void BossSst_HandReadyPunch(BossSst* this, GlobalContext* globalCtx);
void BossSst_HandSetupPunch(BossSst* this);
void BossSst_HandPunch(BossSst* this, GlobalContext* globalCtx);

void BossSst_HandReadyClap(BossSst* this, GlobalContext* globalCtx);
void BossSst_HandSetupClap(BossSst* this);
void BossSst_HandClap(BossSst* this, GlobalContext* globalCtx);
void BossSst_HandSetupEndClap(BossSst* this);
void BossSst_HandEndClap(BossSst* this, GlobalContext* globalCtx);

void BossSst_HandReadyGrab(BossSst* this, GlobalContext* globalCtx);
void BossSst_HandSetupGrab(BossSst* this);
void BossSst_HandGrab(BossSst* this, GlobalContext* globalCtx);
void BossSst_HandSetupCrush(BossSst* this);
void BossSst_HandCrush(BossSst* this, GlobalContext* globalCtx);
void BossSst_HandSetupEndCrush(BossSst* this);
void BossSst_HandEndCrush(BossSst* this, GlobalContext* globalCtx);
void BossSst_HandSetupSwing(BossSst* this);
void BossSst_HandSwing(BossSst* this, GlobalContext* globalCtx);

void BossSst_HandSetupRetreat(BossSst* this);
void BossSst_HandRetreat(BossSst* this, GlobalContext* globalCtx);

void BossSst_HandSetupReel(BossSst* this);
void BossSst_HandReel(BossSst* this, GlobalContext* globalCtx);
void BossSst_HandSetupReadyShake(BossSst* this);
void BossSst_HandReadyShake(BossSst* this, GlobalContext* globalCtx);
void BossSst_HandSetupShake(BossSst* this);
void BossSst_HandShake(BossSst* this, GlobalContext* globalCtx);
void BossSst_HandSetupReadyCharge(BossSst* this);
void BossSst_HandReadyCharge(BossSst* this, GlobalContext* globalCtx);

void BossSst_HandSetupFrozen(BossSst* this);
void BossSst_HandFrozen(BossSst* this, GlobalContext* globalCtx);
void BossSst_HandSetupReadyBreakIce(BossSst* this);
void BossSst_HandReadyBreakIce(BossSst* this, GlobalContext* globalCtx);
void BossSst_HandSetupBreakIce(BossSst* this);
void BossSst_HandBreakIce(BossSst* this, GlobalContext* globalCtx);

void BossSst_HandStunned(BossSst* this, GlobalContext* globalCtx);
void BossSst_HandDamage(BossSst* this, GlobalContext* globalCtx);
void BossSst_HandSetupRecover(BossSst* this);
void BossSst_HandRecover(BossSst* this, GlobalContext* globalCtx);

void BossSst_HandSetupThrash(BossSst* this);
void BossSst_HandThrash(BossSst* this, GlobalContext* globalCtx);
void BossSst_HandSetupDarken(BossSst* this);
void BossSst_HandDarken(BossSst* this, GlobalContext* globalCtx);
void BossSst_HandSetupFall(BossSst* this);
void BossSst_HandFall(BossSst* this, GlobalContext* globalCtx);
void BossSst_HandSetupMelt(BossSst* this);
void BossSst_HandMelt(BossSst* this, GlobalContext* globalCtx);
void BossSst_HandSetupFinish(BossSst* this);
void BossSst_HandFinish(BossSst* this, GlobalContext* globalCtx);

void BossSst_SpawnHeadShadow(BossSst* this);
void BossSst_SpawnHandShadow(BossSst* this);
void BossSst_SpawnShockwave(BossSst* this);
void BossSst_SpawnIceCrystal(BossSst* this, s32 arg1);
void BossSst_SpawnIceShard(BossSst* this);
void BossSst_IceShatter(BossSst* this);

extern UNK_TYPE D_06013D80;

// Left hand
extern SkeletonHeader D_06004DE0;
extern AnimationHeader D_060002E8;

// Right hand
extern SkeletonHeader D_0600A350;
extern AnimationHeader D_06005860;

// Head
extern SkeletonHeader D_06017C40;
extern AnimationHeader D_0600ACD4;
extern AnimationHeader D_0600B0D8;
extern AnimationHeader D_0600B6FC;
extern AnimationHeader D_0600C288;
extern AnimationHeader D_0600C5B0;
extern AnimationHeader D_0600C9BC;
extern AnimationHeader D_0600CC6C;
extern AnimationHeader D_0600D458;
extern AnimationHeader D_0600DC2C;
extern AnimationHeader D_0600E7B8;

// Ice
extern Gfx D_06017EE0[];
extern Gfx D_06017F80[];

// Shockwaves
extern Gfx D_040184B0[];

static Gfx sBodyStaticDList[] = {
    gsDPPipeSync(),
    gsDPSetCombineLERP(NOISE, ENVIRONMENT, PRIMITIVE, ENVIRONMENT, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0,
                       COMBINED),
    gsSPEndDisplayList(),
};

static Gfx sHandTrailDList[] = {
    gsDPPipeSync(),
    gsDPSetCombineLERP(0, 0, 0, PRIMITIVE, 0, 0, 0, PRIMITIVE, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL | G_RM_PASS,
                      AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPEndDisplayList(),
};

static Vtx sIntroVanishVtx[] = {
    VTX(400, 400, 0, 0x0800, 0x0000, 255, 255, 255, 255),
    VTX(-400, 400, 0, 0x0000, 0x0000, 255, 255, 255, 255),
    VTX(-400, -400, 0, 0x0000, 0x1800, 255, 255, 255, 255),
    VTX(400, -400, 0, 0x0800, 0x1800, 255, 255, 255, 255),
};

static u32 sIntroVanishTex[] = {
    0x04040404, 0x04040404, 0x04040404, 0x04040404, 0x08080808, 0x08080808, 0x08080808, 0x08080808, 0x0C0C0C0C,
    0x0C0C0C0C, 0x0C0C0C0C, 0x0C0C0C0C, 0x10101010, 0x10101010, 0x10101010, 0x10101010, 0x14141414, 0x14141414,
    0x14141414, 0x14141414, 0x18181818, 0x18181818, 0x18181818, 0x18181818, 0x1C1C1C1C, 0x1C1C1C1C, 0x1C1C1C1C,
    0x1C1C1C1C, 0x20202020, 0x20202020, 0x20202020, 0x20202020, 0x24242424, 0x24242424, 0x24242424, 0x24242424,
    0x28282828, 0x28282828, 0x28282828, 0x28282828, 0x2C2C2C2C, 0x2C2C2C2C, 0x2C2C2C2C, 0x2C2C2C2C, 0x30303030,
    0x30303030, 0x30303030, 0x30303030, 0x34343434, 0x34343434, 0x34343434, 0x34343434, 0x38383838, 0x38383838,
    0x38383838, 0x38383838, 0x3C3C3C3C, 0x3C3C3C3C, 0x3C3C3C3C, 0x3C3C3C3C, 0x40404040, 0x40404040, 0x40404040,
    0x40404040, 0x44444444, 0x44444444, 0x44444444, 0x44444444, 0x48484848, 0x48484848, 0x48484848, 0x48484848,
    0x4C4C4C4C, 0x4C4C4C4C, 0x4C4C4C4C, 0x4C4C4C4C, 0x50505050, 0x50505050, 0x50505050, 0x50505050, 0x54545454,
    0x54545454, 0x54545454, 0x54545454, 0x58585858, 0x58585858, 0x58585858, 0x58585858, 0x5C5C5C5C, 0x5C5C5C5C,
    0x5C5C5C5C, 0x5C5C5C5C, 0x60606060, 0x60606060, 0x60606060, 0x60606060, 0x64646464, 0x64646464, 0x64646464,
    0x64646464, 0x68686868, 0x68686868, 0x68686868, 0x68686868, 0x6C6C6C6C, 0x6C6C6C6C, 0x6C6C6C6C, 0x6C6C6C6C,
    0x70707070, 0x70707070, 0x70707070, 0x70707070, 0x74747474, 0x74747474, 0x74747474, 0x74747474, 0x78787878,
    0x78787878, 0x78787878, 0x78787878, 0x7C7C7C7C, 0x7C7C7C7C, 0x7C7C7C7C, 0x7C7C7C7C, 0x80808080, 0x80808080,
    0x80808080, 0x80808080, 0x84848484, 0x84848484, 0x84848484, 0x84848484, 0x88888888, 0x88888888, 0x88888888,
    0x88888888, 0x8C8C8C8C, 0x8C8C8C8C, 0x8C8C8C8C, 0x8C8C8C8C, 0x90909090, 0x90909090, 0x90909090, 0x90909090,
    0x94949494, 0x94949494, 0x94949494, 0x94949494, 0x98989898, 0x98989898, 0x98989898, 0x98989898, 0x9C9C9C9C,
    0x9C9C9C9C, 0x9C9C9C9C, 0x9C9C9C9C, 0xA0A0A0A0, 0xA0A0A0A0, 0xA0A0A0A0, 0xA0A0A0A0, 0xA4A4A4A4, 0xA4A4A4A4,
    0xA4A4A4A4, 0xA4A4A4A4, 0xA8A8A8A8, 0xA8A8A8A8, 0xA8A8A8A8, 0xA8A8A8A8, 0xACACACAC, 0xACACACAC, 0xACACACAC,
    0xACACACAC, 0xB0B0B0B0, 0xB0B0B0B0, 0xB0B0B0B0, 0xB0B0B0B0, 0xB4B4B4B4, 0xB4B4B4B4, 0xB4B4B4B4, 0xB4B4B4B4,
    0xB8B8B8B8, 0xB8B8B8B8, 0xB8B8B8B8, 0xB8B8B8B8, 0xBCBCBCBC, 0xBCBCBCBC, 0xBCBCBCBC, 0xBCBCBCBC, 0xC0C0C0C0,
    0xC0C0C0C0, 0xC0C0C0C0, 0xC0C0C0C0, 0xC4C4C4C4, 0xC4C4C4C4, 0xC4C4C4C4, 0xC4C4C4C4, 0xC8C8C8C8, 0xC8C8C8C8,
    0xC8C8C8C8, 0xC8C8C8C8, 0xCCCCCCCC, 0xCCCCCCCC, 0xCCCCCCCC, 0xCCCCCCCC, 0xD0D0D0D0, 0xD0D0D0D0, 0xD0D0D0D0,
    0xD0D0D0D0, 0xD4D4D4D4, 0xD4D4D4D4, 0xD4D4D4D4, 0xD4D4D4D4, 0xD8D8D8D8, 0xD8D8D8D8, 0xD8D8D8D8, 0xD8D8D8D8,
    0xDCDCDCDC, 0xDCDCDCDC, 0xDCDCDCDC, 0xDCDCDCDC, 0xE0E0E0E0, 0xE0E0E0E0, 0xE0E0E0E0, 0xE0E0E0E0, 0xE4E4E4E4,
    0xE4E4E4E4, 0xE4E4E4E4, 0xE4E4E4E4, 0xE8E8E8E8, 0xE8E8E8E8, 0xE8E8E8E8, 0xE8E8E8E8, 0xECECECEC, 0xECECECEC,
    0xECECECEC, 0xECECECEC, 0xF0F0F0F0, 0xF0F0F0F0, 0xF0F0F0F0, 0xF0F0F0F0, 0xF4F4F4F4, 0xF4F4F4F4, 0xF4F4F4F4,
    0xF4F4F4F4, 0xF8F8F8F8, 0xF8F8F8F8, 0xF8F8F8F8, 0xF8F8F8F8, 0xFCFCFCFC, 0xFCFCFCFC, 0xFCFCFCFC, 0xFCFCFCFC,
    0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF,
};

static Gfx sIntroVanishDList[] = {
    gsDPPipeSync(),
    gsSPMatrix(0x01000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPSetCombineLERP(0, 0, 0, 0, PRIMITIVE, 0, TEXEL0, 0, 0, 0, 0, PRIMITIVE, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(Z_CMP | Z_UPD | IM_RD | CVG_DST_FULL | ZMODE_XLU | FORCE_BL | G_RM_PASS,
                      Z_CMP | Z_UPD | IM_RD | CVG_DST_FULL | ZMODE_XLU | FORCE_BL |
                          GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetEnvColor(0x00, 0x00, 0x00, 0x00),
    gsDPLoadTextureBlock(sIntroVanishTex, G_IM_FMT_I, G_IM_SIZ_8b, 16, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(sIntroVanishVtx, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

static Vtx sShadowVtx[] = {
    VTX(-128, 0, 75, 0xFD81, 0xFF81, 160, 151, 205, 255),
    VTX(129, 0, 74, 0x066A, 0xFF5B, 160, 151, 205, 255),
    VTX(0, 0, -148, 0x0216, 0x0726, 160, 151, 205, 255),
};

static u32 sShadowTex[] = {
    0x00000000, 0x00000000, 0x01060907, 0x1215222F, 0x3129200D, 0x06030100, 0x00000000, 0x00000000, 0x00000000,
    0x00000101, 0x07203A46, 0x526B8591, 0x968E744C, 0x2C1B0F09, 0x00000000, 0x00000000, 0x00000000, 0x0003040F,
    0x235793B3, 0xC9D8E4E9, 0xE9E7D2B3, 0x8B704B29, 0x0F040000, 0x00000000, 0x00000000, 0x01061538, 0x6EA4DDF2,
    0xFAFDFFFD, 0xFDFAFAEF, 0xDECAAC7C, 0x43170301, 0x00000000, 0x00000000, 0x04184382, 0xC6E3F7FD, 0xFFFFFFFF,
    0xFFFFFBFB, 0xF8F2EECC, 0x8E4F1A04, 0x03000000, 0x00000001, 0x175190C4, 0xF1FBFDFF, 0xFFFFFFFF, 0xFFFDFFFD,
    0xFDFDF8EC, 0xCC8E4612, 0x03000000, 0x01010307, 0x4EA7CFE9, 0xF7FDFFFF, 0xFFFFFFFF, 0xFFFFFDFF, 0xFFFDFFF8,
    0xEEC98134, 0x07000000, 0x00010721, 0x9EE1E7F4, 0xFAFDFFFF, 0xFFFFFFFD, 0xFFFDFFFF, 0xFFFFFFFB, 0xF7E4AF5C,
    0x18010000, 0x0003134C, 0xD3ECEEF5, 0xFDFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFAF2CD85, 0x29060000,
    0x00093485, 0xE0EBF1FA, 0xFFFFFFFF, 0xFFFFFFFD, 0xFDFFFFFF, 0xFFFFFDFA, 0xFAFAE4AA, 0x490C0000, 0x031051AC,
    0xE7F4F8FA, 0xFFFFFFFF, 0xFFFFFFFD, 0xFDFFFFFF, 0xFFFFFBFA, 0xFAF7F1CD, 0x6D1A0300, 0x03156BC7, 0xEFF7FBFD,
    0xFDFFFFFF, 0xFFFFFFFD, 0xFFFFFFFF, 0xFFFDFBFB, 0xFAF7F2DE, 0x90290400, 0x032088E0, 0xFAFBFAFD, 0xFFFFFFFF,
    0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFDFA, 0xF7F1ECE3, 0xA8430C01, 0x06269EEE, 0xFBFBFFFF, 0xFDFFFFFF, 0xFFFFFFFF,
    0xFFFFFFFF, 0xFFFFFDFA, 0xEEE6E9E3, 0xB3511001, 0x041DA7F4, 0xFFFDFFFF, 0xFFFFFFFF, 0xFFFDFFFF, 0xFFFFFFFF,
    0xFFFDFFFB, 0xF5F1EBE3, 0xB85F1501, 0x0315A7F8, 0xFFFDFDFF, 0xFFFFFFFF, 0xFFFDFFFF, 0xFFFFFFFF, 0xFFFFFFFD,
    0xFAF4EFE7, 0xC06B1A09, 0x0315B8FD, 0xFFFDFDFF, 0xFDFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFAF4EEE9,
    0xCC7A1809, 0x0C18CDFF, 0xFAFBFDFD, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFDFFFF, 0xFBF4EEEB, 0xD27D1509,
    0x090FC9F5, 0xE9F7FBFD, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFDFFFF, 0xFFFFFFFB, 0xF7EFE9E7, 0xC6731707, 0x0406B9EC,
    0xD7F1FBFD, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFDFFFF, 0xFFFFFFFA, 0xF7F1E9E1, 0xB55D0F09, 0x00039EF1, 0xDAEEFAFD,
    0xFDFFFFFF, 0xFFFFFFFF, 0xFFFDFFFD, 0xFDFDFBFD, 0xF8F1ECD8, 0x9845090C, 0x00035DF2, 0xEEF5F7F7, 0xFAFDFFFF,
    0xFFFFFFFF, 0xFFFBFBFD, 0xFBFBFBFA, 0xF5F1EFD2, 0x872F040A, 0x000120C7, 0xEBF5F2EC, 0xF4FDFFFF, 0xFFFFFDFD,
    0xFFFFFDFB, 0xFAFAFAF4, 0xF2EFEEC7, 0x6D230407, 0x0000037D, 0xCDF2ECE6, 0xF1F8FBFF, 0xFFFFFFFF, 0xFDFDFBFB,
    0xF8F7F8F4, 0xECF2E6A8, 0x4B130A07, 0x0000013A, 0x9BEBEBDD, 0xE3F5FDFF, 0xFFFFFFFF, 0xFFFDFDFB, 0xF8F8F4EF,
    0xEBEBCD76, 0x2609090D, 0x00000017, 0x62D7E9DD, 0xDEF2FBFF, 0xFFFFFDFF, 0xFFFFFDFB, 0xF8F8F4F2, 0xEFE3A140,
    0x0D030309, 0x00000003, 0x2082E0E1, 0xE7F5FFFF, 0xFFFFFFFD, 0xFFFBFDFB, 0xFAF8F7F1, 0xE4BE661D, 0x03000101,
    0x00000000, 0x042B96CC, 0xD8EEFBFF, 0xFFFFFFFF, 0xFFFDFBFB, 0xFAFAF7E6, 0xC3772906, 0x00000000, 0x00000000,
    0x00032154, 0x79B0D8F1, 0xF8FFFFFF, 0xFDFAF7EF, 0xE6D3B685, 0x4B1A0400, 0x00000000, 0x00000000, 0x0000030A,
    0x183D73AA, 0xD5ECF4F7, 0xF2E1CAB3, 0x9E7D5129, 0x0C010000, 0x00000000, 0x00000000, 0x00000000, 0x0003040C,
    0x274E6B73, 0x62544C43, 0x3A271706, 0x01000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x060F1B15,
    0x100C120F, 0x0C090401, 0x00000000, 0x00000000,
};

static Gfx sShadowDList[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(sShadowTex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(NOISE, ENVIRONMENT, PRIMITIVE, ENVIRONMENT, TEXEL0, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED, 0, 0,
                       0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_DECAL2),
    gsSPClearGeometryMode(G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsSPVertex(sShadowVtx, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

static Vec3f sRoomCenter = { -50.0f, 0.0f, 0.0f };
static Vec3f sCameraAt = { 0.0f, 0.0f, 0.0f };
static Vec3f sCameraEye = { 100.0f, 100.0f, 0.0f };
static Vec3f sCameraAtVel = { 0.0f, 0.0f, 0.0f };
static Vec3f sCameraEyeVel = { 0.0f, 0.0f, 0.0f };

static Vec3f sCameraAtPoints[] = {
    { -100.0f, 300.0f, 0.0f }, { 100.0f, 300.0f, 100.0f }, { -50.0f, 600.0f, 100.0f }, { 0.0f, 400.0f, 200.0f },
    { 0.0f, 200.0f, 200.0f },  { -100.0f, 0.0f, 200.0f },  { -200.0f, 0.0f, 100.0f },  { -110.0f, 180.0f, 730.0f },
};

static Vec3f sCameraEyePoints[] = {
    { 200.0f, 800.0f, 800.0f }, { -200.0f, 700.0f, 1400.0f }, { 200.0f, 100.0f, 750.0f },  { 0.0f, 200.0f, 900.0f },
    { 0.0f, 200.0f, 900.0f },   { 300.0f, 400.0f, 1200.0f },  { -100.0f, 200.0f, 800.0f }, { -100.0f, 200.0f, 800.0f },
};

static Vec3f sZeroVec = { 0.0f, 0.0f, 0.0f };
static u32 sBodyStatic = false;

// Unreferenced
static u32 sUnkValues[] = { 0, 0, 0, 0, 0, 0 };

static Color_RGBA8 sBodyColor = { 255, 255, 255, 255 };
static Color_RGBA8 sStaticColor = { 0, 0, 0, 255 };
static s32 sHandState[] = { 0, 0 };

const ActorInit Boss_Sst_InitVars = {
    ACTOR_BOSS_SST,
    ACTORTYPE_BOSS,
    FLAGS,
    OBJECT_SST,
    sizeof(BossSst),
    (ActorFunc)BossSst_Init,
    (ActorFunc)BossSst_Destroy,
    (ActorFunc)BossSst_UpdateHand,
    (ActorFunc)BossSst_DrawHand,
};

static ColliderJntSphItemInit sJntSphItemsInitHand[11] = {
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

static ColliderJntSphInit sJntSphInitHand = {
    { COLTYPE_UNK0, 0x10, 0x09, 0x38, 0x10, COLSHAPE_JNTSPH },
    11,
    sJntSphItemsInitHand,
};

static ColliderJntSphItemInit sJntSphItemsInitHead[11] = {
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

static ColliderJntSphInit sJntSphInitHead = {
    { COLTYPE_UNK12, 0x10, 0x0D, 0x38, 0x10, COLSHAPE_JNTSPH },
    11,
    sJntSphItemsInitHead,
};

static ColliderCylinderInit sCylinderInitHead = {
    { COLTYPE_UNK0, 0x00, 0x08, 0x00, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
    { 85, 100, -50, { 0, 0, 0 } },
};

static ColliderCylinderInit sCylinderInitHand = {
    { COLTYPE_UNK10, 0x10, 0x00, 0x00, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x20000000, 0x04, 0x10 }, { 0x00000000, 0x00, 0x00 }, 0x19, 0x00, 0x00 },
    { 85, 1, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit sColChkInfoInit = { 36, 100, 100, 200 };

static DamageTable sDamageTable = {
    0x00, 0x02, 0x01, 0x02, 0x00, 0x02, 0x02, 0x02, 0x01, 0x02, 0x04, 0x02, 0x34, 0x02, 0x04, 0x02,
    0x02, 0x00, 0x34, 0x44, 0x00, 0x00, 0x01, 0x04, 0x02, 0x02, 0x08, 0x04, 0x00, 0x00, 0x04, 0x00,
};

// Hand animations
static AnimationHeader* D_8093784C[] = { 0x060002E8, 0x06005860 }; // Neutral, fingers curling
static AnimationHeader* D_80937854[] = { 0x06004EC4, 0x0600A434 }; // Open hand, not sure of difference
static AnimationHeader* D_8093785C[] = { 0x06004FB4, 0x0600A524 }; // Open hand, not sure of difference
static AnimationHeader* D_80937864[] = { 0x060050A8, 0x0600A618 }; // fist
static AnimationHeader* D_8093786C[] = { 0x0600529C, 0x0600A848 }; // clenching fist
static AnimationHeader* D_80937874[] = { 0x0600539C, 0x0600A948 }; // fingers arched
static AnimationHeader* D_8093787C[] = { 0x0600549C, 0x0600AA4C }; // slight finger curl
static AnimationHeader* D_80937884[] = { 0x06005588, 0x0600AB38 }; // fingers bent

static InitChainEntry sInitChain[] = {
    ICHAIN_S8(naviEnemyId, 41, ICHAIN_CONTINUE),
    ICHAIN_U8(unk_1F, 5, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 20, ICHAIN_STOP),
};

static BossSst* sHead;
static BossSst* sHand[2];
static BgSstFloor* sFloor;
static Vec3f sHandOffset[2];
static s16 sHandYawOffset[2];
static s16 sCutsceneCamera;

void BossSst_Init(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    BossSst* this = THIS;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    Collider_InitCylinder(globalCtx, &this->colliderCyl);
    Collider_InitJntSph(globalCtx, &this->colliderJntSph);
    func_80061ED4(&this->actor.colChkInfo, &sDamageTable, &sColChkInfoInit);
    Flags_SetSwitch(globalCtx, 0x14);
    if (this->actor.params == BONGO_HEAD) {
        sFloor = (BgSstFloor*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_BG_SST_FLOOR, sRoomCenter.x,
                                          sRoomCenter.y, sRoomCenter.z, 0, 0, 0, 0);
        SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06017C40, &D_0600E7B8, this->limbDrawTable,
                         this->transitionDrawTable, 45);
        ActorShape_Init(&this->actor.shape, 70000.0f, ActorShadow_DrawFunc_Circle, 95.0f);
        Collider_SetJntSph(globalCtx, &this->colliderJntSph, &this->actor, &sJntSphInitHead, this->colliderItems);
        Collider_SetCylinder(globalCtx, &this->colliderCyl, &this->actor, &sCylinderInitHead);
        sHead = this;
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
            sHand[LEFT] = (BossSst*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_BOSS_SST,
                                                this->actor.posRot.pos.x + 200.0f, this->actor.posRot.pos.y,
                                                this->actor.posRot.pos.z + 400.0f, 0, this->actor.shape.rot.y, 0,
                                                BONGO_LEFT_HAND);
            sHand[RIGHT] = (BossSst*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_BOSS_SST,
                                                 this->actor.posRot.pos.x + -200.0f, this->actor.posRot.pos.y,
                                                 this->actor.posRot.pos.z + 400.0f, 0, this->actor.shape.rot.y, 0,
                                                 BONGO_RIGHT_HAND);
            sHand[LEFT]->actor.child = &sHand[RIGHT]->actor;
            sHand[RIGHT]->actor.child = &sHand[LEFT]->actor;

            this->actor.flags &= ~1;
            this->actor.update = BossSst_UpdateHead;
            this->actor.draw = BossSst_DrawHead;
            this->radius = -650.0f;
            this->actor.unk_4C = 4000.0f;
            BossSst_HeadSetupLurk(this);
            Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORTYPE_BOSS);
        }
    } else {
        Collider_SetJntSph(globalCtx, &this->colliderJntSph, &this->actor, &sJntSphInitHand, this->colliderItems);
        Collider_SetCylinder(globalCtx, &this->colliderCyl, &this->actor, &sCylinderInitHand);
        if (this->actor.params == BONGO_LEFT_HAND) {
            SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06004DE0, &D_060002E8, this->limbDrawTable,
                             this->transitionDrawTable, 27);
            this->parity = -1;
            this->colliderJntSph.list[0].dim.modelSphere.center.z *= -1;
        } else {
            SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_0600A350, &D_06005860, this->limbDrawTable,
                             this->transitionDrawTable, 27);
            this->parity = 1;
        }

        ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 95.0f);
        this->handZPosMod = -3500;
        this->actor.unk_4C = 5000.0f;
        this->actor.flags &= ~1;
        BossSst_HandSetupWait(this);
    }
}

void BossSst_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BossSst* this = THIS;

    Collider_DestroyJntSph(globalCtx, &this->colliderJntSph);
    Collider_DestroyCylinder(globalCtx, &this->colliderCyl);
    func_800F89E8(&this->center);
}

void BossSst_HeadSetupLurk(BossSst* this) {
    this->actor.draw = NULL;
    sHand[LEFT]->actor.draw = NULL;
    sHand[RIGHT]->actor.draw = NULL;
    this->vanish = false;
    this->actionFunc = BossSst_HeadLurk;
}

void BossSst_HeadLurk(BossSst* this, GlobalContext* globalCtx) {
    if (this->actor.yDistFromLink < 1000.0f) {
        BossSst_HeadSetupIntro(this, globalCtx);
    }
}

void BossSst_HeadSetupIntro(BossSst* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    this->timer = 611;
    this->ready = false;
    player->actor.posRot.pos.x = sRoomCenter.x;
    player->actor.posRot.pos.y = 1000.0f;
    player->actor.posRot.pos.z = sRoomCenter.z;
    player->linearVelocity = player->actor.velocity.y = 0.0f;
    player->actor.shape.rot.y = -0x8000;
    player->targetYaw = -0x8000;
    player->currentYaw = -0x8000;
    player->fallStartHeight = 0;
    player->stateFlags1 |= 0x20;

    func_80064520(globalCtx, &globalCtx->csCtx);
    func_8002DF54(globalCtx, &this->actor, 8);
    sCutsceneCamera = Gameplay_CreateSubCamera(globalCtx);
    Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
    Gameplay_ChangeCameraStatus(globalCtx, sCutsceneCamera, 7);
    Math_Vec3f_Copy(&sCameraAt, &player->actor.posRot.pos);
    if (gSaveContext.eventChkInf[7] & 0x80) {
        sCameraEye.z = -100.0f;
    }

    func_800C04D8(globalCtx, sCutsceneCamera, &sCameraAt, &sCameraEye);
    Audio_SetBGM(0x100100FF);
    this->actionFunc = BossSst_HeadIntro;
}

void BossSst_HeadIntro(BossSst* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 tempo;
    s32 introStateTimer;
    s32 revealStateTimer;

    DECR(this->timer);

    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_0600DC2C, -3.0f);
    }

    if (this->timer == 0) {
        sHand[RIGHT]->actor.flags |= 1;
        sHand[LEFT]->actor.flags |= 1;
        player->stateFlags1 &= ~0x20;
        func_80064534(globalCtx, &globalCtx->csCtx);
        func_8002DF54(globalCtx, &this->actor, 7);
        sCameraAt.y += 30.0f;
        sCameraAt.z += 300.0f;
        func_800C04D8(globalCtx, sCutsceneCamera, &sCameraAt, &sCameraEye);
        func_800C078C(globalCtx, 0, sCutsceneCamera);
        Gameplay_ChangeCameraStatus(globalCtx, sCutsceneCamera, 1);
        Gameplay_ChangeCameraStatus(globalCtx, 0, 7);
        Gameplay_ClearCamera(globalCtx, sCutsceneCamera);
        gSaveContext.eventChkInf[7] |= 0x80;
        BossSst_HeadSetupNeutral(this);
        this->colliderJntSph.base.maskA |= 1;
        sHand[LEFT]->colliderJntSph.base.maskA |= 1;
        sHand[RIGHT]->colliderJntSph.base.maskA |= 1;
        this->timer = 112;
    } else if (this->timer >= 546) {
        if (player->actor.posRot.pos.y > 100.0f) {
            player->actor.posRot.pos.x = sRoomCenter.x;
            player->actor.posRot.pos.z = sRoomCenter.z;
            player->linearVelocity = 0.0f;
            player->actor.shape.rot.y = -0x8000;
            player->targetYaw = -0x8000;
            player->currentYaw = -0x8000;
        }

        Math_Vec3f_Copy(&sCameraAt, &player->actor.posRot.pos);
        if (player->actor.bgCheckFlags & 2) {
            if (!this->ready) {
                sFloor->dyna.actor.params = BONGOFLOOR_HIT;
                this->ready = true;
                func_800AA000(this->actor.xyzDistFromLinkSq, 0xFF, 0x14, 0x96);
                Audio_PlayActorSound2(&sFloor->dyna.actor, NA_SE_EN_SHADEST_TAIKO_HIGH);
            } else if (gSaveContext.eventChkInf[7] & 0x80) {
                sHand[RIGHT]->actor.draw = BossSst_DrawHand;
                sHand[LEFT]->actor.draw = BossSst_DrawHand;
                this->actor.draw = BossSst_DrawHead;
                this->timer = 178;
                sCameraAt.x = -73.0f;
                sCameraAt.y = 0.0f;
                sCameraAt.z = 0.0f;
            } else {
                this->timer = 546;
            }
        }
    } else if (this->timer >= 478) {
        sCameraEye.x += 10;
        sCameraEye.y += 10;
        sCameraEye.z -= 10;
    } else if (this->timer >= 448) {
        if (this->timer == 460) {
            sHand[RIGHT]->actor.draw = BossSst_DrawHand;
            sHand[LEFT]->actor.draw = BossSst_DrawHand;
            this->actor.draw = BossSst_DrawHead;
            player->actor.posRot.pos.x = sRoomCenter.x;
            player->actor.posRot.pos.z = sRoomCenter.z;
            BossSst_HandSetupDownbeat(sHand[RIGHT]);
        }
        if (this->timer > 460) {
            sCameraEye.x -= 40.0f;
            sCameraEye.y -= 40.0f;
            sCameraEye.z += 20.0f;
        } else if (this->timer == 460) {
            sCameraAt.x = sHand[RIGHT]->actor.initPosRot.pos.x;
            sCameraAt.y = sHand[RIGHT]->actor.initPosRot.pos.y - 20.0f;
            sCameraAt.z = sHand[RIGHT]->actor.initPosRot.pos.z + 10;
            sCameraEye.x = sHand[RIGHT]->actor.initPosRot.pos.x + 150.0f;
            sCameraEye.y = sHand[RIGHT]->actor.initPosRot.pos.y + 100.0f;
            sCameraEye.z = sHand[RIGHT]->actor.initPosRot.pos.z + 80.0f;
        }
    } else {
        if (this->timer >= 372) {
            introStateTimer = this->timer - 372;
            tempo = 6;
            if (this->timer == 447) {
                sCameraAt = player->actor.posRot.pos;
                sCameraEye.x = -250.0f;
                sCameraEye.y = 160.0f;
                sCameraEye.z = -190.0f;
            } else if (introStateTimer == 11) {
                sCameraAt.x = sHand[RIGHT]->actor.initPosRot.pos.x + 30.0f;
                sCameraAt.y = sHand[RIGHT]->actor.initPosRot.pos.y;
                sCameraAt.z = sHand[RIGHT]->actor.initPosRot.pos.z + 20.0f;
                sCameraEye.x = sHand[RIGHT]->actor.initPosRot.pos.x + 100.0f;
                sCameraEye.y = sHand[RIGHT]->actor.initPosRot.pos.y + 10;
                sCameraEye.z = sHand[RIGHT]->actor.initPosRot.pos.z - 210.0f;
            } else if (introStateTimer == 62) {
                sCameraAt.x = sHand[LEFT]->actor.initPosRot.pos.x;
                sCameraAt.y = sHand[LEFT]->actor.initPosRot.pos.y + 50.0f;
                sCameraAt.z = sHand[LEFT]->actor.initPosRot.pos.z + 100.0f;
                sCameraEye.x = sHand[LEFT]->actor.initPosRot.pos.x + 110.0f;
                sCameraEye.y = sHand[LEFT]->actor.initPosRot.pos.y + 180.0f;
                sCameraEye.z = sHand[LEFT]->actor.initPosRot.pos.z - 70.0f;
            }
        } else if (this->timer >= 304) {
            introStateTimer = this->timer - 304;
            tempo = 5;
            if (introStateTimer == 11) {
                sCameraAt.x = sHand[RIGHT]->actor.initPosRot.pos.x + 40.0f;
                sCameraAt.y = sHand[RIGHT]->actor.initPosRot.pos.y - 90.0f;
                sCameraAt.z = sHand[RIGHT]->actor.initPosRot.pos.z - 40.0f;
                sCameraEye.x = sHand[RIGHT]->actor.initPosRot.pos.x - 20.0f;
                sCameraEye.y = sHand[RIGHT]->actor.initPosRot.pos.y + 210.0f;
                sCameraEye.z = sHand[RIGHT]->actor.initPosRot.pos.z + 170.0f;
            } else if (this->timer == 368) {
                sCameraAt.x = sHand[LEFT]->actor.initPosRot.pos.x - 20.0f;
                sCameraAt.y = sHand[LEFT]->actor.initPosRot.pos.y;
                sCameraAt.z = sHand[LEFT]->actor.initPosRot.pos.z;
                sCameraEye.x = sHand[LEFT]->actor.initPosRot.pos.x - 70.0f;
                sCameraEye.y = sHand[LEFT]->actor.initPosRot.pos.y + 170.0f;
                sCameraEye.z = sHand[LEFT]->actor.initPosRot.pos.z + 150.0f;
            }
        } else if (this->timer >= 244) {
            introStateTimer = this->timer - 244;
            tempo = 4;
            if (introStateTimer == 11) {
                sCameraAt.x = sHand[RIGHT]->actor.initPosRot.pos.x + 30.0f;
                sCameraAt.y = sHand[RIGHT]->actor.initPosRot.pos.y + 70.0f;
                sCameraAt.z = sHand[RIGHT]->actor.initPosRot.pos.z + 40.0f;
                sCameraEye.x = sHand[RIGHT]->actor.initPosRot.pos.x + 110.0f;
                sCameraEye.y = sHand[RIGHT]->actor.initPosRot.pos.y - 140.0f;
                sCameraEye.z = sHand[RIGHT]->actor.initPosRot.pos.z - 10;
            } else if (this->timer == 300) {
                sCameraAt.x = sHand[LEFT]->actor.initPosRot.pos.x - 20.0f;
                sCameraAt.y = sHand[LEFT]->actor.initPosRot.pos.y - 80.0f;
                sCameraAt.z = sHand[LEFT]->actor.initPosRot.pos.z + 320.0f;
                sCameraEye.x = sHand[LEFT]->actor.initPosRot.pos.x - 130.0f;
                sCameraEye.y = sHand[LEFT]->actor.initPosRot.pos.y + 130.0f;
                sCameraEye.z = sHand[LEFT]->actor.initPosRot.pos.z - 150.0f;
            }
        } else if (this->timer >= 192) {
            introStateTimer = this->timer - 192;
            tempo = 3;
            if (this->timer == 240) {
                sCameraAt.x = sHand[LEFT]->actor.initPosRot.pos.x - 190.0f;
                sCameraAt.y = sHand[LEFT]->actor.initPosRot.pos.y - 110.0f;
                sCameraAt.z = sHand[LEFT]->actor.initPosRot.pos.z + 40.0f;
                sCameraEye.x = sHand[LEFT]->actor.initPosRot.pos.x + 120.0f;
                sCameraEye.y = sHand[LEFT]->actor.initPosRot.pos.y + 130.0f;
                sCameraEye.z = sHand[LEFT]->actor.initPosRot.pos.z + 50.0f;
            } else if (introStateTimer == 12) {
                sCameraAt.x = sRoomCenter.x + 50.0f;
                sCameraAt.y = sRoomCenter.y - 90.0f;
                sCameraAt.z = sRoomCenter.z - 200.0f;
                sCameraEye.x = sRoomCenter.x + 50.0f;
                sCameraEye.y = sRoomCenter.y + 350.0f;
                sCameraEye.z = sRoomCenter.z + 150.0f;
            }
        } else if (this->timer >= 148) {
            introStateTimer = this->timer - 148;
            tempo = 2;
        } else if (this->timer >= 112) {
            introStateTimer = this->timer - 112;
            tempo = 1;
        } else {
            introStateTimer = this->timer % 28;
            tempo = 0;
        }
        if (this->timer <= 198) {
            revealStateTimer = 198 - this->timer;
            if ((gSaveContext.eventChkInf[7] & 0x80) && (revealStateTimer <= 44)) {
                sCameraAt.x += 4.92f;
                sCameraAt.y += 2.0f;
                sCameraEye.x -= 0.79999995f;
                sCameraEye.y -= 3.6f;
                sCameraEye.z += 10.0f;
            } else if (this->timer <= 20) {
                sCameraAt.y -= 7.0f;
                sCameraAt.z += 9.0f;
                sCameraEye.x += 6.5f;
                sCameraEye.y += 4.0f;
                sCameraEye.z += 15.5f;
                this->vanish = true;
                this->actor.flags |= 0x80;
            } else if (revealStateTimer < 40) {
                sCameraAt.x += 1.25f;
                sCameraAt.y += 3.5f;
                sCameraAt.z += 5.0f;
                sCameraEye.x += 2.0f;
                sCameraEye.y -= 8.5f;
            } else if (revealStateTimer >= 45) {
                if (revealStateTimer < 85) {
                    sCameraAt.x -= 2.5f;
                    sCameraAt.y += 4.25f;
                    sCameraAt.z -= 12.0f;
                    sCameraEye.x -= 6.5f;
                    sCameraEye.y += 1.25f;
                    sCameraEye.z -= 3.5f;
                } else if (revealStateTimer == 85) {
                    if (!(gSaveContext.eventChkInf[7] & 0x80)) {
                        TitleCard_InitBossName(globalCtx, &globalCtx->actorCtx.titleCtx,
                                               SEGMENTED_TO_VIRTUAL(&D_06013D80), 0xA0, 0xB4, 0x80, 0x28);
                    }
                    Audio_SetBGM(0x1B);
                    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_0600C288, -5.0f);
                    BossSst_HeadSfx(this, NA_SE_EN_SHADEST_DISAPPEAR);
                }
            }
        }
        if (introStateTimer == 12) {
            BossSst_HandSetupDownbeat(sHand[RIGHT]);
        }
        if ((introStateTimer != 5) && ((introStateTimer % ((tempo * 2) + 7)) == 5)) {
            BossSst_HandSetupOffbeat(sHand[LEFT]);
        }
    }

    if (this->actionFunc != BossSst_HeadNeutral) {
        func_800C04D8(globalCtx, sCutsceneCamera, &sCameraAt, &sCameraEye);
    }
}

void BossSst_HeadSetupWait(BossSst* this) {
    if (this->skelAnime.animCurrentSeg != &D_0600DC2C) {
        SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_0600DC2C, -5.0f);
    }
    this->actionFunc = BossSst_HeadWait;
}

void BossSst_HeadWait(BossSst* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((HAND_STATE(sHand[LEFT]) == HAND_WAIT) && (HAND_STATE(sHand[RIGHT]) == HAND_WAIT)) {
        BossSst_HeadSetupNeutral(this);
    }
}

void BossSst_HeadSetupNeutral(BossSst* this) {
    this->timer = 127;
    this->ready = false;
    this->actionFunc = BossSst_HeadNeutral;
}

void BossSst_HeadNeutral(BossSst* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (!this->ready && ((HAND_STATE(sHand[LEFT]) == HAND_BEAT) || (HAND_STATE(sHand[LEFT]) == HAND_WAIT)) &&
        ((HAND_STATE(sHand[RIGHT]) == HAND_BEAT) || (HAND_STATE(sHand[RIGHT]) == HAND_WAIT))) {
        this->ready = true;
    }

    if (this->ready) {
        DECR(this->timer);
    }

    if (this->timer == 0) {
        if ((PLAYER->actor.posRot.pos.y > -50.0f) && !(PLAYER->stateFlags1 & 0x6080)) {
            sHand[Math_Rand_ZeroOne() <= 0.5f]->ready = true;
            BossSst_HeadSetupWait(this);
        } else {
            this->timer = 28;
        }
    } else {
        Math_SmoothScaleMaxS(&this->actor.shape.rot.y, func_8002DAC0(&PLAYER->actor, &sRoomCenter) + 0x8000, 4, 0x400);
        if ((this->timer == 28) || (this->timer == 84)) {
            BossSst_HeadSfx(this, NA_SE_EN_SHADEST_PRAY);
        }
    }
}

void BossSst_HeadSetupDamagedHand(BossSst* this, s32 bothHands) {
    if (bothHands) {
        SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_0600C9BC, -5.0f);
    } else {
        SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_0600C5B0, -5.0f);
    }
    this->actionFunc = BossSst_HeadDamagedHand;
}

void BossSst_HeadDamagedHand(BossSst* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        if ((HAND_STATE(sHand[LEFT]) == HAND_DAMAGED) && (HAND_STATE(sHand[RIGHT]) == HAND_DAMAGED)) {
            BossSst_HeadSetupReadyCharge(this);
        } else if ((HAND_STATE(sHand[LEFT]) == HAND_FROZEN) || (HAND_STATE(sHand[RIGHT]) == HAND_FROZEN)) {
            BossSst_HeadSetupFrozenHand(this);
        } else if (this->skelAnime.animCurrentSeg == &D_0600C9BC) {
            BossSst_HeadSetupUnfreezeHand(this);
        } else {
            BossSst_HeadSetupWait(this);
        }
    }
}

void BossSst_HeadSetupReadyCharge(BossSst* this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_0600E7B8, -5.0f);
    this->actor.speedXZ = 0.0f;
    this->colliderCyl.base.acFlags |= 1;
    this->actionFunc = BossSst_HeadReadyCharge;
}

void BossSst_HeadReadyCharge(BossSst* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (sHand[LEFT]->ready && (sHand[LEFT]->actionFunc == BossSst_HandReadyCharge) && sHand[RIGHT]->ready &&
        (sHand[RIGHT]->actionFunc == BossSst_HandReadyCharge)) {
        BossSst_HeadSetupCharge(this);
    } else {
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 4, 0x800, 0x400);
    }
}

void BossSst_HeadSetupCharge(BossSst* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_0600B0D8, 0.5f, 0.0f, SkelAnime_GetFrameCount(&D_0600B0D8.genericHeader),
                         3, -5.0f);
    BossSst_HandSetDamage(sHand[LEFT], 0x20);
    BossSst_HandSetDamage(sHand[RIGHT], 0x20);
    this->colliderJntSph.base.atFlags |= 1;
    this->actor.speedXZ = 3.0f;
    this->radius = -650.0f;
    this->ready = false;
    this->actionFunc = BossSst_HeadCharge;
}

void BossSst_HeadCharge(BossSst* this, GlobalContext* globalCtx) {
    f32 chargeDist;
    s32 animFinish = SkelAnime_FrameUpdateMatrix(&this->skelAnime);

    if (!this->ready && func_800A56C8(&this->skelAnime, 6.0f)) {
        this->ready = true;
        this->actor.speedXZ = 0.25f;
        this->skelAnime.animPlaybackSpeed = 0.2f;
    }

    this->actor.speedXZ *= 1.25f;
    this->actor.speedXZ = CLAMP_MAX(this->actor.speedXZ, 45.0f);

    if (this->ready) {
        if (Math_SmoothScaleMaxMinF(&this->radius, 650.0f, 0.4f, this->actor.speedXZ, 1.0f) < 10.0f) {
            this->radius = 650.0f;
            BossSst_HeadSetupEndCharge(this);
        } else {
            chargeDist = (650.0f - this->radius) * 3.0f;
            if (chargeDist > 180.0f) {
                chargeDist = 180.0f;
            }

            this->actor.posRot.pos.y = this->actor.initPosRot.pos.y - chargeDist;
        }

        if (!animFinish) {
            sHandOffset[LEFT].z += 5.0f;
            sHandOffset[RIGHT].z += 5.0f;
        }
    } else {
        Math_SmoothScaleMaxF(&this->radius, -700.0f, 0.4f, this->actor.speedXZ);
        Math_ApproxF(&this->actor.posRot.pos.y, this->actor.initPosRot.pos.y - 180.0f, 20.0f);
        sHandOffset[LEFT].y += 5.0f;
        sHandOffset[RIGHT].y += 5.0f;
    }

    if (this->colliderJntSph.base.atFlags & 2) {
        this->colliderJntSph.base.atFlags &= ~3;
        sHand[LEFT]->colliderJntSph.base.atFlags &= ~3;
        sHand[RIGHT]->colliderJntSph.base.atFlags &= ~3;
        func_8002F71C(globalCtx, &this->actor, 10.0f, this->actor.shape.rot.y, 5.0f);
        func_8002F7DC(&PLAYER->actor, NA_SE_PL_BODY_HIT);
    }
}

void BossSst_HeadSetupEndCharge(BossSst* this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_0600DC2C, -20.0f);
    this->targetYaw = func_8002DAC0(&this->actor, &sRoomCenter);
    this->colliderJntSph.base.atFlags &= ~3;
    this->colliderCyl.base.acFlags &= ~1;
    this->radius *= -1.0f;
    this->actionFunc = BossSst_HeadEndCharge;
}

void BossSst_HeadEndCharge(BossSst* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->targetYaw, 4, 0x800, 0x100) == 0) {
        BossSst_HandSetupRetreat(sHand[LEFT]);
        BossSst_HandSetupRetreat(sHand[RIGHT]);
        BossSst_HeadSetupNeutral(this);
    }
}

void BossSst_HeadSetupFrozenHand(BossSst* this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_0600E7B8, -5.0f);
    this->ready = false;
    this->colliderCyl.base.acFlags |= 1;
    this->actionFunc = BossSst_HeadFrozenHand;
}

void BossSst_HeadFrozenHand(BossSst* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->ready) {
        BossSst_HeadSetupUnfreezeHand(this);
    }
}

void BossSst_HeadSetupUnfreezeHand(BossSst* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_0600C288, -5.0f);
    this->colliderCyl.base.acFlags &= ~1;
    this->actionFunc = BossSst_HeadUnfreezeHand;
}

void BossSst_HeadUnfreezeHand(BossSst* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        BossSst_HeadSetupWait(this);
    }
}

void BossSst_HeadSetupStunned(BossSst* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_0600B6FC, -5.0f);
    func_8003426C(&this->actor, 0, 0xFF, 0, SkelAnime_GetFrameCount(&D_0600B6FC.genericHeader));
    this->colliderJntSph.base.atFlags &= ~3;
    this->colliderCyl.base.acFlags &= ~1;
    this->vanish = false;
    this->actor.flags &= ~0x80;
    BossSst_HeadSfx(this, NA_SE_EN_SHADEST_FREEZE);
    this->actionFunc = BossSst_HeadStunned;
}

void BossSst_HeadStunned(BossSst* this, GlobalContext* globalCtx) {
    f32 bounce;
    s32 animFinish;
    f32 currentFrame;

    Math_ApproxF(&sHandOffset[LEFT].z, 600.0f, 20.0f);
    Math_ApproxF(&sHandOffset[RIGHT].z, 600.0f, 20.0f);
    Math_ApproxF(&sHandOffset[LEFT].x, 200.0f, 20.0f);
    Math_ApproxF(&sHandOffset[RIGHT].x, -200.0f, 20.0f);
    this->actor.velocity.y += this->actor.gravity;
    animFinish = SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    currentFrame = this->skelAnime.animCurrentFrame;
    if (currentFrame <= 6.0f) {
        bounce = (sinf((M_PI / 11) * currentFrame) * 100.0f) + (this->actor.initPosRot.pos.y - 180.0f);
        if (this->actor.posRot.pos.y < bounce) {
            this->actor.posRot.pos.y = bounce;
        }
    } else if (currentFrame <= 11.0f) {
        this->actor.posRot.pos.y =
            (sinf((M_PI / 11) * currentFrame) * 170.0f) + (this->actor.initPosRot.pos.y - 250.0f);
    } else {
        this->actor.posRot.pos.y =
            (sinf((currentFrame - 11.0f) * (M_PI / 5)) * 50.0f) + (this->actor.initPosRot.pos.y - 250.0f);
    }

    if ((animFinish) || func_800A56C8(&this->skelAnime, 11.0f)) {
        BossSst_HeadSfx(this, NA_SE_EN_SHADEST_LAND);
    }

    if (this->radius < -500.0f) {
        Math_SmoothScaleMaxMinF(&this->radius, -500.0f, 1.0f, 50.0f, 5.0f);
    } else {
        Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 0.5f, 15.0f, 3.0f);
        this->radius += this->actor.speedXZ;
    }

    this->radius = CLAMP_MAX(this->radius, 400.0f);

    this->actor.posRot.pos.y += this->actor.velocity.y;
    if (animFinish) {
        BossSst_HeadSetupVulnerable(this);
    }
}

void BossSst_HeadSetupVulnerable(BossSst* this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_0600ACD4, -5.0f);
    this->colliderCyl.base.acFlags |= 1;
    this->colliderCyl.body.bumper.flags = 0x0FC00702; // Sword-type damage
    this->actor.speedXZ = 0.0f;
    this->colliderJntSph.list[10].body.bumperFlags |= 5;
    this->colliderJntSph.list[0].body.bumperFlags &= ~1;
    if (this->actionFunc != BossSst_HeadDamage) {
        this->timer = 50;
    }

    this->actionFunc = BossSst_HeadVulnerable;
}

void BossSst_HeadVulnerable(BossSst* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_ApproxF(&sHandOffset[LEFT].z, 600.0f, 20.0f);
    Math_ApproxF(&sHandOffset[RIGHT].z, 600.0f, 20.0f);
    Math_ApproxF(&sHandOffset[LEFT].x, 200.0f, 20.0f);
    Math_ApproxF(&sHandOffset[RIGHT].x, -200.0f, 20.0f);
    if ((this->actor.flags & 0x2000) == 0x2000) {
        this->timer += 2;
        this->timer = CLAMP_MAX(this->timer, 50);
    } else {
        DECR(this->timer);

        if (this->timer == 0) {
            BossSst_HandSetupRecover(sHand[LEFT]);
            BossSst_HandSetupRecover(sHand[RIGHT]);
            BossSst_HeadSetupRecover(this);
        }
    }
}

void BossSst_HeadSetupDamage(BossSst* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_0600CC6C, -3.0f);
    func_8003426C(&this->actor, 0x4000, 0xFF, 0, SkelAnime_GetFrameCount(&D_0600CC6C.genericHeader));
    func_8003426C(&sHand[LEFT]->actor, 0x4000, 0xFF, 0, SkelAnime_GetFrameCount(&D_0600CC6C.genericHeader));
    func_8003426C(&sHand[RIGHT]->actor, 0x4000, 0xFF, 0, SkelAnime_GetFrameCount(&D_0600CC6C.genericHeader));
    this->colliderCyl.base.acFlags &= ~1;
    BossSst_HeadSfx(this, NA_SE_EN_SHADEST_DAMAGE);
    this->actionFunc = BossSst_HeadDamage;
}

void BossSst_HeadDamage(BossSst* this, GlobalContext* globalCtx) {
    DECR(this->timer);

    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        BossSst_HeadSetupVulnerable(this);
    }
}

void BossSst_HeadSetupRecover(BossSst* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_0600D458, -5.0f);
    this->colliderCyl.base.acFlags &= ~1;
    this->colliderCyl.body.bumper.flags = 0xFFCFFFFF;
    this->colliderJntSph.list[10].body.bumperFlags &= ~5;
    this->colliderJntSph.list[0].body.bumperFlags |= 1;
    this->vanish = true;
    this->actor.speedXZ = 5.0f;
    this->actionFunc = BossSst_HeadRecover;
}

void BossSst_HeadRecover(BossSst* this, GlobalContext* globalCtx) {
    s32 animFinish;
    f32 currentFrame;
    f32 diff;

    animFinish = SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    currentFrame = this->skelAnime.animCurrentFrame;
    if (currentFrame < 10.0f) {
        this->actor.posRot.pos.y += 10.0f;
        sHandOffset[LEFT].y -= 10.0f;
        sHandOffset[RIGHT].y -= 10.0f;
        Math_SmoothScaleMaxMinF(&this->radius, -750.0f, 1.0f, this->actor.speedXZ, 2.0f);
    } else {
        this->actor.speedXZ *= 1.25f;
        this->actor.speedXZ = CLAMP_MAX(this->actor.speedXZ, 50.0f);
        diff = Math_SmoothScaleMaxMinF(&this->radius, -650.0f, 1.0f, this->actor.speedXZ, 2.0f);
        diff += Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y, this->actor.initPosRot.pos.y, 0.5f, 30.0f, 3.0f);
    }
    if (animFinish && (diff < 10.0f)) {
        this->actor.posRot.pos.y = this->actor.initPosRot.pos.y;
        this->radius = -650.0f;
        BossSst_HandSetupRetreat(sHand[LEFT]);
        BossSst_HandSetupRetreat(sHand[RIGHT]);
        BossSst_HeadSetupNeutral(this);
    }
}

void BossSst_SetCameraTargets(f32 cameraSpeedMod, s32 targetIndex) {
    Vec3f* nextAt = &sCameraAtPoints[targetIndex];
    Vec3f* nextEye = &sCameraEyePoints[targetIndex];

    if (targetIndex != 0) {
        Math_Vec3f_Copy(&sCameraAt, &sCameraAtPoints[targetIndex - 1]);
        Math_Vec3f_Copy(&sCameraEye, &sCameraEyePoints[targetIndex - 1]);
    }

    sCameraAtVel.x = (nextAt->x - sCameraAt.x) * cameraSpeedMod;
    sCameraAtVel.y = (nextAt->y - sCameraAt.y) * cameraSpeedMod;
    sCameraAtVel.z = (nextAt->z - sCameraAt.z) * cameraSpeedMod;

    sCameraEyeVel.x = (nextEye->x - sCameraEye.x) * cameraSpeedMod;
    sCameraEyeVel.y = (nextEye->y - sCameraEye.y) * cameraSpeedMod;
    sCameraEyeVel.z = (nextEye->z - sCameraEye.z) * cameraSpeedMod;
}

void BossSst_UpdateDeathCamera(BossSst* this, GlobalContext* globalCtx) {
    Vec3f cameraAt;
    Vec3f cameraEye;
    f32 sn;
    f32 cs;

    sCameraAt.x += sCameraAtVel.x;
    sCameraAt.y += sCameraAtVel.y;
    sCameraAt.z += sCameraAtVel.z;
    sCameraEye.x += sCameraEyeVel.x;
    sCameraEye.y += sCameraEyeVel.y;
    sCameraEye.z += sCameraEyeVel.z;

    sn = Math_Sins(this->actor.shape.rot.y);
    cs = Math_Coss(this->actor.shape.rot.y);
    cameraAt.x = this->actor.posRot.pos.x + (sCameraAt.z * sn) + (sCameraAt.x * cs);
    cameraAt.y = this->actor.initPosRot.pos.y - 140.0f + sCameraAt.y;
    cameraAt.z = this->actor.posRot.pos.z + (sCameraAt.z * cs) - (sCameraAt.x * sn);
    cameraEye.x = this->actor.posRot.pos.x + (sCameraEye.z * sn) + (sCameraEye.x * cs);
    cameraEye.y = this->actor.initPosRot.pos.y - 140.0f + sCameraEye.y;
    cameraEye.z = this->actor.posRot.pos.z + (sCameraEye.z * cs) - (sCameraEye.x * sn);
    func_800C04D8(globalCtx, sCutsceneCamera, &cameraAt, &cameraEye);
}

void BossSst_HeadSetupDeath(BossSst* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_0600E7B8, -5.0f);
    BossSst_HeadSfx(this, NA_SE_EN_SHADEST_DEAD);
    func_8003426C(&this->actor, 0x4000, 0xFF, 0, 60);
    func_8003426C(&sHand[LEFT]->actor, 0x4000, 0xFF, 0, 60);
    func_8003426C(&sHand[RIGHT]->actor, 0x4000, 0xFF, 0, 60);
    this->timer = 60;
    this->colliderCyl.base.acFlags &= ~1;
    this->colliderJntSph.base.maskA &= ~1;
    sHand[LEFT]->colliderJntSph.base.maskA &= ~1;
    sHand[RIGHT]->colliderJntSph.base.maskA &= ~1;
    Audio_SetBGM(0x100100FF);
    sCutsceneCamera = Gameplay_CreateSubCamera(globalCtx);
    Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
    Gameplay_ChangeCameraStatus(globalCtx, sCutsceneCamera, 7);
    func_800C078C(globalCtx, sCutsceneCamera, 0);
    func_8002DF54(globalCtx, &player->actor, 8);
    func_80064520(globalCtx, &globalCtx->csCtx);
    Math_Vec3f_Copy(&sCameraEye, &globalCtx->cameraPtrs[globalCtx->activeCamera]->eye);
    this->actionFunc = BossSst_HeadDeath;
}

void BossSst_HeadDeath(BossSst* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    DECR(this->timer);

    Math_ApproxF(&this->actor.posRot.pos.y, this->actor.initPosRot.pos.y - 140.0f, 20.0f);
    if (this->timer == 0) {
        BossSst_HandSetupThrash(sHand[LEFT]);
        BossSst_HandSetupThrash(sHand[RIGHT]);
        BossSst_HeadSetupThrash(this);
    } else if (this->timer > 48) {
        func_800C04D8(globalCtx, sCutsceneCamera, &this->actor.posRot2.pos, &sCameraEye);
        Math_ApproxF(&this->radius, -350.0f, 10.0f);
    } else if (this->timer == 48) {
        Player* player = PLAYER;

        player->actor.posRot.pos.x = sRoomCenter.x + (400.0f * Math_Sins(this->actor.shape.rot.y)) +
                                     (Math_Coss(this->actor.shape.rot.y) * -120.0f);
        player->actor.posRot.pos.z = sRoomCenter.z + (400.0f * Math_Coss(this->actor.shape.rot.y)) -
                                     (Math_Sins(this->actor.shape.rot.y) * -120.0f);
        player->actor.shape.rot.y = func_8002DAC0(&player->actor, &sRoomCenter);
        func_8002DBD0(&this->actor, &sCameraEye, &globalCtx->cameraPtrs[globalCtx->activeCamera]->eye);
        func_8002DBD0(&this->actor, &sCameraAt, &globalCtx->cameraPtrs[globalCtx->activeCamera]->at);
        this->radius = -350.0f;
        this->actor.posRot.pos.x = sRoomCenter.x - (Math_Sins(this->actor.shape.rot.y) * 350.0f);
        this->actor.posRot.pos.z = sRoomCenter.z - (Math_Coss(this->actor.shape.rot.y) * 350.0f);
        BossSst_SetCameraTargets(1.0 / 48, 0);
        BossSst_UpdateDeathCamera(this, globalCtx);
    } else {
        BossSst_UpdateDeathCamera(this, globalCtx);
    }
}

void BossSst_HeadSetupThrash(BossSst* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_0600E7B8, -5.0f);
    this->timer = 160;
    this->targetYaw = this->actor.shape.rot.y;
    BossSst_SetCameraTargets(1.0 / 80, 1);
    this->actionFunc = BossSst_HeadThrash;
}

void BossSst_HeadThrash(BossSst* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    DECR(this->timer);

    if ((this->timer == 0) && (this->actor.shape.rot.y == this->targetYaw)) {
        BossSst_HeadSetupDarken(this);
    } else if (this->timer >= 80) {
        BossSst_UpdateDeathCamera(this, globalCtx);
    }
}

void BossSst_HeadSetupDarken(BossSst* this) {
    this->timer = 160;
    BossSst_SetCameraTargets(1.0 / 80, 2);
    this->actionFunc = BossSst_HeadDarken;
}

void BossSst_HeadDarken(BossSst* this, GlobalContext* globalCtx) {
    DECR(this->timer);

    if (this->timer >= 80) {
        if (this->timer == 80) {
            sBodyStatic = true;
        }
        BossSst_UpdateDeathCamera(this, globalCtx);
        sBodyColor.r = sBodyColor.g = sBodyColor.b = (this->timer * 3) - 240;
        if (this->timer == 80) {
            BossSst_SetCameraTargets(1.0 / 80, 3);
        }
    } else {
        sBodyColor.b = (80 - this->timer) / 1.0f;
        sBodyColor.r = sBodyColor.g = sStaticColor.r = sStaticColor.g = sStaticColor.b = (80 - this->timer) / 8.0f;
        BossSst_UpdateDeathCamera(this, globalCtx);
        if (this->timer == 0) {
            BossSst_HeadSetupFall(this);
        }
    }
}

void BossSst_HeadSetupFall(BossSst* this) {
    this->actor.speedXZ = 1.0f;
    Math_Vec3f_Copy(&sCameraAt, &sCameraAtPoints[3]);
    Math_Vec3f_Copy(&sCameraEye, &sCameraEyePoints[3]);
    sCameraAtVel.x = 0.0f;
    sCameraAtVel.z = 0.0f;
    sCameraAtVel.y = -50.0f;
    Math_Vec3f_Copy(&sCameraEyeVel, &sZeroVec);
    this->actionFunc = BossSst_HeadFall;
}

void BossSst_HeadFall(BossSst* this, GlobalContext* globalCtx) {
    this->actor.speedXZ *= 1.5f;
    if (Math_ApproxF(&this->actor.posRot.pos.y, this->actor.initPosRot.pos.y - 230.0f, this->actor.speedXZ)) {
        BossSst_HeadSetupMelt(this);
    }

    if (sCameraAt.y > 200.0f) {
        BossSst_UpdateDeathCamera(this, globalCtx);
    }
}

void BossSst_HeadSetupMelt(BossSst* this) {
    BossSst_SpawnHeadShadow(this);
    this->timer = 80;
    BossSst_SetCameraTargets(1.0 / 60, 5);
    this->actionFunc = BossSst_HeadMelt;
}

void BossSst_HeadMelt(BossSst* this, GlobalContext* globalCtx) {
    DECR(this->timer);

    this->actor.scale.y -= 0.00025f;
    this->actor.scale.x += 0.000075f;
    this->actor.scale.z += 0.000075f;
    this->actor.posRot.pos.y = this->actor.initPosRot.pos.y - 11500.0f * this->actor.scale.y;
    if (this->timer == 0) {
        BossSst_HeadSetupFinish(this);
    } else if (this->timer >= 20.0f) {
        BossSst_UpdateDeathCamera(this, globalCtx);
    }
}

void BossSst_HeadSetupFinish(BossSst* this) {
    this->actor.draw = BossSst_DrawEffect;
    this->timer = 40;
    Audio_SetBGM(0x21);
    BossSst_SetCameraTargets(1.0 / 40, 6);
    this->actionFunc = BossSst_HeadFinish;
}

void BossSst_HeadFinish(BossSst* this, GlobalContext* globalCtx) {
    static Color_RGBA8 colorIndigo = { 80, 80, 150, 255 };
    static Color_RGBA8 colorDarkIndigo = { 40, 40, 80, 255 };
    // Unreferenced
    static Color_RGBA8 colorUnused[2] = {
        { 0, 0, 0, 255 },
        { 100, 100, 100, 0 },
    };

    Vec3f spawnPos;
    s32 i;

    this->timer--;
    if (this->effectMode == BONGO_NULL) {
        if (this->timer < -170) {
            BossSst_UpdateDeathCamera(this, globalCtx);
            func_800C078C(globalCtx, 0, sCutsceneCamera);
            Gameplay_ChangeCameraStatus(globalCtx, sCutsceneCamera, 1);
            Gameplay_ChangeCameraStatus(globalCtx, 0, 7);
            Gameplay_ClearCamera(globalCtx, sCutsceneCamera);
            func_8002DF54(globalCtx, &PLAYER->actor, 7);
            func_80064534(globalCtx, &globalCtx->csCtx);
            Actor_Kill(&this->actor);
            Actor_Kill(&sHand[LEFT]->actor);
            Actor_Kill(&sHand[RIGHT]->actor);
            Flags_SetClear(globalCtx, globalCtx->roomCtx.curRoom.num);
        }
    } else if (this->effects[0].alpha == 0) {
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_DOOR_WARP1, -50.0f, 0.0f, 0.0f, 0, 0, 0, -1);
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_B_HEART,
                    (Math_Sins(this->actor.shape.rot.y) * 200.0f) + -50.0f, 0.0f,
                    Math_Coss(this->actor.shape.rot.y) * 200.0f, 0, 0, 0, 0);
        BossSst_SetCameraTargets(1.0f, 7);
        this->effectMode = BONGO_NULL;
    } else if (this->timer == 0) {
        this->effects[0].status = 0;
        this->effects[1].status = -1;
        this->effects[2].status = -1;
    } else if (this->timer > 0) {
        this->effects[0].status += 5;
        BossSst_UpdateDeathCamera(this, globalCtx);
    }

    colorIndigo.a = this->effects[0].alpha;
    colorDarkIndigo.a = this->effects[0].alpha;

    for (i = 0; i < 5; i++) {
        spawnPos.x = Math_Rand_CenteredFloat(800.0f) + sRoomCenter.x;
        spawnPos.y = (Math_Rand_ZeroOne() * 5.0f) + (sRoomCenter.y + -28.0f);
        spawnPos.z = Math_Rand_CenteredFloat(800.0f) + sRoomCenter.z;
        EffectSsGSplash_Spawn(globalCtx, &spawnPos, &colorIndigo, &colorDarkIndigo, 0, 0x3E8);
    }
}

void BossSst_HandSetupWait(BossSst* this) {
    HAND_STATE(this) = HAND_WAIT;
    this->colliderJntSph.base.atFlags &= ~3;
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, D_8093784C[this->actor.params], 5.0f);
    this->ready = false;
    this->timer = 20;
    this->actionFunc = BossSst_HandWait;
}

void BossSst_HandWait(BossSst* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_ApproxF(&this->actor.posRot.pos.y, this->actor.groundY, 20.0f);
    Math_ApproxF(&this->actor.posRot.pos.x, this->actor.initPosRot.pos.x, 1.0f);
    Math_ApproxF(&this->actor.posRot.pos.z, this->actor.initPosRot.pos.z, 1.0f);
    if (HAND_STATE(OTHER_HAND) == HAND_DAMAGED) {
        Player* player = PLAYER;

        DECR(this->timer);

        if ((this->timer == 0) && (player->actor.posRot.pos.y > -50.0f) && !(player->stateFlags1 & 0x6080)) {
            BossSst_HandSelectAttack(this);
        }
    } else if (sHead->actionFunc == BossSst_HeadNeutral) {
        if ((this->actor.params == BONGO_RIGHT_HAND) && ((sHead->timer % 28) == 12)) {
            BossSst_HandSetupDownbeat(this);
        } else if ((this->actor.params == BONGO_LEFT_HAND) && ((sHead->timer % 7) == 5) && (sHead->timer < 112)) {
            BossSst_HandSetupOffbeat(this);
        }
    }
}

void BossSst_HandSetupDownbeat(BossSst* this) {
    HAND_STATE(this) = HAND_BEAT;
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_8093785C[this->actor.params], 5.0f);
    this->actor.shape.rot.x = 0;
    this->timer = 12;
    this->actionFunc = BossSst_HandDownbeat;
}

void BossSst_HandDownbeat(BossSst* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (HAND_STATE(OTHER_HAND) == HAND_DAMAGED) {
        BossSst_HandSetupWait(this);
    } else {
        DECR(this->timer);

        if (this->timer >= 3) {
            this->actor.shape.rot.x -= 0x100;
            Math_ApproxF(&this->actor.posRot.pos.y, 180.0f, 20.0f);
        } else {
            this->actor.shape.rot.x += 0x300;
            Math_ApproxF(&this->actor.posRot.pos.y, 0.0f, 60.0f);
        }

        if (this->timer == 0) {
            sFloor->dyna.actor.params = BONGOFLOOR_HIT;
            if (sHead->actionFunc == BossSst_HeadWait) {
                if (this->ready) {
                    BossSst_HandSelectAttack(this);
                } else {
                    BossSst_HandSetupWait(this);
                }
            } else {
                BossSst_HandSetupDownbeatEnd(this);
            }
            func_800AA000(this->actor.xyzDistFromLinkSq, 0xFF, 0x14, 0x96);
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_SHADEST_TAIKO_HIGH);
        }
    }
}

void BossSst_HandSetupDownbeatEnd(BossSst* this) {
    sFloor->dyna.actor.params = BONGOFLOOR_HIT;
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, D_80937854[this->actor.params]);
    this->actionFunc = BossSst_HandDownbeatEnd;
}

void BossSst_HandDownbeatEnd(BossSst* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (HAND_STATE(OTHER_HAND) == HAND_DAMAGED) {
        BossSst_HandSetupWait(this);
    } else {
        Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y, 40.0f, 0.5f, 20.0f, 3.0f);
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, -0x800, 0x100);
        Math_ApproxF(&this->actor.posRot.pos.x, this->actor.initPosRot.pos.x, 1.0f);
        Math_ApproxF(&this->actor.posRot.pos.z, this->actor.initPosRot.pos.z, 1.0f);
        if ((sHead->actionFunc != BossSst_HeadIntro) && ((sHead->timer % 28) == 12)) {
            BossSst_HandSetupDownbeat(this);
        }
    }
}

void BossSst_HandSetupOffbeat(BossSst* this) {
    HAND_STATE(this) = HAND_BEAT;
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_8093785C[this->actor.params], 5.0f);
    this->actor.shape.rot.x = 0;
    this->timer = 5;
    this->actionFunc = BossSst_HandOffbeat;
}

void BossSst_HandOffbeat(BossSst* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (HAND_STATE(OTHER_HAND) == HAND_DAMAGED) {
        BossSst_HandSetupWait(this);
    } else {
        DECR(this->timer);

        if (this->timer != 0) {
            this->actor.shape.rot.x -= 0x140;
            Math_ApproxF(&this->actor.posRot.pos.y, 60.0f, 15.0f);
        } else {
            this->actor.shape.rot.x += 0x500;
            Math_ApproxF(&this->actor.posRot.pos.y, 0.0f, 60.0f);
        }

        if (this->timer == 0) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_SHADEST_TAIKO_LOW);
            BossSst_HandSetupOffbeatEnd(this);
        }
    }
}

void BossSst_HandSetupOffbeatEnd(BossSst* this) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, D_80937854[this->actor.params]);
    this->actionFunc = BossSst_HandOffbeatEnd;
}

void BossSst_HandOffbeatEnd(BossSst* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (HAND_STATE(OTHER_HAND) == HAND_DAMAGED) {
        BossSst_HandSetupWait(this);
    } else {
        Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y, 40.0f, 0.5f, 20.0f, 3.0f);
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, -0x400, 0xA0);
        Math_ApproxF(&this->actor.posRot.pos.x, this->actor.initPosRot.pos.x, 1.0f);
        Math_ApproxF(&this->actor.posRot.pos.z, this->actor.initPosRot.pos.z, 1.0f);
        if (sHead->actionFunc == BossSst_HeadWait) {
            if (this->ready) {
                BossSst_HandSelectAttack(this);
            } else {
                BossSst_HandSetupWait(this);
            }
        } else if ((sHead->actionFunc != BossSst_HeadIntro) && ((sHead->timer % 7) == 5) &&
                   ((sHead->timer % 28) != 5)) {
            BossSst_HandSetupOffbeat(this);
        }
    }
}

void BossSst_HandSetupEndSlam(BossSst* this) {
    HAND_STATE(this) = HAND_RETREAT;
    this->colliderJntSph.base.atFlags &= ~3;
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_8093787C[this->actor.params], 6.0f);
    this->actionFunc = BossSst_HandEndSlam;
}

void BossSst_HandEndSlam(BossSst* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        BossSst_HandSetupRetreat(this);
    }
}

void BossSst_HandSetupRetreat(BossSst* this) {
    HAND_STATE(this) = HAND_RETREAT;
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_80937884[this->actor.params], 10.0f);
    this->colliderJntSph.base.atFlags &= ~3;
    this->colliderJntSph.base.acFlags |= 1;
    this->actor.flags |= 1;
    BossSst_HandSetInvulnerable(this, false);
    this->timer = 0;
    this->actionFunc = BossSst_HandRetreat;
    this->actor.speedXZ = 3.0f;
}

void BossSst_HandRetreat(BossSst* this, GlobalContext* globalCtx) {
    f32 diff;
    s32 inPosition;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    this->actor.speedXZ = this->actor.speedXZ * 1.2f;
    this->actor.speedXZ = CLAMP_MAX(this->actor.speedXZ, 50.0f);

    diff = Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.x, this->actor.initPosRot.pos.x, 0.3f, this->actor.speedXZ,
                                   1.0f);
    diff += Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.z, this->actor.initPosRot.pos.z, 0.3f, this->actor.speedXZ,
                                    1.0f);
    if (this->timer != 0) {
        DECR(this->timer);

        this->actor.posRot.pos.y = (sinf((this->timer * M_PI) / 16.0f) * 250.0f) + this->actor.initPosRot.pos.y;
        if (this->timer == 0) {
            BossSst_HandSetupWait(this);
        } else if (this->timer == 4) {
            SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, D_8093784C[this->actor.params], 4.0f);
        }
    } else {
        inPosition = Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, this->actor.initPosRot.rot.y, 0x200);
        inPosition &= Math_ApproxUpdateScaledS(&this->actor.shape.rot.z, this->actor.initPosRot.rot.z, 0x200);
        inPosition &= Math_ApproxUpdateScaledS(&this->handYRotMod, 0, 0x800);
        func_8002F974(&this->actor, NA_SE_EN_SHADEST_HAND_FLY - SFX_FLAG);
        if ((Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y, 250.0f, 0.5f, 70.0f, 5.0f) < 1.0f) && inPosition &&
            (diff < 10.0f)) {
            this->timer = 8;
        }
    }
}

void BossSst_HandSetupReadySlam(BossSst* this) {
    HAND_STATE(this) = HAND_SLAM;
    this->timer = 0;
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_8093785C[this->actor.params], 10.0f);
    this->actionFunc = BossSst_HandReadySlam;
}

void BossSst_HandReadySlam(BossSst* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->timer != 0) {
        DECR(this->timer);

        if (this->timer == 0) {
            BossSst_HandSetupSlam(this);
        }
    } else {
        Player* player = PLAYER;
        if (Math_ApproxF(&this->actor.posRot.pos.y, 300.0f, 30.0f) && (this->actor.xzDistFromLink < 140.0f)) {
            this->timer = 20;
        }

        Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, -0x1000, 0x100);
        Math_SmoothScaleMaxF(&this->actor.posRot.pos.x, player->actor.posRot.pos.x, 0.5f, 40.0f);
        Math_SmoothScaleMaxF(&this->actor.posRot.pos.z, player->actor.posRot.pos.z, 0.5f, 40.0f);
        func_8002F974(&this->actor, NA_SE_EN_SHADEST_HAND_FLY - SFX_FLAG);
    }
}

void BossSst_HandSetupSlam(BossSst* this) {
    HAND_STATE(this) = HAND_SLAM;
    this->actor.velocity.y = 1.0f;
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_80937854[this->actor.params], 10.0f);
    BossSst_HandSetDamage(this, 0x20);
    this->ready = false;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_SHADEST_FLY_ATTACK);
    this->actionFunc = BossSst_HandSlam;
}

void BossSst_HandSlam(BossSst* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_ApproxS(&this->handZPosMod, -0xDAC, 0x1F4);
    Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, 0, 0x1000);
    Math_ApproxUpdateScaledS(&this->handYRotMod, 0, 0x1000);
    if (this->timer != 0) {
        DECR(this->timer);

        if (this->timer == 0) {
            if (this->colliderJntSph.base.acFlags & 1) {
                BossSst_HandSetupEndSlam(this);
            } else {
                this->colliderJntSph.base.acFlags |= 1;
                BossSst_HandSetupWait(this);
            }
        }
    } else {
        if (this->ready) {
            this->timer = 30;
            this->colliderJntSph.base.atFlags &= ~3;
        } else {
            this->actor.velocity.y *= 1.5f;
            if (Math_ApproxF(&this->actor.posRot.pos.y, this->actor.groundY, this->actor.velocity.y)) {
                this->ready = true;
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_SHADEST_TAIKO_LOW);
                BossSst_SpawnShockwave(this);
                this->colliderCyl.base.atFlags |= 1;
                Collider_CylinderUpdate(&this->actor, &this->colliderCyl);
                this->colliderCyl.dim.radius = sCylinderInitHand.dim.radius;
            }
        }

        if (this->colliderJntSph.base.atFlags & 2) {
            Player* player = PLAYER;

            player->actor.posRot.pos.x = (Math_Sins(this->actor.yawTowardsLink) * 100.0f) + this->actor.posRot.pos.x;
            player->actor.posRot.pos.z = (Math_Coss(this->actor.yawTowardsLink) * 100.0f) + this->actor.posRot.pos.z;

            this->colliderJntSph.base.atFlags &= ~3;
            func_8002F71C(globalCtx, &this->actor, 5.0f, this->actor.yawTowardsLink, 0.0f);
        }

        Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, 0, 0x200);
    }
}

void BossSst_HandSetupReadySweep(BossSst* this) {
    HAND_STATE(this) = HAND_SWEEP;
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_8093785C[this->actor.params], 10.0f);
    this->radius = func_8002DBB0(&this->actor, &sHead->actor.posRot.pos);
    this->actor.posRot.rot.y = func_8002DAC0(&sHead->actor, &this->actor.posRot.pos);
    this->targetYaw = this->actor.initPosRot.rot.y + (this->parity * 0x2000);
    this->actionFunc = BossSst_HandReadySweep;
}

void BossSst_HandReadySweep(BossSst* this, GlobalContext* globalCtx) {
    s32 inPosition;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    inPosition = Math_ApproxF(&this->actor.posRot.pos.y, 50.0f, 4.0f);
    inPosition &= Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, this->targetYaw, 0x200);
    inPosition &= Math_ApproxUpdateScaledS(&this->actor.posRot.rot.y, this->targetYaw, 0x400);
    inPosition &= (Math_SmoothScaleMaxMinF(&this->radius, sHead->actor.xzDistFromLink, 0.5f, 60.0f, 1.0f) < 10.0f);

    this->actor.posRot.pos.x = (Math_Sins(this->actor.posRot.rot.y) * this->radius) + sHead->actor.posRot.pos.x;
    this->actor.posRot.pos.z = (Math_Coss(this->actor.posRot.rot.y) * this->radius) + sHead->actor.posRot.pos.z;
    if (inPosition) {
        BossSst_HandSetupSweep(this);
    } else {
        func_8002F974(&this->actor, NA_SE_EN_SHADEST_HAND_FLY - SFX_FLAG);
    }
}

void BossSst_HandSetupSweep(BossSst* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_80937854[this->actor.params], 5.0f);
    BossSst_HandSetDamage(this, 0x10);
    this->targetYaw = this->actor.initPosRot.rot.y - (this->parity * 0x2000);
    this->handMaxSpeed = 0x300;
    this->handAngSpeed = 0;
    this->ready = false;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_SHADEST_FLY_ATTACK);
    this->actionFunc = BossSst_HandSweep;
}

void BossSst_HandSweep(BossSst* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s16 newTargetYaw;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    this->handAngSpeed += 0x60;
    this->handAngSpeed = CLAMP_MAX(this->handAngSpeed, this->handMaxSpeed);

    if (Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->targetYaw, 4, this->handAngSpeed, 0x10) == 0) {
        this->colliderJntSph.base.maskA &= ~4;
        BossSst_HandSetupRetreat(this);
    } else if (this->colliderJntSph.base.atFlags & 2) {
        this->colliderJntSph.base.atFlags &= ~3;
        this->ready = true;
        func_8002F71C(globalCtx, &this->actor, 5.0f, this->actor.shape.rot.y - (this->parity * 0x3800), 0.0f);
        func_8002F7DC(&player->actor, NA_SE_PL_BODY_HIT);
        newTargetYaw = this->actor.shape.rot.y - (this->parity * 0x1400);
        if (((s16)(newTargetYaw - this->targetYaw) * this->parity) > 0) {
            this->targetYaw = newTargetYaw;
        }
    }

    if (!this->ready && ((player->cylinder.dim.height > 40.0f) || (player->actor.posRot.pos.y > 1.0f))) {
        this->colliderJntSph.base.atFlags |= 1;
        this->colliderJntSph.base.maskA &= ~4;
    } else {
        this->colliderJntSph.base.atFlags &= ~1;
        this->colliderJntSph.base.maskA |= 4;
    }

    this->actor.posRot.pos.x = (Math_Sins(this->actor.shape.rot.y) * this->radius) + sHead->actor.posRot.pos.x;
    this->actor.posRot.pos.z = (Math_Coss(this->actor.shape.rot.y) * this->radius) + sHead->actor.posRot.pos.z;
}

void BossSst_HandSetupReadyPunch(BossSst* this) {
    HAND_STATE(this) = HAND_PUNCH;
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_8093787C[this->actor.params], 10.0f);
    this->actionFunc = BossSst_HandReadyPunch;
}

void BossSst_HandReadyPunch(BossSst* this, GlobalContext* globalCtx) {
    s32 inPosition = Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 0x400);

    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) && inPosition) {
        BossSst_HandSetupPunch(this);
    }
}

void BossSst_HandSetupPunch(BossSst* this) {
    this->actor.speedXZ = 0.5f;
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_80937864[this->actor.params], 5.0f);
    BossSst_HandSetInvulnerable(this, true);
    this->targetRoll = this->parity * 0x3F00;
    BossSst_HandSetDamage(this, 0x10);
    this->actionFunc = BossSst_HandPunch;
}

void BossSst_HandPunch(BossSst* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_ApproxF(&this->actor.posRot.pos.y, 80.0f, 20.0f);
    if (Math_ApproxUpdateScaledS(&this->actor.shape.rot.z, this->targetRoll, 0x400)) {
        this->targetRoll *= -1;
    }

    this->actor.speedXZ *= 1.25f;
    this->actor.speedXZ = CLAMP_MAX(this->actor.speedXZ, 50.0f);

    this->actor.posRot.pos.x += this->actor.speedXZ * Math_Sins(this->actor.shape.rot.y);
    this->actor.posRot.pos.z += this->actor.speedXZ * Math_Coss(this->actor.shape.rot.y);
    if (this->actor.bgCheckFlags & 8) {
        BossSst_HandSetupRetreat(this);
    } else if (this->colliderJntSph.base.atFlags & 2) {
        func_8002F7DC(&PLAYER->actor, NA_SE_PL_BODY_HIT);
        func_8002F71C(globalCtx, &this->actor, 10.0f, this->actor.shape.rot.y, 5.0f);
        BossSst_HandSetupRetreat(this);
    }

    func_8002F974(&this->actor, NA_SE_EN_SHADEST_HAND_FLY - SFX_FLAG);
}

void BossSst_HandSetupReadyClap(BossSst* this) {
    HAND_STATE(this) = HAND_CLAP;
    if (HAND_STATE(OTHER_HAND) != HAND_CLAP) {
        BossSst_HandSetupReadyClap(OTHER_HAND);
    }

    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_8093785C[this->actor.params], 10.0f);
    this->radius = func_8002DBB0(&this->actor, &sHead->actor.posRot.pos);
    this->actor.posRot.rot.y = func_8002DAC0(&sHead->actor, &this->actor.posRot.pos);
    this->targetYaw = this->actor.initPosRot.rot.y - (this->parity * 0x1800);
    this->targetRoll = this->parity * 0x4000;
    this->timer = 0;
    this->ready = false;
    OTHER_HAND->ready = false;
    this->actionFunc = BossSst_HandReadyClap;
}

void BossSst_HandReadyClap(BossSst* this, GlobalContext* globalCtx) {
    if (this->timer != 0) {
        DECR(this->timer);

        if (this->timer == 0) {
            BossSst_HandSetupClap(this);
            BossSst_HandSetupClap(OTHER_HAND);
            OTHER_HAND->radius = this->radius;
        }
    } else if (!this->ready) {
        this->ready = SkelAnime_FrameUpdateMatrix(&this->skelAnime);
        this->ready &= Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, 0, 0x600);
        this->ready &= Math_ApproxUpdateScaledS(&this->actor.shape.rot.z, this->targetRoll, 0x600);
        this->ready &= Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, this->targetYaw, 0x200);
        this->ready &= Math_ApproxUpdateScaledS(&this->actor.posRot.rot.y, this->targetYaw, 0x400);
        this->ready &= Math_SmoothScaleMaxMinF(&this->radius, sHead->actor.xzDistFromLink, 0.5f, 50.0f, 1.0f) < 10.0f;
        this->ready &= Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y, 95.0f, 0.5f, 30.0f, 1.0f) < 1.0f;

        this->actor.posRot.pos.x = Math_Sins(this->actor.posRot.rot.y) * this->radius + sHead->actor.posRot.pos.x;
        this->actor.posRot.pos.z = Math_Coss(this->actor.posRot.rot.y) * this->radius + sHead->actor.posRot.pos.z;
    } else if (OTHER_HAND->ready) {
        this->timer = 20;
    }
}

void BossSst_HandSetupClap(BossSst* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_80937854[this->actor.params], 3.0f);
    this->timer = 0;
    this->handMaxSpeed = 0x240;
    this->handAngSpeed = 0;
    this->ready = false;
    BossSst_HandSetDamage(this, 0x20);
    this->actionFunc = BossSst_HandClap;
}

void BossSst_HandClap(BossSst* this, GlobalContext* globalCtx) {
    static s32 dropFlag = false;
    Player* player = PLAYER;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->timer != 0) {
        DECR(this->timer);

        if (this->timer == 0) {
            if (dropFlag) {
                Item_DropCollectible(globalCtx, &this->actor.posRot.pos, (Math_Rand_ZeroOne() < 0.5f) ? 8 : 15);
                dropFlag = false;
            }

            BossSst_HandReleasePlayer(this, globalCtx, 1);
            BossSst_HandSetupEndClap(this);
        }
    } else {
        if (this->colliderJntSph.base.atFlags & 2) {
            this->colliderJntSph.base.atFlags &= ~3;
            OTHER_HAND->colliderJntSph.base.atFlags &= ~3;
            BossSst_HandGrabPlayer(this, globalCtx);
        }

        if (this->ready) {
            this->timer = 30;
            this->colliderJntSph.base.atFlags &= ~3;
            if (!(player->stateFlags2 & 0x80)) {
                dropFlag = true;
            }
        } else {
            this->handAngSpeed += 0x40;
            this->handAngSpeed = CLAMP_MAX(this->handAngSpeed, this->handMaxSpeed);

            if (Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, this->actor.initPosRot.rot.y, this->handAngSpeed)) {
                if (this->actor.params == BONGO_LEFT_HAND) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_SHADEST_CLAP);
                }
                this->ready = true;
            } else {
                func_8002F974(&this->actor, NA_SE_EN_SHADEST_HAND_FLY - SFX_FLAG);
            }

            this->actor.posRot.pos.x = (Math_Sins(this->actor.shape.rot.y) * this->radius) + sHead->actor.posRot.pos.x;
            this->actor.posRot.pos.z = (Math_Coss(this->actor.shape.rot.y) * this->radius) + sHead->actor.posRot.pos.z;
        }
    }

    if (player->actor.parent == &this->actor) {
        player->unk_850 = 0;
        player->actor.posRot.pos = this->actor.posRot.pos;
    }
}

void BossSst_HandSetupEndClap(BossSst* this) {
    this->targetYaw = this->actor.initPosRot.rot.y - (this->parity * 0x1000);
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_8093785C[this->actor.params], 10.0f);
    this->colliderJntSph.base.atFlags &= ~3;
    this->actionFunc = BossSst_HandEndClap;
}

void BossSst_HandEndClap(BossSst* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_ApproxUpdateScaledS(&this->actor.shape.rot.z, 0, 0x200);
    if (Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, this->targetYaw, 0x100)) {
        BossSst_HandSetupRetreat(this);
    }
    this->actor.posRot.pos.x = (Math_Sins(this->actor.shape.rot.y) * this->radius) + sHead->actor.posRot.pos.x;
    this->actor.posRot.pos.z = (Math_Coss(this->actor.shape.rot.y) * this->radius) + sHead->actor.posRot.pos.z;
}

void BossSst_HandSetupReadyGrab(BossSst* this) {
    HAND_STATE(this) = HAND_GRAB;
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_8093785C[this->actor.params], 10.0f);
    this->targetYaw = this->parity * -0x5000;
    this->targetRoll = this->parity * 0x4000;
    this->actionFunc = BossSst_HandReadyGrab;
}

void BossSst_HandReadyGrab(BossSst* this, GlobalContext* globalCtx) {
    s32 inPosition;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    inPosition = Math_SmoothScaleMaxMinS(&this->actor.shape.rot.z, this->targetRoll, 4, 0x800, 0x100) == 0;
    inPosition &=
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, this->actor.yawTowardsLink + this->targetYaw, 0xA00);
    Math_SmoothScaleMaxF(&this->actor.posRot.pos.y, 95.0f, 0.5f, 20.0f);
    if (inPosition) {
        BossSst_HandSetupGrab(this);
    }
}

void BossSst_HandSetupGrab(BossSst* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_80937864[this->actor.params], 5.0f);
    this->actor.posRot.rot.y = this->actor.shape.rot.y + (this->parity * 0x4000);
    this->targetYaw = this->actor.posRot.rot.y;
    this->timer = 30;
    this->actor.speedXZ = 0.5f;
    BossSst_HandSetDamage(this, 0x20);
    this->actionFunc = BossSst_HandGrab;
}

void BossSst_HandGrab(BossSst* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    DECR(this->timer);

    this->actor.posRot.rot.y =
        ((1.0f - sinf(this->timer * (M_PI / 60.0f))) * (this->parity * 0x2000)) + this->targetYaw;
    this->actor.shape.rot.y = this->actor.posRot.rot.y - (this->parity * 0x4000);
    if (this->timer < 5) {
        Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 0.5f, 25.0f, 5.0f);
        if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
            this->colliderJntSph.base.atFlags &= ~3;
            this->actor.speedXZ = 0.0f;
            if (player->stateFlags2 & 0x80) {
                if (Math_Rand_ZeroOne() < 0.5f) {
                    BossSst_HandSetupCrush(this);
                } else {
                    BossSst_HandSetupSwing(this);
                }
            } else {
                Item_DropCollectible(globalCtx, &this->actor.posRot.pos, Math_Rand_ZeroOne() < 0.5f ? 8 : 15);
                BossSst_HandSetupRetreat(this);
            }
        }
    } else {
        this->actor.speedXZ *= 1.26f;
        this->actor.speedXZ = CLAMP_MAX(this->actor.speedXZ, 70.0f);
        func_8002F974(&this->actor, NA_SE_EN_SHADEST_HAND_FLY - SFX_FLAG);
    }

    if (this->colliderJntSph.base.atFlags & 2) {
        this->colliderJntSph.base.atFlags &= ~3;
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_SHADEST_CATCH);
        BossSst_HandGrabPlayer(this, globalCtx);
        this->timer = CLAMP_MAX(this->timer, 5);
    }

    this->actor.posRot.pos.x += this->actor.speedXZ * Math_Sins(this->actor.posRot.rot.y);
    this->actor.posRot.pos.z += this->actor.speedXZ * Math_Coss(this->actor.posRot.rot.y);
    if (player->stateFlags2 & 0x80) {
        player->unk_850 = 0;
        player->actor.posRot.pos = this->actor.posRot.pos;
        player->actor.shape.rot.y = this->actor.shape.rot.y;
    }
}

void BossSst_HandSetupCrush(BossSst* this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, D_8093786C[this->actor.params], -10.0f);
    this->timer = 20;
    this->actionFunc = BossSst_HandCrush;
}

void BossSst_HandCrush(BossSst* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    DECR(this->timer);

    if (!(player->stateFlags2 & 0x80)) {
        BossSst_HandReleasePlayer(this, globalCtx, 1);
        BossSst_HandSetupEndCrush(this);
    } else {
        player->actor.posRot.pos = this->actor.posRot.pos;
        if (this->timer == 0) {
            this->timer = 20;
            if (LINK_IS_CHILD) {
                func_8002F7DC(&player->actor, NA_SE_VO_LI_DAMAGE_S_KID);
            } else {
                func_8002F7DC(&player->actor, NA_SE_VO_LI_DAMAGE_S);
            }

            globalCtx->damagePlayer(globalCtx, -8);
        }
        if (func_800A56C8(&this->skelAnime, 0.0f)) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_SHADEST_CATCH);
        }
    }
}

void BossSst_HandSetupEndCrush(BossSst* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_80937854[this->actor.params], 10.0f);
    this->actionFunc = BossSst_HandEndCrush;
}

void BossSst_HandEndCrush(BossSst* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        BossSst_HandSetupRetreat(this);
    }
}

void BossSst_HandSetupSwing(BossSst* this) {
    this->amplitude = -0x4000;
    this->timer = 1;
    this->center.x = this->actor.posRot.pos.x - (Math_Sins(this->actor.shape.rot.y) * 200.0f);
    this->center.y = this->actor.posRot.pos.y;
    this->center.z = this->actor.posRot.pos.z - (Math_Coss(this->actor.shape.rot.y) * 200.0f);
    this->actionFunc = BossSst_HandSwing;
}

void BossSst_HandSwing(BossSst* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    f32 offXZ;

    if (Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, this->amplitude, this->timer * 0xE4 + 0x1C8)) {
        if (this->amplitude != 0) {
            this->amplitude = 0;
            if (this->timer == 4) {
                SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_80937854[this->actor.params], 4.0f);
            }
        } else {
            if (this->timer == 4) {
                player->actor.shape.rot.x = 0;
                player->actor.shape.rot.z = 0;
                BossSst_HandSetupRetreat(this);
                return;
            }
            this->amplitude = (this->timer == 3) ? -0x6000 : -0x4000;
            this->timer++;
        }
    }

    this->actor.posRot.pos.y = (Math_Coss(this->actor.shape.rot.x + 0x4000) * 200.0f) + this->center.y;
    offXZ = Math_Sins(this->actor.shape.rot.x + 0x4000) * 200.0f;
    this->actor.posRot.pos.x = (Math_Sins(this->actor.shape.rot.y) * offXZ) + this->center.x;
    this->actor.posRot.pos.z = (Math_Coss(this->actor.shape.rot.y) * offXZ) + this->center.z;
    if (this->timer != 4) {
        this->actor.shape.rot.z = (this->actor.shape.rot.x + 0x4000) * this->parity;
    } else {
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.z, 0, 0x800);
    }

    if (player->stateFlags2 & 0x80) {
        player->unk_850 = 0;
        Math_Vec3f_Copy(&player->actor.posRot.pos, &this->actor.posRot.pos);
        player->actor.shape.rot.x = this->actor.shape.rot.x;
        player->actor.shape.rot.z = (this->parity * -0x4000) + this->actor.shape.rot.z;
    } else {
        Math_ApproxUpdateScaledS(&player->actor.shape.rot.x, 0, 0x600);
        Math_ApproxUpdateScaledS(&player->actor.shape.rot.z, 0, 0x600);
        player->actor.posRot.pos.x += 20.0f * Math_Sins(this->actor.shape.rot.y);
        player->actor.posRot.pos.z += 20.0f * Math_Coss(this->actor.shape.rot.y);
    }

    if ((this->timer == 4) && (this->amplitude == 0) && SkelAnime_FrameUpdateMatrix(&this->skelAnime) &&
        (player->stateFlags2 & 0x80)) {
        BossSst_HandReleasePlayer(this, globalCtx, 0);
        player->actor.posRot.pos.x += 70.0f * Math_Sins(this->actor.shape.rot.y);
        player->actor.posRot.pos.z += 70.0f * Math_Coss(this->actor.shape.rot.y);
        func_8002F71C(globalCtx, &this->actor, 15.0f, this->actor.shape.rot.y, 2.0f);
        func_8002F7DC(&player->actor, NA_SE_PL_BODY_HIT);
    }

    func_8002F974(&this->actor, NA_SE_EN_SHADEST_HAND_FLY - SFX_FLAG);
}

void BossSst_HandSetupReel(BossSst* this) {
    HAND_STATE(this) = HAND_DAMAGED;
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_80937854[this->actor.params], 4.0f);
    this->timer = 36;
    Math_Vec3f_Copy(&this->center, &this->actor.posRot.pos);
    func_8003426C(&this->actor, 0, 0xFF, 0, 200);
    this->actionFunc = BossSst_HandReel;
}

void BossSst_HandReel(BossSst* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    DECR(this->timer);

    if (!(this->timer % 4)) {
        if (this->timer % 8) {
            SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_80937854[this->actor.params], 4.0f);
        } else {
            SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_80937864[this->actor.params], 6.0f);
        }
    }

    this->actor.dmgEffectTimer = 200;
    this->actor.posRot.pos.x += Math_Rand_CenteredFloat(20.0f);
    this->actor.posRot.pos.y += Math_Rand_CenteredFloat(20.0f);
    this->actor.posRot.pos.z += Math_Rand_CenteredFloat(20.0f);

    if (this->actor.posRot.pos.y < (this->actor.groundY + 100.0f)) {
        Math_ApproxF(&this->actor.posRot.pos.y, this->actor.groundY + 100.0f, 20.0f);
    }

    if (this->timer == 0) {
        BossSst_HandSetupReadyShake(this);
    }
}

void BossSst_HandSetupReadyShake(BossSst* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_80937874[this->actor.params], 8.0f);
    this->actionFunc = BossSst_HandReadyShake;
}

void BossSst_HandReadyShake(BossSst* this, GlobalContext* globalCtx) {
    f32 diff;
    s32 inPosition;

    diff = Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.x, this->actor.initPosRot.pos.x, 0.5f, 25.0f, 1.0f);
    diff += Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.z, this->actor.initPosRot.pos.z, 0.5f, 25.0f, 1.0f);
    diff +=
        Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y, this->actor.initPosRot.pos.y + 200.0f, 0.2f, 30.0f, 1.0f);
    inPosition = Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, 0x4000, 0x400);
    inPosition &= Math_ApproxUpdateScaledS(&this->actor.shape.rot.z, 0, 0x1000);
    inPosition &= Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, this->actor.initPosRot.rot.y, 0x800);
    inPosition &= Math_ApproxS(&this->handZPosMod, -0x5DC, 0x1F4);
    inPosition &= Math_ApproxUpdateScaledS(&this->handYRotMod, this->parity * -0x2000, 0x800);
    this->actor.dmgEffectTimer = 200;
    if ((diff < 30.0f) && inPosition) {
        BossSst_HandSetupShake(this);
    } else {
        func_8002F974(&this->actor, NA_SE_EN_SHADEST_HAND_FLY - SFX_FLAG);
    }
}

void BossSst_HandSetupShake(BossSst* this) {
    this->timer = 200;
    this->actionFunc = BossSst_HandShake;
}

void BossSst_HandShake(BossSst* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    DECR(this->timer);

    this->actor.shape.rot.x = 0x4000 + (sinf(this->timer * (M_PI / 5)) * 0x2000);
    this->handYRotMod = (this->parity * -0x2000) + (sinf(this->timer * (M_PI / 4)) * 0x2800);

    if (!(this->timer % 8)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_SHADEST_SHAKEHAND);
    }

    if (HAND_STATE(OTHER_HAND) == HAND_DAMAGED) {
        if ((OTHER_HAND->actionFunc == BossSst_HandShake) || (OTHER_HAND->actionFunc == BossSst_HandReadyCharge)) {
            BossSst_HandSetupReadyCharge(this);
        } else if (this->timer == 0) {
            this->timer = 80;
        }
    } else if (this->timer == 0) {
        this->actor.flags |= 1;
        BossSst_HandSetupSlam(this);
    }
}

void BossSst_HandSetupReadyCharge(BossSst* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_80937864[this->actor.params], 10.0f);
    this->ready = false;
    this->actionFunc = BossSst_HandReadyCharge;
}

void BossSst_HandReadyCharge(BossSst* this, GlobalContext* globalCtx) {
    if (!this->ready) {
        this->ready = SkelAnime_FrameUpdateMatrix(&this->skelAnime);
        this->ready &= Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, 0, 0x800);
        this->ready &= Math_ApproxUpdateScaledS(&this->actor.shape.rot.y,
                                                this->actor.initPosRot.rot.y + (this->parity * 0x1000), 0x800);
        this->ready &= Math_ApproxUpdateScaledS(&this->handYRotMod, 0, 0x800);
        this->ready &= Math_ApproxUpdateScaledS(&this->actor.shape.rot.z, this->parity * 0x2800, 0x800);
        this->ready &= Math_ApproxS(&this->handZPosMod, -0xDAC, 0x1F4);
        if (this->ready) {
            this->actor.dmgEffectTimer = 0;
        }
    } else if (this->colliderJntSph.base.atFlags & 2) {
        this->colliderJntSph.base.atFlags &= ~3;
        OTHER_HAND->colliderJntSph.base.atFlags &= ~3;
        sHead->colliderJntSph.base.atFlags &= ~3;
        func_8002F71C(globalCtx, &this->actor, 10.0f, this->actor.shape.rot.y, 5.0f);
        func_8002F7DC(&PLAYER->actor, NA_SE_PL_BODY_HIT);
    }
}

void BossSst_HandSetupStunned(BossSst* hand) {
    SkelAnime_ChangeAnimTransitionStop(&hand->skelAnime, D_8093784C[hand->actor.params], 10.0f);
    if (hand->actionFunc != BossSst_HandDamage) {
        hand->ready = false;
    }

    hand->colliderJntSph.base.atFlags &= ~3;
    hand->colliderJntSph.base.acFlags |= 1;
    BossSst_HandSetInvulnerable(hand, true);
    func_8003426C(&hand->actor, 0, 0xFF, 0, SkelAnime_GetFrameCount(&D_0600B6FC.genericHeader));
    hand->actionFunc = BossSst_HandStunned;
}

void BossSst_HandStunned(BossSst* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_SmoothScaleMaxF(&this->actor.posRot.pos.z,
                         (Math_Coss(sHead->actor.shape.rot.y) * 200.0f) + this->actor.initPosRot.pos.z, 0.5f, 25.0f);
    Math_SmoothScaleMaxF(&this->actor.posRot.pos.x,
                         (Math_Sins(sHead->actor.shape.rot.y) * 200.0f) + this->actor.initPosRot.pos.x, 0.5f, 25.0f);
    if (!this->ready) {
        Math_ApproxUpdateScaledS(&this->handYRotMod, 0, 0x800);
        Math_ApproxS(&this->handZPosMod, -0xDAC, 0x1F4);
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, this->actor.initPosRot.rot.x, 0x800);
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.z, this->actor.initPosRot.rot.z, 0x800);
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, this->actor.initPosRot.rot.y, 0x800);
        if (sHead->actionFunc == BossSst_HeadVulnerable) {
            this->ready = true;
            SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_80937874[this->actor.params], 10.0f);
        }
    } else {
        Math_ApproxF(&this->actor.posRot.pos.y, this->actor.groundY, 30.0f);
    }
}

void BossSst_HandSetupDamage(BossSst* hand) {
    hand->actor.shape.rot.x = 0;
    SkelAnime_ChangeAnimTransitionStop(&hand->skelAnime, D_8093785C[hand->actor.params], 3.0f);
    hand->timer = 6;
    hand->actionFunc = BossSst_HandDamage;
}

void BossSst_HandDamage(BossSst* this, GlobalContext* globalCtx) {
    DECR(this->timer);

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->timer >= 2) {
        this->actor.shape.rot.x -= 0x200;
        Math_ApproxF(&this->actor.posRot.pos.y, this->actor.groundY + 200.0f, 50.0f);
    } else {
        this->actor.shape.rot.x += 0x400;
        Math_ApproxF(&this->actor.posRot.pos.y, this->actor.groundY, 100.0f);
    }

    if (this->timer == 0) {
        if (this->actor.groundY >= 0.0f) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_SHADEST_TAIKO_HIGH);
        }
        BossSst_HandSetupStunned(this);
    }
}

void BossSst_HandSetupThrash(BossSst* this) {
    HAND_STATE(this) = HAND_DEATH;
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_8093785C[this->actor.params], 2.0f);
    this->actor.shape.rot.x = 0;
    this->timer = 160;
    if (this->actor.params == BONGO_LEFT_HAND) {
        this->amplitude = -0x800;
    } else {
        this->amplitude = 0;
        this->actor.shape.rot.x = -0x800;
    }

    this->handAngSpeed = 0x180;
    this->actionFunc = BossSst_HandThrash;
}

void BossSst_HandThrash(BossSst* this, GlobalContext* globalCtx) {
    DECR(this->timer);

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_SmoothScaleMaxF(&this->actor.posRot.pos.z,
                         (Math_Coss(sHead->actor.shape.rot.y) * 200.0f) + this->actor.initPosRot.pos.z, 0.5f, 25.0f);
    Math_SmoothScaleMaxF(&this->actor.posRot.pos.x,
                         (Math_Sins(sHead->actor.shape.rot.y) * 200.0f) + this->actor.initPosRot.pos.x, 0.5f, 25.0f);
    if (Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, this->amplitude, this->handAngSpeed)) {
        if (this->amplitude != 0) {
            this->amplitude = 0;
            SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_80937854[this->actor.params], 5.0f);
        } else {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_SHADEST_TAIKO_HIGH);
            this->amplitude = -0x800;
            SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_8093785C[this->actor.params], 5.0f);
        }

        if (this->timer < 80.0f) {
            this->handAngSpeed -= 0x40;
            this->handAngSpeed = CLAMP_MIN(this->handAngSpeed, 0x40);
        }
    }

    this->actor.posRot.pos.y =
        ((((this->handAngSpeed * 0.00390625f) + 0.5f) * 150.0f) * -0.00048828125f) * this->actor.shape.rot.x;
    if (this->timer == 0) {
        BossSst_HandSetupDarken(this);
    }
}

void BossSst_HandSetupDarken(BossSst* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_80937854[this->actor.params], 5.0f);
    this->actionFunc = BossSst_HandDarken;
}

void BossSst_HandDarken(BossSst* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, -0x800, this->handAngSpeed);
    Math_ApproxF(&this->actor.posRot.pos.y, 90.0f, 5.0f);
    if (sHead->actionFunc == BossSst_HeadFall) {
        BossSst_HandSetupFall(this);
    }
}

void BossSst_HandSetupFall(BossSst* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_80937854[this->actor.params], 3.0f);
    this->actionFunc = BossSst_HandFall;
}

void BossSst_HandFall(BossSst* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, 0, 0x400);
    this->actor.posRot.pos.y = sHead->actor.posRot.pos.y + 230.0f;
    if (sHead->actionFunc == BossSst_HeadMelt) {
        BossSst_HandSetupMelt(this);
    }
}

void BossSst_HandSetupMelt(BossSst* this) {
    BossSst_SpawnHandShadow(this);
    this->actor.shape.shadowDrawFunc = NULL;
    this->timer = 80;
    this->actionFunc = BossSst_HandMelt;
}

void BossSst_HandMelt(BossSst* this, GlobalContext* globalCtx) {
    DECR(this->timer);

    this->actor.scale.y -= 0.00025f;
    this->actor.scale.x += 0.000025f;
    this->actor.scale.z += 0.000025f;
    this->actor.posRot.pos.y = 0.0f;
    if (this->timer == 0) {
        BossSst_HandSetupFinish(this);
    }
}

void BossSst_HandSetupFinish(BossSst* this) {
    this->actor.draw = BossSst_DrawEffect;
    this->timer = 20;
    this->effects[0].status = 0;
    this->actionFunc = BossSst_HandFinish;
}

void BossSst_HandFinish(BossSst* this, GlobalContext* globalCtx) {
    DECR(this->timer);

    if (this->timer == 0) {
        this->effectMode = BONGO_NULL;
    }
}

void BossSst_HandSetupRecover(BossSst* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_8093787C[this->actor.params], 10.0f);
    this->ready = false;
    this->actionFunc = BossSst_HandRecover;
}

void BossSst_HandRecover(BossSst* this, GlobalContext* globalCtx) {
    Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y, 250.0f, 0.5f, 70.0f, 5.0f);
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        if (!this->ready) {
            SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_80937884[this->actor.params], 10.0f);
            this->ready = true;
        }
    }
    func_8002F974(&this->actor, NA_SE_EN_SHADEST_HAND_FLY - SFX_FLAG);
}

void BossSst_HandSetupFrozen(BossSst* this) {
    s32 i;

    HAND_STATE(this) = HAND_FROZEN;
    Math_Vec3f_Copy(&this->center, &this->actor.posRot.pos);
    BossSst_HandSetupReadyBreakIce(OTHER_HAND);
    this->ready = false;
    this->effectMode = BONGO_ICE;
    this->timer = 35;
    for (i = 0; i < 18; i++) {
        this->effects[i].move = false;
    }

    BossSst_SpawnIceCrystal(this, 0);
    func_8003426C(&this->actor, 0, 0xFF, 0, 0xA);
    this->handAngSpeed = 0;
    this->actionFunc = BossSst_HandFrozen;
}

void BossSst_HandFrozen(BossSst* this, GlobalContext* globalCtx) {
    DECR(this->timer);

    if (this->timer & 1) {
        BossSst_SpawnIceCrystal(this, (this->timer >> 1) + 1);
    }

    if (this->ready) {
        BossSst_IceShatter(this);
        BossSst_HandSetupRetreat(this);
        sHead->ready = true;
    } else {
        this->actor.dmgEffectTimer = 10;
        if (this->handAngSpeed != 0) {
            f32 offY = Math_Sins(OTHER_HAND->actor.shape.rot.x) * 5.0f;
            f32 offXZ = Math_Coss(OTHER_HAND->actor.shape.rot.x) * 5.0f;

            if (this->handAngSpeed & 1) {
                offY *= -1.0f;
                offXZ *= -1.0f;
            }

            this->actor.posRot.pos.x = this->center.x + (Math_Coss(OTHER_HAND->actor.shape.rot.y) * offXZ);
            this->actor.posRot.pos.y = this->center.y + offY;
            this->actor.posRot.pos.z = this->center.z + (Math_Sins(OTHER_HAND->actor.shape.rot.y) * offXZ);
            this->handAngSpeed--;
        }
    }
}

void BossSst_HandSetupReadyBreakIce(BossSst* this) {
    HAND_STATE(this) = HAND_BREAK_ICE;
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, D_80937864[this->actor.params], 5.0f);
    this->ready = false;
    this->actor.dmgEffectTimer = 0;
    if (this->effectMode == BONGO_ICE) {
        this->effectMode = BONGO_NULL;
    }

    this->radius = func_8002DBB0(&this->actor, &OTHER_HAND->center);
    this->targetYaw = func_8002DAC0(&this->actor, &OTHER_HAND->center);
    BossSst_HandSetInvulnerable(this, true);
    this->actionFunc = BossSst_HandReadyBreakIce;
}

void BossSst_HandReadyBreakIce(BossSst* this, GlobalContext* globalCtx) {
    s32 inPosition;

    inPosition = Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, this->targetYaw, 0x400);
    inPosition &= Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, 0x1000, 0x400);
    inPosition &= Math_ApproxUpdateScaledS(&this->actor.shape.rot.z, 0, 0x800);
    inPosition &= Math_ApproxUpdateScaledS(&this->handYRotMod, 0, 0x400);
    inPosition &= Math_ApproxF(&this->actor.posRot.pos.y, OTHER_HAND->center.y + 200.0f, 50.0f);
    inPosition &= Math_ApproxF(&this->radius, 400.0f, 60.0f);
    this->actor.posRot.pos.x = OTHER_HAND->center.x - (Math_Sins(this->targetYaw) * this->radius);
    this->actor.posRot.pos.z = OTHER_HAND->center.z - (Math_Coss(this->targetYaw) * this->radius);
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) && inPosition) {
        BossSst_HandSetupBreakIce(this);
    }
}

void BossSst_HandSetupBreakIce(BossSst* this) {
    this->timer = 9;
    this->actionFunc = BossSst_HandBreakIce;
    this->actor.speedXZ = 0.5f;
}

void BossSst_HandBreakIce(BossSst* this, GlobalContext* globalCtx) {
    if (this->timer & 1) {
        this->actor.speedXZ *= 1.5f;
        this->actor.speedXZ = CLAMP_MAX(this->actor.speedXZ, 60.0f);

        if (Math_ApproxF(&this->radius, 100.0f, this->actor.speedXZ)) {
            BossSst_SpawnIceShard(this);
            DECR(this->timer);

            if (this->timer != 0) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EV_ICE_BROKEN);
            }

            OTHER_HAND->handAngSpeed = 5;
        }
    } else {
        this->actor.speedXZ *= 0.8f;
        Math_ApproxF(&this->radius, 500.0f, this->actor.speedXZ);
        if (this->actor.speedXZ < 2.0f) {
            DECR(this->timer);
        }
    }

    this->actor.posRot.pos.x = OTHER_HAND->center.x - (Math_Sins(this->targetYaw) * this->radius);
    this->actor.posRot.pos.z = OTHER_HAND->center.z - (Math_Coss(this->targetYaw) * this->radius);
    this->actor.posRot.pos.y = OTHER_HAND->center.y + (this->radius * 0.4f);
    if (this->timer == 0) {
        OTHER_HAND->ready = true;
        BossSst_HandSetupRetreat(this);
    }

    func_8002F974(&this->actor, NA_SE_EN_SHADEST_HAND_FLY - SFX_FLAG);
}

void BossSst_HandGrabPlayer(BossSst* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (globalCtx->grabPlayer(globalCtx, player)) {
        player->actor.parent = &this->actor;
        if (player->actor.colChkInfo.health > 0) {
            this->colliderJntSph.base.maskA &= ~1;
            if (HAND_STATE(this) == HAND_CLAP) {
                OTHER_HAND->colliderJntSph.base.maskA &= ~1;
            }
        }
    }
}

void BossSst_HandReleasePlayer(BossSst* this, GlobalContext* globalCtx, s32 arg2) {
    Player* player = PLAYER;

    if (player->actor.parent == &this->actor) {
        player->actor.parent = NULL;
        player->unk_850 = 0x64;
        this->colliderJntSph.base.maskA |= 1;
        OTHER_HAND->colliderJntSph.base.maskA |= 1;
        if (arg2 != 0) {
            func_8002F71C(globalCtx, &this->actor, 0.0f, this->actor.shape.rot.y, 0.0f);
        }
    }
}

void BossSst_MoveAround(BossSst* this) {
    BossSst* hand;
    Vec3f* vec;
    f32 sn;
    f32 cs;
    s32 i;

    sn = Math_Sins(this->actor.shape.rot.y);
    cs = Math_Coss(this->actor.shape.rot.y);
    if (this->actionFunc != BossSst_HeadEndCharge) {
        this->actor.posRot.pos.x = sRoomCenter.x + (this->radius * sn);
        this->actor.posRot.pos.z = sRoomCenter.z + (this->radius * cs);
    }

    for (i = 0; i < 2; i++) {
        hand = sHand[i];
        vec = &sHandOffset[i];

        hand->actor.posRot.pos.x = this->actor.posRot.pos.x + (vec->z * sn) + (vec->x * cs);
        hand->actor.posRot.pos.y = this->actor.posRot.pos.y + vec->y;
        hand->actor.posRot.pos.z = this->actor.posRot.pos.z + (vec->z * cs) - (vec->x * sn);

        hand->actor.initPosRot.pos.x = this->actor.posRot.pos.x + (400.0f * sn) + (-200.0f * hand->parity * cs);
        hand->actor.initPosRot.pos.y = this->actor.posRot.pos.y;
        hand->actor.initPosRot.pos.z = this->actor.posRot.pos.z + (400.0f * cs) - (-200.0f * hand->parity * sn);

        hand->actor.initPosRot.rot.y = this->actor.shape.rot.y;
        hand->actor.shape.rot.y = sHandYawOffset[i] + this->actor.shape.rot.y;

        if (hand->actor.posRot.pos.y < hand->actor.groundY) {
            hand->actor.posRot.pos.y = hand->actor.groundY;
        }
    }
}

void BossSst_HandSelectAttack(BossSst* this) {
    f32 rand = Math_Rand_ZeroOne() * 6.0f;
    s32 randInt;

    if (HAND_STATE(OTHER_HAND) == HAND_DAMAGED) {
        rand *= 5.0f / 6;
        if (rand > 4.0f) {
            rand = 4.0f;
        }
    }

    randInt = rand;
    if (randInt == 0) {
        BossSst_HandSetupReadySlam(this);
    } else if (randInt == 1) {
        BossSst_HandSetupReadySweep(this);
    } else if (randInt == 2) {
        BossSst_HandSetupReadyPunch(this);
    } else if (randInt == 5) {
        BossSst_HandSetupReadyClap(this);
    } else { // randInt == 3 || randInt == 4
        BossSst_HandSetupReadyGrab(this);
    }
}

void BossSst_HandSetDamage(BossSst* this, s32 damage) {
    s32 i;

    this->colliderJntSph.base.atFlags |= 1;
    for (i = 0; i < 11; i++) {
        this->colliderJntSph.list[i].body.toucher.damage = damage;
    }
}

void BossSst_HandSetInvulnerable(BossSst* this, s32 setInv) {
    this->colliderJntSph.base.acFlags &= ~2;
    if (setInv) {
        this->colliderJntSph.base.type = COLTYPE_UNK12;
        this->colliderJntSph.base.acFlags |= 4;
    } else {
        this->colliderJntSph.base.type = COLTYPE_UNK0;
        this->colliderJntSph.base.acFlags &= ~4;
    }
}

void BossSst_HeadSfx(BossSst* this, u16 sfxId) {
    func_80078914(&this->center, sfxId);
}

void BossSst_HandCollisionCheck(BossSst* this, GlobalContext* globalCtx) {
    if ((this->colliderJntSph.base.acFlags & 2) && (this->colliderJntSph.base.type != COLTYPE_UNK12)) {
        s32 bothHands = true;

        this->colliderJntSph.base.acFlags &= ~2;
        if ((this->actor.colChkInfo.damageEffect != 0) || (this->actor.colChkInfo.damage != 0)) {
            this->colliderJntSph.base.atFlags &= ~3;
            this->colliderJntSph.base.acFlags &= ~1;
            this->colliderJntSph.base.maskA &= ~4;
            BossSst_HandReleasePlayer(this, globalCtx, 1);
            if (HAND_STATE(OTHER_HAND) == HAND_CLAP) {
                BossSst_HandReleasePlayer(OTHER_HAND, globalCtx, 1);
                BossSst_HandSetupRetreat(OTHER_HAND);
            }

            this->actor.flags &= ~1;
            if (this->actor.colChkInfo.damageEffect == 3) {
                BossSst_HandSetupFrozen(this);
            } else {
                BossSst_HandSetupReel(this);
                if (HAND_STATE(OTHER_HAND) != HAND_DAMAGED) {
                    bothHands = false;
                }
            }

            BossSst_HeadSetupDamagedHand(sHead, bothHands);
            Item_DropCollectible(globalCtx, &this->actor.posRot.pos, Math_Rand_ZeroOne() < 0.5f ? 8 : 15);
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_SHADEST_DAMAGE_HAND);
        }
    }
}

void BossSst_HeadCollisionCheck(BossSst* this, GlobalContext* globalCtx) {
    if (this->colliderCyl.base.acFlags & 2) {
        this->colliderCyl.base.acFlags &= ~2;
        if ((this->actor.colChkInfo.damageEffect != 0) || (this->actor.colChkInfo.damage != 0)) {
            if (this->actionFunc == BossSst_HeadVulnerable) {
                if (Actor_ApplyDamage(&this->actor) == 0) {
                    func_80032C7C(globalCtx, &this->actor);
                    BossSst_HeadSetupDeath(this, globalCtx);
                } else {
                    BossSst_HeadSetupDamage(this);
                }

                BossSst_HandSetupDamage(sHand[LEFT]);
                BossSst_HandSetupDamage(sHand[RIGHT]);
            } else {
                BossSst_HeadSetupStunned(this);
                if (HAND_STATE(sHand[RIGHT]) == HAND_FROZEN) {
                    BossSst_IceShatter(sHand[RIGHT]);
                } else if (HAND_STATE(sHand[LEFT]) == HAND_FROZEN) {
                    BossSst_IceShatter(sHand[LEFT]);
                }

                BossSst_HandSetupStunned(sHand[RIGHT]);
                BossSst_HandSetupStunned(sHand[LEFT]);
            }
        }
    }
}

void BossSst_UpdateHand(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BossSst* this = THIS;
    BossSstHandTrail* trail;

    if (this->colliderCyl.base.atFlags & 1) {
        if ((this->effects[0].move < 5) ||
            (this->actor.xzDistFromLink < ((this->effects[2].scale * 0.01f) * sCylinderInitHand.dim.radius)) ||
            (this->colliderCyl.base.atFlags & 2)) {
            this->colliderCyl.base.atFlags &= ~3;
        } else {
            this->colliderCyl.dim.radius = (this->effects[0].scale * 0.01f) * sCylinderInitHand.dim.radius;
        }
    }

    BossSst_HandCollisionCheck(this, globalCtx);
    this->actionFunc(this, globalCtx);
    func_8002E4B4(globalCtx, &this->actor, 50.0f, 130.0f, 0.0f, 5);
    Actor_SetHeight(&this->actor, 0.0f);
    if (this->colliderJntSph.base.atFlags & 1) {
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->colliderJntSph.base);
    }

    if ((sHead->actionFunc != BossSst_HeadLurk) && (sHead->actionFunc != BossSst_HeadIntro) &&
        (this->colliderJntSph.base.acFlags & 1)) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colliderJntSph.base);
    }

    if (this->colliderJntSph.base.maskA & 1) {
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->colliderJntSph.base);
    }

    if (this->colliderCyl.base.atFlags & 1) {
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->colliderCyl.base);
    }

    if ((HAND_STATE(this) != HAND_DEATH) && (HAND_STATE(this) != HAND_WAIT) && (HAND_STATE(this) != HAND_BEAT) &&
        (HAND_STATE(this) != HAND_FROZEN)) {
        this->trailCount++;
        this->trailCount = CLAMP_MAX(this->trailCount, 7);
    } else {
        this->trailCount--;
        this->trailCount = CLAMP_MIN(this->trailCount, 0);
    }

    trail = &this->handTrails[this->trailIndex];
    Math_Vec3f_Copy(&trail->posRot.pos, &this->actor.posRot.pos);
    trail->posRot.rot = this->actor.shape.rot;
    trail->zPosMod = this->handZPosMod;
    trail->yRotMod = this->handYRotMod;

    this->trailIndex = (this->trailIndex + 1) % 7;
    BossSst_UpdateEffect(&this->actor, globalCtx);
}

void BossSst_UpdateHead(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BossSst* this = THIS;

    func_8002DBD0(&this->actor, &sHandOffset[RIGHT], &sHand[RIGHT]->actor.posRot.pos);
    func_8002DBD0(&this->actor, &sHandOffset[LEFT], &sHand[LEFT]->actor.posRot.pos);

    sHandYawOffset[LEFT] = sHand[LEFT]->actor.shape.rot.y - thisx->shape.rot.y;
    sHandYawOffset[RIGHT] = sHand[RIGHT]->actor.shape.rot.y - thisx->shape.rot.y;

    BossSst_HeadCollisionCheck(this, globalCtx);
    this->actionFunc(this, globalCtx);
    if (this->vanish) {
        if ((globalCtx->actorCtx.unk_03 == 0) || (thisx->dmgEffectTimer != 0)) {
            this->actor.flags &= ~0x80;
        } else {
            this->actor.flags |= 0x80;
        }
    }

    if (this->colliderJntSph.base.atFlags & 1) {
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->colliderJntSph.base);
    }

    if ((this->actionFunc != BossSst_HeadLurk) && (this->actionFunc != BossSst_HeadIntro)) {
        if (this->colliderCyl.base.acFlags & 1) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colliderCyl.base);
        }
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colliderJntSph.base);
    }

    if (this->colliderJntSph.base.maskA & 1) {
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->colliderJntSph.base);
    }

    BossSst_MoveAround(this);
    if ((!this->vanish || ((this->actor.flags & 0x80) == 0x80)) &&
        ((this->actionFunc == BossSst_HeadReadyCharge) || (this->actionFunc == BossSst_HeadCharge) ||
         (this->actionFunc == BossSst_HeadFrozenHand) || (this->actionFunc == BossSst_HeadStunned) ||
         (this->actionFunc == BossSst_HeadVulnerable) || (this->actionFunc == BossSst_HeadDamage))) {
        this->actor.flags |= 1;
    } else {
        this->actor.flags &= ~1;
    }

    if (this->actionFunc == BossSst_HeadCharge) {
        BossSst_HeadSfx(this, NA_SE_EN_SHADEST_MOVE - SFX_FLAG);
    }

    BossSst_UpdateEffect(&this->actor, globalCtx);
}

s32 BossSst_HandOverride(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    BossSst* this = THIS;

    if (limbIndex == 1) {
        pos->z += this->handZPosMod;
        rot->y += this->handYRotMod;
    }
    return 0;
}

void BossSst_HandPost(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx) {
    BossSst* this = THIS;

    func_800628A4(limbIndex, &this->colliderJntSph);
}

s32 BossSst_HandTrailOverride(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* data,
                              Gfx** gfx) {
    BossSstHandTrail* trail = (BossSstHandTrail*)data;

    if (limbIndex == 1) {
        pos->z += trail->zPosMod;
        rot->y += trail->yRotMod;
    }
    return 0;
}

void BossSst_DrawHand(Actor* thisx, GlobalContext* globalCtx) {
    BossSst* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_sst.c", 6563);

    func_80093D18(globalCtx->state.gfxCtx);

    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0x80, sBodyColor.r, sBodyColor.g, sBodyColor.b, 0xFF);

    if (!sBodyStatic) {
        gSPSegment(POLY_OPA_DISP++, 0x08, &D_80116280[2]);
    } else {
        gDPSetEnvColor(POLY_OPA_DISP++, sStaticColor.r, sStaticColor.g, sStaticColor.b, 0x00);
        gSPSegment(POLY_OPA_DISP++, 0x08, sBodyStaticDList);
    }

    SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount,
                     BossSst_HandOverride, BossSst_HandPost, &this->actor);
    if (this->trailCount >= 2) {
        BossSstHandTrail* trail;
        BossSstHandTrail* trail2;
        s32 i;
        s32 idx;
        s32 end;
        s32 pad;

        func_80093D84(globalCtx->state.gfxCtx);

        end = this->trailCount >> 1;
        idx = (this->trailIndex + 4) % 7;
        trail = &this->handTrails[idx];
        trail2 = &this->handTrails[(idx + 2) % 7];

        for (i = 0; i < end; i++) {
            if (Math3D_Vec3fDistSq(&trail2->posRot.pos, &trail->posRot.pos) > 900.0f) {
                func_800D1694(trail->posRot.pos.x, trail->posRot.pos.y, trail->posRot.pos.z, &trail->posRot.rot);
                Matrix_Scale(0.02f, 0.02f, 0.02f, MTXMODE_APPLY);

                gSPSegment(POLY_XLU_DISP++, 0x08, sHandTrailDList);
                gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, ((3 - i) * 10) + 20, 0, ((3 - i) * 20) + 50,
                                ((3 - i) * 30) + 70);

                POLY_XLU_DISP = SkelAnime_DrawSV2(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl,
                                                       this->skelAnime.dListCount, BossSst_HandTrailOverride, NULL,
                                                       trail, POLY_XLU_DISP);
            }
            idx = (idx + 5) % 7;
            trail2 = trail;
            trail = &this->handTrails[idx];
        }
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_sst.c", 6654);

    BossSst_DrawEffect(&this->actor, globalCtx);
}

s32 BossSst_HeadOverride(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx,
                         Gfx** gfx) {
    BossSst* this = THIS;
    s32 shakeAmp;
    s32 pad;
    s32 timer12;
    f32 shakeMod;

    if (((this->actor.flags & 0x80) != 0x80) && this->vanish) {
        *dList = NULL;
    } else if (this->actionFunc == BossSst_HeadThrash) {
        shakeAmp = (this->timer / 10) + 1;
        if ((limbIndex == 3) || (limbIndex == 39) || (limbIndex == 42)) {

            shakeMod = sinf(this->timer * (M_PI / 5));
            rot->x += ((0x500 * Math_Rand_ZeroOne() + 0xA00) / 0x10) * shakeAmp * shakeMod;

            shakeMod = sinf((this->timer % 5) * (M_PI / 5));
            rot->z -= ((0x800 * Math_Rand_ZeroOne() + 0x1000) / 0x10) * shakeAmp * shakeMod + 0x1000;

            if (limbIndex == 3) {

                shakeMod = sinf(this->timer * (M_PI / 5));
                rot->y += ((0x500 * Math_Rand_ZeroOne() + 0xA00) / 0x10) * shakeAmp * shakeMod;
            }
        } else if ((limbIndex == 5) || (limbIndex == 6)) {

            shakeMod = sinf((this->timer % 5) * (M_PI / 5));
            rot->z -= ((0x280 * Math_Rand_ZeroOne() + 0x500) / 0x10) * shakeAmp * shakeMod + 0x500;

            if (limbIndex == 5) {

                shakeMod = sinf(this->timer * (M_PI / 5));
                rot->x += ((0x500 * Math_Rand_ZeroOne() + 0xA00) / 0x10) * shakeAmp * shakeMod;

                shakeMod = sinf(this->timer * (M_PI / 5));
                rot->y += ((0x500 * Math_Rand_ZeroOne() + 0xA00) / 0x10) * shakeAmp * shakeMod;
            }
        } else if (limbIndex == 2) {
            shakeMod = sinf(this->timer * (M_PI / 5));
            rot->x += ((0x200 * Math_Rand_ZeroOne() + 0x400) / 0x10) * shakeAmp * shakeMod;

            shakeMod = sinf(this->timer * (M_PI / 5));
            rot->y += ((0x200 * Math_Rand_ZeroOne() + 0x400) / 0x10) * shakeAmp * shakeMod;

            shakeMod = sinf((this->timer % 5) * (M_PI / 5));
            rot->z -= ((0x100 * Math_Rand_ZeroOne() + 0x200) / 0x10) * shakeAmp * shakeMod + 0x200;
        }
    } else if (this->actionFunc == BossSst_HeadDeath) {
        if (this->timer > 48) {
            timer12 = this->timer - 36;
        } else {
            pad = ((this->timer > 6) ? 6 : this->timer);
            timer12 = pad * 2;
        }

        if ((limbIndex == 3) || (limbIndex == 39) || (limbIndex == 42)) {
            rot->z -= 0x2000 * sinf(timer12 * (M_PI / 24));
        } else if ((limbIndex == 5) || (limbIndex == 6)) {
            rot->z -= 0xA00 * sinf(timer12 * (M_PI / 24));
        } else if (limbIndex == 2) {
            rot->z -= 0x400 * sinf(timer12 * (M_PI / 24));
        }
    } else if ((this->actionFunc == BossSst_HeadDarken) || (this->actionFunc == BossSst_HeadFall) ||
               (this->actionFunc == BossSst_HeadMelt)) {
        if ((limbIndex == 3) || (limbIndex == 39) || (limbIndex == 42)) {
            rot->z -= 0x1000;
        } else if ((limbIndex == 5) || (limbIndex == 6)) {
            rot->z -= 0x500;
        } else if (limbIndex == 2) {
            rot->z -= 0x200;
        }
    }
    return 0;
}

void BossSst_HeadPost(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx, Gfx** gfx) {
    static Vec3f zeroVec = { 0.0f, 0.0f, 0.0f };
    static Vec3f headVec = { 1000.0f, 0.0f, 0.0f };
    BossSst* this = THIS;
    Vec3f headPos;

    if (limbIndex == 8) {
        Matrix_MultVec3f(&zeroVec, &this->actor.posRot2.pos);
        Matrix_MultVec3f(&headVec, &headPos);
        this->colliderCyl.dim.pos.x = headPos.x;
        this->colliderCyl.dim.pos.y = headPos.y;
        this->colliderCyl.dim.pos.z = headPos.z;
    }

    func_800628A4(limbIndex, &this->colliderJntSph);
}

void BossSst_DrawHead(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BossSst* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_sst.c", 6810);

    if ((this->actor.flags & 0x80) != 0x80) {
        func_80093D18(globalCtx->state.gfxCtx);
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0x80, sBodyColor.r, sBodyColor.g, sBodyColor.b, 255);
        if (!sBodyStatic) {
            gSPSegment(POLY_OPA_DISP++, 0x08, &D_80116280[2]);
        } else {
            gDPSetEnvColor(POLY_OPA_DISP++, sStaticColor.r, sStaticColor.g, sStaticColor.b, 0);
            gSPSegment(POLY_OPA_DISP++, 0x08, sBodyStaticDList);
        }
    } else {
        func_80093D84(globalCtx->state.gfxCtx);
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0x80, 255, 255, 255, 255);
        gSPSegment(POLY_XLU_DISP++, 0x08, &D_80116280[2]);
    }

    if (this->actionFunc == BossSst_HeadThrash) {
        f32 randPitch = Math_Rand_ZeroOne() * (2 * M_PI);
        f32 randYaw = Math_Rand_ZeroOne() * (2 * M_PI);

        Matrix_RotateY(randYaw, MTXMODE_APPLY);
        Matrix_RotateX(randPitch, MTXMODE_APPLY);
        Matrix_Scale((this->timer * 0.000375f) + 1.0f, 1.0f - (this->timer * 0.00075f),
                     (this->timer * 0.000375f) + 1.0f, MTXMODE_APPLY);
        Matrix_RotateX(-randPitch, MTXMODE_APPLY);
        Matrix_RotateY(-randYaw, MTXMODE_APPLY);
    }

    if ((this->actor.flags & 0x80) != 0x80) {
        POLY_OPA_DISP = SkelAnime_DrawSV2(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl,
                                               this->skelAnime.dListCount, BossSst_HeadOverride, BossSst_HeadPost,
                                               &this->actor, POLY_OPA_DISP);
    } else {
        POLY_XLU_DISP = SkelAnime_DrawSV2(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl,
                                               this->skelAnime.dListCount, BossSst_HeadOverride, BossSst_HeadPost,
                                               &this->actor, POLY_XLU_DISP);
    }

    if ((this->actionFunc == BossSst_HeadIntro) && (113 >= this->timer) && (this->timer > 20)) {
        s32 yOffset;
        Vec3f vanishMaskPos;
        Vec3f vanishMaskOffset;

        func_80093D84(globalCtx->state.gfxCtx);
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 0, 0, 18, 255);

        yOffset = 113 * 8 - this->timer * 8;
        vanishMaskPos.x = 35.0f;
        vanishMaskPos.y = yOffset + -250.0f;
        vanishMaskPos.z = 190.0f;
        if (vanishMaskPos.y > 450.0f) {
            vanishMaskPos.y = 450.0f;
        }

        Matrix_MultVec3fExt(&vanishMaskPos, &vanishMaskOffset, &globalCtx->mf_11DA0);
        Matrix_Translate(this->actor.posRot.pos.x + vanishMaskOffset.x, this->actor.posRot.pos.y + vanishMaskOffset.y,
                         this->actor.posRot.pos.z + vanishMaskOffset.z, MTXMODE_NEW);
        Matrix_Scale(1.0f, 1.0f, 1.0f, MTXMODE_APPLY);

        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_sst.c", 6934),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, sIntroVanishDList);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_sst.c", 6941);

    SkinMatrix_Vec3fMtxFMultXYZ(&globalCtx->mf_11D60, &this->actor.posRot2.pos, &this->center);
    BossSst_DrawEffect(&this->actor, globalCtx);
}

void BossSst_SpawnHeadShadow(BossSst* this) {
    static Vec3f shadowOffset[] = {
        { 0.0f, 0.0f, 340.0f },
        { -160.0f, 0.0f, 250.0f },
        { 160.0f, 0.0f, 250.0f },
    };
    s32 pad;
    s32 i;
    f32 sn;
    f32 cs;

    this->effectMode = BONGO_SHADOW;
    sn = Math_Sins(this->actor.shape.rot.y);
    cs = Math_Coss(this->actor.shape.rot.y);

    for (i = 0; i < 3; i++) {
        BossSstEffect* shadow = &this->effects[i];
        Vec3f* offset = &shadowOffset[i];

        shadow->pos.x = this->actor.posRot.pos.x + (sn * offset->z) + (cs * offset->x);
        shadow->pos.y = 0.0f;
        shadow->pos.z = this->actor.posRot.pos.z + (cs * offset->z) - (sn * offset->x);

        shadow->scale = 1450;
        shadow->alpha = 254;
        shadow->status = 65;
    }

    this->effects[3].status = -1;
}

void BossSst_SpawnHandShadow(BossSst* this) {
    this->effectMode = BONGO_SHADOW;
    this->effects[0].pos.x = this->actor.posRot.pos.x + (Math_Coss(this->actor.shape.rot.y) * 30.0f * this->parity);
    this->effects[0].pos.z = this->actor.posRot.pos.z - (Math_Sins(this->actor.shape.rot.y) * 30.0f * this->parity);
    this->effects[0].pos.y = this->actor.posRot.pos.y;
    this->effects[0].scale = 2300;
    this->effects[0].alpha = 254;
    this->effects[0].status = 5;
    this->effects[1].status = -1;
}

void BossSst_SpawnShockwave(BossSst* this) {
    s32 i;
    s32 scale = 120;
    s32 alpha = 250;

    Audio_PlayActorSound2(&this->actor, NA_SE_EN_SHADEST_HAND_WAVE);
    this->effectMode = BONGO_SHOCKWAVE;

    for (i = 0; i < 3; i++) {
        BossSstEffect* shockwave = &this->effects[i];

        Math_Vec3f_Copy(&shockwave->pos, &this->actor.posRot.pos);
        shockwave->move = (i + 9) * 2;
        shockwave->scale = scale;
        shockwave->alpha = alpha / shockwave->move;
        scale -= 50;
        alpha -= 25;
    }
}

void BossSst_SpawnIceCrystal(BossSst* this, s32 index) {
    BossSstEffect* ice = &this->effects[index];
    Sphere16* sphere;

    if (index < 11) {
        sphere = &this->colliderJntSph.list[index].dim.worldSphere;

        ice->pos.x = sphere->center.x;
        ice->pos.y = sphere->center.y;
        ice->pos.z = sphere->center.z;
        if (index == 0) {
            ice->pos.x -= 25.0f;
            ice->pos.y -= 25.0f;
            ice->pos.z -= 25.0f;
        }
    } else {
        sphere = &this->colliderJntSph.list[0].dim.worldSphere;

        ice->pos.x = ((((index - 11) & 1) ? 1 : -1) * 25.0f) + sphere->center.x;
        ice->pos.y = ((((index - 11) & 2) ? 1 : -1) * 25.0f) + sphere->center.y;
        ice->pos.z = ((((index - 11) & 4) ? 1 : -1) * 25.0f) + sphere->center.z;
    }

    ice->pos.x -= this->actor.posRot.pos.x;
    ice->pos.y -= this->actor.posRot.pos.y;
    ice->pos.z -= this->actor.posRot.pos.z;

    ice->status = false;

    ice->rot.x = Math_Rand_ZeroOne() * 0x10000;
    ice->rot.y = Math_Rand_ZeroOne() * 0x10000;
    ice->rot.z = Math_Rand_ZeroOne() * 0x10000;

    ice->alpha = 120;
    ice->move = true;

    ice->vel.x = (Math_Rand_ZeroOne() * 0.06f + 0.12f) * ice->pos.x;
    ice->vel.y = (Math_Rand_ZeroOne() * 15.0f + 5.0f);
    ice->vel.z = (Math_Rand_ZeroOne() * 0.06f + 0.12f) * ice->pos.z;
    ice->scale = 4000;

    if ((index & 1) == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_PL_FREEZE_S);
    }
}

void BossSst_SpawnIceShard(BossSst* this) {
    s32 i;
    Vec3f spawnPos;
    f32 offXZ;

    this->effectMode = BONGO_ICE;
    offXZ = Math_Coss(this->actor.shape.rot.x) * 50.0f;
    spawnPos.x = Math_Coss(this->actor.shape.rot.y) * offXZ + this->actor.posRot.pos.x;
    spawnPos.y = Math_Sins(this->actor.shape.rot.x) * 50.0f + this->actor.posRot.pos.y - 10.0f;
    spawnPos.z = Math_Sins(this->actor.shape.rot.y) * offXZ + this->actor.posRot.pos.z;

    for (i = 0; i < 18; i++) {
        BossSstEffect* ice = &this->effects[i];

        Math_Vec3f_Copy(&ice->pos, &spawnPos);
        ice->status = true;
        ice->rot.x = Math_Rand_ZeroOne() * 0x10000;
        ice->rot.y = Math_Rand_ZeroOne() * 0x10000;
        ice->rot.z = Math_Rand_ZeroOne() * 0x10000;

        ice->alpha = 120;
        ice->move = true;

        ice->vel.x = Math_Rand_CenteredFloat(20.0f);
        ice->vel.y = Math_Rand_ZeroOne() * 10.0f + 3.0f;
        ice->vel.z = Math_Rand_CenteredFloat(20.0f);

        ice->scale = Math_Rand_ZeroOne() * 200.0f + 400.0f;
    }
}

void BossSst_IceShatter(BossSst* this) {
    s32 i;

    this->effects[0].status = 1;
    Audio_PlayActorSound2(&this->actor, NA_SE_PL_ICE_BROKEN);

    for (i = 0; i < 18; i++) {
        BossSstEffect* ice = &this->effects[i];

        if (ice->move) {
            ice->pos.x += this->actor.posRot.pos.x;
            ice->pos.y += this->actor.posRot.pos.y;
            ice->pos.z += this->actor.posRot.pos.z;
        }
    }
}

void BossSst_UpdateEffect(Actor* thisx, GlobalContext* globalCtx) {
    BossSst* this = THIS;
    BossSstEffect* effect;
    s32 i;
    s32 scale;
    s32 pad;

    if (this->effectMode != BONGO_NULL) {
        if (this->effectMode == BONGO_ICE) {
            if (this->effects[0].status) {
                for (i = 0; i < 18; i++) {
                    effect = &this->effects[i];

                    if (effect->move) {
                        effect->pos.x += effect->vel.x;
                        effect->pos.y += effect->vel.y;
                        effect->pos.z += effect->vel.z;
                        effect->alpha -= 3;
                        effect->vel.y -= 1.0f;
                        effect->rot.x += 0xD00;
                        effect->rot.y += 0x1100;
                        effect->rot.z += 0x1500;
                    }
                }
            }
            if (this->effects[0].alpha == 0) {
                this->effectMode = BONGO_NULL;
            }
        } else if (this->effectMode == BONGO_SHOCKWAVE) {
            for (i = 0; i != 3; i++) {
                effect = &this->effects[i];

                scale = effect->move * 2;
                effect->scale += CLAMP_MAX(scale, 20) + i;
                DECR(effect->move);
            }

            if (this->effects[0].move == 0) {
                this->effectMode = BONGO_NULL;
            }
        } else if (this->effectMode == BONGO_SHADOW) {
            effect = &this->effects[0];

            if (this->actor.params == BONGO_HEAD) {
                SkinMatrix_Vec3fMtxFMultXYZ(&globalCtx->mf_11D60, &this->actor.posRot2.pos, &this->center);
                BossSst_HeadSfx(this, NA_SE_EN_SHADEST_LAST - SFX_FLAG);
            }
            while (effect->status != -1) {
                if (effect->status == 0) {
                    effect->alpha -= 2;
                } else {
                    effect->scale += effect->status;
                }

                effect->scale = CLAMP_MAX(effect->scale, 10000);
                effect++;
            }
        }
    }
}

void BossSst_DrawEffect(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BossSst* this = THIS;
    s32 i;
    BossSstEffect* effect;

    if (this->effectMode != BONGO_NULL) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_sst.c", 7302);

        func_80093D84(globalCtx->state.gfxCtx);
        if (this->effectMode == BONGO_ICE) {
            gSPSegment(POLY_XLU_DISP++, 0x08,
                       Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, globalCtx->gameplayFrames % 256, 0x20, 0x10, 1,
                                        0, (globalCtx->gameplayFrames * 2) % 256, 0x40, 0x20));
            gDPSetEnvColor(POLY_XLU_DISP++, 0, 50, 100, this->effects[0].alpha);
            gSPDisplayList(POLY_XLU_DISP++, D_06017EE0);

            for (i = 0; i < 18; i++) {
                effect = &this->effects[i];
                if (effect->move) {
                    func_8003435C(&effect->pos, globalCtx);
                    if (this->effects[0].status) {
                        Matrix_Translate(effect->pos.x, effect->pos.y, effect->pos.z, MTXMODE_NEW);
                    } else {
                        Matrix_Translate(effect->pos.x + this->actor.posRot.pos.x,
                                         effect->pos.y + this->actor.posRot.pos.y,
                                         effect->pos.z + this->actor.posRot.pos.z, MTXMODE_NEW);
                    }

                    Matrix_RotateRPY(effect->rot.x, effect->rot.y, effect->rot.z, 1);
                    Matrix_Scale(effect->scale * 0.001f, effect->scale * 0.001f, effect->scale * 0.001f, MTXMODE_APPLY);

                    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_sst.c", 7350),
                              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                    gSPDisplayList(POLY_XLU_DISP++, D_06017F80);
                }
            }
        } else if (this->effectMode == BONGO_SHOCKWAVE) {
            f32 scaleY = 0.005f;

            gDPPipeSync(POLY_XLU_DISP++);
            gSPSegment(POLY_XLU_DISP++, 0x08,
                       Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, globalCtx->gameplayFrames % 128, 0, 0x20, 0x40, 1,
                                        0, (globalCtx->gameplayFrames * -15) % 256, 0x20, 0x40));

            for (i = 0; i < 3; i++, scaleY -= 0.001f) {
                effect = &this->effects[i];

                if (effect->move != 0) {
                    Matrix_Translate(effect->pos.x, effect->pos.y, effect->pos.z, 0);
                    Matrix_Scale(effect->scale * 0.001f, scaleY, effect->scale * 0.001f, MTXMODE_APPLY);

                    gDPPipeSync(POLY_XLU_DISP++);
                    gDPSetPrimColor(POLY_XLU_DISP++, 0x80, 0x80, 30, 0, 30, effect->alpha * effect->move);
                    gDPSetEnvColor(POLY_XLU_DISP++, 30, 0, 30, 0);
                    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_sst.c", 7396),
                              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                    gSPDisplayList(POLY_XLU_DISP++, D_040184B0);
                }
            }
        } else if (this->effectMode == BONGO_SHADOW) {
            gDPSetPrimColor(POLY_XLU_DISP++, 0x00, 0x80, 10, 10, 80, 0);
            gDPSetEnvColor(POLY_XLU_DISP++, 10, 10, 10, this->effects[0].alpha);

            effect = &this->effects[0];
            while (effect->status != -1) {
                Matrix_Translate(effect->pos.x, effect->pos.y, effect->pos.z, 0);
                Matrix_Scale(effect->scale * 0.001f, 1.0f, effect->scale * 0.001f, MTXMODE_APPLY);

                gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_sst.c", 7423),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(POLY_XLU_DISP++, sShadowDList);
                effect++;
            }
        }

        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_sst.c", 7433);
    }
}
