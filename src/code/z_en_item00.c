#include "global.h"
#include "overlays/actors/ovl_En_Elf/z_en_elf.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"
#include "overlays/effects/ovl_Effect_Ss_Dead_Sound/z_eff_ss_dead_sound.h"

#define FLAGS 0

void EnItem00_Init(Actor* thisx, PlayState* play);
void EnItem00_Destroy(Actor* thisx, PlayState* play);
void EnItem00_Update(Actor* thisx, PlayState* play);
void EnItem00_Draw(Actor* thisx, PlayState* play);

void func_8001DFC8(EnItem00* this, PlayState* play);
void func_8001E1C8(EnItem00* this, PlayState* play);
void func_8001E304(EnItem00* this, PlayState* play);
void EnItem00_Collected(EnItem00* this, PlayState* play);

void EnItem00_DrawRupee(EnItem00* this, PlayState* play);
void EnItem00_DrawCollectible(EnItem00* this, PlayState* play);
void EnItem00_DrawHeartContainer(EnItem00* this, PlayState* play);
void EnItem00_DrawHeartPiece(EnItem00* this, PlayState* play);

const ActorInit En_Item00_InitVars = {
    ACTOR_EN_ITEM00,
    ACTORCAT_MISC,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnItem00),
    (ActorFunc)EnItem00_Init,
    (ActorFunc)EnItem00_Destroy,
    (ActorFunc)EnItem00_Update,
    (ActorFunc)EnItem00_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_NONE,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x00000010, 0x00, 0x00 },
        TOUCH_NONE | TOUCH_SFX_NORMAL,
        BUMP_ON,
        OCELEM_NONE,
    },
    { 10, 30, 0, { 0, 0, 0 } },
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(targetArrowOffset, 2000, ICHAIN_STOP),
};

static Color_RGBA8 sEffectPrimColor = { 255, 255, 127, 0 };
static Color_RGBA8 sEffectEnvColor = { 255, 255, 255, 0 };
static Vec3f sEffectVelocity = { 0.0f, 0.1f, 0.0f };
static Vec3f sEffectAccel = { 0.0f, 0.01f, 0.0f };

static void* sRupeeTex[] = {
    gRupeeGreenTex, gRupeeBlueTex, gRupeeRedTex, gRupeePinkTex, gRupeeOrangeTex,
};

static void* sItemDropTex[] = {
    gDropRecoveryHeartTex, gDropBombTex,       gDropArrows1Tex,   gDropArrows2Tex,
    gDropArrows3Tex,       gDropBombTex,       gDropDekuNutTex,   gDropDekuStickTex,
    gDropMagicLargeTex,    gDropMagicSmallTex, gDropDekuSeedsTex, gDropKeySmallTex,
};

