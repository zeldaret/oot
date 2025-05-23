/*
 * File: z_boss_goma.c
 * Overlay: ovl_Boss_Goma
 * Description: Gohma
 */

#include "z_boss_goma.h"
#include "overlays/actors/ovl_En_Goma/z_en_goma.h"
#include "overlays/actors/ovl_Door_Shutter/z_door_shutter.h"
#include "overlays/actors/ovl_Door_Warp1/z_door_warp1.h"

#include "libc64/math64.h"
#include "libc64/qrand.h"
#include "array_count.h"
#include "attributes.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "ichain.h"
#include "printf.h"
#include "rand.h"
#include "rumble.h"
#include "segmented_address.h"
#include "seqcmd.h"
#include "sequence.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "z_lib.h"
#include "z64effect.h"
#include "z64environment.h"
#include "z64play.h"
#include "z64player.h"
#include "z64save.h"

#include "assets/objects/object_goma/object_goma.h"

#define FLAGS                                                                                 \
    (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_HOSTILE | ACTOR_FLAG_UPDATE_CULLING_DISABLED | \
     ACTOR_FLAG_DRAW_CULLING_DISABLED)

// IRIS_FOLLOW: gohma looks towards the player (iris rotation)
// BONUS_IFRAMES: gain invincibility frames when the player does something (throwing things?), or
// randomly (see BossGoma_UpdateEye)
typedef enum GohmaEyeState {
    EYESTATE_IRIS_FOLLOW_BONUS_IFRAMES, // default, allows not drawing lens and iris when eye is closed
    EYESTATE_IRIS_NO_FOLLOW_NO_IFRAMES,
    EYESTATE_IRIS_FOLLOW_NO_IFRAMES
} GohmaEyeState;

typedef enum GohmaVisualState {
    VISUALSTATE_RED,         // main/eye: red
    VISUALSTATE_DEFAULT,     // main: greenish cyan, blinks with dark gray every 16 frames; eye: white
    VISUALSTATE_DEFEATED,    // main/eye: dark gray
    VISUALSTATE_STUNNED = 4, // main: greenish cyan, alternates with blue; eye: greenish cyan
    VISUALSTATE_HIT          // main: greenish cyan, alternates with red; eye: greenish cyan
} GohmaVisualState;

void BossGoma_Init(Actor* thisx, PlayState* play);
void BossGoma_Destroy(Actor* thisx, PlayState* play);
void BossGoma_Update(Actor* thisx, PlayState* play);
void BossGoma_Draw(Actor* thisx, PlayState* play);

void BossGoma_SetupEncounter(BossGoma* this, PlayState* play);
void BossGoma_Encounter(BossGoma* this, PlayState* play);
void BossGoma_Defeated(BossGoma* this, PlayState* play);
void BossGoma_FloorAttackPosture(BossGoma* this, PlayState* play);
void BossGoma_FloorPrepareAttack(BossGoma* this, PlayState* play);
void BossGoma_FloorAttack(BossGoma* this, PlayState* play);
void BossGoma_FloorDamaged(BossGoma* this, PlayState* play);
void BossGoma_FloorLandStruckDown(BossGoma* this, PlayState* play);
void BossGoma_FloorLand(BossGoma* this, PlayState* play);
void BossGoma_FloorStunned(BossGoma* this, PlayState* play);
void BossGoma_FallJump(BossGoma* this, PlayState* play);
void BossGoma_FallStruckDown(BossGoma* this, PlayState* play);
void BossGoma_CeilingSpawnGohmas(BossGoma* this, PlayState* play);
void BossGoma_CeilingPrepareSpawnGohmas(BossGoma* this, PlayState* play);
void BossGoma_FloorIdle(BossGoma* this, PlayState* play);
void BossGoma_CeilingIdle(BossGoma* this, PlayState* play);
void BossGoma_FloorMain(BossGoma* this, PlayState* play);
void BossGoma_WallClimb(BossGoma* this, PlayState* play);
void BossGoma_CeilingMoveToCenter(BossGoma* this, PlayState* play);
void BossGoma_SpawnChildGohma(BossGoma* this, PlayState* play, s16 i);

ActorProfile Boss_Goma_Profile = {
    /**/ ACTOR_BOSS_GOMA,
    /**/ ACTORCAT_BOSS,
    /**/ FLAGS,
    /**/ OBJECT_GOMA,
    /**/ sizeof(BossGoma),
    /**/ BossGoma_Init,
    /**/ BossGoma_Destroy,
    /**/ BossGoma_Update,
    /**/ BossGoma_Draw,
};

