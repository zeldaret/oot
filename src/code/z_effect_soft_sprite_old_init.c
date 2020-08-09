#include <ultra64.h>
#include <global.h>
#include "overlays/effects/ovl_Effect_Ss_Dust/z_eff_ss_dust.h"
#include "overlays/effects/ovl_Effect_Ss_Bomb/z_eff_ss_bomb.h"
#include "overlays/effects/ovl_Effect_Ss_Bomb2/z_eff_ss_bomb2.h"
#include "overlays/effects/ovl_Effect_Ss_Blast/z_eff_ss_blast.h"
#include "overlays/effects/ovl_Effect_Ss_G_Spk/z_eff_ss_g_spk.h"
#include "overlays/effects/ovl_Effect_Ss_Solder_Srch_Ball/z_eff_ss_solder_srch_ball.h"
#include "overlays/effects/ovl_Effect_Ss_Fhg_Flash/z_eff_ss_fhg_flash.h"
#include "overlays/effects/ovl_Effect_Ss_Dead_Sound/z_eff_ss_dead_sound.h"

extern Color_RGBA8 D_801158DC;
extern Color_RGBA8 D_801158E0;
extern Color_RGBA8 D_801158E4;
extern Color_RGBA8 D_801158E8;
extern Color_RGBA8 D_801158EC;
extern Color_RGBA8 D_801158F0;
extern Color_RGBA8 D_801158F4;
extern Color_RGBA8 D_801158F8;

// sEmptyVec
extern Vec3f D_801158C0; // empty vector that seems to be used as a dummy when a specific field isnt needed

extern Color_RGBA8_n D_801158CC;
extern Color_RGBA8_n D_801158D0;

// Draw utility for some G effects

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_80027F80.s")

// EffectSsDust Spawn Functions

void EffectSsDust_Spawn(GlobalContext* globalCtx, u16 drawFlags, Vec3f* pos, Vec3f* velocity, Vec3f* accel,
                        Color_RGBA8_n* primColor, Color_RGBA8_n* envColor, s16 scale, s16 scaleStep, s16 life,
                        u8 updateMode) {
    EffectSsDustInitParams initParams;

    Math_Vec3f_Copy(&initParams.pos, pos);
    Math_Vec3f_Copy(&initParams.velocity, velocity);
    Math_Vec3f_Copy(&initParams.accel, accel);
    initParams.primColor = *primColor;
    initParams.envColor = *envColor;
    initParams.drawFlags = drawFlags;
    initParams.scale = scale;
    initParams.scaleStep = scaleStep;
    initParams.life = life;
    initParams.updateMode = updateMode;
    EffectSs_Spawn(globalCtx, EFFECT_SS_DUST, 128, &initParams);
}

void func_8002829C(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, Color_RGBA8_n* primColor,
                   Color_RGBA8_n* envColor, s16 scale, s16 scaleStep) {
    EffectSsDust_Spawn(globalCtx, 0, pos, velocity, accel, primColor, envColor, scale, scaleStep, 10, 0);
}

void func_80028304(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, Color_RGBA8_n* primColor,
                   Color_RGBA8_n* envColor, s16 scale, s16 scaleStep) {
    EffectSsDust_Spawn(globalCtx, 1, pos, velocity, accel, primColor, envColor, scale, scaleStep, 10, 0);
}

void func_8002836C(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, Color_RGBA8_n* primColor,
                   Color_RGBA8_n* envColor, s16 scale, s16 scaleStep, s16 life) {
    EffectSsDust_Spawn(globalCtx, 0, pos, velocity, accel, primColor, envColor, scale, scaleStep, life, 0);
}

void func_800283D4(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, Color_RGBA8_n* primColor,
                   Color_RGBA8_n* envColor, s16 scale, s16 scaleStep, s16 life) {
    EffectSsDust_Spawn(globalCtx, 1, pos, velocity, accel, primColor, envColor, scale, scaleStep, life, 0);
}