static u8 sItemDropIds[] = {
    ITEM00_RUPEE_GREEN,    ITEM00_RUPEE_BLUE,     ITEM00_NONE,           ITEM00_NONE,           ITEM00_RUPEE_BLUE,
    ITEM00_RUPEE_GREEN,    ITEM00_MAGIC_SMALL,    ITEM00_RECOVERY_HEART, ITEM00_RECOVERY_HEART, ITEM00_NONE,
    ITEM00_MAGIC_SMALL,    ITEM00_FLEXIBLE,       ITEM00_SEEDS,          ITEM00_SEEDS,          ITEM00_NONE,
    ITEM00_RUPEE_BLUE,     ITEM00_RUPEE_GREEN,    ITEM00_MAGIC_SMALL,    ITEM00_RUPEE_GREEN,    ITEM00_RUPEE_BLUE,
    ITEM00_RECOVERY_HEART, ITEM00_NONE,           ITEM00_RECOVERY_HEART, ITEM00_NONE,           ITEM00_FLEXIBLE,
    ITEM00_NONE,           ITEM00_BOMBS_A,        ITEM00_NONE,           ITEM00_SEEDS,          ITEM00_NONE,
    ITEM00_NONE,           ITEM00_MAGIC_SMALL,    ITEM00_RUPEE_GREEN,    ITEM00_RUPEE_GREEN,    ITEM00_MAGIC_SMALL,
    ITEM00_NONE,           ITEM00_RECOVERY_HEART, ITEM00_NONE,           ITEM00_NONE,           ITEM00_RECOVERY_HEART,
    ITEM00_NONE,           ITEM00_SEEDS,          ITEM00_SEEDS,          ITEM00_NONE,           ITEM00_BOMBS_A,
    ITEM00_NONE,           ITEM00_FLEXIBLE,       ITEM00_MAGIC_SMALL,    ITEM00_RUPEE_GREEN,    ITEM00_RUPEE_GREEN,
    ITEM00_NUTS,           ITEM00_NONE,           ITEM00_SEEDS,          ITEM00_SEEDS,          ITEM00_NUTS,
    ITEM00_RECOVERY_HEART, ITEM00_RECOVERY_HEART, ITEM00_SEEDS,          ITEM00_NONE,           ITEM00_FLEXIBLE,
    ITEM00_NONE,           ITEM00_NONE,           ITEM00_NONE,           ITEM00_NONE,           ITEM00_RUPEE_GREEN,
    ITEM00_RUPEE_GREEN,    ITEM00_SEEDS,          ITEM00_BOMBS_A,        ITEM00_MAGIC_SMALL,    ITEM00_BOMBS_A,
    ITEM00_NONE,           ITEM00_NONE,           ITEM00_RECOVERY_HEART, ITEM00_NONE,           ITEM00_NONE,
    ITEM00_RECOVERY_HEART, ITEM00_RECOVERY_HEART, ITEM00_NONE,           ITEM00_NONE,           ITEM00_MAGIC_SMALL,
    ITEM00_RUPEE_GREEN,    ITEM00_MAGIC_SMALL,    ITEM00_RUPEE_GREEN,    ITEM00_NONE,           ITEM00_RUPEE_BLUE,
    ITEM00_NONE,           ITEM00_NONE,           ITEM00_RECOVERY_HEART, ITEM00_NONE,           ITEM00_NONE,
    ITEM00_RECOVERY_HEART, ITEM00_FLEXIBLE,       ITEM00_SEEDS,          ITEM00_SEEDS,          ITEM00_NONE,
    ITEM00_MAGIC_SMALL,    ITEM00_RUPEE_GREEN,    ITEM00_RUPEE_BLUE,     ITEM00_NONE,           ITEM00_RUPEE_GREEN,
    ITEM00_NONE,           ITEM00_RECOVERY_HEART, ITEM00_NONE,           ITEM00_NONE,           ITEM00_BOMBS_A,
    ITEM00_ARROWS_SMALL,   ITEM00_NONE,           ITEM00_ARROWS_MEDIUM,  ITEM00_MAGIC_SMALL,    ITEM00_FLEXIBLE,
    ITEM00_NONE,           ITEM00_MAGIC_LARGE,    ITEM00_RUPEE_GREEN,    ITEM00_NONE,           ITEM00_RUPEE_BLUE,
    ITEM00_NONE,           ITEM00_RUPEE_GREEN,    ITEM00_RECOVERY_HEART, ITEM00_FLEXIBLE,       ITEM00_BOMBS_A,
    ITEM00_ARROWS_SMALL,   ITEM00_NONE,           ITEM00_NONE,           ITEM00_NONE,           ITEM00_MAGIC_SMALL,
    ITEM00_NONE,           ITEM00_NONE,           ITEM00_MAGIC_LARGE,    ITEM00_ARROWS_LARGE,   ITEM00_ARROWS_MEDIUM,
    ITEM00_ARROWS_MEDIUM,  ITEM00_ARROWS_SMALL,   ITEM00_ARROWS_SMALL,   ITEM00_FLEXIBLE,       ITEM00_ARROWS_SMALL,
    ITEM00_ARROWS_SMALL,   ITEM00_ARROWS_SMALL,   ITEM00_ARROWS_MEDIUM,  ITEM00_ARROWS_SMALL,   ITEM00_ARROWS_SMALL,
    ITEM00_ARROWS_SMALL,   ITEM00_ARROWS_MEDIUM,  ITEM00_ARROWS_LARGE,   ITEM00_ARROWS_LARGE,   ITEM00_MAGIC_LARGE,
    ITEM00_MAGIC_SMALL,    ITEM00_MAGIC_SMALL,    ITEM00_MAGIC_SMALL,    ITEM00_MAGIC_SMALL,    ITEM00_MAGIC_LARGE,
    ITEM00_MAGIC_SMALL,    ITEM00_MAGIC_SMALL,    ITEM00_MAGIC_SMALL,    ITEM00_MAGIC_LARGE,    ITEM00_MAGIC_SMALL,
    ITEM00_MAGIC_LARGE,    ITEM00_MAGIC_SMALL,    ITEM00_MAGIC_SMALL,    ITEM00_MAGIC_SMALL,    ITEM00_MAGIC_LARGE,
    ITEM00_BOMBS_A,        ITEM00_NONE,           ITEM00_BOMBS_A,        ITEM00_NONE,           ITEM00_BOMBS_A,
    ITEM00_FLEXIBLE,       ITEM00_BOMBS_A,        ITEM00_BOMBS_A,        ITEM00_BOMBS_A,        ITEM00_NONE,
    ITEM00_NONE,           ITEM00_NONE,           ITEM00_NONE,           ITEM00_BOMBS_A,        ITEM00_NONE,
    ITEM00_BOMBS_A,        ITEM00_RECOVERY_HEART, ITEM00_RECOVERY_HEART, ITEM00_RECOVERY_HEART, ITEM00_RECOVERY_HEART,
    ITEM00_RECOVERY_HEART, ITEM00_RECOVERY_HEART, ITEM00_RECOVERY_HEART, ITEM00_RECOVERY_HEART, ITEM00_RECOVERY_HEART,
    ITEM00_RECOVERY_HEART, ITEM00_RECOVERY_HEART, ITEM00_RECOVERY_HEART, ITEM00_RECOVERY_HEART, ITEM00_RECOVERY_HEART,
    ITEM00_RECOVERY_HEART, ITEM00_RECOVERY_HEART, ITEM00_RUPEE_RED,      ITEM00_RUPEE_BLUE,     ITEM00_RUPEE_BLUE,
    ITEM00_RUPEE_RED,      ITEM00_RUPEE_BLUE,     ITEM00_RUPEE_BLUE,     ITEM00_RUPEE_BLUE,     ITEM00_RUPEE_RED,
    ITEM00_RUPEE_RED,      ITEM00_RUPEE_BLUE,     ITEM00_RUPEE_RED,      ITEM00_RUPEE_BLUE,     ITEM00_RUPEE_RED,
    ITEM00_RUPEE_RED,      ITEM00_RUPEE_RED,      ITEM00_RUPEE_RED,      ITEM00_SEEDS,          ITEM00_NONE,
    ITEM00_NUTS,           ITEM00_NONE,           ITEM00_STICK,          ITEM00_NONE,           ITEM00_NONE,
    ITEM00_SEEDS,          ITEM00_NONE,           ITEM00_NONE,           ITEM00_NONE,           ITEM00_NUTS,
    ITEM00_NONE,           ITEM00_NUTS,           ITEM00_RECOVERY_HEART, ITEM00_SEEDS,          ITEM00_RECOVERY_HEART,
    ITEM00_NONE,           ITEM00_SEEDS,          ITEM00_NONE,           ITEM00_RECOVERY_HEART, ITEM00_NONE,
    ITEM00_NONE,           ITEM00_RECOVERY_HEART, ITEM00_RECOVERY_HEART, ITEM00_NONE,           ITEM00_NONE,
    ITEM00_RECOVERY_HEART, ITEM00_NONE,           ITEM00_RECOVERY_HEART, ITEM00_SEEDS,          ITEM00_FLEXIBLE,
};

static u8 sDropQuantities[] = {
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0,
    1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 3, 3, 3, 1, 1, 3, 1, 3, 1, 1, 1, 3, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 1, 1, 0, 0, 0, 0,
};

