#ifndef Z64SCENE_H
#define Z64SCENE_H

#include "macros.h"
#include "ultra64.h"
#include "z64bgcheck.h"
#include "z64dma.h"
#include "z64environment.h"
#include "z64light.h"
#include "z64math.h"

#include "command_macros_base.h"

struct GameState;
struct PlayState;

typedef struct SceneTableEntry {
    /* 0x00 */ RomFile sceneFile;
    /* 0x08 */ RomFile titleFile;
    /* 0x10 */ u8  unk_10;
    /* 0x11 */ u8  drawConfig;
    /* 0x12 */ u8  unk_12;
    /* 0x13 */ u8  unk_13;
} SceneTableEntry; // size = 0x14

typedef struct ActorEntry {
    /* 0x00 */ s16   id;
    /* 0x02 */ Vec3s pos;
    /* 0x08 */ Vec3s rot;
    /* 0x0E */ s16   params;
} ActorEntry; // size = 0x10

typedef struct TransitionActorEntry {
    struct {
        s8 room;    // Room to switch to
        s8 bgCamIndex; // How the camera reacts during the transition. See `Camera_ChangeDoorCam`
    } /* 0x00 */ sides[2]; // 0 = front, 1 = back
    /* 0x04 */ s16   id;
    /* 0x06 */ Vec3s pos;
    /* 0x0C */ s16   rotY;
    /* 0x0E */ s16   params;
} TransitionActorEntry; // size = 0x10

typedef struct TransitionActorList {
    /* 0x00 */ u8 count;
    /* 0x04 */ TransitionActorEntry* list;
} TransitionActorList; // size = 0x8

typedef struct Spawn {
    /* 0x00 */ u8 playerEntryIndex;
    /* 0x01 */ u8 room;
} Spawn;

typedef struct Path {
    /* 0x00 */ u8 count; // number of points in the path
    /* 0x04 */ Vec3s* points; // Segment Address to the array of points
} Path; // size = 0x8

// Room shapes

typedef enum RoomShapeType {
    /* 0 */ ROOM_SHAPE_TYPE_NORMAL,
    /* 1 */ ROOM_SHAPE_TYPE_IMAGE,
    /* 2 */ ROOM_SHAPE_TYPE_CULLABLE,
    /* 3 */ ROOM_SHAPE_TYPE_MAX
} RoomShapeType;

typedef struct RoomShapeBase {
    /* 0x00 */ u8 type;
} RoomShapeBase; // size = 0x01

typedef struct RoomShapeDListsEntry {
    /* 0x00 */ Gfx* opa;
    /* 0x04 */ Gfx* xlu;
} RoomShapeDListsEntry; // size = 0x08

typedef struct RoomShapeNormal {
    /* 0x00 */ RoomShapeBase base;
    /* 0x01 */ u8 numEntries;
    /* 0x04 */ RoomShapeDListsEntry* entries;
    /* 0x08 */ RoomShapeDListsEntry* entriesEnd;
} RoomShapeNormal; // size = 0x0C

typedef enum RoomShapeImageAmountType {
    /* 1 */ ROOM_SHAPE_IMAGE_AMOUNT_SINGLE = 1,
    /* 2 */ ROOM_SHAPE_IMAGE_AMOUNT_MULTI
} RoomShapeImageAmountType;

typedef struct RoomShapeImageBase {
    /* 0x00 */ RoomShapeBase base;
    /* 0x01 */ u8    amountType; // RoomShapeImageAmountType
    /* 0x04 */ RoomShapeDListsEntry* entry;
} RoomShapeImageBase; // size = 0x08

typedef struct RoomShapeImageSingle {
    /* 0x00 */ RoomShapeImageBase base;
    /* 0x08 */ void* source;
    /* 0x0C */ u32   unk_0C;
    /* 0x10 */ void* tlut;
    /* 0x14 */ u16   width;
    /* 0x16 */ u16   height;
    /* 0x18 */ u8    fmt;
    /* 0x19 */ u8    siz;
    /* 0x1A */ u16   tlutMode;
    /* 0x1C */ u16   tlutCount;
} RoomShapeImageSingle; // size = 0x20

