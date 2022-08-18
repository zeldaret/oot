/*
 * File: z_door_shutter.c
 * Overlay: ovl_Door_Shutter
 * Description: Sliding doors, Phantom Ganon room bars, Gohma room rock slab
 */

#include "z_door_shutter.h"
#include "overlays/actors/ovl_Boss_Goma/z_boss_goma.h"

#include "assets/objects/object_gnd/object_gnd.h"
#include "assets/objects/object_goma/object_goma.h"
#include "assets/objects/object_ydan_objects/object_ydan_objects.h"
#include "assets/objects/object_ddan_objects/object_ddan_objects.h"
#include "assets/objects/object_bdan_objects/object_bdan_objects.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"
#include "assets/objects/object_bdoor/object_bdoor.h"
#include "assets/objects/object_hidan_objects/object_hidan_objects.h"
#include "assets/objects/object_ganon_objects/object_ganon_objects.h"
#include "assets/objects/object_jya_door/object_jya_door.h"
#include "assets/objects/object_mizu_objects/object_mizu_objects.h"
#include "assets/objects/object_haka_door/object_haka_door.h"
#include "assets/objects/object_ice_objects/object_ice_objects.h"
#include "assets/objects/object_menkuri_objects/object_menkuri_objects.h"
#include "assets/objects/object_demo_kekkai/object_demo_kekkai.h"
#include "assets/objects/object_ouke_haka/object_ouke_haka.h"

#define FLAGS ACTOR_FLAG_4

void DoorShutter_Init(Actor* thisx, PlayState* play2);
void DoorShutter_Destroy(Actor* thisx, PlayState* play);
void DoorShutter_Update(Actor* thisx, PlayState* play);
void DoorShutter_Draw(Actor* thisx, PlayState* play);

void DoorShutter_AddQuake(PlayState* play, s16 y, s16 countdown, s16 camId);
void DoorShutter_SetupType(DoorShutter* this, PlayState* play);
void func_80996A54(DoorShutter* this, PlayState* play);
void func_80996B00(DoorShutter* this, PlayState* play);
void func_80996B0C(DoorShutter* this, PlayState* play);
void func_80996EE8(DoorShutter* this, PlayState* play);
void func_80996F98(DoorShutter* this, PlayState* play);
void DoorShutter_Opening(DoorShutter* this, PlayState* play);
void func_80997150(DoorShutter* this, PlayState* play);
void DoorShutter_Closing(DoorShutter* this, PlayState* play);
void DoorShutter_JabuDoorClosing(DoorShutter* this, PlayState* play);
void func_80997568(DoorShutter* this, PlayState* play);
void DoorShutter_GohmaBlockFalling(DoorShutter* this, PlayState* play);
void DoorShutter_GohmaBlock(DoorShutter* this, PlayState* play);
void DoorShutter_PhantomGanonBars(DoorShutter* this, PlayState* play);

const ActorInit Door_Shutter_InitVars = {
    ACTOR_DOOR_SHUTTER,
    ACTORCAT_DOOR,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(DoorShutter),
    (ActorFunc)DoorShutter_Init,
    (ActorFunc)DoorShutter_Destroy,
    (ActorFunc)DoorShutter_Update,
    (ActorFunc)DoorShutter_Draw,
};

typedef enum {
    /* 0  */ DOORSHUTTER_GFX_DEKU_TREE_0,
    /* 1  */ DOORSHUTTER_GFX_DEKU_TREE_1,
    /* 2  */ DOORSHUTTER_GFX_DODONGOS_CAVERN,
    /* 3  */ DOORSHUTTER_GFX_JABU_JABU,
    /* 4  */ DOORSHUTTER_GFX_PHANTOM_GANON_BARS,
    /* 5  */ DOORSHUTTER_GFX_GOHMA_BLOCK,
    /* 6  */ DOORSHUTTER_GFX_SPIRIT_TEMPLE,
    /* 7  */ DOORSHUTTER_GFX_BOSS_DOOR,
    /* 8  */ DOORSHUTTER_GFX_8,
    /* 9  */ DOORSHUTTER_GFX_FIRE_TEMPLE_9,
    /* 10 */ DOORSHUTTER_GFX_FIRE_TEMPLE_10,
    /* 11 */ DOORSHUTTER_GFX_11,
    /* 12 */ DOORSHUTTER_GFX_WATER_TEMPLE_12,
    /* 13 */ DOORSHUTTER_GFX_WATER_TEMPLE_13,
    /* 14 */ DOORSHUTTER_GFX_SHADOW_TEMPLE_14,
    /* 15 */ DOORSHUTTER_GFX_SHADOW_TEMPLE_15,
    /* 16 */ DOORSHUTTER_GFX_ICE_CAVERN,
    /* 17 */ DOORSHUTTER_GFX_GERUDO_TRAINING_GROUND,
    /* 18 */ DOORSHUTTER_GFX_18,
    /* 19 */ DOORSHUTTER_GFX_19
} DoorShutterGfxType;

typedef enum {
    /* 0  */ DOORSHUTTER_STYLE_PHANTOM_GANON,
    /* 1  */ DOORSHUTTER_STYLE_GOHMA_BLOCK,
    /* 2  */ DOORSHUTTER_STYLE_DEKU_TREE,
    /* 3  */ DOORSHUTTER_STYLE_DODONGOS_CAVERN,
    /* 4  */ DOORSHUTTER_STYLE_JABU_JABU,
    /* 5  */ DOORSHUTTER_STYLE_5, // Forest temple?
    /* 6  */ DOORSHUTTER_STYLE_BOSS_DOOR,
    /* 7  */ DOORSHUTTER_STYLE_7, // Default for some `DoorShutterType`s
    /* 8  */ DOORSHUTTER_STYLE_FIRE_TEMPLE,
    /* 9  */ DOORSHUTTER_STYLE_9,
    /* 10 */ DOORSHUTTER_STYLE_SPIRIT_TEMPLE,
    /* 11 */ DOORSHUTTER_STYLE_WATER_TEMPLE,
    /* 12 */ DOORSHUTTER_STYLE_SHADOW_TEMPLE,
    /* 13 */ DOORSHUTTER_STYLE_ICE_CAVERN_,
    /* 14 */ DOORSHUTTER_STYLE_GERUDO_TRAINING_GROUND,
    /* 15 */ DOORSHUTTER_STYLE_15,
    /* 16 */ DOORSHUTTER_STYLE_16
} DoorShutterStyleType;

