#include <ultra64.h>
#include <global.h>
#include "overlays/effects/ovl_Effect_Ss_Dust/z_eff_ss_dust.h"
#include "overlays/effects/ovl_Effect_Ss_KiraKira/z_eff_ss_kirakira.h"
#include "overlays/effects/ovl_Effect_Ss_Bomb/z_eff_ss_bomb.h"
#include "overlays/effects/ovl_Effect_Ss_Bomb2/z_eff_ss_bomb2.h"
#include "overlays/effects/ovl_Effect_Ss_Blast/z_eff_ss_blast.h"
#include "overlays/effects/ovl_Effect_Ss_G_Spk/z_eff_ss_g_spk.h"
#include "overlays/effects/ovl_Effect_Ss_D_Fire/z_eff_ss_d_fire.h"
#include "overlays/effects/ovl_Effect_Ss_Bubble/z_eff_ss_bubble.h"
#include "overlays/effects/ovl_Effect_Ss_G_Ripple/z_eff_ss_g_ripple.h"
#include "overlays/effects/ovl_Effect_Ss_G_Splash/z_eff_ss_g_splash.h"
#include "overlays/effects/ovl_Effect_Ss_G_Magma/z_eff_ss_g_magma.h"
#include "overlays/effects/ovl_Effect_Ss_G_Fire/z_eff_ss_g_fire.h"
#include "overlays/effects/ovl_Effect_Ss_Lightning/z_eff_ss_lightning.h"
#include "overlays/effects/ovl_Effect_Ss_Dt_Bubble/z_eff_ss_dt_bubble.h"
#include "overlays/effects/ovl_Effect_Ss_Hahen/z_eff_ss_hahen.h"
#include "overlays/effects/ovl_Effect_Ss_Stick/z_eff_ss_stick.h"
#include "overlays/effects/ovl_Effect_Ss_Sibuki/z_eff_ss_sibuki.h"
#include "overlays/effects/ovl_Effect_Ss_Sibuki2/z_eff_ss_sibuki2.h"
#include "overlays/effects/ovl_Effect_Ss_G_Magma2/z_eff_ss_g_magma2.h"
#include "overlays/effects/ovl_Effect_Ss_Stone1/z_eff_ss_stone1.h"
#include "overlays/effects/ovl_Effect_Ss_HitMark/z_eff_ss_hitmark.h"
#include "overlays/effects/ovl_Effect_Ss_Fhg_Flash/z_eff_ss_fhg_flash.h"
#include "overlays/effects/ovl_Effect_Ss_K_Fire/z_eff_ss_k_fire.h"
#include "overlays/effects/ovl_Effect_Ss_Solder_Srch_Ball/z_eff_ss_solder_srch_ball.h"
#include "overlays/effects/ovl_Effect_Ss_Kakera/z_eff_ss_kakera.h"
#include "overlays/effects/ovl_Effect_Ss_Ice_Piece/z_eff_ss_ice_piece.h"
#include "overlays/effects/ovl_Effect_Ss_En_Ice/z_eff_ss_en_ice.h"
#include "overlays/effects/ovl_Effect_Ss_Fire_Tail/z_eff_ss_fire_tail.h"
#include "overlays/effects/ovl_Effect_Ss_En_Fire/z_eff_ss_en_fire.h"
#include "overlays/effects/ovl_Effect_Ss_Extra/z_eff_ss_extra.h"
#include "overlays/effects/ovl_Effect_Ss_Fcircle/z_eff_ss_fcircle.h"
#include "overlays/effects/ovl_Effect_Ss_Dead_Db/z_eff_ss_dead_db.h"
#include "overlays/effects/ovl_Effect_Ss_Dead_Dd/z_eff_ss_dead_dd.h"
#include "overlays/effects/ovl_Effect_Ss_Dead_Ds/z_eff_ss_dead_ds.h"
#include "overlays/effects/ovl_Effect_Ss_Dead_Sound/z_eff_ss_dead_sound.h"
#include "overlays/effects/ovl_Effect_Ss_Ice_Smoke/z_eff_ss_ice_smoke.h"

Vec3f sZeroVec = { 0.0f, 0.0f, 0.0f };

void EffectSs_DrawGEffect(GlobalContext* globalCtx, EffectSs* this, UNK_PTR texture) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    f32 scale;
    MtxF sp120;
    MtxF spE0;
    MtxF spA0;
    MtxF sp60;
    s32 pad1;
    Mtx* mtx;
    UNK_PTR* object;
    // note
    object = globalCtx->objectCtx.status[this->regs[SS_G_TYPE]].segment;

    OPEN_DISPS(gfxCtx, "../z_effect_soft_sprite_old_init.c", 196);

    scale = this->regs[SS_G_SCALE] * 0.0025f;
    SkinMatrix_SetTranslate(&sp120, this->pos.x, this->pos.y, this->pos.z);
    SkinMatrix_SetScale(&spE0, scale, scale, scale);
    SkinMatrix_MtxFMtxFMult(&sp120, &globalCtx->mf_11DA0, &sp60);
    SkinMatrix_MtxFMtxFMult(&sp60, &spE0, &spA0);
    gSegments[6] = VIRTUAL_TO_PHYSICAL(object);
    gSPSegment(oGfxCtx->polyXlu.p++, 0x06, object);

    mtx = SkinMatrix_MtxFToNewMtx(gfxCtx, &spA0);

    if (mtx != NULL) {
        gSPMatrix(oGfxCtx->polyXlu.p++, mtx, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPSegment(oGfxCtx->polyXlu.p++, 0x08, SEGMENTED_TO_VIRTUAL(texture));
        func_80094C50(gfxCtx);
        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, this->regs[SS_G_PRIM_R], this->regs[SS_G_PRIM_G],
                        this->regs[SS_G_PRIM_B], this->regs[SS_G_PRIM_A]);
        gDPSetEnvColor(oGfxCtx->polyXlu.p++, this->regs[SS_G_ENV_R], this->regs[SS_G_ENV_G], this->regs[SS_G_ENV_B],
                       this->regs[SS_G_ENV_A]);
        gSPDisplayList(oGfxCtx->polyXlu.p++, this->gfx);
    }

    CLOSE_DISPS(gfxCtx, "../z_effect_soft_sprite_old_init.c", 243);
}