typedef struct RoomShapeImageMultiBgEntry {
    /* 0x00 */ u16   unk_00;
    /* 0x02 */ u8    bgCamIndex; // for which bg cam index is this entry for
    /* 0x04 */ void* source;
    /* 0x08 */ u32   unk_0C;
    /* 0x0C */ void* tlut;
    /* 0x10 */ u16   width;
    /* 0x12 */ u16   height;
    /* 0x14 */ u8    fmt;
    /* 0x15 */ u8    siz;
    /* 0x16 */ u16   tlutMode;
    /* 0x18 */ u16   tlutCount;
} RoomShapeImageMultiBgEntry; // size = 0x1C

typedef struct RoomShapeImageMulti {
    /* 0x00 */ RoomShapeImageBase base;
    /* 0x08 */ u8    numBackgrounds;
    /* 0x0C */ RoomShapeImageMultiBgEntry* backgrounds;
} RoomShapeImageMulti; // size = 0x10

typedef struct RoomShapeCullableEntry {
    /* 0x00 */ Vec3s boundsSphereCenter;
    /* 0x06 */ s16   boundsSphereRadius;
    /* 0x08 */ Gfx* opa;
    /* 0x0C */ Gfx* xlu;
} RoomShapeCullableEntry; // size = 0x10

#define ROOM_SHAPE_CULLABLE_MAX_ENTRIES 64

typedef struct RoomShapeCullable {
    /* 0x00 */ RoomShapeBase base;
    /* 0x01 */ u8 numEntries;
    /* 0x04 */ RoomShapeCullableEntry* entries;
    /* 0x08 */ RoomShapeCullableEntry* entriesEnd;
} RoomShapeCullable; // size = 0x0C

typedef union RoomShape {
    RoomShapeBase base;
    RoomShapeNormal normal;
    union {
        RoomShapeImageBase base;
        RoomShapeImageSingle single;
        RoomShapeImageMulti multi;
    } image;
    RoomShapeCullable cullable;
} RoomShape; // "Ground Shape"

typedef enum RoomType {
    /* 0 */ ROOM_TYPE_NORMAL,
    /* 1 */ ROOM_TYPE_DUNGEON, // Blocks Sun's Song's time advance effect. Not exclusively used by typical dungeon rooms.
    /* 2 */ ROOM_TYPE_INDOORS, // Reduces player run speed and blocks player from attacking or jumping.
    /* 3 */ ROOM_TYPE_3, // Unused. Color dithering is turned off when drawing the room and other things.
    /* 4 */ ROOM_TYPE_4, // Unused. Prevents switching to CAM_SET_HORSE when mounting a horse.
    /* 5 */ ROOM_TYPE_BOSS // Disables Environment_AdjustLights
} RoomType;

typedef enum RoomEnvironmentType {
    /* 0 */ ROOM_ENV_DEFAULT,
    /* 1 */ ROOM_ENV_COLD,
    /* 2 */ ROOM_ENV_WARM,
    /* 3 */ ROOM_ENV_HOT, // Enables hot room timer for the current room
    /* 4 */ ROOM_ENV_UNK_STRETCH_1,
    /* 5 */ ROOM_ENV_UNK_STRETCH_2,
    /* 6 */ ROOM_ENV_UNK_STRETCH_3
} RoomEnvironmentType;

typedef struct Room {
    /* 0x00 */ s8 num; // -1 is invalid room
    /* 0x01 */ u8 unk_01;
    /* 0x02 */ u8 environmentType;
    /* 0x03 */ u8 type;
    /* 0x04 */ s8 echo;
    /* 0x05 */ u8 lensMode;
    /* 0x08 */ RoomShape* roomShape; // original name: "ground_shape"
    /* 0x0C */ void* segment;
    /* 0x10 */ char unk_10[0x4];
} Room; // size = 0x14