typedef struct {
    s16 objectId;
    u8 gfxType1;
    u8 gfxType2;
} DoorShutterStyleInfo;

static DoorShutterStyleInfo sStyleInfo[] = {
    /* DOORSHUTTER_STYLE_PHANTOM_GANON */
    {
        OBJECT_GND,
        DOORSHUTTER_GFX_PHANTOM_GANON_BARS,
        DOORSHUTTER_GFX_PHANTOM_GANON_BARS,
    },
    /* DOORSHUTTER_STYLE_GOHMA_BLOCK */
    {
        OBJECT_GOMA,
        DOORSHUTTER_GFX_GOHMA_BLOCK,
        DOORSHUTTER_GFX_GOHMA_BLOCK,
    },
    /* DOORSHUTTER_STYLE_DEKU_TREE */
    {
        OBJECT_YDAN_OBJECTS,
        DOORSHUTTER_GFX_DEKU_TREE_0,
        DOORSHUTTER_GFX_DEKU_TREE_1,
    },
    /* DOORSHUTTER_STYLE_DODONGOS_CAVERN */
    {
        OBJECT_DDAN_OBJECTS,
        DOORSHUTTER_GFX_DODONGOS_CAVERN,
        DOORSHUTTER_GFX_DODONGOS_CAVERN,
    },
    /* DOORSHUTTER_STYLE_JABU_JABU */
    {
        OBJECT_BDAN_OBJECTS,
        DOORSHUTTER_GFX_JABU_JABU,
        DOORSHUTTER_GFX_JABU_JABU,
    },
    /* DOORSHUTTER_STYLE_5 */
    {
        OBJECT_GAMEPLAY_KEEP,
        DOORSHUTTER_GFX_8,
        DOORSHUTTER_GFX_8,
    },
    /* DOORSHUTTER_STYLE_BOSS_DOOR */
    {
        OBJECT_BDOOR,
        DOORSHUTTER_GFX_BOSS_DOOR,
        DOORSHUTTER_GFX_BOSS_DOOR,
    },
    /* DOORSHUTTER_STYLE_7 */
    {
        OBJECT_GAMEPLAY_KEEP,
        DOORSHUTTER_GFX_8,
        DOORSHUTTER_GFX_8,
    },
    /* DOORSHUTTER_STYLE_FIRE_TEMPLE */
    {
        OBJECT_HIDAN_OBJECTS,
        DOORSHUTTER_GFX_FIRE_TEMPLE_9,
        DOORSHUTTER_GFX_FIRE_TEMPLE_10,
    },
    /* DOORSHUTTER_STYLE_9 */
    {
        OBJECT_GANON_OBJECTS,
        DOORSHUTTER_GFX_11,
        DOORSHUTTER_GFX_11,
    },
    /* DOORSHUTTER_STYLE_SPIRIT_TEMPLE */
    {
        OBJECT_JYA_DOOR,
        DOORSHUTTER_GFX_SPIRIT_TEMPLE,
        DOORSHUTTER_GFX_SPIRIT_TEMPLE,
    },
    /* DOORSHUTTER_STYLE_WATER_TEMPLE */
    {
        OBJECT_MIZU_OBJECTS,
        DOORSHUTTER_GFX_WATER_TEMPLE_12,
        DOORSHUTTER_GFX_WATER_TEMPLE_13,
    },
    /* DOORSHUTTER_STYLE_SHADOW_TEMPLE */
    {
        OBJECT_HAKA_DOOR,
        DOORSHUTTER_GFX_SHADOW_TEMPLE_14,
        DOORSHUTTER_GFX_SHADOW_TEMPLE_15,
    },
    /* DOORSHUTTER_STYLE_ICE_CAVERN_ */
    {
        OBJECT_ICE_OBJECTS,
        DOORSHUTTER_GFX_ICE_CAVERN,
        DOORSHUTTER_GFX_ICE_CAVERN,
    },
    /* DOORSHUTTER_STYLE_GERUDO_TRAINING_GROUND */
    {
        OBJECT_MENKURI_OBJECTS,
        DOORSHUTTER_GFX_GERUDO_TRAINING_GROUND,
        DOORSHUTTER_GFX_GERUDO_TRAINING_GROUND,
    },
    /* DOORSHUTTER_STYLE_15 */
    {
        OBJECT_DEMO_KEKKAI,
        DOORSHUTTER_GFX_18,
        DOORSHUTTER_GFX_18,
    },
    /* DOORSHUTTER_STYLE_16 */
    {
        OBJECT_OUKE_HAKA,
        DOORSHUTTER_GFX_19,
        DOORSHUTTER_GFX_19,
    },
};

typedef struct {
    /* 0x0000 */ Gfx* doorDL;
    /* 0x0004 */ Gfx* barsDL;
    /* 0x0008 */ u8 barsOpenOffsetY;
    /* 0x0009 */ u8 barsOffsetZ;
    /* 0x000A */ u8 rangeSides;
    /* 0x000B */ u8 rangeY;
} DoorShutterGfxInfo;