void EnItem00_SetupAction(EnItem00* this, EnItem00ActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnItem00_Init(Actor* thisx, PlayState* play) {
    EnItem00* this = (EnItem00*)thisx;
    s32 pad;
    f32 yOffset = 980.0f;
    f32 shadowScale = 6.0f;
    s32 getItemId = GI_NONE;
    s16 spawnParam8000 = this->actor.params & 0x8000;
    s32 pad1;

    this->collectibleFlag = (this->actor.params & 0x3F00) >> 8;

    this->actor.params &= 0xFF;

    if (Flags_GetCollectible(play, this->collectibleFlag)) {
        Actor_Kill(&this->actor);
        return;
    }

    Actor_ProcessInitChain(&this->actor, sInitChain);
    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);

    this->unk_158 = 1;

    switch (this->actor.params) {
        case ITEM00_RUPEE_GREEN:
        case ITEM00_RUPEE_BLUE:
        case ITEM00_RUPEE_RED:
            Actor_SetScale(&this->actor, 0.015f);
            this->scale = 0.015f;
            yOffset = 750.0f;
            break;
        case ITEM00_SMALL_KEY:
            this->unk_158 = 0;
            Actor_SetScale(&this->actor, 0.03f);
            this->scale = 0.03f;
            yOffset = 350.0f;
            break;
        case ITEM00_HEART_PIECE:
            this->unk_158 = 0;
            yOffset = 650.0f;
            Actor_SetScale(&this->actor, 0.02f);
            this->scale = 0.02f;
            break;
        case ITEM00_RECOVERY_HEART:
            this->actor.home.rot.z = Rand_CenteredFloat(65535.0f);
            yOffset = 430.0f;
            Actor_SetScale(&this->actor, 0.02f);
            this->scale = 0.02f;
            break;
        case ITEM00_HEART_CONTAINER:
            yOffset = 430.0f;
            this->unk_158 = 0;
            Actor_SetScale(&this->actor, 0.02f);
            this->scale = 0.02f;
            break;
        case ITEM00_ARROWS_SINGLE:
            yOffset = 400.0f;
            Actor_SetScale(&this->actor, 0.02f);
            this->scale = 0.02f;
            break;
        case ITEM00_ARROWS_SMALL:
        case ITEM00_ARROWS_MEDIUM:
        case ITEM00_ARROWS_LARGE:
            Actor_SetScale(&this->actor, 0.035f);
            this->scale = 0.035f;
            yOffset = 250.0f;
            break;
        case ITEM00_BOMBS_A:
        case ITEM00_BOMBS_B:
        case ITEM00_NUTS:
        case ITEM00_STICK:
        case ITEM00_MAGIC_SMALL:
        case ITEM00_SEEDS:
        case ITEM00_BOMBS_SPECIAL:
            Actor_SetScale(&this->actor, 0.03f);
            this->scale = 0.03f;
            yOffset = 320.0f;
            break;
        case ITEM00_MAGIC_LARGE:
            Actor_SetScale(&this->actor, 0.045 - 1e-10);
            this->scale = 0.045 - 1e-10;
            yOffset = 320.0f;
            break;
        case ITEM00_RUPEE_ORANGE:
            Actor_SetScale(&this->actor, 0.045 - 1e-10);
            this->scale = 0.045 - 1e-10;
            yOffset = 750.0f;
            break;
        case ITEM00_RUPEE_PURPLE:
            Actor_SetScale(&this->actor, 0.03f);
            this->scale = 0.03f;
            yOffset = 750.0f;
            break;
        case ITEM00_FLEXIBLE:
            yOffset = 500.0f;
            Actor_SetScale(&this->actor, 0.01f);
            this->scale = 0.01f;
            break;
        case ITEM00_SHIELD_DEKU:
            this->actor.objBankIndex = Object_GetIndex(&play->objectCtx, OBJECT_GI_SHIELD_1);
            Actor_SetObjectDependency(play, &this->actor);
            Actor_SetScale(&this->actor, 0.5f);
            this->scale = 0.5f;
            yOffset = 0.0f;
            shadowScale = 0.6f;
            this->actor.world.rot.x = 0x4000;
            break;
        case ITEM00_SHIELD_HYLIAN:
            this->actor.objBankIndex = Object_GetIndex(&play->objectCtx, OBJECT_GI_SHIELD_2);
            Actor_SetObjectDependency(play, &this->actor);
            Actor_SetScale(&this->actor, 0.5f);
            this->scale = 0.5f;
            yOffset = 0.0f;
            shadowScale = 0.6f;
            this->actor.world.rot.x = 0x4000;
            break;
        case ITEM00_TUNIC_ZORA:
        case ITEM00_TUNIC_GORON:
            this->actor.objBankIndex = Object_GetIndex(&play->objectCtx, OBJECT_GI_CLOTHES);
            Actor_SetObjectDependency(play, &this->actor);
            Actor_SetScale(&this->actor, 0.5f);
            this->scale = 0.5f;
            yOffset = 0.0f;
            shadowScale = 0.6f;
            this->actor.world.rot.x = 0x4000;
            break;
    }

    this->unk_156 = 0;
    ActorShape_Init(&this->actor.shape, yOffset, ActorShadow_DrawCircle, shadowScale);
    this->actor.shape.shadowAlpha = 180;
    this->actor.focus.pos = this->actor.world.pos;
    this->getItemId = GI_NONE;

    if (!spawnParam8000) {
        EnItem00_SetupAction(this, func_8001DFC8);
        this->despawnTimer = -1;
        return;
    }

    this->despawnTimer = 15;
    this->unk_154 = 35;

    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.gravity = 0.0f;

    switch (this->actor.params) {
        case ITEM00_RUPEE_GREEN:
            Item_Give(play, ITEM_RUPEE_GREEN);
            break;
        case ITEM00_RUPEE_BLUE:
            Item_Give(play, ITEM_RUPEE_BLUE);
            break;
        case ITEM00_RUPEE_RED:
            Item_Give(play, ITEM_RUPEE_RED);
            break;
        case ITEM00_RUPEE_PURPLE:
            Item_Give(play, ITEM_RUPEE_PURPLE);
            break;
        case ITEM00_RUPEE_ORANGE:
            Item_Give(play, ITEM_RUPEE_GOLD);
            break;
        case ITEM00_RECOVERY_HEART:
            Item_Give(play, ITEM_RECOVERY_HEART);
            break;
        case ITEM00_FLEXIBLE:
            Health_ChangeBy(play, 0x70);
            break;
        case ITEM00_BOMBS_A:
        case ITEM00_BOMBS_B:
            Item_Give(play, ITEM_BOMBS_5);
            break;
        case ITEM00_ARROWS_SINGLE:
            Item_Give(play, ITEM_BOW);
            break;
        case ITEM00_ARROWS_SMALL:
            Item_Give(play, ITEM_ARROWS_SMALL);
            break;
        case ITEM00_ARROWS_MEDIUM:
            Item_Give(play, ITEM_ARROWS_MEDIUM);
            break;
        case ITEM00_ARROWS_LARGE:
            Item_Give(play, ITEM_ARROWS_LARGE);
            break;
        case ITEM00_MAGIC_LARGE:
            getItemId = GI_MAGIC_SMALL;
            break;
        case ITEM00_MAGIC_SMALL:
            getItemId = GI_MAGIC_LARGE;
            break;
        case ITEM00_SMALL_KEY:
            Item_Give(play, ITEM_KEY_SMALL);
            break;
        case ITEM00_SEEDS:
            getItemId = GI_SEEDS_5;
            break;
        case ITEM00_NUTS:
            getItemId = GI_NUTS_5;
            break;
        case ITEM00_STICK:
            getItemId = GI_STICKS_1;
            break;
        case ITEM00_HEART_PIECE:
        case ITEM00_HEART_CONTAINER:
        case ITEM00_SHIELD_DEKU:
        case ITEM00_SHIELD_HYLIAN:
        case ITEM00_TUNIC_ZORA:
        case ITEM00_TUNIC_GORON:
        case ITEM00_BOMBS_SPECIAL:
            break;
    }

    if ((getItemId != GI_NONE) && !Actor_HasParent(&this->actor, play)) {
        func_8002F554(&this->actor, play, getItemId);
    }

    EnItem00_SetupAction(this, EnItem00_Collected);
    this->actionFunc(this, play);
}

