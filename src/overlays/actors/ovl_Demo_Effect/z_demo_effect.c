#include "z_demo_effect.h"
#include "terminal.h"
#include "versions.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"
#include "assets/objects/object_efc_crystal_light/object_efc_crystal_light.h"
#include "assets/objects/object_efc_fire_ball/object_efc_fire_ball.h"
#include "assets/objects/object_efc_lgt_shower/object_efc_lgt_shower.h"
#include "assets/objects/object_god_lgt/object_god_lgt.h"
#include "assets/objects/object_light_ring/object_light_ring.h"
#include "assets/objects/object_triforce_spot/object_triforce_spot.h"
#include "assets/objects/object_efc_tw/object_efc_tw.h"
#include "assets/objects/object_gi_jewel/object_gi_jewel.h"

#define FLAGS (ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_DRAW_CULLING_DISABLED)

void DemoEffect_Init(Actor* thisx, PlayState* play2);
void DemoEffect_Destroy(Actor* thisx, PlayState* play);
void DemoEffect_Update(Actor* thisx, PlayState* play);

void DemoEffect_DrawCrystalLight(Actor* thisx, PlayState* play);
void DemoEffect_DrawFireBall(Actor* thisx, PlayState* play);
void DemoEffect_DrawBlueOrb(Actor* thisx, PlayState* play);
void DemoEffect_DrawLgtShower(Actor* thisx, PlayState* play);
void DemoEffect_DrawGodLgt(Actor* thisx, PlayState* play);
void DemoEffect_DrawLightRing(Actor* thisx, PlayState* play2);
void DemoEffect_DrawTriforceSpot(Actor* thisx, PlayState* play);
void DemoEffect_DrawGetItem(Actor* thisx, PlayState* play);
void DemoEffect_DrawLightEffect(Actor* thisx, PlayState* play);
void DemoEffect_DrawTimeWarp(Actor* thisx, PlayState* play);
void DemoEffect_DrawJewel(Actor* thisx, PlayState* play2);

void DemoEffect_WaitForObject(DemoEffect* this, PlayState* play);
void DemoEffect_InitTimeWarp(DemoEffect* this, PlayState* play);
void DemoEffect_InitTimeWarpTimeblock(DemoEffect* this, PlayState* play);
void DemoEffect_InitCreationFireball(DemoEffect* this, PlayState* play);
void DemoEffect_InitJewel(PlayState* play, DemoEffect* this);
void DemoEffect_InitJewelColor(DemoEffect* this);

void DemoEffect_UpdateCrystalLight(DemoEffect* this, PlayState* play);
void DemoEffect_UpdatePositionToParent(DemoEffect* this, PlayState* play);
void DemoEffect_UpdateBlueOrbGrow(DemoEffect* this, PlayState* play);
void DemoEffect_UpdateBlueOrbShrink(DemoEffect* this, PlayState* play);
void DemoEffect_UpdateLgtShower(DemoEffect* this, PlayState* play);
void DemoEffect_UpdateGodLgtDin(DemoEffect* this, PlayState* play);
void DemoEffect_UpdateGodLgtNayru(DemoEffect* this, PlayState* play);
void DemoEffect_UpdateGodLgtFarore(DemoEffect* this, PlayState* play);
void DemoEffect_UpdateLightRingExpanding(DemoEffect* this, PlayState* play);
void DemoEffect_UpdateTriforceSpot(DemoEffect* this, PlayState* play);
void DemoEffect_UpdateGetItem(DemoEffect* this, PlayState* play);
void DemoEffect_UpdateLightRingShrinking(DemoEffect* this, PlayState* play);
void DemoEffect_UpdateLightRingTriforce(DemoEffect* this, PlayState* play);
void DemoEffect_UpdateLightEffect(DemoEffect* this, PlayState* play);
void DemoEffect_UpdateJewelChild(DemoEffect* this, PlayState* play);
void DemoEffect_UpdateJewelAdult(DemoEffect* this, PlayState* play);
void DemoEffect_UpdateDust(DemoEffect* this, PlayState* play);
void DemoEffect_UpdateCreationFireball(DemoEffect* this, PlayState* play);
void DemoEffect_UpdateTimeWarpReturnFromChamberOfSages(DemoEffect* this, PlayState* play);
void DemoEffect_UpdateTimeWarpPullMasterSword(DemoEffect* this, PlayState* play);
void DemoEffect_UpdateTimeWarpTimeblock(DemoEffect* this, PlayState* play);

s32 DemoEffect_CheckForCue(DemoEffect* this, PlayState* play, s32 cueId);
void DemoEffect_SetStartPosFromCue(DemoEffect* this, PlayState* play, s32 cueChannel);
void DemoEffect_SetPosRotFromCue(DemoEffect* this, PlayState* play, s32 cueChannel, s32 shouldUpdateFacing);
void DemoEffect_MoveTowardCuePos(DemoEffect* this, PlayState* play, s32 cueChannel, f32 speed);

ActorProfile Demo_Effect_Profile = {
    /**/ ACTOR_DEMO_EFFECT,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_GAMEPLAY_KEEP,
    /**/ sizeof(DemoEffect),
    /**/ DemoEffect_Init,
    /**/ DemoEffect_Destroy,
    /**/ DemoEffect_Update,
    /**/ NULL,
};

// This variable assures only one jewel will play SFX
static s16 sSfxJewelId[] = { 0 };

// The object used by the effectType
static s16 sEffectTypeObjects[] = {
    /* 0x00 */ OBJECT_EFC_CRYSTAL_LIGHT,
    /* 0x01 */ OBJECT_EFC_FIRE_BALL,
    /* 0x02 */ OBJECT_GAMEPLAY_KEEP,
    /* 0x03 */ OBJECT_EFC_LGT_SHOWER,
    /* 0x04 */ OBJECT_GOD_LGT,
    /* 0x05 */ OBJECT_GOD_LGT,
    /* 0x06 */ OBJECT_GOD_LGT,
    /* 0x07 */ OBJECT_LIGHT_RING,
    /* 0x08 */ OBJECT_TRIFORCE_SPOT,
    /* 0x09 */ OBJECT_GI_MEDAL,
    /* 0x0A */ OBJECT_GI_MEDAL,
    /* 0x0B */ OBJECT_GI_MEDAL,
    /* 0x0C */ OBJECT_GI_MEDAL,
    /* 0x0D */ OBJECT_GI_MEDAL,
    /* 0x0E */ OBJECT_GI_MEDAL,
    /* 0x0F */ OBJECT_EFC_TW,
    /* 0x10 */ OBJECT_LIGHT_RING,
    /* 0x11 */ OBJECT_LIGHT_RING,
    /* 0x12 */ OBJECT_GAMEPLAY_KEEP,
    /* 0x13 */ OBJECT_GI_JEWEL,
    /* 0x14 */ OBJECT_GI_JEWEL,
    /* 0x15 */ OBJECT_GI_JEWEL,
    /* 0x16 */ OBJECT_GI_JEWEL,
    /* 0x17 */ OBJECT_GI_M_ARROW,
    /* 0x18 */ OBJECT_EFC_TW,
    /* 0x19 */ OBJECT_EFC_TW,
};

static u8 sTimewarpVertexSizeIndices[] = { 1, 1, 2, 0, 1, 1, 2, 0, 1, 2, 0, 2, 1, 0, 1, 0, 2, 0, 2, 2, 0 };

static Color_RGB8 sJewelSparkleColors[5][2] = {
    { { 255, 255, 255 }, { 100, 255, 0 } }, { { 255, 255, 255 }, { 200, 0, 150 } },
    { { 255, 255, 255 }, { 0, 100, 255 } }, { { 0, 0, 0 }, { 0, 0, 0 } },
    { { 223, 0, 0 }, { 0, 0, 0 } },
};

void DemoEffect_SetupUpdate(DemoEffect* this, DemoEffectFunc updateFunc) {
    this->updateFunc = updateFunc;
}

/**
 * Gives a number on the range of 0.0f - 1.0f representing current cue completion percentage.
 */
f32 DemoEffect_InterpolateCsFrames(PlayState* play, s32 cueChannel) {
    f32 interpolated = Environment_LerpWeight(play->csCtx.actorCues[cueChannel]->endFrame,
                                              play->csCtx.actorCues[cueChannel]->startFrame, play->csCtx.curFrame);
    if (interpolated > 1.0f) {
        interpolated = 1.0f;
    }

    return interpolated;
}

void DemoEffect_InitJewel(PlayState* play, DemoEffect* this) {
    this->initDrawFunc = DemoEffect_DrawJewel;
    if (!LINK_IS_ADULT) {
        this->initUpdateFunc = DemoEffect_UpdateJewelChild;
    } else {
        this->initUpdateFunc = DemoEffect_UpdateJewelAdult;
    }
    if (play->sceneId == SCENE_TEMPLE_OF_TIME) {
        Actor_SetScale(&this->actor, 0.35f);
    } else {
        Actor_SetScale(&this->actor, 0.10f);
    }
    this->cueChannel = 1;
    this->actor.shape.rot.x = 16384;
    DemoEffect_InitJewelColor(this);
    this->jewel.alpha = 0;
    this->jewelCsRotation.x = this->jewelCsRotation.y = this->jewelCsRotation.z = 0;
    sSfxJewelId[0] = 0;
}

void DemoEffect_InitGetItem(DemoEffect* this) {
    this->getItem.isPositionInit = 0;
    this->getItem.isLoaded = 0;
    this->initDrawFunc = DemoEffect_DrawGetItem;
    this->initUpdateFunc = DemoEffect_UpdateGetItem;
    Actor_SetScale(&this->actor, 0.25f);
    this->cueChannel = 6;
}