static ColliderJntSphElementInit sColliderJntSphElementsInit[13] = {
    {
        {
            ELEM_MATERIAL_UNK3,
            { 0xFFCFFFFF, 0x00, 0x08 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            ATELEM_ON | ATELEM_SFX_NORMAL,
            ACELEM_ON,
            OCELEM_ON,
        },
        { BOSSGOMA_LIMB_EYE, { { 0, 0, 1200 }, 20 }, 100 },
    },
    {
        {
            ELEM_MATERIAL_UNK2,
            { 0xFFCFFFFF, 0x00, 0x08 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            ATELEM_ON | ATELEM_SFX_NORMAL,
            ACELEM_ON,
            OCELEM_ON,
        },
        { BOSSGOMA_LIMB_TAIL4, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        {
            ELEM_MATERIAL_UNK2,
            { 0xFFCFFFFF, 0x00, 0x08 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            ATELEM_ON | ATELEM_SFX_NORMAL,
            ACELEM_ON,
            OCELEM_ON,
        },
        { BOSSGOMA_LIMB_TAIL3, { { 0, 0, 0 }, 15 }, 100 },
    },
    {
        {
            ELEM_MATERIAL_UNK2,
            { 0xFFCFFFFF, 0x00, 0x08 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            ATELEM_ON | ATELEM_SFX_NORMAL,
            ACELEM_ON,
            OCELEM_ON,
        },
        { BOSSGOMA_LIMB_TAIL2, { { 0, 0, 0 }, 12 }, 100 },
    },
    {
        {
            ELEM_MATERIAL_UNK2,
            { 0xFFCFFFFF, 0x00, 0x08 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            ATELEM_ON | ATELEM_SFX_NORMAL,
            ACELEM_ON,
            OCELEM_ON,
        },
        { BOSSGOMA_LIMB_TAIL1, { { 0, 0, 0 }, 25 }, 100 },
    },
    {
        {
            ELEM_MATERIAL_UNK2,
            { 0xFFCFFFFF, 0x00, 0x08 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            ATELEM_ON | ATELEM_SFX_NORMAL,
            ACELEM_ON,
            OCELEM_ON,
        },
        { BOSSGOMA_LIMB_R_FEET, { { 0, 0, 0 }, 30 }, 100 },
    },
    {
        {
            ELEM_MATERIAL_UNK2,
            { 0xFFCFFFFF, 0x00, 0x08 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            ATELEM_ON | ATELEM_SFX_NORMAL,
            ACELEM_ON,
            OCELEM_ON,
        },
        { BOSSGOMA_LIMB_R_SHIN, { { 0, 0, 0 }, 15 }, 100 },
    },
    {
        {
            ELEM_MATERIAL_UNK2,
            { 0xFFCFFFFF, 0x00, 0x08 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            ATELEM_ON | ATELEM_SFX_NORMAL,
            ACELEM_ON,
            OCELEM_ON,
        },
        { BOSSGOMA_LIMB_R_THIGH_SHELL, { { 0, 0, 0 }, 15 }, 100 },
    },
    {
        {
            ELEM_MATERIAL_UNK2,
            { 0xFFCFFFFF, 0x00, 0x08 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            ATELEM_ON | ATELEM_SFX_NORMAL,
            ACELEM_ON,
            OCELEM_ON,
        },
        { BOSSGOMA_LIMB_L_ANTENNA_CLAW, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        {
            ELEM_MATERIAL_UNK2,
            { 0xFFCFFFFF, 0x00, 0x08 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            ATELEM_ON | ATELEM_SFX_NORMAL,
            ACELEM_ON,
            OCELEM_ON,
        },
        { BOSSGOMA_LIMB_R_ANTENNA_CLAW, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        {
            ELEM_MATERIAL_UNK2,
            { 0xFFCFFFFF, 0x00, 0x08 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            ATELEM_ON | ATELEM_SFX_NORMAL,
            ACELEM_ON,
            OCELEM_ON,
        },
        { BOSSGOMA_LIMB_L_FEET, { { 0, 0, 0 }, 30 }, 100 },
    },
    {
        {
            ELEM_MATERIAL_UNK2,
            { 0xFFCFFFFF, 0x00, 0x08 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            ATELEM_ON | ATELEM_SFX_NORMAL,
            ACELEM_ON,
            OCELEM_ON,
        },
        { BOSSGOMA_LIMB_L_SHIN, { { 0, 0, 0 }, 15 }, 100 },
    },
    {
        {
            ELEM_MATERIAL_UNK2,
            { 0xFFCFFFFF, 0x00, 0x08 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            ATELEM_ON | ATELEM_SFX_NORMAL,
            ACELEM_ON,
            OCELEM_ON,
        },
        { BOSSGOMA_LIMB_L_THIGH_SHELL, { { 0, 0, 0 }, 15 }, 100 },
    },
};

static ColliderJntSphInit sColliderJntSphInit = {
    {
        COL_MATERIAL_HIT3,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_PLAYER,
        OC2_TYPE_1,
        COLSHAPE_JNTSPH,
    },
    13,
    sColliderJntSphElementsInit,
};

static u8 sClearPixelTableFirstPass[16 * 16] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x01, 0x01,
    0x01, 0x01, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
    0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00,
    0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00,
    0x01, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x01, 0x00, 0x01, 0x01, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x00,
    0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x01, 0x01,
    0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01,
    0x01, 0x01, 0x01, 0x01, 0x00, 0x01, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x01, 0x01, 0x01, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x01, 0x01, 0x01,
    0x01, 0x01, 0x00, 0x00, 0x01, 0x01, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00
};

static u8 sClearPixelTableSecondPass[16 * 16] = {
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x01, 0x01, 0x01, 0x01,
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01
};

// indexed by limb (where the root limb is 1)
static u8 sDeadLimbLifetime[] = {
    0,  0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    30, // tail end/last part
    40, // tail 2nd to last part
    0,  0, 0, 0, 0, 0, 0, 0,
    10, // back of right claw/hand
    15, // front of right claw/hand
    21, // part of right arm (inner)
    0,  0,
    25, // part of right arm (shell)
    0,  0,
    31, // part of right arm (shell on shoulder)
    35, // part of right arm (shoulder)
    0,  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    43, // end of left antenna
    48, // middle of left antenna
    53, // start of left antenna
    0,  0, 0, 0,
    42, // end of right antenna
    45, // middle of right antenna
    53, // start of right antenna
    0,  0, 0, 0, 0, 0,
    11, // back of left claw/hand
    15, // front of left claw/hand
    21, // part of left arm (inner)
    0,  0,
    25, // part of left arm (shell)
    0,  0,
    30, // part of left arm (shell on shoulder)
    35, // part of left arm (shoulder)
    0,  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
};

/**
 * Sets the `i`th pixel of a 16x16 RGBA16 image to 0 (transparent black)
 * according to the `clearPixelTable`
 */
void BossGoma_ClearPixels16x16Rgba16(s16* rgba16image, u8* clearPixelTable, s16 i) {
    if (clearPixelTable[i]) {
        rgba16image[i] = 0;
    }
}

/**
 * Sets the `i`th 2x2 pixels block of a 32x32 RGBA16 image to 0 (transparent black)
 * according to the `clearPixelTable`
 */
void BossGoma_ClearPixels32x32Rgba16(s16* rgba16image, u8* clearPixelTable, s16 i) {
    s16* targetPixel;

    if (clearPixelTable[i]) {
        // address of the top left pixel in a 2x2 pixels block located at
        // (i & 0xF, i >> 4) in a 16x16 grid of 2x2 pixels
        targetPixel = rgba16image;
        targetPixel += (s16)((i & 0xF) * 2 + (i & 0xF0) * 4);

        // set the 2x2 block of pixels to 0
        targetPixel[0] = 0;
        targetPixel[1] = 0;
        targetPixel[32 + 0] = 0;
        targetPixel[32 + 1] = 0;
    }
}

/**
 * Clear pixels from Gohma's textures
 */
void BossGoma_ClearPixels(u8* clearPixelTable, s16 i) {
    BossGoma_ClearPixels16x16Rgba16(SEGMENTED_TO_VIRTUAL(gGohmaBodyTex), clearPixelTable, i);
    BossGoma_ClearPixels16x16Rgba16(SEGMENTED_TO_VIRTUAL(gGohmaShellUndersideTex), clearPixelTable, i);
    BossGoma_ClearPixels16x16Rgba16(SEGMENTED_TO_VIRTUAL(gGohmaDarkShellTex), clearPixelTable, i);
    BossGoma_ClearPixels16x16Rgba16(SEGMENTED_TO_VIRTUAL(gGohmaEyeTex), clearPixelTable, i);

    BossGoma_ClearPixels32x32Rgba16(SEGMENTED_TO_VIRTUAL(gGohmaShellTex), clearPixelTable, i);
    BossGoma_ClearPixels32x32Rgba16(SEGMENTED_TO_VIRTUAL(gGohmaIrisTex), clearPixelTable, i);
}

static InitChainEntry sInitChain[] = {
    ICHAIN_U8(attentionRangeType, ATTENTION_RANGE_2, ICHAIN_CONTINUE),
    ICHAIN_S8(naviEnemyId, NAVI_ENEMY_GOHMA, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, -2000, ICHAIN_STOP),
};

void BossGoma_Init(Actor* thisx, PlayState* play) {
    s32 pad;
    BossGoma* this = (BossGoma*)thisx;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, 4000.0f, ActorShadow_DrawCircle, 150.0f);
    SkelAnime_Init(play, &this->skelanime, &gGohmaSkel, &gGohmaIdleCrouchedAnim, NULL, NULL, 0);
    Animation_PlayLoop(&this->skelanime, &gGohmaIdleCrouchedAnim);
    this->actor.shape.rot.x = -0x8000; // upside-down
    this->eyeIrisScaleX = 1.0f;
    this->eyeIrisScaleY = 1.0f;
    this->unusedInitX = this->actor.world.pos.x;
    this->unusedInitZ = this->actor.world.pos.z;
    this->actor.world.pos.y = -300.0f; // ceiling
    this->actor.gravity = 0.0f;
    BossGoma_SetupEncounter(this, play);
    this->actor.colChkInfo.health = 10;
    this->actor.colChkInfo.mass = MASS_IMMOVABLE;
    Collider_InitJntSph(play, &this->collider);
    Collider_SetJntSph(play, &this->collider, &this->actor, &sColliderJntSphInit, this->colliderElements);

    if (Flags_GetClear(play, play->roomCtx.curRoom.num)) {
        Actor_Kill(&this->actor);
        Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_DOOR_WARP1, 0.0f, -640.0f, 0.0f, 0, 0, 0,
                           WARP_DUNGEON_CHILD);
        Actor_Spawn(&play->actorCtx, play, ACTOR_ITEM_B_HEART, 141.0f, -640.0f, -84.0f, 0, 0, 0, 0);
    }
}

void BossGoma_PlayEffectsAndSfx(BossGoma* this, PlayState* play, s16 arg2, s16 amountMinus1) {
    if (arg2 == 0 || arg2 == 1 || arg2 == 3) {
        Actor_SpawnFloorDustRing(play, &this->actor, &this->rightHandBackLimbWorldPos, 25.0f, amountMinus1, 8.0f, 500,
                                 10, true);
    }

    if (arg2 == 0 || arg2 == 2 || arg2 == 3) {
        Actor_SpawnFloorDustRing(play, &this->actor, &this->leftHandBackLimbWorldPos, 25.0f, amountMinus1, 8.0f, 500,
                                 10, true);
    }

    if (arg2 == 0) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_GOMA_DOWN);
    } else {
        Actor_PlaySfx(&this->actor, NA_SE_EN_GOMA_WALK);
    }
}

void BossGoma_Destroy(Actor* thisx, PlayState* play) {
    BossGoma* this = (BossGoma*)thisx;

    SkelAnime_Free(&this->skelanime, play);
    Collider_DestroyJntSph(play, &this->collider);
}

/**
 * When Gohma is hit and its health drops to 0
 */
void BossGoma_SetupDefeated(BossGoma* this, PlayState* play) {
    Animation_Change(&this->skelanime, &gGohmaDeathAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gGohmaDeathAnim),
                     ANIMMODE_ONCE, -2.0f);
    this->actionFunc = BossGoma_Defeated;
    this->disableGameplayLogic = true;
    this->decayingProgress = 0;
    this->noBackfaceCulling = false;
    this->framesUntilNextAction = 1200;
    this->actionState = 0;
    this->actor.flags &= ~(ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_HOSTILE);
    this->actor.speed = 0.0f;
    this->actor.shape.shadowScale = 0.0f;
    SEQCMD_STOP_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 1);
    Actor_PlaySfx(&this->actor, NA_SE_EN_GOMA_DEAD);
}

/**
 * Initial action setup, with Gohma waiting on the ceiling for the fight to start.
 */
void BossGoma_SetupEncounter(BossGoma* this, PlayState* play) {
    f32 lastFrame = Animation_GetLastFrame(&gGohmaWalkAnim);

    Animation_Change(&this->skelanime, &gGohmaWalkAnim, 1.0f, 0.0f, lastFrame, ANIMMODE_LOOP, -15.0f);
    this->actionFunc = BossGoma_Encounter;
    this->actionState = 0;
    this->disableGameplayLogic = true;
    play->envCtx.lightSettingOverride = 4;
    play->envCtx.lightBlendRateOverride = 255;
}

/**
 * On the floor and not doing anything for 20-30 frames, before going back to BossGoma_FloorMain
 */
void BossGoma_SetupFloorIdle(BossGoma* this) {
    f32 lastFrame = Animation_GetLastFrame(&gGohmaIdleCrouchedAnim);

    this->framesUntilNextAction = Rand_S16Offset(20, 30);
    Animation_Change(&this->skelanime, &gGohmaIdleCrouchedAnim, 1.0f, 0.0f, lastFrame, ANIMMODE_LOOP, -5.0f);
    this->actionFunc = BossGoma_FloorIdle;
}

/**
 * On the ceiling and not doing anything for 20-30 frames, leads to spawning children gohmas
 */
void BossGoma_SetupCeilingIdle(BossGoma* this) {
    this->framesUntilNextAction = Rand_S16Offset(20, 30);
    Animation_Change(&this->skelanime, &gGohmaHangAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gGohmaHangAnim),
                     ANIMMODE_LOOP, -5.0f);
    this->actionFunc = BossGoma_CeilingIdle;
}

/**
 * When the player killed all children gohmas
 */
void BossGoma_SetupFallJump(BossGoma* this) {
    Animation_Change(&this->skelanime, &gGohmaLandAnim, 1.0f, 0.0f, 0.0f, ANIMMODE_ONCE, -5.0f);
    this->actionFunc = BossGoma_FallJump;
    this->actor.speed = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.gravity = -2.0f;
}

/**
 * When the player successfully hits Gohma on the ceiling
 */
void BossGoma_SetupFallStruckDown(BossGoma* this) {
    Animation_Change(&this->skelanime, &gGohmaCrashAnim, 1.0f, 0.0f, 0.0f, ANIMMODE_ONCE, -5.0f);
    this->actionFunc = BossGoma_FallStruckDown;
    this->actor.speed = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.gravity = -2.0f;
}

void BossGoma_SetupCeilingSpawnGohmas(BossGoma* this) {
    Animation_Change(&this->skelanime, &gGohmaLayEggsAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gGohmaLayEggsAnim),
                     ANIMMODE_LOOP, -15.0f);
    this->actionFunc = BossGoma_CeilingSpawnGohmas;
    this->spawnGohmasActionTimer = 0;
}

void BossGoma_SetupCeilingPrepareSpawnGohmas(BossGoma* this) {
    Animation_Change(&this->skelanime, &gGohmaPrepareEggsAnim, 1.0f, 0.0f,
                     Animation_GetLastFrame(&gGohmaPrepareEggsAnim), ANIMMODE_LOOP, -10.0f);
    this->actionFunc = BossGoma_CeilingPrepareSpawnGohmas;
    this->framesUntilNextAction = 70;
}

void BossGoma_SetupWallClimb(BossGoma* this) {
    Animation_Change(&this->skelanime, &gGohmaClimbAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gGohmaClimbAnim),
                     ANIMMODE_LOOP, -10.0f);
    this->actionFunc = BossGoma_WallClimb;
    this->actor.speed = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.gravity = 0.0f;
}

/**
 * Gohma either reached the ceiling after climbing a wall, or is waiting for the player to kill the (children) Gohmas.
 */
void BossGoma_SetupCeilingMoveToCenter(BossGoma* this) {
    Animation_Change(&this->skelanime, &gGohmaWalkAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gGohmaWalkAnim),
                     ANIMMODE_LOOP, -5.0f);
    this->actionFunc = BossGoma_CeilingMoveToCenter;
    this->actor.speed = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.gravity = 0.0f;
    this->framesUntilNextAction = Rand_S16Offset(30, 60);
}

/**
 * Root action when on the floor, leads to attacking or climbing.
 */
void BossGoma_SetupFloorMain(BossGoma* this) {
    Animation_Change(&this->skelanime, &gGohmaWalkCrouchedAnim, 1.0f, 0.0f,
                     Animation_GetLastFrame(&gGohmaWalkCrouchedAnim), ANIMMODE_LOOP, -5.0f);
    this->actionFunc = BossGoma_FloorMain;
    this->framesUntilNextAction = Rand_S16Offset(70, 110);
}

/**
 * Gohma jumped to the floor on its own, after the player has killed its children Gohmas.
 */
void BossGoma_SetupFloorLand(BossGoma* this) {
    Animation_Change(&this->skelanime, &gGohmaLandAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gGohmaLandAnim),
                     ANIMMODE_ONCE, -2.0f);
    this->actionFunc = BossGoma_FloorLand;
    this->currentAnimFrameCount = Animation_GetLastFrame(&gGohmaLandAnim);
}

/**
 * Gohma was shot by the player down from the ceiling.
 */
void BossGoma_SetupFloorLandStruckDown(BossGoma* this) {
    Animation_Change(&this->skelanime, &gGohmaCrashAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gGohmaCrashAnim),
                     ANIMMODE_ONCE, -2.0f);
    this->currentAnimFrameCount = Animation_GetLastFrame(&gGohmaCrashAnim);
    this->actionFunc = BossGoma_FloorLandStruckDown;
    this->currentAnimFrameCount = Animation_GetLastFrame(&gGohmaCrashAnim);
}

/**
 * Gohma is vulnerable, from being struck down from the ceiling or on the ground.
 */
void BossGoma_SetupFloorStunned(BossGoma* this) {
    Animation_Change(&this->skelanime, &gGohmaStunnedAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gGohmaStunnedAnim),
                     ANIMMODE_LOOP, -2.0f);
    this->actionFunc = BossGoma_FloorStunned;
}

/**
 * Take an attack posture, when the player is close enough.
 */
void BossGoma_SetupFloorAttackPosture(BossGoma* this) {
    Animation_Change(&this->skelanime, &gGohmaPrepareAttackAnim, 1.0f, 0.0f,
                     Animation_GetLastFrame(&gGohmaPrepareAttackAnim), ANIMMODE_ONCE, -10.0f);
    this->actionFunc = BossGoma_FloorAttackPosture;
}

/**
 * Leads to BossGoma_FloorAttack after 1 frame
 */
void BossGoma_SetupFloorPrepareAttack(BossGoma* this) {
    Animation_Change(&this->skelanime, &gGohmaStandAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gGohmaStandAnim),
                     ANIMMODE_LOOP, -10.0f);
    this->actionFunc = BossGoma_FloorPrepareAttack;
    this->framesUntilNextAction = 0;
}

void BossGoma_SetupFloorAttack(BossGoma* this) {
    Animation_Change(&this->skelanime, &gGohmaAttackAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gGohmaAttackAnim),
                     ANIMMODE_ONCE, -10.0f);
    this->actionFunc = BossGoma_FloorAttack;
    this->actionState = 0;
    this->framesUntilNextAction = 0;
}