void EnItem00_Destroy(Actor* thisx, PlayState* play) {
    EnItem00* this = (EnItem00*)thisx;

    Collider_DestroyCylinder(play, &this->collider);
}

void func_8001DFC8(EnItem00* this, PlayState* play) {
    if ((this->actor.params <= ITEM00_RUPEE_RED) ||
        ((this->actor.params == ITEM00_RECOVERY_HEART) && (this->despawnTimer < 0)) ||
        (this->actor.params == ITEM00_HEART_PIECE)) {
        this->actor.shape.rot.y += 960;
    } else {
        if ((this->actor.params >= ITEM00_SHIELD_DEKU) && (this->actor.params != ITEM00_BOMBS_SPECIAL)) {
            if (this->despawnTimer == -1) {
                if (Math_SmoothStepToS(&this->actor.shape.rot.x, this->actor.world.rot.x - 0x4000, 2, 3000, 1500) ==
                    0) {
                    this->despawnTimer = -2;
                }
            } else {
                if (Math_SmoothStepToS(&this->actor.shape.rot.x, -this->actor.world.rot.x - 0x4000, 2, 3000, 1500) ==
                    0) {
                    this->despawnTimer = -1;
                }
            }
            Math_SmoothStepToS(&this->actor.world.rot.x, 0, 2, 2500, 500);
        }
    }

    if (this->actor.params == ITEM00_HEART_PIECE) {
        this->actor.shape.yOffset = Math_SinS(this->actor.shape.rot.y) * 150.0f + 850.0f;
    }

    Math_SmoothStepToF(&this->actor.speedXZ, 0.0f, 1.0f, 0.5f, 0.0f);

    if (this->unk_154 == 0) {
        if ((this->actor.params != ITEM00_SMALL_KEY) && (this->actor.params != ITEM00_HEART_PIECE) &&
            (this->actor.params != ITEM00_HEART_CONTAINER)) {
            this->unk_154 = -1;
        }
    }

    if (this->despawnTimer == 0) {
        if ((this->actor.params != ITEM00_SMALL_KEY) && (this->actor.params != ITEM00_HEART_PIECE) &&
            (this->actor.params != ITEM00_HEART_CONTAINER)) {
            Actor_Kill(&this->actor);
        }
    }

    if ((this->actor.gravity != 0.0f) && !(this->actor.bgCheckFlags & BGCHECKFLAG_GROUND)) {
        EnItem00_SetupAction(this, func_8001E1C8);
    }
}

void func_8001E1C8(EnItem00* this, PlayState* play) {
    f32 originalVelocity;
    Vec3f effectPos;

    if (this->actor.params <= ITEM00_RUPEE_RED) {
        this->actor.shape.rot.y += 960;
    }

    if (play->gameplayFrames & 1) {
        effectPos.x = this->actor.world.pos.x + Rand_CenteredFloat(10.0f);
        effectPos.y = this->actor.world.pos.y + Rand_CenteredFloat(10.0f);
        effectPos.z = this->actor.world.pos.z + Rand_CenteredFloat(10.0f);
        EffectSsKiraKira_SpawnSmall(play, &effectPos, &sEffectVelocity, &sEffectAccel, &sEffectPrimColor,
                                    &sEffectEnvColor);
    }

    if (this->actor.bgCheckFlags & (BGCHECKFLAG_GROUND | BGCHECKFLAG_GROUND_TOUCH)) {
        originalVelocity = this->actor.velocity.y;
        if (originalVelocity > -2.0f) {
            EnItem00_SetupAction(this, func_8001DFC8);
            this->actor.velocity.y = 0.0f;
        } else {
            this->actor.velocity.y = originalVelocity * -0.8f;
            this->actor.bgCheckFlags &= ~BGCHECKFLAG_GROUND;
        }
    }
}

void func_8001E304(EnItem00* this, PlayState* play) {
    s32 pad;
    Vec3f pos;
    s32 rotOffset;

    this->despawnTimer++;

    if (this->actor.params == ITEM00_RECOVERY_HEART) {
        if (this->actor.velocity.y < 0.0f) {
            this->actor.speedXZ = 0.0f;
            this->actor.gravity = -0.4f;
            if (this->actor.velocity.y < -1.5f) {
                this->actor.velocity.y = -1.5f;
            }
            this->actor.home.rot.z += (s16)((this->actor.velocity.y + 3.0f) * 1000.0f);
            this->actor.world.pos.x +=
                Math_CosS(this->actor.yawTowardsPlayer) * (-3.0f * Math_CosS(this->actor.home.rot.z));
            this->actor.world.pos.z +=
                Math_SinS(this->actor.yawTowardsPlayer) * (-3.0f * Math_CosS(this->actor.home.rot.z));
        }
    }

    if (this->actor.params <= ITEM00_RUPEE_RED) {
        this->actor.shape.rot.y += 960;
    } else if ((this->actor.params >= ITEM00_SHIELD_DEKU) && (this->actor.params != ITEM00_BOMBS_SPECIAL)) {
        this->actor.world.rot.x -= 700;
        this->actor.shape.rot.y += 400;
        this->actor.shape.rot.x = this->actor.world.rot.x - 0x4000;
    }

    if (this->actor.velocity.y <= 2.0f) {
        rotOffset = (u16)this->actor.shape.rot.z + 10000;
        if (rotOffset < 65535) {
            this->actor.shape.rot.z += 10000;
        } else {
            this->actor.shape.rot.z = -1;
        }
    }

    if (!(play->gameplayFrames & 1)) {
        pos.x = this->actor.world.pos.x + (Rand_ZeroOne() - 0.5f) * 10.0f;
        pos.y = this->actor.world.pos.y + (Rand_ZeroOne() - 0.5f) * 10.0f;
        pos.z = this->actor.world.pos.z + (Rand_ZeroOne() - 0.5f) * 10.0f;
        EffectSsKiraKira_SpawnSmall(play, &pos, &sEffectVelocity, &sEffectAccel, &sEffectPrimColor, &sEffectEnvColor);
    }

    if (this->actor.bgCheckFlags & (BGCHECKFLAG_GROUND | BGCHECKFLAG_GROUND_TOUCH)) {
        EnItem00_SetupAction(this, func_8001DFC8);
        this->actor.shape.rot.z = 0;
        this->actor.velocity.y = 0.0f;
        this->actor.speedXZ = 0.0f;
    }
}