void func_8002843C(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, Color_RGBA8_n* primColor,
                   Color_RGBA8_n* envColor, s16 scale, s16 scaleStep, s16 life) {
    EffectSsDust_Spawn(globalCtx, 2, pos, velocity, accel, primColor, envColor, scale, scaleStep, life, 0);
}

// unused
void func_800284A4(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, Color_RGBA8_n* primColor,
                   Color_RGBA8_n* envColor, s16 scale, s16 scaleStep) {
    EffectSsDust_Spawn(globalCtx, 0, pos, velocity, accel, primColor, envColor, scale, scaleStep, 10, 1);
}

// unused
void func_80028510(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, Color_RGBA8_n* primColor,
                   Color_RGBA8_n* envColor, s16 scale, s16 scaleStep) {
    EffectSsDust_Spawn(globalCtx, 1, pos, velocity, accel, primColor, envColor, scale, scaleStep, 10, 1);
}

void func_8002857C(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel) {
    EffectSsDust_Spawn(globalCtx, 4, pos, velocity, accel, &D_801158CC, &D_801158D0, 100, 5, 10, 0);
}

// unused
void func_800285EC(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel) {
    EffectSsDust_Spawn(globalCtx, 5, pos, velocity, accel, &D_801158CC, &D_801158D0, 100, 5, 10, 0);
}

void func_8002865C(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 scale, s16 scaleStep) {
    EffectSsDust_Spawn(globalCtx, 4, pos, velocity, accel, &D_801158CC, &D_801158D0, scale, scaleStep, 10, 0);
}

void func_800286CC(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 scale, s16 scaleStep) {
    EffectSsDust_Spawn(globalCtx, 5, pos, velocity, accel, &D_801158CC, &D_801158D0, scale, scaleStep, 10, 0);
}

void func_8002873C(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 scale, s16 scaleStep,
                   s16 life) {
    EffectSsDust_Spawn(globalCtx, 4, pos, velocity, accel, &D_801158CC, &D_801158D0, scale, scaleStep, life, 0);
}

void func_800287AC(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 scale, s16 scaleStep,
                   s16 life) {
    EffectSsDust_Spawn(globalCtx, 5, pos, velocity, accel, &D_801158CC, &D_801158D0, scale, scaleStep, life, 0);
}

void func_8002881C(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, Color_RGBA8_n* primColor,
                   Color_RGBA8_n* envColor) {
    func_8002829C(globalCtx, pos, velocity, accel, primColor, envColor, 100, 5);
}

// unused
void func_80028858(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, Color_RGBA8_n* primColor,
                   Color_RGBA8_n* envColor) {
    func_80028304(globalCtx, pos, velocity, accel, primColor, envColor, 100, 5);
}

void func_80028894(Vec3f* srcPos, f32 randScale, Vec3f* newPos, Vec3f* velocity, Vec3f* accel) {
    s16 randAngle;
    f32 rand;

    rand = Math_Rand_ZeroOne() * randScale;
    randAngle = (Math_Rand_ZeroOne() * 65536.0f);

    *newPos = *srcPos;

    newPos->x += Math_Sins(randAngle) * rand;
    newPos->z += Math_Coss(randAngle) * rand;

    velocity->y = 1.0f;
    velocity->x = Math_Sins(randAngle);
    velocity->z = Math_Coss(randAngle);

    accel->x = 0.0f;
    accel->y = 0.0f;
    accel->z = 0.0f;
}

void func_80028990(GlobalContext* globalCtx, f32 randScale, Vec3f* srcPos) {
    s32 i;
    Vec3f pos;
    Vec3f velocity;
    Vec3f accel;

    for (i = 0; i < 20; i++) {
        func_80028894(srcPos, randScale, &pos, &velocity, &accel);
        func_8002873C(globalCtx, &pos, &velocity, &accel, 100, 30, 7);
    }
}

void func_80028A54(GlobalContext* globalCtx, f32 randScale, Vec3f* srcPos) {
    s32 i;
    Vec3f pos;
    Vec3f velocity;
    Vec3f accel;

    for (i = 0; i < 20; i++) {
        func_80028894(srcPos, randScale, &pos, &velocity, &accel);
        func_800287AC(globalCtx, &pos, &velocity, &accel, 100, 30, 7);
    }
}