static DoorShutterGfxInfo sGfxInfo[] = {
    { gDTDungeonDoor1DL, gDoorMetalBarsDL, 130, 12, 20, 15 },                      // DOORSHUTTER_GFX_DEKU_TREE_0
    { gDTDungeonDoor2DL, gDoorMetalBarsDL, 130, 12, 20, 15 },                      // DOORSHUTTER_GFX_DEKU_TREE_1
    { gDodongoDoorDL, gDodongoBarsDL, 240, 14, 70, 15 },                           // DOORSHUTTER_GFX_DODONGOS_CAVERN
    { gJabuDoorSection1DL, gJabuWebDoorDL, 0, 110, 50, 15 },                       // DOORSHUTTER_GFX_JABU_JABU
    { gPhantomGanonBarsDL, NULL, 130, 12, 50, 15 },                                // DOORSHUTTER_GFX_PHANTOM_GANON_BARS
    { gGohmaDoorDL, NULL, 130, 12, 50, 15 },                                       // DOORSHUTTER_GFX_GOHMA_BLOCK
    { gSpiritDoorDL, gJyaDoorMetalBarsDL, 240, 14, 50, 15 },                       // DOORSHUTTER_GFX_SPIRIT_TEMPLE
    { object_bdoor_DL_0010C0, NULL, 130, 12, 50, 15 },                             // DOORSHUTTER_GFX_BOSS_DOOR
    { gDungeonDoorDL, gDoorMetalBarsDL, 130, 12, 20, 15 },                         // DOORSHUTTER_GFX_8
    { gFireTempleDoorFrontDL, gDoorMetalBarsDL, 130, 12, 20, 15 },                 // DOORSHUTTER_GFX_FIRE_TEMPLE_9
    { gFireTempleDoorBackDL, gDoorMetalBarsDL, 130, 12, 20, 15 },                  // DOORSHUTTER_GFX_FIRE_TEMPLE_10
    { object_ganon_objects_DL_0000C0, gDoorMetalBarsDL, 130, 12, 20, 15 },         // DOORSHUTTER_GFX_11
    { gObjectMizuObjectsDoorShutterDL_005D90, gDoorMetalBarsDL, 130, 12, 20, 15 }, // DOORSHUTTER_GFX_WATER_TEMPLE_12
    { gObjectMizuObjectsDoorShutterDL_007000, gDoorMetalBarsDL, 130, 12, 20, 15 }, // DOORSHUTTER_GFX_WATER_TEMPLE_13
    { object_haka_door_DL_002620, gDoorMetalBarsDL, 130, 12, 20, 15 },             // DOORSHUTTER_GFX_SHADOW_TEMPLE_14
    { object_haka_door_DL_003890, gDoorMetalBarsDL, 130, 12, 20, 15 },             // DOORSHUTTER_GFX_SHADOW_TEMPLE_15
    { object_ice_objects_DL_001D10, gDoorMetalBarsDL, 130, 12, 20, 15 },           // DOORSHUTTER_GFX_ICE_CAVERN
    { gGTGDoorDL, gDoorMetalBarsDL, 130, 12, 20, 15 },                 // DOORSHUTTER_GFX_GERUDO_TRAINING_GROUND
    { gGanonsCastleDoorDL, gDoorMetalBarsDL, 130, 12, 20, 15 },        // DOORSHUTTER_GFX_18
    { object_ouke_haka_DL_0000C0, gDoorMetalBarsDL, 130, 12, 20, 15 }, // DOORSHUTTER_GFX_19
};

// With -1, the style is taken from `sSceneInfo`
static s8 sTypeStyles[] = {
    -1,                              // SHUTTER
    -1,                              // SHUTTER_FRONT_CLEAR
    -1,                              // SHUTTER_FRONT_SWITCH
    -1,                              // SHUTTER_BACK_LOCKED
    DOORSHUTTER_STYLE_PHANTOM_GANON, // SHUTTER_PG_BARS
    DOORSHUTTER_STYLE_BOSS_DOOR,     // SHUTTER_BOSS
    DOORSHUTTER_STYLE_GOHMA_BLOCK,   // SHUTTER_GOHMA_BLOCK
    -1,                              // SHUTTER_FRONT_SWITCH_BACK_CLEAR
    DOORSHUTTER_STYLE_PHANTOM_GANON, // SHUTTER_8
    -1,                              // SHUTTER_9
    -1,                              // SHUTTER_A
    -1,                              // SHUTTER_KEY_LOCKED
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F(scale, 1, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 4000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 400, ICHAIN_STOP),
};

typedef struct {
    s16 sceneId;
    u8 styleType;
} DoorShutterSceneInfo;

static DoorShutterSceneInfo sSceneInfo[] = {
    { SCENE_YDAN, DOORSHUTTER_STYLE_DEKU_TREE },
    { SCENE_DDAN, DOORSHUTTER_STYLE_DODONGOS_CAVERN },
    { SCENE_DDAN_BOSS, DOORSHUTTER_STYLE_DODONGOS_CAVERN },
    { SCENE_BDAN, DOORSHUTTER_STYLE_JABU_JABU },
    { SCENE_BMORI1, DOORSHUTTER_STYLE_5 },
    { SCENE_HIDAN, DOORSHUTTER_STYLE_FIRE_TEMPLE },
    { SCENE_GANON, DOORSHUTTER_STYLE_9 },
    { SCENE_GANON_BOSS, DOORSHUTTER_STYLE_9 },
    { SCENE_JYASINZOU, DOORSHUTTER_STYLE_SPIRIT_TEMPLE },
    { SCENE_JYASINBOSS, DOORSHUTTER_STYLE_SPIRIT_TEMPLE },
    { SCENE_MIZUSIN, DOORSHUTTER_STYLE_WATER_TEMPLE },
    { SCENE_HAKADAN, DOORSHUTTER_STYLE_SHADOW_TEMPLE },
    { SCENE_HAKADANCH, DOORSHUTTER_STYLE_SHADOW_TEMPLE },
    { SCENE_ICE_DOUKUTO, DOORSHUTTER_STYLE_ICE_CAVERN_ },
    { SCENE_MEN, DOORSHUTTER_STYLE_GERUDO_TRAINING_GROUND },
    { SCENE_GANONTIKA, DOORSHUTTER_STYLE_15 },
    { SCENE_HAKAANA_OUKE, DOORSHUTTER_STYLE_16 },
    { -1, DOORSHUTTER_STYLE_7 },
};

typedef enum {
    /* 0 */ DOORSHUTTER_BOSSDOORTEX_0,
    /* 1 */ DOORSHUTTER_BOSSDOORTEX_FIRE,
    /* 2 */ DOORSHUTTER_BOSSDOORTEX_WATER,
    /* 3 */ DOORSHUTTER_BOSSDOORTEX_SHADOW,
    /* 4 */ DOORSHUTTER_BOSSDOORTEX_GANON,
    /* 5 */ DOORSHUTTER_BOSSDOORTEX_FOREST,
    /* 6 */ DOORSHUTTER_BOSSDOORTEX_SPIRIT
} DoorShutterBossDoorTexIndex;

typedef struct {
    s16 dungeonSceneId;
    s16 bossSceneId;
    u8 texIndex;
} DoorShutterBossDoorInfo;