/**
 * Plays an animation for Gohma being hit (while stunned)
 * The setup and the action preserve timers apart from the patience one, notably `framesUntilNextAction` which is used
 * as the stun duration
 */
void BossGoma_SetupFloorDamaged(BossGoma* this) {
    Animation_Change(&this->skelanime, &gGohmaDamageAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gGohmaDamageAnim),
                     ANIMMODE_ONCE, -2.0f);
    this->actionFunc = BossGoma_FloorDamaged;
}

void BossGoma_UpdateCeilingMovement(BossGoma* this, PlayState* play, f32 dz, f32 targetSpeedXZ,
                                    s16 rotateTowardsCenter) {
    static Vec3f velInit = { 0.0f, 0.0f, 0.0f };
    static Vec3f accelInit = { 0.0f, -0.5f, 0.0f };
    static Vec3f roomCenter = { -150.0f, 0.0f, -350.0f };
    Vec3f* basePos = NULL;
    s16 i;
    Vec3f vel;
    Vec3f accel;
    Vec3f pos;

    roomCenter.z += dz; // dz is always 0
    SkelAnime_Update(&this->skelanime);
    Math_ApproachF(&this->actor.speed, targetSpeedXZ, 0.5f, 2.0f);

    if (rotateTowardsCenter) {
        Math_ApproachS(&this->actor.world.rot.y, Math_Vec3f_Yaw(&this->actor.world.pos, &roomCenter) + 0x8000, 3,
                       0x3E8);
    }

    if (Animation_OnFrame(&this->skelanime, 9.0f)) {
        basePos = &this->rightHandBackLimbWorldPos;
    } else if (Animation_OnFrame(&this->skelanime, 1.0f)) {
        basePos = &this->leftHandBackLimbWorldPos;
    }

    if (basePos != NULL) {
        for (i = 0; i < 5; i++) {
            vel = velInit;
            accel = accelInit;
            pos.x = Rand_CenteredFloat(70.0f) + basePos->x;
            pos.y = Rand_ZeroFloat(30.0f) + basePos->y;
            pos.z = Rand_CenteredFloat(70.0f) + basePos->z;
            EffectSsHahen_Spawn(play, &pos, &vel, &accel, 0, (s16)(Rand_ZeroOne() * 5.0f) + 10, -1, 10, NULL);
        }
        Actor_PlaySfx(&this->actor, NA_SE_EN_GOMA_HIGH);
    }
}

void BossGoma_SetupEncounterState4(BossGoma* this, PlayState* play) {
    Player* player;
    Camera* mainCam = Play_GetCamera(play, CAM_ID_MAIN);

    player = GET_PLAYER(play);
    this->actionState = 4;
    this->actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED;
    Cutscene_StartManual(play, &play->csCtx);
    Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_1);
    this->subCamId = Play_CreateSubCamera(play);
    Play_ChangeCameraStatus(play, CAM_ID_MAIN, CAM_STAT_UNK3);
    Play_ChangeCameraStatus(play, this->subCamId, CAM_STAT_ACTIVE);
    Animation_Change(&this->skelanime, &gGohmaEyeRollAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gGohmaEyeRollAnim),
                     ANIMMODE_ONCE, 0.0f);
    this->currentAnimFrameCount = Animation_GetLastFrame(&gGohmaEyeRollAnim);

    // room center (todo: defines for hardcoded positions relative to room center)
    this->actor.world.pos.x = -150.0f;
    this->actor.world.pos.z = -350.0f;

    // room entrance, towards center
    player->actor.world.pos.x = 150.0f;
    player->actor.world.pos.z = 300.0f;

    player->actor.world.rot.y = player->actor.shape.rot.y = -0x705C;
    this->actor.world.rot.y = Actor_WorldYawTowardActor(&this->actor, &GET_PLAYER(play)->actor) + 0x8000;

    // room entrance, closer to room center
    this->subCamEye.x = 90.0f;
    this->subCamEye.z = 170.0f;
    this->subCamEye.y = mainCam->eye.y + 20.0f;

    this->framesUntilNextAction = 50;

    this->subCamAt.x = this->actor.world.pos.x;
    this->subCamAt.y = this->actor.world.pos.y;
    this->subCamAt.z = this->actor.world.pos.z;

    SEQCMD_STOP_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 1);
}

/**
 * Spawns the door once the player entered
 * Wait for the player to look at Gohma on the ceiling
 * Handles the "meeting Gohma" cutscene, including boss card
 *
 * Skips the door and look-at-Gohma puzzle if the player already reached the boss card part before
 */