typedef struct RoomContext {
    /* 0x00 */ Room curRoom;
    /* 0x14 */ Room prevRoom;
    /* 0x28 */ void* bufPtrs[2]; // Start and end pointers for the room buffer. Can be split into two pages, where page 0 is allocated from the start pointer and page 1 is allocated from the end pointer.
    /* 0x30 */ u8 activeBufPage; // 0 - First page in memory, 1 - Last page in memory
    /* 0x31 */ s8 status; // 0 - Free for new room request, 1 - DmaRequest for a new room is in progress
    /* 0x34 */ void* roomRequestAddr; // Pointer to where the requested room segment will be stored
    /* 0x38 */ DmaRequest dmaRequest;
    /* 0x58 */ OSMesgQueue loadQueue;
    /* 0x70 */ OSMesg loadMsg;
    /* 0x74 */ s16 drawParams[2]; // context-specific data used by the current scene draw config
} RoomContext; // size = 0x78

typedef struct RoomList {
    /* 0x00 */ u8 count;
    /* 0x04 */ RomFile* romFiles; // Array of rom addresses for each room in a scene
} RoomList;

#define ROOM_DRAW_OPA (1 << 0)
#define ROOM_DRAW_XLU (1 << 1)

// Scene commands

typedef struct SCmdBase {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ u32 data2;
} SCmdBase;

typedef struct SCmdPlayerEntryList {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  length;
    /* 0x04 */ ActorEntry* data;
} SCmdPlayerEntryList;

typedef struct SCmdActorEntryList {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  length;
    /* 0x04 */ ActorEntry* data;
} SCmdActorEntryList;

typedef struct SCmdUnused02 {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ void* segment;
} SCmdUnused02;

typedef struct SCmdColHeader {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ CollisionHeader* data;
} SCmdColHeader;

typedef struct SCmdRoomList {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  length;
    /* 0x04 */ RomFile* data;
} SCmdRoomList;

typedef struct SCmdWindSettings {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x02 */ char pad[2];
    /* 0x04 */ u8  x;
    /* 0x05 */ u8  y;
    /* 0x06 */ u8  z;
    /* 0x07 */ u8  unk_07;
} SCmdWindSettings;

typedef struct SCmdSpawnList {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ Spawn* data;
} SCmdSpawnList;

typedef struct SCmdSpecialFiles {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  naviQuestHintFileId;
    /* 0x04 */ u32 keepObjectId;
} SCmdSpecialFiles;

typedef struct SCmdRoomBehavior {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  gpFlag1;
    /* 0x04 */ u32 gpFlag2;
} SCmdRoomBehavior;

typedef struct SCmdMesh {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ RoomShapeBase* data;
} SCmdMesh;

typedef struct SCmdObjectList {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  length;
    /* 0x04 */ s16* data;
} SCmdObjectList;

typedef struct SCmdLightList {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  length;
    /* 0x04 */ LightInfo* data;
} SCmdLightList;

typedef struct SCmdPathList {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ Path* data;
} SCmdPathList;

typedef struct SCmdTransiActorList {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  length;
    /* 0x04 */ TransitionActorEntry* data;
} SCmdTransiActorList;

typedef struct SCmdLightSettingList {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  length;
    /* 0x04 */ EnvLightSettings* data;
} SCmdLightSettingList;

typedef struct SCmdTimeSettings {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x02 */ char pad[2];
    /* 0x04 */ u8  hour;
    /* 0x05 */ u8  min;
    /* 0x06 */ u8  timeSpeed;
} SCmdTimeSettings;