void DemoEffect_Init(Actor* thisx, PlayState* play2) {
    PlayState* play = play2;
    DemoEffect* this = (DemoEffect*)thisx;
    s32 effectType;
    s32 lightEffect;
    s32 objectSlot;
    DemoEffect* crystalLight;
    DemoEffect* lightRing;

    effectType = PARAMS_GET_S(this->actor.params, 0, 8);
    lightEffect = PARAMS_GET_S(this->actor.params, 12, 4);

    PRINTF(VT_FGCOL(CYAN) " no = %d\n" VT_RST, effectType);

    objectSlot = sEffectTypeObjects[effectType] == OBJECT_GAMEPLAY_KEEP
                     ? 0
                     : Object_GetSlot(&play->objectCtx, sEffectTypeObjects[effectType]);

    PRINTF(VT_FGCOL(CYAN) " bank_ID = %d\n" VT_RST, objectSlot);

    if (objectSlot < 0) {
        ASSERT(0, "0", "../z_demo_effect.c", 723);
    } else {
        this->requiredObjectSlot = objectSlot;
    }

    this->effectFlags = 0;
    Actor_SetScale(&this->actor, 0.2f);

    switch (effectType) {
        case DEMO_EFFECT_CRYSTAL_LIGHT:
            this->initDrawFunc = DemoEffect_DrawCrystalLight;
            this->initUpdateFunc = DemoEffect_UpdateCrystalLight;
            break;

        case DEMO_EFFECT_FIRE_BALL:
            this->initDrawFunc = DemoEffect_DrawFireBall;
            this->initUpdateFunc = DemoEffect_UpdatePositionToParent;
            Actor_SetScale(&this->actor, 0.1f);
            break;

        case DEMO_EFFECT_BLUE_ORB:
            this->initDrawFunc = DemoEffect_DrawBlueOrb;
            this->initUpdateFunc = DemoEffect_UpdateBlueOrbGrow;
            this->blueOrb.alpha = 255;
            this->blueOrb.scale = 5;
            this->blueOrb.rotation = 0;
            Actor_SetScale(&this->actor, 0.05f);
            this->primXluColor[0] = 188;
            this->primXluColor[1] = 255;
            this->primXluColor[2] = 255;
            this->envXluColor[1] = 100;
            this->envXluColor[2] = 255;
            this->envXluColor[0] = 0;
            break;

        case DEMO_EFFECT_LIGHT:
            this->initDrawFunc = DemoEffect_DrawLightEffect;
            this->initUpdateFunc = DemoEffect_UpdateLightEffect;
            this->light.alpha = 255;
            this->light.scaleFlag = 0;
            this->light.flicker = 0;
            this->light.rotation = 0;
            switch (lightEffect) {
                case DEMO_EFFECT_LIGHT_RED:
                    this->primXluColor[0] = 255;
                    this->primXluColor[1] = 255;
                    this->primXluColor[2] = 255;
                    this->envXluColor[1] = 50;
                    this->envXluColor[0] = 255;
                    this->envXluColor[2] = 0;
                    break;

                case DEMO_EFFECT_LIGHT_BLUE:
                    this->primXluColor[0] = 255;
                    this->primXluColor[1] = 255;
                    this->primXluColor[2] = 255;
                    this->envXluColor[1] = 150;
                    this->envXluColor[0] = 0;
                    this->envXluColor[2] = 255;
                    break;

                case DEMO_EFFECT_LIGHT_GREEN:
                    this->primXluColor[0] = 255;
                    this->primXluColor[1] = 255;
                    this->primXluColor[2] = 255;
                    this->envXluColor[1] = 200;
                    this->envXluColor[0] = 0;
                    this->envXluColor[2] = 0;
                    break;

                case DEMO_EFFECT_LIGHT_ORANGE:
                    this->primXluColor[0] = 255;
                    this->primXluColor[1] = 255;
                    this->primXluColor[2] = 255;
                    this->envXluColor[1] = 150;
                    this->envXluColor[0] = 255;
                    this->envXluColor[2] = 0;
                    break;

                case DEMO_EFFECT_LIGHT_YELLOW:
                    this->primXluColor[0] = 255;
                    this->primXluColor[1] = 255;
                    this->primXluColor[2] = 255;
                    this->envXluColor[0] = 200;
                    this->envXluColor[1] = 255;
                    this->envXluColor[2] = 0;
                    break;

                case DEMO_EFFECT_LIGHT_PURPLE:
                    this->primXluColor[0] = 255;
                    this->primXluColor[1] = 255;
                    this->primXluColor[2] = 255;
                    // clang-format off
                    // Sameline prevents reordering
                    this->envXluColor[0] = 200; this->envXluColor[1] = 50; this->envXluColor[2] = 255;
                    // clang-format on
                    break;

                case DEMO_EFFECT_LIGHT_GREEN2:
                    this->primXluColor[0] = 255;
                    this->primXluColor[1] = 255;
                    this->primXluColor[2] = 255;
                    this->envXluColor[1] = 200;
                    this->envXluColor[0] = 0;
                    this->envXluColor[2] = 0;
                    break;
            }
            this->cueChannel = 7;
            Actor_SetScale(thisx, 0.0f);
            break;

        case DEMO_EFFECT_LGT_SHOWER:
            this->lgtShower.alpha = 255;
            this->initDrawFunc = DemoEffect_DrawLgtShower;
            this->initUpdateFunc = DemoEffect_UpdateLgtShower;
            break;

        case DEMO_EFFECT_GOD_LGT_DIN:
            Actor_SetScale(&this->actor, 0.1f);
            this->initDrawFunc = DemoEffect_DrawGodLgt;
            this->primXluColor[1] = 170;
            this->primXluColor[0] = 255;
            this->primXluColor[2] = 255;
            this->envXluColor[0] = 255;
            this->envXluColor[2] = 255;
            this->envXluColor[1] = 0;
            this->godLgt.type = GOD_LGT_DIN;
            this->godLgt.rotation = 0;
            this->initUpdateFunc = DemoEffect_UpdateGodLgtDin;
            this->cueChannel = 0;
            break;

        case DEMO_EFFECT_GOD_LGT_NAYRU:
            if (gSaveContext.save.entranceIndex == ENTR_DEATH_MOUNTAIN_TRAIL_0) {
                Actor_SetScale(&this->actor, 1.0f);
            } else {
                Actor_SetScale(&this->actor, 0.1f);
            }
            this->initDrawFunc = DemoEffect_DrawGodLgt;
            this->primXluColor[0] = 170;
            this->primXluColor[1] = 255;
            this->primXluColor[2] = 255;
            this->envXluColor[1] = 40;
            this->envXluColor[2] = 255;
            this->envXluColor[0] = 0;
            this->godLgt.type = GOD_LGT_NAYRU;
            this->godLgt.lightRingSpawnDelay = 4;
            this->godLgt.rotation = 0;
            this->godLgt.lightRingSpawnTimer = 0;
            this->initUpdateFunc = DemoEffect_UpdateGodLgtNayru;
            this->cueChannel = 1;
            break;

        case DEMO_EFFECT_GOD_LGT_FARORE:
            if (gSaveContext.save.entranceIndex == ENTR_KOKIRI_FOREST_0) {
                Actor_SetScale(&this->actor, 2.4f);
            } else {
                Actor_SetScale(&this->actor, 0.1f);
            }
            this->initDrawFunc = DemoEffect_DrawGodLgt;
            this->primXluColor[0] = 170;
            this->primXluColor[2] = 170;
            this->primXluColor[1] = 255;
            this->envXluColor[1] = 200;
            this->envXluColor[0] = 0;
            this->envXluColor[2] = 0;
            this->godLgt.type = GOD_LGT_FARORE;
            this->godLgt.rotation = 0;
            this->initUpdateFunc = DemoEffect_UpdateGodLgtFarore;
            this->cueChannel = 2;
            break;

        case DEMO_EFFECT_LIGHTRING_EXPANDING:
            this->initDrawFunc = DemoEffect_DrawLightRing;
            this->initUpdateFunc = DemoEffect_UpdateLightRingExpanding;
            this->lightRing.timer = FRAMERATE_CONST(20, 6);
            this->lightRing.timerIncrement = FRAMERATE_CONST(4, 5);
            this->lightRing.alpha = 255;
            break;

        case DEMO_EFFECT_LIGHTRING_TRIFORCE:
            this->initDrawFunc = DemoEffect_DrawLightRing;
            this->initUpdateFunc = DemoEffect_UpdateLightRingTriforce;
            this->lightRing.timer = FRAMERATE_CONST(20, 6);
            this->lightRing.timerIncrement = FRAMERATE_CONST(4, 5);
            this->lightRing.alpha = 0;
            this->cueChannel = 4;
            break;

        case DEMO_EFFECT_LIGHTRING_SHRINKING:
            this->initDrawFunc = DemoEffect_DrawLightRing;
            this->initUpdateFunc = DemoEffect_UpdateLightRingShrinking;
            this->lightRing.timer = FRAMERATE_CONST(351, 405);
            this->lightRing.timerIncrement = FRAMERATE_CONST(2, 3);
            this->lightRing.alpha = 0;
            break;

        case DEMO_EFFECT_TRIFORCE_SPOT:
            this->initDrawFunc = DemoEffect_DrawTriforceSpot;
            this->initUpdateFunc = DemoEffect_UpdateTriforceSpot;
            this->triforceSpot.crystalLightOpacity = 0;
            this->triforceSpot.lightColumnOpacity = 0;
            this->triforceSpot.triforceSpotOpacity = 0;
            this->triforceSpot.rotation = 0;
            this->primXluColor[0] = 0;
            this->cueChannel = 3;

            Actor_SetScale(&this->actor, 0.020f);

            crystalLight = (DemoEffect*)Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_DEMO_EFFECT,
                                                           this->actor.world.pos.x, this->actor.world.pos.y,
                                                           this->actor.world.pos.z, 0, 0, 0, DEMO_EFFECT_CRYSTAL_LIGHT);

            if (crystalLight != NULL) {
                Actor_SetScale(&crystalLight->actor, 0.6f);
            }

            lightRing = (DemoEffect*)Actor_SpawnAsChild(
                &play->actorCtx, &crystalLight->actor, play, ACTOR_DEMO_EFFECT, this->actor.world.pos.x,
                this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0, DEMO_EFFECT_LIGHTRING_TRIFORCE);

            if (lightRing != NULL) {
                Actor_SetScale(&lightRing->actor, 0.4f);
            }
            break;

        case DEMO_EFFECT_MEDAL_FIRE:
            DemoEffect_InitGetItem(this);
            this->getItem.drawId = GID_MEDALLION_FIRE;
            break;

        case DEMO_EFFECT_MEDAL_WATER:
            DemoEffect_InitGetItem(this);
            this->getItem.drawId = GID_MEDALLION_WATER;
            break;

        case DEMO_EFFECT_MEDAL_FOREST:
            DemoEffect_InitGetItem(this);
            this->getItem.drawId = GID_MEDALLION_FOREST;
            break;

        case DEMO_EFFECT_MEDAL_SPIRIT:
            DemoEffect_InitGetItem(this);
            this->getItem.drawId = GID_MEDALLION_SPIRIT;
            break;

        case DEMO_EFFECT_MEDAL_SHADOW:
            DemoEffect_InitGetItem(this);
            this->getItem.drawId = GID_MEDALLION_SHADOW;
            break;

        case DEMO_EFFECT_MEDAL_LIGHT:
            DemoEffect_InitGetItem(this);
            this->getItem.drawId = GID_MEDALLION_LIGHT;
            break;

        case DEMO_EFFECT_LIGHTARROW:
            DemoEffect_InitGetItem(this);
            this->getItem.drawId = GID_ARROW_LIGHT;
            break;

        case DEMO_EFFECT_TIMEWARP_TIMEBLOCK_LARGE:
        case DEMO_EFFECT_TIMEWARP_TIMEBLOCK_SMALL:
            this->actor.flags |= ACTOR_FLAG_UPDATE_DURING_OCARINA;
            FALLTHROUGH;
        case DEMO_EFFECT_TIMEWARP_MASTERSWORD:
            this->initDrawFunc = DemoEffect_DrawTimeWarp;
            this->initUpdateFunc = DemoEffect_InitTimeWarp;
            this->envXluColor[0] = 0;
            this->envXluColor[1] = 100;
            this->envXluColor[2] = 255;
            SkelCurve_Clear(&this->skelCurve);
            this->timeWarp.shrinkTimer = 0;
            break;

        case DEMO_EFFECT_JEWEL_KOKIRI:
            this->jewelDisplayList = gGiKokiriEmeraldGemDL;
            this->jewelHolderDisplayList = gGiKokiriEmeraldSettingDL;
            this->jewel.type = DEMO_EFFECT_JEWEL_KOKIRI;
            this->jewel.isPositionInit = 0;
            DemoEffect_InitJewel(play, this);
            break;

        case DEMO_EFFECT_JEWEL_GORON:
            this->jewelDisplayList = gGiGoronRubyGemDL;
            this->jewelHolderDisplayList = gGiGoronRubySettingDL;
            this->jewel.type = DEMO_EFFECT_JEWEL_GORON;
            this->jewel.isPositionInit = 0;
            DemoEffect_InitJewel(play, this);
            break;

        case DEMO_EFFECT_JEWEL_ZORA:
            this->jewelDisplayList = gGiZoraSapphireGemDL;
            this->jewelHolderDisplayList = gGiZoraSapphireSettingDL;
            this->jewel.type = DEMO_EFFECT_JEWEL_ZORA;
            this->jewel.isPositionInit = 0;
            DemoEffect_InitJewel(play, this);
            Actor_ChangeCategory(play, &play->actorCtx, &this->actor, ACTORCAT_BOSS);
            if ((play->sceneId == SCENE_JABU_JABU) && GET_INFTABLE(INFTABLE_145)) {
                Actor_Kill(&this->actor);
                return;
            }
            break;

        case DEMO_EFFECT_DUST:
            this->initDrawFunc = NULL;
            this->initUpdateFunc = DemoEffect_UpdateDust;
            this->dust.timer = 0;
            this->cueChannel = 2;
            break;

        default:
            ASSERT(0, "0", "../z_demo_effect.c", 1062);
            break;
    }

    ActorShape_Init(&thisx->shape, 0.0f, NULL, 0.0f);
    DemoEffect_SetupUpdate(this, DemoEffect_WaitForObject);
}