void BossGoma_Encounter(BossGoma* this, PlayState* play) {
    Camera* mainCam;
    Player* player = GET_PLAYER(play);
    f32 s;
    s32 pad;

    Math_ApproachZeroF(&this->actor.speed, 0.5f, 2.0f);

    switch (this->actionState) {
        case 0: // wait for the player to enter the room
            // entrance of the boss room
            if (fabsf(player->actor.world.pos.x - 150.0f) < 60.0f &&
                fabsf(player->actor.world.pos.z - 350.0f) < 60.0f) {
                if (GET_EVENTCHKINF(EVENTCHKINF_BEGAN_GOHMA_BATTLE)) {
                    BossGoma_SetupEncounterState4(this, play);
                    Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_DOOR_SHUTTER, 164.72f, -480.0f,
                                       397.68002f, 0, -0x705C, 0, DOORSHUTTER_PARAMS(SHUTTER_GOHMA_BLOCK, 0));
                } else {
                    Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_8);
                    this->actionState = 1;
                }
            }
            break;

        case 1: // player entered the room
            Cutscene_StartManual(play, &play->csCtx);
            this->subCamId = Play_CreateSubCamera(play);
            PRINTF("MAKE CAMERA !!!   1   !!!!!!!!!!!!!!!!!!!!!!!!!!\n");
            Play_ChangeCameraStatus(play, CAM_ID_MAIN, CAM_STAT_WAIT);
            Play_ChangeCameraStatus(play, this->subCamId, CAM_STAT_ACTIVE);
            this->actionState = 2;
            // ceiling center
            this->actor.world.pos.x = -150.0f;
            this->actor.world.pos.y = -320.0f;
            this->actor.world.pos.z = -350.0f;
            // room entrance
            player->actor.world.pos.x = 150.0f;
            player->actor.world.pos.z = 300.0f;
            // near ceiling center
            this->subCamEye.x = -350.0f;
            this->subCamEye.y = -310.0f;
            this->subCamEye.z = -350.0f;
            // below room entrance
            this->subCamAt.x = player->actor.world.pos.x;
            this->subCamAt.y = player->actor.world.pos.y - 200.0f + 25.0f;
            this->subCamAt.z = player->actor.world.pos.z;
            this->framesUntilNextAction = 50;
            this->timer = 80;
            this->frameCount = 0;
            this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
            FALLTHROUGH;
        case 2: // zoom on player from room center
            // room entrance, towards center
            player->actor.shape.rot.y = -0x705C;
            player->actor.world.pos.x = 150.0f;
            player->actor.world.pos.z = 300.0f;
            player->actor.world.rot.y = player->actor.shape.rot.y;
            player->actor.speed = 0.0f;

            if (this->framesUntilNextAction == 0) {
                // (-20, 25, -65) is towards room center
                Math_ApproachF(&this->subCamEye.x, player->actor.world.pos.x - 20.0f, 0.049999997f,
                               this->subCamFollowSpeed * 50.0f);
                Math_ApproachF(&this->subCamEye.y, player->actor.world.pos.y + 25.0f, 0.099999994f,
                               this->subCamFollowSpeed * 130.0f);
                Math_ApproachF(&this->subCamEye.z, player->actor.world.pos.z - 65.0f, 0.049999997f,
                               this->subCamFollowSpeed * 30.0f);
                Math_ApproachF(&this->subCamFollowSpeed, 0.29999998f, 1.0f, 0.0050000004f);
                if (this->timer == 0) {
                    Math_ApproachF(&this->subCamAt.y, player->actor.world.pos.y + 35.0f, 0.099999994f,
                                   this->subCamFollowSpeed * 30.0f);
                }
                this->subCamAt.x = player->actor.world.pos.x;
                this->subCamAt.z = player->actor.world.pos.z;
            }

            Play_SetCameraAtEye(play, CAM_ID_MAIN, &this->subCamAt, &this->subCamEye);

            if (this->frameCount == 176) {
                Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_DOOR_SHUTTER, 164.72f, -480.0f,
                                   397.68002f, 0, -0x705C, 0, DOORSHUTTER_PARAMS(SHUTTER_GOHMA_BLOCK, 0));
            }

            if (this->frameCount == 176) {
                play->envCtx.lightSettingOverride = 3;
                play->envCtx.lightBlendRateOverride = LIGHT_BLENDRATE_OVERRIDE_NONE;
            }

            if (this->frameCount == 190) {
                Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_2);
            }

            if (this->frameCount >= 228) {
                Camera* mainCam = Play_GetCamera(play, CAM_ID_MAIN);

                mainCam->eye = this->subCamEye;
                mainCam->eyeNext = this->subCamEye;
                mainCam->at = this->subCamAt;
                Play_ReturnToMainCam(play, this->subCamId, 0);
                this->subCamId = SUB_CAM_ID_DONE;
                Cutscene_StopManual(play, &play->csCtx);
                Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_7);
                this->actionState = 3;
            }
            break;

        case 3: // wait for the player to look at Gohma
            if (fabsf(this->actor.projectedPos.x) < 150.0f && fabsf(this->actor.projectedPos.y) < 250.0f &&
                this->actor.projectedPos.z < 800.0f && this->actor.projectedPos.z > 0.0f) {
                this->lookedAtFrames++;
                Math_ApproachZeroF(&this->actor.speed, 0.5f, 2.0f);
                Math_ApproachS(&this->actor.world.rot.y,
                               Actor_WorldYawTowardActor(&this->actor, &GET_PLAYER(play)->actor) + 0x8000, 2, 0xBB8);
                this->eyeLidBottomRotX = this->eyeLidTopRotX = this->eyeIrisRotX = this->eyeIrisRotY = 0;
            } else {
                this->lookedAtFrames = 0;
                BossGoma_UpdateCeilingMovement(this, play, 0.0f, -5.0f, true);
            }

            if (this->lookedAtFrames > 15) {
                BossGoma_SetupEncounterState4(this, play);
            }
            break;

        case 4: // focus Gohma on the ceiling
            if (Animation_OnFrame(&this->skelanime, 15.0f)) {
                Actor_PlaySfx(&this->actor, NA_SE_EN_GOMA_DEMO_EYE);
            }

            if (this->framesUntilNextAction <= 40) {
                // (22, -25, 45) is towards room entrance
                Math_ApproachF(&this->subCamEye.x, this->actor.world.pos.x + 22.0f, 0.2f, 100.0f);
                Math_ApproachF(&this->subCamEye.y, this->actor.world.pos.y - 25.0f, 0.2f, 100.0f);
                Math_ApproachF(&this->subCamEye.z, this->actor.world.pos.z + 45.0f, 0.2f, 100.0f);
                Math_ApproachF(&this->subCamAt.x, this->actor.world.pos.x, 0.2f, 100.0f);
                Math_ApproachF(&this->subCamAt.y, this->actor.world.pos.y + 5.0f, 0.2f, 100.0f);
                Math_ApproachF(&this->subCamAt.z, this->actor.world.pos.z, 0.2f, 100.0f);

                if (this->framesUntilNextAction == 30) {
                    play->envCtx.lightSettingOverride = 4;
                }

                if (this->framesUntilNextAction < 20) {
                    SkelAnime_Update(&this->skelanime);
                    Math_ApproachF(&this->eyeIrisScaleX, 1.0f, 0.8f, 0.4f);
                    Math_ApproachF(&this->eyeIrisScaleY, 1.0f, 0.8f, 0.4f);

                    if (Animation_OnFrame(&this->skelanime, 36.0f)) {
                        this->eyeIrisScaleX = 1.8f;
                        this->eyeIrisScaleY = 1.8f;
                    }

                    if (Animation_OnFrame(&this->skelanime, this->currentAnimFrameCount)) {
                        this->actionState = 5;
                        Animation_Change(&this->skelanime, &gGohmaWalkAnim, 2.0f, 0.0f,
                                         Animation_GetLastFrame(&gGohmaWalkAnim), ANIMMODE_LOOP, -5.0f);
                        this->framesUntilNextAction = 30;
                        this->subCamFollowSpeed = 0.0f;
                    }
                }
            }
            break;

        case 5: // running on the ceiling
            // (98, 0, 85) is towards room entrance
            Math_ApproachF(&this->subCamEye.x, this->actor.world.pos.x + 8.0f + 90.0f, 0.1f,
                           this->subCamFollowSpeed * 30.0f);
            Math_ApproachF(&this->subCamEye.y, player->actor.world.pos.y, 0.1f, this->subCamFollowSpeed * 30.0f);
            Math_ApproachF(&this->subCamEye.z, this->actor.world.pos.z + 45.0f + 40.0f, 0.1f,
                           this->subCamFollowSpeed * 30.0f);
            Math_ApproachF(&this->subCamFollowSpeed, 1.0f, 1.0f, 0.05f);
            this->subCamAt.x = this->actor.world.pos.x;
            this->subCamAt.y = this->actor.world.pos.y;
            this->subCamAt.z = this->actor.world.pos.z;

            if (this->framesUntilNextAction < 0) {
                //! @bug ? unreachable, timer is >= 0
                SkelAnime_Update(&this->skelanime);
                Math_ApproachZeroF(&this->actor.speed, 1.0f, 2.0f);
            } else {
                BossGoma_UpdateCeilingMovement(this, play, 0.0f, -7.5f, false);
            }

            if (this->framesUntilNextAction == 0) {
                Animation_Change(&this->skelanime, &gGohmaHangAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gGohmaHangAnim),
                                 ANIMMODE_LOOP, -5.0f);
            }

            if (this->framesUntilNextAction == 0) {
                this->actionState = 9;
                this->actor.speed = 0.0f;
                this->actor.velocity.y = 0.0f;
                this->actor.gravity = -2.0f;
                Animation_Change(&this->skelanime, &gGohmaInitialLandingAnim, 1.0f, 0.0f,
                                 Animation_GetLastFrame(&gGohmaInitialLandingAnim), ANIMMODE_ONCE, -5.0f);
                player->actor.world.pos.x = 0.0f;
                player->actor.world.pos.z = -30.0f;
            }
            break;

        case 9: // falling from the ceiling
            Math_ApproachF(&this->subCamEye.x, this->actor.world.pos.x + 8.0f + 90.0f, 0.1f,
                           this->subCamFollowSpeed * 30.0f);
            Math_ApproachF(&this->subCamEye.y, player->actor.world.pos.y + 10.0f, 0.1f,
                           this->subCamFollowSpeed * 30.0f);
            Math_ApproachF(&this->subCamEye.z, this->actor.world.pos.z + 45.0f + 40.0f, 0.1f,
                           this->subCamFollowSpeed * 30.0f);
            this->subCamAt.x = this->actor.world.pos.x;
            this->subCamAt.y = this->actor.world.pos.y;
            this->subCamAt.z = this->actor.world.pos.z;
            SkelAnime_Update(&this->skelanime);
            Math_ApproachS(&this->actor.shape.rot.x, 0, 2, 0xBB8);
            Math_ApproachS(&this->actor.world.rot.y, Actor_WorldYawTowardActor(&this->actor, &GET_PLAYER(play)->actor),
                           2, 0x7D0);

            if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
                this->actionState = 130;
                this->actor.velocity.y = 0.0f;
                Animation_Change(&this->skelanime, &gGohmaInitialLandingAnim, 1.0f, 0.0f,
                                 Animation_GetLastFrame(&gGohmaInitialLandingAnim), ANIMMODE_ONCE, -2.0f);
                this->currentAnimFrameCount = Animation_GetLastFrame(&gGohmaInitialLandingAnim);
                BossGoma_PlayEffectsAndSfx(this, play, 0, 5);
                this->framesUntilNextAction = 15;
                Rumble_Override(0.0f, 200, 20, 20);
            }
            break;

        case 130: // focus Gohma on the ground
            Math_ApproachF(&this->subCamEye.x, this->actor.world.pos.x + 8.0f + 90.0f, 0.1f,
                           this->subCamFollowSpeed * 30.0f);
            Math_ApproachF(&this->subCamEye.y, player->actor.world.pos.y + 10.0f, 0.1f,
                           this->subCamFollowSpeed * 30.0f);
            Math_ApproachF(&this->subCamEye.z, this->actor.world.pos.z + 45.0f + 40.0f, 0.1f,
                           this->subCamFollowSpeed * 30.0f);
            Math_ApproachS(&this->actor.shape.rot.x, 0, 2, 0xBB8);
            Math_ApproachS(&this->actor.world.rot.y, Actor_WorldYawTowardActor(&this->actor, &GET_PLAYER(play)->actor),
                           2, 0x7D0);
            SkelAnime_Update(&this->skelanime);
            this->subCamAt.x = this->actor.world.pos.x;
            this->subCamAt.z = this->actor.world.pos.z;

            if (this->framesUntilNextAction != 0) {
                s = sinf(this->framesUntilNextAction * 3.1415f * 0.5f);
                this->subCamAt.y = this->framesUntilNextAction * s * 0.7f + this->actor.world.pos.y;
            } else {
                Math_ApproachF(&this->subCamAt.y, this->actor.focus.pos.y, 0.1f, 10.0f);
            }

            if (Animation_OnFrame(&this->skelanime, 40.0f)) {
                Actor_PlaySfx(&this->actor, NA_SE_EN_GOMA_CRY1);

                if (!GET_EVENTCHKINF(EVENTCHKINF_BEGAN_GOHMA_BATTLE)) {
                    TitleCard_InitBossName(play, &play->actorCtx.titleCtx, SEGMENTED_TO_VIRTUAL(gGohmaTitleCardTex),
                                           160, 180, 128, 40);
                }

                SEQCMD_PLAY_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 0, 0, NA_BGM_BOSS);
                SET_EVENTCHKINF(EVENTCHKINF_BEGAN_GOHMA_BATTLE);
            }

            if (Animation_OnFrame(&this->skelanime, this->currentAnimFrameCount)) {
                this->actionState = 140;
                Animation_Change(&this->skelanime, &gGohmaStandAnim, 1.0f, 0.0f,
                                 Animation_GetLastFrame(&gGohmaStandAnim), ANIMMODE_LOOP, -10.0f);
                this->framesUntilNextAction = 20;
            }
            break;

        case 140:
            SkelAnime_Update(&this->skelanime);
            Math_ApproachF(&this->subCamAt.y, this->actor.focus.pos.y, 0.1f, 10.0f);

            if (this->framesUntilNextAction == 0) {
                this->framesUntilNextAction = 30;
                this->actionState = 150;
                Play_ChangeCameraStatus(play, CAM_ID_MAIN, CAM_STAT_UNK3);
            }
            break;

        case 150:
            SkelAnime_Update(&this->skelanime);
            Math_SmoothStepToF(&this->subCamEye.x, this->actor.world.pos.x + 150.0f, 0.2f, 100.0f, 0.1f);
            Math_SmoothStepToF(&this->subCamEye.y, this->actor.world.pos.y + 20.0f, 0.2f, 100.0f, 0.1f);
            Math_SmoothStepToF(&this->subCamEye.z, this->actor.world.pos.z + 220.0f, 0.2f, 100.0f, 0.1f);

            if (this->framesUntilNextAction == 0) {
                mainCam = Play_GetCamera(play, CAM_ID_MAIN);
                mainCam->eye = this->subCamEye;
                mainCam->eyeNext = this->subCamEye;
                mainCam->at = this->subCamAt;
                Play_ReturnToMainCam(play, this->subCamId, 0);
                this->subCamId = SUB_CAM_ID_DONE;
                BossGoma_SetupFloorMain(this);
                this->disableGameplayLogic = false;
                this->patienceTimer = 200;
                Cutscene_StopManual(play, &play->csCtx);
                Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_7);
            }
            break;
    }

    if (this->subCamId != SUB_CAM_ID_DONE) {
        Play_SetCameraAtEye(play, this->subCamId, &this->subCamAt, &this->subCamEye);
    }
}

/**
 * Handles the "Gohma defeated" cutscene and effects
 * Spawns the heart container and blue warp actors
 */