// EffectSsDust Spawn Functions

void EffectSsDust_Spawn(GlobalContext* globalCtx, u16 drawFlags, Vec3f* pos, Vec3f* velocity, Vec3f* accel,
                        Color_RGBA8* primColor, Color_RGBA8* envColor, s16 scale, s16 scaleStep, s16 life,
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

void func_8002829C(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, Color_RGBA8* primColor,
                   Color_RGBA8* envColor, s16 scale, s16 scaleStep) {
    EffectSsDust_Spawn(globalCtx, 0, pos, velocity, accel, primColor, envColor, scale, scaleStep, 10, 0);
}

void func_80028304(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, Color_RGBA8* primColor,
                   Color_RGBA8* envColor, s16 scale, s16 scaleStep) {
    EffectSsDust_Spawn(globalCtx, 1, pos, velocity, accel, primColor, envColor, scale, scaleStep, 10, 0);
}

void func_8002836C(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, Color_RGBA8* primColor,
                   Color_RGBA8* envColor, s16 scale, s16 scaleStep, s16 life) {
    EffectSsDust_Spawn(globalCtx, 0, pos, velocity, accel, primColor, envColor, scale, scaleStep, life, 0);
}

void func_800283D4(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, Color_RGBA8* primColor,
                   Color_RGBA8* envColor, s16 scale, s16 scaleStep, s16 life) {
    EffectSsDust_Spawn(globalCtx, 1, pos, velocity, accel, primColor, envColor, scale, scaleStep, life, 0);
}

void func_8002843C(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, Color_RGBA8* primColor,
                   Color_RGBA8* envColor, s16 scale, s16 scaleStep, s16 life) {
    EffectSsDust_Spawn(globalCtx, 2, pos, velocity, accel, primColor, envColor, scale, scaleStep, life, 0);
}

// unused
void func_800284A4(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, Color_RGBA8* primColor,
                   Color_RGBA8* envColor, s16 scale, s16 scaleStep) {
    EffectSsDust_Spawn(globalCtx, 0, pos, velocity, accel, primColor, envColor, scale, scaleStep, 10, 1);
}

// unused
void func_80028510(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, Color_RGBA8* primColor,
                   Color_RGBA8* envColor, s16 scale, s16 scaleStep) {
    EffectSsDust_Spawn(globalCtx, 1, pos, velocity, accel, primColor, envColor, scale, scaleStep, 10, 1);
}

Color_RGBA8 sDustBrownPrim = { 170, 130, 90, 255 };
Color_RGBA8 sDustBrownEnv = { 100, 60, 20, 255 };

void func_8002857C(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel) {
    EffectSsDust_Spawn(globalCtx, 4, pos, velocity, accel, &sDustBrownPrim, &sDustBrownEnv, 100, 5, 10, 0);
}

// unused
void func_800285EC(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel) {
    EffectSsDust_Spawn(globalCtx, 5, pos, velocity, accel, &sDustBrownPrim, &sDustBrownEnv, 100, 5, 10, 0);
}

void func_8002865C(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 scale, s16 scaleStep) {
    EffectSsDust_Spawn(globalCtx, 4, pos, velocity, accel, &sDustBrownPrim, &sDustBrownEnv, scale, scaleStep, 10, 0);
}

void func_800286CC(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 scale, s16 scaleStep) {
    EffectSsDust_Spawn(globalCtx, 5, pos, velocity, accel, &sDustBrownPrim, &sDustBrownEnv, scale, scaleStep, 10, 0);
}

void func_8002873C(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 scale, s16 scaleStep,
                   s16 life) {
    EffectSsDust_Spawn(globalCtx, 4, pos, velocity, accel, &sDustBrownPrim, &sDustBrownEnv, scale, scaleStep, life, 0);
}

void func_800287AC(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 scale, s16 scaleStep,
                   s16 life) {
    EffectSsDust_Spawn(globalCtx, 5, pos, velocity, accel, &sDustBrownPrim, &sDustBrownEnv, scale, scaleStep, life, 0);
}

void func_8002881C(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, Color_RGBA8* primColor,
                   Color_RGBA8* envColor) {
    func_8002829C(globalCtx, pos, velocity, accel, primColor, envColor, 100, 5);
}

// unused
void func_80028858(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, Color_RGBA8* primColor,
                   Color_RGBA8* envColor) {
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

void EffectSsKiraKira_SpawnSmallYellow(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel) {
    Color_RGBA8 primColor = { 255, 255, 200, 255 };
    Color_RGBA8 envColor = { 255, 200, 0, 0 };

    func_80028BB0(globalCtx, pos, velocity, accel, &primColor, &envColor, 1000, 16);
}

void EffectSsKiraKira_SpawnSmall(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel,
                                 Color_RGBA8* primColor, Color_RGBA8* envColor) {
    func_80028BB0(globalCtx, pos, velocity, accel, primColor, envColor, 1000, 16);
}

void func_80028BB0(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, Color_RGBA8* primColor,
                   Color_RGBA8* envColor, s16 scale, s32 life) {
    EffectSsKiraKiraInitParams initParams;

    Math_Vec3f_Copy(&initParams.pos, pos);
    Math_Vec3f_Copy(&initParams.velocity, velocity);
    initParams.velocity.y = ((Math_Rand_ZeroOne() * initParams.velocity.y) + initParams.velocity.y) * 0.5f;
    Math_Vec3f_Copy(&initParams.accel, accel);
    initParams.accel.y = ((Math_Rand_ZeroOne() * initParams.accel.y) + initParams.accel.y) * 0.5f;
    initParams.life = life;
    initParams.updateMode = 0;
    initParams.rotationSpeed = 0x1518;
    initParams.yaw = Math_Rand_ZeroOne() * 16384.0f;
    initParams.scale = scale;
    initParams.primColor = *primColor;
    initParams.envColor = *envColor;
    initParams.alphaStep = (-(255.0f / initParams.life)) + (-(255.0f / initParams.life));

    EffectSs_Spawn(globalCtx, 1, 128, &initParams);
}

void func_80028CEC(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, Color_RGBA8* primColor,
                   Color_RGBA8* envColor, s16 scale, s32 life) {
    EffectSsKiraKiraInitParams initParams;

    Math_Vec3f_Copy(&initParams.pos, pos);
    Math_Vec3f_Copy(&initParams.velocity, velocity);
    Math_Vec3f_Copy(&initParams.accel, accel);
    initParams.life = life;
    initParams.updateMode = 1;
    initParams.rotationSpeed = 0x1518;
    initParams.yaw = Math_Rand_ZeroOne() * 16384.0f;
    initParams.scale = scale;
    Color_RGBA8_Copy(&initParams.primColor, primColor);
    Color_RGBA8_Copy(&initParams.envColor, envColor);
    initParams.alphaStep = (-(255.0f / initParams.life)) + (-(255.0f / initParams.life));

    EffectSs_Spawn(globalCtx, 1, 128, &initParams);
}

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

void EffectSsBlast_Spawn(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, Color_RGBA8* primColor,
                         Color_RGBA8* envColor, s16 radius, s16 radiusStep, s16 radiusStepDecr, s16 life) {
    EffectSsBlastParams initParams;

    Math_Vec3f_Copy(&initParams.pos, pos);
    Math_Vec3f_Copy(&initParams.velocity, velocity);
    Math_Vec3f_Copy(&initParams.accel, accel);
    Color_RGBA8_Copy(&initParams.primColor, primColor);
    Color_RGBA8_Copy(&initParams.envColor, envColor);
    initParams.radius = radius;
    initParams.radiusStep = radiusStep;
    initParams.radiusStepDecr = radiusStepDecr;
    initParams.life = life;

    EffectSs_Spawn(globalCtx, EFFECT_SS_BLAST, 128, &initParams);
}

void func_80028F84(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 radius, s16 radiusStep,
                   s16 life) {
    static Color_RGBA8 D_801158DC = { 255, 255, 255, 255 };
    static Color_RGBA8 D_801158E0 = { 200, 200, 200, 0 };

    EffectSsBlast_Spawn(globalCtx, pos, velocity, accel, &D_801158DC, &D_801158E0, radius, radiusStep, 35, life);
}

void func_80028FD8(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, Color_RGBA8* envColor,
                   Color_RGBA8* primColor, s16 life) {
    EffectSsBlast_Spawn(globalCtx, pos, velocity, accel, envColor, primColor, 100, 375, 35, life);
}

void func_80029024(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel) {
    static Color_RGBA8 D_801158E4 = { 255, 255, 255, 255 };
    static Color_RGBA8 D_801158E8 = { 200, 200, 200, 0 };

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
    Color_RGBA8 envColor = { 255, 255, 150, 255 };
    Color_RGBA8 primColor = { 255, 0, 0, 0 };

    func_800292DC(globalCtx, actor, pos, velocity, accel, &envColor, &primColor);
}

// unused
void func_800291D8(GlobalContext* globalCtx, Actor* actor, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 scale,
                   s16 scaleStep) {
    Color_RGBA8 envColor = { 255, 255, 150, 255 };
    Color_RGBA8 primColor = { 255, 0, 0, 0 };
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

void EffectSsDFire_Spawn(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 scale, s16 scaleStep,
                         s16 alpha, s16 fadeDelay, s32 life) {
    EffectSsDFireInitParams initParams;

    Math_Vec3f_Copy(&initParams.pos, pos);
    Math_Vec3f_Copy(&initParams.velocity, velocity);
    Math_Vec3f_Copy(&initParams.accel, accel);
    initParams.scale = scale;
    initParams.scaleStep = scaleStep;
    initParams.alpha = alpha;
    initParams.fadeDelay = fadeDelay;
    initParams.life = life;

    EffectSs_Spawn(globalCtx, EFFECT_SS_D_FIRE, 128, &initParams);
}

void func_800293A0(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 alpha, s16 fadeDelay) {
    EffectSsDFire_Spawn(globalCtx, pos, velocity, accel, 100, 35, alpha, fadeDelay, 8);
}

// EffectSsBubble Spawn Functions

void EffectSsBubble_Spawn(GlobalContext* globalCtx, Vec3f* pos, f32 yPosOffset, f32 yPosRandScale, f32 xzPosRandScale,
                          f32 scale) {
    EffectSsBubbleInitParams initParams;

    Math_Vec3f_Copy(&initParams.pos, pos);
    initParams.yPosOffset = yPosOffset;
    initParams.yPosRandScale = yPosRandScale;
    initParams.xzPosRandScale = xzPosRandScale;
    initParams.scale = scale;

    EffectSs_Spawn(globalCtx, EFFECT_SS_BUBBLE, 128, &initParams);
}

// EffectSsGRipple Spawn Functions

void EffectSsGRipple_Spawn(GlobalContext* globalCtx, Vec3f* pos, s16 radius, s16 radiusMax, s16 life) {
    EffectSsGRippleInitParams initParams;

    Math_Vec3f_Copy(&initParams.pos, pos);
    initParams.radius = radius;
    initParams.radiusMax = radiusMax;
    initParams.life = life;

    EffectSs_Spawn(globalCtx, EFFECT_SS_G_RIPPLE, 128, &initParams);
}

// EffectSsGSplash Spawn Functions

void EffectSsGSplash_Spawn(GlobalContext* globalCtx, Vec3f* pos, Color_RGBA8* primColor, Color_RGBA8* envColor,
                           s16 type, s16 scale) {
    EffectSsGSplashInitParams initParams;

    Math_Vec3f_Copy(&initParams.pos, pos);
    initParams.type = type;
    initParams.scale = scale;

    if (primColor != NULL) {
        initParams.primColor = *primColor;
        initParams.envColor = *envColor;
        initParams.customColor = true;
    } else {
        initParams.customColor = false;
    }

    EffectSs_Spawn(globalCtx, EFFECT_SS_G_SPLASH, 128, &initParams);
}

// EffectSsGMagma Spawn Functions

void EffectSsGMagma_Spawn(GlobalContext* globalCtx, Vec3f* pos) {
    EffectSsGMagmaInitParams initParams;

    Math_Vec3f_Copy(&initParams.pos, pos);

    EffectSs_Spawn(globalCtx, EFFECT_SS_G_MAGMA, 128, &initParams);
}

// EffectSsGFire Spawn Functions

void EffectSsGFire_Spawn(GlobalContext* globalCtx, Vec3f* pos) {
    EffectSsGFireInitParams initParams;

    Math_Vec3f_Copy(&initParams.pos, pos);

    EffectSs_Spawn(globalCtx, EFFECT_SS_G_FIRE, 128, &initParams);
}

// EffectSsLightning Spawn Functions

void func_800295A0(GlobalContext* globalCtx, Vec3f* pos, Color_RGBA8* primColor, Color_RGBA8* envColor, s16 scale,
                   s16 yaw, s16 life, s16 numBolts) {
    EffectSsLightningInitParams initParams;

    Math_Vec3f_Copy(&initParams.pos, pos);
    Color_RGBA8_Copy(&initParams.primColor, primColor);
    Color_RGBA8_Copy(&initParams.envColor, envColor);
    initParams.scale = scale;
    initParams.yaw = yaw;
    initParams.life = life;
    initParams.numBolts = numBolts;

    EffectSs_Spawn(globalCtx, EFFECT_SS_LIGHTNING, 128, &initParams);
}

// EffectSsDtBubble Spawn Functions

void EffectSsDtBubble_SpawnColorProfile(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 scale,
                                        s16 life, s16 colorProfile, s16 randXZ) {
    EffectSsDtBubbleInitParams initParams;

    Math_Vec3f_Copy(&initParams.pos, pos);
    Math_Vec3f_Copy(&initParams.velocity, velocity);
    Math_Vec3f_Copy(&initParams.accel, accel);
    initParams.customColor = false;
    initParams.colorProfile = colorProfile;
    initParams.scale = scale;
    initParams.life = life;
    initParams.randXZ = randXZ;

    EffectSs_Spawn(globalCtx, EFFECT_SS_DT_BUBBLE, 128, &initParams);
}

void EffectSsDtBubble_SpawnCustomColor(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel,
                                       Color_RGBA8* primColor, Color_RGBA8* envColor, s16 scale, s16 life, s16 randXZ) {
    EffectSsDtBubbleInitParams initParams;

    Math_Vec3f_Copy(&initParams.pos, pos);
    Math_Vec3f_Copy(&initParams.velocity, velocity);
    Math_Vec3f_Copy(&initParams.accel, accel);
    Color_RGBA8_Copy(&initParams.primColor, primColor);
    Color_RGBA8_Copy(&initParams.envColor, envColor);
    initParams.scale = scale;
    initParams.life = life;
    initParams.randXZ = randXZ;
    initParams.customColor = true;

    EffectSs_Spawn(globalCtx, EFFECT_SS_DT_BUBBLE, 128, &initParams);
}

// EffectSsHahen Spawn Functions

void EffectSsHahen_Spawn(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 unused, s16 scale,
                         s16 objId, s16 arg7, Gfx* dList) {
    EffectSsHahenInitParams initParams;

    Math_Vec3f_Copy(&initParams.pos, pos);
    Math_Vec3f_Copy(&initParams.velocity, velocity);
    Math_Vec3f_Copy(&initParams.accel, accel);
    initParams.dList = dList;
    initParams.unused = unused;
    initParams.scale = scale;
    initParams.objId = objId;
    initParams.unk_2E = arg7;

    EffectSs_Spawn(globalCtx, EFFECT_SS_HAHEN, 128, &initParams);
}

void EffectSsHahen_SpawnBurst(GlobalContext* globalCtx, Vec3f* pos, f32 arg2, s16 unused, s16 scaleBase, s16 scaleRange,
                              s16 num, s16 objId, s16 arg8, Gfx* dList) {
    s32 i;
    Vec3f velocity;
    Vec3f accel;

    accel.y = -0.07f * arg2;
    accel.x = accel.z = 0.0f;

    for (i = 0; i < num; i++) {
        velocity.x = (Math_Rand_ZeroOne() - 0.5f) * arg2;
        velocity.z = (Math_Rand_ZeroOne() - 0.5f) * arg2;
        velocity.y = ((Math_Rand_ZeroOne() * 0.5f) + 0.5f) * arg2;

        EffectSsHahen_Spawn(globalCtx, pos, &velocity, &accel, unused, Math_Rand_S16Offset(scaleBase, scaleRange),
                            objId, arg8, dList);
    }
}

// EffectSsStick Spawn Functions

void EffectSsStick_Spawn(GlobalContext* globalCtx, Vec3f* pos, s16 yaw) {
    EffectSsStickInitParams initParams;

    initParams.pos = *pos;
    initParams.yaw = yaw;

    EffectSs_Spawn(globalCtx, EFFECT_SS_STICK, 128, &initParams);
}

// EffectSsSibuki Spawn Functions

void EffectSsSibuki_Spawn(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 arg4, s16 arg5,
                          s16 arg6) {
    EffectSsSibukiInitParams initParams;

    Math_Vec3f_Copy(&initParams.pos, pos);
    Math_Vec3f_Copy(&initParams.velocity, velocity);
    Math_Vec3f_Copy(&initParams.accel, accel);
    initParams.unk_24 = arg4;
    initParams.unk_26 = arg5;
    initParams.unk_28 = arg6;

    EffectSs_Spawn(globalCtx, EFFECT_SS_SIBUKI, 128, &initParams);
}

void EffectSsSibuki_SpawnGroup(GlobalContext* globalCtx, Vec3f* pos) {
    s16 i;
    Vec3f sp68 = { 0.0f, 0.0f, 0.0f };
    Vec3f sp5C = { 0.0f, 0.0f, 0.0f };
    Vec3f sp50 = { 0.0f, 0.0f, 0.0f };
    s16 rand = Math_Rand_ZeroOne() * 1.99f;

    for (i = 0; i < KREG(19) + 30; i++) {
        EffectSsSibuki_Spawn(globalCtx, pos, &sp50, &sp50, i / (KREG(27) + 6), rand, KREG(18) + 40);
    }
}

// EffectSsSibuki2 Spawn Functions

void EffectSsSibuki2_Spawn(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 scale) {
    EffectSsSibuki2InitParams initParams;

    Math_Vec3f_Copy(&initParams.pos, pos);
    Math_Vec3f_Copy(&initParams.velocity, velocity);
    Math_Vec3f_Copy(&initParams.accel, accel);
    initParams.scale = scale;
    EffectSs_Spawn(globalCtx, EFFECT_SS_SIBUKI2, 128, &initParams);
}

// EffectSsGMagma2 Spawn Functions

void EffectSsGMagma2_Spawn(GlobalContext* globalCtx, Vec3f* pos, Color_RGBA8* primColor, Color_RGBA8* envColor,
                           s16 arg4, s16 arg5, s16 scale) {
    EffectSsGMagma2InitParams initParams;

    Math_Vec3f_Copy(&initParams.pos, pos);
    Color_RGBA8_Copy(&initParams.primColor, primColor);
    Color_RGBA8_Copy(&initParams.envColor, envColor);
    initParams.unk_14 = arg4;
    initParams.unk_16 = arg5;
    initParams.scale = scale;

    EffectSs_Spawn(globalCtx, EFFECT_SS_G_MAGMA2, 128, &initParams);
}

// EffectSsStone1 Spawn Functions

void EffectSsStone1_Spawn(GlobalContext* globalCtx, Vec3f* pos, s32 arg2) {
    EffectSsStone1InitParams initParams;

    initParams.pos = *pos;
    initParams.unk_C = arg2;

    EffectSs_Spawn(globalCtx, EFFECT_SS_STONE1, 128, &initParams);
}

// EffectSsHitMark Spawn Functions

void EffectSsHitMark_Spawn(GlobalContext* globalCtx, s32 arg1, s16 scale, Vec3f* pos) {
    EffectSsHitMarkInitParams initParams;

    initParams.unk_00 = arg1;
    initParams.scale = scale;
    Math_Vec3f_Copy(&initParams.pos, pos);

    EffectSs_Spawn(globalCtx, EFFECT_SS_HITMARK, 128, &initParams);
}

void EffectSsHitMark_SpawnFixedScale(GlobalContext* globalCtx, s32 arg1, Vec3f* pos) {
    EffectSsHitMark_Spawn(globalCtx, arg1, 300, pos);
}

void EffectSsHitMark_SpawnCustomScale(GlobalContext* globalCtx, s32 arg1, s16 scale, Vec3f* pos) {
    EffectSsHitMark_Spawn(globalCtx, arg1, scale, pos);
}

// EffectSsFhgFlash Spawn Functions

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

void EffectSsKFire_Spawn(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 arg4, u8 arg5) {
    EffectSsKFireInitParams initParams;

    Math_Vec3f_Copy(&initParams.pos, pos);
    Math_Vec3f_Copy(&initParams.velocity, velocity);
    Math_Vec3f_Copy(&initParams.accel, accel);
    initParams.unk_24 = arg4;
    initParams.unk_26 = arg5;

    EffectSs_Spawn(globalCtx, EFFECT_SS_K_FIRE, 128, &initParams);
}

// EffectSsSolderSrchBall Spawn Functions

void EffectSsSolderSrchBall_Spawn(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 unused,
                                  s16* linkDetected) {
    EffectSsSolderSrchBallInitParams initParams;

    Math_Vec3f_Copy(&initParams.pos, pos);
    Math_Vec3f_Copy(&initParams.velocity, velocity);
    Math_Vec3f_Copy(&initParams.accel, accel);
    initParams.unused = unused;
    initParams.linkDetected = linkDetected;

    EffectSs_Spawn(globalCtx, EFFECT_SS_SOLDER_SRCH_BALL, 128, &initParams);
}

// EffectSsKakera Spawn Functions

void EffectSsKakera_Spawn(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* arg3, s16 arg4, s16 arg5,
                          s16 arg6, s16 arg7, s16 arg8, s16 scale, s16 arg10, s16 arg11, s32 life, s16 arg13, s16 objId,
                          Gfx* dList) {
    EffectSsKakeraInitParams initParams;

    Math_Vec3f_Copy(&initParams.pos, pos);
    Math_Vec3f_Copy(&initParams.velocity, velocity);
    Math_Vec3f_Copy(&initParams.unk_18, arg3);
    initParams.unk_24 = arg4;
    initParams.unk_26 = arg5;
    initParams.unk_28 = arg6;
    initParams.unk_2A = arg7;
    initParams.unk_2C = arg8;
    initParams.scale = scale;
    initParams.unk_30 = arg10;
    initParams.unk_32 = arg11;
    initParams.life = life;
    initParams.unk_38 = arg13;
    initParams.objId = objId;
    initParams.dList = dList;

    EffectSs_Spawn(globalCtx, EFFECT_SS_KAKERA, 101, &initParams);
}

// EffectSsIcePiece Spawn Functions

void EffectSsIcePiece_Spawn(GlobalContext* globalCtx, Vec3f* pos, f32 scale, Vec3f* velocity, Vec3f* accel, s32 life) {
    EffectSsIcePieceInitParams initParams;

    Math_Vec3f_Copy(&initParams.pos, pos);
    Math_Vec3f_Copy(&initParams.velocity, velocity);
    Math_Vec3f_Copy(&initParams.accel, accel);
    initParams.scale = scale;
    initParams.life = life;
    EffectSs_Spawn(globalCtx, 0x1A, 0x80, &initParams);
}

void EffectSsIcePiece_SpawnBurst(GlobalContext* globalCtx, Vec3f* refPos, f32 scale) {
    static Vec3f accel = { 0.0f, 0.0f, 0.0f };
    static Vec3f vecScales[] = {
        { 0.0f, 70.0f, 0.0f },
        { 0.0f, 45.0f, 20.0f },
        { 17.320474f, 45.0f, 9.999695f },
        { 17.320474f, 45.0f, -9.999695f },
        { 0.0f, 45.0f, -20.0f },
        { -17.320474f, 45.0f, -9.999695f },
        { -17.320474f, 45.0f, 9.999695f },
        { 0.0f, 20.0f, 20.0f },
        { 17.320474f, 20.0f, -9.999695f },
        { -17.320474f, 20.0f, -9.999695f },
    };
    s32 i;
    Vec3f velocity;
    Vec3f pos;
    f32 velocityScale;

    accel.y = -0.2f;

    for (i = 0; i < ARRAY_COUNT(vecScales); i++) {
        pos = *refPos;
        velocityScale = Math_Rand_ZeroFloat(1.0f) + 0.5f;
        velocity.x = (vecScales[i].x * 0.18f) * velocityScale;
        velocity.y = (vecScales[i].y * 0.18f) * velocityScale;
        velocity.z = (vecScales[i].z * 0.18f) * velocityScale;
        pos.x += vecScales[i].x;
        pos.y += vecScales[i].y;
        pos.z += vecScales[i].z;

        EffectSsIcePiece_Spawn(globalCtx, &pos, (Math_Rand_ZeroFloat(1.0f) + 0.5f) * ((scale * 1.3f) * 100.0f),
                               &velocity, &accel, 25);
    }
}

// EffectSsEnIce Spawn Functions

void func_8002A140(GlobalContext* globalCtx, Actor* actor, Vec3f* pos, s16 primR, s16 primG, s16 primB, s16 primA,
                   s16 envR, s16 envG, s16 envB, f32 scale) {

    EffectSsEnIceInitParams initParams;

    initParams.actor = actor;
    Math_Vec3f_Copy(&initParams.pos, pos);
    initParams.unk_38 = 0;
    initParams.primColor.r = primR;
    initParams.primColor.g = primG;
    initParams.primColor.b = primB;
    initParams.primColor.a = primA;
    initParams.envColor.r = envR;
    initParams.envColor.g = envG;
    initParams.envColor.b = envB;
    initParams.scale = scale;

    if (actor != NULL) {
        Audio_PlayActorSound2(actor, NA_SE_PL_FREEZE_S);
    }

    EffectSs_Spawn(globalCtx, EFFECT_SS_EN_ICE, 80, &initParams);
}

void func_8002A1DC(GlobalContext* globalCtx, Actor* actor, Vec3s* pos, s16 primR, s16 primG, s16 primB, s16 primA,
                   s16 envR, s16 envG, s16 envB, f32 scale) {

    EffectSsEnIceInitParams initParams;

    initParams.actor = actor;
    initParams.pos.x = pos->x;
    initParams.pos.y = pos->y;
    initParams.pos.z = pos->z;
    initParams.primColor.r = primR;
    initParams.primColor.g = primG;
    initParams.primColor.b = primB;
    initParams.primColor.a = primA;
    initParams.envColor.r = envR;
    initParams.envColor.g = envG;
    initParams.envColor.b = envB;
    initParams.unk_38 = 0;
    initParams.scale = scale;

    if (actor != NULL) {
        Audio_PlayActorSound2(actor, NA_SE_PL_FREEZE_S);
    }

    EffectSs_Spawn(globalCtx, EFFECT_SS_EN_ICE, 80, &initParams);
}

void func_8002A2A4(GlobalContext* arg0, Vec3f* pos, f32 scale, Vec3f* velocity, Vec3f* accel, Color_RGBA8* primColor,
                   Color_RGBA8* envColor, s32 life) {
    EffectSsEnIceInitParams initParams;

    Math_Vec3f_Copy(&initParams.pos, pos);
    Math_Vec3f_Copy(&initParams.velocity, velocity);
    Math_Vec3f_Copy(&initParams.accel, accel);
    Color_RGBA8_Copy(&initParams.primColor, primColor);
    Color_RGBA8_Copy(&initParams.envColor, envColor);
    initParams.scale = scale;
    initParams.life = life;
    initParams.unk_38 = 1;

    EffectSs_Spawn(arg0, EFFECT_SS_EN_ICE, 128, &initParams);
}

// EffectSsFireTail Spawn Functions

void func_8002A32C(GlobalContext* globalCtx, Actor* actor, Vec3f* pos, f32 scale, Vec3f* arg4, s16 arg5,
                   Color_RGBA8* primColor, Color_RGBA8* envColor, s16 arg8, s16 arg9, s32 life) {
    EffectSsFireTailInitParams initParams;

    Math_Vec3f_Copy(&initParams.pos, pos);
    Math_Vec3f_Copy(&initParams.unk_14, arg4);
    Color_RGBA8_Copy(&initParams.primColor, primColor);
    Color_RGBA8_Copy(&initParams.envColor, envColor);
    initParams.unk_20 = arg5;
    initParams.actor = actor;
    initParams.scale = scale;
    initParams.unk_2A = arg8;
    initParams.unk_2C = arg9;
    initParams.life = life;

    EffectSs_Spawn(globalCtx, EFFECT_SS_FIRE_TAIL, 128, &initParams);
}

void func_8002A3C4(GlobalContext* globalCtx, Actor* actor, Vec3f* pos, f32 arg3, s16 arg4, f32 arg5) {
    static Color_RGBA8 D_801159A4 = { 255, 255, 0, 255 };
    static Color_RGBA8 D_801159A8 = { 255, 0, 0, 255 };

    D_801159A4.g = (s32)(255.0f * arg5);
    D_801159A4.b = 0;

    D_801159A8.g = 0;
    D_801159A8.b = 0;
    D_801159A4.r = D_801159A8.r = (s32)(255.0f * arg5);

    func_8002A32C(globalCtx, actor, pos, arg3, &actor->velocity, 0xF, &D_801159A4, &D_801159A8, (arg5 == 1.0f) ? 0 : 1,
                  arg4, 1);
}

void func_8002A484(GlobalContext* globalCtx, f32 scale, s16 bodypartIdx, f32 colorIntensity) {
    Player* player = PLAYER;

    func_8002A3C4(globalCtx, &player->actor, &player->unk_908[bodypartIdx], scale, bodypartIdx, colorIntensity);
}

// EffectSsEnFire Spawn Functions

void func_8002A4D4(GlobalContext* globalCtx, Actor* actor, Vec3f* pos, s16 unk_10, s16 unk_12, s16 unk_14, s16 unk_16) {
    EffectSsEnFireInitParams initParams;

    Math_Vec3f_Copy(&initParams.pos, pos);
    initParams.actor = actor;
    initParams.unk_10 = unk_10;
    initParams.unk_12 = unk_12;
    initParams.reg8 = unk_14;
    initParams.reg7 = unk_16;

    if (actor != NULL) {
        Audio_PlayActorSound2(actor, NA_SE_EV_FLAME_IGNITION);
    }

    EffectSs_Spawn(globalCtx, EFFECT_SS_EN_FIRE, 128, &initParams);
}

void func_8002A54C(GlobalContext* globalCtx, Actor* actor, Vec3s* vec, s16 arg3, s16 arg4, s16 arg5, s16 arg6) {
    EffectSsEnFireInitParams initParams;

    initParams.pos.x = vec->x;
    initParams.pos.y = vec->y;
    initParams.pos.z = vec->z;
    initParams.actor = actor;
    initParams.unk_10 = arg3;
    initParams.unk_12 = arg4;
    initParams.reg8 = arg5 | 0x8000;
    initParams.reg7 = arg6;

    if (actor != NULL) {
        Audio_PlayActorSound2(actor, NA_SE_EV_FLAME_IGNITION);
    }

    EffectSs_Spawn(globalCtx, EFFECT_SS_EN_FIRE, 128, &initParams);
}

// EffectSsExtra Spawn Functions

void EffectSsExtra_Spawn(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 scale, s16 scoreIdx) {
    EffectSsExtraInitParams initParams;

    Math_Vec3f_Copy(&initParams.pos, pos);
    Math_Vec3f_Copy(&initParams.velocity, velocity);
    Math_Vec3f_Copy(&initParams.accel, accel);
    initParams.scale = scale;
    initParams.scoreIdx = scoreIdx;

    EffectSs_Spawn(globalCtx, EFFECT_SS_EXTRA, 100, &initParams);
}

// EffectSsFCircle Spawn Functions

void EffectSsFCircle_Spawn(GlobalContext* globalCtx, Actor* actor, Vec3f* pos, s16 radius, s16 height) {
    EffectSsFcircleInitParams initParams;

    Math_Vec3f_Copy(&initParams.pos, pos);
    initParams.actor = actor;
    initParams.radius = radius;
    initParams.height = height;

    EffectSs_Spawn(globalCtx, EFFECT_SS_FCIRCLE, 128, &initParams);
}

// EffectSsDeadDb Spawn Functions

void EffectSsDeadDb_Spawn(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 scale, s16 scaleStep,
                          s16 primR, s16 primG, s16 primB, s16 primA, s16 envR, s16 envG, s16 envB, s16 unused,
                          s32 arg14, s16 arg15) {
    EffectSsDeadDbInitParams initParams;

    Math_Vec3f_Copy(&initParams.pos, pos);
    Math_Vec3f_Copy(&initParams.velocity, velocity);
    Math_Vec3f_Copy(&initParams.accel, accel);
    initParams.scale = scale;
    initParams.scaleStep = scaleStep;
    initParams.primColor.r = primR;
    initParams.primColor.g = primG;
    initParams.primColor.b = primB;
    initParams.primColor.a = primA;
    initParams.envColor.r = envR;
    initParams.envColor.g = envG;
    initParams.envColor.b = envB;
    initParams.unused = unused;
    initParams.unk_34 = arg14;
    initParams.unk_38 = arg15;

    EffectSs_Spawn(globalCtx, EFFECT_SS_DEAD_DB, 120, &initParams);
}

// EffectSsDeadDd Spawn Functions

void func_8002A770(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 scale, s16 scaleStep,
                   s16 primR, s16 primG, s16 primB, s16 alpha, s16 envR, s16 envG, s16 envB, s16 alphaStep, s32 life) {
    EffectSsDeadDdInitParams initParams;

    Math_Vec3f_Copy(&initParams.pos, pos);
    Math_Vec3f_Copy(&initParams.velocity, velocity);
    Math_Vec3f_Copy(&initParams.accel, accel);
    initParams.scale = scale;
    initParams.drawMode = 0;
    initParams.scaleStep = scaleStep;
    initParams.primColor.r = primR;
    initParams.primColor.g = primG;
    initParams.primColor.b = primB;
    initParams.alpha = alpha;
    initParams.envColor.r = envR;
    initParams.envColor.g = envG;
    initParams.envColor.b = envB;
    initParams.alphaStep = alphaStep;
    initParams.life = life;

    EffectSs_Spawn(globalCtx, EFFECT_SS_DEAD_DD, 120, &initParams);
}

// unused
void func_8002A824(GlobalContext* globalCtx, Vec3f* pos, s16 scale, s16 scaleStep, f32 randPosScale, s32 num,
                   s32 life) {
    EffectSsDeadDdInitParams initParams;

    Math_Vec3f_Copy(&initParams.pos, pos);
    initParams.scale = scale;
    initParams.scaleStep = scaleStep;
    initParams.randPosScale = randPosScale;
    initParams.num = num;
    initParams.life = life;
    initParams.drawMode = 1;

    EffectSs_Spawn(globalCtx, EFFECT_SS_DEAD_DD, 120, &initParams);
}

// EffectSsDeadDs Spawn Functions

void EffectSsDeadDs_Spawn(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 scale, s16 scaleStep,
                          s16 alpha, s32 life) {
    EffectSsDeadDsInitParams initParams;

    Math_Vec3f_Copy(&initParams.pos, pos);
    Math_Vec3f_Copy(&initParams.velocity, velocity);
    Math_Vec3f_Copy(&initParams.accel, accel);
    initParams.scale = scale;
    initParams.scaleStep = scaleStep;
    initParams.alpha = alpha;
    initParams.life = life;
    EffectSs_Spawn(globalCtx, EFFECT_SS_DEAD_DS, 100, &initParams);
}

void EffectSsDeadDs_SpawnStationary(GlobalContext* globalCtx, Vec3f* pos, s16 scale, s16 scaleStep, s16 alpha,
                                    s32 life) {
    EffectSsDeadDs_Spawn(globalCtx, pos, &sZeroVec, &sZeroVec, scale, scaleStep, alpha, life);
}

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
    EffectSsDeadSound_Spawn(globalCtx, pos, &sZeroVec, &sZeroVec, sfxId, lowerPriority, repeatMode, life);
}

// EffectSsIceSmoke Spawn Functions

void EffectSsIceSmoke_Spawn(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, s16 scale) {
    EffectSsIceSmokeInitParams initParams;

    Math_Vec3f_Copy(&initParams.pos, pos);
    Math_Vec3f_Copy(&initParams.velocity, velocity);
    Math_Vec3f_Copy(&initParams.accel, accel);
    initParams.scale = scale;

    EffectSs_Spawn(globalCtx, EFFECT_SS_ICE_SMOKE, 128, &initParams);
}
