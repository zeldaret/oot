#include "z_demo_effect.h"

#define FLAGS 0x00000030

#define THIS ((DemoEffect*)thisx)

void DemoEffect_Init(Actor* thisx, GlobalContext* globalCtx);
void DemoEffect_Destroy(Actor* thisx, GlobalContext* globalCtx);
void DemoEffect_Update(Actor* thisx, GlobalContext* globalCtx);

void DemoEffect_DrawCrystalLight(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_DrawFireBall(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_DrawBlueOrb(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_DrawLgtShower(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_DrawGodLgt(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_DrawLightRing(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_DrawTriforceSpot(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_DrawGetItem(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_DrawLightEffect(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_DrawTimeWarp(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_DrawJewel(DemoEffect* this, GlobalContext* globalCtx);

void DemoEffect_Wait(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_InitTimeWarp(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_InitTimeWarpTimeblock(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_InitCreationFireball(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_InitJewel(GlobalContext* globalCtx, DemoEffect* this);
void DemoEffect_InitJewelColor(DemoEffect* this);
void DemoEffect_InitGetItem(DemoEffect* this);

void DemoEffect_UpdateCrystalLight(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_UpdatePositionToParent(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_UpdateBlueOrb(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_UpdateLgtShower(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_UpdateGodLgtDin(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_UpdateGodLgtNayru(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_UpdateGodLgtFarore(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_UpdateLightRingExpanding(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_UpdateTriforceSpot(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_UpdateGetItem(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_UpdateLightRingShrinking(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_UpdateLightRingTriforce(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_UpdateLightEffect(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_UpdateJewelChild(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_UpdateJewelAdult(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_UpdateDust(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_UpdateCreationFireball(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_UpdateBlueOrbShrink(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_UpdateTimeWarpReturnFromChamberOfSages(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_UpdateTimeWarpPullMasterSword(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_UpdateTimeWarpTimeblock(DemoEffect* this, GlobalContext* globalCtx);

void DemoEffect_SetupUpdate(DemoEffect* this, DemoEffectFunc updateFunc);
void DemoEffect_JewelSparkle(DemoEffect* this, GlobalContext* globalCtx, s32 spawnerCount);
void DemoEffect_MedalSparkle(DemoEffect* this, GlobalContext* globalCtx, s32 arg2);
void DemoEffect_PlayJewelSfx(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_SetJewelColor(DemoEffect* this, f32 alpha);
void DemoEffect_MoveJewelCs(PosRot* posRot, DemoEffect* this);
void DemoEffect_MoveJewelCsActivateDoorOfTime(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_MoveJewelSpherical(f32 degrees, f32 frameDivisor, Vec3f startPos, Vec3f endPos, f32 radius, Vec3s rotation, DemoEffect* this);
void DemoEffect_TimewarpShrink(f32 size);
s32 DemoEffect_DrawTimewarpLimbs(GlobalContext* globalCtx, SkelAnimeCurve* skelCuve, s32 limbIndex, Actor* thisx);
s32 DemoEffect_CheckCsAction(DemoEffect* this, GlobalContext* globalCtx, s32 csActionCompareId);
f32 DemoEffect_InterpolateCsFrames(GlobalContext* globalCtx, s32 csActionId);
void DemoEffect_InitPositionFromCsAction(DemoEffect* this, GlobalContext* globalCtx, s32 csActionIndex);
void DemoEffect_FaceToCsEndpoint(DemoEffect* this, Vec3f startPos, Vec3f endPos);
void DemoEffect_MoveToCsEndpoint(DemoEffect* this, GlobalContext* globalCtx, s32 csActionId, s32 shouldUpdateFacing);
void DemoEffect_MoveTowardTarget(Vec3f targetPos, DemoEffect* this, f32 speed);
void DemoEffect_MoveMedalCs(DemoEffect* this, GlobalContext* globalCtx, s32 csActionId, f32 speed);

// gameplay_keep
extern Gfx lightBall[];

extern Gfx kokiriJewel[];
extern Gfx kokiriJewelHolder[];
extern Gfx goronJewel[];
extern Gfx goronJewelHolder[];
extern Gfx zoraJewel[];
extern Gfx zoraJewelHolder[];
extern Gfx fireBall[];
extern Gfx lightRing[];
extern Gfx godLgtTrail[];
extern Gfx godLgt[];
extern Gfx triforceSpot[];
extern Gfx triforceLightColumn[];
extern Gfx crystalLight[];
extern Gfx lgtShower[];

extern Vtx triforceLightColumnVertices[];
extern Vtx timewarpVertices[];

extern TransformUpdateIndex timewarpTransformUpdateIndex;
extern SkelCurveLimbList timewarpLimbList;

const ActorInit Demo_Effect_InitVars = {
    ACTOR_DEMO_EFFECT,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(DemoEffect),
    (ActorFunc)DemoEffect_Init,
    (ActorFunc)DemoEffect_Destroy,
    (ActorFunc)DemoEffect_Update,
    NULL,
};

// Code only matches when this is an array, but the second element isn't used. This variable assures only one jewel will play SFX
s16 sfxJewelId[] = { 0, 0 };

// The object used by the effectType
s16 effectTypeObjects[] = {
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
    /* 0x19 */ OBJECT_EFC_TW
};

u8 timewarpVertexSizeIndices[] = {
    1, 1, 2, 0, 1, 1, 2, 0, 1, 2, 0, 2,
    1, 0, 1, 0, 2, 0, 2, 2, 0
};

Color_RGB8 jewelSparkleColors[5][2] = { { { 0xFF, 0xFF, 0xFF }, { 0x64, 0xFF, 0x00 } },
                                { { 0xFF, 0xFF, 0xFF }, { 0xC8, 0x00, 0x96 } },
                                { { 0xFF, 0xFF, 0xFF }, { 0x00, 0x64, 0xFF } },
                                { { 0x00, 0x00, 0x00 }, { 0x00, 0x00, 0x00 } },
                                { { 0xDF, 0x00, 0x00 }, { 0x00, 0x00, 0x00 } } };

void DemoEffect_SetupUpdate(DemoEffect* this, DemoEffectFunc updateFunc) {
    this->updateFunc = updateFunc;
}

f32 DemoEffect_InterpolateCsFrames(GlobalContext* globalCtx, s32 csActionId) {
    f32 interpolated = func_8006F93C(globalCtx->csCtx.npcActions[csActionId]->endFrame,
                                     globalCtx->csCtx.npcActions[csActionId]->startFrame, globalCtx->csCtx.frames);
    if (interpolated > 1.0f) {
        interpolated = 1.0f;
    }
    return interpolated;
}

void DemoEffect_InitJewel(GlobalContext* globalCtx, DemoEffect* this) {
    this->initDrawFunc = &DemoEffect_DrawJewel;
    if (LINK_IS_CHILD) {
        this->initUpdateFunc = &DemoEffect_UpdateJewelChild;
    } else {
        this->initUpdateFunc = &DemoEffect_UpdateJewelAdult;
    }
    if (globalCtx->sceneNum == SCENE_TOKINOMA) {
        Actor_SetScale(&this->actor, 0.35f);
    } else {
        Actor_SetScale(&this->actor, 0.10f);
    }
    this->csActionId = 1;
    this->actor.shape.rot.x = 16384;
    DemoEffect_InitJewelColor(this);
    this->jewelCsRotation.z = 0;
    this->jewel.opacity = 0;
    this->jewelCsRotation.x = this->jewelCsRotation.y = this->jewelCsRotation.z;
    sfxJewelId[0] = 0;
}

void DemoEffect_InitGetItem(DemoEffect* this) {
    this->getItem.isPositionInit = 0;
    this->getItem.isLoaded = 0;
    this->initDrawFunc = &DemoEffect_DrawGetItem;
    this->initUpdateFunc = &DemoEffect_UpdateGetItem;
    Actor_SetScale(&this->actor, 0.25f);
    this->csActionId = 6;
}

void DemoEffect_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    DemoEffect* this = THIS;
    s32 effectType;
    s32 lightEffect;
    s32 objectIndex;
    DemoEffect* crystalLight;
    DemoEffect* lightRing;

    effectType = GET_EFFECT_TYPE(&this->actor);
    lightEffect = GET_LIGHT_EFFECT_COLOR_PARAM(&this->actor);

    osSyncPrintf("\x1b[36m no = %d\n\x1b[m", effectType);

    objectIndex =
        effectTypeObjects[effectType] == 1 ? 0 : Object_GetIndex(&globalCtx->objectCtx, effectTypeObjects[effectType]);

    osSyncPrintf("\x1b[36m bank_ID = %d\n\x1b[m", objectIndex);

    if (objectIndex < 0) {
        __assert("0", "../z_demo_effect.c", 723);
    } else {
        this->initObjectBankIndex = objectIndex;
    }

    this->effectFlags = 0;
    Actor_SetScale(&this->actor, 0.2f);

    switch (effectType) {
        case Demo_Effect_Crystal_Light:
            this->initDrawFunc = &DemoEffect_DrawCrystalLight;
            this->initUpdateFunc = &DemoEffect_UpdateCrystalLight;
            break;

        case Demo_Effect_Fire_Ball:
            this->initDrawFunc = &DemoEffect_DrawFireBall;
            this->initUpdateFunc = &DemoEffect_UpdatePositionToParent;
            Actor_SetScale(&this->actor, 0.1f);
            break;

        case Demo_Effect_Blue_Orb:
            this->initDrawFunc = &DemoEffect_DrawBlueOrb;
            this->initUpdateFunc = &DemoEffect_UpdateBlueOrb;
            this->blueOrb.opacity = 255;
            this->blueOrb.scale = 5;
            this->blueOrb.rotation = 0;
            Actor_SetScale(&this->actor, 0.05f);
            this->primXluColor[0] = 0xBC;
            this->primXluColor[1] = 0xFF;
            this->primXluColor[2] = 0xFF;
            this->envXluColor[1] = 0x64;
            this->envXluColor[2] = 0xFF;
            this->envXluColor[0] = 0x00;
            break;

        case Demo_Effect_Light_Effect:
            this->initDrawFunc = &DemoEffect_DrawLightEffect;
            this->initUpdateFunc = &DemoEffect_UpdateLightEffect;
            this->lightEffect.opacity = 255;
            this->lightEffect.scaleFlag = 0;
            this->lightEffect.flicker = 0;
            this->lightEffect.rotation = 0;
            // TODO: lightEffect enums
            switch (lightEffect) {
                case 0:
                    this->primXluColor[0] = 0xFF;
                    this->primXluColor[1] = 0xFF;
                    this->primXluColor[2] = 0xFF;
                    this->envXluColor[1] = 0x32;
                    this->envXluColor[0] = 0xFF;
                    this->envXluColor[2] = 0x00;
                    break;

                case 1:
                    this->primXluColor[0] = 0xFF;
                    this->primXluColor[1] = 0xFF;
                    this->primXluColor[2] = 0xFF;
                    this->envXluColor[1] = 0x96;
                    this->envXluColor[0] = 0x00;
                    this->envXluColor[2] = 0xFF;
                    break;

                case 2:
                    this->primXluColor[0] = 0xFF;
                    this->primXluColor[1] = 0xFF;
                    this->primXluColor[2] = 0xFF;
                    this->envXluColor[1] = 0xC8;
                    this->envXluColor[0] = 0x00;
                    this->envXluColor[2] = 0x00;
                    break;

                case 3:
                    this->primXluColor[0] = 0xFF;
                    this->primXluColor[1] = 0xFF;
                    this->primXluColor[2] = 0xFF;
                    this->envXluColor[1] = 0x96;
                    this->envXluColor[0] = 0xFF;
                    this->envXluColor[2] = 0x00;
                    break;

                case 4:
                    this->primXluColor[0] = 0xFF;
                    this->primXluColor[1] = 0xFF;
                    this->primXluColor[2] = 0xFF;
                    this->envXluColor[0] = 0xC8;
                    this->envXluColor[1] = 0xFF;
                    this->envXluColor[2] = 0x00;
                    break;

                case 5:
                    this->primXluColor[0] = 0xFF;
                    this->primXluColor[1] = 0xFF;
                    this->primXluColor[2] = 0xFF;
                    // clang-format off
                    this->envXluColor[0] = 0xC8; this->envXluColor[1] = 0x32; this->envXluColor[2] = 0xFF; // Sameline prevents reordering
                    // clang-format on
                    break;

                case 6:
                    this->primXluColor[0] = 0xFF;
                    this->primXluColor[1] = 0xFF;
                    this->primXluColor[2] = 0xFF;
                    this->envXluColor[1] = 0xC8;
                    this->envXluColor[0] = 0x00;
                    this->envXluColor[2] = 0x00;
                    break;
            }
            this->csActionId = 7;
            Actor_SetScale(thisx, 0.0f);
            break;

        case Demo_Effect_Lgt_Shower:
            this->lgtShower.opacity = 255;
            this->initDrawFunc = &DemoEffect_DrawLgtShower;
            this->initUpdateFunc = &DemoEffect_UpdateLgtShower;
            break;

        case Demo_Effect_God_Lgt_Din:
            Actor_SetScale(&this->actor, 0.1f);
            this->initDrawFunc = &DemoEffect_DrawGodLgt;
            this->primXluColor[1] = 0xAA;
            this->primXluColor[0] = 0xFF;
            this->primXluColor[2] = 0xFF;
            this->envXluColor[0] = 0xFF;
            this->envXluColor[2] = 0xFF;
            this->envXluColor[1] = 0x00;
            this->godLgt.type = 0;
            this->godLgt.rotation = 0;
            this->initUpdateFunc = &DemoEffect_UpdateGodLgtDin;
            this->csActionId = 0;
            break;

        case Demo_Effect_God_Lgt_Nayru:
            if (gSaveContext.entranceIndex == 0x013D) {
                Actor_SetScale(&this->actor, 1.0f);
            } else {
                Actor_SetScale(&this->actor, 0.1f);
            }
            this->initDrawFunc = &DemoEffect_DrawGodLgt;
            this->primXluColor[0] = 0xAA;
            this->primXluColor[1] = 0xFF;
            this->primXluColor[2] = 0xFF;
            this->envXluColor[1] = 0x28;
            this->envXluColor[2] = 0xFF;
            this->envXluColor[0] = 0x00;
            this->godLgt.type = 1;
            this->godLgt.lightRingSpawnDelay = 4;
            this->godLgt.rotation = 0;
            this->godLgt.lightRingSpawnTimer = 0;
            this->initUpdateFunc = &DemoEffect_UpdateGodLgtNayru;
            this->csActionId = 1;
            break;

        case Demo_Effect_God_Lgt_Farore:
            if (gSaveContext.entranceIndex == 0x00EE) {
                Actor_SetScale(&this->actor, 2.4f);
            } else {
                Actor_SetScale(&this->actor, 0.1f);
            }
            this->initDrawFunc = &DemoEffect_DrawGodLgt;
            this->primXluColor[0] = 0xAA;
            this->primXluColor[2] = 0xAA;
            this->primXluColor[1] = 0xFF;
            this->envXluColor[1] = 0xC8;
            this->envXluColor[0] = 0x00;
            this->envXluColor[2] = 0x00;
            this->godLgt.type = 2;
            this->godLgt.rotation = 0;
            this->initUpdateFunc = &DemoEffect_UpdateGodLgtFarore;
            this->csActionId = 2;
            break;

        case Demo_Effect_Light_Ring_Expanding:
            this->initDrawFunc = &DemoEffect_DrawLightRing;
            this->initUpdateFunc = &DemoEffect_UpdateLightRingExpanding;
            this->lightRing.timer = 20;
            this->lightRing.timerIncrement = 4;
            this->lightRing.opacity = 255;
            break;

        case Demo_Effect_Light_Ring_Triforce:
            this->initDrawFunc = &DemoEffect_DrawLightRing;
            this->initUpdateFunc = &DemoEffect_UpdateLightRingTriforce;
            this->lightRing.timer = 20;
            this->lightRing.timerIncrement = 4;
            this->lightRing.opacity = 0;
            this->csActionId = 4;
            break;

        case Demo_Effect_Light_Ring_Shrinking:
            this->initDrawFunc = &DemoEffect_DrawLightRing;
            this->initUpdateFunc = &DemoEffect_UpdateLightRingShrinking;
            this->lightRing.timer = 351;
            this->lightRing.timerIncrement = 2;
            this->lightRing.opacity = 0;
            break;

        case Demo_Effect_Triforce_Spot:
            this->initDrawFunc = &DemoEffect_DrawTriforceSpot;
            this->initUpdateFunc = &DemoEffect_UpdateTriforceSpot;
            this->triforceSpot.unused = 0;
            this->triforceSpot.lightColumnOpacity = 0;
            this->triforceSpot.triforceSpotOpacity = 0;
            this->triforceSpot.rotation = 0;
            this->primXluColor[0] = 0;
            this->csActionId = 3;

            Actor_SetScale(&this->actor, 0.020f);

            crystalLight = (DemoEffect*)Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DEMO_EFFECT,
                                           this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z,
                                           0, 0, 0, Demo_Effect_Crystal_Light);

            if (crystalLight) {
                Actor_SetScale(&crystalLight->actor, 0.6f);
            }

            // Necessary to match. Otherwise has function argument reordering.
            if (globalCtx) {}

            lightRing = (DemoEffect*)Actor_SpawnAsChild(&globalCtx->actorCtx, &crystalLight->actor, globalCtx, ACTOR_DEMO_EFFECT,
                                           this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z,
                                           0, 0, 0, Demo_Effect_Light_Ring_Triforce);

            if (lightRing) {
                Actor_SetScale(&lightRing->actor, 0.4f);
            }
            break;

        case Demo_Effect_Medal_Fire:
            DemoEffect_InitGetItem(this);
            this->getItem.giIndex = 12;
            break;

        case Demo_Effect_Medal_Water:
            DemoEffect_InitGetItem(this);
            this->getItem.giIndex = 13;
            break;

        case Demo_Effect_Medal_Forest:
            DemoEffect_InitGetItem(this);
            this->getItem.giIndex = 11;
            break;

        case Demo_Effect_Medal_Spirit:
            DemoEffect_InitGetItem(this);
            this->getItem.giIndex = 14;
            break;

        case Demo_Effect_Medal_Shadow:
            DemoEffect_InitGetItem(this);
            this->getItem.giIndex = 15;
            break;

        case Demo_Effect_Medal_Light:
            DemoEffect_InitGetItem(this);
            this->getItem.giIndex = 16;
            break;

        case Demo_Effect_LightArrow:
            DemoEffect_InitGetItem(this);
            this->getItem.giIndex = 97;
            break;

        case Demo_Effect_Timewarp_Timeblock_Large:
        case Demo_Effect_Timewarp_Timeblock_Small:
            this->actor.flags |= 0x2000000;
        case Demo_Effect_Timewarp_Mastersword:
            this->initDrawFunc = &DemoEffect_DrawTimeWarp;
            this->initUpdateFunc = &DemoEffect_InitTimeWarp;
            this->envXluColor[0] = 0x00;
            this->envXluColor[1] = 0x64;
            this->envXluColor[2] = 0xFF;
            SkelCurve_Clear(&this->skelCurve);
            this->timeWarp.shrinkTimer = 0;
            break;

        case Demo_Effect_Jewel_Kokiri:
            this->jewelDisplayList = kokiriJewel;
            this->jewelHolderDisplayList = kokiriJewelHolder;
            this->jewel.type = Demo_Effect_Jewel_Kokiri;
            this->jewel.isPositionInit = 0;
            DemoEffect_InitJewel(globalCtx, this);
            break;

        case Demo_Effect_Jewel_Goron:
            this->jewelDisplayList = goronJewel;
            this->jewelHolderDisplayList = goronJewelHolder;
            this->jewel.type = Demo_Effect_Jewel_Goron;
            this->jewel.isPositionInit = 0;
            DemoEffect_InitJewel(globalCtx, this);
            break;

        case Demo_Effect_Jewel_Zora:
            this->jewelDisplayList = zoraJewel;
            this->jewelHolderDisplayList = zoraJewelHolder;
            this->jewel.type = Demo_Effect_Jewel_Zora;
            this->jewel.isPositionInit = 0;
            DemoEffect_InitJewel(globalCtx, this);
            Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, ACTOR_EN_DOOR);
            if ((globalCtx->sceneNum == SCENE_BDAN) && (gSaveContext.infTable[20] & 32)) {
                Actor_Kill(&this->actor);
                return;
            }
            break;

        case Demo_Effect_Dust:
            this->initDrawFunc = NULL;
            this->initUpdateFunc = &DemoEffect_UpdateDust;
            this->dust.timer = 0;
            this->csActionId = 2;
            break;

        default:
            __assert("0", "../z_demo_effect.c", 1062);
            break;
    }

    ActorShape_Init(&thisx->shape, 0.0f, NULL, 0.0f);
    DemoEffect_SetupUpdate(this, &DemoEffect_Wait);
}

void DemoEffect_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 effectType = GET_EFFECT_TYPE(thisx);

    if (effectType == Demo_Effect_Timewarp_Mastersword || effectType == Demo_Effect_Timewarp_Timeblock_Large || effectType == Demo_Effect_Timewarp_Timeblock_Small) {
        SkelCurve_Destroy(globalCtx, &THIS->skelCurve);
    }
}

void DemoEffect_Wait(DemoEffect* this, GlobalContext* globalCtx) {
    if (Object_IsLoaded(&globalCtx->objectCtx, this->initObjectBankIndex)) {
        this->actor.objBankIndex = this->initObjectBankIndex;
        this->actor.draw = (ActorFunc)this->initDrawFunc;
        this->updateFunc = this->initUpdateFunc;

        osSyncPrintf("\x1b[36m 転送終了 move_wait \x1b[m");
    }
}

void DemoEffect_UpdatePositionToParent(DemoEffect* this, GlobalContext* globalCtx) {
    if (this->actor.parent) {
        // Struct copy affects regalloc
        this->actor.posRot.pos.x = this->actor.parent->posRot.pos.x;
        this->actor.posRot.pos.y = this->actor.parent->posRot.pos.y;
        this->actor.posRot.pos.z = this->actor.parent->posRot.pos.z;
    }
}

void DemoEffect_UpdateCrystalLight(DemoEffect* this, GlobalContext* globalCtx) {
    DemoEffect_UpdatePositionToParent(this, globalCtx);
    this->actor.posRot.pos.y += 14.0f;
}

void DemoEffect_MedalSparkle(DemoEffect* this, GlobalContext* globalCtx, s32 smallSpawner) {
    Vec3f velocity;
    Vec3f accel;
    Vec3f pos;
    Color_RGBA8 primColor;
    Color_RGBA8 envColor;

    if (smallSpawner != 1 || (globalCtx->gameplayFrames & 1) == 0) {
        primColor.r = 0xFF;
        primColor.g = 0xFF;
        primColor.b = 0xFF;
        envColor.r = 0xFF;
        envColor.g = 0xFF;
        envColor.b = 0x64;
        primColor.a = 0x00;
        // Necessary to set color1.a after color2 to match

        velocity.y = 0.0f;

        accel.x = 0.0f;
        accel.y = -0.1f;
        accel.z = 0.0f;

        if (smallSpawner) {
            velocity.x = Math_Rand_ZeroOne() - 0.5f;
            velocity.z = Math_Rand_ZeroOne() - 0.5f;
        } else {
            velocity.x = (Math_Rand_ZeroOne() - 0.5f) * 2.0f;
            velocity.z = (Math_Rand_ZeroOne() - 0.5f) * 2.0f;
        }

        pos.x = Math_Rand_CenteredFloat(10.0f) + this->actor.posRot.pos.x;
        pos.y = Math_Rand_CenteredFloat(10.0f) + this->actor.posRot.pos.y;
        pos.z = Math_Rand_CenteredFloat(10.0f) + this->actor.posRot.pos.z;

        EffectSsKiraKira_SpawnDispersed(globalCtx, &pos, &velocity, &accel, &primColor, &envColor, 1000, 16);
    }
}

void DemoEffect_UpdateGetItem(DemoEffect* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->actor;

    if (globalCtx->csCtx.state && globalCtx->csCtx.npcActions[this->csActionId]) {
        if (this->getItem.isPositionInit) {
            DemoEffect_MoveMedalCs(this, globalCtx, this->csActionId, 0.1f);
        } else {
            DemoEffect_InitPositionFromCsAction(this, globalCtx, this->csActionId);
            this->getItem.isPositionInit = 1;
        }

        if (this->getItem.giIndex != 97) {
            this->actor.shape.rot.x = -8000;
        } else {
            this->actor.shape.rot.y += 1024;
        }

        Actor_SetScale(thisx, 0.20f);

        if (gSaveContext.entranceIndex == 0x0053) {
            switch (globalCtx->csCtx.npcActions[this->csActionId]->action) {
                case 2:
                    DemoEffect_MedalSparkle(this, globalCtx, 0);
                    break;
                case 3:
                    DemoEffect_MedalSparkle(this, globalCtx, 1);
                    break;
            }
        }
        switch (globalCtx->csCtx.npcActions[this->csActionId]->action) {
            case 2:
                if (gSaveContext.entranceIndex == 0x0053) {
                    Audio_PlayActorSound2(thisx, NA_SE_EV_MEDAL_APPEAR_L - SFX_FLAG);
                } else {
                    func_800788CC(NA_SE_EV_MEDAL_APPEAR_S - SFX_FLAG);
                }
                if (this->getItem.giIndex != 97) {
                    this->actor.shape.rot.y += 16000;
                }
                this->getItem.rotation = 16000;
                break;
            case 3:
                this->getItem.rotation -= (s16)((f32)(this->getItem.rotation - 1000) * 0.10f);
                if (this->getItem.giIndex != 97) {
                    this->actor.shape.rot.y += this->getItem.rotation;
                }
                if (gSaveContext.entranceIndex == 0x0053) {
                    Audio_PlayActorSound2(thisx, NA_SE_EV_MEDAL_APPEAR_L - SFX_FLAG);
                } else {
                    func_800788CC(NA_SE_EV_MEDAL_APPEAR_S - SFX_FLAG);
                }
                break;
            case 4:
                Audio_PlayActorSound2(thisx, NA_SE_EV_MEDAL_APPEAR_S - SFX_FLAG);
                break;
        }
    }
}

void DemoEffect_InitTimeWarp(DemoEffect* this, GlobalContext* globalCtx) {
    s32 effectType = GET_EFFECT_TYPE(&this->actor);

    if (!SkelCurve_Init(globalCtx, &this->skelCurve, &timewarpLimbList, &timewarpTransformUpdateIndex)) {
        __assert("0", "../z_demo_effect.c", 1283);
    }

    if (effectType == Demo_Effect_Timewarp_Timeblock_Large || effectType == Demo_Effect_Timewarp_Timeblock_Small) {
        SkelCurve_SetAnim(&this->skelCurve, &timewarpTransformUpdateIndex, 1.0f, 59.0f, 1.0f, 1.7f);
        SkelCurve_Update(globalCtx, &this->skelCurve);
        this->updateFunc = &DemoEffect_InitTimeWarpTimeblock;

        if (effectType == Demo_Effect_Timewarp_Timeblock_Large) {
            Actor_SetScale(&this->actor, 0.14f);
            return;
        }

        Actor_SetScale(&this->actor, 84 * 0.001f);
        return;
    }

    if (gSaveContext.sceneSetupIndex == 5 || gSaveContext.sceneSetupIndex == 4 ||
        (gSaveContext.entranceIndex == 0x0324 && !((gSaveContext.eventChkInf[12] & 512)))) {
        SkelCurve_SetAnim(&this->skelCurve, &timewarpTransformUpdateIndex, 1.0f, 59.0f, 59.0f, 0.0f);
        SkelCurve_Update(globalCtx, &this->skelCurve);
        this->updateFunc = &DemoEffect_UpdateTimeWarpReturnFromChamberOfSages;
        osSyncPrintf("\x1b[36m 縮むバージョン \n\x1b[m");
        return;
    }

    SkelCurve_SetAnim(&this->skelCurve, &timewarpTransformUpdateIndex, 1.0f, 59.0f, 1.0f, 1.0f);
    SkelCurve_Update(globalCtx, &this->skelCurve);
    this->updateFunc = &DemoEffect_UpdateTimeWarpPullMasterSword;
    osSyncPrintf("\x1b[36m 通常 バージョン \n\x1b[m");
    // Necessary to match
    if (1) {}
}

void DemoEffect_UpdateTimeWarpPullMasterSword(DemoEffect* this, GlobalContext* globalCtx) {
    if (Flags_GetEnv(globalCtx, 1)) {
        if (!(this->effectFlags & 2)) {
            func_800F3F3C(0);
            this->effectFlags |= 2;
        }

        if (SkelCurve_Update(globalCtx, &this->skelCurve)) {
            SkelCurve_SetAnim(&this->skelCurve, &timewarpTransformUpdateIndex, 1.0f, 60.0f, 59.0f, 0.0f);
        }
    }
}

void DemoEffect_TimewarpShrink(f32 size) {
    Vtx* vertices;
    s32 i;
    u8 sizes[3];

    // This function uses the data in obj_efc_tw offset 0x0060 to 0x01B0
    vertices = (Vtx*)SEGMENTED_TO_VIRTUAL(timewarpVertices);

    sizes[0] = 0;
    sizes[1] = (s32)(202.0f * size);
    sizes[2] = (s32)(255.0f * size);

    for (i = 0; i < 21; i++) {
        if (timewarpVertexSizeIndices[i]) {
            (vertices + i)->v.cn[3] = sizes[timewarpVertexSizeIndices[i]];
        }
    }
}

void DemoEffect_UpdateTimeWarpReturnFromChamberOfSages(DemoEffect* this, GlobalContext* globalCtx) {
    f32 shrinkProgress;

    this->timeWarp.shrinkTimer++;

    if (this->timeWarp.shrinkTimer > 250) {
        if (gSaveContext.entranceIndex == 0x0324) {
            gSaveContext.eventChkInf[12] |= 512;
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

    func_8002F948(&this->actor, NA_SE_EV_TIMETRIP_LIGHT - SFX_FLAG);
}

void DemoEffect_UpdateTimeWarpTimeblock(DemoEffect* this, GlobalContext* globalCtx) {
    f32 shrinkProgress;
    f32 scale;

    this->timeWarp.shrinkTimer++;

    if (this->timeWarp.shrinkTimer <= 100) {
        shrinkProgress = (100 - this->timeWarp.shrinkTimer) * 0.010f;
        scale = shrinkProgress * 0.14f;

        if (GET_EFFECT_TYPE(&this->actor) == Demo_Effect_Timewarp_Timeblock_Small) {
            scale *= 0.6f;
        }

        this->actor.scale.x = scale;
        this->actor.scale.z = scale;
        DemoEffect_TimewarpShrink(shrinkProgress);
        func_8002F948(&this->actor, NA_SE_EV_TIMETRIP_LIGHT - SFX_FLAG);
        return;
    }

    DemoEffect_TimewarpShrink(1.0f);
    Actor_Kill(&this->actor);
}

void DemoEffect_InitTimeWarpTimeblock(DemoEffect* this, GlobalContext* globalCtx) {
    func_8002F948(&this->actor, NA_SE_EV_TIMETRIP_LIGHT - SFX_FLAG);

    if (SkelCurve_Update(globalCtx, &this->skelCurve)) {
        SkelCurve_SetAnim(&this->skelCurve, &timewarpTransformUpdateIndex, 1.0f, 60.0f, 59.0f, 0.0f);
        this->updateFunc = &DemoEffect_UpdateTimeWarpTimeblock;
        this->timeWarp.shrinkTimer = 0;
    }
}

void DemoEffect_UpdateTriforceSpot(DemoEffect* this, GlobalContext* globalCtx) {
    this->triforceSpot.rotation += 1000;

    if (globalCtx->csCtx.state && globalCtx->csCtx.npcActions[this->csActionId]) {
        DemoEffect_MoveToCsEndpoint(this, globalCtx, this->csActionId, 0);

        if (globalCtx->csCtx.npcActions[this->csActionId]->action == 2) {
            if (this->primXluColor[0] < 140) {
                this->primXluColor[0]++;
            }

            if (this->primXluColor[0] < 30) {
                this->triforceSpot.triforceSpotOpacity = ((s32)this->primXluColor[0]) * 8.5f;
            } else {
                this->triforceSpot.triforceSpotOpacity = 255;

                if (this->primXluColor[0] < 0x3C) {
                    this->triforceSpot.lightColumnOpacity = (((s32)this->primXluColor[0]) - 0x1E) * 8.5f;
                } else {
                    if (this->primXluColor[0] < 0x8D) {
                        this->triforceSpot.lightColumnOpacity = 255;
                        this->triforceSpot.unused = (((s32)this->primXluColor[0]) - 0x3C) * 3.1875f;
                    }
                }
            }
        }

        if (gSaveContext.entranceIndex == 0x00A0 && gSaveContext.sceneSetupIndex == 6 &&
            globalCtx->csCtx.frames == 143) {
            Audio_PlayActorSound2(&this->actor, NA_SE_IT_DM_RING_EXPLOSION);
        }
    }
}

void DemoEffect_UpdateLightRingShrinking(DemoEffect* this, GlobalContext* globalCtx) {
    if (this->lightRing.timer < this->lightRing.timerIncrement) {
        Actor_Kill(&this->actor);
        this->lightRing.timer = 0;
    } else {
        this->lightRing.timer -= this->lightRing.timerIncrement;
    }

    if (this->lightRing.timer < 256) {
        if (this->lightRing.timer >= 225) {
            this->lightRing.opacity = (-this->lightRing.timer * 8) + 2048;
        } else {
            this->lightRing.opacity = 255;
        }
    }

    if (this->lightRing.timer == 255) {
        func_800F3F3C(5);
    }
}

void DemoEffect_UpdateLightRingExpanding(DemoEffect* this, GlobalContext* globalCtx) {
    DemoEffect_UpdatePositionToParent(this, globalCtx);
    this->lightRing.timer += this->lightRing.timerIncrement;

    if (this->lightRing.timer >= 225) {
        this->lightRing.opacity = (-this->lightRing.timer * 8) + 2048;
    }
    if (this->lightRing.timer > 255) {
        this->lightRing.timer = 255;
        Actor_Kill(&this->actor);
        this->lightRing.timer = 0;
    }
}

void DemoEffect_UpdateLightRingTriforce(DemoEffect* this, GlobalContext* globalCtx) {
    DemoEffect* blueOrb;

    DemoEffect_UpdatePositionToParent(this, globalCtx);

    if (globalCtx->csCtx.state) {
        if (globalCtx->csCtx.npcActions[this->csActionId] && globalCtx->csCtx.npcActions[this->csActionId]->action == 2) {
            blueOrb = (DemoEffect*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_DEMO_EFFECT,
                                               this->actor.posRot.pos.x, this->actor.posRot.pos.y,
                                               this->actor.posRot.pos.z, 0, 0, 0, Demo_Effect_Blue_Orb);

            if (blueOrb) {
                Actor_SetScale(&blueOrb->actor, 0.0f);
            }

            this->updateFunc = &DemoEffect_UpdateLightRingExpanding;
            this->lightRing.opacity = 255;
        }
    }
}

void DemoEffect_UpdateCreationFireball(DemoEffect* this, GlobalContext* globalCtx) {
    DemoEffect* effect;

    Actor_MoveForward(&this->actor);
    this->actor.speedXZ = this->actor.speedXZ + (this->actor.gravity * 0.5f);

    if (this->fireBall.timer) {
        this->fireBall.timer--;
        return;
    }

    effect = (DemoEffect*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_DEMO_EFFECT, this->actor.posRot.pos.x,
                                      this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0,
                                      Demo_Effect_Blue_Orb);
    if (effect) {
        Actor_SetScale(&effect->actor, 0.0f);
    }

    effect = (DemoEffect*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_DEMO_EFFECT, this->actor.posRot.pos.x,
                                      this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0,
                                      Demo_Effect_Light_Ring_Expanding);
    if (effect) {
        Actor_SetScale(&effect->actor, 0.1f);
    }

    effect = (DemoEffect*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_DEMO_EFFECT, this->actor.posRot.pos.x,
                                      this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0,
                                      Demo_Effect_Light_Ring_Shrinking);
    if (effect) {
        Actor_SetScale(&effect->actor, 0.2f);
    }

    func_800788CC(NA_SE_IT_DM_RING_EXPLOSION);
    Actor_Kill(&this->actor);
}

void DemoEffect_InitCreationFireball(DemoEffect* this, GlobalContext* globalCtx) {
    Actor* parent = this->actor.parent;

    this->actor.posRot.rot.y = parent->shape.rot.y;
    this->fireBall.timer = 50;
    this->actor.speedXZ = 1.5f;
    this->actor.minVelocityY = -1.5f;
    this->actor.gravity = -0.03f;
    this->updateFunc = &DemoEffect_UpdateCreationFireball;
}

void DemoEffect_UpdateBlueOrbShrink(DemoEffect* this, GlobalContext* globalCtx) {
    this->blueOrb.opacity = this->blueOrb.scale * 16;
    this->blueOrb.scale--;
    Actor_SetScale(&this->actor, this->actor.scale.x * 0.9f);
    if (!this->blueOrb.scale) {
        Actor_Kill(&this->actor);
    }
}

void DemoEffect_UpdateBlueOrb(DemoEffect* this, GlobalContext* globalCtx) {
    if (this->actor.parent) {
        // s32 cast necessary to match codegen. Without the explicit cast to u32 the compiler generates complex cast of
        // u8 to float
        Actor_SetScale(&this->actor, (((5.0f - (s32)this->blueOrb.scale) * 0.01f) * 10.0f) * this->actor.parent->scale.x);
    } else {
        Actor_SetScale(&this->actor, (5.0f - (s32)this->blueOrb.scale) * 0.01f);
    }

    if (this->blueOrb.scale) {
        this->blueOrb.scale--;
    } else {
        this->blueOrb.scale = 15;
        this->updateFunc = &DemoEffect_UpdateBlueOrbShrink;
    }
}

void DemoEffect_UpdateLightEffect(DemoEffect* this, GlobalContext* globalCtx) {
    u16 action;
    s32 sizeParam;

    sizeParam = GET_LIGHT_EFFECT_SIZE_PARAM(&this->actor);

    if (globalCtx->csCtx.state && globalCtx->csCtx.npcActions[this->csActionId]) {
        DemoEffect_MoveToCsEndpoint(this, globalCtx, this->csActionId, 0);
        switch (globalCtx->csCtx.npcActions[this->csActionId]->action) {
            case 2:
                if (this->lightEffect.rotation < 240) {
                    if (!sizeParam) {
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
                this->lightEffect.rotation += 6;
                this->lightEffect.scaleFlag += 1;
                break;

            case 3:
                Math_SmoothScaleMaxMinF(&this->actor.scale.x, 0.0f, 0.1f, 0.1f, 0.005f);
                Actor_SetScale(&this->actor, this->actor.scale.x);
                break;

            default:
                break;
        }

        if (globalCtx->sceneNum == SCENE_SPOT04 && gSaveContext.sceneSetupIndex == 6 &&
            globalCtx->csCtx.frames == 197) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_WHITE_OUT);
        }

        if (globalCtx->sceneNum == SCENE_SPOT16 && gSaveContext.sceneSetupIndex == 5) {
            if (!DemoEffect_CheckCsAction(this, globalCtx, 1)) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EV_LIGHT_GATHER - SFX_FLAG);
            }
            if (globalCtx->csCtx.frames == 640) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EV_WHITE_OUT);
            }

            // Necessary to match
            if (0) {}
        }

        if (globalCtx->sceneNum == SCENE_SPOT08 && gSaveContext.sceneSetupIndex == 4) {
            if (DemoEffect_CheckCsAction(this, globalCtx, 1) == 0) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EV_LIGHT_GATHER - SFX_FLAG);
            }
            if (globalCtx->csCtx.frames == 648) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EV_WHITE_OUT);
            }

            // Necessary to match
            if (0) {}
        }

        if (globalCtx->sceneNum == SCENE_TOKINOMA && gSaveContext.sceneSetupIndex == 14) {
            // do {} while(0) necessary to match
            do {
                if (globalCtx->csCtx.npcActions[this->csActionId]->action == 2) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EV_LIGHT_GATHER - SFX_FLAG);
                }
            } while (0);
        }

        if (globalCtx->sceneNum == SCENE_DAIYOUSEI_IZUMI || globalCtx->sceneNum == SCENE_YOUSEI_IZUMI_YOKO) {
            if (globalCtx->csCtx.npcActions[this->csActionId]->action == 2) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EV_LIGHT_GATHER - SFX_FLAG);
            }
        }
    }
}

void DemoEffect_UpdateLgtShower(DemoEffect* this, GlobalContext* globalCtx) {
    if (this->lgtShower.opacity > 3) {
        this->lgtShower.opacity -= 3;
        this->actor.scale.x *= 1.05f;
        this->actor.scale.y *= 1.05f;
        this->actor.scale.z *= 1.05f;
    } else {
        Actor_Kill(&this->actor);
    }
}

void DemoEffect_UpdateGodLgtDin(DemoEffect* this, GlobalContext* globalCtx) {
    DemoEffect* fireBall;

    if (globalCtx->csCtx.state && globalCtx->csCtx.npcActions[this->csActionId]) {
        DemoEffect_MoveToCsEndpoint(this, globalCtx, this->csActionId, 1);

        if (globalCtx->csCtx.npcActions[this->csActionId]->action == 3) {
            fireBall = (DemoEffect*)Actor_SpawnAsChild(
                &globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DEMO_EFFECT, this->actor.posRot.pos.x,
                this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, Demo_Effect_Fire_Ball);

            if (fireBall) {
                fireBall->initUpdateFunc = &DemoEffect_InitCreationFireball;
                Actor_SetScale(&fireBall->actor, 0.020f);
            }
        }

        if (gSaveContext.entranceIndex == 0x00A0) {
            switch (gSaveContext.sceneSetupIndex) {
                case 4:
                    if (globalCtx->csCtx.frames == 288) {
                        Audio_PlayActorSound2(&this->actor, NA_SE_IT_DM_FLYING_GOD_PASS);
                    }
                    if (globalCtx->csCtx.frames == 635) {
                        Audio_PlayActorSound2(&this->actor, NA_SE_IT_DM_FLYING_GOD_PASS);
                    }
                    break;

                case 6:
                    if (globalCtx->csCtx.frames == 55) {
                        Audio_PlayActorSound2(&this->actor, NA_SE_IT_DM_FLYING_GOD_DASH);
                    }
                    break;

                case 11:
                    if (globalCtx->csCtx.frames == 350) {
                        Audio_PlayActorSound2(&this->actor, NA_SE_IT_DM_FLYING_GOD_DASH);
                    }
                    break;

                default:
                    break;
            }
        }
    }
}

void DemoEffect_UpdateGodLgtNayru(DemoEffect* this, GlobalContext* globalCtx) {
    DemoEffect* lightRing;

    if (globalCtx->csCtx.state && globalCtx->csCtx.npcActions[this->csActionId]) {
        DemoEffect_MoveToCsEndpoint(this, globalCtx, this->csActionId, 1);

        if (globalCtx->csCtx.npcActions[this->csActionId]->action == 3) {
            if (this->godLgt.lightRingSpawnTimer) {
                this->godLgt.lightRingSpawnTimer--;
            } else {
                this->godLgt.lightRingSpawnTimer = this->godLgt.lightRingSpawnDelay;
                lightRing = (DemoEffect*)Actor_Spawn(
                    &globalCtx->actorCtx, globalCtx, ACTOR_DEMO_EFFECT, this->actor.posRot.pos.x,
                    this->actor.posRot.pos.y, this->actor.posRot.pos.z, this->actor.posRot.rot.x + 0x4000,
                    this->actor.posRot.rot.y, this->actor.posRot.rot.z, Demo_Effect_Light_Ring_Expanding);

                if (lightRing) {
                    Actor_SetScale(&lightRing->actor, 1.0f);
                }
            }
        }

        if (gSaveContext.entranceIndex == 0x00A0) {
            switch (gSaveContext.sceneSetupIndex) {
                case 4:
                    if (globalCtx->csCtx.frames == 298) {
                        Audio_PlayActorSound2(&this->actor, NA_SE_IT_DM_FLYING_GOD_PASS);
                    }
                    break;

                case 6:
                    if (globalCtx->csCtx.frames == 105) {
                        Audio_PlayActorSound2(&this->actor, NA_SE_IT_DM_FLYING_GOD_DASH);
                    }
                    break;

                case 11:
                    if (globalCtx->csCtx.frames == 360) {
                        Audio_PlayActorSound2(&this->actor, NA_SE_IT_DM_FLYING_GOD_DASH);
                    }
                    break;

                default:
                    break;
            }
        }

        if (gSaveContext.entranceIndex == 0x013D && gSaveContext.sceneSetupIndex == 4) {
            if (globalCtx->csCtx.frames == 72) {
                Audio_PlayActorSound2(&this->actor, NA_SE_IT_DM_FLYING_GOD_DASH);
            }
            if (globalCtx->csCtx.frames == 80) {
                func_800F3F3C(4);
            }
        }
    }
}

void DemoEffect_UpdateGodLgtFarore(DemoEffect* this, GlobalContext* globalCtx) {
    DemoEffect* lgtShower;

    if (globalCtx->csCtx.state && globalCtx->csCtx.npcActions[this->csActionId]) {
        DemoEffect_MoveToCsEndpoint(this, globalCtx, this->csActionId, 1);

        if (globalCtx->csCtx.npcActions[this->csActionId]->action == 3) {
            lgtShower = (DemoEffect*)Actor_SpawnAsChild(
                &globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DEMO_EFFECT, this->actor.posRot.pos.x,
                this->actor.posRot.pos.y - 150.0f, this->actor.posRot.pos.z, 0, 0, 0, Demo_Effect_Lgt_Shower);

            if (lgtShower) {
                lgtShower->actor.scale.x = 0.23f;
                lgtShower->actor.scale.y = 0.15f;
                lgtShower->actor.scale.z = 0.23f;
            }

            Audio_PlayActorSound2(&this->actor, NA_SE_IT_DM_FLYING_GOD_DASH);
            func_800F3F3C(3);
        }

        if (gSaveContext.entranceIndex == 0x00A0) {
            switch (gSaveContext.sceneSetupIndex) {
                case 4:
                    if (globalCtx->csCtx.frames == 315) {
                        Audio_PlayActorSound2(&this->actor, NA_SE_IT_DM_FLYING_GOD_PASS);
                    }
                    break;

                case 6:
                    if (globalCtx->csCtx.frames == 80) {
                        Audio_PlayActorSound2(&this->actor, NA_SE_IT_DM_FLYING_GOD_DASH);
                    }
                    break;

                case 11:
                    if (globalCtx->csCtx.frames == 370) {
                        Audio_PlayActorSound2(&this->actor, NA_SE_IT_DM_FLYING_GOD_DASH);
                    }
                    break;

                default:
                    break;
            }
        }
    }
}

void DemoEffect_MoveTowardTarget(Vec3f targetPos, DemoEffect* this, f32 speed) {
    this->actor.posRot.pos.x += (targetPos.x - this->actor.posRot.pos.x) * speed;
    this->actor.posRot.pos.y += (targetPos.y - this->actor.posRot.pos.y) * speed;
    this->actor.posRot.pos.z += (targetPos.z - this->actor.posRot.pos.z) * speed;
}

void DemoEffect_InitJewelColor(DemoEffect* this) {
    u8 jewelType = this->jewel.type;

    switch (jewelType) {
        case Demo_Effect_Jewel_Kokiri:
            this->primXluColor[2] = 0xA0;
            this->primXluColor[0] = 0xFF;
            this->primXluColor[1] = 0xFF;
            this->envXluColor[0] = 0x00;
            this->envXluColor[1] = 0xFF;
            this->envXluColor[2] = 0x00;
            this->primOpaColor[2] = 0xAA;
            this->primOpaColor[0] = 0xFF;
            this->primOpaColor[1] = 0xFF;
            this->envOpaColor[1] = 0x78;
            this->envOpaColor[0] = 0x96;
            this->envOpaColor[2] = 0x00;
            break;

        case Demo_Effect_Jewel_Goron:
            this->primXluColor[1] = 0xAA;
            this->primXluColor[0] = 0xFF;
            this->primXluColor[2] = 0xFF;
            this->envXluColor[2] = 0x64;
            this->envXluColor[0] = 0xFF;
            this->envXluColor[1] = 0x00;
            this->primOpaColor[2] = 0xAA;
            this->primOpaColor[0] = 0xFF;
            this->primOpaColor[1] = 0xFF;
            this->envOpaColor[1] = 0x78;
            this->envOpaColor[0] = 0x96;
            this->envOpaColor[2] = 0x00;
            break;

        case Demo_Effect_Jewel_Zora:
            this->primXluColor[0] = 0x32;
            this->primXluColor[1] = 0xFF;
            this->primXluColor[2] = 0xFF;
            this->envXluColor[2] = 0x96;
            this->envXluColor[0] = 0x32;
            this->envXluColor[1] = 0x00;
            this->primOpaColor[2] = 0xAA;
            this->primOpaColor[0] = 0xFF;
            this->primOpaColor[1] = 0xFF;
            this->envOpaColor[1] = 0x78;
            this->envOpaColor[0] = 0x96;
            this->envOpaColor[2] = 0x00;
            break;
    }
}

void DemoEffect_SetJewelColor(DemoEffect* this, f32 alpha) {
    DemoEffect_InitJewelColor(this);

    // s32 casts needed to prevent u8s from casting to float
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

void DemoEffect_MoveJewelCs(PosRot* posRot, DemoEffect* this) {
    switch (this->jewel.type) {
        case Demo_Effect_Jewel_Kokiri:
            posRot->pos.x -= 40.0f;
            break;
        case Demo_Effect_Jewel_Goron:
            break;
        case Demo_Effect_Jewel_Zora:
            posRot->pos.x += 40.0f;
            break;
        default:
            break;
    }
}

void DemoEffect_MoveJewelSpherical(f32 degrees, f32 frameDivisor, Vec3f startPos, Vec3f endPos, f32 radius, Vec3s rotation, DemoEffect* this) {
    s32 pad;
    s32 pad2;
    f32 distance;
    f32 xPos;
    f32 ySpherical;
    f32 xzSpherical;

    distance = frameDivisor * sqrtf(SQ(endPos.x - startPos.x) + SQ(endPos.y - startPos.y) + SQ(endPos.z - startPos.z));

    this->actor.posRot.pos.x = radius * cosf(degrees * (M_PI / 180.0f));
    this->actor.posRot.pos.y = distance;
    this->actor.posRot.pos.z = radius * sinf(degrees * (M_PI / 180.0f));

    xPos = this->actor.posRot.pos.x;
    ySpherical = (this->actor.posRot.pos.y * cosf(rotation.x * (M_PI / 32768.0f))) -
            (sinf(rotation.x * (M_PI / 32768.0f)) * this->actor.posRot.pos.z);
    xzSpherical = (this->actor.posRot.pos.z * cosf(rotation.x * (M_PI / 32768.0f))) +
            (sinf(rotation.x * (M_PI / 32768.0f)) * this->actor.posRot.pos.y);

    this->actor.posRot.pos.x = (xPos * cosf(rotation.y * (M_PI / 32768.0f))) - (sinf(rotation.y * (M_PI / 32768.0f)) * xzSpherical);
    this->actor.posRot.pos.y = ySpherical;
    this->actor.posRot.pos.z = (xzSpherical * cosf(rotation.y * (M_PI / 32768.0f))) + (sinf(rotation.y * (M_PI / 32768.0f)) * xPos);

    this->actor.posRot.pos.x += startPos.x;
    this->actor.posRot.pos.y += startPos.y;
    this->actor.posRot.pos.z += startPos.z;
}

void DemoEffect_MoveJewelCsActivateDoorOfTime(DemoEffect* this, GlobalContext* globalCtx) {
    Vec3f startPos;
    Vec3f endPos;
    f32 frameDivisor;
    f32 degrees;
    f32 radius;
    s32 csActionId;

    csActionId = this->csActionId;
    startPos.x = globalCtx->csCtx.npcActions[csActionId]->startPos.x;
    startPos.y = globalCtx->csCtx.npcActions[csActionId]->startPos.y;
    startPos.z = globalCtx->csCtx.npcActions[csActionId]->startPos.z;
    endPos.x = globalCtx->csCtx.npcActions[csActionId]->endPos.x;
    endPos.y = globalCtx->csCtx.npcActions[csActionId]->endPos.y;
    endPos.z = globalCtx->csCtx.npcActions[csActionId]->endPos.z;

    frameDivisor = DemoEffect_InterpolateCsFrames(globalCtx, csActionId);

    switch (this->jewel.type) {
        case Demo_Effect_Jewel_Kokiri:
            degrees = 0.0f;
            break;
        case Demo_Effect_Jewel_Goron:
            degrees = 120.0f;
            break;
        case Demo_Effect_Jewel_Zora:
            degrees = 240.0f;
            break;
    }

    radius = 50.0f * frameDivisor;
    // CLAMP_MAX macro is not OK
    if (radius > 30.0f) {
        radius = 30.0f;
    }

    if (startPos.x != endPos.x || startPos.y != endPos.y || startPos.z != endPos.z) {
        this->jewelCsRotation.x = atan2f(endPos.z - startPos.z, -(endPos.x - startPos.x)) * (32768.0f / M_PI);
        this->jewelCsRotation.y = Math_Vec3f_Yaw(&startPos, &endPos);
    }

    this->jewelCsRotation.z += 1024;

    degrees += this->jewelCsRotation.z * (45.0f / 8192.0f);
    DemoEffect_MoveJewelSpherical(degrees, frameDivisor, startPos, endPos, radius, this->jewelCsRotation, this);
}

void DemoEffect_JewelSparkle(DemoEffect* this, GlobalContext* globalCtx, s32 spawnerCount) {
    Vec3f velocity;
    Vec3f accel;
    Color_RGBA8 primColor;
    Color_RGBA8 envColor;
    Color_RGB8* sparkleColors;
    s32 i;

    i = 0;

    velocity.y = 0.0f;

    accel.x = 0.0f;
    accel.y = -0.1f;
    accel.z = 0.0f;

    // TODO: This assignment gives compiler warning
    sparkleColors = &jewelSparkleColors[this->jewel.type - Demo_Effect_Jewel_Kokiri];

    primColor.r = (sparkleColors + 0)->r;
    primColor.g = (sparkleColors + 0)->g;
    primColor.b = (sparkleColors + 0)->b;
    envColor.r = (sparkleColors + 1)->r;
    envColor.g = (sparkleColors + 1)->g;
    envColor.b = (sparkleColors + 1)->b;
    primColor.a = 0;

    while (i < spawnerCount) {
        velocity.x = (Math_Rand_ZeroOne() - 0.5f) * 1.5f;
        velocity.z = (Math_Rand_ZeroOne() - 0.5f) * 1.5f;

        EffectSsKiraKira_SpawnDispersed(globalCtx, &this->actor.posRot.pos, &velocity, &accel, &primColor, &envColor,
                                        3000, 16);

        i++;
    }
}

void DemoEffect_PlayJewelSfx(DemoEffect* this, GlobalContext* globalCtx) {
    if (!DemoEffect_CheckCsAction(this, globalCtx, 1)) {
        if (this->actor.params == sfxJewelId[0]) {
            func_8002F974(&this->actor, NA_SE_EV_SPIRIT_STONE - SFX_FLAG);
        } else if (!sfxJewelId[0]) {
            sfxJewelId[0] = this->actor.params;
            func_8002F974(&this->actor, NA_SE_EV_SPIRIT_STONE - SFX_FLAG);
        }
    }
}

void DemoEffect_UpdateJewelAdult(DemoEffect* this, GlobalContext* globalCtx) {
    this->jewel.timer++;
    this->actor.shape.rot.y += 1024;
    DemoEffect_PlayJewelSfx(this, globalCtx);
    DemoEffect_SetJewelColor(this, 1.0f);
}

void DemoEffect_UpdateJewelChild(DemoEffect* this, GlobalContext* globalCtx) {
    s32 hasCmdAction;
    Actor* thisx = &this->actor;

    this->jewel.timer++;

    if (globalCtx->csCtx.state && globalCtx->csCtx.npcActions[this->csActionId]) {
        switch (globalCtx->csCtx.npcActions[this->csActionId]->action) {
            case 3:
                if (gSaveContext.eventChkInf[4] & 2048) {
                    gSaveContext.eventChkInf[4] |= 2048;
                }
                DemoEffect_MoveJewelCsActivateDoorOfTime(this, globalCtx);
                if (!(globalCtx->gameplayFrames & 1)) {
                    DemoEffect_JewelSparkle(this, globalCtx, 1);
                }
                break;
            case 4:
                if (this->jewel.isPositionInit) {
                    DemoEffect_MoveToCsEndpoint(this, globalCtx, this->csActionId, 0);
                    DemoEffect_MoveJewelCs(&thisx->posRot, this);
                    if (!(globalCtx->gameplayFrames & 1)) {
                        DemoEffect_JewelSparkle(this, globalCtx, 1);
                    }
                } else {
                    DemoEffect_InitPositionFromCsAction(this, globalCtx, this->csActionId);
                    DemoEffect_MoveJewelCs(&thisx->posRot, this);
                    this->jewel.isPositionInit = 1;
                }
                break;
            case 6:
                Actor_Kill(thisx);
                return;
            default:
                DemoEffect_MoveToCsEndpoint(this, globalCtx, this->csActionId, 0);
                if (gSaveContext.entranceIndex == 0x0053) {
                    DemoEffect_MoveJewelCs(&thisx->posRot, this);
                }
                break;
        }
    }

    if (gSaveContext.entranceIndex == 0x0053) {
        if (!(gSaveContext.eventChkInf[4] & 2048)) {
            hasCmdAction = globalCtx->csCtx.state && globalCtx->csCtx.npcActions[this->csActionId];
            if (!hasCmdAction) {
                this->effectFlags |= 1;
                return;
            }
        }
    }

    thisx->shape.rot.y += 1024;
    DemoEffect_PlayJewelSfx(this, globalCtx);
    this->effectFlags &= 65534;
}

void DemoEffect_UpdateDust(DemoEffect* this, GlobalContext* globalCtx) {
    Vec3f pos, velocity, accel;

    if (globalCtx->csCtx.state && globalCtx->csCtx.npcActions[this->csActionId] &&
        globalCtx->csCtx.npcActions[this->csActionId]->action == 2) {
        pos = this->actor.posRot.pos;

        pos.y += 600.0f;
        pos.x += Math_Rand_CenteredFloat(300.0f);
        pos.z += 200.0f + Math_Rand_CenteredFloat(300.0f);

        velocity.z = 0.0f;
        velocity.x = 0.0f;
        velocity.y = -20.0f;

        accel.z = 0.0f;
        accel.x = 0.0f;
        accel.y = 0.2f;

        func_8002873C(globalCtx, &pos, &velocity, &accel, 300, 0, 30);

        this->dust.timer++;
    }
}

void DemoEffect_Update(Actor* thisx, GlobalContext* globalCtx) {
    DemoEffect* this = THIS;
    this->updateFunc(this, globalCtx);
}

s32 DemoEffect_CheckCsAction(DemoEffect* this, GlobalContext* globalCtx, s32 csActionCompareId) {
    if (globalCtx->csCtx.state && globalCtx->csCtx.npcActions[this->csActionId] &&
        globalCtx->csCtx.npcActions[this->csActionId]->action == csActionCompareId) {
        return 1;
    }

    return 0;
}

void DemoEffect_DrawJewel(DemoEffect* this, GlobalContext* globalCtx) {
    s32 pad;
    GlobalContext* globalCtx2;
    u32 scroll = this->jewel.timer;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_demo_effect.c", 2543);

    if (!DemoEffect_CheckCsAction(this, globalCtx, 1)) {
        // Necessary to match
        if (1) {}

        if (!(this->effectFlags & 1)) {
            globalCtx2 = globalCtx;

            switch (this->jewel.type) {
                case Demo_Effect_Jewel_Kokiri:
                    gSPSegment(oGfxCtx->polyXlu.p++, 9,
                               Gfx_TwoTexScroll(globalCtx2->state.gfxCtx, 0, (scroll * 4) % 256,
                                                (256 - ((scroll * 2) % 256)) - 1, 64, 64, 1,
                                                (scroll * 2) % 256, (256 - (scroll % 256)) - 1, 16,
                                                16));
                    break;

                case Demo_Effect_Jewel_Goron:
                    gSPSegment(oGfxCtx->polyXlu.p++, 9,
                               Gfx_TwoTexScroll(globalCtx2->state.gfxCtx, 0, (scroll * 4) % 128,
                                                (256 - ((scroll * 2) % 256)) - 1, 32, 64, 1,
                                                (scroll * 2) % 256, (256 - (scroll % 256)) - 1, 16,
                                                8));
                    break;

                case Demo_Effect_Jewel_Zora:
                    gSPSegment(oGfxCtx->polyXlu.p++, 9,
                               Gfx_TwoTexScroll(globalCtx2->state.gfxCtx, 0, (scroll * 4) % 256,
                                                (256 - ((scroll * 2) % 256)) - 1, 32, 32, 1,
                                                (scroll * 2) % 256, (256 - (scroll % 256)) - 1, 16,
                                                16));
                    break;
            }

            // Necessary to match
            if (!scroll) {}

            gSPSegment(oGfxCtx->polyOpa.p++, 8,
                       Gfx_TexScroll(globalCtx->state.gfxCtx, (u8)scroll, (u8)scroll, 16, 16));
            gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_effect.c", 2597),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_effect.c", 2599),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            func_80093D84(globalCtx->state.gfxCtx);
            func_8002ED80(&this->actor, globalCtx, 0);
            gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0x80, this->primXluColor[0],
                            this->primXluColor[1], this->primXluColor[2], 0xFF);
            gDPSetEnvColor(oGfxCtx->polyXlu.p++, this->envXluColor[0], this->envXluColor[1],
                           this->envXluColor[2], 0xFF);
            gSPDisplayList(oGfxCtx->polyXlu.p++, this->jewelDisplayList);
            func_80093D18(globalCtx->state.gfxCtx);
            func_8002EBCC(&this->actor, globalCtx, 0);
            gDPSetPrimColor(oGfxCtx->polyOpa.p++, 0, 0x80, this->primOpaColor[0],
                            this->primOpaColor[1], this->primOpaColor[2], 0xFF);
            gDPSetEnvColor(oGfxCtx->polyOpa.p++, this->envOpaColor[0], this->envOpaColor[1],
                           this->envOpaColor[2], 0xFF);
            gSPDisplayList(oGfxCtx->polyOpa.p++, this->jewelHolderDisplayList);
        }
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_demo_effect.c", 2620);
}

void DemoEffect_DrawCrystalLight(DemoEffect* this, GlobalContext* globalCtx) {
    s32 pad;
    DemoEffect* parent;
    u32 scroll;

    parent = (DemoEffect*)this->actor.parent;
    scroll = globalCtx->gameplayFrames & 0xFFFF;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_demo_effect.c", 2634);

    if (parent) {
        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x80, 0x80, 0xFF, 0xFF, 0xAA, parent->jewel.opacity);
    } else {
        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x80, 0x80, 0xFF, 0xFF, 0xAA, 0xFF);
    }

    func_80093D84(globalCtx->state.gfxCtx);

    gSPSegment(oGfxCtx->polyXlu.p++, 8,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (scroll * 2) % 512,
                                512 - (scroll % 512) - 1, 128, 128, 1,
                                512 - ((scroll * 2) % 512) - 1, 0, 64, 64));
    Matrix_Push();
    Matrix_RotateY(0.0f, MTXMODE_APPLY);
    Matrix_RotateX((11.0 * M_PI) / 180.0, MTXMODE_APPLY); // Doubles and not floats needed here
    Matrix_Translate(0.0f, 150.0f, 0.0f, MTXMODE_APPLY);
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_effect.c", 2661),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(oGfxCtx->polyXlu.p++, crystalLight);
    Matrix_Pull();
    Matrix_Push();
    Matrix_RotateY((2.0f * M_PI) / 3.0f, MTXMODE_APPLY);
    Matrix_RotateX((11.0 * M_PI) / 180.0, MTXMODE_APPLY);
    Matrix_Translate(0.0f, 150.0f, 0.0f, MTXMODE_APPLY);
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_effect.c", 2672),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(oGfxCtx->polyXlu.p++, crystalLight);
    Matrix_Pull();
    Matrix_Push();
    Matrix_RotateY((4.0f * M_PI) / 3.0f, MTXMODE_APPLY);
    Matrix_RotateX((11.0 * M_PI) / 180.0, MTXMODE_APPLY);
    Matrix_Translate(0.0f, 150.0f, 0.0f, MTXMODE_APPLY);
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_effect.c", 2683),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(oGfxCtx->polyXlu.p++, crystalLight);
    Matrix_Pull();
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_demo_effect.c", 2688);
}

void DemoEffect_DrawFireBall(DemoEffect* this, GlobalContext* globalCtx) {
    s32 pad;
    u32 scroll;

    scroll = globalCtx->gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_demo_effect.c", 2701);
    gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x40, 0x40, 0xFF, 0xC8, 0x00, 0xFF);
    gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0xFF, 0x00, 0x00, 0xFF);
    func_80093D84(globalCtx->state.gfxCtx);
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_effect.c", 2709),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPMatrix(oGfxCtx->polyXlu.p++, globalCtx->unk_11DE0, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
    gSPSegment(oGfxCtx->polyXlu.p++, 8,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 32, 32, 1, 0,
                                128 - ((scroll * 20) % 128) - 1, 32, 32));
    gSPDisplayList(oGfxCtx->polyXlu.p++, fireBall);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_demo_effect.c", 2723);
}

void DemoEffect_DrawGodLgt(DemoEffect* this, GlobalContext* globalCtx) {
    s32 pad;
    s32 pad2;
    u32 scroll;

    scroll = globalCtx->gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_demo_effect.c", 2737);

    if (!DemoEffect_CheckCsAction(this, globalCtx, 2)) {
        if (gSaveContext.entranceIndex == 0x00A0) {
            if (gSaveContext.sceneSetupIndex == 4) {
                if (globalCtx->csCtx.frames < 681) {
                    func_80078914(&this->actor.projectedPos, NA_SE_EV_GOD_FLYING - SFX_FLAG);
                }
            } else {
                func_80078914(&this->actor.projectedPos, NA_SE_EV_GOD_FLYING - SFX_FLAG);
            }
        } else {
            func_80078914(&this->actor.projectedPos, NA_SE_EV_GOD_FLYING - SFX_FLAG);
        }

        gSPSegment(oGfxCtx->polyXlu.p++, 8,
                   Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (scroll * 4) % 512, 0, 128, 64, 1,
                                    (scroll * 2) % 256, 512 - ((scroll * 70) % 512) - 1, 64, 32));
        gSPSegment(oGfxCtx->polyXlu.p++, 9,
                   Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 16, 96, 1,
                                    (scroll * 10) % 256, 256 - ((scroll * 30) % 512) - 1, 8, 32));
        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x80, 0x80, this->primXluColor[0], this->primXluColor[1],
                        this->primXluColor[2], 0xFF);
        gDPSetEnvColor(oGfxCtx->polyXlu.p++, this->envXluColor[0], this->envXluColor[1],
                       this->envXluColor[2], 0xFF);
        func_80093D84(globalCtx->state.gfxCtx);
        Matrix_Push();
        gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_effect.c", 2801),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(oGfxCtx->polyXlu.p++, godLgtTrail);
        func_80093D18(globalCtx->state.gfxCtx);
        func_8002EBCC(&this->actor, globalCtx, 0);
        Matrix_Pull();

        this->godLgt.rotation++;
        if (this->godLgt.rotation > 120) {
            // if block necessary to match
            if (1) {
                this->godLgt.rotation = 0;
            }
        }

        Matrix_RotateZ((((s32)this->godLgt.rotation) * 3.0f) * (M_PI / 180.0f), MTXMODE_APPLY);
        Matrix_RotateX(M_PI / 2.0f, MTXMODE_APPLY);
        Matrix_Translate(0.0f, -140.0f, 0.0f, MTXMODE_APPLY);
        Matrix_Scale(0.03f, 0.03f, 0.03f, MTXMODE_APPLY);
        gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_effect.c", 2824),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(oGfxCtx->polyOpa.p++, godLgt);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_demo_effect.c", 2829);
}

void DemoEffect_DrawLightEffect(DemoEffect* this, GlobalContext* globalCtx) {
    s32 pad;
    u8* opacity;
    u32 disp;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_demo_effect.c", 2842);

    if (!DemoEffect_CheckCsAction(this, globalCtx, 1)) {

        if (this->lightEffect.flicker == 0) {
            this->lightEffect.flicker = 1;
        } else {
            disp = (u32)lightBall;
            opacity = &this->lightEffect.opacity;
            func_80093D84(globalCtx->state.gfxCtx);
            gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x00, 0x80, this->primXluColor[0],
                            this->primXluColor[1], this->primXluColor[2], *opacity);
            gDPSetEnvColor(oGfxCtx->polyXlu.p++, this->envXluColor[0], this->envXluColor[1],
                           this->envXluColor[2], 0xFF);
            Matrix_Scale(((this->lightEffect.scaleFlag & 1) * 0.05f) + 1.0f, ((this->lightEffect.scaleFlag & 1) * 0.05f) + 1.0f,
                         ((this->lightEffect.scaleFlag & 1) * 0.05f) + 1.0f, MTXMODE_APPLY);
            Matrix_Push();
            Matrix_Mult(&globalCtx->mf_11DA0, MTXMODE_APPLY);
            Matrix_RotateZ(this->lightEffect.rotation * (M_PI / 180.0f), MTXMODE_APPLY);
            gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_effect.c", 2866),
                      G_MTX_MODELVIEW | G_MTX_LOAD | G_MTX_NOPUSH);
            if (disp) {};
            gSPDisplayList(oGfxCtx->polyXlu.p++, disp);
            Matrix_Pull();
            Matrix_Mult(&globalCtx->mf_11DA0, MTXMODE_APPLY);
            Matrix_RotateZ(-(f32)this->lightEffect.rotation * (M_PI / 180.0f), MTXMODE_APPLY);
            gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_effect.c", 2874),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(oGfxCtx->polyXlu.p++, disp);
        }
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_demo_effect.c", 2881);
}

void DemoEffect_DrawBlueOrb(DemoEffect* this, GlobalContext* globalCtx) {
    s32 pad;
    s32 pad2;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_demo_effect.c", 2892);
    gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x80, 0x80, 0xBC, 0xFF, 0xFF, this->blueOrb.opacity);
    gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0x00, 0x64, 0xFF, 0xFF);
    func_80093D84(globalCtx->state.gfxCtx);
    Matrix_Mult(&globalCtx->mf_11DA0, MTXMODE_APPLY);
    Matrix_RotateZ(this->blueOrb.rotation * (M_PI / 32768.0f), MTXMODE_APPLY);
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_effect.c", 2901),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    this->blueOrb.rotation += 500;
    gSPDisplayList(oGfxCtx->polyXlu.p++, lightBall);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_demo_effect.c", 2907);
}

void DemoEffect_DrawLgtShower(DemoEffect* this, GlobalContext* globalCtx) {
    s32 pad1;
    s32 pad2;
    u32 scroll;
    scroll = globalCtx->gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_demo_effect.c", 2921);
    gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x40, 0x40, 0xFF, 0xFF, 0xA0, this->lgtShower.opacity);
    gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0x32, 0xC8, 0x00, 0xFF);
    func_80093D84(globalCtx->state.gfxCtx);
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_effect.c", 2927),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPSegment(oGfxCtx->polyXlu.p++, 8,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (scroll * 5) % 1024, 0, 256, 64, 1,
                                (scroll * 10) % 128, 512 - ((scroll * 50) % 512), 32, 16));
    gSPDisplayList(oGfxCtx->polyXlu.p++, lgtShower);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_demo_effect.c", 2942);
}

void DemoEffect_DrawLightRing(DemoEffect* this, GlobalContext* globalCtx) {
    s32 pad;
    GlobalContext* globalCtx2 = globalCtx;
    u32 scroll = this->lightRing.timer;

    OPEN_DISPS(globalCtx2->state.gfxCtx, "../z_demo_effect.c", 2956);

    func_80093D84(globalCtx2->state.gfxCtx);
    gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x80, 0x80, 0xAA, 0xFF, 0xFF, this->lightRing.opacity);
    gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0x00, 0x64, 0xFF, 0xFF);
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx2->state.gfxCtx, "../z_demo_effect.c", 2963),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPSegment(oGfxCtx->polyXlu.p++, 8,
               Gfx_TwoTexScroll(globalCtx2->state.gfxCtx, 0, (scroll * 5) % 64, 512 - ((scroll * 2) % 512) - 1,
                                16, 128, 1, 0, 0, 8, 1024));
    gSPDisplayList(oGfxCtx->polyXlu.p++, lightRing);

    CLOSE_DISPS(globalCtx2->state.gfxCtx, "../z_demo_effect.c", 2978);
}

void DemoEffect_DrawTriforceSpot(DemoEffect* this, GlobalContext* globalCtx) {
    s32 pad1;
    s32 pad2;
    Vtx* vertices;
    u32 scroll;

    vertices = (Vtx*)SEGMENTED_TO_VIRTUAL(triforceLightColumnVertices);
    scroll = globalCtx->gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_demo_effect.c", 2994);
    if (gSaveContext.entranceIndex != 0x0400 || globalCtx->csCtx.frames < 885) {
        func_80093D84(globalCtx->state.gfxCtx);

        if (this->triforceSpot.lightColumnOpacity > 0) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_AURORA - SFX_FLAG);
            Matrix_Push();
            Matrix_Scale(1.0f, 2.4f, 1.0f, MTXMODE_APPLY);
            gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_effect.c", 3011),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPSegment(oGfxCtx->polyXlu.p++, 9,
                       Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 256 - ((scroll * 4) % 256) - 1,
                                        64, 64, 1, 0, 256 - ((scroll * 2) % 256) - 1, 64,
                                        32));
            (vertices + 86)->n.a = (vertices + 87)->n.a = (vertices + 88)->n.a = (vertices + 89)->n.a = (vertices + 92)->n.a =
                (vertices + 93)->n.a = (vertices + 94)->n.a = (vertices + 95)->n.a = (s8)this->triforceSpot.lightColumnOpacity;
            gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x80, 0x80, 0xB4, 0xFF, 0xFF, this->triforceSpot.lightColumnOpacity);
            gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0x00, 0xFF, 0x96, 0xFF);
            gSPDisplayList(oGfxCtx->polyXlu.p++, triforceLightColumn);
            Matrix_Pull();
        }

        if (this->triforceSpot.triforceSpotOpacity) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_TRIFORCE - SFX_FLAG);
            gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_effect.c", 3042),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            if (this->triforceSpot.triforceSpotOpacity < 250) {
                func_8002ED80(&this->actor, globalCtx, 0);
                func_80093D84(globalCtx->state.gfxCtx);
                gDPSetRenderMode(oGfxCtx->polyXlu.p++, G_RM_PASS, G_RM_AA_ZB_XLU_SURF2);
                Matrix_RotateY(this->triforceSpot.rotation * (M_PI / 32768.0f), MTXMODE_APPLY);
                gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_effect.c", 3053),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPSegment(oGfxCtx->polyXlu.p++, 8,
                           Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 32, 16, 1, 0, 0,
                                            16, 8));
                gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x80, 0x80, 0xFF, 0xFF, 0xA0, this->triforceSpot.triforceSpotOpacity);
                gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0xAA, 0x8C, 0x00, 0xFF);
                gSPDisplayList(oGfxCtx->polyXlu.p++, triforceSpot);
            } else {
                func_8002EBCC(&this->actor, globalCtx, 0);
                func_80093D18(globalCtx->state.gfxCtx);
                gDPSetRenderMode(oGfxCtx->polyOpa.p++, G_RM_PASS, G_RM_AA_ZB_OPA_SURF2);
                Matrix_RotateY(this->triforceSpot.rotation * (M_PI / 32768.0f), MTXMODE_APPLY);
                gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_effect.c", 3085),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPSegment(oGfxCtx->polyOpa.p++, 8,
                           Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 32, 16, 1, 0, 0,
                                            16, 8));
                gDPSetPrimColor(oGfxCtx->polyOpa.p++, 0x80, 0x80, 0xFF, 0xFF, 0xA0, 0xFF);
                gDPSetEnvColor(oGfxCtx->polyOpa.p++, 0xAA, 0x8C, 0x00, 0xFF);
                gSPDisplayList(oGfxCtx->polyOpa.p++, triforceSpot);
            }
        }
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_demo_effect.c", 3112);
}