void BossGoma_Defeated(BossGoma* this, PlayState* play) {
    static Vec3f roomCenter = { -150.0f, 0.0f, -350.0f };
    f32 dx;
    f32 dz;
    s16 j;
    Vec3f vel1 = { 0.0f, 0.0f, 0.0f };
    Vec3f accel1 = { 0.0f, 1.0f, 0.0f };
    Color_RGBA8 color1 = { 255, 255, 255, 255 };
    Color_RGBA8 color2 = { 0, 100, 255, 255 };
    Vec3f vel2 = { 0.0f, 0.0f, 0.0f };
    Vec3f accel2 = { 0.0f, -0.5f, 0.0f };
    Vec3f pos;
    Camera* mainCam;
    Player* player = GET_PLAYER(play);
    Vec3f childPos;
    s16 i;

    SkelAnime_Update(&this->skelanime);
    Math_ApproachS(&this->actor.shape.rot.x, 0, 2, 0xBB8);

    if (Animation_OnFrame(&this->skelanime, 107.0f)) {
        BossGoma_PlayEffectsAndSfx(this, play, 0, 8);
        Rumble_Override(0.0f, 150, 20, 20);
    }

    this->visualState = VISUALSTATE_DEFEATED;
    this->eyeState = EYESTATE_IRIS_NO_FOLLOW_NO_IFRAMES;

    if (this->framesUntilNextAction == 1001) {
        for (i = 0; i < 90; i++) {
            if (sDeadLimbLifetime[i] != 0) {
                this->deadLimbsState[i] = 1;
            }
        }
    }

    if (this->framesUntilNextAction < 1200 && this->framesUntilNextAction > 1100 &&
        this->framesUntilNextAction % 8 == 0) {
        EffectSsSibuki_SpawnBurst(play, &this->actor.focus.pos);
    }

    if (this->framesUntilNextAction < 1080 && this->actionState < 3) {
        if (this->framesUntilNextAction < 1070) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_GOMA_LAST - SFX_FLAG);
        }

        for (i = 0; i < 4; i++) {
            //! @bug this 0-indexes into this->defeatedLimbPositions which is initialized with
            //! this->defeatedLimbPositions[limb], but limb is 1-indexed in skelanime callbacks, this means effects
            //! should spawn at this->defeatedLimbPositions[0] too, which is uninitialized, so map origin?
            j = (s16)(Rand_ZeroOne() * (BOSSGOMA_LIMB_MAX - 1));
            if (this->defeatedLimbPositions[j].y < 10000.0f) {
                pos.x = Rand_CenteredFloat(20.0f) + this->defeatedLimbPositions[j].x;
                pos.y = Rand_CenteredFloat(10.0f) + this->defeatedLimbPositions[j].y;
                pos.z = Rand_CenteredFloat(20.0f) + this->defeatedLimbPositions[j].z;
                func_8002836C(play, &pos, &vel1, &accel1, &color1, &color2, 500, 10, 10);
            }
        }

        for (i = 0; i < 15; i++) {
            //! @bug same as above
            j = (s16)(Rand_ZeroOne() * (BOSSGOMA_LIMB_MAX - 1));
            if (this->defeatedLimbPositions[j].y < 10000.0f) {
                pos.x = Rand_CenteredFloat(20.0f) + this->defeatedLimbPositions[j].x;
                pos.y = Rand_CenteredFloat(10.0f) + this->defeatedLimbPositions[j].y;
                pos.z = Rand_CenteredFloat(20.0f) + this->defeatedLimbPositions[j].z;
                EffectSsHahen_Spawn(play, &pos, &vel2, &accel2, 0, (s16)(Rand_ZeroOne() * 5.0f) + 10, -1, 10, NULL);
            }
        }
    }

    switch (this->actionState) {
        case 0:
            this->actionState = 1;
            Cutscene_StartManual(play, &play->csCtx);
            Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_1);
            this->subCamId = Play_CreateSubCamera(play);
            Play_ChangeCameraStatus(play, CAM_ID_MAIN, CAM_STAT_UNK3);
            Play_ChangeCameraStatus(play, this->subCamId, CAM_STAT_ACTIVE);
            mainCam = Play_GetCamera(play, CAM_ID_MAIN);
            this->subCamEye.x = mainCam->eye.x;
            this->subCamEye.y = mainCam->eye.y;
            this->subCamEye.z = mainCam->eye.z;
            this->subCamAt.x = mainCam->at.x;
            this->subCamAt.y = mainCam->at.y;
            this->subCamAt.z = mainCam->at.z;
            dx = this->subCamEye.x - this->actor.world.pos.x;
            dz = this->subCamEye.z - this->actor.world.pos.z;
            this->defeatedCameraEyeDist = sqrtf(SQ(dx) + SQ(dz));
            this->defeatedCameraEyeAngle = Math_FAtan2F(dx, dz);
            this->timer = 270;
            break;

        case 1:
            dx = Math_SinS(this->actor.shape.rot.y) * 100.0f;
            dz = Math_CosS(this->actor.shape.rot.y) * 100.0f;
            Math_ApproachF(&player->actor.world.pos.x, this->actor.world.pos.x + dx, 0.5f, 5.0f);
            Math_ApproachF(&player->actor.world.pos.z, this->actor.world.pos.z + dz, 0.5f, 5.0f);

            if (this->framesUntilNextAction < 1080) {
                this->noBackfaceCulling = true;

                for (i = 0; i < 4; i++) {
                    BossGoma_ClearPixels(sClearPixelTableFirstPass, this->decayingProgress);
                    //! @bug this allows this->decayingProgress = 0x100 = 256 which
                    //! is out of bounds when accessing sClearPixelTableFirstPass
                    if (this->decayingProgress < 0x100) {
                        this->decayingProgress++;
                    }
                }
            }

            if (this->framesUntilNextAction < 1070 && this->frameCount % 4 == 0 && Rand_ZeroOne() < 0.5f) {
                this->blinkTimer = 3;
            }

            this->defeatedCameraEyeAngle += 0.022f;
            Math_ApproachF(&this->defeatedCameraEyeDist, 150.0f, 0.1f, 5.0f);
            dx = sinf(this->defeatedCameraEyeAngle);
            dx = dx * this->defeatedCameraEyeDist;
            dz = cosf(this->defeatedCameraEyeAngle);
            dz = dz * this->defeatedCameraEyeDist;
            Math_SmoothStepToF(&this->subCamEye.x, this->actor.world.pos.x + dx, 0.2f, 50.0f, 0.1f);
            Math_SmoothStepToF(&this->subCamEye.y, this->actor.world.pos.y + 20.0f, 0.2f, 50.0f, 0.1f);
            Math_SmoothStepToF(&this->subCamEye.z, this->actor.world.pos.z + dz, 0.2f, 50.0f, 0.1f);
            Math_SmoothStepToF(&this->subCamAt.x, this->firstTailLimbWorldPos.x, 0.2f, 50.0f, 0.1f);
            Math_SmoothStepToF(&this->subCamAt.y, this->actor.focus.pos.y, 0.5f, 100.0f, 0.1f);
            Math_SmoothStepToF(&this->subCamAt.z, this->firstTailLimbWorldPos.z, 0.2f, 50.0f, 0.1f);

            if (this->timer == 80) {
                SEQCMD_PLAY_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 0, 0, NA_BGM_BOSS_CLEAR);
            }

            if (this->timer == 0) {
                this->actionState = 2;
                Play_ChangeCameraStatus(play, CAM_ID_MAIN, CAM_STAT_UNK3);
                this->timer = 70;
                this->decayingProgress = 0;
                this->subCamFollowSpeed = 0.0f;
                Actor_Spawn(&play->actorCtx, play, ACTOR_ITEM_B_HEART, this->actor.world.pos.x, this->actor.world.pos.y,
                            this->actor.world.pos.z, 0, 0, 0, 0);
            }
            break;

        case 2:
            mainCam = Play_GetCamera(play, CAM_ID_MAIN);
            Math_SmoothStepToF(&this->subCamEye.x, mainCam->eye.x, 0.2f, this->subCamFollowSpeed * 50.0f, 0.1f);
            Math_SmoothStepToF(&this->subCamEye.y, mainCam->eye.y, 0.2f, this->subCamFollowSpeed * 50.0f, 0.1f);
            Math_SmoothStepToF(&this->subCamEye.z, mainCam->eye.z, 0.2f, this->subCamFollowSpeed * 50.0f, 0.1f);
            Math_SmoothStepToF(&this->subCamAt.x, mainCam->at.x, 0.2f, this->subCamFollowSpeed * 50.0f, 0.1f);
            Math_SmoothStepToF(&this->subCamAt.y, mainCam->at.y, 0.2f, this->subCamFollowSpeed * 50.0f, 0.1f);
            Math_SmoothStepToF(&this->subCamAt.z, mainCam->at.z, 0.2f, this->subCamFollowSpeed * 50.0f, 0.1f);
            Math_SmoothStepToF(&this->subCamFollowSpeed, 1.0f, 1.0f, 0.02f, 0.0f);

            if (this->timer == 0) {
                childPos = roomCenter;
                this->timer = 30;
                this->actionState = 3;

                for (i = 0; i < 10000; i++) {
                    if ((fabsf(childPos.x - player->actor.world.pos.x) < 100.0f &&
                         fabsf(childPos.z - player->actor.world.pos.z) < 100.0f) ||
                        (fabsf(childPos.x - this->actor.world.pos.x) < 150.0f &&
                         fabsf(childPos.z - this->actor.world.pos.z) < 150.0f)) {
                        childPos.x = Rand_CenteredFloat(400.0f) + -150.0f;
                        childPos.z = Rand_CenteredFloat(400.0f) + -350.0f;
                    } else {
                        break;
                    }
                }

                Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_DOOR_WARP1, childPos.x,
                                   this->actor.world.pos.y, childPos.z, 0, 0, 0, WARP_DUNGEON_CHILD);
                Flags_SetClear(play, play->roomCtx.curRoom.num);
            }

            for (i = 0; i < 4; i++) {
                BossGoma_ClearPixels(sClearPixelTableSecondPass, this->decayingProgress);
                //! @bug same as sClearPixelTableFirstPass
                if (this->decayingProgress < 0x100) {
                    this->decayingProgress++;
                }
            }
            break;

        case 3:
            for (i = 0; i < 4; i++) {
                BossGoma_ClearPixels(sClearPixelTableSecondPass, this->decayingProgress);
                //! @bug same as sClearPixelTableFirstPass
                if (this->decayingProgress < 0x100) {
                    this->decayingProgress++;
                }
            }

            if (this->timer == 0) {
                if (Math_SmoothStepToF(&this->actor.scale.y, 0, 1.0f, 0.00075f, 0.0f) <= 0.001f) {
                    mainCam = Play_GetCamera(play, CAM_ID_MAIN);
                    mainCam->eye = this->subCamEye;
                    mainCam->eyeNext = this->subCamEye;
                    mainCam->at = this->subCamAt;
                    Play_ReturnToMainCam(play, this->subCamId, 0);
                    this->subCamId = SUB_CAM_ID_DONE;
                    Cutscene_StopManual(play, &play->csCtx);
                    Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_7);
                    Actor_Kill(&this->actor);
                }

                this->actor.scale.x = this->actor.scale.z = this->actor.scale.y;
            }
            break;
    }

    if (this->subCamId != SUB_CAM_ID_DONE) {
        Play_SetCameraAtEye(play, this->subCamId, &this->subCamAt, &this->subCamEye);
    }

    if (this->blinkTimer != 0) {
        this->blinkTimer--;
        play->envCtx.adjAmbientColor[0] += 40;
        play->envCtx.adjAmbientColor[1] += 40;
        play->envCtx.adjAmbientColor[2] += 80;
        play->envCtx.adjFogColor[0] += 10;
        play->envCtx.adjFogColor[1] += 10;
        play->envCtx.adjFogColor[2] += 20;
    } else {
        play->envCtx.adjAmbientColor[0] -= 20;
        play->envCtx.adjAmbientColor[1] -= 20;
        play->envCtx.adjAmbientColor[2] -= 40;
        play->envCtx.adjFogColor[0] -= 5;
        play->envCtx.adjFogColor[1] -= 5;
        play->envCtx.adjFogColor[2] -= 10;
    }

    if (play->envCtx.adjAmbientColor[0] > 200) {
        play->envCtx.adjAmbientColor[0] = 200;
    }
    if (play->envCtx.adjAmbientColor[1] > 200) {
        play->envCtx.adjAmbientColor[1] = 200;
    }
    if (play->envCtx.adjAmbientColor[2] > 200) {
        play->envCtx.adjAmbientColor[2] = 200;
    }
    if (play->envCtx.adjFogColor[0] > 70) {
        play->envCtx.adjFogColor[0] = 70;
    }
    if (play->envCtx.adjFogColor[1] > 70) {
        play->envCtx.adjFogColor[1] = 70;
    }
    if (play->envCtx.adjFogColor[2] > 140) {
        play->envCtx.adjFogColor[2] = 140;
    }

    if (play->envCtx.adjAmbientColor[0] < 0) {
        play->envCtx.adjAmbientColor[0] = 0;
    }
    if (play->envCtx.adjAmbientColor[1] < 0) {
        play->envCtx.adjAmbientColor[1] = 0;
    }
    if (play->envCtx.adjAmbientColor[2] < 0) {
        play->envCtx.adjAmbientColor[2] = 0;
    }
    if (play->envCtx.adjFogColor[0] < 0) {
        play->envCtx.adjFogColor[0] = 0;
    }
    if (play->envCtx.adjFogColor[1] < 0) {
        play->envCtx.adjFogColor[1] = 0;
    }
    if (play->envCtx.adjFogColor[2] < 0) {
        play->envCtx.adjFogColor[2] = 0;
    }
}

/**
 * If the player backs off, cancel the attack, or attack.
 */
void BossGoma_FloorAttackPosture(BossGoma* this, PlayState* play) {
    SkelAnime_Update(&this->skelanime);
    Math_ApproachZeroF(&this->actor.speed, 0.5f, 2.0f);

    if (this->skelanime.curFrame >= (19.0f + 1.0f / 3.0f) && this->skelanime.curFrame <= 30.0f) {
        Math_ApproachS(&this->actor.world.rot.y, Actor_WorldYawTowardActor(&this->actor, &GET_PLAYER(play)->actor), 3,
                       0xBB8);
    }

    if (Animation_OnFrame(&this->skelanime, Animation_GetLastFrame(&gGohmaPrepareAttackAnim))) {
        if (this->actor.xzDistToPlayer < 250.0f) {
            BossGoma_SetupFloorPrepareAttack(this);
        } else {
            BossGoma_SetupFloorMain(this);
        }
    }

    this->eyeState = EYESTATE_IRIS_FOLLOW_NO_IFRAMES;
    this->visualState = VISUALSTATE_RED;
}

/**
 * Only lasts 1 frame. Plays a sound effect.
 */
void BossGoma_FloorPrepareAttack(BossGoma* this, PlayState* play) {
    SkelAnime_Update(&this->skelanime);

    if (this->framesUntilNextAction == 0) {
        BossGoma_SetupFloorAttack(this);
        Actor_PlaySfx(&this->actor, NA_SE_EN_GOMA_CRY1);
    }

    this->eyeState = EYESTATE_IRIS_FOLLOW_NO_IFRAMES;
    this->visualState = VISUALSTATE_RED;
}