void DemoEffect_Destroy(Actor* thisx, PlayState* play) {
    DemoEffect* this = (DemoEffect*)thisx;
    s32 effectType = PARAMS_GET_S(this->actor.params, 0, 8);

    if (effectType == DEMO_EFFECT_TIMEWARP_MASTERSWORD || effectType == DEMO_EFFECT_TIMEWARP_TIMEBLOCK_LARGE ||
        effectType == DEMO_EFFECT_TIMEWARP_TIMEBLOCK_SMALL) {
        SkelCurve_Destroy(play, &this->skelCurve);
    }
}

/**
 * This update function waits until the associate object is loaded.
 * Once the object is loaded, it will copy over the initUpdateFunc/initDrawFunc funcs to be active.
 * They are copied to actor.draw and updateFunc.
 * initUpdateFunc/initDrawFunc are set during initialization and are NOT executed.
 */
void DemoEffect_WaitForObject(DemoEffect* this, PlayState* play) {
    if (Object_IsLoaded(&play->objectCtx, this->requiredObjectSlot)) {
        this->actor.objectSlot = this->requiredObjectSlot;
        this->actor.draw = this->initDrawFunc;
        this->updateFunc = this->initUpdateFunc;

        PRINTF(VT_FGCOL(CYAN) " 転送終了 move_wait " VT_RST);
    }
}

/**
 * Copies the current Actor's position to the parent Actor's position.
 */
void DemoEffect_UpdatePositionToParent(DemoEffect* this, PlayState* play) {
    if (this->actor.parent != NULL) {
        this->actor.world.pos.x = this->actor.parent->world.pos.x;
        this->actor.world.pos.y = this->actor.parent->world.pos.y;
        this->actor.world.pos.z = this->actor.parent->world.pos.z;
    }
}

/**
 * Update function for the Crystal Light actor.
 * The Crystal Light actor is the three beams of light under the Triforce that converge on it.
 * The Crystal Light's position is set to the parent Actor (Triforce) each frame.
 * If the Crystal Light has no parent Actor, then it will raise into the sky.
 */
void DemoEffect_UpdateCrystalLight(DemoEffect* this, PlayState* play) {
    DemoEffect_UpdatePositionToParent(this, play);
    this->actor.world.pos.y += 14.0f;
}

void DemoEffect_MedalSparkle(DemoEffect* this, PlayState* play, s32 isSmallSpawner) {
    Vec3f velocity;
    Vec3f accel;
    Vec3f pos;
    Color_RGBA8 primColor;
    Color_RGBA8 envColor;

    if (isSmallSpawner != 1 || (play->gameplayFrames & 1) == 0) {
        primColor.r = 255;
        primColor.g = 255;
        primColor.b = 255;
        envColor.r = 255;
        envColor.g = 255;
        envColor.b = 100;
        primColor.a = 0;

        velocity.y = 0.0f;

        accel.x = 0.0f;
        accel.y = -0.1f;
        accel.z = 0.0f;

        if (isSmallSpawner) {
            velocity.x = Rand_ZeroOne() - 0.5f;
            velocity.z = Rand_ZeroOne() - 0.5f;
        } else {
            velocity.x = (Rand_ZeroOne() - 0.5f) * 2.0f;
            velocity.z = (Rand_ZeroOne() - 0.5f) * 2.0f;
        }

        pos.x = Rand_CenteredFloat(10.0f) + this->actor.world.pos.x;
        pos.y = Rand_CenteredFloat(10.0f) + this->actor.world.pos.y;
        pos.z = Rand_CenteredFloat(10.0f) + this->actor.world.pos.z;

        EffectSsKiraKira_SpawnDispersed(play, &pos, &velocity, &accel, &primColor, &envColor, 1000, 16);
    }
}

/**
 * Update function for the GetItem Actors.
 * Medals and Light Arrows.
 * It spawns Medal Sparkle Effects and scales/moves the Actor based on the current cue
 */
void DemoEffect_UpdateGetItem(DemoEffect* this, PlayState* play) {
    Actor* thisx = &this->actor;

    if (play->csCtx.state != CS_STATE_IDLE && play->csCtx.actorCues[this->cueChannel] != NULL) {
        if (this->getItem.isPositionInit) {
            DemoEffect_MoveTowardCuePos(this, play, this->cueChannel, 0.1f);
        } else {
            DemoEffect_SetStartPosFromCue(this, play, this->cueChannel);
            this->getItem.isPositionInit = 1;
        }

        if (this->getItem.drawId != GID_ARROW_LIGHT) {
            this->actor.shape.rot.x = 0xE0C0;
        } else {
            this->actor.shape.rot.y += 0x0400;
        }

        Actor_SetScale(thisx, 0.20f);

        if (gSaveContext.save.entranceIndex == ENTR_TEMPLE_OF_TIME_0) {
            switch (play->csCtx.actorCues[this->cueChannel]->id) {
                case 2:
                    DemoEffect_MedalSparkle(this, play, 0);
                    break;
                case 3:
                    DemoEffect_MedalSparkle(this, play, 1);
                    break;
            }
        }
        switch (play->csCtx.actorCues[this->cueChannel]->id) {
            case 2:
                if (gSaveContext.save.entranceIndex == ENTR_TEMPLE_OF_TIME_0) {
                    Actor_PlaySfx(thisx, NA_SE_EV_MEDAL_APPEAR_L - SFX_FLAG);
                } else {
                    Sfx_PlaySfxCentered2(NA_SE_EV_MEDAL_APPEAR_S - SFX_FLAG);
                }
                if (this->getItem.drawId != GID_ARROW_LIGHT) {
                    this->actor.shape.rot.y += 0x3E80;
                }
                this->getItem.rotation = 0x3E80;
                break;
            case 3:
                this->getItem.rotation -= (s16)((this->getItem.rotation - 0x03E8) * 0.10f);
                if (this->getItem.drawId != GID_ARROW_LIGHT) {
                    this->actor.shape.rot.y += this->getItem.rotation;
                }
                if (gSaveContext.save.entranceIndex == ENTR_TEMPLE_OF_TIME_0) {
                    Actor_PlaySfx(thisx, NA_SE_EV_MEDAL_APPEAR_L - SFX_FLAG);
                } else {
                    Sfx_PlaySfxCentered2(NA_SE_EV_MEDAL_APPEAR_S - SFX_FLAG);
                }
                break;
            case 4:
                Actor_PlaySfx(thisx, NA_SE_EV_MEDAL_APPEAR_S - SFX_FLAG);
                break;
        }
    }
}

/**
 * Initializes Timewarp Actors.
 * This is an Update Function that is only ran for one frame.
 * Timewarp actors are spawned when Link...
 * 1) Pulls the Master Sword
 * 2) Returns from the Chamber of Sages for the first time
 * 3) Timeblock is cleared with the Song of Time (Large and Small have different versions of Timewarp)
 */
void DemoEffect_InitTimeWarp(DemoEffect* this, PlayState* play) {
    s32 effectType = PARAMS_GET_S(this->actor.params, 0, 8);

    if (!SkelCurve_Init(play, &this->skelCurve, &gTimeWarpSkel, &gTimeWarpAnim)) {
        ASSERT(0, "0", "../z_demo_effect.c", 1283);
    }

    if (effectType == DEMO_EFFECT_TIMEWARP_TIMEBLOCK_LARGE || effectType == DEMO_EFFECT_TIMEWARP_TIMEBLOCK_SMALL) {
        SkelCurve_SetAnim(&this->skelCurve, &gTimeWarpAnim, 1.0f, 59.0f, 1.0f, 1.7f);
        SkelCurve_Update(play, &this->skelCurve);
        this->updateFunc = DemoEffect_InitTimeWarpTimeblock;

        if (effectType == DEMO_EFFECT_TIMEWARP_TIMEBLOCK_LARGE) {
            Actor_SetScale(&this->actor, 0.14f);
        } else {
            Actor_SetScale(&this->actor, 84 * 0.001f);
        }
    } else if (gSaveContext.sceneLayer == 5 || gSaveContext.sceneLayer == 4 ||
               (gSaveContext.save.entranceIndex == ENTR_TEMPLE_OF_TIME_4 && !GET_EVENTCHKINF(EVENTCHKINF_C9))) {
        SkelCurve_SetAnim(&this->skelCurve, &gTimeWarpAnim, 1.0f, 59.0f, 59.0f, 0.0f);
        SkelCurve_Update(play, &this->skelCurve);
        this->updateFunc = DemoEffect_UpdateTimeWarpReturnFromChamberOfSages;
        PRINTF(VT_FGCOL(CYAN) " 縮むバージョン \n" VT_RST);
    } else {
        SkelCurve_SetAnim(&this->skelCurve, &gTimeWarpAnim, 1.0f, 59.0f, 1.0f, 1.0f);
        SkelCurve_Update(play, &this->skelCurve);
        this->updateFunc = DemoEffect_UpdateTimeWarpPullMasterSword;
        PRINTF(VT_FGCOL(CYAN) " 通常 バージョン \n" VT_RST);
    }
}

/**
 * Update function for the Timewarp Actor that is used when Link pulls the Mastersword
 * It changes the Background Music and updates its SkelCurve animation.
 */
void DemoEffect_UpdateTimeWarpPullMasterSword(DemoEffect* this, PlayState* play) {
    if (CutsceneFlags_Get(play, 1)) {
        if (!(this->effectFlags & 0x2)) {
            Audio_PlayCutsceneEffectsSequence(SEQ_CS_EFFECTS_SWORD_GLOW);
            this->effectFlags |= 0x2;
        }

        if (SkelCurve_Update(play, &this->skelCurve)) {
            SkelCurve_SetAnim(&this->skelCurve, &gTimeWarpAnim, 1.0f, 60.0f, 59.0f, 0.0f);
        }
    }
}

/**
 * Shrinks the Timewarp object vertices.
 * Used by the Chamber of Sages return timewarp and Timeblock clear timewarp.
 */
void DemoEffect_TimewarpShrink(f32 size) {
    Vtx* vertices;
    s32 i;
    u8 sizes[3];

    // This function uses the data in obj_efc_tw offset 0x0060 to 0x01B0
    vertices = SEGMENTED_TO_VIRTUAL(gTimeWarpVtx);

    sizes[0] = 0;
    sizes[1] = (s32)(202.0f * size);
    sizes[2] = (s32)(255.0f * size);

    for (i = 0; i < 21; i++) {
        if (sTimewarpVertexSizeIndices[i] != 0) {
            vertices[i].v.cn[3] = sizes[sTimewarpVertexSizeIndices[i]];
        }
    }
}

/**
 * Update function for the Timewarp Actor that is used when Link returns from the Chamber of Sages for the first time.
 * It shrinks the timewarp vertices and scales the Actor.
 */
void DemoEffect_UpdateTimeWarpReturnFromChamberOfSages(DemoEffect* this, PlayState* play) {
    f32 shrinkProgress;

    this->timeWarp.shrinkTimer++;

    if (this->timeWarp.shrinkTimer > 250) {
        if (gSaveContext.save.entranceIndex == ENTR_TEMPLE_OF_TIME_4) {
            SET_EVENTCHKINF(EVENTCHKINF_C9);
        }

        Actor_Kill(&this->actor);
        return;
    }

    if (this->timeWarp.shrinkTimer > 100) {
        shrinkProgress = (250 - this->timeWarp.shrinkTimer) * (1.0f / 750.0f);
        this->actor.scale.x = shrinkProgress;
        this->actor.scale.z = shrinkProgress;
        DemoEffect_TimewarpShrink(shrinkProgress * 5.0f);
    }

    Actor_PlaySfx_FlaggedCentered2(&this->actor, NA_SE_EV_TIMETRIP_LIGHT - SFX_FLAG);
}

/**
 * Update function for the Timewarp Actor that is used when a Timeblock is cleared.
 * It shrinks the timewarp vertices and scales the Actor.
 */