static DoorShutterBossDoorInfo sBossDoorInfo[] = {
    { SCENE_HIDAN, SCENE_FIRE_BS, DOORSHUTTER_BOSSDOORTEX_FIRE },
    { SCENE_MIZUSIN, SCENE_MIZUSIN_BS, DOORSHUTTER_BOSSDOORTEX_WATER },
    { SCENE_HAKADAN, SCENE_HAKADAN_BS, DOORSHUTTER_BOSSDOORTEX_SHADOW },
    { SCENE_GANON, SCENE_GANON_BOSS, DOORSHUTTER_BOSSDOORTEX_GANON },
    { SCENE_BMORI1, SCENE_MORIBOSSROOM, DOORSHUTTER_BOSSDOORTEX_FOREST },
    { SCENE_JYASINZOU, SCENE_JYASINBOSS, DOORSHUTTER_BOSSDOORTEX_SPIRIT },
    { -1, -1, DOORSHUTTER_BOSSDOORTEX_0 },
};

static Gfx* sJabuDoorDLists[] = {
    gJabuDoorSection1DL, gJabuDoorSection2DL, gJabuDoorSection7DL, gJabuDoorSection4DL,
    gJabuDoorSection5DL, gJabuDoorSection4DL, gJabuDoorSection3DL, gJabuDoorSection2DL,
};

static void* sBossDoorTextures[] = {
    object_bdoor_Tex_0065C0, // DOORSHUTTER_BOSSDOORTEX_0
    object_bdoor_Tex_0035C0, // DOORSHUTTER_BOSSDOORTEX_FIRE
    object_bdoor_Tex_0055C0, // DOORSHUTTER_BOSSDOORTEX_WATER
    object_bdoor_Tex_0045C0, // DOORSHUTTER_BOSSDOORTEX_SHADOW
    object_bdoor_Tex_000000, // DOORSHUTTER_BOSSDOORTEX_GANON
    object_bdoor_Tex_0025C0, // DOORSHUTTER_BOSSDOORTEX_FOREST
    object_bdoor_Tex_0015C0, // DOORSHUTTER_BOSSDOORTEX_SPIRIT
};

void DoorShutter_SetupAction(DoorShutter* this, DoorShutterActionFunc actionFunc) {
    this->actionFunc = actionFunc;
    this->unk_16F = 0;
}

s32 DoorShutter_SetupDoor(DoorShutter* this, PlayState* play) {
    TransitionActorEntry* transitionEntry = &play->transiActorCtx.list[GET_TRANSITION_ACTOR_INDEX(&this->dyna.actor)];
    s8 frontRoom = transitionEntry->sides[0].room;
    s32 doorType = this->doorType;
    DoorShutterStyleInfo* styleInfo = &sStyleInfo[this->styleType];

    if (doorType != SHUTTER_KEY_LOCKED) {
        if (frontRoom == transitionEntry->sides[1].room) {
            if (ABS((s16)(this->dyna.actor.shape.rot.y - this->dyna.actor.yawTowardsPlayer)) < 0x4000) {
                frontRoom = -1;
            }
        }
        if (frontRoom == this->dyna.actor.room) {
            if (doorType == SHUTTER_FRONT_SWITCH_BACK_CLEAR) { // Swap the back clear to the front clear
                doorType = SHUTTER_FRONT_CLEAR;
            } else {
                doorType = (doorType == SHUTTER_BOSS) ? SHUTTER_BACK_LOCKED : SHUTTER;
            }
        }
    }
    this->gfxType = (doorType == SHUTTER) ? styleInfo->gfxType1 : styleInfo->gfxType2;

    if (doorType == SHUTTER_FRONT_CLEAR) {
        if (!Flags_GetClear(play, this->dyna.actor.room)) {
            DoorShutter_SetupAction(this, func_80996A54);
            this->barsClosed = 1.0f;
            return true;
        }
    } else if (doorType == SHUTTER_FRONT_SWITCH || doorType == SHUTTER_FRONT_SWITCH_BACK_CLEAR) {
        if (!Flags_GetSwitch(play, this->dyna.actor.params & 0x3F)) {
            DoorShutter_SetupAction(this, func_80996EE8);
            this->barsClosed = 1.0f;
            return true;
        }
        DoorShutter_SetupAction(this, func_80996F98);
        return false;
    } else if (doorType == SHUTTER_BACK_LOCKED) {
        DoorShutter_SetupAction(this, func_80996B00);
        return false;
    }
    DoorShutter_SetupAction(this, func_80996B0C);
    return false;
}

void DoorShutter_Init(Actor* thisx, PlayState* play2) {
    DoorShutter* this = (DoorShutter*)thisx;
    PlayState* play = play2;
    s32 styleType;
    s32 pad;
    s32 objectIndex;
    s32 i;

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    this->dyna.actor.home.pos.z = this->dyna.actor.shape.yOffset;
    DynaPolyActor_Init(&this->dyna, DPM_UNK);
    this->doorType = (this->dyna.actor.params >> 6) & 0xF;

    styleType = sTypeStyles[this->doorType];
    if (styleType < 0) {
        DoorShutterSceneInfo* sceneInfo;

        for (sceneInfo = &sSceneInfo[0], i = 0; i < ARRAY_COUNT(sSceneInfo) - 1; i++, sceneInfo++) {
            if (play->sceneId == sceneInfo->sceneId) {
                break;
            }
        }
        styleType = sceneInfo->styleType;
    } else if (styleType == DOORSHUTTER_STYLE_BOSS_DOOR) {
        DoorShutterBossDoorInfo* bossDoorInfo;

        for (bossDoorInfo = &sBossDoorInfo[0], i = 0; i < ARRAY_COUNT(sBossDoorInfo) - 1; i++, bossDoorInfo++) {
            if (play->sceneId == bossDoorInfo->dungeonSceneId || play->sceneId == bossDoorInfo->bossSceneId) {
                break;
            }
        }
        this->bossDoorTexIndex = bossDoorInfo->texIndex;
    } else {
        this->dyna.actor.room = -1;
    }

    if (this->requiredObjBankIndex = objectIndex = Object_GetIndex(&play->objectCtx, sStyleInfo[styleType].objectId),
        (s8)objectIndex < 0) {
        Actor_Kill(&this->dyna.actor);
        return;
    }

    DoorShutter_SetupAction(this, DoorShutter_SetupType);
    this->styleType = styleType;
    if (this->doorType == SHUTTER_KEY_LOCKED || this->doorType == SHUTTER_BOSS) {
        if (!Flags_GetSwitch(play, this->dyna.actor.params & 0x3F)) {
            this->lockTimer = 10;
        }
        Actor_SetFocus(&this->dyna.actor, 60.0f);
    } else if (styleType == DOORSHUTTER_STYLE_JABU_JABU) {
        Actor_SetScale(&this->dyna.actor, 0.1f);
        this->jabuDoorClosed = 100;
        this->dyna.actor.uncullZoneScale = 200.0f;
        Actor_SetFocus(&this->dyna.actor, 0.0f);
    } else {
        Actor_SetFocus(&this->dyna.actor, 60.0f);
    }
}

