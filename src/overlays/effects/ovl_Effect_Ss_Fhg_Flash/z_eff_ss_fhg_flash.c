/*
 * File: z_eff_ss_fhg_flash.c
 * Overlay: ovl_Effect_Ss_Fhg_Flash
 * Description: Phantom Ganons lightning
 */

#include "z_eff_ss_fhg_flash.h"
#include "overlays/actors/ovl_Boss_Ganondrof/z_boss_ganondrof.h"

typedef enum {
    /* 0x00 */ SS_FHG_FLASH_0,
    /* 0x01 */ SS_FHG_FLASH_1,
    /* 0x02 */ SS_FHG_FLASH_2,
    /* 0x03 */ SS_FHG_FLASH_3,
    /* 0x04 */ SS_FHG_FLASH_4,
    /* 0x05 */ SS_FHG_FLASH_5,
    /* 0x06 */ SS_FHG_FLASH_6,
    /* 0x07 */ SS_FHG_FLASH_7,
    /* 0x08 */ SS_FHG_FLASH_SCALE,
    /* 0x09 */ SS_FHG_FLASH_9,
    /* 0x0A */ SS_FHG_FLASH_A,
    /* 0x0B */ SS_FHG_FLASH_B,
    /* 0x0C */ SS_FHG_FLASH_C,
} EffectSsFhg_FlashRegs;

