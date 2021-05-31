/*
 * File: z_en_vali.c
 * Overlay: ovl_En_Vali
 * Description: Bari (Big Jellyfish)
 */

#include "z_en_vali.h"

#define FLAGS 0x00001015

#define THIS ((EnVali*)thisx)

void EnVali_Init(Actor* thisx, GlobalContext* globalCtx);
void EnVali_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnVali_Update(Actor* thisx, GlobalContext* globalCtx);
void EnVali_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnVali_SetupLurk(EnVali* this);
void EnVali_SetupDropAppear(EnVali* this);

void EnVali_Lurk(EnVali* this, GlobalContext* globalCtx);
void EnVali_DropAppear(EnVali* this, GlobalContext* globalCtx);
void EnVali_FloatIdle(EnVali* this, GlobalContext* globalCtx);
void EnVali_Attacked(EnVali* this, GlobalContext* globalCtx);
void EnVali_DamagedInvincible(EnVali* this, GlobalContext* globalCtx);
void EnVali_MoveArmsDown(EnVali* this, GlobalContext* globalCtx);
void EnVali_Burnt(EnVali* this, GlobalContext* globalCtx);
void EnVali_DivideAndDie(EnVali* this, GlobalContext* globalCtx);
void EnVali_Stunned(EnVali* this, GlobalContext* globalCtx);
void EnVali_Frozen(EnVali* this, GlobalContext* globalCtx);
void EnVali_ReturnToLurk(EnVali* this, GlobalContext* globalCtx);

extern AnimationHeader D_06000710; // Flap arms wide
extern AnimationHeader D_06000854; // Swing arms up quickly
extern AnimationHeader D_06000B34; // Fold arms down
extern AnimationHeader D_060014AC; // Flap arms medium and slow
extern Gfx D_06002610[];
extern Gfx D_06002740[];
extern Gfx D_060027D8[];
extern SkeletonHeader D_06004848;

const ActorInit En_Vali_InitVars = {
    ACTOR_EN_VALI,
    ACTORCAT_ENEMY,
    FLAGS,
    OBJECT_VALI,
    sizeof(EnVali),
    (ActorFunc)EnVali_Init,
    (ActorFunc)EnVali_Destroy,
    (ActorFunc)EnVali_Update,
    (ActorFunc)EnVali_Draw,
};

static ColliderQuadInit sQuadInit = {
    {
        COLTYPE_NONE,
        AT_ON | AT_TYPE_ENEMY,
        AC_NONE,
        OC1_NONE,
        OC2_TYPE_1,
        COLSHAPE_QUAD,
    },
    {
        ELEMTYPE_UNK0,
        { 0xFFCFFFFF, 0x07, 0x08 },
        { 0x00000000, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_NONE,
        BUMP_NONE,
        OCELEM_NONE,
    },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};

static ColliderCylinderInit sCylinderInit = {
    {
        COLTYPE_HIT8,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0xFFCFFFFF, 0x07, 0x08 },
        { 0xFFCFFFFF, 0x01, 0x00 },
        TOUCH_ON | TOUCH_SFX_NORMAL,
        BUMP_ON,
        OCELEM_ON,
    },
    { 17, 35, -15, { 0, 0, 0 } },
};

static CollisionCheckInfoInit sColChkInfoInit = { 2, 18, 32, MASS_HEAVY };

typedef enum {
    /* 0x0 */ BARI_DMGEFF_NONE,
    /* 0x1 */ BARI_DMGEFF_STUN,
    /* 0x2 */ BARI_DMGEFF_FIRE,
    /* 0x3 */ BARI_DMGEFF_ICE,
    /* 0xE */ BARI_DMGEFF_SLINGSHOT = 0xE,
    /* 0xF */ BARI_DMGEFF_SWORD
} BariDamageEffect;