void DemoEffect_DrawGetItem(DemoEffect* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->actor;
    if (!DemoEffect_CheckCsAction(this, globalCtx, 1) && !DemoEffect_CheckCsAction(this, globalCtx, 4)) {
        if (!this->getItem.isLoaded) {
            this->getItem.isLoaded = 1;
            return;
        }
        func_8002EBCC(thisx, globalCtx, 0);
        func_8002ED80(thisx, globalCtx, 0);
        func_800694A0(globalCtx, this->getItem.giIndex);
    }
}

s32 DemoEffect_DrawTimewarpLimbs(GlobalContext* globalCtx, SkelAnimeCurve* skelCuve, s32 limbIndex, Actor* thisx) {
    s32 pad;
    DemoEffect* this = THIS;
    u32 scroll = globalCtx->gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_demo_effect.c", 3154);
    func_80093D84(globalCtx->state.gfxCtx);
    gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x00, 0x80, 0xAA, 0xFF, 0xFF, 0xFF);
    gDPSetEnvColor(oGfxCtx->polyXlu.p++, this->envXluColor[0], this->envXluColor[1],
                   this->envXluColor[2], 0xFF);
    gSPSegment(oGfxCtx->polyXlu.p++, 8,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (scroll * 6) % 1024,
                                256 - ((scroll * 16) % 256) - 1, 256, 64, 1, (scroll * 4) % 512,
                                128 - ((scroll * 12) % 128) - 1, 128, 32));
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_demo_effect.c", 3172);

    if (limbIndex == 0) {
        LimbTransform* transforms = skelCuve->transforms;
        transforms->scale.x = 1024;
        transforms->scale.y = 1024;
        transforms->scale.z = transforms->scale.x;
    }

    return 1;
}