void DoorShutter_Destroy(Actor* thisx, PlayState* play) {
    DoorShutter* this = (DoorShutter*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
    if (this->dyna.actor.room >= 0) {
        s32 transitionActorId = GET_TRANSITION_ACTOR_INDEX(&this->dyna.actor);

        play->transiActorCtx.list[transitionActorId].id *= -1;
    }
}

void DoorShutter_SetupType(DoorShutter* this, PlayState* play) {
    if (Object_IsLoaded(&play->objectCtx, this->requiredObjBankIndex)) {
        this->dyna.actor.objBankIndex = this->requiredObjBankIndex;
        if (this->doorType == SHUTTER_PG_BARS || this->doorType == SHUTTER_GOHMA_BLOCK) {
            // Init dynapoly for shutters of the type that uses it
            CollisionHeader* colHeader = NULL;

            Actor_SetObjectDependency(play, &this->dyna.actor);
            this->gfxType = sStyleInfo[this->styleType].gfxType1;
            CollisionHeader_GetVirtual((this->doorType == SHUTTER_GOHMA_BLOCK) ? &gGohmaDoorCol : &gPhantomGanonBarsCol,
                                       &colHeader);
            this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);
            if (this->doorType == SHUTTER_GOHMA_BLOCK) {
                this->dyna.actor.velocity.y = 0.0f;
                this->dyna.actor.gravity = -2.0f;
                Audio_PlayActorSfx2(&this->dyna.actor, NA_SE_EV_SLIDE_DOOR_CLOSE);
                DoorShutter_SetupAction(this, DoorShutter_GohmaBlockFalling);
            } else {
                DoorShutter_SetupAction(this, DoorShutter_PhantomGanonBars);
                this->unk_164 = 7;
            }
        } else {
            DoorShutter_SetupDoor(this, play);
        }
    }
}

/**
 * Compute the distance forwards to the player
 * (perpendicularly to the door's left-right, and negative if the player is behind),
 * or returns the max float value if the player is too far left/right (`maxDistSides`) or above/below (`maxDistY`).
 */
f32 DoorShutter_GetPlayerDistance(PlayState* play, DoorShutter* this, f32 offsetY, f32 maxDistSides, f32 maxDistY) {
    s32 pad;
    Vec3f playerPos;
    Vec3f relPlayerPos;
    Player* player = GET_PLAYER(play);

    playerPos.x = player->actor.world.pos.x;
    playerPos.y = player->actor.world.pos.y + offsetY;
    playerPos.z = player->actor.world.pos.z;

    func_8002DBD0(&this->dyna.actor, &relPlayerPos, &playerPos);

    if (fabsf(relPlayerPos.x) > maxDistSides || fabsf(relPlayerPos.y) > maxDistY) {
        return FLT_MAX;
    } else {
        return relPlayerPos.z;
    }
}

/**
 * Returns 0 if the player is not near and facing the door.
 * Returns 1 if the player is near and faces the front of the door.
 * Returns -1 if the player is near and faces the back of the door.
 */
s32 DoorShutter_GetPlayerSide(DoorShutter* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (!Player_InCsMode(play)) {
        DoorShutterGfxInfo* gfxInfo = &sGfxInfo[this->gfxType];
        f32 playerDistForwards =
            DoorShutter_GetPlayerDistance(play, this, (this->gfxType != DOORSHUTTER_GFX_JABU_JABU) ? 0.0f : 80.0f,
                                          gfxInfo->rangeSides, gfxInfo->rangeY);

        if (fabsf(playerDistForwards) < 50.0f) {
            s16 yawDiff = player->actor.shape.rot.y - this->dyna.actor.shape.rot.y;

            // If the player is in front of the door (positive forwards distance),
            // it is expected that the player faces the opposite way compared to the door.
            if (playerDistForwards > 0.0f) {
                yawDiff = 0x8000 - yawDiff;
            }

            if (ABS(yawDiff) < 0x3000) {
                return (playerDistForwards >= 0.0f) ? 1.0f : -1.0f;
            }
        }
    }
    return 0.0f;
}

void func_80996A54(DoorShutter* this, PlayState* play) {
    if (Flags_GetClear(play, this->dyna.actor.room) || Flags_GetTempClear(play, this->dyna.actor.room)) {
        Flags_SetClear(play, this->dyna.actor.room);
        DoorShutter_SetupAction(this, func_80997150);
        OnePointCutscene_Attention(play, &this->dyna.actor);
        OnePointCutscene_Attention(play, &GET_PLAYER(play)->actor);
        this->unk_16F = -100;
    } else if (DoorShutter_GetPlayerSide(this, play) != 0) {
        Player* player = GET_PLAYER(play);

        player->naviTextId = -0x202;
    }
}

void func_80996B00(DoorShutter* this, PlayState* play) {
}

void func_80996B0C(DoorShutter* this, PlayState* play) {
    if (this->unk_164 != 0) {
        DoorShutter_SetupAction(this, DoorShutter_Opening);
        this->dyna.actor.velocity.y = 0.0f;
        if (this->lockTimer != 0) {
            Flags_SetSwitch(play, this->dyna.actor.params & 0x3F);
            if (this->doorType != SHUTTER_BOSS) {
                gSaveContext.inventory.dungeonKeys[gSaveContext.mapIndex]--;
                Audio_PlayActorSfx2(&this->dyna.actor, NA_SE_EV_CHAIN_KEY_UNLOCK);
            } else {
                Audio_PlayActorSfx2(&this->dyna.actor, NA_SE_EV_CHAIN_KEY_UNLOCK_B);
            }
        }
    } else {
        s32 doorDirection = DoorShutter_GetPlayerSide(this, play);

        if (doorDirection != 0) {
            Player* player = GET_PLAYER(play);

            if (this->lockTimer != 0) {
                if (this->doorType == SHUTTER_BOSS) {
                    if (!CHECK_DUNGEON_ITEM(DUNGEON_KEY_BOSS, gSaveContext.mapIndex)) {
                        player->naviTextId = -0x204;
                        return;
                    }
                } else if (gSaveContext.inventory.dungeonKeys[gSaveContext.mapIndex] <= 0) {
                    player->naviTextId = -0x203;
                    return;
                }
                player->doorTimer = 10;
            }
            player->doorType = PLAYER_DOORTYPE_SLIDING;
            player->doorDirection = doorDirection;
            player->doorActor = &this->dyna.actor;
        }
    }
}