void DemoEffect_UpdateTimeWarpTimeblock(DemoEffect* this, PlayState* play) {
    f32 shrinkProgress;
    f32 scale;

    this->timeWarp.shrinkTimer++;

    if (this->timeWarp.shrinkTimer <= 100) {
        shrinkProgress = (100 - this->timeWarp.shrinkTimer) * 0.010f;
        scale = shrinkProgress * 0.14f;

        if (PARAMS_GET_S(this->actor.params, 0, 8) == DEMO_EFFECT_TIMEWARP_TIMEBLOCK_SMALL) {
            scale *= 0.6f;
        }

        this->actor.scale.x = scale;
        this->actor.scale.z = scale;
        DemoEffect_TimewarpShrink(shrinkProgress);
        Actor_PlaySfx_FlaggedCentered2(&this->actor, NA_SE_EV_TIMETRIP_LIGHT - SFX_FLAG);
        return;
    }

    DemoEffect_TimewarpShrink(1.0f);
    Actor_Kill(&this->actor);
}

/**
 * Initializes information for the Timewarp Actor used for the Timeblock clear effect.
 * This is an Update Func that is only ran for one frame.
 */
void DemoEffect_InitTimeWarpTimeblock(DemoEffect* this, PlayState* play) {
    Actor_PlaySfx_FlaggedCentered2(&this->actor, NA_SE_EV_TIMETRIP_LIGHT - SFX_FLAG);

    if (SkelCurve_Update(play, &this->skelCurve)) {
        SkelCurve_SetAnim(&this->skelCurve, &gTimeWarpAnim, 1.0f, 60.0f, 59.0f, 0.0f);
        this->updateFunc = DemoEffect_UpdateTimeWarpTimeblock;
        this->timeWarp.shrinkTimer = 0;
    }
}

/**
 * Update function for the Triforce Actor.
 * It rotates and updates the alpha of the Triforce and child actors.
 */
void DemoEffect_UpdateTriforceSpot(DemoEffect* this, PlayState* play) {
    this->triforceSpot.rotation += 0x03E8;

    if (play->csCtx.state != CS_STATE_IDLE && play->csCtx.actorCues[this->cueChannel] != NULL) {
        DemoEffect_SetPosRotFromCue(this, play, this->cueChannel, 0);

        if (play->csCtx.actorCues[this->cueChannel]->id == 2) {
            if (this->primXluColor[0] < 140) {
                this->primXluColor[0]++;
            }

            if (this->primXluColor[0] < 30) {
                this->triforceSpot.triforceSpotOpacity = ((s32)this->primXluColor[0]) * 8.5f;
            } else {
                this->triforceSpot.triforceSpotOpacity = 255;

                if (this->primXluColor[0] < 60) {
                    this->triforceSpot.lightColumnOpacity = (((s32)this->primXluColor[0]) - 30) * 8.5f;
                } else {
                    if (this->primXluColor[0] <= 140) {
                        this->triforceSpot.lightColumnOpacity = 255;
                        this->triforceSpot.crystalLightOpacity = (((s32)this->primXluColor[0]) - 60) * 3.1875f;
                    }
                }
            }
        }

        if (gSaveContext.save.entranceIndex == ENTR_CUTSCENE_MAP_0 && gSaveContext.sceneLayer == 6 &&
            play->csCtx.curFrame == FRAMERATE_CONST(143, 120)) {
            Actor_PlaySfx(&this->actor, NA_SE_IT_DM_RING_EXPLOSION);
        }
    }
}

/**
 * Update function for the LightRing actor that shrinks.
 * This is used in the creation cutscene when Din leaves a fireball that explodes into Death Mountain.
 */
void DemoEffect_UpdateLightRingShrinking(DemoEffect* this, PlayState* play) {
    if (this->lightRing.timer < this->lightRing.timerIncrement) {
#if OOT_VERSION < PAL_1_0
        this->lightRing.timer = 0;
#endif
        Actor_Kill(&this->actor);
        this->lightRing.timer = 0;
    } else {
        this->lightRing.timer -= this->lightRing.timerIncrement;
    }

    if (this->lightRing.timer <= 255) {
        if (this->lightRing.timer >= 225) {
            this->lightRing.alpha = (-this->lightRing.timer * 8) + 2048;
        } else {
            this->lightRing.alpha = 255;
        }
    }

    if (this->lightRing.timer == 255) {
        Audio_PlayCutsceneEffectsSequence(SEQ_CS_EFFECTS_DIN_MAGIC);
    }
}

/**
 * Update function for the Lightring Actor that expands.
 * These are spawned by Nayru.
 * These are also used by Din in the creation cutscene when she leaves a fireball that explodes into Death Mountain.
 */
void DemoEffect_UpdateLightRingExpanding(DemoEffect* this, PlayState* play) {
    DemoEffect_UpdatePositionToParent(this, play);
    this->lightRing.timer += this->lightRing.timerIncrement;

    if (this->lightRing.timer >= 225) {
        this->lightRing.alpha = (-this->lightRing.timer * 8) + 2048;
    }
    if (this->lightRing.timer > 255) {
        this->lightRing.timer = 255;
        Actor_Kill(&this->actor);
        this->lightRing.timer = 0;
    }
}

/**
 * Update function for the Lightring Actor that expands. This is a special version for the Triforce Actor.
 * Once the Blue Orb Actor is spawned the Update Function is changed to the regular Light Ring Expanding Update Func.
 */
void DemoEffect_UpdateLightRingTriforce(DemoEffect* this, PlayState* play) {
    DemoEffect* blueOrb;

    DemoEffect_UpdatePositionToParent(this, play);

    if (play->csCtx.state != CS_STATE_IDLE) {
        if (play->csCtx.actorCues[this->cueChannel] != NULL && play->csCtx.actorCues[this->cueChannel]->id == 2) {
            blueOrb = (DemoEffect*)Actor_Spawn(&play->actorCtx, play, ACTOR_DEMO_EFFECT, this->actor.world.pos.x,
                                               this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0,
                                               DEMO_EFFECT_BLUE_ORB);

            if (blueOrb != NULL) {
                Actor_SetScale(&blueOrb->actor, 0.0f);
            }

            this->updateFunc = DemoEffect_UpdateLightRingExpanding;
            this->lightRing.alpha = 255;
        }
    }
}

/**
 * Update function for the FireBall Actor.
 * This is a special version that is used in the creation cutscene.
 * It moves based on gravity and decrements a timer until zero. Once the timer is zero it will spawn other Actors:
 * A Blue Orb Actor, and a Light Ring Expanding Actor, and a Light Ring Shrinking Actor.
 */
void DemoEffect_UpdateCreationFireball(DemoEffect* this, PlayState* play) {
    DemoEffect* effect;

    Actor_MoveXZGravity(&this->actor);
    this->actor.speed += this->actor.gravity * 0.5f;

    if (this->fireBall.timer != 0) {
        this->fireBall.timer--;
        return;
    }

    effect = (DemoEffect*)Actor_Spawn(&play->actorCtx, play, ACTOR_DEMO_EFFECT, this->actor.world.pos.x,
                                      this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0, DEMO_EFFECT_BLUE_ORB);
    if (effect != NULL) {
        Actor_SetScale(&effect->actor, 0.0f);
    }

    effect = (DemoEffect*)Actor_Spawn(&play->actorCtx, play, ACTOR_DEMO_EFFECT, this->actor.world.pos.x,
                                      this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0,
                                      DEMO_EFFECT_LIGHTRING_EXPANDING);
    if (effect != NULL) {
        Actor_SetScale(&effect->actor, 0.1f);
    }

    effect = (DemoEffect*)Actor_Spawn(&play->actorCtx, play, ACTOR_DEMO_EFFECT, this->actor.world.pos.x,
                                      this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0,
                                      DEMO_EFFECT_LIGHTRING_SHRINKING);
    if (effect != NULL) {
        Actor_SetScale(&effect->actor, 0.2f);
    }

    Sfx_PlaySfxCentered2(NA_SE_IT_DM_RING_EXPLOSION);
    Actor_Kill(&this->actor);
}

/**
 * Initialization function for the FireBall Actor.
 * This is a special version that is used in the creation cutscene.
 * It is an Update Function only executed for one frame. The Update Function is then changed to UpdateCreationFireball.
 */
void DemoEffect_InitCreationFireball(DemoEffect* this, PlayState* play) {
    Actor* parent = this->actor.parent;

    this->actor.world.rot.y = parent->shape.rot.y;

    this->fireBall.timer = FRAMERATE_CONST(50, 42);
    this->actor.speed = FRAMERATE_CONST(1.5f, 1.8f);

#if OOT_VERSION < PAL_1_0
    this->actor.gravity = -0.03f;
    this->actor.minVelocityY = -1.5f;
#else
    this->actor.minVelocityY = FRAMERATE_CONST(-1.5f, -2.5f);
    this->actor.gravity = FRAMERATE_CONST(-0.03f, -0.05f);
#endif

    this->updateFunc = DemoEffect_UpdateCreationFireball;
}

/**
 * Update action for the Blue Orb Actor.
 * This Update Function is run while the Blue Orb is Shrinking.
 * The Blue Orb Actor is the blue light sparkle that is in Din's creation cutscene.
 * It's spawned in the middle of the expanding Light Ring.
 * The Blue Orb Actor shrinks after it grows to max size.
 */
void DemoEffect_UpdateBlueOrbShrink(DemoEffect* this, PlayState* play) {
    this->blueOrb.alpha = this->blueOrb.scale * 16;
    this->blueOrb.scale--;
    Actor_SetScale(&this->actor, this->actor.scale.x * 0.9f);
    if (this->blueOrb.scale == 0) {
        Actor_Kill(&this->actor);
    }
}

/**
 * Update action for the Blue Orb Actor.
 * This Update Function is run while the Blue Orb is Growing.
 * The Blue Orb Actor is the blue light sparkle that is in Din's creation cutscene.
 * It's spawned in the middle of the expanding Light Ring.
 * When the scale timer value reaches 0 the Blue Orb's Update Function changes to UpdateBlueOrbShrink.
 */
void DemoEffect_UpdateBlueOrbGrow(DemoEffect* this, PlayState* play) {
    if (this->actor.parent != NULL) {
        // s32 cast necessary to match codegen. Without the explicit cast to u32 the compiler generates complex cast of
        // u8 to float
        Actor_SetScale(&this->actor,
                       (((5.0f - (s32)this->blueOrb.scale) * 0.01f) * 10.0f) * this->actor.parent->scale.x);
    } else {
        Actor_SetScale(&this->actor, (5.0f - (s32)this->blueOrb.scale) * 0.01f);
    }

    if (this->blueOrb.scale != 0) {
        this->blueOrb.scale--;
    } else {
        this->blueOrb.scale = 15;
        this->updateFunc = DemoEffect_UpdateBlueOrbShrink;
    }
}

/**
 * Update action for the Light Effect Actor.
 * The Light Effect has various use cases.
 * This function updates the position and scale of the actor based on the current cutscene command.
 */