/**
 * Gohma attacks, then the action eventually goes back to BossGoma_FloorMain
 */
void BossGoma_FloorAttack(BossGoma* this, PlayState* play) {
    s16 i;

    this->actor.flags |= ACTOR_FLAG_SFX_FOR_PLAYER_BODY_HIT;
    SkelAnime_Update(&this->skelanime);

    switch (this->actionState) {
        case 0:
            for (i = 0; i < this->collider.count; i++) {
                if (this->collider.elements[i].base.atElemFlags & ATELEM_HIT) {
                    this->framesUntilNextAction = 10;
                    break;
                }
            }

            if (Animation_OnFrame(&this->skelanime, 10.0f)) {
                BossGoma_PlayEffectsAndSfx(this, play, 3, 5);
                Actor_RequestQuakeAndRumble(&this->actor, play, 5, 15);
            }

            if (Animation_OnFrame(&this->skelanime, Animation_GetLastFrame(&gGohmaAttackAnim))) {
                this->actionState = 1;
                Animation_Change(&this->skelanime, &gGohmaRestAfterAttackAnim, 1.0f, 0.0f,
                                 Animation_GetLastFrame(&gGohmaRestAfterAttackAnim), ANIMMODE_LOOP, -1.0f);

                if (this->framesUntilNextAction == 0) {
                    this->timer = (s16)(Rand_ZeroOne() * 30.0f) + 30;
                }
            }
            break;

        case 1:
            if (Animation_OnFrame(&this->skelanime, 3.0f)) {
                Actor_PlaySfx(&this->actor, NA_SE_EN_GOMA_UNARI2);
            }

            if (this->timer == 0) {
                this->actionState = 2;
                Animation_Change(&this->skelanime, &gGohmaRecoverAfterAttackAnim, 1.0f, 0.0f,
                                 Animation_GetLastFrame(&gGohmaRecoverAfterAttackAnim), ANIMMODE_ONCE, -5.0f);
            }
            break;

        case 2:
            if (Animation_OnFrame(&this->skelanime, Animation_GetLastFrame(&gGohmaRecoverAfterAttackAnim))) {
                BossGoma_SetupFloorIdle(this);
            }
            break;
    }

    this->eyeState = EYESTATE_IRIS_FOLLOW_NO_IFRAMES;
    this->visualState = VISUALSTATE_RED;
}

/**
 * Plays the animation to its end, then goes back to BossGoma_FloorStunned
 */
void BossGoma_FloorDamaged(BossGoma* this, PlayState* play) {
    SkelAnime_Update(&this->skelanime);

    if (Animation_OnFrame(&this->skelanime, Animation_GetLastFrame(&gGohmaDamageAnim))) {
        BossGoma_SetupFloorStunned(this);
        this->patienceTimer = 0;
    }

    this->eyeState = EYESTATE_IRIS_NO_FOLLOW_NO_IFRAMES;
    Math_ApproachF(&this->eyeIrisScaleX, 0.4f, 0.5f, 0.2f);
    this->visualState = VISUALSTATE_HIT;
}

/**
 * Gohma is back on the floor after the player struck it down from the ceiling.
 * Sets patience to 0
 * Gohma is then stunned (BossGoma_FloorStunned)
 */
void BossGoma_FloorLandStruckDown(BossGoma* this, PlayState* play) {
    SkelAnime_Update(&this->skelanime);

    if (Animation_OnFrame(&this->skelanime, this->currentAnimFrameCount)) {
        BossGoma_SetupFloorStunned(this);
        this->sfxFaintTimer = 92;
        this->patienceTimer = 0;
        this->framesUntilNextAction = 150;
    }

    Actor_SpawnFloorDustRing(play, &this->actor, &this->actor.world.pos, 55.0f, 4, 8.0f, 500, 10, true);
}

/**
 * Gohma is back on the floor after the player has killed its children Gohmas.
 * Plays an animation then goes to usual floor behavior, with refilled patience.
 */
void BossGoma_FloorLand(BossGoma* this, PlayState* play) {
    SkelAnime_Update(&this->skelanime);

    if (Animation_OnFrame(&this->skelanime, this->currentAnimFrameCount)) {
        BossGoma_SetupFloorIdle(this);
        this->patienceTimer = 200;
    }
}

/**
 * Gohma is stunned and vulnerable. It can only be damaged during this action.
 */
void BossGoma_FloorStunned(BossGoma* this, PlayState* play) {
    if (this->sfxFaintTimer <= 90) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_GOMA_FAINT - 0x800);
    }
    SkelAnime_Update(&this->skelanime);

    if (this->timer == 1) {
        Actor_SpawnFloorDustRing(play, &this->actor, &this->actor.world.pos, 55.0f, 4, 8.0f, 500, 10, true);
    }

    Math_ApproachZeroF(&this->actor.speed, 0.5f, 1.0f);

    if (this->framesUntilNextAction == 0) {
        BossGoma_SetupFloorMain(this);
        if (this->patienceTimer == 0 && this->actor.xzDistToPlayer < 130.0f) {
            this->timer = 20;
        }
    }

    Math_ApproachS(&this->actor.shape.rot.x, 0, 2, 0xBB8);
    this->eyeState = EYESTATE_IRIS_NO_FOLLOW_NO_IFRAMES;
    Math_ApproachF(&this->eyeIrisScaleX, 0.4f, 0.5f, 0.2f);
    this->visualState = VISUALSTATE_STUNNED;
}

/**
 * Gohma goes back to the floor after the player killed the three gohmas it spawned
 */
void BossGoma_FallJump(BossGoma* this, PlayState* play) {
    SkelAnime_Update(&this->skelanime);
    Math_ApproachS(&this->actor.shape.rot.x, 0, 2, 0xBB8);
    Math_ApproachS(&this->actor.world.rot.y, Actor_WorldYawTowardActor(&this->actor, &GET_PLAYER(play)->actor), 2,
                   0x7D0);

    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        BossGoma_SetupFloorLand(this);
        this->actor.velocity.y = 0.0f;
        BossGoma_PlayEffectsAndSfx(this, play, 0, 8);
        Actor_RequestQuakeAndRumble(&this->actor, play, 5, 15);
    }
}

/**
 * Gohma falls to the floor after the player hit it
 */
void BossGoma_FallStruckDown(BossGoma* this, PlayState* play) {
    SkelAnime_Update(&this->skelanime);
    Math_ApproachS(&this->actor.shape.rot.x, 0, 2, 0xBB8);
    Math_ApproachS(&this->actor.world.rot.y, Actor_WorldYawTowardActor(&this->actor, &GET_PLAYER(play)->actor), 3,
                   0x7D0);

    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        BossGoma_SetupFloorLandStruckDown(this);
        this->actor.velocity.y = 0.0f;
        BossGoma_PlayEffectsAndSfx(this, play, 0, 8);
        Actor_RequestQuakeAndRumble(&this->actor, play, 10, 15);
        Actor_PlaySfx(&this->actor, NA_SE_EN_GOMA_DAM1);
    }
}

/**
 * Spawn three gohmas, one after the other. Cannot be interrupted
 */
void BossGoma_CeilingSpawnGohmas(BossGoma* this, PlayState* play) {
    s16 i;

    SkelAnime_Update(&this->skelanime);

    if (this->frameCount % 16 == 0) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_GOMA_UNARI);
    }

    Math_ApproachZeroF(&this->actor.speed, 0.5f, 2.0f);
    this->spawnGohmasActionTimer++;

    switch (this->spawnGohmasActionTimer) {
        case 24:
            // BOSSGOMA_LIMB_TAIL1, the tail limb closest to the body
            this->tailLimbsScaleTimers[3] = 10;
            break;
        case 32:
            // BOSSGOMA_LIMB_TAIL2
            this->tailLimbsScaleTimers[2] = 10;
            break;
        case 40:
            // BOSSGOMA_LIMB_TAIL3
            this->tailLimbsScaleTimers[1] = 10;
            break;
        case 48:
            // BOSSGOMA_LIMB_TAIL4, the furthest from the body
            this->tailLimbsScaleTimers[0] = 10;
            break;
    }

    if (this->tailLimbsScaleTimers[0] == 2) {
        for (i = 0; i < ARRAY_COUNT(this->childrenGohmaState); i++) {
            if (this->childrenGohmaState[i] == 0) {
                BossGoma_SpawnChildGohma(this, play, i);
                break;
            }
        }

        if (this->childrenGohmaState[0] == 0 || this->childrenGohmaState[1] == 0 || this->childrenGohmaState[2] == 0) {
            this->spawnGohmasActionTimer = 23;
        }
    }

    if (this->spawnGohmasActionTimer >= 64) {
        BossGoma_SetupCeilingIdle(this);
    }

    this->eyeState = EYESTATE_IRIS_NO_FOLLOW_NO_IFRAMES;
}

/**
 * Prepare to spawn children gohmas, red eye for 70 frames
 * During this time, the player can interrupt by hitting Gohma and make it fall from the ceiling
 */
void BossGoma_CeilingPrepareSpawnGohmas(BossGoma* this, PlayState* play) {
    SkelAnime_Update(&this->skelanime);

    if (this->framesUntilNextAction == 0) {
        BossGoma_SetupCeilingSpawnGohmas(this);
    }

    this->eyeState = EYESTATE_IRIS_NO_FOLLOW_NO_IFRAMES;
    this->visualState = VISUALSTATE_RED;
}

/**
 * On the floor, not doing anything special.
 */
void BossGoma_FloorIdle(BossGoma* this, PlayState* play) {
    SkelAnime_Update(&this->skelanime);
    Math_ApproachZeroF(&this->actor.speed, 0.5f, 2.0f);
    Math_ApproachS(&this->actor.shape.rot.x, 0, 2, 0xBB8);

    if (this->framesUntilNextAction == 0) {
        BossGoma_SetupFloorMain(this);
    }
}

/**
 * On the ceiling, not doing anything special.
 * Eventually spawns children gohmas, jumping down to the floor when they are killed, or staying on the ceiling as long
 * as any is still alive.
 */
void BossGoma_CeilingIdle(BossGoma* this, PlayState* play) {
    s16 i;

    SkelAnime_Update(&this->skelanime);
    Math_ApproachZeroF(&this->actor.speed, 0.5f, 2.0f);

    if (this->framesUntilNextAction == 0) {
        if (this->childrenGohmaState[0] == 0 && this->childrenGohmaState[1] == 0 && this->childrenGohmaState[2] == 0) {
            // if no child gohma has been spawned
            BossGoma_SetupCeilingPrepareSpawnGohmas(this);
        } else if (this->childrenGohmaState[0] < 0 && this->childrenGohmaState[1] < 0 &&
                   this->childrenGohmaState[2] < 0) {
            // if all children gohmas are dead
            BossGoma_SetupFallJump(this);
        } else {
            for (i = 0; i < ARRAY_COUNT(this->childrenGohmaState); i++) {
                if (this->childrenGohmaState[i] == 0) {
                    // if any child gohma hasn't been spawned
                    // this seems unreachable since BossGoma_CeilingSpawnGohmas spawns all three and can't be
                    // interrupted
                    BossGoma_SetupCeilingSpawnGohmas(this);
                    return;
                }
            }
            // if all children gohmas have been spawned
            BossGoma_SetupCeilingMoveToCenter(this);
        }
    }
}

/**
 * Gohma approaches the player as long as it has patience (see patienceTimer), then moves away from the player
 * Gohma climbs any wall it collides with
 * Uses the "walk cautiously" animation
 */