// EffectSsKiraKira Spawn Functions

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_80028B18.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_80028B74.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_80028BB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_80028CEC.s")

// EffectSsBomb Spawn Functions

void EffectSsBomb_Spawn(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel) {
    EffectSsBombInitParams initParams;

    Math_Vec3f_Copy(&initParams.pos, pos);
    Math_Vec3f_Copy(&initParams.velocity, velocity);
    Math_Vec3f_Copy(&initParams.accel, accel);
    EffectSs_Spawn(globalCtx, EFFECT_SS_BOMB, 128, &initParams);
}

// EffectSsBomb2 Spawn Functions
// unused
void EffectSsBomb2_SpawnFade(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel) {
    EffectSsBomb2InitParams initParams;

    Math_Vec3f_Copy(&initParams.pos, pos);
    Math_Vec3f_Copy(&initParams.velocity, velocity);
    Math_Vec3f_Copy(&initParams.accel, accel);
    initParams.scale = 100;
    initParams.scaleStep = 0;
    initParams.drawMode = 0;
    EffectSs_Spawn(globalCtx, EFFECT_SS_BOMB2, 10, &initParams);
}

void EffectSsBomb2_SpawnLayered(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 scale,
                                s16 scaleStep) {
    EffectSsBomb2InitParams initParams;

    Math_Vec3f_Copy(&initParams.pos, pos);
    Math_Vec3f_Copy(&initParams.velocity, velocity);
    Math_Vec3f_Copy(&initParams.accel, accel);
    initParams.scale = scale;
    initParams.scaleStep = scaleStep;
    initParams.drawMode = 1;
    EffectSs_Spawn(globalCtx, EFFECT_SS_BOMB2, 10, &initParams);
}

// EffectSsBlast Spawn Functions

void EffectSsBlast_Spawn(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, Color_RGBA8* envColor,
                         Color_RGBA8* primColor, s16 radius, s16 radiusStep, s16 radiusStepDecr, s16 life) {
    EffectSsBlastParams initParams;

    Math_Vec3f_Copy(&initParams.pos, pos);
    Math_Vec3f_Copy(&initParams.velocity, velocity);
    Math_Vec3f_Copy(&initParams.accel, accel);
    Color_RGBA8_Copy(&initParams.envColor, envColor);
    Color_RGBA8_Copy(&initParams.primColor, primColor);
    initParams.radius = radius;
    initParams.radiusStep = radiusStep;
    initParams.radiusStepDecr = radiusStepDecr;
    initParams.life = life;
    EffectSs_Spawn(globalCtx, EFFECT_SS_BLAST, 128, &initParams);
}

void func_80028F84(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 radius, s16 radiusStep,
                   s16 life) {
    EffectSsBlast_Spawn(globalCtx, pos, velocity, accel, &D_801158DC, &D_801158E0, radius, radiusStep, 35, life);
}

void func_80028FD8(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, Color_RGBA8* envColor,
                   Color_RGBA8* primColor, s16 life) {
    EffectSsBlast_Spawn(globalCtx, pos, velocity, accel, envColor, primColor, 100, 375, 35, life);
}

void func_80029024(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel) {
    func_80028FD8(globalCtx, pos, velocity, accel, &D_801158E4, &D_801158E8, 10);
}

// EffectSsGSpk Spawn Functions

void func_80029060(GlobalContext* globalCtx, Actor* actor, Vec3f* pos, Vec3f* velocity, Vec3f* accel,
                   Color_RGBA8* envColor, Color_RGBA8* primColor, s16 scale, s16 scaleStep) {
    EffectSsGSpkInitParams initParams;

    Math_Vec3f_Copy(&initParams.pos, pos);
    Math_Vec3f_Copy(&initParams.velocity, velocity);
    Math_Vec3f_Copy(&initParams.accel, accel);
    Color_RGBA8_Copy(&initParams.primColor, envColor);
    Color_RGBA8_Copy(&initParams.envColor, primColor);
    initParams.actor = actor;
    initParams.scale = scale;
    initParams.scaleStep = scaleStep;
    initParams.updateMode = 0;
    EffectSs_Spawn(globalCtx, EFFECT_SS_G_SPK, 128, &initParams);
}