void DemoEffect_DrawTimeWarp(DemoEffect* this, GlobalContext* globalCtx) {
    GlobalContext* globalCtx2 = globalCtx;
    u8 effectType = GET_EFFECT_TYPE(&this->actor);
    GraphicsContext* gfxCtx2 = globalCtx2->state.gfxCtx;

    if (effectType == Demo_Effect_Timewarp_Timeblock_Large || effectType == Demo_Effect_Timewarp_Timeblock_Small || Flags_GetEnv(globalCtx, 1) ||
        gSaveContext.sceneSetupIndex >= 4 || gSaveContext.entranceIndex == 0x0324) {
        OPEN_DISPS(gfxCtx2, "../z_demo_effect.c", 3201);
        oGfxCtx->polyXlu.p = Gfx_CallSetupDL(oGfxCtx->polyXlu.p, 25);
        Matrix_Scale(2.0f, 2.0f, 2.0f, MTXMODE_APPLY);
        SkelCurve_Draw(&this->actor, globalCtx2, &this->skelCurve, &DemoEffect_DrawTimewarpLimbs, NULL, 1, &this->actor);
        CLOSE_DISPS(gfxCtx2, "../z_demo_effect.c", 3216);
    }
}

void DemoEffect_FaceToCsEndpoint(DemoEffect* this, Vec3f startPos, Vec3f endPos) {
    s32 pad;
    f32 x = endPos.x - startPos.x;
    f32 z = endPos.z - startPos.z;
    f32 xzDistance = sqrtf(SQ(x) + SQ(z));

    this->actor.shape.rot.y = Math_atan2f(x, z) * (32768.0f / M_PI);
    this->actor.shape.rot.x = Math_atan2f(-(endPos.y - startPos.y), xzDistance) * (32768.0f / M_PI);
}