void func_80996C60(DoorShutter* this, PlayState* play) {
    if (this->dyna.actor.category == ACTORCAT_DOOR) {
        Player* player = GET_PLAYER(play);
        s32 savedGfxType = this->gfxType;
        s32 doorCamTimer2 = 15;

        if (DoorShutter_SetupDoor(this, play)) {
            doorCamTimer2 = 32;
        }
        DoorShutter_SetupAction(this, DoorShutter_Opening);
        this->gfxType = savedGfxType;
        this->barsClosed = 0.0f;
        Camera_ChangeDoorCam(play->cameraPtrs[CAM_ID_MAIN], &this->dyna.actor, player->doorBgCamIndex, 0.0f, 12,
                             doorCamTimer2, 10);
    }
}

s32 DoorShutter_UpdateOpening(DoorShutter* this, PlayState* play) {
    if (this->gfxType != DOORSHUTTER_GFX_JABU_JABU) {
        if (this->dyna.actor.velocity.y == 0.0f) {
            Audio_PlayActorSfx2(&this->dyna.actor, NA_SE_EV_SLIDE_DOOR_OPEN);
            func_80996C60(this, play);
        }
        Math_StepToF(&this->dyna.actor.velocity.y, 15.0f, 3.0f);
        if (Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y + 200.0f,
                         this->dyna.actor.velocity.y)) {
            return true;
        }
    } else {
        if (this->jabuDoorClosed == 100) {
            Audio_PlayActorSfx2(&this->dyna.actor, NA_SE_EV_BUYODOOR_OPEN);
            func_80996C60(this, play);
        }
        if (Math_StepToS(&this->jabuDoorClosed, 0, 10)) {
            return true;
        }
    }
    return false;
}

s32 DoorShutter_UpdateBarsClosed(DoorShutter* this, PlayState* play, f32 barsClosedTarget) {
    if (this->barsClosed == (1.0f - barsClosedTarget)) {
        if (this->gfxType != DOORSHUTTER_GFX_JABU_JABU) {
            if (barsClosedTarget == 1.0f) {
                Audio_PlayActorSfx2(&this->dyna.actor, NA_SE_EV_METALDOOR_CLOSE);
            } else {
                Audio_PlayActorSfx2(&this->dyna.actor, NA_SE_EV_METALDOOR_OPEN);
            }
        } else {
            if (barsClosedTarget == 1.0f) {
                Audio_PlayActorSfx2(&this->dyna.actor, NA_SE_EV_BUYOSHUTTER_CLOSE);
            } else {
                Audio_PlayActorSfx2(&this->dyna.actor, NA_SE_EV_BUYOSHUTTER_OPEN);
            }
        }
    }

    if (Math_StepToF(&this->barsClosed, barsClosedTarget, 0.2f)) {
        return true;
    } else {
        return false;
    }
}

void func_80996EE8(DoorShutter* this, PlayState* play) {
    if (DoorShutter_UpdateBarsClosed(this, play, 1.0f)) {
        if (Flags_GetSwitch(play, this->dyna.actor.params & 0x3F)) {
            DoorShutter_SetupAction(this, func_80997150);
            OnePointCutscene_Attention(play, &this->dyna.actor);
            this->unk_16F = -100;
        } else {
            if (DoorShutter_GetPlayerSide(this, play) != 0) {
                Player* player = GET_PLAYER(play);

                // Jabu navi text for switch doors is different
                player->naviTextId = (play->sceneId == SCENE_BDAN) ? -0x20B : -0x202;
            }
        }
    }
}

void func_80996F98(DoorShutter* this, PlayState* play) {
    if (this->unk_164 == 0 && !Flags_GetSwitch(play, this->dyna.actor.params & 0x3F)) {
        DoorShutter_SetupAction(this, func_80996EE8);
    } else {
        func_80996B0C(this, play);
    }
}

void DoorShutter_Opening(DoorShutter* this, PlayState* play) {
    if (DECR(this->lockTimer) == 0 && play->roomCtx.status == 0 && DoorShutter_UpdateOpening(this, play)) {
        if (((this->doorType == SHUTTER_BOSS) ? 20.0f : 50.0f) < this->dyna.actor.xzDistToPlayer) {
            if (DoorShutter_SetupDoor(this, play)) {
                this->dyna.actor.velocity.y = 30.0f;
            }
            if (this->gfxType != DOORSHUTTER_GFX_JABU_JABU) {
                Audio_PlayActorSfx2(&this->dyna.actor, NA_SE_EV_SLIDE_DOOR_CLOSE);
                DoorShutter_SetupAction(this, DoorShutter_Closing);
            } else {
                Audio_PlayActorSfx2(&this->dyna.actor, NA_SE_EV_BUYODOOR_CLOSE);
                if ((this->doorType == SHUTTER_FRONT_SWITCH || this->doorType == SHUTTER_FRONT_SWITCH_BACK_CLEAR) &&
                    !Flags_GetSwitch(play, this->dyna.actor.params & 0x3F)) {
                    Audio_PlayActorSfx2(&this->dyna.actor, NA_SE_EV_BUYOSHUTTER_CLOSE);
                }
                DoorShutter_SetupAction(this, DoorShutter_JabuDoorClosing);
            }
        }
    }
}

void func_80997150(DoorShutter* this, PlayState* play) {
    if (this->unk_16F != 0) {
        if (this->unk_16F < 0) {
            if (play->state.frames % 2 != 0) {
                this->unk_16F++;
            }
            if (this->dyna.actor.category == func_8005B198() || this->unk_16F == 0) {
                this->unk_16F = 5;
            }
        } else {
            this->unk_16F--;
        }
    } else if (DoorShutter_UpdateBarsClosed(this, play, 0.0f)) {
        if (!(this->doorType == SHUTTER || this->doorType == SHUTTER_FRONT_CLEAR)) {
            DoorShutter_SetupAction(this, func_80996F98);
        } else {
            DoorShutter_SetupAction(this, func_80996B0C);
        }
        func_800F5B58();
    }
}