// unused
void func_800290F0(GlobalContext* globalCtx, Actor* actor, Vec3f* pos, Vec3f* velocity, Vec3f* accel,
                   Color_RGBA8* envColor, Color_RGBA8* primColor, s16 scale, s16 scaleStep) {
    EffectSsGSpkInitParams initParams;

    Math_Vec3f_Copy(&initParams.pos, pos);
    Math_Vec3f_Copy(&initParams.velocity, velocity);
    Math_Vec3f_Copy(&initParams.accel, accel);
    Color_RGBA8_Copy(&initParams.primColor, envColor);
    Color_RGBA8_Copy(&initParams.envColor, primColor);
    initParams.actor = actor;
    initParams.scale = scale;
    initParams.scaleStep = scaleStep;
    initParams.updateMode = 1;
    EffectSs_Spawn(globalCtx, EFFECT_SS_G_SPK, 128, &initParams);
}

void func_80029184(GlobalContext* globalCtx, Actor* actor, Vec3f* pos, Vec3f* velocity, Vec3f* accel) {
    Color_RGBA8 envColor = D_801158EC;  // probably inline when data is migrated
    Color_RGBA8 primColor = D_801158F0; // probably inline when data is migrated

    func_800292DC(globalCtx, actor, pos, velocity, accel, &envColor, &primColor);
}

// unused
void func_800291D8(GlobalContext* globalCtx, Actor* actor, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 scale,
                   s16 scaleStep) {
    Color_RGBA8 envColor = D_801158F4;  // probably inline when data is migrated
    Color_RGBA8 primColor = D_801158F8; // probably inline when data is migrated
    s32 randOffset;

    randOffset = (Math_Rand_ZeroOne() * 20.0f) - 10.0f;

    envColor.r += randOffset;
    envColor.g += randOffset;
    envColor.b += randOffset;
    envColor.a += randOffset;
    primColor.r += randOffset;
    primColor.g += randOffset;
    primColor.b += randOffset;
    primColor.a += randOffset;

    func_80029060(globalCtx, actor, pos, velocity, accel, &envColor, &primColor, scale, scaleStep);
}

void func_800292DC(GlobalContext* globalCtx, Actor* actor, Vec3f* pos, Vec3f* velocity, Vec3f* accel,
                   Color_RGBA8* envColor, Color_RGBA8* primColor) {
    func_80029060(globalCtx, actor, pos, velocity, accel, envColor, primColor, 100, 5);
}

// EffectSsDFire Spawn Functions

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_80029320.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_800293A0.s")

// EffectSsBubble Spawn Functions

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_800293E4.s")

// EffectSsGRipple Spawn Functions

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_80029444.s")

// EffectSsGSplash Spawn Functions

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_8002949C.s")

// EffectSsGMagma Spawn Functions

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_80029530.s")

// EffectSsGFire Spawn Functions

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_80029568.s")

// EffectSsLightning Spawn Functions

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_800295A0.s")

// EffectSsDtBubble Spawn Functions

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_80029618.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_80029694.s")

// EffectSsHahen Spawn Functions

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_80029724.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_800297A4.s")

// EffectSsStick Spawn Functions

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_800298EC.s")

// EffectSsSibuki Spawn Functions

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_8002993C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_800299AC.s")

// EffectSsSibuki2 Spawn Functions

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_80029B30.s")

// EffectSsGMagma2 Spawn Functions

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_80029B90.s")

// EffectSsStone1 Spawn Functions

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_80029C00.s")

// EffectSsHitMark Spawn Functions

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_80029C50.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_80029CA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_80029CC8.s")