static DamageTable sDamageTable = {
    /* Deku nut      */ DMG_ENTRY(0, BARI_DMGEFF_STUN),
    /* Deku stick    */ DMG_ENTRY(2, BARI_DMGEFF_NONE),
    /* Slingshot     */ DMG_ENTRY(0, BARI_DMGEFF_SLINGSHOT),
    /* Explosive     */ DMG_ENTRY(2, BARI_DMGEFF_NONE),
    /* Boomerang     */ DMG_ENTRY(0, BARI_DMGEFF_STUN),
    /* Normal arrow  */ DMG_ENTRY(2, BARI_DMGEFF_NONE),
    /* Hammer swing  */ DMG_ENTRY(2, BARI_DMGEFF_NONE),
    /* Hookshot      */ DMG_ENTRY(2, BARI_DMGEFF_NONE),
    /* Kokiri sword  */ DMG_ENTRY(1, BARI_DMGEFF_SWORD),
    /* Master sword  */ DMG_ENTRY(2, BARI_DMGEFF_SWORD),
    /* Giant's Knife */ DMG_ENTRY(4, BARI_DMGEFF_SWORD),
    /* Fire arrow    */ DMG_ENTRY(4, BARI_DMGEFF_FIRE),
    /* Ice arrow     */ DMG_ENTRY(4, BARI_DMGEFF_ICE),
    /* Light arrow   */ DMG_ENTRY(2, BARI_DMGEFF_NONE),
    /* Unk arrow 1   */ DMG_ENTRY(2, BARI_DMGEFF_NONE),
    /* Unk arrow 2   */ DMG_ENTRY(2, BARI_DMGEFF_NONE),
    /* Unk arrow 3   */ DMG_ENTRY(2, BARI_DMGEFF_NONE),
    /* Fire magic    */ DMG_ENTRY(4, BARI_DMGEFF_FIRE),
    /* Ice magic     */ DMG_ENTRY(4, BARI_DMGEFF_ICE),
    /* Light magic   */ DMG_ENTRY(0, BARI_DMGEFF_NONE),
    /* Shield        */ DMG_ENTRY(0, BARI_DMGEFF_NONE),
    /* Mirror Ray    */ DMG_ENTRY(0, BARI_DMGEFF_NONE),
    /* Kokiri spin   */ DMG_ENTRY(1, BARI_DMGEFF_NONE),
    /* Giant spin    */ DMG_ENTRY(4, BARI_DMGEFF_NONE),
    /* Master spin   */ DMG_ENTRY(2, BARI_DMGEFF_NONE),
    /* Kokiri jump   */ DMG_ENTRY(2, BARI_DMGEFF_NONE),
    /* Giant jump    */ DMG_ENTRY(8, BARI_DMGEFF_NONE),
    /* Master jump   */ DMG_ENTRY(4, BARI_DMGEFF_NONE),
    /* Unknown 1     */ DMG_ENTRY(0, BARI_DMGEFF_NONE),
    /* Unblockable   */ DMG_ENTRY(0, BARI_DMGEFF_NONE),
    /* Hammer jump   */ DMG_ENTRY(4, BARI_DMGEFF_NONE),
    /* Unknown 2     */ DMG_ENTRY(0, BARI_DMGEFF_NONE),
};