void EnItem00_Collected(EnItem00* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (this->getItemId != GI_NONE) {
        if (!Actor_HasParent(&this->actor, play)) {
            func_8002F434(&this->actor, play, this->getItemId, 50.0f, 80.0f);
            this->despawnTimer++;
        } else {
            this->getItemId = GI_NONE;
        }
    }

    if (this->despawnTimer == 0) {
        Actor_Kill(&this->actor);
        return;
    }

    this->actor.world.pos = player->actor.world.pos;

    if (this->actor.params <= ITEM00_RUPEE_RED) {
        this->actor.shape.rot.y += 960;
    } else if (this->actor.params == ITEM00_RECOVERY_HEART) {
        this->actor.shape.rot.y = 0;
    }

    // bounces up and down above player's head
    this->actor.world.pos.y += 40.0f + Math_SinS(this->despawnTimer * 15000) * (this->despawnTimer * 0.3f);

    if (LINK_IS_ADULT) {
        this->actor.world.pos.y += 20.0f;
    }
}

// The BSS in the function acted weird in the past. It is matching now but might cause issues in the future
void EnItem00_Update(Actor* thisx, PlayState* play) {
    static u32 D_80157D90;
    static s16 D_80157D94[1];
    s16* params;
    Actor* dynaActor;
    s32 getItemId = GI_NONE;
    s16 sp3A = 0;
    s16 i;
    u32* temp;
    EnItem00* this = (EnItem00*)thisx;
    s32 pad;

    if (this->despawnTimer > 0) {
        this->despawnTimer--;
    }

    if ((this->despawnTimer > 0) && (this->despawnTimer < 41) && (this->unk_154 <= 0)) {
        this->unk_156 = this->despawnTimer;
    }

    this->actionFunc(this, play);
    Math_SmoothStepToF(&this->actor.scale.x, this->scale, 0.1f, this->scale * 0.1f, 0.0f);
    temp = &D_80157D90;

    this->actor.scale.z = this->actor.scale.x;
    this->actor.scale.y = this->actor.scale.x;

    if (this->actor.gravity) {
        if (this->actor.bgCheckFlags & (BGCHECKFLAG_GROUND | BGCHECKFLAG_GROUND_TOUCH)) {
            if (*temp != play->gameplayFrames) {
                D_80157D90 = play->gameplayFrames;
                D_80157D94[0] = 0;
                for (i = 0; i < 50; i++) {
                    if (play->colCtx.dyna.bgActorFlags[i] & BGACTOR_IN_USE) {
                        dynaActor = play->colCtx.dyna.bgActors[i].actor;
                        if ((dynaActor != NULL) && (dynaActor->update != NULL)) {
                            if ((dynaActor->world.pos.x != dynaActor->prevPos.x) ||
                                (dynaActor->world.pos.y != dynaActor->prevPos.y) ||
                                (dynaActor->world.pos.z != dynaActor->prevPos.z)) {
                                D_80157D94[0]++;
                                break;
                            }
                        }
                    }
                }
            }

        } else {
            sp3A = 1;
            Actor_MoveForward(&this->actor);
        }

        if (sp3A || D_80157D94[0]) {
            Actor_UpdateBgCheckInfo(play, &this->actor, 10.0f, 15.0f, 15.0f,
                                    UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2 | UPDBGCHECKINFO_FLAG_3 |
                                        UPDBGCHECKINFO_FLAG_4);

            if (this->actor.floorHeight <= -10000.0f) {
                Actor_Kill(&this->actor);
                return;
            }
        }
    }

    Collider_UpdateCylinder(&this->actor, &this->collider);
    CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);

    if ((this->actor.params == ITEM00_SHIELD_DEKU) || (this->actor.params == ITEM00_SHIELD_HYLIAN) ||
        (this->actor.params == ITEM00_TUNIC_ZORA) || (this->actor.params == ITEM00_TUNIC_GORON)) {
        this->actor.shape.yOffset = Math_CosS(this->actor.shape.rot.x) * 37.0f;
        this->actor.shape.yOffset = ABS(this->actor.shape.yOffset);
    }

    if (this->unk_154 > 0) {
        return;
    }

    if (!((this->actor.xzDistToPlayer <= 30.0f) && (this->actor.yDistToPlayer >= -50.0f) &&
          (this->actor.yDistToPlayer <= 50.0f))) {
        if (!Actor_HasParent(&this->actor, play)) {
            return;
        }
    }

    if (play->gameOverCtx.state != GAMEOVER_INACTIVE) {
        return;
    }

    switch (this->actor.params) {
        case ITEM00_RUPEE_GREEN:
            Item_Give(play, ITEM_RUPEE_GREEN);
            break;
        case ITEM00_RUPEE_BLUE:
            Item_Give(play, ITEM_RUPEE_BLUE);
            break;
        case ITEM00_RUPEE_RED:
            Item_Give(play, ITEM_RUPEE_RED);
            break;
        case ITEM00_RUPEE_PURPLE:
            Item_Give(play, ITEM_RUPEE_PURPLE);
            break;
        case ITEM00_RUPEE_ORANGE:
            Item_Give(play, ITEM_RUPEE_GOLD);
            break;
        case ITEM00_STICK:
            getItemId = GI_STICKS_1;
            break;
        case ITEM00_NUTS:
            getItemId = GI_NUTS_5;
            break;
        case ITEM00_RECOVERY_HEART:
            Item_Give(play, ITEM_RECOVERY_HEART);
            break;
        case ITEM00_FLEXIBLE:
            Health_ChangeBy(play, 0x70);
            break;
        case ITEM00_BOMBS_A:
        case ITEM00_BOMBS_B:
            Item_Give(play, ITEM_BOMBS_5);
            break;
        case ITEM00_ARROWS_SINGLE:
            Item_Give(play, ITEM_BOW);
            break;
        case ITEM00_ARROWS_SMALL:
            Item_Give(play, ITEM_ARROWS_SMALL);
            break;
        case ITEM00_ARROWS_MEDIUM:
            Item_Give(play, ITEM_ARROWS_MEDIUM);
            break;
        case ITEM00_ARROWS_LARGE:
            Item_Give(play, ITEM_ARROWS_LARGE);
            break;
        case ITEM00_SEEDS:
            getItemId = GI_SEEDS_5;
            break;
        case ITEM00_SMALL_KEY:
            getItemId = GI_KEY_SMALL;
            break;
        case ITEM00_HEART_PIECE:
            getItemId = GI_HEART_PIECE;
            break;
        case ITEM00_HEART_CONTAINER:
            getItemId = GI_HEART_CONTAINER;
            break;
        case ITEM00_MAGIC_LARGE:
            getItemId = GI_MAGIC_LARGE;
            break;
        case ITEM00_MAGIC_SMALL:
            getItemId = GI_MAGIC_SMALL;
            break;
        case ITEM00_SHIELD_DEKU:
            getItemId = GI_SHIELD_DEKU;
            break;
        case ITEM00_SHIELD_HYLIAN:
            getItemId = GI_SHIELD_HYLIAN;
            break;
        case ITEM00_TUNIC_ZORA:
            getItemId = GI_TUNIC_ZORA;
            break;
        case ITEM00_TUNIC_GORON:
            getItemId = GI_TUNIC_GORON;
            break;
        case ITEM00_BOMBS_SPECIAL:
            break;
    }

    params = &this->actor.params;

    if ((getItemId != GI_NONE) && !Actor_HasParent(&this->actor, play)) {
        func_8002F554(&this->actor, play, getItemId);
    }

    switch (*params) {
        case ITEM00_HEART_PIECE:
        case ITEM00_HEART_CONTAINER:
        case ITEM00_SMALL_KEY:
        case ITEM00_SHIELD_DEKU:
        case ITEM00_SHIELD_HYLIAN:
        case ITEM00_TUNIC_ZORA:
        case ITEM00_TUNIC_GORON:
            if (Actor_HasParent(&this->actor, play)) {
                Flags_SetCollectible(play, this->collectibleFlag);
                Actor_Kill(&this->actor);
            }
            return;
    }

    if ((*params <= ITEM00_RUPEE_RED) || (*params == ITEM00_RUPEE_ORANGE)) {
        Audio_PlaySoundGeneral(NA_SE_SY_GET_RUPY, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                               &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
    } else if (getItemId != GI_NONE) {
        if (Actor_HasParent(&this->actor, play)) {
            Flags_SetCollectible(play, this->collectibleFlag);
            Actor_Kill(&this->actor);
        }
        return;
    } else {
        Audio_PlaySoundGeneral(NA_SE_SY_GET_ITEM, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                               &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
    }

    Flags_SetCollectible(play, this->collectibleFlag);

    this->despawnTimer = 15;
    this->unk_154 = 35;
    this->actor.shape.rot.z = 0;
    this->actor.speedXZ = 0;
    this->actor.velocity.y = 0;
    this->actor.gravity = 0;

    Actor_SetScale(&this->actor, this->scale);

    this->getItemId = GI_NONE;
    EnItem00_SetupAction(this, EnItem00_Collected);
}

void EnItem00_Draw(Actor* thisx, PlayState* play) {
    EnItem00* this = (EnItem00*)thisx;
    f32 mtxScale;

    if (!(this->unk_156 & this->unk_158)) {
        switch (this->actor.params) {
            case ITEM00_RUPEE_GREEN:
            case ITEM00_RUPEE_BLUE:
            case ITEM00_RUPEE_RED:
            case ITEM00_RUPEE_ORANGE:
            case ITEM00_RUPEE_PURPLE:
                EnItem00_DrawRupee(this, play);
                break;
            case ITEM00_HEART_PIECE:
                EnItem00_DrawHeartPiece(this, play);
                break;
            case ITEM00_HEART_CONTAINER:
                EnItem00_DrawHeartContainer(this, play);
                break;
            case ITEM00_RECOVERY_HEART:
                if (this->despawnTimer < 0) {
                    if (this->despawnTimer == -1) {
                        s8 bankIndex = Object_GetIndex(&play->objectCtx, OBJECT_GI_HEART);

                        if (Object_IsLoaded(&play->objectCtx, bankIndex)) {
                            this->actor.objBankIndex = bankIndex;
                            Actor_SetObjectDependency(play, &this->actor);
                            this->despawnTimer = -2;
                        }
                    } else {
                        mtxScale = 16.0f;
                        Matrix_Scale(mtxScale, mtxScale, mtxScale, MTXMODE_APPLY);
                        GetItem_Draw(play, GID_RECOVERY_HEART);
                    }
                    break;
                }
                FALLTHROUGH;
            case ITEM00_BOMBS_A:
            case ITEM00_BOMBS_B:
            case ITEM00_BOMBS_SPECIAL:
            case ITEM00_ARROWS_SINGLE:
            case ITEM00_ARROWS_SMALL:
            case ITEM00_ARROWS_MEDIUM:
            case ITEM00_ARROWS_LARGE:
            case ITEM00_NUTS:
            case ITEM00_STICK:
            case ITEM00_MAGIC_LARGE:
            case ITEM00_MAGIC_SMALL:
            case ITEM00_SEEDS:
            case ITEM00_SMALL_KEY:
                EnItem00_DrawCollectible(this, play);
                break;
            case ITEM00_SHIELD_DEKU:
                GetItem_Draw(play, GID_SHIELD_DEKU);
                break;
            case ITEM00_SHIELD_HYLIAN:
                GetItem_Draw(play, GID_SHIELD_HYLIAN);
                break;
            case ITEM00_TUNIC_ZORA:
                GetItem_Draw(play, GID_TUNIC_ZORA);
                break;
            case ITEM00_TUNIC_GORON:
                GetItem_Draw(play, GID_TUNIC_GORON);
                break;
            case ITEM00_FLEXIBLE:
                break;
        }
    }
}

/**
 * Draw Function used for Rupee types of En_Item00.
 */
void EnItem00_DrawRupee(EnItem00* this, PlayState* play) {
    s32 pad;
    s32 texIndex;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_item00.c", 1546);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    func_8002EBCC(&this->actor, play, 0);

    if (this->actor.params <= ITEM00_RUPEE_RED) {
        texIndex = this->actor.params;
    } else {
        texIndex = this->actor.params - 0x10;
    }

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_en_item00.c", 1562),
              G_MTX_MODELVIEW | G_MTX_LOAD);

    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sRupeeTex[texIndex]));

    gSPDisplayList(POLY_OPA_DISP++, gRupeeDL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_item00.c", 1568);
}