void func_80997220(DoorShutter* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s8 room = this->dyna.actor.room;

    if (this->dyna.actor.room >= 0) {
        Vec3f relPlayerPos;

        func_8002DBD0(&this->dyna.actor, &relPlayerPos, &player->actor.world.pos);
        this->dyna.actor.room = play->transiActorCtx.list[GET_TRANSITION_ACTOR_INDEX(&this->dyna.actor)]
                                    .sides[(relPlayerPos.z < 0.0f) ? 0 : 1]
                                    .room;
        if (room != this->dyna.actor.room) {
            Room tempRoom = play->roomCtx.curRoom;

            play->roomCtx.curRoom = play->roomCtx.prevRoom;
            play->roomCtx.prevRoom = tempRoom;
            play->roomCtx.unk_30 ^= 1;
        }
        func_80097534(play, &play->roomCtx);
        Play_SetupRespawnPoint(play, RESPAWN_MODE_DOWN, 0x0EFF);
    }
    this->unk_164 = 0;
    this->dyna.actor.velocity.y = 0.0f;
    if (DoorShutter_SetupDoor(this, play) && !(player->stateFlags1 & PLAYER_STATE1_11)) {
        DoorShutter_SetupAction(this, func_80997568);
        func_8002DF54(play, NULL, 2);
    }
}

void DoorShutter_Closing(DoorShutter* this, PlayState* play) {
    s32 quakeId;

    if (this->dyna.actor.velocity.y < 20.0f) {
        Math_StepToF(&this->dyna.actor.velocity.y, 20.0f, 8.0f);
    }
    if (Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y, this->dyna.actor.velocity.y)) {
        if (this->dyna.actor.velocity.y > 20.0f) {
            this->dyna.actor.floorHeight = this->dyna.actor.home.pos.y;
            Actor_SpawnFloorDustRing(play, &this->dyna.actor, &this->dyna.actor.world.pos, 45.0f, 10, 8.0f, 500, 10,
                                     false);
        }
        Audio_PlayActorSfx2(&this->dyna.actor, NA_SE_EV_STONE_BOUND);
        quakeId = Quake_Add(Play_GetCamera(play, CAM_ID_MAIN), 3);
        Quake_SetSpeed(quakeId, -32536);
        Quake_SetQuakeValues(quakeId, 2, 0, 0, 0);
        Quake_SetCountdown(quakeId, 10);
        func_800AA000(this->dyna.actor.xyzDistToPlayerSq, 0xB4, 0x14, 0x64);
        func_80997220(this, play);
    }
}

void DoorShutter_JabuDoorClosing(DoorShutter* this, PlayState* play) {
    if (Math_StepToS(&this->jabuDoorClosed, 100, 10)) {
        func_80997220(this, play);
    }
}

void func_80997568(DoorShutter* this, PlayState* play) {
    if (this->unk_16F++ > 30) {
        func_8002DF54(play, NULL, 7);
        DoorShutter_SetupDoor(this, play);
    }
}

void DoorShutter_GohmaBlockFalling(DoorShutter* this, PlayState* play) {
    Actor_MoveForward(&this->dyna.actor);
    Actor_UpdateBgCheckInfo(play, &this->dyna.actor, 0.0f, 0.0f, 0.0f, UPDBGCHECKINFO_FLAG_2);
    if (this->dyna.actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        DoorShutter_SetupAction(this, DoorShutter_GohmaBlock);
        if (!GET_EVENTCHKINF(EVENTCHKINF_70)) {
            BossGoma* parent = (BossGoma*)this->dyna.actor.parent;

            this->unk_164 = 10;
            Audio_PlayActorSfx2(&this->dyna.actor, NA_SE_EV_STONE_BOUND);
            DoorShutter_AddQuake(play, 2, 10, parent->subCamId);
            Actor_SpawnFloorDustRing(play, &this->dyna.actor, &this->dyna.actor.world.pos, 70.0f, 20, 8.0f, 500, 10,
                                     true);
        }
    }
}

void DoorShutter_GohmaBlock(DoorShutter* this, PlayState* play) {
    f32 bounceFactor;

    // Bounce a bit (unnoticeable in-game)
    if (this->unk_164 != 0) {
        this->unk_164--;
        bounceFactor = sinf(this->unk_164 * 250.0f / 100.0f);
        this->dyna.actor.shape.yOffset = this->unk_164 * 3.0f / 10.0f * bounceFactor;
    }
}

void DoorShutter_PhantomGanonBars(DoorShutter* this, PlayState* play) {
    f32 targetOffsetY;

    osSyncPrintf("FHG SAKU START !!\n");
    if (this->unk_164 != 0) {
        this->unk_164--;
    }
    targetOffsetY = (this->unk_164 % 2 != 0) ? -3.0f : 0.0f;
    Math_SmoothStepToF(&this->dyna.actor.world.pos.y, -34.0f + targetOffsetY, 1.0f, 20.0f, 0.0f);
    osSyncPrintf("FHG SAKU END !!\n");
}

void DoorShutter_Update(Actor* thisx, PlayState* play) {
    DoorShutter* this = (DoorShutter*)thisx;
    Player* player = GET_PLAYER(play);

    if (!(player->stateFlags1 & (PLAYER_STATE1_6 | PLAYER_STATE1_7 | PLAYER_STATE1_10 | PLAYER_STATE1_28)) ||
        (this->actionFunc == DoorShutter_SetupType)) {
        this->actionFunc(this, play);
    }
}