static InitChainEntry sInitChain[] = {
    ICHAIN_S8(naviEnemyId, 24, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 10, ICHAIN_CONTINUE),
    ICHAIN_F32(targetArrowOffset, 5000, ICHAIN_STOP),
};

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/EnVali_Init.s")
void EnVali_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnVali* this = THIS;
    s32 bgId;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 27.0f);
    this->actor.shape.shadowAlpha = 155;
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_06004848, &D_060014AC, this->jointTable, this->morphTable, EN_VALI_LIMB_MAX);

    Collider_InitQuad(globalCtx, &this->colliderQuad1);
    Collider_SetQuad(globalCtx, &this->colliderQuad1, &this->actor, &sQuadInit);
    Collider_InitQuad(globalCtx, &this->colliderQuad2);
    Collider_SetQuad(globalCtx, &this->colliderQuad2, &this->actor, &sQuadInit);
    Collider_InitCylinder(globalCtx, &this->colliderCylinder);
    Collider_SetCylinder(globalCtx, &this->colliderCylinder, &this->actor, &sCylinderInit);
    CollisionCheck_SetInfo(&this->actor.colChkInfo, &sDamageTable, &sColChkInfoInit);

    EnVali_SetupLurk(this);

    this->actor.flags &= ~1;
    this->actor.floorHeight = BgCheck_EntityRaycastFloor4(&globalCtx->colCtx, &this->actor.floorPoly, &bgId,
                                                          &this->actor, &this->actor.world.pos);
    this->actor.params = BARI_TYPE_NORMAL;

    if (this->actor.floorHeight == BGCHECK_Y_MIN) {
        Actor_Kill(&this->actor);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/EnVali_Destroy.s")
void EnVali_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnVali* this = THIS;

    Collider_DestroyQuad(globalCtx, &this->colliderQuad1);
    Collider_DestroyQuad(globalCtx, &this->colliderQuad2);
    Collider_DestroyCylinder(globalCtx, &this->colliderCylinder);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_ 80B26878.s")
void EnVali_SetupLurk(EnVali* this) {
    Animation_PlayLoop(&this->skelAnime, &D_060014AC);
    this->actor.draw = NULL;
    this->colliderCylinder.base.acFlags &= ~AC_ON;
    this->actionFunc = EnVali_Lurk;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_ 80B268C8.s")
void EnVali_SetupDropAppear(EnVali* this) {
    this->actor.draw = EnVali_Draw;
    this->actor.flags |= 1;
    this->actor.velocity.y = 1.0f;
    this->actionFunc = EnVali_DropAppear;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_ 80B268FC.s")
void EnVali_SetupFloatIdle(EnVali* this) {
    Animation_MorphToLoop(&this->skelAnime, &D_06000710, -3.0f);
    this->colliderQuad1.dim.quad[2] = this->colliderQuad1.dim.quad[3] = this->colliderQuad2.dim.quad[2] =
        this->colliderQuad2.dim.quad[3] = this->colliderQuad1.dim.quad[0] = this->colliderQuad1.dim.quad[1] =
            this->colliderQuad2.dim.quad[0] = this->colliderQuad2.dim.quad[1] = this->actor.world.pos;

    this->colliderQuad1.dim.quad[2].y = this->colliderQuad1.dim.quad[3].y = this->colliderQuad2.dim.quad[2].y =
        this->colliderQuad2.dim.quad[3].y = this->colliderQuad1.dim.quad[0].y = this->colliderQuad1.dim.quad[1].y =
            this->colliderQuad2.dim.quad[0].y = this->colliderQuad2.dim.quad[1].y = this->actor.world.pos.y - 10.0f;

    this->actor.flags &= ~0x10;
    this->colliderCylinder.base.acFlags |= AC_ON;
    this->slingshotReactionTimer = 0;
    this->floatHomeHeight = this->actor.world.pos.y;
    this->actionFunc = EnVali_FloatIdle;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_ 80B26B18.s")
/**
 *  Touched by an AT. Sword has special logic using params.
 */
void EnVali_SetupAttacked(EnVali* this) {
    this->lightningTimer = 20;
    this->actor.flags &= ~1;
    this->colliderCylinder.base.acFlags &= ~AC_ON;
    this->actionFunc = EnVali_Attacked;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_ 80B26B4C.s")
void EnVali_SetupDamagedInvincible(EnVali* this) {
    Animation_MorphToPlayOnce(&this->skelAnime, &D_06000854, -5.0f);
    Actor_SetColorFilter(&this->actor, 0x4000, 150, 0x2000, 30);
    this->actor.params = BARI_TYPE_NORMAL;
    this->colliderCylinder.base.acFlags &= ~AC_ON;
    this->actionFunc = EnVali_DamagedInvincible;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_ 80B26BBC.s")
void EnVali_SetupMoveArmsDown(EnVali* this) {
    Animation_PlayOnce(&this->skelAnime, &D_06000B34);
    this->actionFunc = EnVali_MoveArmsDown;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_ 80B26BF8.s")
void EnVali_SetupBurnt(EnVali* this) {
    this->timer = 2;
    this->colliderCylinder.base.acFlags &= ~AC_ON;
    Actor_SetColorFilter(&this->actor, 0x4000, 150, 0x2000, 30);
    this->actionFunc = EnVali_Burnt;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_ 80B26C50.s")
void EnVali_SetupDivideAndDie(EnVali* this, GlobalContext* globalCtx) {
    s32 i;

    for (i = 0; i < 3; i++) {
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_BILI, this->actor.world.pos.x, this->actor.world.pos.y,
                    this->actor.world.pos.z, 0, this->actor.world.rot.y, 0, 0);

        this->actor.world.rot.y += 0x10000 / 3;
    }

    Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.world.pos, 0x50);
    this->timer = Rand_S16Offset(10, 10);
    this->colliderCylinder.base.acFlags &= ~AC_ON;
    Audio_PlaySoundAtPosition(globalCtx, &this->actor.world.pos, 40, NA_SE_EN_BARI_SPLIT);
    this->actor.flags &= ~1;
    this->actor.draw = NULL;
    this->actionFunc = EnVali_DivideAndDie;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_ 80B26D54.s")
void EnVali_SetupStunned(EnVali* this) {
    Animation_MorphToPlayOnce(&this->skelAnime, &D_06000710, 10.0f);
    this->timer = 80;
    this->actor.velocity.y = 0.0f;
    Actor_SetColorFilter(&this->actor, 0, 255, 0x2000, 80);
    this->colliderCylinder.info.bumper.effect = 0;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
    this->actor.velocity.y = 1.0f;
    this->actionFunc = EnVali_Stunned;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_ 80B26DE0.s")
void EnVali_SetupFrozen(EnVali* this) {
    this->actor.velocity.y = 0.0f;
    Actor_SetColorFilter(&this->actor, 0, 255, 0x2000, 36);
    this->colliderCylinder.base.acFlags &= ~AC_ON;
    this->timer = 36;
    this->actionFunc = EnVali_Frozen;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_ 80B26E40.s")
void EnVali_SetupReturnToLurk(EnVali* this) {
    Animation_MorphToPlayOnce(&this->skelAnime, &D_060014AC, 10.0f);
    this->actor.flags |= 0x10;
    this->actor.flags &= ~1;
    this->actionFunc = EnVali_ReturnToLurk;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_ 80B26E9C.s")
void EnVali_DischargeLightning(EnVali* this, GlobalContext* globalCtx) {
    static Color_RGBA8 effectPrimColor = { 255, 255, 255, 255 };
    static Color_RGBA8 effectEnvColor = { 200, 255, 255, 255 };
    Vec3f effectPos;
    s32 i;
    f32 cos;
    f32 sin;
    s16 effectYaw;

    for (i = 0; i < 4; i++) {
        cos = -Math_CosS(Camera_GetCamDirYaw(ACTIVE_CAM));
        sin = Math_SinS(Camera_GetCamDirYaw(ACTIVE_CAM));
        if (!((this->lightningTimer + (i << 1)) % 4)) {
            effectYaw = (s16)(s32)Rand_CenteredFloat(12288.0f) + (i * 0x4000) + 0x2000;
            effectPos.x = this->actor.world.pos.x + (Math_SinS(effectYaw) * 12.0f * cos);
            effectPos.y = this->actor.world.pos.y - (Math_CosS(effectYaw) * 12.0f) + 10.0f;
            effectPos.z = this->actor.world.pos.z + (Math_SinS(effectYaw) * 12.0f * sin);

            EffectSsLightning_Spawn(globalCtx, &effectPos, &effectPrimColor, &effectEnvColor, 17, effectYaw, 6, 2);
        }
    }

    func_8002F974(&this->actor, NA_SE_EN_BIRI_SPARK - SFX_FLAG);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_ 80B27098.s")
void EnVali_Lurk(EnVali* this, GlobalContext* globalCtx) {
    if (this->actor.xzDistToPlayer < 150.0f) {
        EnVali_SetupDropAppear(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_ 80B270D8.s")
void EnVali_DropAppear(EnVali* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    this->actor.velocity.y *= 1.5f;
    this->actor.velocity.y = CLAMP_MAX(this->actor.velocity.y, 40.0f);

    if (Math_StepToF(&this->actor.world.pos.y, this->actor.floorHeight, this->actor.velocity.y)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_GND);
        EnVali_SetupFloatIdle(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_ 80B2716C.s")
void EnVali_FloatIdle(EnVali* this, GlobalContext* globalCtx) {
    s32 curFrame;

    SkelAnime_Update(&this->skelAnime);

    if (this->slingshotReactionTimer != 0) {
        this->slingshotReactionTimer--;
    }

    curFrame = this->skelAnime.curFrame;

    Math_StepToF(&this->floatHomeHeight, this->actor.floorHeight + 40.0f, 1.2f);
    this->actor.world.pos.y = this->floatHomeHeight - (sinf(curFrame * M_PI * 0.0125f) * 8.0f);

    if (!!this->slingshotReactionTimer) {
        this->actor.shape.rot.y += 0x800;

        if (((this->slingshotReactionTimer % 6) == 0) && (curFrame > 15) && (curFrame <= 55)) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_BARI_ROLL);
        }
    } else if ((curFrame == 16) || (curFrame == 30) || (curFrame == 42) || (curFrame == 55)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BARI_ROLL);
    }

    curFrame = ((curFrame > 40) ? (80 - curFrame) : curFrame);

    this->actor.shape.rot.y += (s16)(s32)((curFrame + 4) * 0.4f * 182.04445f);
    if (this->actor.xzDistToPlayer > 250.0f) {
        EnVali_SetupReturnToLurk(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_ 80B27318.s")
void EnVali_Attacked(EnVali* this, GlobalContext* globalCtx) {
    if (this->lightningTimer != 0) {
        this->lightningTimer--;
    }
    EnVali_DischargeLightning(this, globalCtx);

    if (this->lightningTimer == 0) {
        this->actor.flags |= 1;
        this->colliderCylinder.base.acFlags |= AC_ON;
        if (this->actor.params == BARI_TYPE_SWORD_DAMAGE) {
            EnVali_SetupDamagedInvincible(this);
        } else {
            this->actionFunc = EnVali_FloatIdle;
        }
    } else if ((this->lightningTimer % 2) != 0) {
        this->actor.world.pos.y += 1.0f;
    } else {
        this->actor.world.pos.y -= 1.0f;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_ 80B273D0.s")
void EnVali_DamagedInvincible(EnVali* this, GlobalContext* globalCtx) {
    if (SkelAnime_Update(&this->skelAnime)) {
        if (this->actor.colChkInfo.health != 0) {
            EnVali_SetupMoveArmsDown(this);
        } else {
            EnVali_SetupDivideAndDie(this, globalCtx);
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_ 80B2742C.s")
void EnVali_MoveArmsDown(EnVali* this, GlobalContext* globalCtx) {
    if (SkelAnime_Update(&this->skelAnime)) {
        EnVali_SetupFloatIdle(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_ 80B27464.s")
void EnVali_Burnt(EnVali* this, GlobalContext* globalCtx) {
    if (this->timer != 0) {
        this->timer--;
    }

    if (this->timer == 0) {
        EnVali_SetupDivideAndDie(this, globalCtx);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_ 80B274A0.s")
void EnVali_DivideAndDie(EnVali* this, GlobalContext* globalCtx) {
    static Vec3f effectVelocity = { 0.0f, 0.0f, 0.0f };
    static Vec3f effectAccel = { 0.0f, 0.0f, 0.0f };
    s16 effectScale;
    Vec3f effectPos;
    s32 i;

    if (this->timer != 0) {
        this->timer--;
    }

    for (i = 0; i < 2; i++) {
        effectPos.x = this->actor.world.pos.x + Rand_CenteredFloat(20.0f);
        effectPos.y = this->actor.world.pos.y + Rand_CenteredFloat(8.0f);
        effectPos.z = this->actor.world.pos.z + Rand_CenteredFloat(20.0f);
        effectVelocity.y = (Rand_ZeroOne() + 1.0f);
        effectScale = Rand_S16Offset(40, 40);

        if (Rand_ZeroOne() < 0.7f) {
            EffectSsDtBubble_SpawnColorProfile(globalCtx, &effectPos, &effectVelocity, &effectAccel, effectScale, 25, 2,
                                               1);
        } else {
            EffectSsDtBubble_SpawnColorProfile(globalCtx, &effectPos, &effectVelocity, &effectAccel, effectScale, 25, 0,
                                               1);
        }
    }

    if (this->timer == 0) {
        Actor_Kill(&this->actor);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_ 80B27654.s")
void EnVali_Stunned(EnVali* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);

    if (this->timer != 0) {
        this->timer--;
    }

    if (this->actor.velocity.y != 0.0f) {
        if (Math_StepToF(&this->actor.world.pos.y, this->actor.floorHeight, this->actor.velocity.y)) {
            this->actor.velocity.y = 0.0f;
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_GND);
        } else {
            this->actor.velocity.y += 1.0f;
        }
    }

    if (this->timer == 0) {
        this->colliderCylinder.info.bumper.effect = 1; // Shock?
        EnVali_SetupFloatIdle(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_ 80B27710.s")
void EnVali_Frozen(EnVali* this, GlobalContext* globalCtx) {
    Vec3f effectPos;
    s32 temp_v0;
    s32 temp_v1;

    if (this->timer != 0) {
        this->timer--;
    }
    temp_v1 = this->timer - 20;
    this->actor.colorFilterTimer = 36;
    if (temp_v1 > 0) {
        temp_v0 = temp_v1 >> 1;
        if ((this->timer & 1) != 0) {
            effectPos.y = this->actor.world.pos.y - 20.0f + (-temp_v0 * 5 + 40);
            // Cannot be %
            effectPos.x = this->actor.world.pos.x + (((temp_v0 & 2) != 0) ? 12.0f : -12.0f);
            effectPos.z = this->actor.world.pos.z + (((temp_v0 & 1) != 0) ? 12.0f : -12.0f);

            EffectSsEnIce_SpawnFlyingVec3f(globalCtx, &this->actor, &effectPos, 150, 150, 150, 250, 235, 245, 255,
                                           (Rand_ZeroOne() * 0.2f) + 1.3f);
        }
    } else if (this->timer == 0) {
        this->actor.velocity.y += 1.0f;
        if (Math_StepToF(&this->actor.world.pos.y, this->actor.floorHeight, this->actor.velocity.y)) {
            EnVali_SetupDivideAndDie(this, globalCtx);
            this->actor.colorFilterTimer = 0;
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_ 80B278A0.s")
void EnVali_ReturnToLurk(EnVali* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);

    if (Math_SmoothStepToF(&this->actor.world.pos.y, this->actor.home.pos.y, 0.5f, 15.0f, 0.1f) < 0.01f) {
        EnVali_SetupLurk(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_ 80B2790C.s")
void EnVali_UpdateDamage(EnVali* this, GlobalContext* globalCtx) {
    if (this->colliderCylinder.base.acFlags & AC_HIT) {
        this->colliderCylinder.base.acFlags &= ~AC_HIT;
        func_80035650(&this->actor, &this->colliderCylinder.info, 1);

        if ((this->actor.colChkInfo.damageEffect != BARI_DMGEFF_NONE) || (this->actor.colChkInfo.damage != 0)) {
            if (Actor_ApplyDamage(&this->actor) == 0) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_BARI_DEAD);
                func_80032C7C(globalCtx, &this->actor);
                this->actor.flags &= ~1;
            } else {
                if ((this->actor.colChkInfo.damageEffect != BARI_DMGEFF_STUN) &&
                    (this->actor.colChkInfo.damageEffect != BARI_DMGEFF_SLINGSHOT)) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_BARI_DAMAGE);
                }
            }

            if (this->actor.colChkInfo.damageEffect == BARI_DMGEFF_STUN) {
                if (this->actionFunc != EnVali_Stunned) {
                    EnVali_SetupStunned(this);
                }
            } else {
                if (this->actor.colChkInfo.damageEffect == BARI_DMGEFF_SWORD) {
                    if (this->actionFunc != EnVali_Stunned) {
                        Actor_SetColorFilter(&this->actor, 0x4000, 150, 0x2000, 30);
                        this->actor.params = BARI_TYPE_SWORD_DAMAGE;
                        EnVali_SetupAttacked(this);
                    } else {
                        EnVali_SetupDamagedInvincible(this);
                    }
                } else if (this->actor.colChkInfo.damageEffect == BARI_DMGEFF_FIRE) {
                    EnVali_SetupBurnt(this);
                } else if (this->actor.colChkInfo.damageEffect == BARI_DMGEFF_ICE) {
                    EnVali_SetupFrozen(this);
                } else if (this->actor.colChkInfo.damageEffect == BARI_DMGEFF_SLINGSHOT) {
                    if (this->slingshotReactionTimer == 0) {
                        this->slingshotReactionTimer = 20;
                    }
                } else { // Only DMGEFF_NONE
                    EnVali_SetupDamagedInvincible(this);
                }
            }
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/EnVali_Update.s")
void EnVali_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnVali* this = THIS;

    if ((this->colliderCylinder.base.atFlags & AT_HIT) || (this->colliderQuad1.base.atFlags & AT_HIT) ||
        (this->colliderQuad2.base.atFlags & AT_HIT)) {
        this->colliderQuad1.base.atFlags &= ~AT_HIT;
        this->colliderQuad2.base.atFlags &= ~AT_HIT;
        this->colliderCylinder.base.atFlags &= ~AT_HIT;
        EnVali_SetupAttacked(this);
    }

    EnVali_UpdateDamage(this, globalCtx);
    this->actionFunc(this, globalCtx);

    if ((this->actionFunc != EnVali_DivideAndDie) && (this->actionFunc != EnVali_Lurk)) {
        Collider_UpdateCylinder(&this->actor, &this->colliderCylinder);

        if (this->actionFunc == EnVali_FloatIdle) {
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->colliderQuad1.base);
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->colliderQuad2.base);
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->colliderCylinder.base);
        }

        if (this->colliderCylinder.base.acFlags & AC_ON) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colliderCylinder.base);
        }

        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->colliderCylinder.base);
        Actor_SetFocus(&this->actor, 0.0f);
    }
}

// Draw and associated functions

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_ 80B27C1C.s")
void func_80B27C1C(EnVali* this, f32 curFrame, Vec3f* arg2) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f2;
    s32 temp_v0_2;

    if (this->actionFunc == EnVali_Attacked) {
        temp_v0_2 = 20 - (this->lightningTimer % 20);

        if (temp_v0_2 >= 10) {
            temp_v0_2 -= 10;
        }

        arg2->y -= (0.2f * sinf(temp_v0_2 * (M_PI / 10)));
    } else if (this->actionFunc == EnVali_DamagedInvincible) {
        temp_f0 = sinf((M_PI / 10) * curFrame);
        arg2->y -= (0.24f * temp_f0);
        arg2->x -= (0.13f * temp_f0);
        arg2->z = arg2->x;
    } else if (this->actionFunc == EnVali_MoveArmsDown) {
        temp_f0_2 = cosf((M_PI / 50) * curFrame);
        arg2->y -= (0.24f * temp_f0_2);
        arg2->x -= (0.13f * temp_f0_2);
        arg2->z = arg2->x;
    } else if (this->actionFunc == EnVali_Stunned) {
        temp_f2 = sinf(this->timer * (M_PI / 10)) * 0.08f;
        arg2->x += temp_f2;
        arg2->y -= temp_f2;
        arg2->z += temp_f2;
    } else {
        if (curFrame >= 40.0f) {
            curFrame -= 40.0f;
        }
        arg2->y -= (0.2f * sinf((M_PI / 40) * curFrame));
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_ 80B27E38.s")
void func_80B27E38(EnVali* this, f32 curFrame, Vec3f* arg2) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f2;
    s32 temp_v0_2;

    if (this->actionFunc == EnVali_Attacked) {
        temp_v0_2 = 20 - (this->lightningTimer % 20);

        if (temp_v0_2 >= 10) {
            temp_v0_2 -= 10;
        }

        arg2->y -= (0.13f * sinf(temp_v0_2 * (M_PI / 10)));
    } else if (this->actionFunc == EnVali_DamagedInvincible) {
        temp_f0 = sinf((M_PI / 10) * curFrame);
        arg2->y -= (0.18f * temp_f0);
        arg2->x -= (0.1f * temp_f0);
        arg2->z = arg2->x;
    } else if (this->actionFunc == EnVali_MoveArmsDown) {
        temp_f0_2 = cosf((M_PI / 50) * curFrame);
        arg2->y -= (0.18f * temp_f0_2);
        arg2->x -= (0.1f * temp_f0_2);
        arg2->z = arg2->x;
    } else if (this->actionFunc == EnVali_Stunned) {
        temp_f2 = sinf(this->timer * (M_PI / 10)) * 0.08f;
        arg2->x -= temp_f2;
        arg2->y += temp_f2;
        arg2->z -= temp_f2;
    } else {
        if (curFrame >= 40.0f) {
            curFrame -= 40.0f;
        }
        arg2->y -= (0.13f * sinf((M_PI / 40) * curFrame));
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_ 80B28054.s")
s32 func_80B28054(EnVali* this, f32 curFrame) {
    f32 phi_f2;

    if (this->actionFunc == EnVali_FloatIdle) {
        if (curFrame <= 10.0f) {
            phi_f2 = (curFrame * 0.05f) + 1.0f;
        } else if (curFrame > 70.0f) {
            phi_f2 = ((80.0f - curFrame) * 0.05f) + 1.0f;
        } else {
            phi_f2 = 1.5f;
        }
    } else if (this->actionFunc == EnVali_DamagedInvincible) {
        phi_f2 = 1.0f - (sinf((M_PI / 10) * curFrame) * 0.35f);
    } else if (this->actionFunc == EnVali_MoveArmsDown) {
        phi_f2 = 1.0f - (cosf((M_PI / 50) * curFrame) * 0.35f);
    } else if ((this->actionFunc == EnVali_Attacked) || (this->actionFunc == EnVali_Frozen)) {
        phi_f2 = this->unk_2F4;
    } else {
        phi_f2 = 1.0f;
    }

    Math_StepToF(&this->unk_2F4, phi_f2, 0.1f);

    if (this->unk_2F4 == 1.0f) {
        return false;
    } else {
        return true;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/EnVali_OverrideLimbDraw.s")
s32 EnVali_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx,
                            Gfx** gfx) {
    EnVali* this = THIS;
    f32 curFrame;

    if ((limbIndex == EN_VALI_LIMB_NUCLEUS) || (limbIndex == EN_VALI_LIMB_OUTER_HOOD) || (limbIndex == EN_VALI_LIMB_INNER_HOOD)) {
        *dList = NULL;
        return false;
    } else {
        curFrame = this->skelAnime.curFrame;

        if ((limbIndex == 9) || (limbIndex == 18)) {
            if (func_80B28054(this, curFrame)) {
                Matrix_Scale(this->unk_2F4, 1.0f, 1.0f, MTXMODE_APPLY);
            }
        }

        return false;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/EnVali_PostLimbDraw.s")
void EnVali_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx, Gfx** gfx) {
    static Vec3f D_80B28970 = { 3000.0f, 0.0f, 0.0f };
    static Vec3f D_80B2897C = { -1000.0f, 0.0f, 0.0f };
    Vec3f sp3C;
    Vec3f sp30;
    EnVali* this = THIS;

    if (this->actionFunc == EnVali_FloatIdle) {
        if ((limbIndex == 11) || (limbIndex == 20)) {
            Matrix_MultVec3f(&D_80B28970, &sp3C);
            Matrix_MultVec3f(&D_80B2897C, &sp30);

            if (limbIndex == 11) {
                Collider_SetQuadVertices(&this->colliderQuad1, &sp30, &sp3C, &this->colliderQuad1.dim.quad[0],
                                         &this->colliderQuad1.dim.quad[1]);
            } else {
                Collider_SetQuadVertices(&this->colliderQuad2, &sp30, &sp3C, &this->colliderQuad2.dim.quad[0],
                                         &this->colliderQuad2.dim.quad[1]);
            }
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_ 80B28344.s")
void func_80B28344(EnVali* this, GlobalContext* globalCtx) {
    MtxF mtx;
    f32 cos;
    f32 sin;
    f32 curFrame;
    Vec3f sp68 = { 1.0f, 1.0f, 1.0f };

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_vali.c", 1428);

    Matrix_Get(&mtx);
    curFrame = this->skelAnime.curFrame;
    func_80B27E38(this, curFrame, &sp68);
    Matrix_Scale(sp68.x, sp68.y, sp68.z, MTXMODE_APPLY);

    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_vali.c", 1436),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_XLU_DISP++, D_06002610);
    Matrix_Put(&mtx);
    Matrix_RotateY(-this->actor.shape.rot.y * (M_PI / 32768.0f), MTXMODE_APPLY);

    cos = Math_CosS(this->actor.shape.rot.y);
    sin = Math_SinS(this->actor.shape.rot.y);

    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_vali.c", 1446),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_XLU_DISP++, D_06002740);
    Matrix_Translate((506.0f * cos) + (372.0f * sin), 1114.0f, (372.0f * cos) - (506.0f * sin), MTXMODE_APPLY);

    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_vali.c", 1455),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_XLU_DISP++, D_06002740);
    Matrix_Translate((-964.0f * cos) - (804.0f * sin), -108.0f, (-804.0f * cos) + (964.0f * sin), MTXMODE_APPLY);

    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_vali.c", 1463),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_XLU_DISP++, D_06002740);
    Matrix_Put(&mtx);
    sp68.z = 1.0f;
    sp68.y = 1.0f;
    sp68.x = 1.0f;
    func_80B27C1C(this, curFrame, &sp68);
    Matrix_Scale(sp68.x, sp68.y, sp68.z, MTXMODE_APPLY);

    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_vali.c", 1471),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_XLU_DISP++, D_060027D8);
    Matrix_Put(&mtx);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_vali.c", 1477);
}

static Gfx D_80B28998[] = {
    gsDPSetCombineLERP(1, TEXEL0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsSPEndDisplayList(),
};

static Gfx D_80B289A8[] = {
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsSPEndDisplayList(),
};

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/EnVali_Draw.s")
void EnVali_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnVali* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_vali.c", 1505);
    func_80093D84(globalCtx->state.gfxCtx);

    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TexScroll(globalCtx->state.gfxCtx, 0, (127 - (globalCtx->gameplayFrames * 12)) % 128, 32, 32));

    if ((this->lightningTimer % 2) != 0) {
        gSPSegment(POLY_XLU_DISP++, 0x09, D_80B28998);
    } else {
        gSPSegment(POLY_XLU_DISP++, 0x09, D_80B289A8);
    }

    func_80B28344(this, globalCtx);

    POLY_XLU_DISP = SkelAnime_Draw(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable,
                                   EnVali_OverrideLimbDraw, EnVali_PostLimbDraw, this, POLY_XLU_DISP);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_vali.c", 1538);
}
