/*
 * File: z_eff_ss_sibuki.c
 * Overlay: ovl_Effect_Ss_Sibuki
 * Description:
 */

#include "z_eff_ss_sibuki.h"

typedef enum {
    /* 0x00 */ SS_SIBUKI_PRIM_R,
    /* 0x01 */ SS_SIBUKI_PRIM_G,
    /* 0x02 */ SS_SIBUKI_PRIM_B,
    /* 0x03 */ SS_SIBUKI_PRIM_A,
    /* 0x04 */ SS_SIBUKI_ENV_R,
    /* 0x05 */ SS_SIBUKI_ENV_G,
    /* 0x06 */ SS_SIBUKI_ENV_B,
    /* 0x07 */ SS_SIBUKI_ENV_A,
    /* 0x08 */ SS_SIBUKI_8,
    /* 0x09 */ SS_SIBUKI_9,
    /* 0x0A */ SS_SIBUKI_SCALE
} EffectSsSibukiRegs;

u32 EffectSsSibuki_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void func_809AB7EC(GlobalContext* globalCtx, u32 index, EffectSs* this);
void func_809AB9DC(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_Sibuki_InitVars = {
    EFFECT_SS_SIBUKI,
    EffectSsSibuki_Init,
};

extern Gfx D_04055EB0[]; // not gfx?
extern Gfx D_04055DB0[];
extern Gfx D_0401A160[];

u32 EffectSsSibuki_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsSibukiInitParams* initParams = (EffectSsSibukiInitParams*)initParamsx;

    this->pos = initParams->pos;
    this->velocity = initParams->velocity;
    this->accel = initParams->accel;

    if (KREG(2) != 0) {
        this->displayList = SEGMENTED_TO_VIRTUAL(D_04055EB0);
    } else {
        this->displayList = SEGMENTED_TO_VIRTUAL(D_04055DB0);
    }

    this->life = ((s16)((Math_Rand_ZeroOne() * (500.0f + KREG(64))) * 0.01f)) + KREG(65) + 10;
    this->regs[SS_SIBUKI_8] = initParams->unk_24 + 1;
    this->draw = func_809AB7EC;
    this->update = func_809AB9DC;
    this->regs[SS_SIBUKI_9] = initParams->unk_26;
    this->regs[SS_SIBUKI_SCALE] = initParams->unk_28;
    this->regs[SS_SIBUKI_PRIM_R] = 100;
    this->regs[SS_SIBUKI_PRIM_G] = 100;
    this->regs[SS_SIBUKI_PRIM_B] = 100;
    this->regs[SS_SIBUKI_PRIM_A] = 100;
    this->regs[SS_SIBUKI_ENV_R] = 255;
    this->regs[SS_SIBUKI_ENV_G] = 255;
    this->regs[SS_SIBUKI_ENV_B] = 255;
    this->regs[SS_SIBUKI_ENV_A] = 255;

    return 1;
}

void func_809AB7EC(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    f32 scale;

    scale = this->regs[SS_SIBUKI_SCALE] / 100.0f;

    OPEN_DISPS(gfxCtx, "../z_eff_ss_sibuki.c", 163);

    Matrix_Translate(this->pos.x, this->pos.y, this->pos.z, MTXMODE_NEW);
    Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
    gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(gfxCtx, "../z_eff_ss_sibuki.c", 176),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    func_80093D18(gfxCtx);
    gDPSetPrimColor(oGfxCtx->polyOpa.p++, 0, 0, this->regs[SS_SIBUKI_PRIM_R], this->regs[SS_SIBUKI_PRIM_G],
                    this->regs[SS_SIBUKI_PRIM_B], this->regs[SS_SIBUKI_PRIM_A]);
    gDPSetEnvColor(oGfxCtx->polyOpa.p++, this->regs[SS_SIBUKI_ENV_R], this->regs[SS_SIBUKI_ENV_G],
                   this->regs[SS_SIBUKI_ENV_B], this->regs[SS_SIBUKI_ENV_A]);
    gSPSegment(oGfxCtx->polyOpa.p++, 0x08, this->displayList);
    gSPDisplayList(oGfxCtx->polyOpa.p++, SEGMENTED_TO_VIRTUAL(D_0401A160));

    CLOSE_DISPS(gfxCtx, "../z_eff_ss_sibuki.c", 198);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Sibuki/func_809AB9DC.s")
/*
void func_809AB9DC(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    s16 sp2E;
    f32 temp_f2;
    Player* player = PLAYER;

    if (this->pos.y <= player->actor.groundY) {
        this->life = 0;
    }

    if (this->regs[SS_SIBUKI_8] != 0) {
        this->regs[SS_SIBUKI_8]--;

        if (this->regs[SS_SIBUKI_8] == 0) {
            sp2E = func_8005A948(Gameplay_GetCamera(globalCtx, 0));

            temp_f2 = ((KREG(23) + 20.0f) * (0.1f * Math_Rand_ZeroOne())) + ((200.0f + KREG(20)) * 0.01f);

            if (this->regs[SS_SIBUKI_9] != 0) {
                temp_f2 *= -1.0f;
            }

            this->velocity.x = Math_Coss(sp2E) * temp_f2;
            this->velocity.z = -Math_Sins(sp2E) * temp_f2;

            this->velocity.y = ((KREG(24) + 20.0f) * (0.1f * Math_Rand_ZeroOne())) + ((700.0f + KREG(21)) * 0.01f);

            this->accel.y = (KREG(25) * (0.1f * Math_Rand_ZeroOne())) + ((-100.0f + KREG(22)) * 0.01f);

            if (KREG(3) != 0) {
                this->velocity.x *= (KREG(3) * 0.01f);
                this->velocity.y *= (KREG(3) * 0.01f);
                this->velocity.z *= (KREG(3) * 0.01f);
                this->accel.y *= (KREG(4) * 0.01f);
            }
        }
    } else {
        if (this->regs[SS_SIBUKI_SCALE] != 0) {
            this->regs[SS_SIBUKI_SCALE] = (this->regs[SS_SIBUKI_SCALE] - KREG(26)) - 3;
        }
    }
}
*/