typedef struct SCmdSkyboxSettings {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x02 */ char pad[2];
    /* 0x04 */ u8  skyboxId;
    /* 0x05 */ u8  skyboxConfig;
    /* 0x06 */ u8  envLightMode;
} SCmdSkyboxSettings;

typedef struct SCmdSkyboxDisables {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x02 */ char pad[2];
    /* 0x04 */ u8  skyboxDisabled;
    /* 0x05 */ u8  sunMoonDisabled;
} SCmdSkyboxDisables;

typedef struct SCmdEndMarker {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ u32 data2;
} SCmdEndMarker;

typedef struct SCmdExitList {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ s16* data;
} SCmdExitList;

typedef struct SCmdSoundSettings {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  specId;
    /* 0x02 */ char pad[4];
    /* 0x06 */ u8  natureAmbienceId;
    /* 0x07 */ u8  seqId;
} SCmdSoundSettings;

typedef struct SCmdEchoSettings {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x02 */ char pad[5];
    /* 0x07 */ u8  echo;
} SCmdEchoSettings;

typedef struct SCmdCutsceneData {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ void* data;
} SCmdCutsceneData;

typedef struct SCmdAltHeaders {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ void* data;
} SCmdAltHeaders;

typedef struct SCmdMiscSettings {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  sceneCamType;
    /* 0x04 */ u32 area;
} SCmdMiscSettings;

typedef union SceneCmd {
    SCmdBase              base;
    SCmdPlayerEntryList   playerEntryList;
    SCmdActorEntryList    actorEntryList;
    SCmdUnused02          unused02;
    SCmdRoomList          roomList;
    SCmdSpawnList         spawnList;
    SCmdObjectList        objectList;
    SCmdLightList         lightList;
    SCmdPathList          pathList;
    SCmdTransiActorList   transiActorList;
    SCmdLightSettingList  lightSettingList;
    SCmdExitList          exitList;
    SCmdColHeader         colHeader;
    SCmdMesh              mesh;
    SCmdSpecialFiles      specialFiles;
    SCmdCutsceneData      cutsceneData;
    SCmdRoomBehavior      roomBehavior;
    SCmdWindSettings      windSettings;
    SCmdTimeSettings      timeSettings;
    SCmdSkyboxSettings    skyboxSettings;
    SCmdSkyboxDisables    skyboxDisables;
    SCmdEndMarker         endMarker;
    SCmdSoundSettings     soundSettings;
    SCmdEchoSettings      echoSettings;
    SCmdMiscSettings      miscSettings;
    SCmdAltHeaders        altHeaders;
} SceneCmd; // size = 0x8

typedef BAD_RETURN(s32) (*SceneCmdHandlerFunc)(struct PlayState*, SceneCmd*);

#define DEFINE_SCENE(_0, _1, enum, _3, _4, _5) enum,

typedef enum SceneID {
    #include "tables/scene_table.h"
    /* 0x6E */ SCENE_ID_MAX
} SceneID;

#undef DEFINE_SCENE

// Fake enum values for scenes that are still referenced in the entrance table
#if !DEBUG_ASSETS
// Debug-only scenes
#define SCENE_TEST01        0x65
#define SCENE_BESITU        0x66
#define SCENE_DEPTH_TEST    0x67
#define SCENE_SYOTES        0x68
#define SCENE_SYOTES2       0x69
#define SCENE_SUTARU        0x6A
#define SCENE_HAIRAL_NIWA2  0x6B
#define SCENE_SASATEST      0x6C
#define SCENE_TESTROOM      0x6D
#endif
// Deleted scene
#define SCENE_UNUSED_6E     0x6E

