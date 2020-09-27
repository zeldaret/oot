#include "z_boss_goma.h"
#include "../ovl_En_Goma/z_en_goma.h"

#define FLAGS 0x00000035

#define THIS ((BossGoma*)thisx)

/**
 * IRIS_FOLLOW: gohma looks towards the player (iris rotation)
 * BONUS_IFRAMES: gain invincibility frames when the player does something (throwing things?),
 *                or randomly (see BossGoma_UpdateEye)
 */
typedef enum {
    /**
     * resets to this every Update
     * allows not drawing lens and iris when eye is closed (see BossGoma_OverrideLimbDraw)
     */
    EYESTATE_IRIS_FOLLOW_BONUS_IFRAMES,
    EYESTATE_IRIS_NO_FOLLOW_NO_IFRAMES,
    EYESTATE_IRIS_FOLLOW_NO_IFRAMES
} BossGoma_EyeState;

/**
 * mainly tied to the choice of envColor
 * these comments describe what the end result looks like, omitting steps that have no actual effect
 */
typedef enum {
    VISUALSTATE_RED, // main/eye: red
    /*
    resets to this every Update
    main: greenish cyan, blinks with dark gray every 16 frames
    eye: white
    */
    VISUALSTATE_DEFAULT,
    VISUALSTATE_DEFEATED, // main/eye: dark gray
    /*
    main: greenish cyan, alternates with blue every 2 frames during invincibility frames
    eye: greenish cyan
    */
    VISUALSTATE_STUNNED = 4,
    /*
    main: greenish cyan, alternates with red every 2 frames during invincibility frames
    eye: greenish cyan
    */
    VISUALSTATE_HIT
} BossGoma_VisualState;

void BossGoma_Init(Actor* thisx, GlobalContext* globalCtx);
void BossGoma_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BossGoma_Update(Actor* thisx, GlobalContext* globalCtx);
void BossGoma_Draw(Actor* thisx, GlobalContext* globalCtx);

void BossGoma_SetupEncounter(BossGoma* this, GlobalContext* globalCtx);
void BossGoma_Encounter(BossGoma* this, GlobalContext* globalCtx);
void BossGoma_Defeated(BossGoma* this, GlobalContext* globalCtx);
void BossGoma_FloorAttackPosture(BossGoma* this, GlobalContext* globalCtx);
void BossGoma_FloorPrepareAttack(BossGoma* this, GlobalContext* globalCtx);
void BossGoma_FloorAttack(BossGoma* this, GlobalContext* globalCtx);
void BossGoma_FloorDamaged(BossGoma* this, GlobalContext* globalCtx);
void BossGoma_FloorLandStruckDown(BossGoma* this, GlobalContext* globalCtx);
void BossGoma_FloorLand(BossGoma* this, GlobalContext* globalCtx);
void BossGoma_FloorStunned(BossGoma* this, GlobalContext* globalCtx);
void BossGoma_FallJump(BossGoma* this, GlobalContext* globalCtx);
void BossGoma_FallStruckDown(BossGoma* this, GlobalContext* globalCtx);
void BossGoma_CeilingSpawnGohmas(BossGoma* this, GlobalContext* globalCtx);
void BossGoma_CeilingPrepareSpawnGohmas(BossGoma* this, GlobalContext* globalCtx);
void BossGoma_FloorIdle(BossGoma* this, GlobalContext* globalCtx);
void BossGoma_CeilingIdle(BossGoma* this, GlobalContext* globalCtx);
void BossGoma_FloorMain(BossGoma* this, GlobalContext* globalCtx);
void BossGoma_WallClimb(BossGoma* this, GlobalContext* globalCtx);
void BossGoma_CeilingMoveToCenter(BossGoma* this, GlobalContext* globalCtx);
void BossGoma_SpawnChildGohma(BossGoma* this, GlobalContext* globalCtx, s16 arg2);

extern AnimationHeader D_06000AE8; // standing up, wiggle (first encounter?)
extern AnimationHeader D_0600193C; // stretched, looking up (would make more sense with 0x8000 x rot?)
extern AnimationHeader D_06002360; // running
extern AnimationHeader D_060029F0; // standing up, shaking
// unused attack animation at 0x39D0
extern AnimationHeader D_06004318; // attack (or land?)
extern AnimationHeader D_06004A20; // briefly look up (rotX 0x8000?)
extern AnimationHeader D_06005330; // get up and close eye
extern AnimationHeader D_060058C0; // lying on ground, shook (when hit?)
extern AnimationHeader D_06005F28; // briefly crouch, eye halfclosed
extern AnimationHeader D_060066DC; // running, head facing down
extern AnimationHeader D_06006E60; // lying on ground, shook, rolling eye (when hit?)
extern AnimationHeader D_0600B2FC; // get up, shake, fall, get up, fall (death animation?)
extern AnimationHeader D_0600C468; // open eye, stretch/get up, blink, "attack posture" (first encounter?)
extern AnimationHeader D_0600CCD8; // on ground, eye and limbs shaking a bit
extern AnimationHeader D_0600F70C; // blink, get up, take "attack posture"
extern AnimationHeader D_06010918; // standing up, roll eye
extern AnimationHeader D_060113BC; // eye half closed, standing up, kind of briefly crouch and agitate limbs
extern AnimationHeader D_06012678; // eye half closed, one step ahead, one step back (menacing)
extern AnimationHeader D_0601EB4C; // eye half closed, walk (cautiously?)
extern s16 D_060183A8[];
extern s16 D_060185A8[];
extern s16 D_060187A8[];
extern s16 D_060189A8[];
extern s16 D_060191A8[];
extern s16 D_060193A8[];
extern UNK_TYPE D_06019BA8[];
extern SkeletonHeader D_0601DCF8;

const ActorInit Boss_Goma_InitVars = {
    ACTOR_BOSS_GOMA,
    ACTORTYPE_BOSS,
    FLAGS,
    OBJECT_GOMA,
    sizeof(BossGoma),
    (ActorFunc)BossGoma_Init,
    (ActorFunc)BossGoma_Destroy,
    (ActorFunc)BossGoma_Update,
    (ActorFunc)BossGoma_Draw,
};

static ColliderJntSphItemInit sColliderJntSphItemInit[13] = {
    {
        { 0x03, { 0xFFCFFFFF, 0x00, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 5, { { 0, 0, 1200 }, 20 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 11, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 12, { { 0, 0, 0 }, 15 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 13, { { 0, 0, 0 }, 12 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 14, { { 0, 0, 0 }, 25 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 22, { { 0, 0, 0 }, 30 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 23, { { 0, 0, 0 }, 15 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 29, { { 0, 0, 0 }, 15 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 57, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 64, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 74, { { 0, 0, 0 }, 30 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 75, { { 0, 0, 0 }, 15 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 81, { { 0, 0, 0 }, 15 }, 100 },
    },
};
static ColliderJntSphInit sColliderJntSphInit = {
    { COLTYPE_UNK3, 0x11, 0x09, 0x09, 0x10, COLSHAPE_JNTSPH },
    13,
    sColliderJntSphItemInit,
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
static u8 D_8091B244[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x1E, // tail end/last part
    0x28, // tail 2nd to last part
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x0A, // back of right claw/hand
    0x0F, // front of right claw/hand
    0x15, // part of right arm (inner)
    0x00, 0x00,
    0x19, // part of right arm (shell)
    0x00, 0x00,
    0x1F, // part of right arm (shell on shoulder)
    0x23, // part of right arm (shoulder)
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x2B, // end of left antenna
    0x30, // middle of left antenna
    0x35, // start of left antenna
    0x00, 0x00, 0x00, 0x00,
    0x2A, // end of right antenna
    0x2D, // middle of right antenna
    0x35, // start of right antenna
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x0B, // back of left claw/hand
    0x0F, // front of left claw/hand
    0x15, // part of left arm (inner)
    0x00, 0x00,
    0x19, // part of left arm (shell)
    0x00, 0x00,
    0x1E, // part of left arm (shell on shoulder)
    0x23, // part of left arm (shoulder)
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
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
        targetPixel = (s32)rgba16image + (s16)((i & 0xF) * 2 + (i & 0xF0) * 4) * 2;
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
    // rgba16 16x16
    BossGoma_ClearPixels16x16Rgba16((s16*)SEGMENTED_TO_VIRTUAL(D_060183A8), clearPixelTable, i);
    BossGoma_ClearPixels16x16Rgba16((s16*)SEGMENTED_TO_VIRTUAL(D_060185A8), clearPixelTable, i);
    BossGoma_ClearPixels16x16Rgba16((s16*)SEGMENTED_TO_VIRTUAL(D_060187A8), clearPixelTable, i);
    BossGoma_ClearPixels16x16Rgba16((s16*)SEGMENTED_TO_VIRTUAL(D_060191A8), clearPixelTable, i);
    // rgba16 32x32
    BossGoma_ClearPixels32x32Rgba16((s16*)SEGMENTED_TO_VIRTUAL(D_060189A8), clearPixelTable, i);
    BossGoma_ClearPixels32x32Rgba16((s16*)SEGMENTED_TO_VIRTUAL(D_060193A8), clearPixelTable, i);
}

void BossGoma_Init(Actor* thisx, GlobalContext* globalCtx) {
    static InitChainEntry D_8091B2A8[] = { ICHAIN_U8(unk_1F, 2, ICHAIN_CONTINUE),
                                           ICHAIN_S8(naviEnemyId, 1, ICHAIN_CONTINUE),
                                           ICHAIN_F32_DIV1000(gravity, -2000, ICHAIN_STOP) };

    s32 pad;
    BossGoma* this = THIS;

    Actor_ProcessInitChain(&this->actor, D_8091B2A8);
    ActorShape_Init(&this->actor.shape, 4000.0f, ActorShadow_DrawFunc_Circle, 150.0f);
    SkelAnime_Init(globalCtx, &this->skelanime, &D_0601DCF8, &D_06012678, 0, 0, 0);
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelanime, &D_06012678);
    this->actor.shape.rot.x = -0x8000; // upside-down
    this->eyeIrisScaleX = 1.0f;
    this->eyeIrisScaleY = 1.0f;
    this->unusedInitX = this->actor.posRot.pos.x;
    this->unusedInitZ = this->actor.posRot.pos.z;
    this->actor.posRot.pos.y = -300.0f; // ceiling
    this->actor.gravity = 0.0f;
    BossGoma_SetupEncounter(this, globalCtx);
    this->actor.colChkInfo.health = 10;
    this->actor.colChkInfo.mass = 0xFF;
    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, &this->actor, &sColliderJntSphInit, this->colliderItems);
    if (Flags_GetClear(globalCtx, globalCtx->roomCtx.curRoom.num)) {
        Actor_Kill(&this->actor);
        Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DOOR_WARP1, 0.0f, -640.0f, 0.0f, 0, 0,
                           0, 0);
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_B_HEART, 141.0f, -640.0f, -84.0f, 0, 0, 0, 0);
    }
}

void BossGoma_PlayEffectsAndSfx(BossGoma* this, GlobalContext* globalCtx, s16 arg2, s16 amountMinus1) {
    if (arg2 == 0 || arg2 == 1 || arg2 == 3) {
        func_80033260(globalCtx, &this->actor, &this->rightHandBackLimbWorldPos, 25.0f, amountMinus1, 8.0f, 500, 10, 1);
    }
    if (arg2 == 0 || arg2 == 2 || arg2 == 3) {
        func_80033260(globalCtx, &this->actor, &this->leftHandBackLimbWorldPos, 25.0f, amountMinus1, 8.0f, 500, 10, 1);
    }
    if (arg2 == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_DOWN);
    } else {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_WALK);
    }
}

void BossGoma_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BossGoma* this = THIS;

    SkelAnime_Free(&this->skelanime, globalCtx);
    Collider_DestroyJntSph(globalCtx, &this->collider);
}

/**
 * When Gohma is hit and its health drops to 0
 */
void BossGoma_SetupDefeated(BossGoma* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnim(&this->skelanime, &D_0600B2FC, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_0600B2FC.genericHeader),
                         2, -2.0f);
    this->actionFunc = BossGoma_Defeated;
    this->disableGameplayLogic = true;
    this->decayingProgress = 0;
    this->noBackfaceCulling = false;
    this->framesUntilNextAction = 1200;
    this->actionState = 0;
    this->actor.flags &= ~5;
    this->actor.speedXZ = 0.0f;
    this->actor.shape.unk_10 = 0.0f;
    Audio_SetBGM(0x100100FF);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_DEAD);
}

/**
 * The initial action, where Gohma is waiting on the ceiling
 */
void BossGoma_SetupEncounter(BossGoma* this, GlobalContext* globalCtx) {
    f32 fc = SkelAnime_GetFrameCount(&D_06002360.genericHeader);

    SkelAnime_ChangeAnim(&this->skelanime, &D_06002360, 1.0f, 0.0f, fc, 0, -15.0f);
    this->actionFunc = BossGoma_Encounter;
    this->actionState = 0;
    this->disableGameplayLogic = true;
    globalCtx->envCtx.unk_BF = 4;
    globalCtx->envCtx.unk_D6 = 0xFF;
}

/**
 * On the floor and not doing anything for 20-30 frames, before going back to BossGoma_FloorMain
 */
void BossGoma_SetupFloorIdle(BossGoma* this) {
    f32 fc = SkelAnime_GetFrameCount(&D_06012678.genericHeader);

    this->framesUntilNextAction = Math_Rand_S16Offset(20, 30);
    SkelAnime_ChangeAnim(&this->skelanime, &D_06012678, 1.0f, 0.0f, fc, 0, -5.0f);
    this->actionFunc = BossGoma_FloorIdle;
}

/**
 * On the ceiling and not doing anything for 20-30 frames, before spawning gohmas
 * Gohma can be struck down (get shot and fall)
 */
void BossGoma_SetupCeilingIdle(BossGoma* this) {
    this->framesUntilNextAction = Math_Rand_S16Offset(20, 30);
    SkelAnime_ChangeAnim(&this->skelanime, &D_0600193C, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_0600193C.genericHeader),
                         0, -5.0f);
    this->actionFunc = BossGoma_CeilingIdle;
}

/**
 * Gohma goes back to the floor after the player killed the three gohmas it spawned
 */
void BossGoma_SetupFallJump(BossGoma* this) {
    SkelAnime_ChangeAnim(&this->skelanime, &D_06005F28, 1.0f, 0.0f, 0.0f, 2, -5.0f);
    this->actionFunc = BossGoma_FallJump;
    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.gravity = -2.0f;
}

void BossGoma_SetupFallStruckDown(BossGoma* this) {
    SkelAnime_ChangeAnim(&this->skelanime, &D_060058C0, 1.0f, 0.0f, 0.0f, 2, -5.0f);
    this->actionFunc = BossGoma_FallStruckDown;
    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.gravity = -2.0f;
}

/**
 * Spawn three gohmas, one after the other. Cannot be interrupted
 */
void BossGoma_SetupCeilingSpawnGohmas(BossGoma* this) {
    SkelAnime_ChangeAnim(&this->skelanime, &D_060113BC, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_060113BC.genericHeader),
                         0, -15.0f);
    this->actionFunc = BossGoma_CeilingSpawnGohmas;
    this->spawnGohmasActionTimer = 0;
}