void DemoEffect_MoveToCsEndpoint(DemoEffect* this, GlobalContext* globalCtx, s32 csActionId, s32 shouldUpdateFacing) {
    Vec3f startPos;
    Vec3f endPos;
    f32 speed;

    startPos.x = globalCtx->csCtx.npcActions[csActionId]->startPos.x;
    startPos.y = globalCtx->csCtx.npcActions[csActionId]->startPos.y;
    startPos.z = globalCtx->csCtx.npcActions[csActionId]->startPos.z;
    endPos.x = globalCtx->csCtx.npcActions[csActionId]->endPos.x;
    endPos.y = globalCtx->csCtx.npcActions[csActionId]->endPos.y;
    endPos.z = globalCtx->csCtx.npcActions[csActionId]->endPos.z;

    speed = DemoEffect_InterpolateCsFrames(globalCtx, csActionId);

    this->actor.posRot.pos.x = ((endPos.x - startPos.x) * speed) + startPos.x;
    this->actor.posRot.pos.y = ((endPos.y - startPos.y) * speed) + startPos.y;
    this->actor.posRot.pos.z = ((endPos.z - startPos.z) * speed) + startPos.z;

    if (shouldUpdateFacing) {
        DemoEffect_FaceToCsEndpoint(this, startPos, endPos);
    }
}

void DemoEffect_MoveMedalCs(DemoEffect* this, GlobalContext* globalCtx, s32 csActionId, f32 speed) {
    Vec3f endPos;
    endPos.x = globalCtx->csCtx.npcActions[csActionId]->endPos.x;
    endPos.y = globalCtx->csCtx.npcActions[csActionId]->endPos.y;
    endPos.z = globalCtx->csCtx.npcActions[csActionId]->endPos.z;
    DemoEffect_MoveTowardTarget(endPos, this, speed);
}

void DemoEffect_InitPositionFromCsAction(DemoEffect* this, GlobalContext* globalCtx, s32 csActionIndex) {
    f32 x = globalCtx->csCtx.npcActions[csActionIndex]->startPos.x;
    f32 y = globalCtx->csCtx.npcActions[csActionIndex]->startPos.y;
    f32 z = globalCtx->csCtx.npcActions[csActionIndex]->startPos.z;

    this->actor.posRot.pos.x = x;
    this->actor.posRot.pos.y = y;
    this->actor.posRot.pos.z = z;
}