void DemoEffect_UpdateLightEffect(DemoEffect* this, PlayState* play) {
    u16 pad;
    s32 isLargeSize;

    isLargeSize = PARAMS_GET_S(this->actor.params, 8, 4);

    if (play->csCtx.state != CS_STATE_IDLE && play->csCtx.actorCues[this->cueChannel] != NULL) {
        DemoEffect_SetPosRotFromCue(this, play, this->cueChannel, 0);
        switch (play->csCtx.actorCues[this->cueChannel]->id) {
            case 2:
                if (this->light.rotation < 240) {
                    if (!isLargeSize) {
                        if (this->actor.scale.x < 0.23f) {
                            this->actor.scale.x += 0.001f;
                            Actor_SetScale(&this->actor, this->actor.scale.x);
                        }
                    } else {
                        if (this->actor.scale.x < 2.03f) {
                            this->actor.scale.x += 0.05f;
                            Actor_SetScale(&this->actor, this->actor.scale.x);
                        }
                    }
                }
                this->light.rotation += 6;
                this->light.scaleFlag++;
                break;

            case 3:
                Math_SmoothStepToF(&this->actor.scale.x, 0.0f, 0.1f, 0.1f, 0.005f);
                Actor_SetScale(&this->actor, this->actor.scale.x);
                break;

            default:
                break;
        }

        if (play->sceneId == SCENE_KOKIRI_FOREST && gSaveContext.sceneLayer == 6 && play->csCtx.curFrame == 197) {
            Actor_PlaySfx(&this->actor, NA_SE_EV_WHITE_OUT);
        }

        if (play->sceneId == SCENE_DEATH_MOUNTAIN_TRAIL && gSaveContext.sceneLayer == 5) {
            if (!DemoEffect_CheckForCue(this, play, 1)) {
                Actor_PlaySfx(&this->actor, NA_SE_EV_LIGHT_GATHER - SFX_FLAG);
            }
            if (play->csCtx.curFrame == 640) {
                Actor_PlaySfx(&this->actor, NA_SE_EV_WHITE_OUT);
            }

            if (0) {}
        }

        if (play->sceneId == SCENE_ZORAS_FOUNTAIN && gSaveContext.sceneLayer == 4) {
            if (!DemoEffect_CheckForCue(this, play, 1)) {
                Actor_PlaySfx(&this->actor, NA_SE_EV_LIGHT_GATHER - SFX_FLAG);
            }
            if (play->csCtx.curFrame == 648) {
                Actor_PlaySfx(&this->actor, NA_SE_EV_WHITE_OUT);
            }

            // Necessary to match
            if (0) {}
        }

        if (play->sceneId == SCENE_TEMPLE_OF_TIME && gSaveContext.sceneLayer == 14) {
            if (1) {}

            if (play->csCtx.actorCues[this->cueChannel]->id == 2) {
                Actor_PlaySfx(&this->actor, NA_SE_EV_LIGHT_GATHER - SFX_FLAG);
            }
        }

        if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC || play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_SPELLS) {
            if (play->csCtx.actorCues[this->cueChannel]->id == 2) {
                Actor_PlaySfx(&this->actor, NA_SE_EV_LIGHT_GATHER - SFX_FLAG);
            }
        }
    }
}

/**
 * Update action for the Lgt Shower Actor.
 * The Lgt Shower Actor is the green light effect spawned by Farore in the Kokiri Forest creation cutscene.
 * This function updates the scale and alpha of the Actor.
 */
void DemoEffect_UpdateLgtShower(DemoEffect* this, PlayState* play) {
    if (this->lgtShower.alpha > 3) {
        this->lgtShower.alpha -= 3;
        this->actor.scale.x *= 1.05f;
        this->actor.scale.y *= 1.05f;
        this->actor.scale.z *= 1.05f;
    } else {
        Actor_Kill(&this->actor);
    }
}

/**
 * Update action for the God Lgt Din Actor.
 * This is the Goddess Din.
 * This function moves God Lgt Din based on the current cutscene command.
 * This function also spawns a Fireball Actor and sets its update function to the special InitCreationFireball.
 * The spawned Fireball Actor is also scaled to be smaller than regular by this function.
 */
void DemoEffect_UpdateGodLgtDin(DemoEffect* this, PlayState* play) {
    DemoEffect* fireBall;

    if (play->csCtx.state != CS_STATE_IDLE && play->csCtx.actorCues[this->cueChannel] != NULL) {
        DemoEffect_SetPosRotFromCue(this, play, this->cueChannel, 1);

        if (play->csCtx.actorCues[this->cueChannel]->id == 3) {
            fireBall = (DemoEffect*)Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_DEMO_EFFECT,
                                                       this->actor.world.pos.x, this->actor.world.pos.y,
                                                       this->actor.world.pos.z, 0, 0, 0, DEMO_EFFECT_FIRE_BALL);

            if (fireBall != NULL) {
                fireBall->initUpdateFunc = DemoEffect_InitCreationFireball;
                Actor_SetScale(&fireBall->actor, 0.020f);
            }
        }

        if (gSaveContext.save.entranceIndex == ENTR_CUTSCENE_MAP_0) {
            switch (gSaveContext.sceneLayer) {
                case 4:
                    if (play->csCtx.curFrame == FRAMERATE_CONST(288, 240)) {
                        Actor_PlaySfx(&this->actor, NA_SE_IT_DM_FLYING_GOD_PASS);
                    }
                    if (play->csCtx.curFrame == FRAMERATE_CONST(635, 535)) {
                        Actor_PlaySfx(&this->actor, NA_SE_IT_DM_FLYING_GOD_PASS);
                    }
                    break;

                case 6:
                    if (play->csCtx.curFrame == FRAMERATE_CONST(55, 25)) {
                        Actor_PlaySfx(&this->actor, NA_SE_IT_DM_FLYING_GOD_DASH);
                    }
                    break;

                case 11:
                    if (play->csCtx.curFrame == FRAMERATE_CONST(350, 353)) {
                        Actor_PlaySfx(&this->actor, NA_SE_IT_DM_FLYING_GOD_DASH);
                    }
                    break;
            }
        }
    }
}

/**
 * Update action for the God Lgt Nayru Actor.
 * This is the Goddess Nayru.
 * This function moves God Lgt Nayure based on the current cutscene command.
 * This function also spawns expanding light rings around Nayru in the creation cutscene
 */
void DemoEffect_UpdateGodLgtNayru(DemoEffect* this, PlayState* play) {
    DemoEffect* lightRing;

    if (play->csCtx.state != CS_STATE_IDLE && play->csCtx.actorCues[this->cueChannel] != NULL) {
        DemoEffect_SetPosRotFromCue(this, play, this->cueChannel, 1);

        if (play->csCtx.actorCues[this->cueChannel]->id == 3) {
            if (this->godLgt.lightRingSpawnTimer != 0) {
                this->godLgt.lightRingSpawnTimer--;
            } else {
                this->godLgt.lightRingSpawnTimer = this->godLgt.lightRingSpawnDelay;
                lightRing = (DemoEffect*)Actor_Spawn(&play->actorCtx, play, ACTOR_DEMO_EFFECT, this->actor.world.pos.x,
                                                     this->actor.world.pos.y, this->actor.world.pos.z,
                                                     this->actor.world.rot.x + 0x4000, this->actor.world.rot.y,
                                                     this->actor.world.rot.z, DEMO_EFFECT_LIGHTRING_EXPANDING);

                if (lightRing != NULL) {
                    Actor_SetScale(&lightRing->actor, 1.0f);
                }
            }
        }

        if (gSaveContext.save.entranceIndex == ENTR_CUTSCENE_MAP_0) {
            switch (gSaveContext.sceneLayer) {
                case 4:
                    if (play->csCtx.curFrame == FRAMERATE_CONST(298, 248)) {
                        Actor_PlaySfx(&this->actor, NA_SE_IT_DM_FLYING_GOD_PASS);
                    }
                    break;
                case 6:
                    if (play->csCtx.curFrame == FRAMERATE_CONST(105, 88)) {
                        Actor_PlaySfx(&this->actor, NA_SE_IT_DM_FLYING_GOD_DASH);
                    }
                    break;

                case 11:
                    if (play->csCtx.curFrame == FRAMERATE_CONST(360, 362)) {
                        Actor_PlaySfx(&this->actor, NA_SE_IT_DM_FLYING_GOD_DASH);
                    }
                    break;
            }
        }

        if (gSaveContext.save.entranceIndex == ENTR_DEATH_MOUNTAIN_TRAIL_0 && gSaveContext.sceneLayer == 4) {
            if (play->csCtx.curFrame == FRAMERATE_CONST(72, 57)) {
                Actor_PlaySfx(&this->actor, NA_SE_IT_DM_FLYING_GOD_DASH);
            }
            if (play->csCtx.curFrame == FRAMERATE_CONST(80, 72)) {
                Audio_PlayCutsceneEffectsSequence(SEQ_CS_EFFECTS_NAYRU_MAGIC);
            }
        }
    }
}

/**
 * Update action for the God Lgt Farore Actor.
 * This is the Goddess Farore.
 * This function moves God Lgt Farore based on the current cutscene command.
 * This function also spawns an Lgt Shower Actor during the Kokiri creation cutscene.
 */
void DemoEffect_UpdateGodLgtFarore(DemoEffect* this, PlayState* play) {
    DemoEffect* lgtShower;

    if (play->csCtx.state != CS_STATE_IDLE && play->csCtx.actorCues[this->cueChannel] != NULL) {
        DemoEffect_SetPosRotFromCue(this, play, this->cueChannel, 1);

        if (play->csCtx.actorCues[this->cueChannel]->id == 3) {
            lgtShower = (DemoEffect*)Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_DEMO_EFFECT,
                                                        this->actor.world.pos.x, this->actor.world.pos.y - 150.0f,
                                                        this->actor.world.pos.z, 0, 0, 0, DEMO_EFFECT_LGT_SHOWER);

            if (lgtShower != NULL) {
                lgtShower->actor.scale.x = 0.23f;
                lgtShower->actor.scale.y = 0.15f;
                lgtShower->actor.scale.z = 0.23f;
            }

            Actor_PlaySfx(&this->actor, NA_SE_IT_DM_FLYING_GOD_DASH);
            Audio_PlayCutsceneEffectsSequence(SEQ_CS_EFFECTS_FARORE_MAGIC);
        }

        if (gSaveContext.save.entranceIndex == ENTR_CUTSCENE_MAP_0) {
            switch (gSaveContext.sceneLayer) {
                case 4:
                    if (play->csCtx.curFrame == FRAMERATE_CONST(315, 265)) {
                        Actor_PlaySfx(&this->actor, NA_SE_IT_DM_FLYING_GOD_PASS);
                    }
                    break;

                case 6:
                    if (play->csCtx.curFrame == FRAMERATE_CONST(80, 60)) {
                        Actor_PlaySfx(&this->actor, NA_SE_IT_DM_FLYING_GOD_DASH);
                    }
                    break;

                case 11:
                    if (play->csCtx.curFrame == FRAMERATE_CONST(370, 371)) {
                        Actor_PlaySfx(&this->actor, NA_SE_IT_DM_FLYING_GOD_DASH);
                    }
                    break;
            }
        }
    }
}

void DemoEffect_MoveTowardTarget(Vec3f targetPos, DemoEffect* this, f32 speed) {
    this->actor.world.pos.x += (targetPos.x - this->actor.world.pos.x) * speed;
    this->actor.world.pos.y += (targetPos.y - this->actor.world.pos.y) * speed;
    this->actor.world.pos.z += (targetPos.z - this->actor.world.pos.z) * speed;
}

void DemoEffect_InitJewelColor(DemoEffect* this) {
    u8 jewelType = this->jewel.type;

    switch (jewelType) {
        case DEMO_EFFECT_JEWEL_KOKIRI:
            this->primXluColor[2] = 160;
            this->primXluColor[0] = 255;
            this->primXluColor[1] = 255;
            this->envXluColor[0] = 0;
            this->envXluColor[1] = 255;
            this->envXluColor[2] = 0;
            this->primOpaColor[2] = 170;
            this->primOpaColor[0] = 255;
            this->primOpaColor[1] = 255;
            this->envOpaColor[1] = 120;
            this->envOpaColor[0] = 150;
            this->envOpaColor[2] = 0;
            break;

        case DEMO_EFFECT_JEWEL_GORON:
            this->primXluColor[1] = 170;
            this->primXluColor[0] = 255;
            this->primXluColor[2] = 255;
            this->envXluColor[2] = 100;
            this->envXluColor[0] = 255;
            this->envXluColor[1] = 0;
            this->primOpaColor[2] = 170;
            this->primOpaColor[0] = 255;
            this->primOpaColor[1] = 255;
            this->envOpaColor[1] = 120;
            this->envOpaColor[0] = 150;
            this->envOpaColor[2] = 0;
            break;

        case DEMO_EFFECT_JEWEL_ZORA:
            this->primXluColor[0] = 50;
            this->primXluColor[1] = 255;
            this->primXluColor[2] = 255;
            this->envXluColor[2] = 150;
            this->envXluColor[0] = 50;
            this->envXluColor[1] = 0;
            this->primOpaColor[2] = 170;
            this->primOpaColor[0] = 255;
            this->primOpaColor[1] = 255;
            this->envOpaColor[1] = 120;
            this->envOpaColor[0] = 150;
            this->envOpaColor[2] = 0;
            break;
    }
}

/**
 * Sets the Jewel color based on the alpha variable.
 * This function if a value of less than 1.0f is supplied will drain the color from the Jewels.
 * This effect can be seen in prerelease screenshots.
 */