/**
 * Red eye for 70 frames
 */
void BossGoma_SetupCeilingPrepareSpawnGohmas(BossGoma* this) {
    SkelAnime_ChangeAnim(&this->skelanime, &D_060029F0, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_060029F0.genericHeader),
                         0, -10.0f);
    this->actionFunc = BossGoma_CeilingPrepareSpawnGohmas;
    this->framesUntilNextAction = 70;
}

void BossGoma_SetupWallClimb(BossGoma* this) {
    SkelAnime_ChangeAnim(&this->skelanime, &D_060066DC, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_060066DC.genericHeader),
                         0, -10.0f);
    this->actionFunc = BossGoma_WallClimb;
    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.gravity = 0.0f;
}

/**
 * Gohma either reached the ceiling after climbing a wall, or is waiting for the player to kill the (children) Gohmas.
 */
void BossGoma_SetupCeilingMoveToCenter(BossGoma* this) {
    SkelAnime_ChangeAnim(&this->skelanime, &D_06002360, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06002360.genericHeader),
                         0, -5.0f);
    this->actionFunc = BossGoma_CeilingMoveToCenter;
    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.gravity = 0.0f;
    this->framesUntilNextAction = Math_Rand_S16Offset(30, 60);
}

/**
 * Gohma approaches the player as long as it has patience (see patienceTimer), then moves away from the player
 * Gohma climbs any wall it collides with
 */
void BossGoma_SetupFloorMain(BossGoma* this) {
    SkelAnime_ChangeAnim(&this->skelanime, &D_0601EB4C, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_0601EB4C.genericHeader),
                         0, -5.0f);
    this->actionFunc = BossGoma_FloorMain;
    this->framesUntilNextAction = Math_Rand_S16Offset(70, 110);
}

/**
 * Gohma is back on the floor after the player has killed its children Gohmas.
 */
void BossGoma_SetupFloorLand(BossGoma* this) {
    SkelAnime_ChangeAnim(&this->skelanime, &D_06005F28, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06005F28.genericHeader),
                         2, -2.0f);
    this->actionFunc = BossGoma_FloorLand;
    this->currentAnimFrameCount = SkelAnime_GetFrameCount(&D_06005F28.genericHeader);
}

/**
 * Gohma is back on the floor after the player struck it down from the ceiling.
 * Gohma ends up stunned (BossGoma_FloorStunned)
 */
void BossGoma_SetupFloorLandStruckDown(BossGoma* this) {
    SkelAnime_ChangeAnim(&this->skelanime, &D_060058C0, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_060058C0.genericHeader),
                         2, -2.0f);
    this->currentAnimFrameCount = SkelAnime_GetFrameCount(&D_060058C0.genericHeader);
    this->actionFunc = BossGoma_FloorLandStruckDown;
    this->currentAnimFrameCount = SkelAnime_GetFrameCount(&D_060058C0.genericHeader);
}

/**
 * Gohma is stunned and vulnerable. It can only be damaged during this action.
 */
void BossGoma_SetupFloorStunned(BossGoma* this) {
    SkelAnime_ChangeAnim(&this->skelanime, &D_0600CCD8, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_0600CCD8.genericHeader),
                         0, -2.0f);
    this->actionFunc = BossGoma_FloorStunned;
}

/**
 * Take an attack posture when the player is close enough.
 * If the player backs off, cancel the attack, or attack.
 */
void BossGoma_SetupFloorAttackPosture(BossGoma* this) {
    SkelAnime_ChangeAnim(&this->skelanime, &D_0600C468, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_0600C468.genericHeader),
                         2, -10.0f);
    this->actionFunc = BossGoma_FloorAttackPosture;
}

/**
 * Only lasts 1 frame. Plays a sound.
 */
void BossGoma_SetupFloorPrepareAttack(BossGoma* this) {
    SkelAnime_ChangeAnim(&this->skelanime, &D_06000AE8, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06000AE8.genericHeader),
                         0, -10.0f);
    this->actionFunc = BossGoma_FloorPrepareAttack;
    this->framesUntilNextAction = 0;
}

/**
 * Gohma attacks, then the action eventually goes back to BossGoma_FloorMain
 */
void BossGoma_SetupFloorAttack(BossGoma* this) {
    SkelAnime_ChangeAnim(&this->skelanime, &D_06004318, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06004318.genericHeader),
                         2, -10.0f);
    this->actionFunc = BossGoma_FloorAttack;
    this->actionState = 0;
    this->framesUntilNextAction = 0;
}

/**
 * Plays an animation for Gohma being hit (while stunned)
 * Preserves timers apart from the patience one, and goes back to BossGoma_FloorStunned once the animation finishes
 */
void BossGoma_SetupFloorDamaged(BossGoma* this) {
    SkelAnime_ChangeAnim(&this->skelanime, &D_06006E60, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06006E60.genericHeader),
                         2, -2.0f);
    this->actionFunc = BossGoma_FloorDamaged;
}

void BossGoma_UpdateCeilingMovement(BossGoma* this, GlobalContext* globalCtx, f32 dz, f32 targetSpeedXZ,
                                    s16 rotateTowardsCenter) {
    static Vec3f _vel = { 0, 0, 0 };
    static Vec3f _accel = { 0, -0.5f, 0 };
    static Vec3f roomCenter = { -150, 0, -350 };

    Vec3f* basePos = NULL;
    s16 i;
    Vec3f vel;
    Vec3f accel;
    Vec3f pos;

    roomCenter.z += dz; // dz is always 0
    SkelAnime_FrameUpdateMatrix(&this->skelanime);
    Math_SmoothScaleMaxF(&this->actor.speedXZ, targetSpeedXZ, 0.5f, 2.0f);

    if (rotateTowardsCenter) {
        Math_SmoothScaleMaxS(&this->actor.posRot.rot.y, Math_Vec3f_Yaw(&this->actor.posRot.pos, &roomCenter) + 0x8000,
                             3, 0x3E8);
    }

    if (func_800A56C8(&this->skelanime, 9.0f)) {
        basePos = &this->rightHandBackLimbWorldPos;
    } else if (func_800A56C8(&this->skelanime, 1.0f)) {
        basePos = &this->leftHandBackLimbWorldPos;
    }

    if (basePos != NULL) {
        for (i = 0; i < 5; i++) {
            vel = _vel;
            accel = _accel;
            pos.x = Math_Rand_CenteredFloat(70.0f) + basePos->x;
            pos.y = Math_Rand_ZeroFloat(30.0f) + basePos->y;
            pos.z = Math_Rand_CenteredFloat(70.0f) + basePos->z;
            func_80029724(globalCtx, &pos, &vel, &accel, 0, (s16)(Math_Rand_ZeroOne() * 5.0f) + 10, -1, 10, 0);
        }
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_HIGH);
    }
}