u32 EffectSsFhgFlash_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void func_809A49B8(GlobalContext* globalCtx, u32 index, EffectSs* this);
void func_809A4E28(GlobalContext* globalCtx, u32 index, EffectSs* this);
void func_809A4BE8(GlobalContext* globalCtx, u32 index, EffectSs* this);
void func_809A4EC0(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_Fhg_Flash_InitVars = {
    EFFECT_SS_FHG_FLASH,
    EffectSsFhgFlash_Init,
};

Vec3f D_809A5088 = { 0.0f, 0.0f, 0.0f };

Vec3f D_809A5094 = { 0.0f, -1000.0f, 0.0f };

Color_RGB8 D_809A50A0[] = { { 165, 255, 61 }, { 0, 255, 255 }, { 255, 40, 0 }, { 255, 255, 0 }, { 0, 0, 255 },
                            { 255, 0, 255 },  { 255, 150, 0 }, { 0, 0, 0 },    { 0, 0, 0 } };

Vtx D_809A50C0[] = {
    VTX(-10, -10, 0, 0, 1024, 0xFF, 0xFF, 0xFF, 0xFF),
    VTX(10, -10, 0, 1024, 1024, 0xFF, 0xFF, 0xFF, 0xFF),
    VTX(10, 10, 0, 1024, 0, 0xFF, 0xFF, 0xFF, 0xFF),
    VTX(-10, 10, 0, 0, 0, 0xFF, 0xFF, 0xFF, 0xFF),
};

UNK_TYPE extern D_809A5178[];

Gfx D_809A5100[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(D_809A5178, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0, 0, 0,
                       COMBINED),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(D_809A50C0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

UNK_TYPE D_809A5178[] = {
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x005B3000, 0x00000000, 0x00000000,
    0x00000000, 0x000B0000, 0x07000000, 0x00000000, 0x00000000, 0x005BB64B, 0x3A000000, 0x00000000, 0x00000000,
    0x005B0000, 0x00000000, 0x00000000, 0x00000000, 0x001E00B6, 0xFF5B0000, 0x00000000, 0x00000000, 0x00251F0C,
    0x07000000, 0x0A000000, 0x00000000, 0x00000000, 0xB6FF0000, 0x00000000, 0x00000000, 0x00255B00, 0x071F1E14,
    0x0A000000, 0x00000000, 0x00000000, 0x00457350, 0x00000000, 0x00000000, 0x00295B8C, 0x5B5B0000, 0x00000000,
    0x00000000, 0x00000000, 0x00455C39, 0x0F000000, 0x00000000, 0x0000A1FF, 0x5B000000, 0x00000000, 0x00000000,
    0x00000000, 0x005B5B00, 0x00000000, 0x00000000, 0x005B311C, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x5BB60000, 0x00000000, 0x00000000, 0x5BB63100, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0xFFB60000,
    0x00000000, 0x00000046, 0xEA310000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x0072B646, 0x00000000,
    0x0000B6A1, 0x81000000, 0x00000000, 0x00000000, 0x00000000, 0x000C0000, 0x00172E19, 0xBDAB5D41, 0x366BEAEA,
    0x81000000, 0x00000000, 0x00000000, 0x00000000, 0x06000000, 0x00000074, 0xFFFF0500, 0x0A2342B6, 0xFF000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x005B0000, 0x03030100, 0x00FF0700, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00020503, 0x00000000, 0x00466200, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00076200, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00002962, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00003EA1, 0x62000000, 0x00000000, 0x00000000, 0x0000002E, 0xB6350000,
    0x00000000, 0x00000000, 0x000000EA, 0x46000000, 0x00000000, 0x00000000, 0x00002EFF, 0xFF5A0000, 0x00000000,
    0x00000000, 0x000000FF, 0xFF001700, 0x00000000, 0x00000000, 0x01015BFF, 0xA1A10000, 0x00000000, 0x00000000,
    0x00030046, 0x97732100, 0x00000000, 0x00000000, 0x040CB65E, 0x4A5B4600, 0x00000000, 0x00000003, 0x0C0E8C46,
    0x1C035C00, 0x00000000, 0x00000017, 0x134F5B00, 0x00000046, 0x46000000, 0x00000000, 0x34D20000, 0x0401005B,
    0x00000000, 0x00000000, 0x5BB60000, 0x00000000, 0x30FCB600, 0x0000A1E7, 0x00000001, 0x0100141E, 0x5B000000,
    0x00000000, 0x00000000, 0x00000000, 0x0000A1FF, 0x5B46FF00, 0x00000100, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x000000FC, 0xFFA13100, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0xB6000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
};

extern Gfx D_06012160[];

u32 EffectSsFhgFlash_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsFhgFlashInitParams* initParams = (EffectSsFhgFlashInitParams*)initParamsx;
    s32 pad;
    s32 objBankIdx;
    Vec3f sp40 = D_809A5088;
    Vec3f sp34 = D_809A5094;
    u32 oldSeg6;
    Vec3f sp24;

    if (initParams->unk_2C == 0) {
        objBankIdx = Object_GetIndex(&globalCtx->objectCtx, OBJECT_FHG);

        if ((objBankIdx >= 0) && (Object_IsLoaded(&globalCtx->objectCtx, objBankIdx))) {
            oldSeg6 = gSegments[6];
            gSegments[6] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.status[objBankIdx].segment);
            this->regs[SS_FHG_FLASH_2] = objBankIdx;
            this->pos = initParams->pos;
            this->velocity = initParams->velocity;
            this->accel = initParams->accel;
            this->regs[SS_FHG_FLASH_4] = initParams->unk_26;
            this->life = 100;
            this->regs[SS_FHG_FLASH_SCALE] = initParams->unk_24;
            this->regs[SS_FHG_FLASH_0] = 0xFF;
            this->draw = func_809A49B8;
            this->update = func_809A4E28;
            this->gfx = SEGMENTED_TO_VIRTUAL(D_06012160);
            gSegments[6] = oldSeg6;
        } else {
            osSyncPrintf("Effect_Ss_Fhg_Flash_ct():pffd->modeエラー\n");
            return 0;
        }
    } else {
        this->actor = initParams->unk_28;
        sp24 = sp40;
        this->accel = sp24;
        this->velocity = sp24;
        this->life = (s16)(Math_Rand_ZeroOne() * 10.0f) + 111;
        this->regs[SS_FHG_FLASH_SCALE] = (s16)Math_Rand_ZeroFloat(initParams->unk_24) + initParams->unk_24;
        this->regs[SS_FHG_FLASH_0] = 0xFF;
        this->draw = func_809A4BE8;
        this->update = func_809A4EC0;
        this->regs[SS_FHG_FLASH_4] = initParams->unk_26;

        if (initParams->unk_26 != 0) {
            this->pos = sp34;
            this->gfx = SEGMENTED_TO_VIRTUAL(D_809A5100);
        } else {
            this->pos = initParams->pos;
            this->gfx = SEGMENTED_TO_VIRTUAL(D_809A5100);
        }
    }
    return 1;
}

void func_809A49B8(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    s32 pad;
    f32 scale;
    void* object;

    scale = this->regs[SS_FHG_FLASH_SCALE] / 100.0f;
    object = globalCtx->objectCtx.status[this->regs[SS_FHG_FLASH_2]].segment;

    OPEN_DISPS(gfxCtx, "../z_eff_fhg_flash.c", 268);

    Matrix_Translate(this->pos.x, this->pos.y, this->pos.z, 0);
    Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
    gSegments[6] = VIRTUAL_TO_PHYSICAL(object);
    gSPSegment(oGfxCtx->polyXlu.p++, 0x06, object);
    func_80093D84(globalCtx->state.gfxCtx);
    gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, 255, 255, 255, this->regs[SS_FHG_FLASH_0]);
    gDPSetEnvColor(oGfxCtx->polyXlu.p++, D_809A50A0[this->regs[SS_FHG_FLASH_4]].r,
                   D_809A50A0[this->regs[SS_FHG_FLASH_4]].g, D_809A50A0[this->regs[SS_FHG_FLASH_4]].b, 0);
    gDPPipeSync(oGfxCtx->polyXlu.p++);
    func_800D1FD4(&globalCtx->mf_11DA0);
    Matrix_RotateZ((this->regs[SS_FHG_FLASH_3] / 32768.0f) * 3.1416f, MTXMODE_APPLY); // pi?
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(gfxCtx, "../z_eff_fhg_flash.c", 326),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(oGfxCtx->polyXlu.p++, this->gfx);

    CLOSE_DISPS(gfxCtx, "../z_eff_fhg_flash.c", 330);
}