void EffectSsFhgFlash_Spawn(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 arg4, u8 arg5) {
    EffectSsFhgFlashInitParams initParams;

    Math_Vec3f_Copy(&initParams.pos, pos);
    Math_Vec3f_Copy(&initParams.velocity, velocity);
    Math_Vec3f_Copy(&initParams.accel, accel);
    initParams.unk_24 = arg4;
    initParams.unk_26 = arg5;
    initParams.unk_2C = 0;

    EffectSs_Spawn(globalCtx, EFFECT_SS_FHG_FLASH, 128, &initParams);
}

void EffectSsFhgFlash_Spawn2(GlobalContext* globalCtx, Actor* arg1, Vec3f* pos, s16 arg3, u8 arg4) {
    EffectSsFhgFlashInitParams initParams;

    initParams.unk_28 = arg1;
    Math_Vec3f_Copy(&initParams.pos, pos);
    initParams.unk_24 = arg3;
    initParams.unk_26 = arg4;
    initParams.unk_2C = 1;
    EffectSs_Spawn(globalCtx, EFFECT_SS_FHG_FLASH, 128, &initParams);
}

// EffectSsKFire Spawn Functions

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_80029DBC.s")

// EffectSsSolderSrchBall Spawn Functions

void EffectSsSolderSrchBall_Spawn(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 arg4,
                                  s16* linkDetected) {
    EffectSsSolderSrchBallInitParams initParams;

    Math_Vec3f_Copy(&initParams.pos, pos);
    Math_Vec3f_Copy(&initParams.velocity, velocity);
    Math_Vec3f_Copy(&initParams.accel, accel);
    initParams.unk_24 = arg4;
    initParams.linkDetected = linkDetected;

    EffectSs_Spawn(globalCtx, EFFECT_SS_SOLDER_SRCH_BALL, 128, &initParams);
}

// EffectSsKakera Spawn Functions

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_80029E8C.s")

// EffectSsIcePiece Spawn Functions

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_80029F44.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_80029FAC.s")

// EffectSsEnIce Spawn Functions

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_8002A140.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_8002A1DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_8002A2A4.s")

// EffectSsFireTail Spawn Functions

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_8002A32C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_8002A3C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_8002A484.s")

// EffectSsEnFire Spawn Functions

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_8002A4D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_8002A54C.s")

// EffectSsExtra Spawn Functions

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_8002A5F4.s")

// EffectSsFCircle Spawn Functions

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_8002A65C.s")

// EffectSsDeadBb Spawn Functions

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_8002A6B8.s")

// EffectSsDeadDd Spawn Functions

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_8002A770.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_8002A824.s")

// EffectSsDeadDs Spawn Functions

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_8002A894.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_8002A90C.s")

// EffectSsDeadSound Spawn Functions

void EffectSsDeadSound_Spawn(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, u16 sfxId,
                             s16 lowerPriority, s16 repeatMode, s32 life) {
    EffectSsDeadSoundInitParams initParams;

    Math_Vec3f_Copy(&initParams.pos, pos);
    Math_Vec3f_Copy(&initParams.velocity, velocity);
    Math_Vec3f_Copy(&initParams.accel, accel);
    initParams.sfxId = sfxId;
    initParams.lowerPriority = lowerPriority;
    initParams.repeatMode = repeatMode;
    initParams.life = life;

    if (!lowerPriority) {
        EffectSs_Spawn(globalCtx, EFFECT_SS_DEAD_SOUND, 100, &initParams);
    } else {
        EffectSs_Spawn(globalCtx, EFFECT_SS_DEAD_SOUND, 127, &initParams);
    }
}

void EffectSsDeadSound_SpawnStationary(GlobalContext* globalCtx, Vec3f* pos, u16 sfxId, s16 lowerPriority,
                                       s16 repeatMode, s32 life) {
    EffectSsDeadSound_Spawn(globalCtx, pos, &D_801158C0, &D_801158C0, sfxId, lowerPriority, repeatMode, life);
}

// EffectSsIceSmoke Spawn Functions

#pragma GLOBAL_ASM("asm/non_matchings/code/z_effect_soft_sprite_old_init/func_8002AA44.s")