void BossGoma_SetupEncounterState4(BossGoma* this, GlobalContext* globalCtx) {
    Player* player;
    Camera* camera;

    camera = Gameplay_GetCamera(globalCtx, 0);
    player = PLAYER;
    this->actionState = 4;
    this->actor.flags |= 1;
    func_80064520(globalCtx, &globalCtx->csCtx);
    func_8002DF54(globalCtx, &this->actor, 1);
    this->subCameraId = Gameplay_CreateSubCamera(globalCtx);
    Gameplay_ChangeCameraStatus(globalCtx, 0, 3);
    Gameplay_ChangeCameraStatus(globalCtx, this->subCameraId, 7);
    SkelAnime_ChangeAnim(&this->skelanime, &D_06010918, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06010918.genericHeader),
                         2, 0.0f);
    this->currentAnimFrameCount = SkelAnime_GetFrameCount(&D_06010918.genericHeader);
    // room center
    this->actor.posRot.pos.x = -150.0f;
    this->actor.posRot.pos.z = -350.0f;
    // room entrance, towards center
    player->actor.posRot.pos.x = 150.0f;
    player->actor.posRot.pos.z = 300.0f;
    player->actor.posRot.rot.y = player->actor.shape.rot.y = -0x705C;
    this->actor.posRot.rot.y = func_8002DA78(&this->actor, &PLAYER->actor) + 0x8000;
    // room entrance, closer to room center
    this->subCameraEye.x = 90.0f;
    this->subCameraEye.z = 170.0f;
    this->subCameraEye.y = camera->eye.y + 20.0f;
    this->framesUntilNextAction = 50;
    this->subCameraAt.x = this->actor.posRot.pos.x;
    this->subCameraAt.y = this->actor.posRot.pos.y;
    this->subCameraAt.z = this->actor.posRot.pos.z;
    Audio_SetBGM(0x100100FF);
}

void BossGoma_Encounter(BossGoma* this, GlobalContext* globalCtx) {
    Camera* cam;
    Player* player;
    s32 pad[2];

    player = PLAYER;
    Math_SmoothDownscaleMaxF(&this->actor.speedXZ, 0.5f, 2.0f);

    switch (this->actionState) {
        case 0: // wait for the player to enter the room
            // entrance of the boss room
            if (fabsf(player->actor.posRot.pos.x - 150.0f) < 60.0f &&
                fabsf(player->actor.posRot.pos.z - 350.0f) < 60.0f) {
                if (gSaveContext.eventChkInf[7] & 1) {
                    BossGoma_SetupEncounterState4(this, globalCtx);
                    Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DOOR_SHUTTER, 164.72f,
                                       -480.0f, 397.68002f, 0, -0x705C, 0, 0x180);
                } else {
                    func_8002DF54(globalCtx, &this->actor, 8);
                    this->actionState = 1;
                }
            }
            break;
        case 1: // player entered the room
            func_80064520(globalCtx, &globalCtx->csCtx);
            this->subCameraId = Gameplay_CreateSubCamera(globalCtx);
            osSyncPrintf("MAKE CAMERA !!!   1   !!!!!!!!!!!!!!!!!!!!!!!!!!\n");
            Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
            Gameplay_ChangeCameraStatus(globalCtx, this->subCameraId, 7);
            this->actionState = 2;
            // ceiling center
            this->actor.posRot.pos.x = -150.0f;
            this->actor.posRot.pos.y = -320.0f;
            this->actor.posRot.pos.z = -350.0f;
            // room entrance
            player->actor.posRot.pos.x = 150.0f;
            player->actor.posRot.pos.z = 300.0f;
            // near ceiling center
            this->subCameraEye.x = -350.0f;
            this->subCameraEye.y = -310.0f;
            this->subCameraEye.z = -350.0f;
            // below room entrance
            this->subCameraAt.x = player->actor.posRot.pos.x;
            this->subCameraAt.y = player->actor.posRot.pos.y - 200.0f + 25.0f;
            this->subCameraAt.z = player->actor.posRot.pos.z;
            this->framesUntilNextAction = 50;
            this->timer = 80;
            this->frameCount = 0;
            this->actor.flags &= ~1;
            // fall-through
        case 2: // zoom on player from room center
            // room entrance, towards center
            player->actor.shape.rot.y = -0x705C;
            player->actor.posRot.pos.x = 150.0f;
            player->actor.posRot.pos.z = 300.0f;
            player->actor.posRot.rot.y = player->actor.shape.rot.y;
            player->actor.speedXZ = 0.0f;
            // timer set to 50 by previous state
            if (this->framesUntilNextAction == 0) {
                // (-20, 25, -65) is towards room center
                Math_SmoothScaleMaxF(&this->subCameraEye.x, player->actor.posRot.pos.x - 20.0f, 0.049999997f,
                                     this->subCameraFollowSpeed * 50.0f);
                Math_SmoothScaleMaxF(&this->subCameraEye.y, player->actor.posRot.pos.y + 25.0f, 0.099999994f,
                                     this->subCameraFollowSpeed * 130.0f);
                Math_SmoothScaleMaxF(&this->subCameraEye.z, player->actor.posRot.pos.z - 65.0f, 0.049999997f,
                                     this->subCameraFollowSpeed * 30.0f);
                Math_SmoothScaleMaxF(&this->subCameraFollowSpeed, 0.29999998f, 1.0f, 0.0050000004f);
                if (this->timer == 0) {
                    Math_SmoothScaleMaxF(&this->subCameraAt.y, player->actor.posRot.pos.y + 35.0f, 0.099999994f,
                                         this->subCameraFollowSpeed * 30.0f);
                }
                this->subCameraAt.x = player->actor.posRot.pos.x;
                this->subCameraAt.z = player->actor.posRot.pos.z;
            }
            func_800C04D8(globalCtx, 0, &this->subCameraAt, &this->subCameraEye);
            if (this->frameCount == 176) {
                Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DOOR_SHUTTER, 164.72f, -480.0f,
                                   397.68002f, 0, -0x705C, 0, 0x180);
            }
            if (this->frameCount == 176) {
                globalCtx->envCtx.unk_BF = 3;
                globalCtx->envCtx.unk_D6 = 0xFFFF;
            }
            if (this->frameCount == 190) {
                func_8002DF54(globalCtx, &this->actor, 2);
            }
            if (this->frameCount >= 228) {
                cam = Gameplay_GetCamera(globalCtx, 0);
                cam->eye = this->subCameraEye;
                cam->eyeNext = this->subCameraEye;
                cam->at = this->subCameraAt;
                func_800C08AC(globalCtx, this->subCameraId, 0);
                this->subCameraId = 0;
                func_80064534(globalCtx, &globalCtx->csCtx);
                func_8002DF54(globalCtx, &this->actor, 7);
                this->actionState = 3;
            }
            break;
        case 3: // wait for the player to look at Gohma
            if (fabsf(this->actor.projectedPos.x) < 150.0f && fabsf(this->actor.projectedPos.y) < 250.0f &&
                this->actor.projectedPos.z < 800.0f && this->actor.projectedPos.z > 0.0f) {
                this->lookedAtFrames++;
                Math_SmoothDownscaleMaxF(&this->actor.speedXZ, 0.5f, 2.0f);
                Math_SmoothScaleMaxS(&this->actor.posRot.rot.y, func_8002DA78(&this->actor, &PLAYER->actor) + 0x8000, 2,
                                     0xBB8);
                this->eyeLidBottomRotX = this->eyeLidTopRotX = this->eyeIrisRotX = this->eyeIrisRotY = 0;
            } else {
                this->lookedAtFrames = 0;
                BossGoma_UpdateCeilingMovement(this, globalCtx, 0.0f, -5.0f, true);
            }
            if (this->lookedAtFrames > 15) {
                BossGoma_SetupEncounterState4(this, globalCtx);
            }
            break;
        case 4: // focus Gohma on the ceiling
            if (func_800A56C8(&this->skelanime, 15.0f)) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_DEMO_EYE);
            }
            // timer set to 50 by BossGoma_SetupEncounterState4 (from state 0 or 3)
            if (this->framesUntilNextAction <= 40) {
                // (22, -25, 45) is towards room entrance
                Math_SmoothScaleMaxF(&this->subCameraEye.x, this->actor.posRot.pos.x + 22.0f, 0.2f, 100.0f);
                Math_SmoothScaleMaxF(&this->subCameraEye.y, this->actor.posRot.pos.y - 25.0f, 0.2f, 100.0f);
                Math_SmoothScaleMaxF(&this->subCameraEye.z, this->actor.posRot.pos.z + 45.0f, 0.2f, 100.0f);
                Math_SmoothScaleMaxF(&this->subCameraAt.x, this->actor.posRot.pos.x, 0.2f, 100.0f);
                Math_SmoothScaleMaxF(&this->subCameraAt.y, this->actor.posRot.pos.y + 5.0f, 0.2f, 100.0f);
                Math_SmoothScaleMaxF(&this->subCameraAt.z, this->actor.posRot.pos.z, 0.2f, 100.0f);
                if (this->framesUntilNextAction == 30) {
                    globalCtx->envCtx.unk_BF = 4;
                }
                if (this->framesUntilNextAction < 20) {
                    SkelAnime_FrameUpdateMatrix(&this->skelanime);
                    Math_SmoothScaleMaxF(&this->eyeIrisScaleX, 1.0f, 0.8f, 0.4f);
                    Math_SmoothScaleMaxF(&this->eyeIrisScaleY, 1.0f, 0.8f, 0.4f);
                    if (func_800A56C8(&this->skelanime, 36.0f)) {
                        this->eyeIrisScaleX = 1.8f;
                        this->eyeIrisScaleY = 1.8f;
                    }
                    if (func_800A56C8(&this->skelanime, this->currentAnimFrameCount)) {
                        this->actionState = 5;
                        SkelAnime_ChangeAnim(&this->skelanime, &D_06002360, 2.0f, 0.0f,
                                             SkelAnime_GetFrameCount(&D_06002360.genericHeader), 0, -5.0f);
                        this->framesUntilNextAction = 30;
                        this->subCameraFollowSpeed = 0.0f;
                    }
                }
            }
            break;
        case 5: // running on the ceiling
            // (98, 0, 85) is towards room entrance
            Math_SmoothScaleMaxF(&this->subCameraEye.x, this->actor.posRot.pos.x + 8.0f + 90.0f, 0.1f,
                                 this->subCameraFollowSpeed * 30.0f);
            Math_SmoothScaleMaxF(&this->subCameraEye.y, player->actor.posRot.pos.y, 0.1f,
                                 this->subCameraFollowSpeed * 30.0f);
            Math_SmoothScaleMaxF(&this->subCameraEye.z, this->actor.posRot.pos.z + 45.0f + 40.0f, 0.1f,
                                 this->subCameraFollowSpeed * 30.0f);
            Math_SmoothScaleMaxF(&this->subCameraFollowSpeed, 1.0f, 1.0f, 0.05f);
            this->subCameraAt.x = this->actor.posRot.pos.x;
            this->subCameraAt.y = this->actor.posRot.pos.y;
            this->subCameraAt.z = this->actor.posRot.pos.z;
            // timer set to 30 by previous state
            if (this->framesUntilNextAction < 0) {
                // @bug ? unreachable, timer is >= 0
                SkelAnime_FrameUpdateMatrix(&this->skelanime);
                Math_SmoothDownscaleMaxF(&this->actor.speedXZ, 1.0f, 2.0f);
            } else {
                BossGoma_UpdateCeilingMovement(this, globalCtx, 0.0f, -7.5f, false);
            }
            if (this->framesUntilNextAction == 0) {
                SkelAnime_ChangeAnim(&this->skelanime, &D_0600193C, 1.0f, 0.0f,
                                     SkelAnime_GetFrameCount(&D_0600193C.genericHeader), 0, -5.0f);
            }
            if (this->framesUntilNextAction == 0) {
                this->actionState = 9;
                this->actor.speedXZ = 0.0f;
                this->actor.velocity.y = 0.0f;
                this->actor.gravity = -2.0f;
                SkelAnime_ChangeAnim(&this->skelanime, &D_0600F70C, 1.0f, 0.0f,
                                     SkelAnime_GetFrameCount(&D_0600F70C.genericHeader), 2, -5.0f);
                player->actor.posRot.pos.x = 0.0f;
                player->actor.posRot.pos.z = -30.0f;
            }
            break;
        case 9: // falling from the ceiling
            Math_SmoothScaleMaxF(&this->subCameraEye.x, this->actor.posRot.pos.x + 8.0f + 90.0f, 0.1f,
                                 this->subCameraFollowSpeed * 30.0f);
            Math_SmoothScaleMaxF(&this->subCameraEye.y, player->actor.posRot.pos.y + 10.0f, 0.1f,
                                 this->subCameraFollowSpeed * 30.0f);
            Math_SmoothScaleMaxF(&this->subCameraEye.z, this->actor.posRot.pos.z + 45.0f + 40.0f, 0.1f,
                                 this->subCameraFollowSpeed * 30.0f);
            this->subCameraAt.x = this->actor.posRot.pos.x;
            this->subCameraAt.y = this->actor.posRot.pos.y;
            this->subCameraAt.z = this->actor.posRot.pos.z;
            SkelAnime_FrameUpdateMatrix(&this->skelanime);
            Math_SmoothScaleMaxS(&this->actor.shape.rot.x, 0, 2, 0xBB8);
            Math_SmoothScaleMaxS(&this->actor.posRot.rot.y, func_8002DA78(&this->actor, &PLAYER->actor), 2, 0x7D0);
            if (this->actor.bgCheckFlags & 1) {
                this->actionState = 130;
                this->actor.velocity.y = 0.0f;
                SkelAnime_ChangeAnim(&this->skelanime, &D_0600F70C, 1.0f, 0.0f,
                                     SkelAnime_GetFrameCount(&D_0600F70C.genericHeader), 2, -2.0f);
                this->currentAnimFrameCount = SkelAnime_GetFrameCount(&D_0600F70C.genericHeader);
                BossGoma_PlayEffectsAndSfx(this, globalCtx, 0, 5);
                this->framesUntilNextAction = 15;
                func_800A9F6C(0.0f, 0xC8, 0x14, 0x14);
            }
            break;
        case 130: // focus Gohma on the ground
            Math_SmoothScaleMaxF(&this->subCameraEye.x, this->actor.posRot.pos.x + 8.0f + 90.0f, 0.1f,
                                 this->subCameraFollowSpeed * 30.0f);
            Math_SmoothScaleMaxF(&this->subCameraEye.y, player->actor.posRot.pos.y + 10.0f, 0.1f,
                                 this->subCameraFollowSpeed * 30.0f);
            Math_SmoothScaleMaxF(&this->subCameraEye.z, this->actor.posRot.pos.z + 45.0f + 40.0f, 0.1f,
                                 this->subCameraFollowSpeed * 30.0f);
            Math_SmoothScaleMaxS(&this->actor.shape.rot.x, 0, 2, 0xBB8);
            Math_SmoothScaleMaxS(&this->actor.posRot.rot.y, func_8002DA78(&this->actor, &PLAYER->actor), 2, 0x7D0);
            SkelAnime_FrameUpdateMatrix(&this->skelanime);
            this->subCameraAt.x = this->actor.posRot.pos.x;
            this->subCameraAt.z = this->actor.posRot.pos.z;
            // timer set to 15 by previous state
            if (this->framesUntilNextAction != 0) {
                f32 s = sinf(this->framesUntilNextAction * 3.1415f * 0.5f);
                this->subCameraAt.y = this->framesUntilNextAction * s * 0.7f + this->actor.posRot.pos.y;
            } else {
                Math_SmoothScaleMaxF(&this->subCameraAt.y, this->actor.posRot2.pos.y, 0.1f, 10.0f);
            }
            if (func_800A56C8(&this->skelanime, 40.0f)) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_CRY1);
                if (!(gSaveContext.eventChkInf[7] & 1)) {
                    TitleCard_InitBossName(globalCtx, &globalCtx->actorCtx.titleCtx, SEGMENTED_TO_VIRTUAL(D_06019BA8),
                                           0xA0, 0xB4, 0x80, 0x28);
                }
                Audio_SetBGM(0x1B);
                gSaveContext.eventChkInf[7] |= 1;
            }
            if (func_800A56C8(&this->skelanime, this->currentAnimFrameCount)) {
                this->actionState = 140;
                SkelAnime_ChangeAnim(&this->skelanime, &D_06000AE8, 1.0f, 0.0f,
                                     SkelAnime_GetFrameCount(&D_06000AE8.genericHeader), 0, -10.0f);
                this->framesUntilNextAction = 20;
            }
            break;
        case 140:
            SkelAnime_FrameUpdateMatrix(&this->skelanime);
            Math_SmoothScaleMaxF(&this->subCameraAt.y, this->actor.posRot2.pos.y, 0.1f, 10.0f);
            // timer set to 20 by previous state
            if (this->framesUntilNextAction == 0) {
                this->framesUntilNextAction = 30;
                this->actionState = 150;
                Gameplay_ChangeCameraStatus(globalCtx, 0, 3);
            }
            break;
        case 150:
            SkelAnime_FrameUpdateMatrix(&this->skelanime);
            Math_SmoothScaleMaxMinF(&this->subCameraEye.x, this->actor.posRot.pos.x + 150.0f, 0.2f, 100.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->subCameraEye.y, this->actor.posRot.pos.y + 20.0f, 0.2f, 100.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->subCameraEye.z, this->actor.posRot.pos.z + 220.0f, 0.2f, 100.0f, 0.1f);
            // timer set to 30 by previous state
            if (this->framesUntilNextAction == 0) {
                cam = Gameplay_GetCamera(globalCtx, 0);
                cam->eye = this->subCameraEye;
                cam->eyeNext = this->subCameraEye;
                cam->at = this->subCameraAt;
                func_800C08AC(globalCtx, this->subCameraId, 0);
                this->subCameraId = 0;
                BossGoma_SetupFloorMain(this);
                this->disableGameplayLogic = false;
                this->patienceTimer = 200;
                func_80064534(globalCtx, &globalCtx->csCtx);
                func_8002DF54(globalCtx, &this->actor, 7);
            }
            break;
    }

    if (this->subCameraId != 0) {
        func_800C04D8(globalCtx, this->subCameraId, &this->subCameraAt, &this->subCameraEye);
    }
}