void DemoEffect_SetJewelColor(DemoEffect* this, f32 alpha) {
    DemoEffect_InitJewelColor(this);

    this->primXluColor[0] = (((s32)this->primXluColor[0]) * alpha) + (255.0f * (1.0f - alpha));
    this->primXluColor[1] = (((s32)this->primXluColor[1]) * alpha) + (255.0f * (1.0f - alpha));
    this->primXluColor[2] = (((s32)this->primXluColor[2]) * alpha) + (255.0f * (1.0f - alpha));
    this->primOpaColor[0] = (((s32)this->primOpaColor[0]) * alpha) + (255.0f * (1.0f - alpha));
    this->primOpaColor[1] = (((s32)this->primOpaColor[1]) * alpha) + (255.0f * (1.0f - alpha));
    this->primOpaColor[2] = (((s32)this->primOpaColor[2]) * alpha) + (255.0f * (1.0f - alpha));
    this->envXluColor[0] = ((s32)this->envXluColor[0]) * alpha;
    this->envXluColor[1] = ((s32)this->envXluColor[1]) * alpha;
    this->envXluColor[2] = ((s32)this->envXluColor[2]) * alpha;
    this->envOpaColor[0] = ((s32)this->envOpaColor[0]) * alpha;
    this->envOpaColor[1] = ((s32)this->envOpaColor[1]) * alpha;
    this->envOpaColor[2] = ((s32)this->envOpaColor[2]) * alpha;
}

/**
 * Moves the Jewel Actor during the activation of the Door of Time cutscene.
 * This is used once the Jewel Actor is done orbiting Link and split up to move into the pedastal slots.
 */
void DemoEffect_MoveJewelSplit(PosRot* world, DemoEffect* this) {
    switch (this->jewel.type) {
        case DEMO_EFFECT_JEWEL_KOKIRI:
            world->pos.x -= 40.0f;
            break;
        case DEMO_EFFECT_JEWEL_GORON:
            break;
        case DEMO_EFFECT_JEWEL_ZORA:
            world->pos.x += 40.0f;
            break;
    }
}

/**
 * Moves the Jewel Actor spherically from startPos to endPos.
 * This is used by the Jewel Actor during the Door of Time activation cutscene.
 * This is run when the Jewels merge from Link and begin orbiting him.
 */
void DemoEffect_MoveJewelSpherical(f32 degrees, f32 frameDivisor, Vec3f startPos, Vec3f endPos, f32 radius,
                                   Vec3s rotation, DemoEffect* this) {
    s32 pad;
    s32 pad2;
    f32 distance;
    f32 xPos;
    f32 ySpherical;
    f32 xzSpherical;

    distance = frameDivisor * sqrtf(SQ(endPos.x - startPos.x) + SQ(endPos.y - startPos.y) + SQ(endPos.z - startPos.z));

    this->actor.world.pos.x = radius * cosf(DEG_TO_RAD(degrees));
    this->actor.world.pos.y = distance;
    this->actor.world.pos.z = radius * sinf(DEG_TO_RAD(degrees));

    xPos = this->actor.world.pos.x;
    ySpherical = (this->actor.world.pos.y * cosf(BINANG_TO_RAD(rotation.x))) -
                 (sinf(BINANG_TO_RAD(rotation.x)) * this->actor.world.pos.z);
    xzSpherical = (this->actor.world.pos.z * cosf(BINANG_TO_RAD(rotation.x))) +
                  (sinf(BINANG_TO_RAD(rotation.x)) * this->actor.world.pos.y);

    this->actor.world.pos.x =
        (xPos * cosf(BINANG_TO_RAD(rotation.y))) - (sinf(BINANG_TO_RAD(rotation.y)) * xzSpherical);
    this->actor.world.pos.y = ySpherical;
    this->actor.world.pos.z =
        (xzSpherical * cosf(BINANG_TO_RAD(rotation.y))) + (sinf(BINANG_TO_RAD(rotation.y)) * xPos);

    this->actor.world.pos.x += startPos.x;
    this->actor.world.pos.y += startPos.y;
    this->actor.world.pos.z += startPos.z;
}

/**
 * Moves the Jewel Actor spherically from startPos to endPos.
 * This is used by the Jewel Actor during the Door of Time activation cutscene.
 * This is run when the Jewels merge from Link and begin orbiting him.
 */
void DemoEffect_MoveJewelActivateDoorOfTime(DemoEffect* this, PlayState* play) {
    Vec3f startPos;
    Vec3f endPos;
    f32 frameDivisor;
    f32 degrees;
    f32 radius;
    s32 cueChannel = this->cueChannel;

    startPos.x = play->csCtx.actorCues[cueChannel]->startPos.x;
    startPos.y = play->csCtx.actorCues[cueChannel]->startPos.y;
    startPos.z = play->csCtx.actorCues[cueChannel]->startPos.z;

    endPos.x = play->csCtx.actorCues[cueChannel]->endPos.x;
    endPos.y = play->csCtx.actorCues[cueChannel]->endPos.y;
    endPos.z = play->csCtx.actorCues[cueChannel]->endPos.z;

    frameDivisor = DemoEffect_InterpolateCsFrames(play, cueChannel);

    switch (this->jewel.type) {
        case DEMO_EFFECT_JEWEL_KOKIRI:
            degrees = 0.0f;
            break;
        case DEMO_EFFECT_JEWEL_GORON:
            degrees = 120.0f;
            break;
        case DEMO_EFFECT_JEWEL_ZORA:
            degrees = 240.0f;
            break;
    }

    radius = 50.0f * frameDivisor;
    if (radius > 30.0f) {
        radius = 30.0f;
    }

    if (startPos.x != endPos.x || startPos.y != endPos.y || startPos.z != endPos.z) {
        this->jewelCsRotation.x = RAD_TO_BINANG(Math_Atan2F(endPos.z - startPos.z, -(endPos.x - startPos.x)));
        this->jewelCsRotation.y = Math_Vec3f_Yaw(&startPos, &endPos);
    }

    this->jewelCsRotation.z += 0x0400;

    degrees += this->jewelCsRotation.z * (360.0f / 65536.0f);
    DemoEffect_MoveJewelSpherical(degrees, frameDivisor, startPos, endPos, radius, this->jewelCsRotation, this);
}

void DemoEffect_JewelSparkle(DemoEffect* this, PlayState* play, s32 spawnerCount) {
    Vec3f velocity;
    Vec3f accel;
    Color_RGBA8 primColor;
    Color_RGBA8 envColor;
    Color_RGB8* sparkleColors;
    s32 i;

    velocity.y = 0.0f;

    accel.x = 0.0f;
    accel.y = -0.1f;
    accel.z = 0.0f;

    sparkleColors = sJewelSparkleColors[this->jewel.type - DEMO_EFFECT_JEWEL_KOKIRI];

    primColor.r = sparkleColors[0].r;
    primColor.g = sparkleColors[0].g;
    primColor.b = sparkleColors[0].b;
    envColor.r = sparkleColors[1].r;
    envColor.g = sparkleColors[1].g;
    envColor.b = sparkleColors[1].b;
    primColor.a = 0;

    for (i = 0; i < spawnerCount; i++) {
        velocity.x = (Rand_ZeroOne() - 0.5f) * 1.5f;
        velocity.z = (Rand_ZeroOne() - 0.5f) * 1.5f;

        EffectSsKiraKira_SpawnDispersed(play, &this->actor.world.pos, &velocity, &accel, &primColor, &envColor, 3000,
                                        16);
    }
}

/**
 * Plays Jewel sound effects.
 * The sSfxJewelId global variable is used to ensure only one Jewel Actor is playing SFX when all are spawned.
 */
void DemoEffect_PlayJewelSfx(DemoEffect* this, PlayState* play) {
    if (!DemoEffect_CheckForCue(this, play, 1)) {
        if (this->actor.params == sSfxJewelId[0]) {
            Actor_PlaySfx_Flagged(&this->actor, NA_SE_EV_SPIRIT_STONE - SFX_FLAG);
        } else if (sSfxJewelId[0] == 0) {
            sSfxJewelId[0] = this->actor.params;
            Actor_PlaySfx_Flagged(&this->actor, NA_SE_EV_SPIRIT_STONE - SFX_FLAG);
        }
    }
}

/**
 * Update Function for the Jewel Actor that is run when Link is an adult.
 * This rotates the Jewel and updates a timer that is used to scroll Jewel textures.
 * There is a call SetJewelColor that does nothing since 1.0f is passed.
 * If a value of less than 1.0f were passed to SetJewelColor, then it would appear to drain the Jewel's color.
 * This can be seen in preprelease screenshots.
 */
void DemoEffect_UpdateJewelAdult(DemoEffect* this, PlayState* play) {
    this->jewel.timer++;
    this->actor.shape.rot.y += 0x0400;
    DemoEffect_PlayJewelSfx(this, play);
    DemoEffect_SetJewelColor(this, 1.0f);
}

/**
 * Update Function for the Jewel Actor that is run when Link is a child.
 * This rotates the Jewel and updates a timer that is used to scroll Jewel textures.
 * This also updates the Jewel's position based on different cutscenes.
 */
void DemoEffect_UpdateJewelChild(DemoEffect* this, PlayState* play) {
    s32 hasCue;
    Actor* thisx = &this->actor;

    this->jewel.timer++;

    if (play->csCtx.state && play->csCtx.actorCues[this->cueChannel]) {
        switch (play->csCtx.actorCues[this->cueChannel]->id) {
            case 3:
                if (GET_EVENTCHKINF(EVENTCHKINF_OPENED_DOOR_OF_TIME)) {
                    SET_EVENTCHKINF(EVENTCHKINF_OPENED_DOOR_OF_TIME);
                }
                DemoEffect_MoveJewelActivateDoorOfTime(this, play);
                if ((play->gameplayFrames & 1) == 0) {
                    DemoEffect_JewelSparkle(this, play, 1);
                }
                break;
            case 4:
                if (this->jewel.isPositionInit) {
                    DemoEffect_SetPosRotFromCue(this, play, this->cueChannel, 0);
                    DemoEffect_MoveJewelSplit(&thisx->world, this);
                    if ((play->gameplayFrames & 1) == 0) {
                        DemoEffect_JewelSparkle(this, play, 1);
                    }
                } else {
                    DemoEffect_SetStartPosFromCue(this, play, this->cueChannel);
                    DemoEffect_MoveJewelSplit(&thisx->world, this);
                    this->jewel.isPositionInit = 1;
                }
                break;
            case 6:
                Actor_Kill(thisx);
                return;
            default:
                DemoEffect_SetPosRotFromCue(this, play, this->cueChannel, 0);
                if (gSaveContext.save.entranceIndex == ENTR_TEMPLE_OF_TIME_0) {
                    DemoEffect_MoveJewelSplit(&thisx->world, this);
                }
                break;
        }
    }

    if (gSaveContext.save.entranceIndex == ENTR_TEMPLE_OF_TIME_0) {
        if (!GET_EVENTCHKINF(EVENTCHKINF_OPENED_DOOR_OF_TIME)) {
            hasCue = (play->csCtx.state != CS_STATE_IDLE) && (play->csCtx.actorCues[this->cueChannel] != NULL);

            if (!hasCue) {
                this->effectFlags |= 0x1;
                return;
            }
        }
    }

    thisx->shape.rot.y += 0x0400;
    DemoEffect_PlayJewelSfx(this, play);
    this->effectFlags &= ~1;
}

/**
 * Update Function for the Dust Actor.
 * This is the dust that is spawned in the Temple of Time during the Light Arrows cutscene.
 * This spawns the dust particles and increments a timer
 */
void DemoEffect_UpdateDust(DemoEffect* this, PlayState* play) {
    Vec3f pos;
    Vec3f velocity;
    Vec3f accel;

    if (play->csCtx.state != CS_STATE_IDLE && play->csCtx.actorCues[this->cueChannel] != NULL &&
        play->csCtx.actorCues[this->cueChannel]->id == 2) {
        pos = this->actor.world.pos;

        pos.y += 600.0f;
        pos.x += Rand_CenteredFloat(300.0f);
        pos.z += 200.0f + Rand_CenteredFloat(300.0f);

        velocity.z = 0.0f;
        velocity.x = 0.0f;
        velocity.y = -20.0f;

        accel.z = 0.0f;
        accel.x = 0.0f;
        accel.y = 0.2f;

        func_8002873C(play, &pos, &velocity, &accel, 300, 0, 30);

        this->dust.timer++;
    }
}