// Macros for `EntranceInfo.field`
#define ENTRANCE_INFO_CONTINUE_BGM_FLAG (1 << 15)
#define ENTRANCE_INFO_DISPLAY_TITLE_CARD_FLAG (1 << 14)
#define ENTRANCE_INFO_END_TRANS_TYPE_MASK 0x3F80
#define ENTRANCE_INFO_END_TRANS_TYPE_SHIFT 7
#define ENTRANCE_INFO_END_TRANS_TYPE(field)          \
    (((field) >> ENTRANCE_INFO_END_TRANS_TYPE_SHIFT) \
     & (ENTRANCE_INFO_END_TRANS_TYPE_MASK >> ENTRANCE_INFO_END_TRANS_TYPE_SHIFT))
#define ENTRANCE_INFO_START_TRANS_TYPE_MASK 0x7F
#define ENTRANCE_INFO_START_TRANS_TYPE_SHIFT 0
#define ENTRANCE_INFO_START_TRANS_TYPE(field)          \
    (((field) >> ENTRANCE_INFO_START_TRANS_TYPE_SHIFT) \
     & (ENTRANCE_INFO_START_TRANS_TYPE_MASK >> ENTRANCE_INFO_START_TRANS_TYPE_SHIFT))

typedef struct EntranceInfo {
    /* 0x00 */ s8  sceneId;
    /* 0x01 */ s8  spawn;
    /* 0x02 */ u16 field;
} EntranceInfo; // size = 0x4

// Entrance Index Enum
#define DEFINE_ENTRANCE(enum, _1, _2, _3, _4, _5, _6) enum,

typedef enum EntranceIndex {
    #include "tables/entrance_table.h"
    /* 0x614 */ ENTR_MAX
} EntranceIndex;

#undef DEFINE_ENTRANCE

#define ENTR_LOAD_OPENING -1

typedef enum ReturnEntranceIndex {
    /* 0x7FF9 */ ENTR_RETURN_GREAT_FAIRYS_FOUNTAIN_SPELLS = 0x7FF9,
    /* 0x7FFA */ ENTR_RETURN_SHOOTING_GALLERY,
    /* 0x7FFB */ ENTR_RETURN_2, // unused
    /* 0x7FFC */ ENTR_RETURN_BAZAAR,
    /* 0x7FFD */ ENTR_RETURN_4, // unused
    /* 0x7FFE */ ENTR_RETURN_GREAT_FAIRYS_FOUNTAIN_MAGIC,
    /* 0x7FFF */ ENTR_RETURN_GROTTO // Grottos and normal Fairy Fountain
} ReturnEntranceIndex;