void BossGoma_Defeated(BossGoma* this, GlobalContext* globalCtx) {
    static Vec3f _vel1 = { 0, 0, 0 };
    static Vec3f _accel1 = { 0, 1, 0 };
    static Color_RGBA8_n _color1 = { 255, 255, 255, 255 };
    static Color_RGBA8_n _color2 = { 0, 100, 255, 255 };
    static Vec3f _vel2 = { 0, 0, 0 };
    static Vec3f _accel2 = { 0, -0.5f, 0 };
    static Vec3f roomCenter = { -150, 0, -350 };

    f32 dx;
    f32 dz;
    s16 j;
    Vec3f vel1 = _vel1;
    Vec3f accel1 = _accel1;
    Color_RGBA8_n color1 = _color1;
    Color_RGBA8_n color2 = _color2;
    Vec3f vel2 = _vel2;
    Vec3f accel2 = _accel2;
    Vec3f pos;
    Camera* camera;
    Player* player = PLAYER;
    Vec3f childPos;
    s16 i;

    SkelAnime_FrameUpdateMatrix(&this->skelanime);
    Math_SmoothScaleMaxS(&this->actor.shape.rot.x, 0, 2, 0xBB8);

    if (func_800A56C8(&this->skelanime, 107.0f)) {
        BossGoma_PlayEffectsAndSfx(this, globalCtx, 0, 8);
        func_800A9F6C(0.0f, 0x96, 0x14, 0x14);
    }

    this->visualState = VISUALSTATE_DEFEATED;
    this->eyeState = EYESTATE_IRIS_NO_FOLLOW_NO_IFRAMES;

    // timer setup to 1200
    if (this->framesUntilNextAction == 1001) {
        for (i = 0; i < 90; i++) {
            if (D_8091B244[i] != 0) {
                this->deadLimbsState[i] = 1;
            }
        }
    }

    if (this->framesUntilNextAction < 1200 && this->framesUntilNextAction > 1100 &&
        this->framesUntilNextAction % 8 == 0) {
        func_800299AC(globalCtx, &this->actor.posRot2.pos);
    }

    if (this->framesUntilNextAction < 1080 && this->actionState < 3) {
        if (this->framesUntilNextAction < 1070) {
            Audio_PlayActorSound2(&this->actor, 0x301C);
        }
        for (i = 0; i < 4; i++) {
            // @bug this 0-indexes into this->defeatedLimbPositions which is initialized with
            // this->defeatedLimbPositions[limb] but limb is 1-indexed in skelanime callbacks, this means effects
            // should spawn at this->defeatedLimbPositions[0] too, which is uninitialized, so map origin?
            j = (s16)(Math_Rand_ZeroOne() * 85);
            if (this->defeatedLimbPositions[j].y < 10000.0f) {
                pos.x = Math_Rand_CenteredFloat(20.0f) + this->defeatedLimbPositions[j].x;
                pos.y = Math_Rand_CenteredFloat(10.0f) + this->defeatedLimbPositions[j].y;
                pos.z = Math_Rand_CenteredFloat(20.0f) + this->defeatedLimbPositions[j].z;
                func_8002836C(globalCtx, &pos, &vel1, &accel1, &color1, &color2, 0x1F4, 0xA, 0xA);
            }
        }
        for (i = 0; i < 15; i++) {
            // @bug same as above
            j = (s16)(Math_Rand_ZeroOne() * 85);
            if (this->defeatedLimbPositions[j].y < 10000.0f) {
                pos.x = Math_Rand_CenteredFloat(20.0f) + this->defeatedLimbPositions[j].x;
                pos.y = Math_Rand_CenteredFloat(10.0f) + this->defeatedLimbPositions[j].y;
                pos.z = Math_Rand_CenteredFloat(20.0f) + this->defeatedLimbPositions[j].z;
                func_80029724(globalCtx, &pos, &vel2, &accel2, 0, (s16)(Math_Rand_ZeroOne() * 5.0f) + 0xA, -1, 0xA, 0);
            }
        }
    }

    switch (this->actionState) {
        case 0:
            this->actionState = 1;
            func_80064520(globalCtx, &globalCtx->csCtx);
            func_8002DF54(globalCtx, &this->actor, 1);
            this->subCameraId = Gameplay_CreateSubCamera(globalCtx);
            Gameplay_ChangeCameraStatus(globalCtx, 0, 3);
            Gameplay_ChangeCameraStatus(globalCtx, this->subCameraId, 7);
            camera = Gameplay_GetCamera(globalCtx, 0);
            this->subCameraEye.x = camera->eye.x;
            this->subCameraEye.y = camera->eye.y;
            this->subCameraEye.z = camera->eye.z;
            this->subCameraAt.x = camera->at.x;
            this->subCameraAt.y = camera->at.y;
            this->subCameraAt.z = camera->at.z;
            dx = this->subCameraEye.x - this->actor.posRot.pos.x;
            dz = this->subCameraEye.z - this->actor.posRot.pos.z;
            this->defeatedCameraEyeDist = sqrtf(SQ(dx) + SQ(dz));
            this->defeatedCameraEyeAngle = Math_atan2f(dx, dz);
            this->timer = 270;
            break;
        case 1:
            dx = Math_Sins(this->actor.shape.rot.y) * 100.0f;
            dz = Math_Coss(this->actor.shape.rot.y) * 100.0f;
            Math_SmoothScaleMaxF(&player->actor.posRot.pos.x, this->actor.posRot.pos.x + dx, 0.5f, 5.0f);
            Math_SmoothScaleMaxF(&player->actor.posRot.pos.z, this->actor.posRot.pos.z + dz, 0.5f, 5.0f);
            if (this->framesUntilNextAction < 1080) {
                this->noBackfaceCulling = true;
                for (i = 0; i < 4; i++) {
                    BossGoma_ClearPixels(sClearPixelTableFirstPass, this->decayingProgress);
                    // @bug this allows this->decayingProgress = 0x100 = 256 which is out of bounds when accessing
                    // sClearPixelTableFirstPass, though timers may prevent this from ever happening?
                    if (this->decayingProgress < 0x100) {
                        this->decayingProgress++;
                    }
                }
            }
            if (this->framesUntilNextAction < 1070 && this->frameCount % 4 == 0 && Math_Rand_ZeroOne() < 0.5f) {
                this->blinkTimer = 3;
            }
            this->defeatedCameraEyeAngle += 0.022f;
            Math_SmoothScaleMaxF(&this->defeatedCameraEyeDist, 150.0f, 0.1f, 5.0f);
            dx = sinf(this->defeatedCameraEyeAngle);
            dx = dx * this->defeatedCameraEyeDist;
            dz = cosf(this->defeatedCameraEyeAngle);
            dz = dz * this->defeatedCameraEyeDist;
            Math_SmoothScaleMaxMinF(&this->subCameraEye.x, this->actor.posRot.pos.x + dx, 0.2f, 50.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->subCameraEye.y, this->actor.posRot.pos.y + 20.0f, 0.2f, 50.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->subCameraEye.z, this->actor.posRot.pos.z + dz, 0.2f, 50.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->subCameraAt.x, this->firstTailLimbWorldPos.x, 0.2f, 50.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->subCameraAt.y, this->actor.posRot2.pos.y, 0.5f, 100.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->subCameraAt.z, this->firstTailLimbWorldPos.z, 0.2f, 50.0f, 0.1f);
            if (this->timer == 80) {
                Audio_SetBGM(0x21);
            }
            if (this->timer == 0) {
                this->actionState = 2;
                Gameplay_ChangeCameraStatus(globalCtx, 0, 3);
                this->timer = 70;
                this->decayingProgress = 0;
                this->subCameraFollowSpeed = 0.0f;
                Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_B_HEART, this->actor.posRot.pos.x,
                            this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0);
            }
            break;
        case 2:
            camera = Gameplay_GetCamera(globalCtx, 0);
            Math_SmoothScaleMaxMinF(&this->subCameraEye.x, camera->eye.x, 0.2f, this->subCameraFollowSpeed * 50.0f,
                                    0.1f);
            Math_SmoothScaleMaxMinF(&this->subCameraEye.y, camera->eye.y, 0.2f, this->subCameraFollowSpeed * 50.0f,
                                    0.1f);
            Math_SmoothScaleMaxMinF(&this->subCameraEye.z, camera->eye.z, 0.2f, this->subCameraFollowSpeed * 50.0f,
                                    0.1f);
            Math_SmoothScaleMaxMinF(&this->subCameraAt.x, camera->at.x, 0.2f, this->subCameraFollowSpeed * 50.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->subCameraAt.y, camera->at.y, 0.2f, this->subCameraFollowSpeed * 50.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->subCameraAt.z, camera->at.z, 0.2f, this->subCameraFollowSpeed * 50.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->subCameraFollowSpeed, 1.0f, 1.0f, 0.02f, 0.0f);
            if (this->timer == 0) {
                childPos = roomCenter;
                this->timer = 30;
                this->actionState = 3;
                for (i = 0; i < 10000; i++) {
                    if ((fabsf(childPos.x - player->actor.posRot.pos.x) < 100.0f &&
                         fabsf(childPos.z - player->actor.posRot.pos.z) < 100.0f) ||
                        (fabsf(childPos.x - this->actor.posRot.pos.x) < 150.0f &&
                         fabsf(childPos.z - this->actor.posRot.pos.z) < 150.0f)) {
                        childPos.x = Math_Rand_CenteredFloat(400.0f) + -150.0f;
                        childPos.z = Math_Rand_CenteredFloat(400.0f) + -350.0f;
                    } else {
                        break;
                    }
                }
                Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DOOR_WARP1, childPos.x,
                                   this->actor.posRot.pos.y, childPos.z, 0, 0, 0, 0);
                Flags_SetClear(globalCtx, globalCtx->roomCtx.curRoom.num);
            }
            for (i = 0; i < 4; i++) {
                BossGoma_ClearPixels(sClearPixelTableSecondPass, this->decayingProgress);
                // @bug same as sClearPixelTableFirstPass
                if (this->decayingProgress < 0x100) {
                    this->decayingProgress++;
                }
            }
            break;
        case 3:
            for (i = 0; i < 4; i++) {
                BossGoma_ClearPixels(sClearPixelTableSecondPass, this->decayingProgress);
                // @bug same as sClearPixelTableFirstPass
                if (this->decayingProgress < 0x100) {
                    this->decayingProgress++;
                }
            }
            if (this->timer == 0) {
                if (Math_SmoothScaleMaxMinF(&this->actor.scale.y, 0, 1.0f, 0.00075f, 0.0f) <= 0.001f) {
                    camera = Gameplay_GetCamera(globalCtx, 0);
                    camera->eye = this->subCameraEye;
                    camera->eyeNext = this->subCameraEye;
                    camera->at = this->subCameraAt;
                    func_800C08AC(globalCtx, this->subCameraId, 0);
                    this->subCameraId = 0;
                    func_80064534(globalCtx, &globalCtx->csCtx);
                    func_8002DF54(globalCtx, &this->actor, 7);
                    Actor_Kill(&this->actor);
                }
                this->actor.scale.x = this->actor.scale.z = this->actor.scale.y;
            }
            break;
    }

    if (this->subCameraId != 0) {
        func_800C04D8(globalCtx, this->subCameraId, &this->subCameraAt, &this->subCameraEye);
    }

    if (this->blinkTimer != 0) {
        this->blinkTimer--;
        globalCtx->envCtx.unk_8C[0][0] += 40;
        globalCtx->envCtx.unk_8C[0][1] += 40;
        globalCtx->envCtx.unk_8C[0][2] += 80;
        globalCtx->envCtx.unk_8C[2][0] += 10;
        globalCtx->envCtx.unk_8C[2][1] += 10;
        globalCtx->envCtx.unk_8C[2][2] += 20;
    } else {
        globalCtx->envCtx.unk_8C[0][0] -= 20;
        globalCtx->envCtx.unk_8C[0][1] -= 20;
        globalCtx->envCtx.unk_8C[0][2] -= 40;
        globalCtx->envCtx.unk_8C[2][0] -= 5;
        globalCtx->envCtx.unk_8C[2][1] -= 5;
        globalCtx->envCtx.unk_8C[2][2] -= 10;
    }

    if (globalCtx->envCtx.unk_8C[0][0] > 200) {
        globalCtx->envCtx.unk_8C[0][0] = 200;
    }
    if (globalCtx->envCtx.unk_8C[0][1] > 200) {
        globalCtx->envCtx.unk_8C[0][1] = 200;
    }
    if (globalCtx->envCtx.unk_8C[0][2] > 200) {
        globalCtx->envCtx.unk_8C[0][2] = 200;
    }
    if (globalCtx->envCtx.unk_8C[2][0] > 70) {
        globalCtx->envCtx.unk_8C[2][0] = 70;
    }
    if (globalCtx->envCtx.unk_8C[2][1] > 70) {
        globalCtx->envCtx.unk_8C[2][1] = 70;
    }
    if (globalCtx->envCtx.unk_8C[2][2] > 140) {
        globalCtx->envCtx.unk_8C[2][2] = 140;
    }

    if (globalCtx->envCtx.unk_8C[0][0] < 0) {
        globalCtx->envCtx.unk_8C[0][0] = 0;
    }
    if (globalCtx->envCtx.unk_8C[0][1] < 0) {
        globalCtx->envCtx.unk_8C[0][1] = 0;
    }
    if (globalCtx->envCtx.unk_8C[0][2] < 0) {
        globalCtx->envCtx.unk_8C[0][2] = 0;
    }
    if (globalCtx->envCtx.unk_8C[2][0] < 0) {
        globalCtx->envCtx.unk_8C[2][0] = 0;
    }
    if (globalCtx->envCtx.unk_8C[2][1] < 0) {
        globalCtx->envCtx.unk_8C[2][1] = 0;
    }
    if (globalCtx->envCtx.unk_8C[2][2] < 0) {
        globalCtx->envCtx.unk_8C[2][2] = 0;
    }
}