/**
 * Draw Function used for most collectible types of En_Item00 (ammo, bombs, sticks, nuts, magic...).
 */
void EnItem00_DrawCollectible(EnItem00* this, PlayState* play) {
    s32 texIndex = this->actor.params - 3;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_item00.c", 1594);

    POLY_OPA_DISP = Play_SetFog(play, POLY_OPA_DISP);

    if (this->actor.params == ITEM00_BOMBS_SPECIAL) {
        texIndex = 1;
    } else if (this->actor.params >= ITEM00_ARROWS_SMALL) {
        texIndex -= 3;
    }

    POLY_OPA_DISP = Gfx_SetupDL_66(POLY_OPA_DISP);

    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sItemDropTex[texIndex]));

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_en_item00.c", 1607),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_OPA_DISP++, gItemDropDL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_item00.c", 1611);
}

/**
 * Draw Function used for the Heart Container type of En_Item00.
 */
void EnItem00_DrawHeartContainer(EnItem00* this, PlayState* play) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_item00.c", 1623);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    func_8002EBCC(&this->actor, play, 0);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_en_item00.c", 1634),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_OPA_DISP++, gHeartPieceExteriorDL);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    func_8002ED80(&this->actor, play, 0);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_en_item00.c", 1644),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_XLU_DISP++, gHeartContainerInteriorDL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_item00.c", 1647);
}