void BossGoma_FloorMain(BossGoma* this, PlayState* play) {
    s16 rot;

    SkelAnime_Update(&this->skelanime);

    if (Animation_OnFrame(&this->skelanime, 1.0f)) {
        this->doNotMoveThisFrame = true;
    } else if (Animation_OnFrame(&this->skelanime, 30.0f)) {
        this->doNotMoveThisFrame = true;
    } else if (Animation_OnFrame(&this->skelanime, 15.0f)) {
        this->doNotMoveThisFrame = true;
    } else if (Animation_OnFrame(&this->skelanime, 16.0f)) {
        this->doNotMoveThisFrame = true;
    }

    if (Animation_OnFrame(&this->skelanime, 15.0f)) {
        BossGoma_PlayEffectsAndSfx(this, play, 1, 3);
    } else if (Animation_OnFrame(&this->skelanime, 30.0f)) {
        BossGoma_PlayEffectsAndSfx(this, play, 2, 3);
    }

    if (this->frameCount % 64 == 0) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_GOMA_CRY2);
    }

    if (!this->doNotMoveThisFrame) {
        rot = Actor_WorldYawTowardActor(&this->actor, &GET_PLAYER(play)->actor);

        if (this->patienceTimer != 0) {
            this->patienceTimer--;

            if (this->actor.xzDistToPlayer < 150.0f) {
                BossGoma_SetupFloorAttackPosture(this);
            }

            Math_ApproachF(&this->actor.speed, 10.0f / 3.0f, 0.5f, 2.0f);
            Math_ApproachS(&this->actor.world.rot.y, rot, 5, 0x3E8);
        } else {
            if (this->timer != 0) {
                // move away from the player, walking backwards
                Math_ApproachF(&this->actor.speed, -10.0f, 0.5f, 2.0f);
                this->skelanime.playSpeed = -3.0f;
                if (this->timer == 1) {
                    this->actor.speed = 0.0f;
                }
            } else {
                // move away from the player, walking forwards
                Math_ApproachF(&this->actor.speed, 20.0f / 3.0f, 0.5f, 2.0f);
                this->skelanime.playSpeed = 2.0f;
                rot += 0x8000;
            }

            Math_ApproachS(&this->actor.world.rot.y, rot, 3, 0x9C4);
        }
    }

    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        this->actor.velocity.y = 0.0f;
    }

    if (this->actor.bgCheckFlags & BGCHECKFLAG_WALL) {
        BossGoma_SetupWallClimb(this);
    }

    if (this->framesUntilNextAction == 0 && this->patienceTimer != 0) {
        BossGoma_SetupFloorIdle(this);
    }
}

/**
 * Gohma moves up until it reaches the ceiling
 */
void BossGoma_WallClimb(BossGoma* this, PlayState* play) {
    SkelAnime_Update(&this->skelanime);

    if (this->frameCount % 8 == 0) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_GOMA_CLIM);
    }

    Math_ApproachF(&this->actor.velocity.y, 5.0f, 0.5f, 2.0f);
    Math_ApproachS(&this->actor.shape.rot.x, -0x4000, 2, 0x7D0);
    Math_ApproachS(&this->actor.world.rot.y, this->actor.wallYaw + 0x8000, 2, 0x5DC);

    // -320 is a bit below boss room ceiling
    if (this->actor.world.pos.y > -320.0f) {
        BossGoma_SetupCeilingMoveToCenter(this);
        // allow new spawns
        this->childrenGohmaState[0] = this->childrenGohmaState[1] = this->childrenGohmaState[2] = 0;
    }
}

/**
 * Goes to BossGoma_CeilingIdle after enough time and after being close enough to the center of the ceiling.
 */
void BossGoma_CeilingMoveToCenter(BossGoma* this, PlayState* play) {
    s16 angle;
    s16 absDiff;

    BossGoma_UpdateCeilingMovement(this, play, 0.0f, -5.0f, true);

    if (this->frameCount % 64 == 0) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_GOMA_CRY2);
    }

    Math_ApproachS(&this->actor.shape.rot.x, -0x8000, 3, 0x3E8);

    // avoid walking into a wall?
    if (this->actor.bgCheckFlags & BGCHECKFLAG_WALL) {
        angle = this->actor.shape.rot.y + 0x8000;

        if (angle < this->actor.wallYaw) {
            absDiff = this->actor.wallYaw - angle;
            angle = angle + absDiff / 2;
        } else {
            absDiff = angle - this->actor.wallYaw;
            angle = this->actor.wallYaw + absDiff / 2;
        }

        this->actor.world.pos.z += Math_CosS(angle) * (5.0f + Rand_ZeroOne() * 5.0f) + Rand_CenteredFloat(2.0f);
        this->actor.world.pos.x += Math_SinS(angle) * (5.0f + Rand_ZeroOne() * 5.0f) + Rand_CenteredFloat(2.0f);
    }

    // timer setup to 30-60
    if (this->framesUntilNextAction == 0 && fabsf(-150.0f - this->actor.world.pos.x) < 100.0f &&
        fabsf(-350.0f - this->actor.world.pos.z) < 100.0f) {
        BossGoma_SetupCeilingIdle(this);
    }
}

/**
 * Update eye-related properties
 *  - open/close (eye lid rotation)
 *  - look at the player (iris rotation)
 *  - iris scale, when menacing or damaged
 */
void BossGoma_UpdateEye(BossGoma* this, PlayState* play) {
    s16 targetEyeIrisRotX;
    s16 targetEyeIrisRotY;

    if (!this->disableGameplayLogic) {
        Player* player = GET_PLAYER(play);

        if (this->eyeState == EYESTATE_IRIS_FOLLOW_BONUS_IFRAMES) {
            // player + 0xA73 seems to be related to "throwing something"
            if (player->unk_A73 != 0) {
                player->unk_A73 = 0;
                this->eyeClosedTimer = 12;
            }

            if (this->frameCount % 16 == 0 && Rand_ZeroOne() < 0.3f) {
                this->eyeClosedTimer = 7;
            }
        }

        if (this->childrenGohmaState[0] > 0 || this->childrenGohmaState[1] > 0 || this->childrenGohmaState[2] > 0) {
            this->eyeClosedTimer = 7;
        }

        if (this->eyeClosedTimer != 0) {
            this->eyeClosedTimer--;
            // close eye
            Math_ApproachS(&this->eyeLidBottomRotX, -0xA98, 1, 0x7D0);
            Math_ApproachS(&this->eyeLidTopRotX, 0x1600, 1, 0x7D0);
        } else {
            // open eye
            Math_ApproachS(&this->eyeLidBottomRotX, 0, 1, 0x7D0);
            Math_ApproachS(&this->eyeLidTopRotX, 0, 1, 0x7D0);
        }

        if (this->eyeState != EYESTATE_IRIS_NO_FOLLOW_NO_IFRAMES) {
            targetEyeIrisRotY =
                Actor_WorldYawTowardActor(&this->actor, &GET_PLAYER(play)->actor) - this->actor.shape.rot.y;
            targetEyeIrisRotX =
                Actor_WorldPitchTowardActor(&this->actor, &GET_PLAYER(play)->actor) - this->actor.shape.rot.x;

            if (this->actor.shape.rot.x > 0x4000 || this->actor.shape.rot.x < -0x4000) {
                targetEyeIrisRotY = -(s16)(targetEyeIrisRotY + 0x8000);
                targetEyeIrisRotX = -0xBB8;
            }

            if (targetEyeIrisRotY > 0x1770) {
                targetEyeIrisRotY = 0x1770;
            }

            if (targetEyeIrisRotY < -0x1770) {
                targetEyeIrisRotY = -0x1770;
            }

            Math_ApproachS(&this->eyeIrisRotY, targetEyeIrisRotY, 3, 0x7D0);
            Math_ApproachS(&this->eyeIrisRotX, targetEyeIrisRotX, 3, 0x7D0);
        } else {
            Math_ApproachS(&this->eyeIrisRotY, 0, 3, 0x3E8);
            Math_ApproachS(&this->eyeIrisRotX, 0, 3, 0x3E8);
        }

        Math_ApproachF(&this->eyeIrisScaleX, 1.0f, 0.2f, 0.07f);
        Math_ApproachF(&this->eyeIrisScaleY, 1.0f, 0.2f, 0.07f);
    }
}

/**
 * Part of achieving visual effects when spawning children gohmas,
 * inflating each tail limb one after the other.
 */
void BossGoma_UpdateTailLimbsScale(BossGoma* this) {
    s16 i;

    if (this->frameCount % 128 == 0) {
        this->unusedTimer++;
        if (this->unusedTimer >= 3) {
            this->unusedTimer = 0;
        }
    }

    // See BossGoma_CeilingSpawnGohmas for `tailLimbsScaleTimers` usage
    for (i = 0; i < ARRAY_COUNT(this->tailLimbsScaleTimers); i++) {
        if (this->tailLimbsScaleTimers[i] != 0) {
            this->tailLimbsScaleTimers[i]--;
            Math_ApproachF(&this->tailLimbsScale[i], 1.5f, 0.2f, 0.1f);
        } else {
            Math_ApproachF(&this->tailLimbsScale[i], 1.0f, 0.2f, 0.1f);
        }
    }
}

void BossGoma_UpdateHit(BossGoma* this, PlayState* play) {
    if (this->invincibilityFrames != 0) {
        this->invincibilityFrames--;
    } else {
        ColliderElement* acHitElem = this->collider.elements[0].base.acHitElem;
        s32 damage;

        if (this->eyeClosedTimer == 0 && this->actionFunc != BossGoma_CeilingSpawnGohmas &&
            (this->collider.elements[0].base.acElemFlags & ACELEM_HIT)) {
            this->collider.elements[0].base.acElemFlags &= ~ACELEM_HIT;

            if (this->actionFunc == BossGoma_CeilingMoveToCenter || this->actionFunc == BossGoma_CeilingIdle ||
                this->actionFunc == BossGoma_CeilingPrepareSpawnGohmas) {
                BossGoma_SetupFallStruckDown(this);
                Actor_PlaySfx(&this->actor, NA_SE_EN_GOMA_DAM2);
            } else if (this->actionFunc == BossGoma_FloorStunned &&
                       (damage = CollisionCheck_GetSwordDamage(acHitElem->atDmgInfo.dmgFlags)) != 0) {
                this->actor.colChkInfo.health -= damage;

                if ((s8)this->actor.colChkInfo.health > 0) {
                    Actor_PlaySfx(&this->actor, NA_SE_EN_GOMA_DAM1);
                    BossGoma_SetupFloorDamaged(this);
                    EffectSsSibuki_SpawnBurst(play, &this->actor.focus.pos);
                } else {
                    BossGoma_SetupDefeated(this, play);
                    Enemy_StartFinishingBlow(play, &this->actor);
                }

                this->invincibilityFrames = 10;
            } else if (this->actionFunc != BossGoma_FloorStunned && this->patienceTimer != 0 &&
                       (acHitElem->atDmgInfo.dmgFlags & (DMG_SLINGSHOT | DMG_DEKU_NUT))) {
                Actor_PlaySfx(&this->actor, NA_SE_EN_GOMA_DAM2);
                Audio_StopSfxById(NA_SE_EN_GOMA_CRY1);
                this->invincibilityFrames = 10;
                BossGoma_SetupFloorStunned(this);
                this->sfxFaintTimer = 100;

                if (acHitElem->atDmgInfo.dmgFlags & DMG_DEKU_NUT) {
                    this->framesUntilNextAction = 40;
                } else {
                    this->framesUntilNextAction = 90;
                }

                this->timer = 4;
                Actor_RequestQuakeAndRumble(&this->actor, play, 4, 12);
            }
        }
    }
}

void BossGoma_UpdateMainEnvColor(BossGoma* this) {
    static f32 colors1[][3] = {
        { 255.0f, 17.0f, 0.0f },  { 0.0f, 255.0f, 170.0f }, { 50.0f, 50.0f, 50.0f },
        { 0.0f, 255.0f, 170.0f }, { 0.0f, 255.0f, 170.0f }, { 0.0f, 255.0f, 170.0f },
    };
    static f32 colors2[][3] = {
        { 255.0f, 17.0f, 0.0f },  { 0.0f, 255.0f, 170.0f }, { 50.0f, 50.0f, 50.0f },
        { 0.0f, 255.0f, 170.0f }, { 0.0f, 0.0f, 255.0f },   { 255.0f, 17.0f, 0.0f },
    };

    if (this->visualState == VISUALSTATE_DEFAULT && this->frameCount & 0x10) {
        Math_ApproachF(&this->mainEnvColor[0], 50.0f, 0.5f, 20.0f);
        Math_ApproachF(&this->mainEnvColor[1], 50.0f, 0.5f, 20.0f);
        Math_ApproachF(&this->mainEnvColor[2], 50.0f, 0.5f, 20.0f);
    } else if (this->invincibilityFrames != 0) {
        if (this->invincibilityFrames & 2) {
            this->mainEnvColor[0] = colors2[this->visualState][0];
            this->mainEnvColor[1] = colors2[this->visualState][1];
            this->mainEnvColor[2] = colors2[this->visualState][2];
        } else {
            this->mainEnvColor[0] = colors1[this->visualState][0];
            this->mainEnvColor[1] = colors1[this->visualState][1];
            this->mainEnvColor[2] = colors1[this->visualState][2];
        }
    } else {
        Math_ApproachF(&this->mainEnvColor[0], colors1[this->visualState][0], 0.5f, 20.0f);
        Math_ApproachF(&this->mainEnvColor[1], colors1[this->visualState][1], 0.5f, 20.0f);
        Math_ApproachF(&this->mainEnvColor[2], colors1[this->visualState][2], 0.5f, 20.0f);
    }
}