void BossGoma_FloorAttackPosture(BossGoma* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelanime);
    Math_SmoothDownscaleMaxF(&this->actor.speedXZ, 0.5f, 2.0f);
    if (this->skelanime.animCurrentFrame >= (19.0f + 1.0f / 3.0f) && this->skelanime.animCurrentFrame <= 30.0f) {
        Math_SmoothScaleMaxS(&this->actor.posRot.rot.y, func_8002DA78(&this->actor, &PLAYER->actor), 3, 0xBB8);
    }
    if (func_800A56C8(&this->skelanime, SkelAnime_GetFrameCount(&D_0600C468.genericHeader))) {
        if (this->actor.xzDistFromLink < 250.0f) {
            BossGoma_SetupFloorPrepareAttack(this);
        } else {
            BossGoma_SetupFloorMain(this);
        }
    }
    this->eyeState = EYESTATE_IRIS_FOLLOW_NO_IFRAMES;
    this->visualState = VISUALSTATE_RED;
}

void BossGoma_FloorPrepareAttack(BossGoma* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelanime);
    // timer setup to 0
    if (this->framesUntilNextAction == 0) {
        BossGoma_SetupFloorAttack(this);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_CRY1);
    }
    this->eyeState = EYESTATE_IRIS_FOLLOW_NO_IFRAMES;
    this->visualState = VISUALSTATE_RED;
}