/**
 * Draw Function used for the Piece of Heart type of En_Item00.
 */
void EnItem00_DrawHeartPiece(EnItem00* this, PlayState* play) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_item00.c", 1658);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    func_8002ED80(&this->actor, play, 0);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_en_item00.c", 1670),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_XLU_DISP++, gHeartPieceInteriorDL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_item00.c", 1673);
}

/**
 * Converts a given drop type ID based on link's current age, health and owned items.
 * Returns a new drop type ID or -1 to cancel the drop.
 */
s16 func_8001F404(s16 dropId) {
    if (LINK_IS_ADULT) {
        if (dropId == ITEM00_SEEDS) {
            dropId = ITEM00_ARROWS_SMALL;
        } else if (dropId == ITEM00_STICK) {
            dropId = ITEM00_RUPEE_GREEN;
        }
    } else {
        if (dropId == ITEM00_ARROWS_SMALL || dropId == ITEM00_ARROWS_MEDIUM || dropId == ITEM00_ARROWS_LARGE) {
            dropId = ITEM00_SEEDS;
        }
    }

    // This is convoluted but it seems like it must be a single condition to match
    if (((dropId == ITEM00_BOMBS_A || dropId == ITEM00_BOMBS_SPECIAL || dropId == ITEM00_BOMBS_B) &&
         INV_CONTENT(ITEM_BOMB) == ITEM_NONE) ||
        ((dropId == ITEM00_ARROWS_SMALL || dropId == ITEM00_ARROWS_MEDIUM || dropId == ITEM00_ARROWS_LARGE) &&
         INV_CONTENT(ITEM_BOW) == ITEM_NONE) ||
        ((dropId == ITEM00_MAGIC_LARGE || dropId == ITEM00_MAGIC_SMALL) && gSaveContext.magicLevel == 0) ||
        ((dropId == ITEM00_SEEDS) && INV_CONTENT(ITEM_SLINGSHOT) == ITEM_NONE)) {
        return -1;
    }

    if (dropId == ITEM00_RECOVERY_HEART && gSaveContext.healthCapacity == gSaveContext.health) {
        return ITEM00_RUPEE_GREEN;
    }

    return dropId;
}

// External functions used by other actors to drop collectibles, which usually results in spawning an En_Item00 actor.

EnItem00* Item_DropCollectible(PlayState* play, Vec3f* spawnPos, s16 params) {
    s32 pad[2];
    EnItem00* spawnedActor = NULL;
    s16 param4000 = params & 0x4000;
    s16 param8000 = params & 0x8000;
    s16 param3F00 = params & 0x3F00;

    params &= 0x3FFF;

    if (((params & 0x00FF) == ITEM00_FLEXIBLE) && !param4000) {
        // TODO: Prevent the cast to EnItem00 here since this is a different actor (En_Elf)
        spawnedActor = (EnItem00*)Actor_Spawn(&play->actorCtx, play, ACTOR_EN_ELF, spawnPos->x, spawnPos->y + 40.0f,
                                              spawnPos->z, 0, 0, 0, FAIRY_HEAL_TIMED);
        EffectSsDeadSound_SpawnStationary(play, spawnPos, NA_SE_EV_BUTTERFRY_TO_FAIRY, true, DEADSOUND_REPEAT_MODE_OFF,
                                          40);
    } else {
        if (!param8000) {
            params = func_8001F404(params & 0x00FF);
        }

        if (params != -1) {
            spawnedActor = (EnItem00*)Actor_Spawn(&play->actorCtx, play, ACTOR_EN_ITEM00, spawnPos->x, spawnPos->y,
                                                  spawnPos->z, 0, 0, 0, params | param8000 | param3F00);
            if ((spawnedActor != NULL) && !param8000) {
                spawnedActor->actor.velocity.y = !param4000 ? 8.0f : -2.0f;
                spawnedActor->actor.speedXZ = 2.0f;
                spawnedActor->actor.gravity = -0.9f;
                spawnedActor->actor.world.rot.y = Rand_CenteredFloat(65536.0f);
                Actor_SetScale(&spawnedActor->actor, 0.0f);
                EnItem00_SetupAction(spawnedActor, func_8001E304);
                spawnedActor->despawnTimer = 220;
                if ((spawnedActor->actor.params != ITEM00_SMALL_KEY) &&
                    (spawnedActor->actor.params != ITEM00_HEART_PIECE) &&
                    (spawnedActor->actor.params != ITEM00_HEART_CONTAINER)) {
                    spawnedActor->actor.room = -1;
                }
                spawnedActor->actor.flags |= ACTOR_FLAG_4;
            }
        }
    }
    return spawnedActor;
}