typedef enum SceneDrawConfig {
    /*  0 */ SDC_DEFAULT,
    /*  1 */ SDC_HYRULE_FIELD,
    /*  2 */ SDC_KAKARIKO_VILLAGE,
    /*  3 */ SDC_ZORAS_RIVER,
    /*  4 */ SDC_KOKIRI_FOREST,
    /*  5 */ SDC_LAKE_HYLIA,
    /*  6 */ SDC_ZORAS_DOMAIN,
    /*  7 */ SDC_ZORAS_FOUNTAIN,
    /*  8 */ SDC_GERUDO_VALLEY,
    /*  9 */ SDC_LOST_WOODS,
    /* 10 */ SDC_DESERT_COLOSSUS,
    /* 11 */ SDC_GERUDOS_FORTRESS,
    /* 12 */ SDC_HAUNTED_WASTELAND,
    /* 13 */ SDC_HYRULE_CASTLE,
    /* 14 */ SDC_DEATH_MOUNTAIN_TRAIL,
    /* 15 */ SDC_DEATH_MOUNTAIN_CRATER,
    /* 16 */ SDC_GORON_CITY,
    /* 17 */ SDC_LON_LON_RANCH,
    /* 18 */ SDC_FIRE_TEMPLE,
    /* 19 */ SDC_DEKU_TREE,
    /* 20 */ SDC_DODONGOS_CAVERN,
    /* 21 */ SDC_JABU_JABU,
    /* 22 */ SDC_FOREST_TEMPLE,
    /* 23 */ SDC_WATER_TEMPLE,
    /* 24 */ SDC_SHADOW_TEMPLE_AND_WELL,
    /* 25 */ SDC_SPIRIT_TEMPLE,
    /* 26 */ SDC_INSIDE_GANONS_CASTLE,
    /* 27 */ SDC_GERUDO_TRAINING_GROUND,
    /* 28 */ SDC_DEKU_TREE_BOSS,
    /* 29 */ SDC_WATER_TEMPLE_BOSS,
    /* 30 */ SDC_TEMPLE_OF_TIME,
    /* 31 */ SDC_GROTTOS,
    /* 32 */ SDC_CHAMBER_OF_THE_SAGES,
    /* 33 */ SDC_GREAT_FAIRYS_FOUNTAIN,
    /* 34 */ SDC_SHOOTING_GALLERY,
    /* 35 */ SDC_CASTLE_COURTYARD_GUARDS,
    /* 36 */ SDC_OUTSIDE_GANONS_CASTLE,
    /* 37 */ SDC_ICE_CAVERN,
    /* 38 */ SDC_GANONS_TOWER_COLLAPSE_EXTERIOR,
    /* 39 */ SDC_FAIRYS_FOUNTAIN,
    /* 40 */ SDC_THIEVES_HIDEOUT,
    /* 41 */ SDC_BOMBCHU_BOWLING_ALLEY,
    /* 42 */ SDC_ROYAL_FAMILYS_TOMB,
    /* 43 */ SDC_LAKESIDE_LABORATORY,
    /* 44 */ SDC_LON_LON_BUILDINGS,
    /* 45 */ SDC_MARKET_GUARD_HOUSE,
    /* 46 */ SDC_POTION_SHOP_GRANNY,
    /* 47 */ SDC_CALM_WATER,
    /* 48 */ SDC_GRAVE_EXIT_LIGHT_SHINING,
    /* 49 */ SDC_BESITU,
    /* 50 */ SDC_FISHING_POND,
    /* 51 */ SDC_GANONS_TOWER_COLLAPSE_INTERIOR,
    /* 52 */ SDC_INSIDE_GANONS_CASTLE_COLLAPSE,
    /* 53 */ SDC_MAX
} SceneDrawConfig;

typedef void (*SceneDrawConfigFunc)(struct PlayState*);

// R_SCENE_CAM_TYPE values
#define SCENE_CAM_TYPE_DEFAULT 0
#define SCENE_CAM_TYPE_FIXED_SHOP_VIEWPOINT 0x10 // Camera exhibits fixed behaviors and viewpoint changing is handled by shops
#define SCENE_CAM_TYPE_FIXED_TOGGLE_VIEWPOINT 0x20 // Camera exhibits fixed behaviors and viewpoint can be toggled with c-up
#define SCENE_CAM_TYPE_FIXED 0x30 // Camera exhibits fixed behaviors (see `Play_CamIsNotFixed` usages for examples)
#define SCENE_CAM_TYPE_FIXED_MARKET 0x40 // Camera exhibits fixed behaviors and delays textboxes by a small amount before they start to appear
#define SCENE_CAM_TYPE_SHOOTING_GALLERY 0x50 // Unreferenced in code, and used only by the main layer of the shooting gallery scene

// navi hints
typedef enum NaviQuestHintFileId {
    NAVI_QUEST_HINTS_NONE,
    NAVI_QUEST_HINTS_OVERWORLD,
    NAVI_QUEST_HINTS_DUNGEON
} NaviQuestHintFileId;

// Scene commands