void BossGoma_FloorAttack(BossGoma* this, GlobalContext* globalCtx) {
    s16 i;

    this->actor.flags |= 0x1000000;
    SkelAnime_FrameUpdateMatrix(&this->skelanime);

    switch (this->actionState) {
        case 0:
            for (i = 0; i < this->collider.count; i++) {
                if (this->collider.list[i].body.toucherFlags & 2) {
                    this->framesUntilNextAction = 10;
                    break;
                }
            }
            if (func_800A56C8(&this->skelanime, 10.0f)) {
                BossGoma_PlayEffectsAndSfx(this, globalCtx, 3, 5);
                func_80033E88(&this->actor, globalCtx, 5, 15);
            }
            if (func_800A56C8(&this->skelanime, SkelAnime_GetFrameCount(&D_06004318.genericHeader))) {
                this->actionState = 1;
                SkelAnime_ChangeAnim(&this->skelanime, &D_06004A20, 1.0f, 0.0f,
                                     SkelAnime_GetFrameCount(&D_06004A20.genericHeader), 0, -1.0f);
                // timer setup to 0 (or 10 when hit(s?), see above)
                if (this->framesUntilNextAction == 0) {
                    this->timer = (s16)(Math_Rand_ZeroOne() * 30.0f) + 30;
                }
            }
            break;
        case 1:
            if (func_800A56C8(&this->skelanime, 3.0f)) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_UNARI2);
            }
            // timer set to 30-60 in previous state, or kept previous value...
            // this is probably meant to add delay if gohma did hit the player
            if (this->timer == 0) {
                this->actionState = 2;
                SkelAnime_ChangeAnim(&this->skelanime, &D_06005330, 1.0f, 0.0f,
                                     SkelAnime_GetFrameCount(&D_06005330.genericHeader), 2, -5.0f);
            }
            break;
        case 2:
            if (func_800A56C8(&this->skelanime, SkelAnime_GetFrameCount(&D_06005330.genericHeader))) {
                BossGoma_SetupFloorIdle(this);
            }
            break;
    }

    this->eyeState = EYESTATE_IRIS_FOLLOW_NO_IFRAMES;
    this->visualState = VISUALSTATE_RED;
}

void BossGoma_FloorDamaged(BossGoma* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelanime);
    if (func_800A56C8(&this->skelanime, SkelAnime_GetFrameCount(&D_06006E60.genericHeader))) {
        BossGoma_SetupFloorStunned(this);
        this->patienceTimer = 0;
    }
    this->eyeState = EYESTATE_IRIS_NO_FOLLOW_NO_IFRAMES;
    Math_SmoothScaleMaxF(&this->eyeIrisScaleX, 0.4f, 0.5f, 0.2f);
    this->visualState = VISUALSTATE_HIT;
}

void BossGoma_FloorLandStruckDown(BossGoma* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelanime);
    if (func_800A56C8(&this->skelanime, this->currentAnimFrameCount)) {
        BossGoma_SetupFloorStunned(this);
        this->sfxFaintTimer = 92;
        this->patienceTimer = 0;
        this->framesUntilNextAction = 150;
    }
    func_80033260(globalCtx, &this->actor, &this->actor.posRot.pos, 55.0f, 4, 8.0f, 500, 10, 1);
}

void BossGoma_FloorLand(BossGoma* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelanime);
    if (func_800A56C8(&this->skelanime, this->currentAnimFrameCount)) {
        BossGoma_SetupFloorIdle(this);
        this->patienceTimer = 200;
    }
}

void BossGoma_FloorStunned(BossGoma* this, GlobalContext* globalCtx) {
    if (this->sfxFaintTimer <= 90) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_FAINT - 0x800);
    }
    SkelAnime_FrameUpdateMatrix(&this->skelanime);
    /* timer setup values
    from BossGoma_UpdateHit: 4
    from BossGoma_FloorLandStruckDown: keep any
    from BossGoma_FloorDamaged: keep any
    */
    if (this->timer == 1) {
        // effects
        func_80033260(globalCtx, &this->actor, &this->actor.posRot.pos, 55.0f, 4, 8.0f, 500, 10, 1);
    }
    Math_SmoothDownscaleMaxF(&this->actor.speedXZ, 0.5f, 1.0f);
    /*
    timer setup values
    from BossGoma_UpdateHit: 40 or 90
    from BossGoma_FloorLandStruckDown: 150
    from BossGoma_FloorDamaged: keep any value
        which is fine because BossGoma_SetupFloorDamaged is only called (from BossGoma_UpdateHit) when
        BossGoma_FloorStunned is the current action function
        (BossGoma_FloorDamaged can be seen as a "temporary" action)
    */
    if (this->framesUntilNextAction == 0) {
        BossGoma_SetupFloorMain(this);
        if (this->patienceTimer == 0 && this->actor.xzDistFromLink < 130.0f) {
            this->timer = 20;
        }
    }
    Math_SmoothScaleMaxS(&this->actor.shape.rot.x, 0, 2, 0xBB8);
    this->eyeState = EYESTATE_IRIS_NO_FOLLOW_NO_IFRAMES;
    Math_SmoothScaleMaxF(&this->eyeIrisScaleX, 0.4f, 0.5f, 0.2f);
    this->visualState = VISUALSTATE_STUNNED;
}

void BossGoma_FallJump(BossGoma* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelanime);
    Math_SmoothScaleMaxS(&this->actor.shape.rot.x, 0, 2, 0xBB8);
    Math_SmoothScaleMaxS(&this->actor.posRot.rot.y, func_8002DA78(&this->actor, &PLAYER->actor), 2, 0x7D0);
    if (this->actor.bgCheckFlags & 1) {
        BossGoma_SetupFloorLand(this);
        this->actor.velocity.y = 0.0f;
        BossGoma_PlayEffectsAndSfx(this, globalCtx, 0, 8);
        func_80033E88(&this->actor, globalCtx, 5, 0xF);
    }
}

void BossGoma_FallStruckDown(BossGoma* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelanime);
    Math_SmoothScaleMaxS(&this->actor.shape.rot.x, 0, 2, 0xBB8);
    Math_SmoothScaleMaxS(&this->actor.posRot.rot.y, func_8002DA78(&this->actor, &PLAYER->actor), 3, 0x7D0);
    if (this->actor.bgCheckFlags & 1) {
        BossGoma_SetupFloorLandStruckDown(this);
        this->actor.velocity.y = 0.0f;
        BossGoma_PlayEffectsAndSfx(this, globalCtx, 0, 8);
        func_80033E88(&this->actor, globalCtx, 0xA, 0xF);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_DAM1);
    }
}

void BossGoma_CeilingSpawnGohmas(BossGoma* this, GlobalContext* globalCtx) {
    s16 i;

    SkelAnime_FrameUpdateMatrix(&this->skelanime);

    if (this->frameCount % 16 == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_UNARI);
    }

    Math_SmoothDownscaleMaxF(&this->actor.speedXZ, 0.5f, 2.0f);
    this->spawnGohmasActionTimer++;

    switch (this->spawnGohmasActionTimer) {
        case 24:
            // limb 14, the tail limb closest to the body
            this->tailLimbsScaleTimers[3] = 10;
            break;
        case 32:
            // limb 13
            this->tailLimbsScaleTimers[2] = 10;
            break;
        case 40:
            // limb 12
            this->tailLimbsScaleTimers[1] = 10;
            break;
        case 48:
            // limb 11, the furthest from the body
            this->tailLimbsScaleTimers[0] = 10;
            break;
    }

    if (this->tailLimbsScaleTimers[0] == 2) {
        for (i = 0; i < ARRAY_COUNT(this->childrenGohmaState); i++) {
            if (this->childrenGohmaState[i] == 0) {
                BossGoma_SpawnChildGohma(this, globalCtx, i);
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

void BossGoma_CeilingPrepareSpawnGohmas(BossGoma* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelanime);
    // timer setup to 70
    if (this->framesUntilNextAction == 0) {
        BossGoma_SetupCeilingSpawnGohmas(this);
    }
    this->eyeState = EYESTATE_IRIS_NO_FOLLOW_NO_IFRAMES;
    this->visualState = VISUALSTATE_RED;
}

void BossGoma_FloorIdle(BossGoma* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelanime);
    Math_SmoothDownscaleMaxF(&this->actor.speedXZ, 0.5f, 2.0f);
    Math_SmoothScaleMaxS(&this->actor.shape.rot.x, 0, 2, 0xBB8);
    // timer setup to 20-30
    if (this->framesUntilNextAction == 0) {
        BossGoma_SetupFloorMain(this);
    }
}

void BossGoma_CeilingIdle(BossGoma* this, GlobalContext* globalCtx) {
    s16 i;

    SkelAnime_FrameUpdateMatrix(&this->skelanime);
    Math_SmoothDownscaleMaxF(&this->actor.speedXZ, 0.5f, 2.0f);

    // timer setup to 20-30
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

// with the "walk cautiously" animation
void BossGoma_FloorMain(BossGoma* this, GlobalContext* globalCtx) {
    s16 rot;

    SkelAnime_FrameUpdateMatrix(&this->skelanime);

    if (func_800A56C8(&this->skelanime, 1.0f)) {
        this->doNotMoveThisFrame = true;
    } else if (func_800A56C8(&this->skelanime, 30.0f)) {
        this->doNotMoveThisFrame = true;
    } else if (func_800A56C8(&this->skelanime, 15.0f)) {
        this->doNotMoveThisFrame = true;
    } else if (func_800A56C8(&this->skelanime, 16.0f)) {
        this->doNotMoveThisFrame = true;
    }

    if (func_800A56C8(&this->skelanime, 15.0f)) {
        BossGoma_PlayEffectsAndSfx(this, globalCtx, 1, 3);
    } else if (func_800A56C8(&this->skelanime, 30.0f)) {
        BossGoma_PlayEffectsAndSfx(this, globalCtx, 2, 3);
    }

    if (this->frameCount % 64 == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_CRY2);
    }

    if (!this->doNotMoveThisFrame) {
        rot = func_8002DA78(&this->actor, &PLAYER->actor);
        /*
        timer setup values
        BossGoma_Encounter: 200
        BossGoma_FloorDamaged: 0
        BossGoma_FloorLandStruckDown: 0
        BossGoma_FloorLand: 200
        */
        if (this->patienceTimer != 0) {
            this->patienceTimer--;
            if (this->actor.xzDistFromLink < 150.0f) {
                BossGoma_SetupFloorAttackPosture(this);
            }
            // move towards the player
            Math_SmoothScaleMaxF(&this->actor.speedXZ, 3.3333333f, 0.5f, 2.0f);
            Math_SmoothScaleMaxS(&this->actor.posRot.rot.y, rot, 5, 0x3E8);
        } else {
            /*
            timer setup values
            BossGoma_Encounter: keep any (most likely 0)
            BossGoma_FloorAttackPosture: keep any (but always setup from this action, BossGoma_FloorMain,
                without patienceTimer having been modified before
                "looping" back, so unreachable case)
            BossGoma_FloorStunned: keep any, or 20 if out of patience and player is close
            BossGoma_FloorIdle: keep any
                from BossGoma_FloorAttack: 0 (multi-usage timer happens to be 0 at this point)
                from BossGoma_FloorLand: keep any, but irrelevant since patience is refilled (200)
                from BossGoma_FloorMain: keep any (unreachable case since that path assumes patience !=
            0)
            */
            if (this->timer != 0) {
                // move away from the player, walking backwards
                Math_SmoothScaleMaxF(&this->actor.speedXZ, -10.0f, 0.5f, 2.0f);
                this->skelanime.animPlaybackSpeed = -3.0f;
                if (this->timer == 1) {
                    this->actor.speedXZ = 0.0f;
                }
            } else {
                // move away from the player, walking forwards
                Math_SmoothScaleMaxF(&this->actor.speedXZ, 6.6666665f, 0.5f, 2.0f);
                this->skelanime.animPlaybackSpeed = 2.0f;
                rot += 0x8000;
            }
            Math_SmoothScaleMaxS(&this->actor.posRot.rot.y, rot, 3, 0x9C4);
        }
    }

    if (this->actor.bgCheckFlags & 1) {
        this->actor.velocity.y = 0.0f;
    }

    if (this->actor.bgCheckFlags & 8) {
        BossGoma_SetupWallClimb(this);
    }

    // framesUntilNextAction setup to 70-110
    if (this->framesUntilNextAction == 0 && this->patienceTimer != 0) {
        BossGoma_SetupFloorIdle(this);
    }
}

void BossGoma_WallClimb(BossGoma* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelanime);
    if (this->frameCount % 8 == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_CLIM);
    }
    Math_SmoothScaleMaxF(&this->actor.velocity.y, 5.0f, 0.5f, 2.0f);
    Math_SmoothScaleMaxS(&this->actor.shape.rot.x, -0x4000, 2, 0x7D0);
    Math_SmoothScaleMaxS(&this->actor.posRot.rot.y, this->actor.wallPolyRot + 0x8000, 2, 0x5DC);
    // -320 is a bit below boss room ceiling
    if (this->actor.posRot.pos.y > -320.0f) {
        BossGoma_SetupCeilingMoveToCenter(this);
        // allow new spawns
        this->childrenGohmaState[0] = this->childrenGohmaState[1] = this->childrenGohmaState[2] = 0;
    }
}