void DemoEffect_Update(Actor* thisx, PlayState* play) {
    DemoEffect* this = (DemoEffect*)thisx;
    this->updateFunc(this, play);
}

s32 DemoEffect_CheckForCue(DemoEffect* this, PlayState* play, s32 cueId) {
    if (play->csCtx.state != CS_STATE_IDLE && play->csCtx.actorCues[this->cueChannel] != NULL &&
        play->csCtx.actorCues[this->cueChannel]->id == cueId) {
        return 1;
    }

    return 0;
}

void DemoEffect_DrawJewel(Actor* thisx, PlayState* play2) {
    DemoEffect* this = (DemoEffect*)thisx;
    PlayState* play = play2;
    u32 frames = this->jewel.timer;

    OPEN_DISPS(play->state.gfxCtx, "../z_demo_effect.c", 2543);

    if (!DemoEffect_CheckForCue(this, play, 1)) {
        if (1) {}

        if (!(this->effectFlags & 0x1)) {
            switch (this->jewel.type) {
                case DEMO_EFFECT_JEWEL_KOKIRI:
                    gSPSegment(POLY_XLU_DISP++, 9,
                               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, (frames * 4) % 256,
                                                (256 - ((frames * 2) % 256)) - 1, 64, 64, 1, (frames * 2) % 256,
                                                (256 - (frames % 256)) - 1, 16, 16));
                    break;

                case DEMO_EFFECT_JEWEL_GORON:
                    gSPSegment(POLY_XLU_DISP++, 9,
                               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, (frames * 4) % 128,
                                                (256 - ((frames * 2) % 256)) - 1, 32, 64, 1, (frames * 2) % 256,
                                                (256 - (frames % 256)) - 1, 16, 8));
                    break;

                case DEMO_EFFECT_JEWEL_ZORA:
                    gSPSegment(POLY_XLU_DISP++, 9,
                               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, (frames * 4) % 256,
                                                (256 - ((frames * 2) % 256)) - 1, 32, 32, 1, (frames * 2) % 256,
                                                (256 - (frames % 256)) - 1, 16, 16));
                    break;
            }

            if (!frames) {}

            gSPSegment(POLY_OPA_DISP++, 8, Gfx_TexScroll(play->state.gfxCtx, (u8)frames, (u8)frames, 16, 16));
            MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_demo_effect.c", 2597);
            MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_demo_effect.c", 2599);
            Gfx_SetupDL_25Xlu(play->state.gfxCtx);
            func_8002ED80(&this->actor, play, 0);
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 128, this->primXluColor[0], this->primXluColor[1],
                            this->primXluColor[2], 255);
            gDPSetEnvColor(POLY_XLU_DISP++, this->envXluColor[0], this->envXluColor[1], this->envXluColor[2], 255);
            gSPDisplayList(POLY_XLU_DISP++, this->jewelDisplayList);
            Gfx_SetupDL_25Opa(play->state.gfxCtx);
            func_8002EBCC(&this->actor, play, 0);
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 128, this->primOpaColor[0], this->primOpaColor[1],
                            this->primOpaColor[2], 255);
            gDPSetEnvColor(POLY_OPA_DISP++, this->envOpaColor[0], this->envOpaColor[1], this->envOpaColor[2], 255);
            gSPDisplayList(POLY_OPA_DISP++, this->jewelHolderDisplayList);
        }
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_demo_effect.c", 2620);
}

void DemoEffect_DrawCrystalLight(Actor* thisx, PlayState* play) {
    DemoEffect* this = (DemoEffect*)thisx;
    DemoEffect* parent = (DemoEffect*)this->actor.parent;
    u32 frames = play->gameplayFrames & 0xFFFF;

    OPEN_DISPS(play->state.gfxCtx, "../z_demo_effect.c", 2634);

    if (parent != NULL) {
        gDPSetPrimColor(POLY_XLU_DISP++, 128, 128, 255, 255, 170, parent->triforceSpot.crystalLightOpacity);
    } else {
        gDPSetPrimColor(POLY_XLU_DISP++, 128, 128, 255, 255, 170, 255);
    }

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);

    gSPSegment(POLY_XLU_DISP++, 8,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, (frames * 2) % 512, 512 - (frames % 512) - 1, 128,
                                128, 1, 512 - ((frames * 2) % 512) - 1, 0, 64, 64));
    Matrix_Push();
    Matrix_RotateY(0.0f, MTXMODE_APPLY);
    Matrix_RotateX(DEG_TO_RAD(11), MTXMODE_APPLY);
    Matrix_Translate(0.0f, 150.0f, 0.0f, MTXMODE_APPLY);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_demo_effect.c", 2661);
    gSPDisplayList(POLY_XLU_DISP++, gCrystalLightDL);
    Matrix_Pop();
    Matrix_Push();
    Matrix_RotateY(DEG_TO_RAD(120), MTXMODE_APPLY);
    Matrix_RotateX(DEG_TO_RAD(11), MTXMODE_APPLY);
    Matrix_Translate(0.0f, 150.0f, 0.0f, MTXMODE_APPLY);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_demo_effect.c", 2672);
    gSPDisplayList(POLY_XLU_DISP++, gCrystalLightDL);
    Matrix_Pop();
    Matrix_Push();
    Matrix_RotateY(DEG_TO_RAD(240), MTXMODE_APPLY);
    Matrix_RotateX(DEG_TO_RAD(11), MTXMODE_APPLY);
    Matrix_Translate(0.0f, 150.0f, 0.0f, MTXMODE_APPLY);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_demo_effect.c", 2683);
    gSPDisplayList(POLY_XLU_DISP++, gCrystalLightDL);
    Matrix_Pop();
    CLOSE_DISPS(play->state.gfxCtx, "../z_demo_effect.c", 2688);
}

void DemoEffect_DrawFireBall(Actor* thisx, PlayState* play) {
    DemoEffect* this = (DemoEffect*)thisx;
    u32 frames = play->gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_demo_effect.c", 2701);
    gDPSetPrimColor(POLY_XLU_DISP++, 64, 64, 255, 200, 0, 255);
    gDPSetEnvColor(POLY_XLU_DISP++, 255, 0, 0, 255);
    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_demo_effect.c", 2709);
    gSPMatrix(POLY_XLU_DISP++, play->billboardMtx, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
    gSPSegment(POLY_XLU_DISP++, 8,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, 0, 32, 32, 1, 0,
                                128 - ((frames * 20) % 128) - 1, 32, 32));
    gSPDisplayList(POLY_XLU_DISP++, gCreationFireBallDL);
    CLOSE_DISPS(play->state.gfxCtx, "../z_demo_effect.c", 2723);
}

/**
 * This draws either Din, Nayru, or Farore based on the colors set in the DemoEffect struct.
 */
void DemoEffect_DrawGodLgt(Actor* thisx, PlayState* play) {
    DemoEffect* this = (DemoEffect*)thisx;
    s32 pad;
    u32 frames = play->gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_demo_effect.c", 2737);

    if (!DemoEffect_CheckForCue(this, play, 2)) {
        if (gSaveContext.save.entranceIndex == ENTR_CUTSCENE_MAP_0) {
            if (gSaveContext.sceneLayer == 4) {
                if (play->csCtx.curFrame <= 680) {
                    Sfx_PlaySfxAtPos(&this->actor.projectedPos, NA_SE_EV_GOD_FLYING - SFX_FLAG);
                }
            } else {
                Sfx_PlaySfxAtPos(&this->actor.projectedPos, NA_SE_EV_GOD_FLYING - SFX_FLAG);
            }
        } else {
            Sfx_PlaySfxAtPos(&this->actor.projectedPos, NA_SE_EV_GOD_FLYING - SFX_FLAG);
        }

        gSPSegment(POLY_XLU_DISP++, 8,
                   Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, (frames * 4) % 512, 0, 128, 64, 1,
                                    (frames * 2) % 256, 512 - ((frames * 70) % 512) - 1, 64, 32));
        gSPSegment(POLY_XLU_DISP++, 9,
                   Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, 0, 16, 96, 1, (frames * 10) % 256,
                                    256 - ((frames * 30) % 512) - 1, 8, 32));
        gDPSetPrimColor(POLY_XLU_DISP++, 128, 128, this->primXluColor[0], this->primXluColor[1], this->primXluColor[2],
                        255);
        gDPSetEnvColor(POLY_XLU_DISP++, this->envXluColor[0], this->envXluColor[1], this->envXluColor[2], 255);
        Gfx_SetupDL_25Xlu(play->state.gfxCtx);
        Matrix_Push();
        MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_demo_effect.c", 2801);
        gSPDisplayList(POLY_XLU_DISP++, gGoldenGoddessAuraDL);
        Gfx_SetupDL_25Opa(play->state.gfxCtx);
        func_8002EBCC(&this->actor, play, 0);
        Matrix_Pop();

        this->godLgt.rotation++;
        if (this->godLgt.rotation > 120) {
            this->godLgt.rotation = 0;
            if (1) {}
        }

        Matrix_RotateZ(DEG_TO_RAD(((s32)this->godLgt.rotation) * 3.0f), MTXMODE_APPLY);
        Matrix_RotateX(M_PI / 2.0f, MTXMODE_APPLY);
        Matrix_Translate(0.0f, -140.0f, 0.0f, MTXMODE_APPLY);
        Matrix_Scale(0.03f, 0.03f, 0.03f, MTXMODE_APPLY);
        MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_demo_effect.c", 2824);
        gSPDisplayList(POLY_OPA_DISP++, gGoldenGoddessBodyDL);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_demo_effect.c", 2829);
}

void DemoEffect_DrawLightEffect(Actor* thisx, PlayState* play) {
    DemoEffect* this = (DemoEffect*)thisx;
    uintptr_t flashDList = (uintptr_t)gEffFlash1DL;
    s32 pad2;

    OPEN_DISPS(play->state.gfxCtx, "../z_demo_effect.c", 2842);

    if (!DemoEffect_CheckForCue(this, play, 1)) {
        if (this->light.flicker == 0) {
            this->light.flicker = 1;
        } else {
            Gfx_SetupDL_25Xlu(play->state.gfxCtx);
            // `(*this).light.alpha` is probably fake and indicates that `alpha`
            // may have been part of an array (possibly a "workbuf" array
            // instead of the union of structs we have now).
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 128, this->primXluColor[0], this->primXluColor[1],
                            this->primXluColor[2], (*this).light.alpha);
            gDPSetEnvColor(POLY_XLU_DISP++, this->envXluColor[0], this->envXluColor[1], this->envXluColor[2], 255);
            Matrix_Scale(((this->light.scaleFlag & 1) * 0.05f) + 1.0f, ((this->light.scaleFlag & 1) * 0.05f) + 1.0f,
                         ((this->light.scaleFlag & 1) * 0.05f) + 1.0f, MTXMODE_APPLY);
            Matrix_Push();
            Matrix_Mult(&play->billboardMtxF, MTXMODE_APPLY);
            Matrix_RotateZ(DEG_TO_RAD(this->light.rotation), MTXMODE_APPLY);
            MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_demo_effect.c", 2866);
            gSPDisplayList(POLY_XLU_DISP++, flashDList);
            Matrix_Pop();
            Matrix_Mult(&play->billboardMtxF, MTXMODE_APPLY);
            Matrix_RotateZ(DEG_TO_RAD(-(f32)this->light.rotation), MTXMODE_APPLY);
            MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_demo_effect.c", 2874);
            gSPDisplayList(POLY_XLU_DISP++, flashDList);
        }
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_demo_effect.c", 2881);
}