EnItem00* Item_DropCollectible2(PlayState* play, Vec3f* spawnPos, s16 params) {
    EnItem00* spawnedActor = NULL;
    s32 pad;
    s16 param4000 = params & 0x4000;
    s16 param8000 = params & 0x8000;
    s16 param3F00 = params & 0x3F00;

    params &= 0x3FFF;

    if (((params & 0x00FF) == ITEM00_FLEXIBLE) && !param4000) {
        // TODO: Prevent the cast to EnItem00 here since this is a different actor (En_Elf)
        spawnedActor = (EnItem00*)Actor_Spawn(&play->actorCtx, play, ACTOR_EN_ELF, spawnPos->x, spawnPos->y + 40.0f,
                                              spawnPos->z, 0, 0, 0, FAIRY_HEAL_TIMED);
        EffectSsDeadSound_SpawnStationary(play, spawnPos, NA_SE_EV_BUTTERFRY_TO_FAIRY, true, DEADSOUND_REPEAT_MODE_OFF,
                                          40);
    } else {
        params = func_8001F404(params & 0x00FF);
        if (params != -1) {
            spawnedActor = (EnItem00*)Actor_Spawn(&play->actorCtx, play, ACTOR_EN_ITEM00, spawnPos->x, spawnPos->y,
                                                  spawnPos->z, 0, 0, 0, params | param8000 | param3F00);
            if ((spawnedActor != NULL) && !param8000) {
                spawnedActor->actor.velocity.y = 0.0f;
                spawnedActor->actor.speedXZ = 0.0f;
                spawnedActor->actor.gravity = param4000 ? 0.0f : -0.9f;
                spawnedActor->actor.world.rot.y = Rand_CenteredFloat(65536.0f);
                spawnedActor->actor.flags |= ACTOR_FLAG_4;
            }
        }
    }

    return spawnedActor;
}

void Item_DropCollectibleRandom(PlayState* play, Actor* fromActor, Vec3f* spawnPos, s16 params) {
    s32 pad;
    EnItem00* spawnedActor;
    s16 dropQuantity;
    s16 param8000;
    s16 dropTableIndex = Rand_ZeroOne() * 16.0f;
    u8 dropId;

    param8000 = params & 0x8000;
    params &= 0x7FFF;

    if (fromActor != NULL) {
        if (fromActor->dropFlag) {
            if (fromActor->dropFlag & 0x01) {
                params = 1 * 0x10;
                dropTableIndex = 11;
            } else if (fromActor->dropFlag & 0x02) {
                params = 1 * 0x10;
                dropTableIndex = 6;
            } else if (fromActor->dropFlag & 0x04) {
                params = 6 * 0x10;
                dropTableIndex = 9;
            } else if (fromActor->dropFlag & 0x08) {
                params = 3 * 0x10;
                dropTableIndex = 11;
            } else if (fromActor->dropFlag & 0x10) {
                params = 6 * 0x10;
                dropTableIndex = 12;
            } else if (fromActor->dropFlag & 0x20) {
                params = 0 * 0x10;
                dropTableIndex = 0;
            } else if (fromActor->dropFlag & 0x40) {
                params = 0 * 0x10;
                dropTableIndex = 1;
            }
        }
        if (fromActor->dropFlag & 0x20) {
            dropId = ITEM00_RUPEE_PURPLE;
        } else {
            dropId = sItemDropIds[params + dropTableIndex];
        }
    } else {
        dropId = sItemDropIds[params + dropTableIndex];
    }

    if (dropId == ITEM00_FLEXIBLE) {
        if (gSaveContext.health <= 0x10) { // 1 heart or less
            Actor_Spawn(&play->actorCtx, play, ACTOR_EN_ELF, spawnPos->x, spawnPos->y + 40.0f, spawnPos->z, 0, 0, 0,
                        FAIRY_HEAL_TIMED);
            EffectSsDeadSound_SpawnStationary(play, spawnPos, NA_SE_EV_BUTTERFRY_TO_FAIRY, true,
                                              DEADSOUND_REPEAT_MODE_OFF, 40);
            return;
        } else if (gSaveContext.health <= 0x30) { // 3 hearts or less
            params = 0xB * 0x10;
            dropTableIndex = 0x0;
            dropId = ITEM00_RECOVERY_HEART;
        } else if (gSaveContext.health <= 0x50) { // 5 hearts or less
            params = 0xA * 0x10;
            dropTableIndex = 0x0;
            dropId = ITEM00_RECOVERY_HEART;
        } else if ((gSaveContext.magicLevel != 0) && (gSaveContext.magic == 0)) { // Empty magic meter
            params = 0xA * 0x10;
            dropTableIndex = 0x0;
            dropId = ITEM00_MAGIC_LARGE;
        } else if ((gSaveContext.magicLevel != 0) && (gSaveContext.magic <= (gSaveContext.magicLevel >> 1))) {
            params = 0xA * 0x10;
            dropTableIndex = 0x0;
            dropId = ITEM00_MAGIC_SMALL;
        } else if (!LINK_IS_ADULT && (AMMO(ITEM_SLINGSHOT) < 6)) {
            params = 0xA * 0x10;
            dropTableIndex = 0x0;
            dropId = ITEM00_SEEDS;
        } else if (LINK_IS_ADULT && (AMMO(ITEM_BOW) < 6)) {
            params = 0xA * 0x10;
            dropTableIndex = 0x0;
            dropId = ITEM00_ARROWS_MEDIUM;
        } else if (AMMO(ITEM_BOMB) < 6) {
            params = 0xD * 0x10;
            dropTableIndex = 0x0;
            dropId = ITEM00_BOMBS_A;
        } else if (gSaveContext.rupees < 11) {
            params = 0xA * 0x10;
            dropTableIndex = 0x0;
            dropId = ITEM00_RUPEE_RED;
        } else {
            return;
        }
    }

    if (dropId != ITEM00_NONE) {
        dropQuantity = sDropQuantities[params + dropTableIndex];
        while (dropQuantity > 0) {
            if (!param8000) {
                dropId = func_8001F404(dropId);
                if (dropId != ITEM00_NONE) {
                    spawnedActor = (EnItem00*)Actor_Spawn(&play->actorCtx, play, ACTOR_EN_ITEM00, spawnPos->x,
                                                          spawnPos->y, spawnPos->z, 0, 0, 0, dropId);
                    if ((spawnedActor != NULL) && (dropId != ITEM00_NONE)) {
                        spawnedActor->actor.velocity.y = 8.0f;
                        spawnedActor->actor.speedXZ = 2.0f;
                        spawnedActor->actor.gravity = -0.9f;
                        spawnedActor->actor.world.rot.y = Rand_ZeroOne() * 40000.0f;
                        Actor_SetScale(&spawnedActor->actor, 0.0f);
                        EnItem00_SetupAction(spawnedActor, func_8001E304);
                        spawnedActor->actor.flags |= ACTOR_FLAG_4;
                        if ((spawnedActor->actor.params != ITEM00_SMALL_KEY) &&
                            (spawnedActor->actor.params != ITEM00_HEART_PIECE) &&
                            (spawnedActor->actor.params != ITEM00_HEART_CONTAINER)) {
                            spawnedActor->actor.room = -1;
                        }
                        spawnedActor->despawnTimer = 220;
                    }
                }
            } else {
                Item_DropCollectible(play, spawnPos, params | 0x8000);
            }
            dropQuantity--;
        }
    }
}