void BossGoma_CeilingMoveToCenter(BossGoma* this, GlobalContext* globalCtx) {
    s16 angle;
    s16 absDiff;

    BossGoma_UpdateCeilingMovement(this, globalCtx, 0.0f, -5.0f, true);
    if (this->frameCount % 64 == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_CRY2);
    }
    Math_SmoothScaleMaxS(&this->actor.shape.rot.x, -0x8000, 3, 0x3E8);

    // avoid walking into a wall?
    if (this->actor.bgCheckFlags & 8) {
        angle = this->actor.shape.rot.y + 0x8000;
        if (angle < this->actor.wallPolyRot) {
            absDiff = this->actor.wallPolyRot - angle;
            angle = angle + absDiff / 2;
        } else {
            absDiff = angle - this->actor.wallPolyRot;
            angle = this->actor.wallPolyRot + absDiff / 2;
        }
        // angle ~ (this->actor.wallPolyRot + this->actor.shape.rot.y + 0x8000) / 2
        this->actor.posRot.pos.z +=
            Math_Coss(angle) * (5.0f + Math_Rand_ZeroOne() * 5.0f) + Math_Rand_CenteredFloat(2.0f);
        this->actor.posRot.pos.x +=
            Math_Sins(angle) * (5.0f + Math_Rand_ZeroOne() * 5.0f) + Math_Rand_CenteredFloat(2.0f);
    }

    // timer setup to 30-60
    if (this->framesUntilNextAction == 0 && fabsf(-150.0f - this->actor.posRot.pos.x) < 100.0f &&
        fabsf(-350.0f - this->actor.posRot.pos.z) < 100.0f) {
        BossGoma_SetupCeilingIdle(this);
    }
}

void BossGoma_UpdateEye(BossGoma* this, GlobalContext* globalCtx) {
    s16 targetEyeIrisRotX;
    s16 targetEyeIrisRotY;
    Player* player;

    if (!this->disableGameplayLogic) {
        player = PLAYER;
        if (this->eyeState == EYESTATE_IRIS_FOLLOW_BONUS_IFRAMES) {
            // player + 0xA73 seems to be related to "throwing something"
            if (player->unk_A73 != 0) {
                player->unk_A73 = 0;
                this->eyeClosedTimer = 12;
            }
            if (this->frameCount % 16 == 0 && Math_Rand_ZeroOne() < 0.3f) {
                this->eyeClosedTimer = 7;
            }
        }
        if (this->childrenGohmaState[0] > 0 || this->childrenGohmaState[1] > 0 || this->childrenGohmaState[2] > 0) {
            this->eyeClosedTimer = 7;
        }
        if (this->eyeClosedTimer != 0) {
            this->eyeClosedTimer--;
            // close eye
            Math_SmoothScaleMaxS(&this->eyeLidBottomRotX, -0xA98, 1, 0x7D0);
            Math_SmoothScaleMaxS(&this->eyeLidTopRotX, 0x1600, 1, 0x7D0);
        } else {
            // open eye
            Math_SmoothScaleMaxS(&this->eyeLidBottomRotX, 0, 1, 0x7D0);
            Math_SmoothScaleMaxS(&this->eyeLidTopRotX, 0, 1, 0x7D0);
        }
        if (this->eyeState != EYESTATE_IRIS_NO_FOLLOW_NO_IFRAMES) {
            targetEyeIrisRotY = func_8002DA78(&this->actor, &PLAYER->actor) - this->actor.shape.rot.y;
            targetEyeIrisRotX = func_8002DAE0(&this->actor, &PLAYER->actor) - this->actor.shape.rot.x;
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
            Math_SmoothScaleMaxS(&this->eyeIrisRotY, targetEyeIrisRotY, 3, 0x7D0);
            Math_SmoothScaleMaxS(&this->eyeIrisRotX, targetEyeIrisRotX, 3, 0x7D0);
        } else {
            Math_SmoothScaleMaxS(&this->eyeIrisRotY, 0, 3, 0x3E8);
            Math_SmoothScaleMaxS(&this->eyeIrisRotX, 0, 3, 0x3E8);
        }
        Math_SmoothScaleMaxF(&this->eyeIrisScaleX, 1.0f, 0.2f, 0.07f);
        Math_SmoothScaleMaxF(&this->eyeIrisScaleY, 1.0f, 0.2f, 0.07f);
    }
}

void BossGoma_UpdateTailLimbsScale(BossGoma* this) {
    s16 i;

    if (this->frameCount % 128 == 0) {
        this->unusedTimer++;
        if (this->unusedTimer >= 3) {
            this->unusedTimer = 0;
        }
    }

    for (i = 0; i < ARRAY_COUNT(this->tailLimbsScaleTimers); i++) {
        if (this->tailLimbsScaleTimers[i] != 0) {
            this->tailLimbsScaleTimers[i]--;
            Math_SmoothScaleMaxF(&this->tailLimbsScale[i], 1.5f, 0.2f, 0.1f);
        } else {
            Math_SmoothScaleMaxF(&this->tailLimbsScale[i], 1.0f, 0.2f, 0.1f);
        }
    }
}

void BossGoma_UpdateHit(BossGoma* this, GlobalContext* globalCtx) {
    ColliderBody* acHitItem;
    s32 damage;

    if (this->invincibilityFrames != 0) {
        this->invincibilityFrames--;
    } else {
        acHitItem = this->collider.list[0].body.acHitItem;
        if (this->eyeClosedTimer == 0 && this->actionFunc != BossGoma_CeilingSpawnGohmas &&
            (this->collider.list->body.bumperFlags & 2)) {
            this->collider.list->body.bumperFlags &= ~2;
            if (this->actionFunc == BossGoma_CeilingMoveToCenter || this->actionFunc == BossGoma_CeilingIdle ||
                this->actionFunc == BossGoma_CeilingPrepareSpawnGohmas) {
                BossGoma_SetupFallStruckDown(this);
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_DAM2);
            } else if (this->actionFunc == BossGoma_FloorStunned &&
                       (damage = func_800635D0(acHitItem->toucher.flags)) != 0) {
                this->actor.colChkInfo.health -= damage;
                if ((s8)this->actor.colChkInfo.health > 0) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_DAM1);
                    BossGoma_SetupFloorDamaged(this);
                    func_800299AC(globalCtx, &this->actor.posRot2.pos);
                } else {
                    BossGoma_SetupDefeated(this, globalCtx);
                    func_80032C7C(globalCtx, &this->actor);
                }
                this->invincibilityFrames = 10;
            } else if (this->actionFunc != BossGoma_FloorStunned && this->patienceTimer != 0 &&
                       (acHitItem->toucher.flags & 5) != 0) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_DAM2);
                func_800F8D04(0x380E);
                this->invincibilityFrames = 10;
                BossGoma_SetupFloorStunned(this);
                this->sfxFaintTimer = 100;
                if (acHitItem->toucher.flags & 1) {
                    this->framesUntilNextAction = 40;
                } else {
                    this->framesUntilNextAction = 90;
                }
                this->timer = 4;
                func_80033E88(&this->actor, globalCtx, 4, 0xC);
            }
        }
    }
}