void BossGoma_UpdateEyeEnvColor(BossGoma* this) {
    static f32 targetEyeEnvColors[][3] = {
        { 255.0f, 17.0f, 0.0f },  { 255.0f, 255.0f, 255.0f }, { 50.0f, 50.0f, 50.0f },
        { 0.0f, 255.0f, 170.0f }, { 0.0f, 255.0f, 170.0f },   { 0.0f, 255.0f, 170.0f },
    };

    Math_ApproachF(&this->eyeEnvColor[0], targetEyeEnvColors[this->visualState][0], 0.5f, 20.0f);
    Math_ApproachF(&this->eyeEnvColor[1], targetEyeEnvColors[this->visualState][1], 0.5f, 20.0f);
    Math_ApproachF(&this->eyeEnvColor[2], targetEyeEnvColors[this->visualState][2], 0.5f, 20.0f);
}

void BossGoma_Update(Actor* thisx, PlayState* play) {
    BossGoma* this = (BossGoma*)thisx;
    s32 pad;

    this->visualState = VISUALSTATE_DEFAULT;
    this->frameCount++;

    if (this->framesUntilNextAction != 0) {
        this->framesUntilNextAction--;
    }

    if (this->timer != 0) {
        this->timer--;
    }

    if (this->sfxFaintTimer != 0) {
        this->sfxFaintTimer--;
    }

    this->eyeState = EYESTATE_IRIS_FOLLOW_BONUS_IFRAMES;
    this->actionFunc(this, play);
    this->actor.shape.rot.y = this->actor.world.rot.y;

    if (!this->doNotMoveThisFrame) {
        Actor_MoveXZGravity(&this->actor);
    } else {
        this->doNotMoveThisFrame = false;
    }

    if (this->actor.world.pos.y < -400.0f) {
        Actor_UpdateBgCheckInfo(play, &this->actor, 30.0f, 30.0f, 80.0f, UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2);
    } else {
        Actor_UpdateBgCheckInfo(play, &this->actor, 0.0f, 30.0f, 80.0f, UPDBGCHECKINFO_FLAG_0);
    }

    BossGoma_UpdateEye(this, play);
    BossGoma_UpdateMainEnvColor(this);
    BossGoma_UpdateEyeEnvColor(this);
    BossGoma_UpdateTailLimbsScale(this);

    if (this->disableGameplayLogic) {
        return;
    }

    BossGoma_UpdateHit(this, play);
    CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);

    if (this->actionFunc != BossGoma_FloorStunned && this->actionFunc != BossGoma_FloorDamaged &&
        (this->actionFunc != BossGoma_FloorMain || this->timer == 0)) {
        CollisionCheck_SetAT(play, &play->colChkCtx, &this->collider.base);
    }
}

s32 BossGoma_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    BossGoma* this = (BossGoma*)thisx;
    s32 doNotDrawLimb = false;

    OPEN_DISPS(play->state.gfxCtx, "../z_boss_goma.c", 4685);

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, (s16)this->mainEnvColor[0], (s16)this->mainEnvColor[1], (s16)this->mainEnvColor[2],
                   255);

    if (this->deadLimbsState[limbIndex] >= 2) {
        *dList = NULL;
    }

    switch (limbIndex) {
        case BOSSGOMA_LIMB_EYE:
            if (this->eyeState == EYESTATE_IRIS_FOLLOW_BONUS_IFRAMES && this->eyeLidBottomRotX < -0xA8C) {
                *dList = NULL;
            } else if (this->invincibilityFrames != 0) {
                gDPSetEnvColor(POLY_OPA_DISP++, (s16)(Rand_ZeroOne() * 255.0f), (s16)(Rand_ZeroOne() * 255.0f),
                               (s16)(Rand_ZeroOne() * 255.0f), 63);
            } else {
                gDPSetEnvColor(POLY_OPA_DISP++, (s16)this->eyeEnvColor[0], (s16)this->eyeEnvColor[1],
                               (s16)this->eyeEnvColor[2], 63);
            }
            break;

        case BOSSGOMA_LIMB_EYE_LID_BOTTOM_ROOT2:
            rot->x += this->eyeLidBottomRotX;
            break;

        case BOSSGOMA_LIMB_EYE_LID_TOP_ROOT2:
            rot->x += this->eyeLidTopRotX;
            break;

        case BOSSGOMA_LIMB_IRIS_ROOT2:
            rot->x += this->eyeIrisRotX;
            rot->y += this->eyeIrisRotY;
            break;

        case BOSSGOMA_LIMB_IRIS:
            if (this->eyeState == EYESTATE_IRIS_FOLLOW_BONUS_IFRAMES && this->eyeLidBottomRotX < -0xA8C) {
                *dList = NULL;
            } else {
                if (this->visualState == VISUALSTATE_DEFEATED) {
                    gDPSetEnvColor(POLY_OPA_DISP++, 50, 50, 50, 255);
                } else {
                    gDPSetEnvColor(POLY_OPA_DISP++, 255, 255, 255, 255);
                }

                Matrix_TranslateRotateZYX(pos, rot);

                if (*dList != NULL) {
                    Matrix_Push();
                    Matrix_Scale(this->eyeIrisScaleX, this->eyeIrisScaleY, 1.0f, MTXMODE_APPLY);
                    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_boss_goma.c", 4815);
                    gSPDisplayList(POLY_OPA_DISP++, *dList);
                    Matrix_Pop();
                }

                doNotDrawLimb = true;
            }
            break;

        case BOSSGOMA_LIMB_TAIL4:
        case BOSSGOMA_LIMB_TAIL3:
        case BOSSGOMA_LIMB_TAIL2:
        case BOSSGOMA_LIMB_TAIL1:
            Matrix_TranslateRotateZYX(pos, rot);

            if (*dList != NULL) {
                Matrix_Push();
                Matrix_Scale(this->tailLimbsScale[limbIndex - BOSSGOMA_LIMB_TAIL4],
                             this->tailLimbsScale[limbIndex - BOSSGOMA_LIMB_TAIL4],
                             this->tailLimbsScale[limbIndex - BOSSGOMA_LIMB_TAIL4], MTXMODE_APPLY);
                MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_boss_goma.c", 4836);
                gSPDisplayList(POLY_OPA_DISP++, *dList);
                Matrix_Pop();
            }

            doNotDrawLimb = true;
            break;
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_boss_goma.c", 4858);

    return doNotDrawLimb;
}

void BossGoma_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    static Vec3f tailZero = { 0.0f, 0.0f, 0.0f };
    static Vec3f clawBackLocalPos = { 0.0f, 0.0f, 0.0f };
    static Vec3f focusEyeLocalPos = { 0.0f, 300.0f, 2650.0f }; // in the center of the surface of the lens
    static Vec3f zero = { 0.0f, 0.0f, 0.0f };
    Vec3f childPos;
    Vec3s childRot;
    BossGoma* this = (BossGoma*)thisx;
    s32 pad[2];
    MtxF mtx;

    if (limbIndex == BOSSGOMA_LIMB_TAIL4) { // tail end/last part
        Matrix_MultVec3f(&tailZero, &this->lastTailLimbWorldPos);
    } else if (limbIndex == BOSSGOMA_LIMB_TAIL1) { // tail start/first part
        Matrix_MultVec3f(&tailZero, &this->firstTailLimbWorldPos);
    } else if (limbIndex == BOSSGOMA_LIMB_EYE) {
        Matrix_MultVec3f(&focusEyeLocalPos, &this->actor.focus.pos);
    } else if (limbIndex == BOSSGOMA_LIMB_R_FEET_BACK) {
        Matrix_MultVec3f(&clawBackLocalPos, &this->rightHandBackLimbWorldPos);
    } else if (limbIndex == BOSSGOMA_LIMB_L_FEET_BACK) {
        Matrix_MultVec3f(&clawBackLocalPos, &this->leftHandBackLimbWorldPos);
    }

    if (this->visualState == VISUALSTATE_DEFEATED) {
        if (*dList != NULL) {
            Matrix_MultVec3f(&clawBackLocalPos, &this->defeatedLimbPositions[limbIndex]);
        } else {
            this->defeatedLimbPositions[limbIndex].y = 10000.0f;
        }
    }

    if (this->deadLimbsState[limbIndex] == 1) {
        EnGoma* babyGohma;

        this->deadLimbsState[limbIndex] = 2;
        Matrix_MultVec3f(&zero, &childPos);
        Matrix_Get(&mtx);
        Matrix_MtxFToYXZRotS(&mtx, &childRot, 0);
        // These are the pieces of Gohma as it falls apart. It appears to use the same actor as the baby gohmas.
        babyGohma = (EnGoma*)Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_EN_GOMA, childPos.x,
                                                childPos.y, childPos.z, childRot.x, childRot.y, childRot.z,
                                                sDeadLimbLifetime[limbIndex] + 100);
        if (babyGohma != NULL) {
            babyGohma->bossLimbDL = *dList;
            babyGohma->actor.objectSlot = this->actor.objectSlot;
        }
    }

    Collider_UpdateSpheres(limbIndex, &this->collider);
}

Gfx* BossGoma_EmptyDlist(GraphicsContext* gfxCtx) {
    Gfx* dListHead;
    Gfx* dList;

    dList = dListHead = GRAPH_ALLOC(gfxCtx, sizeof(Gfx) * 1);

    gSPEndDisplayList(dListHead++);

    return dList;
}

Gfx* BossGoma_NoBackfaceCullingDlist(GraphicsContext* gfxCtx) {
    Gfx* dListHead;
    Gfx* dList;

    dList = dListHead = GRAPH_ALLOC(gfxCtx, sizeof(Gfx) * 4);

    gDPPipeSync(dListHead++);
    gDPSetRenderMode(dListHead++, G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2);
    gSPClearGeometryMode(dListHead++, G_CULL_BACK);
    gSPEndDisplayList(dListHead++);

    return dList;
}

void BossGoma_Draw(Actor* thisx, PlayState* play) {
    BossGoma* this = (BossGoma*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_boss_goma.c", 4991);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    Matrix_Translate(0.0f, -4000.0f, 0.0f, MTXMODE_APPLY);

    if (this->noBackfaceCulling) {
        gSPSegment(POLY_OPA_DISP++, 0x08, BossGoma_NoBackfaceCullingDlist(play->state.gfxCtx));
    } else {
        gSPSegment(POLY_OPA_DISP++, 0x08, BossGoma_EmptyDlist(play->state.gfxCtx));
    }

    SkelAnime_DrawOpa(play, this->skelanime.skeleton, this->skelanime.jointTable, BossGoma_OverrideLimbDraw,
                      BossGoma_PostLimbDraw, this);

    CLOSE_DISPS(play->state.gfxCtx, "../z_boss_goma.c", 5012);
}

void BossGoma_SpawnChildGohma(BossGoma* this, PlayState* play, s16 i) {
    Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_EN_GOMA, this->lastTailLimbWorldPos.x,
                       this->lastTailLimbWorldPos.y - 50.0f, this->lastTailLimbWorldPos.z, 0, i * (0x10000 / 3), 0, i);

    this->childrenGohmaState[i] = 1;
}