Gfx* DoorShutter_DrawJabuJabuDoor(PlayState* play, DoorShutter* this, Gfx* gfx) {
    MtxF mtx;
    f32 angle = 0.0f;
    f32 yScale = this->jabuDoorClosed * 0.01f;
    s32 i;

    Matrix_Get(&mtx);

    for (i = 0; i < ARRAY_COUNT(sJabuDoorDLists); i++) {
        Matrix_RotateZ(angle, MTXMODE_APPLY);

        if (i % 2 == 0) {
            Matrix_Translate(0.0f, 800.0f, 0.0f, MTXMODE_APPLY);
        } else if (i == 1 || i == 7) {
            Matrix_Translate(0.0f, 848.52f, 0.0f, MTXMODE_APPLY);
        } else {
            Matrix_Translate(0.0f, 989.94f, 0.0f, MTXMODE_APPLY);
        }

        if (this->jabuDoorClosed != 100) {
            Matrix_Scale(1.0f, yScale, 1.0f, MTXMODE_APPLY);
        }

        gSPMatrix(gfx++, Matrix_NewMtx(play->state.gfxCtx, "../z_door_shutter.c", 1991),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(gfx++, sJabuDoorDLists[i]);

        angle -= 2 * M_PI / ARRAY_COUNT(sJabuDoorDLists);

        Matrix_Put(&mtx);
    }
    return gfx;
}

s32 DoorShutter_CheckShouldDraw(DoorShutter* this, PlayState* play) {
    s32 relYawTowardsPlayer;
    s32 relYawTowardsViewEye;

    if (Player_InCsMode(play)) {
        return true;
    }

    // Return true if the view eye and the player are on the same side of the door

    relYawTowardsViewEye =
        (s16)(Actor_WorldYawTowardPoint(&this->dyna.actor, &play->view.eye) - this->dyna.actor.shape.rot.y);
    relYawTowardsPlayer = (s16)(this->dyna.actor.yawTowardsPlayer - this->dyna.actor.shape.rot.y);
    relYawTowardsViewEye = ABS(relYawTowardsViewEye);
    relYawTowardsPlayer = ABS(relYawTowardsPlayer);

    if ((relYawTowardsPlayer < 0x4000 && relYawTowardsViewEye > 0x4000) ||
        (relYawTowardsPlayer > 0x4000 && relYawTowardsViewEye < 0x4000)) {
        return false;
    } else {
        return true;
    }
}

void DoorShutter_Draw(Actor* thisx, PlayState* play) {
    DoorShutter* this = (DoorShutter*)thisx;

    //! @bug This actor is not fully initialized until the required object dependency is loaded.
    //! In most cases, the check for objBankIndex to equal requiredObjBankIndex prevents the actor
    //! from drawing until initialization is complete. However if the required object is the same as the
    //! object dependency listed in init vars (gameplay_keep in this case), the check will pass even though
    //! initialization has not completed. When this happens, it will try to draw the display list of the
    //! first entry in `sGfxInfo`, which will likely crash the game.
    //! This only matters in very specific scenarios, when the door is unculled on the first possible frame
    //! after spawning. It will try to draw without having run update yet.
    //!
    //! The best way to fix this issue (and what was done in Majora's Mask) is to null out the draw function in
    //! the init vars for the actor, and only set draw after initialization is complete.

    if (this->dyna.actor.objBankIndex == this->requiredObjBankIndex &&
        (this->styleType == DOORSHUTTER_STYLE_PHANTOM_GANON || DoorShutter_CheckShouldDraw(this, play))) {
        s32 pad[2];
        DoorShutterGfxInfo* gfxInfo = &sGfxInfo[this->gfxType];

        OPEN_DISPS(play->state.gfxCtx, "../z_door_shutter.c", 2048);

        Gfx_SetupDL_25Opa(play->state.gfxCtx);

        if (this->gfxType == DOORSHUTTER_GFX_JABU_JABU) {
            POLY_OPA_DISP = DoorShutter_DrawJabuJabuDoor(play, this, POLY_OPA_DISP);
            if (this->barsClosed != 0.0f) {
                f32 scale = (this->jabuDoorClosed * 0.01f) * this->barsClosed;

                Gfx_SetupDL_25Opa(play->state.gfxCtx);
                gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255.0f * scale); // no purpose?
                Matrix_Translate(0, 0, gfxInfo->barsOffsetZ, MTXMODE_APPLY);
                Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
                gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_door_shutter.c", 2069),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(POLY_OPA_DISP++, gfxInfo->barsDL);
            }
        } else {
            if (gfxInfo->barsDL != NULL) {
                TransitionActorEntry* transitionEntry =
                    &play->transiActorCtx.list[GET_TRANSITION_ACTOR_INDEX(&this->dyna.actor)];

                if (play->roomCtx.prevRoom.num >= 0 ||
                    transitionEntry->sides[0].room == transitionEntry->sides[1].room) {
                    s32 yaw = Math_Vec3f_Yaw(&play->view.eye, &this->dyna.actor.world.pos);

                    if (ABS((s16)(this->dyna.actor.shape.rot.y - yaw)) < 0x4000) {
                        Matrix_RotateY(M_PI, MTXMODE_APPLY);
                    }
                } else if (this->dyna.actor.room == transitionEntry->sides[0].room) {
                    Matrix_RotateY(M_PI, MTXMODE_APPLY);
                }
            } else if (this->doorType == SHUTTER_BOSS) {
                gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sBossDoorTextures[this->bossDoorTexIndex]));
            }
            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_door_shutter.c", 2109),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_OPA_DISP++, gfxInfo->doorDL);
            if (this->barsClosed != 0.0f && gfxInfo->barsDL != NULL) {
                Matrix_Translate(0, gfxInfo->barsOpenOffsetY * (1.0f - this->barsClosed), gfxInfo->barsOffsetZ,
                                 MTXMODE_APPLY);
                gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_door_shutter.c", 2119),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(POLY_OPA_DISP++, gfxInfo->barsDL);
            }
        }

        if (this->lockTimer != 0) {
            Matrix_Scale(0.01f, 0.01f, 0.025f, MTXMODE_APPLY);
            Actor_DrawDoorLock(
                play, this->lockTimer,
                (this->doorType == SHUTTER_BOSS)
                    ? DOORLOCK_BOSS
                    : ((this->gfxType == DOORSHUTTER_GFX_SPIRIT_TEMPLE) ? DOORLOCK_NORMAL_SPIRIT : DOORLOCK_NORMAL));
        }

        CLOSE_DISPS(play->state.gfxCtx, "../z_door_shutter.c", 2135);
    }
}

void DoorShutter_AddQuake(PlayState* play, s16 y, s16 countdown, s16 camId) {
    s16 quakeId = Quake_Add(Play_GetCamera(play, camId), 3);

    func_800A9F6C(0.0f, 180, 20, 100);
    Quake_SetSpeed(quakeId, 20000);
    Quake_SetQuakeValues(quakeId, y, 0, 0, 0);
    Quake_SetCountdown(quakeId, countdown);
}