void BossGoma_UpdateMainEnvColor(BossGoma* this) {
    static f32 D_8091B31C[][3] = { { 255, 17, 0 },  { 0, 255, 170 }, { 50, 50, 50 },
                                   { 0, 255, 170 }, { 0, 255, 170 }, { 0, 255, 170 } };
    static f32 D_8091B364[][3] = { { 255, 17, 0 },  { 0, 255, 170 }, { 50, 50, 50 },
                                   { 0, 255, 170 }, { 0, 0, 255 },   { 255, 17, 0 } };

    if (this->visualState == VISUALSTATE_DEFAULT && this->frameCount & 0x10) {
        Math_SmoothScaleMaxF(&this->mainEnvColor[0], 50.0f, 0.5f, 20.0f);
        Math_SmoothScaleMaxF(&this->mainEnvColor[1], 50.0f, 0.5f, 20.0f);
        Math_SmoothScaleMaxF(&this->mainEnvColor[2], 50.0f, 0.5f, 20.0f);
    } else if (this->invincibilityFrames != 0) {
        if (this->invincibilityFrames & 2) {
            this->mainEnvColor[0] = D_8091B364[this->visualState][0];
            this->mainEnvColor[1] = D_8091B364[this->visualState][1];
            this->mainEnvColor[2] = D_8091B364[this->visualState][2];
        } else {
            this->mainEnvColor[0] = D_8091B31C[this->visualState][0];
            this->mainEnvColor[1] = D_8091B31C[this->visualState][1];
            this->mainEnvColor[2] = D_8091B31C[this->visualState][2];
        }
    } else {
        Math_SmoothScaleMaxF(&this->mainEnvColor[0], D_8091B31C[this->visualState][0], 0.5f, 20.0f);
        Math_SmoothScaleMaxF(&this->mainEnvColor[1], D_8091B31C[this->visualState][1], 0.5f, 20.0f);
        Math_SmoothScaleMaxF(&this->mainEnvColor[2], D_8091B31C[this->visualState][2], 0.5f, 20.0f);
    }
}

void BossGoma_UpdateEyeEnvColor(BossGoma* this) {
    static f32 D_8091B3AC[][3] = { { 255, 17, 0 },  { 255, 255, 255 }, { 50, 50, 50 },
                                   { 0, 255, 170 }, { 0, 255, 170 },   { 0, 255, 170 } };

    Math_SmoothScaleMaxF(&this->eyeEnvColor[0], D_8091B3AC[this->visualState][0], 0.5f, 20.0f);
    Math_SmoothScaleMaxF(&this->eyeEnvColor[1], D_8091B3AC[this->visualState][1], 0.5f, 20.0f);
    Math_SmoothScaleMaxF(&this->eyeEnvColor[2], D_8091B3AC[this->visualState][2], 0.5f, 20.0f);
}

void BossGoma_Update(Actor* thisx, GlobalContext* globalCtx) {
    BossGoma* this = THIS;
    s32 pad;

    this->visualState = VISUALSTATE_DEFAULT;
    this->frameCount++;
    DECR(this->framesUntilNextAction);
    DECR(this->timer);
    DECR(this->sfxFaintTimer);
    this->eyeState = EYESTATE_IRIS_FOLLOW_BONUS_IFRAMES;
    this->actionFunc(this, globalCtx);
    this->actor.shape.rot.y = this->actor.posRot.rot.y;

    if (!this->doNotMoveThisFrame) {
        Actor_MoveForward(&this->actor);
    } else {
        this->doNotMoveThisFrame = false;
    }

    if (this->actor.posRot.pos.y < -400.0f) {
        func_8002E4B4(globalCtx, &this->actor, 30.0f, 30.0f, 80.0f, 5);
    } else {
        func_8002E4B4(globalCtx, &this->actor, 0.0f, 30.0f, 80.0f, 1);
    }

    BossGoma_UpdateEye(this, globalCtx);
    BossGoma_UpdateMainEnvColor(this);
    BossGoma_UpdateEyeEnvColor(this);
    BossGoma_UpdateTailLimbsScale(this);

    if (!this->disableGameplayLogic) {
        BossGoma_UpdateHit(this, globalCtx);
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        if (this->actionFunc != BossGoma_FloorStunned && this->actionFunc != BossGoma_FloorDamaged &&
            (this->actionFunc != BossGoma_FloorMain || this->timer == 0)) {
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }
    }
}

s32 BossGoma_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                              Actor* thisx) {
    BossGoma* this = THIS;
    s32 doNotDrawLimb = false;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_goma.c", 4685);

    gDPPipeSync(oGfxCtx->polyOpa.p++);
    gDPSetEnvColor(oGfxCtx->polyOpa.p++, (s16)this->mainEnvColor[0], (s16)this->mainEnvColor[1],
                   (s16)this->mainEnvColor[2], 255);

    if (this->deadLimbsState[limbIndex] >= 2) {
        *dList = NULL;
    }

    switch (limbIndex) {
        case 5: // eye (lens)
            if (this->eyeState == EYESTATE_IRIS_FOLLOW_BONUS_IFRAMES && this->eyeLidBottomRotX < -0xA8C) {
                *dList = NULL;
            } else if (this->invincibilityFrames != 0) {
                gDPSetEnvColor(oGfxCtx->polyOpa.p++, (s16)(Math_Rand_ZeroOne() * 255.0f),
                               (s16)(Math_Rand_ZeroOne() * 255.0f), (s16)(Math_Rand_ZeroOne() * 255.0f), 63);
            } else {
                gDPSetEnvColor(oGfxCtx->polyOpa.p++, (s16)this->eyeEnvColor[0], (s16)this->eyeEnvColor[1],
                               (s16)this->eyeEnvColor[2], 63);
            }
            break;
        case 32: // eyelid (bottom)
            rot->x += this->eyeLidBottomRotX;
            break;
        case 35: // eyelid (top)
            rot->x += this->eyeLidTopRotX;
            break;
        case 38: // eye (iris) (parent of 39)
            rot->x += this->eyeIrisRotX;
            rot->y += this->eyeIrisRotY;
            break;
        case 39: // eye (iris)
            if (this->eyeState == EYESTATE_IRIS_FOLLOW_BONUS_IFRAMES && this->eyeLidBottomRotX < -0xA8C) {
                *dList = NULL;
            } else {
                if (this->visualState == VISUALSTATE_DEFEATED) {
                    gDPSetEnvColor(oGfxCtx->polyOpa.p++, 50, 50, 50, 255);
                } else {
                    gDPSetEnvColor(oGfxCtx->polyOpa.p++, 255, 255, 255, 255);
                }
                Matrix_JointPosition(pos, rot);
                if (*dList != NULL) {
                    Matrix_Push();
                    Matrix_Scale(this->eyeIrisScaleX, this->eyeIrisScaleY, 1.0f, MTXMODE_APPLY);
                    gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_goma.c", 4815),
                              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                    gSPDisplayList(oGfxCtx->polyOpa.p++, *dList);
                    Matrix_Pull();
                }
                doNotDrawLimb = true;
            }
            break;
        // tail parts
        case 11:
        case 12:
        case 13:
        case 14:
            Matrix_JointPosition(pos, rot);
            if (*dList != NULL) {
                Matrix_Push();
                Matrix_Scale(this->tailLimbsScale[limbIndex - 11], this->tailLimbsScale[limbIndex - 11],
                             this->tailLimbsScale[limbIndex - 11], MTXMODE_APPLY);
                gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_goma.c", 4836),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(oGfxCtx->polyOpa.p++, *dList);
                Matrix_Pull();
            }
            doNotDrawLimb = true;
            break;
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_goma.c", 4858);

    return doNotDrawLimb;
}

void BossGoma_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx) {
    static Vec3f tailZero = { 0, 0, 0 };
    static Vec3f clawBackLocalPos = { 0, 0, 0 };
    static Vec3f focusEyeLocalPos = { 0, 300, 2650 }; // in the center of the surface of the lens
    static Vec3f zero = { 0, 0, 0 };

    Vec3f childPos;
    Vec3s childRot;
    EnGoma* childActor;
    BossGoma* this = THIS;
    s32 pad;
    MtxF mtx;

    if (limbIndex == 11) { // tail end/last part
        Matrix_MultVec3f(&tailZero, &this->lastTailLimbWorldPos);
    } else if (limbIndex == 14) { // tail start/first part
        Matrix_MultVec3f(&tailZero, &this->firstTailLimbWorldPos);
    } else if (limbIndex == 5) { // eye (lens)
        Matrix_MultVec3f(&focusEyeLocalPos, &this->actor.posRot2.pos);
    } else if (limbIndex == 21) { // back of right claw/hand
        Matrix_MultVec3f(&clawBackLocalPos, &this->rightHandBackLimbWorldPos);
    } else if (limbIndex == 73) { // back of left claw/hand
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
        this->deadLimbsState[limbIndex] = 2;
        Matrix_MultVec3f(&zero, &childPos);
        Matrix_Get(&mtx);
        func_800D20CC(&mtx, &childRot, 0);
        childActor = (EnGoma*)Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_GOMA,
                                                 childPos.x, childPos.y, childPos.z, childRot.x, childRot.y, childRot.z,
                                                 D_8091B244[limbIndex] + 0x64);
        if (childActor != NULL) {
            childActor->unk_308 = *dList;
            childActor->actor.objBankIndex = this->actor.objBankIndex;
        }
    }
    func_800628A4(limbIndex, &this->collider);
}

Gfx* BossGoma_EmptyDlist(GraphicsContext* gfxCtx) {
    Gfx* dList;
    Gfx* dListHead;

    dList = Graph_Alloc(gfxCtx, 1 * sizeof(Gfx));
    dListHead = dList;

    gSPEndDisplayList(dList++);

    return dListHead;
}

Gfx* BossGoma_NoBackfaceCullingDlist(GraphicsContext* gfxCtx) {
    Gfx* dList;
    Gfx* dListHead;

    dList = Graph_Alloc(gfxCtx, 4 * sizeof(Gfx));
    dListHead = dList;

    gDPPipeSync(dList++);
    // CVG_X_ALPHA | ALPHA_CVG_SEL may or may not help achieve the decaying textures effect
    gDPSetRenderMode(dList++, G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2);
    gSPClearGeometryMode(dList++, G_CULL_BACK);
    gSPEndDisplayList(dList++);

    return dListHead;
}

void BossGoma_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BossGoma* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_goma.c", 4991);

    func_80093D18(globalCtx->state.gfxCtx);
    Matrix_Translate(0.0f, -4000.0f, 0.0f, MTXMODE_APPLY);

    if (this->noBackfaceCulling) {
        gSPSegment(oGfxCtx->polyOpa.p++, 0x08, BossGoma_NoBackfaceCullingDlist(globalCtx->state.gfxCtx));
    } else {
        gSPSegment(oGfxCtx->polyOpa.p++, 0x08, BossGoma_EmptyDlist(globalCtx->state.gfxCtx));
    }

    SkelAnime_Draw(globalCtx, this->skelanime.skeleton, this->skelanime.limbDrawTbl, BossGoma_OverrideLimbDraw,
                   BossGoma_PostLimbDraw, &this->actor);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_goma.c", 5012);
}

void BossGoma_SpawnChildGohma(BossGoma* this, GlobalContext* globalCtx, s16 i) {
    Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_GOMA, this->lastTailLimbWorldPos.x,
                       this->lastTailLimbWorldPos.y - 50.0f, this->lastTailLimbWorldPos.z, 0, i * 0x5555, 0, i);
    // @bug (maybe) if child gohma fails to spawn this softlocks due to the lack of a != NULL check?
    this->childrenGohmaState[i] = 1;
}