void func_809A4BE8(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    s32 pad;
    f32 scale;

    scale = this->regs[SS_FHG_FLASH_SCALE] / 100.0f;

    OPEN_DISPS(gfxCtx, "../z_eff_fhg_flash.c", 346);

    Matrix_Translate(this->pos.x, this->pos.y, this->pos.z, MTXMODE_NEW);
    Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);

    if (this->regs[SS_FHG_FLASH_4] != 0) {
        func_80094044(globalCtx->state.gfxCtx);
        Matrix_RotateX((this->regs[SS_FHG_FLASH_3] / 32768.0f) * 1.1416f, MTXMODE_APPLY);
        gDPSetRenderMode(oGfxCtx->polyXlu.p++, G_RM_PASS, G_RM_AA_ZB_XLU_DECAL2);
    } else {
        func_80093D84(globalCtx->state.gfxCtx);
        func_800D1FD4(&globalCtx->mf_11DA0);
        gDPSetRenderMode(oGfxCtx->polyXlu.p++, G_RM_PASS, G_RM_AA_ZB_XLU_SURF2);
    }

    gDPPipeSync(oGfxCtx->polyXlu.p++);
    gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, 255, 255, 255, this->regs[SS_FHG_FLASH_0]);
    gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0, 255, 155, 0);
    Matrix_RotateZ((this->regs[SS_FHG_FLASH_3] / 32768.0f) * 3.1416f, MTXMODE_APPLY);
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(gfxCtx, "../z_eff_fhg_flash.c", 395),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(oGfxCtx->polyXlu.p++, this->gfx);

    CLOSE_DISPS(gfxCtx, "../z_eff_fhg_flash.c", 399);
}

void func_809A4E28(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    s16 rand = (Math_Rand_ZeroOne() * 20000.0f);

    this->regs[SS_FHG_FLASH_3] = (this->regs[SS_FHG_FLASH_3] + rand) + 0x4000;

    if (this->regs[SS_FHG_FLASH_SCALE] > 0) {
        this->regs[SS_FHG_FLASH_SCALE] -= 10;

        if (this->regs[SS_FHG_FLASH_SCALE] <= 0) {
            this->regs[SS_FHG_FLASH_SCALE] = 0;
            this->life = 0;
        }
    }

    if (this->regs[SS_FHG_FLASH_0] > 0) {
        this->regs[SS_FHG_FLASH_0] -= 10;

        if (this->regs[SS_FHG_FLASH_0] <= 0) {
            this->regs[SS_FHG_FLASH_0] = 0;
        }
    }
}

void func_809A4EC0(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    s16 randomLimb;
    Player* player;
    BossGanondrof* phantomGanon;
    s16 rand;

    rand = (Math_Rand_ZeroOne() * 20000.0f);
    this->regs[SS_FHG_FLASH_3] = (this->regs[SS_FHG_FLASH_3] + rand) + 0x4000;

    if (this->regs[SS_FHG_FLASH_4] == 1) {
        player = PLAYER;
        randomLimb = Math_Rand_ZeroFloat(17.9f);
        this->pos.x = player->unk_908[randomLimb].x + Math_Rand_CenteredFloat(10.0f);
        this->pos.y = player->unk_908[randomLimb].y + Math_Rand_CenteredFloat(15.0f);
        this->pos.z = player->unk_908[randomLimb].z + Math_Rand_CenteredFloat(10.0f);
    } else if (this->regs[SS_FHG_FLASH_4] == 2) {
        phantomGanon = (BossGanondrof*)this->actor;
        randomLimb = Math_Rand_ZeroFloat(23.9f);
        this->pos.x = phantomGanon->limbPos[randomLimb].x + Math_Rand_CenteredFloat(15.0f);
        this->pos.y = phantomGanon->limbPos[randomLimb].y + Math_Rand_CenteredFloat(20.0f);
        this->pos.z = phantomGanon->limbPos[randomLimb].z + Math_Rand_CenteredFloat(15.0f);
    }

    if (this->life < 100) {
        this->regs[SS_FHG_FLASH_0] -= 50;

        if (this->regs[SS_FHG_FLASH_0] < 0) {
            this->regs[SS_FHG_FLASH_0] = 0;
            this->life = 0;
        }
    }
}