void DemoEffect_DrawBlueOrb(Actor* thisx, PlayState* play) {
    DemoEffect* this = (DemoEffect*)thisx;
    s32 pad2;

    OPEN_DISPS(play->state.gfxCtx, "../z_demo_effect.c", 2892);
    gDPSetPrimColor(POLY_XLU_DISP++, 128, 128, 188, 255, 255, this->blueOrb.alpha);
    gDPSetEnvColor(POLY_XLU_DISP++, 0, 100, 255, 255);
    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    Matrix_Mult(&play->billboardMtxF, MTXMODE_APPLY);
    Matrix_RotateZ(BINANG_TO_RAD(this->blueOrb.rotation), MTXMODE_APPLY);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_demo_effect.c", 2901);
    this->blueOrb.rotation += 0x01F4;
    gSPDisplayList(POLY_XLU_DISP++, gEffFlash1DL);
    CLOSE_DISPS(play->state.gfxCtx, "../z_demo_effect.c", 2907);
}

void DemoEffect_DrawLgtShower(Actor* thisx, PlayState* play) {
    DemoEffect* this = (DemoEffect*)thisx;
    s32 pad;
    u32 frames = play->gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_demo_effect.c", 2921);
    gDPSetPrimColor(POLY_XLU_DISP++, 64, 64, 255, 255, 160, this->lgtShower.alpha);
    gDPSetEnvColor(POLY_XLU_DISP++, 50, 200, 0, 255);
    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_demo_effect.c", 2927);
    gSPSegment(POLY_XLU_DISP++, 8,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, (frames * 5) % 1024, 0, 256, 64, 1,
                                (frames * 10) % 128, 512 - ((frames * 50) % 512), 32, 16));
    gSPDisplayList(POLY_XLU_DISP++, gEnliveningLightDL);
    CLOSE_DISPS(play->state.gfxCtx, "../z_demo_effect.c", 2942);
}

void DemoEffect_DrawLightRing(Actor* thisx, PlayState* play2) {
    DemoEffect* this = (DemoEffect*)thisx;
    PlayState* play = play2;
    u32 frames = this->lightRing.timer;

    OPEN_DISPS(play->state.gfxCtx, "../z_demo_effect.c", 2956);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    gDPSetPrimColor(POLY_XLU_DISP++, 128, 128, 170, 255, 255, this->lightRing.alpha);
    gDPSetEnvColor(POLY_XLU_DISP++, 0, 100, 255, 255);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_demo_effect.c", 2963);
    gSPSegment(POLY_XLU_DISP++, 8,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, (frames * 5) % 64, 512 - ((frames * 2) % 512) - 1,
                                16, 128, 1, 0, 0, 8, 1024));
    gSPDisplayList(POLY_XLU_DISP++, gGoldenGoddessLightRingDL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_demo_effect.c", 2978);
}

void DemoEffect_DrawTriforceSpot(Actor* thisx, PlayState* play) {
    DemoEffect* this = (DemoEffect*)thisx;
    s32 pad;
    Vtx* vertices = SEGMENTED_TO_VIRTUAL(gTriforceVtx);
    u32 frames = play->gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_demo_effect.c", 2994);
    if (gSaveContext.save.entranceIndex != ENTR_CASTLE_COURTYARD_ZELDA_0 || play->csCtx.curFrame < 885) {
        Gfx_SetupDL_25Xlu(play->state.gfxCtx);

        if (this->triforceSpot.lightColumnOpacity > 0) {
            Actor_PlaySfx(&this->actor, NA_SE_EV_AURORA - SFX_FLAG);
            Matrix_Push();
            Matrix_Scale(1.0f, 2.4f, 1.0f, MTXMODE_APPLY);
            MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_demo_effect.c", 3011);
            gSPSegment(POLY_XLU_DISP++, 9,
                       Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, 256 - ((frames * 4) % 256) - 1, 64, 64,
                                        1, 0, 256 - ((frames * 2) % 256) - 1, 64, 32));
            vertices[86].n.a = vertices[87].n.a = vertices[88].n.a = vertices[89].n.a = vertices[92].n.a =
                vertices[93].n.a = vertices[94].n.a = vertices[95].n.a = (s8)this->triforceSpot.lightColumnOpacity;
            gDPSetPrimColor(POLY_XLU_DISP++, 128, 128, 180, 255, 255, this->triforceSpot.lightColumnOpacity);
            gDPSetEnvColor(POLY_XLU_DISP++, 0, 255, 150, 255);
            gSPDisplayList(POLY_XLU_DISP++, gTriforceLightColumnDL);
            Matrix_Pop();
        }

        if (this->triforceSpot.triforceSpotOpacity != 0) {
            Actor_PlaySfx(&this->actor, NA_SE_EV_TRIFORCE - SFX_FLAG);
            MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_demo_effect.c", 3042);

            if (this->triforceSpot.triforceSpotOpacity < 250) {
                func_8002ED80(&this->actor, play, 0);
                Gfx_SetupDL_25Xlu(play->state.gfxCtx);
                gDPSetRenderMode(POLY_XLU_DISP++, G_RM_PASS, G_RM_AA_ZB_XLU_SURF2);
                Matrix_RotateY(BINANG_TO_RAD(this->triforceSpot.rotation), MTXMODE_APPLY);
                MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_demo_effect.c", 3053);
                gSPSegment(POLY_XLU_DISP++, 8,
                           Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, 0, 32, 16, 1, 0, 0, 16, 8));
                gDPSetPrimColor(POLY_XLU_DISP++, 128, 128, 255, 255, 160, this->triforceSpot.triforceSpotOpacity);
                gDPSetEnvColor(POLY_XLU_DISP++, 170, 140, 0, 255);
                gSPDisplayList(POLY_XLU_DISP++, gTriforceDL);
            } else {
                func_8002EBCC(&this->actor, play, 0);
                Gfx_SetupDL_25Opa(play->state.gfxCtx);
                gDPSetRenderMode(POLY_OPA_DISP++, G_RM_PASS, G_RM_AA_ZB_OPA_SURF2);
                Matrix_RotateY(BINANG_TO_RAD(this->triforceSpot.rotation), MTXMODE_APPLY);
                MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_demo_effect.c", 3085);
                gSPSegment(POLY_OPA_DISP++, 8,
                           Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, 0, 32, 16, 1, 0, 0, 16, 8));
                gDPSetPrimColor(POLY_OPA_DISP++, 128, 128, 255, 255, 160, 255);
                gDPSetEnvColor(POLY_OPA_DISP++, 170, 140, 0, 255);
                gSPDisplayList(POLY_OPA_DISP++, gTriforceDL);
            }
        }
    }
    CLOSE_DISPS(play->state.gfxCtx, "../z_demo_effect.c", 3112);
}

/**
 * This is either Medals or Light Arrows based on the drawId.
 */
void DemoEffect_DrawGetItem(Actor* thisx, PlayState* play) {
    DemoEffect* this = (DemoEffect*)thisx;
    if (!DemoEffect_CheckForCue(this, play, 1) && !DemoEffect_CheckForCue(this, play, 4)) {
        if (!this->getItem.isLoaded) {
            this->getItem.isLoaded = 1;
            return;
        }
        func_8002EBCC(thisx, play, 0);
        func_8002ED80(thisx, play, 0);
        GetItem_Draw(play, this->getItem.drawId);
    }
}

s32 DemoEffect_OverrideLimbDrawTimeWarp(PlayState* play, SkelCurve* skelCurve, s32 limbIndex, void* thisx) {
    s32 pad;
    DemoEffect* this = (DemoEffect*)thisx;
    u32 frames = play->gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_demo_effect.c", 3154);
    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 128, 170, 255, 255, 255);
    gDPSetEnvColor(POLY_XLU_DISP++, this->envXluColor[0], this->envXluColor[1], this->envXluColor[2], 255);
    gSPSegment(POLY_XLU_DISP++, 8,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, (frames * 6) % 1024,
                                256 - ((frames * 16) % 256) - 1, 256, 64, 1, (frames * 4) % 512,
                                128 - ((frames * 12) % 128) - 1, 128, 32));
    CLOSE_DISPS(play->state.gfxCtx, "../z_demo_effect.c", 3172);

    if (limbIndex == 0) {
        s16* transform = skelCurve->jointTable[0];

        transform[2] = transform[0] = 1024;
        transform[1] = 1024;
    }

    return true;
}

void DemoEffect_DrawTimeWarp(Actor* thisx, PlayState* play) {
    GraphicsContext* gfxCtx = play->state.gfxCtx;
    DemoEffect* this = (DemoEffect*)thisx;
    u8 effectType = PARAMS_GET_S(this->actor.params, 0, 8);

    if (effectType == DEMO_EFFECT_TIMEWARP_TIMEBLOCK_LARGE || effectType == DEMO_EFFECT_TIMEWARP_TIMEBLOCK_SMALL ||
        CutsceneFlags_Get(play, 1) || IS_CUTSCENE_LAYER || gSaveContext.save.entranceIndex == ENTR_TEMPLE_OF_TIME_4) {
        OPEN_DISPS(gfxCtx, "../z_demo_effect.c", 3201);

        POLY_XLU_DISP = Gfx_SetupDL(POLY_XLU_DISP, SETUPDL_25);
        Matrix_Scale(2.0f, 2.0f, 2.0f, MTXMODE_APPLY);
        SkelCurve_Draw(&this->actor, play, &this->skelCurve, DemoEffect_OverrideLimbDrawTimeWarp, NULL, 1,
                       &this->actor);

        CLOSE_DISPS(gfxCtx, "../z_demo_effect.c", 3216);
    }
}

void DemoEffect_FaceTowardPoint(DemoEffect* this, Vec3f startPos, Vec3f endPos) {
    s32 pad;
    f32 x = endPos.x - startPos.x;
    f32 z = endPos.z - startPos.z;
    f32 xzDistance = sqrtf(SQ(x) + SQ(z));

    this->actor.shape.rot.y = RAD_TO_BINANG(Math_FAtan2F(x, z));
    this->actor.shape.rot.x = RAD_TO_BINANG(Math_FAtan2F(-(endPos.y - startPos.y), xzDistance));
}

void DemoEffect_SetPosRotFromCue(DemoEffect* this, PlayState* play, s32 cueChannel, s32 shouldUpdateFacing) {
    Vec3f startPos;
    Vec3f endPos;
    f32 speed;

    startPos.x = play->csCtx.actorCues[cueChannel]->startPos.x;
    startPos.y = play->csCtx.actorCues[cueChannel]->startPos.y;
    startPos.z = play->csCtx.actorCues[cueChannel]->startPos.z;

    endPos.x = play->csCtx.actorCues[cueChannel]->endPos.x;
    endPos.y = play->csCtx.actorCues[cueChannel]->endPos.y;
    endPos.z = play->csCtx.actorCues[cueChannel]->endPos.z;

    speed = DemoEffect_InterpolateCsFrames(play, cueChannel);

    this->actor.world.pos.x = ((endPos.x - startPos.x) * speed) + startPos.x;
    this->actor.world.pos.y = ((endPos.y - startPos.y) * speed) + startPos.y;
    this->actor.world.pos.z = ((endPos.z - startPos.z) * speed) + startPos.z;

    if (shouldUpdateFacing) {
        DemoEffect_FaceTowardPoint(this, startPos, endPos);
    }
}

void DemoEffect_MoveTowardCuePos(DemoEffect* this, PlayState* play, s32 cueChannel, f32 speed) {
    Vec3f endPos;

    endPos.x = play->csCtx.actorCues[cueChannel]->endPos.x;
    endPos.y = play->csCtx.actorCues[cueChannel]->endPos.y;
    endPos.z = play->csCtx.actorCues[cueChannel]->endPos.z;

    DemoEffect_MoveTowardTarget(endPos, this, speed);
}

void DemoEffect_SetStartPosFromCue(DemoEffect* this, PlayState* play, s32 cueChannel) {
    f32 x = play->csCtx.actorCues[cueChannel]->startPos.x;
    f32 y = play->csCtx.actorCues[cueChannel]->startPos.y;
    f32 z = play->csCtx.actorCues[cueChannel]->startPos.z;

    this->actor.world.pos.x = x;
    this->actor.world.pos.y = y;
    this->actor.world.pos.z = z;
}