typedef enum SceneCommandTypeID {
    /* 0x00 */ SCENE_CMD_ID_SPAWN_LIST,
    /* 0x01 */ SCENE_CMD_ID_ACTOR_LIST,
    /* 0x02 */ SCENE_CMD_ID_UNUSED_2,
    /* 0x03 */ SCENE_CMD_ID_COLLISION_HEADER,
    /* 0x04 */ SCENE_CMD_ID_ROOM_LIST,
    /* 0x05 */ SCENE_CMD_ID_WIND_SETTINGS,
    /* 0x06 */ SCENE_CMD_ID_ENTRANCE_LIST,
    /* 0x07 */ SCENE_CMD_ID_SPECIAL_FILES,
    /* 0x08 */ SCENE_CMD_ID_ROOM_BEHAVIOR,
    /* 0x09 */ SCENE_CMD_ID_UNDEFINED_9,
    /* 0x0A */ SCENE_CMD_ID_ROOM_SHAPE,
    /* 0x0B */ SCENE_CMD_ID_OBJECT_LIST,
    /* 0x0C */ SCENE_CMD_ID_LIGHT_LIST,
    /* 0x0D */ SCENE_CMD_ID_PATH_LIST,
    /* 0x0E */ SCENE_CMD_ID_TRANSITION_ACTOR_LIST,
    /* 0x0F */ SCENE_CMD_ID_LIGHT_SETTINGS_LIST,
    /* 0x10 */ SCENE_CMD_ID_TIME_SETTINGS,
    /* 0x11 */ SCENE_CMD_ID_SKYBOX_SETTINGS,
    /* 0x12 */ SCENE_CMD_ID_SKYBOX_DISABLES,
    /* 0x13 */ SCENE_CMD_ID_EXIT_LIST,
    /* 0x14 */ SCENE_CMD_ID_END,
    /* 0x15 */ SCENE_CMD_ID_SOUND_SETTINGS,
    /* 0x16 */ SCENE_CMD_ID_ECHO_SETTINGS,
    /* 0x17 */ SCENE_CMD_ID_CUTSCENE_DATA,
    /* 0x18 */ SCENE_CMD_ID_ALTERNATE_HEADER_LIST,
    /* 0x19 */ SCENE_CMD_ID_MISC_SETTINGS,
    /* 0x1A */ SCENE_CMD_ID_MAX
} SceneCommandTypeID;

#define SCENE_CMD_SPAWN_LIST(numSpawns, spawnList) \
    { SCENE_CMD_ID_SPAWN_LIST, numSpawns, CMD_PTR(spawnList) }

#define SCENE_CMD_ACTOR_LIST(numActors, actorList) \
    { SCENE_CMD_ID_ACTOR_LIST, numActors, CMD_PTR(actorList) }

#define SCENE_CMD_UNUSED_02(unk, data) \
    { SCENE_CMD_ID_UNUSED_2, unk, CMD_PTR(data) }

#define SCENE_CMD_COL_HEADER(colHeader) \
    { SCENE_CMD_ID_COLLISION_HEADER, 0, CMD_PTR(colHeader) }

#define SCENE_CMD_ROOM_LIST(numRooms, roomList) \
    { SCENE_CMD_ID_ROOM_LIST, numRooms, CMD_PTR(roomList) }

#define SCENE_CMD_WIND_SETTINGS(xDir, yDir, zDir, strength) \
    { SCENE_CMD_ID_WIND_SETTINGS, 0, CMD_BBBB(xDir, yDir, zDir, strength) }

#define SCENE_CMD_ENTRANCE_LIST(entranceList) \
    { SCENE_CMD_ID_ENTRANCE_LIST, 0, CMD_PTR(entranceList) }

#define SCENE_CMD_SPECIAL_FILES(naviQuestHintFileId, keepObjectId) \
    { SCENE_CMD_ID_SPECIAL_FILES, naviQuestHintFileId, CMD_W(keepObjectId) }

#define SCENE_CMD_ROOM_BEHAVIOR(type, environment, showInvisActors, disableWarpSongs) \
    { SCENE_CMD_ID_ROOM_BEHAVIOR, type, \
        environment | _SHIFTL(showInvisActors, 8, 1) | _SHIFTL(disableWarpSongs, 10, 1) }

#define SCENE_CMD_UNK_09() \
    { SCENE_CMD_ID_UNDEFINED_9, 0, CMD_W(0) }

#define SCENE_CMD_ROOM_SHAPE(roomShape) \
    { SCENE_CMD_ID_ROOM_SHAPE, 0, CMD_PTR(roomShape) }

#define SCENE_CMD_OBJECT_LIST(numObjects, objectList) \
    { SCENE_CMD_ID_OBJECT_LIST, numObjects, CMD_PTR(objectList) }

#define SCENE_CMD_LIGHT_LIST(numLights, lightList) \
    { SCENE_CMD_ID_POS_LIGHT_LIST, numLights, CMD_PTR(lightList) }

#define SCENE_CMD_PATH_LIST(pathList) \
    { SCENE_CMD_ID_PATH_LIST, 0, CMD_PTR(pathList) }

#define SCENE_CMD_TRANSITION_ACTOR_LIST(numActors, list) \
    { SCENE_CMD_ID_TRANSITION_ACTOR_LIST, numActors, CMD_PTR(list) }

#define SCENE_CMD_ENV_LIGHT_SETTINGS(numLightSettings, lightSettingsList) \
    { SCENE_CMD_ID_LIGHT_SETTINGS_LIST, numLightSettings, CMD_PTR(lightSettingsList) }

#define SCENE_CMD_TIME_SETTINGS(hour, min, timeSpeed) \
    { SCENE_CMD_ID_TIME_SETTINGS, 0, CMD_BBBB(hour, min, timeSpeed, 0) }

#define SCENE_CMD_SKYBOX_SETTINGS(skyboxId, skyboxConfig, envLightMode) \
    { SCENE_CMD_ID_SKYBOX_SETTINGS, 0, CMD_BBBB(skyboxId, skyboxConfig, envLightMode, 0) }

#define SCENE_CMD_SKYBOX_DISABLES(disableSky, disableSunMoon) \
    { SCENE_CMD_ID_SKYBOX_DISABLES, 0, CMD_BBBB(disableSky, disableSunMoon, 0, 0) }

#define SCENE_CMD_EXIT_LIST(exitList) \
    { SCENE_CMD_ID_EXIT_LIST, 0, CMD_PTR(exitList) }

#define SCENE_CMD_END() \
    { SCENE_CMD_ID_END, 0, CMD_W(0) }

#define SCENE_CMD_SOUND_SETTINGS(specId, natureAmbienceId, seqId) \
    { SCENE_CMD_ID_SOUND_SETTINGS, specId, CMD_BBBB(0, 0, natureAmbienceId, seqId) }

#define SCENE_CMD_ECHO_SETTINGS(echo) \
    { SCENE_CMD_ID_ECHO_SETTINGS, 0, CMD_BBBB(0, 0, 0, echo) }

#define SCENE_CMD_CUTSCENE_DATA(cutsceneData) \
    { SCENE_CMD_ID_CUTSCENE_DATA, 0, CMD_PTR(cutsceneData) }

#define SCENE_CMD_ALTERNATE_HEADER_LIST(alternateHeaderList) \
    { SCENE_CMD_ID_ALTERNATE_HEADER_LIST, 0, CMD_PTR(alternateHeaderList) }

#define SCENE_CMD_MISC_SETTINGS(sceneCamType, worldMapLocation) \
    { SCENE_CMD_ID_MISC_SETTINGS, sceneCamType, CMD_W(worldMapLocation) }

s32 Scene_ExecuteCommands(struct PlayState* play, SceneCmd* sceneCmd);
void Scene_ResetTransitionActorList(struct GameState* state, TransitionActorList* transitionActors);
void Scene_SetTransitionForNextEntrance(struct PlayState* play);
void Scene_Draw(struct PlayState* play);

extern EntranceInfo gEntranceTable[ENTR_MAX];
extern SceneTableEntry gSceneTable[SCENE_ID_MAX];

#endif
