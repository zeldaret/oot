#ifndef Z64SCENE_H
#define Z64SCENE_H

#include "z64.h"

#include "command_macros_base.h"

typedef struct {
    /* 0x00 */ u32 vromStart;
    /* 0x04 */ u32 vromEnd;
} RomFile; // size = 0x8

typedef struct {
    /* 0x00 */ RomFile sceneFile;
    /* 0x08 */ RomFile titleFile;
    /* 0x10 */ u8  unk_10;
    /* 0x11 */ u8  drawConfig;
    /* 0x12 */ u8  unk_12;
    /* 0x13 */ u8  unk_13;
} SceneTableEntry; // size = 0x14

typedef struct {
    /* 0x00 */ s16   id;
    /* 0x02 */ Vec3s pos;
    /* 0x08 */ Vec3s rot;
    /* 0x0E */ s16   params;
} ActorEntry; // size = 0x10

typedef struct {
    struct {
        s8 room;    // Room to switch to
        s8 bgCamIndex; // How the camera reacts during the transition. See `Camera_ChangeDoorCam`
    } /* 0x00 */ sides[2]; // 0 = front, 1 = back
    /* 0x04 */ s16   id;
    /* 0x06 */ Vec3s pos;
    /* 0x0C */ s16   rotY;
    /* 0x0E */ s16   params;
} TransitionActorEntry; // size = 0x10

typedef struct {
    /* 0x00 */ u8 spawn;
    /* 0x01 */ u8 room;
} EntranceEntry;

typedef struct {
    /* 0x00 */ u8 ambientColor[3];
    /* 0x03 */ s8 diffuseDir1[3];
    /* 0x06 */ u8 diffuseColor1[3];
    /* 0x09 */ s8 diffuseDir2[3];
    /* 0x0C */ u8 diffuseColor2[3];
    /* 0x0F */ u8 fogColor[3];
    /* 0x12 */ u16 fogNear;
    /* 0x14 */ u16 fogFar;
} LightSettings; // size = 0x16

typedef struct {
    /* 0x00 */ u8 count; // number of points in the path
    /* 0x04 */ Vec3s* points; // Segment Address to the array of points
} Path; // size = 0x8

// Mesh headers

typedef enum {
    /* 0 */ MESH_HEADER_TYPE_0,
    /* 1 */ MESH_HEADER_TYPE_1,
    /* 2 */ MESH_HEADER_TYPE_2,
    /* 3 */ MESH_HEADER_TYPE_MAX
} MeshHeaderType;

typedef struct {
    /* 0x00 */ u8 type;
} MeshHeaderBase; // size = 0x01

typedef struct {
    /* 0x00 */ Gfx* opa;
    /* 0x04 */ Gfx* xlu;
} MeshHeader01Entry; // size = 0x08

typedef struct {
    /* 0x00 */ MeshHeaderBase base;
    /* 0x01 */ u8 numEntries;
    /* 0x04 */ MeshHeader01Entry* entries;
    /* 0x08 */ MeshHeader01Entry* entriesEnd;
} MeshHeader0; // size = 0x0C

typedef enum {
    /* 1 */ MESH_HEADER1_FORMAT_SINGLE = 1,
    /* 2 */ MESH_HEADER1_FORMAT_MULTI
} MeshHeader1Format;

typedef struct {
    /* 0x00 */ MeshHeaderBase base;
    /* 0x01 */ u8    format; // MeshHeader1Format
    /* 0x04 */ MeshHeader01Entry* entry;
} MeshHeader1Base; // size = 0x08

typedef struct {
    /* 0x00 */ MeshHeader1Base base;
    /* 0x08 */ void* source;
    /* 0x0C */ u32   unk_0C;
    /* 0x10 */ void* tlut;
    /* 0x14 */ u16   width;
    /* 0x16 */ u16   height;
    /* 0x18 */ u8    fmt;
    /* 0x19 */ u8    siz;
    /* 0x1A */ u16   mode0;
    /* 0x1C */ u16   tlutCount;
} MeshHeader1Single; // size = 0x20

typedef struct {
    /* 0x00 */ u16   unk_00;
    /* 0x02 */ u8    id;
    /* 0x04 */ void* source;
    /* 0x08 */ u32   unk_0C;
    /* 0x0C */ void* tlut;
    /* 0x10 */ u16   width;
    /* 0x12 */ u16   height;
    /* 0x14 */ u8    fmt;
    /* 0x15 */ u8    siz;
    /* 0x16 */ u16   mode0;
    /* 0x18 */ u16   tlutCount;
} BgImage; // size = 0x1C

typedef struct {
    /* 0x00 */ MeshHeader1Base base;
    /* 0x08 */ u8    count;
    /* 0x0C */ BgImage* list;
} MeshHeader1Multi; // size = 0x10

typedef struct {
    /* 0x00 */ Vec3s pos;
    /* 0x06 */ s16 unk_06;
    /* 0x08 */ Gfx* opa;
    /* 0x0C */ Gfx* xlu;
} MeshHeader2Entry; // size = 0x10

typedef struct {
    /* 0x00 */ MeshHeaderBase base;
    /* 0x01 */ u8 numEntries;
    /* 0x04 */ MeshHeader2Entry* entries;
    /* 0x08 */ MeshHeader2Entry* entriesEnd;
} MeshHeader2; // size = 0x0C

typedef union {
    MeshHeaderBase base;
    MeshHeader0 meshHeader0;
    MeshHeader1Base meshHeader1Base;
    MeshHeader1Single meshHeader1Single;
    MeshHeader1Multi meshHeader1Multi;
    MeshHeader2 meshHeader2;
} MeshHeader; // "Ground Shape"

// TODO update ZAPD
typedef MeshHeader01Entry PolygonDlist;
typedef MeshHeader0 PolygonType0;
typedef MeshHeader2Entry PolygonDlist2;
typedef MeshHeader2 PolygonType2;

#define ROOM_DRAW_OPA (1 << 0)
#define ROOM_DRAW_XLU (1 << 1)

// Scene commands

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ u32 data2;
} SCmdBase;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  length;
    /* 0x04 */ ActorEntry* data;
} SCmdSpawnList;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  length;
    /* 0x04 */ ActorEntry* data;
} SCmdActorList;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ void* segment;
} SCmdUnused02;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ CollisionHeader* data;
} SCmdColHeader;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  length;
    /* 0x04 */ RomFile* data;
} SCmdRoomList;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x02 */ char pad[2];
    /* 0x04 */ u8  x;
    /* 0x05 */ u8  y;
    /* 0x06 */ u8  z;
    /* 0x07 */ u8  unk_07;
} SCmdWindSettings;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ EntranceEntry* data;
} SCmdEntranceList;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  cUpElfMsgNum;
    /* 0x04 */ u32 keepObjectId;
} SCmdSpecialFiles;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  gpFlag1;
    /* 0x04 */ u32 gpFlag2;
} SCmdRoomBehavior;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ MeshHeaderBase* data;
} SCmdMesh;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  length;
    /* 0x04 */ s16* data;
} SCmdObjectList;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  length;
    /* 0x04 */ LightInfo* data;
} SCmdLightList;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ Path* data;
} SCmdPathList;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  length;
    /* 0x04 */ TransitionActorEntry* data;
} SCmdTransiActorList;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  length;
    /* 0x04 */ EnvLightSettings* data;
} SCmdLightSettingList;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x02 */ char pad[2];
    /* 0x04 */ u8  hour;
    /* 0x05 */ u8  min;
    /* 0x06 */ u8  timeSpeed;
} SCmdTimeSettings;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x02 */ char pad[2];
    /* 0x04 */ u8  skyboxId;
    /* 0x05 */ u8  skyboxConfig;
    /* 0x06 */ u8  envLightMode;
} SCmdSkyboxSettings;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x02 */ char pad[2];
    /* 0x04 */ u8  skyboxDisabled;
    /* 0x05 */ u8  sunMoonDisabled;
} SCmdSkyboxDisables;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ u32 data2;
} SCmdEndMarker;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ s16* data;
} SCmdExitList;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  specId;
    /* 0x02 */ char pad[4];
    /* 0x06 */ u8  natureAmbienceId;
    /* 0x07 */ u8  seqId;
} SCmdSoundSettings;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x02 */ char pad[5];
    /* 0x07 */ u8  echo;
} SCmdEchoSettings;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ void* data;
} SCmdCutsceneData;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ void* data;
} SCmdAltHeaders;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  sceneCamType;
    /* 0x04 */ u32 area;
} SCmdMiscSettings;

typedef union {
    SCmdBase              base;
    SCmdSpawnList         spawnList;
    SCmdActorList         actorList;
    SCmdUnused02          unused02;
    SCmdRoomList          roomList;
    SCmdEntranceList      entranceList;
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

#define DEFINE_SCENE(_0, _1, enum, _3, _4, _5) enum,

typedef enum {
    #include "tables/scene_table.h"
    /* 0x6E */ SCENE_ID_MAX
} SceneID;

#undef DEFINE_SCENE

// this define exists to preserve shiftability for an unused scene that is
// listed in the entrance table
#define SCENE_UNUSED_6E SCENE_ID_MAX

// Entrance Index Enum
#define DEFINE_ENTRANCE(enum, _1, _2, _3, _4, _5, _6) enum,

typedef enum {
    #include "tables/entrance_table.h"
    /* 0x614 */ ENTR_MAX
} EntranceIndex;

#undef DEFINE_ENTRANCE

#define ENTR_LOAD_OPENING -1

typedef enum {
    /* 0x7FF9 */ ENTR_RETURN_YOUSEI_IZUMI_YOKO = 0x7FF9, // Great Fairy Fountain (spells)
    /* 0x7FFA */ ENTR_RETURN_SYATEKIJYOU, // Shooting gallery
    /* 0x7FFB */ ENTR_RETURN_2, // unused
    /* 0x7FFC */ ENTR_RETURN_SHOP1, // Bazaar
    /* 0x7FFD */ ENTR_RETURN_4, // unused
    /* 0x7FFE */ ENTR_RETURN_DAIYOUSEI_IZUMI, // Great Fairy Fountain (magic, double magic, double defense)
    /* 0x7FFF */ ENTR_RETURN_GROTTO // Grottos and normal Fairy Fountain
} ReturnEntranceIndex;

typedef enum {
    /*  0 */ SDC_DEFAULT,
    /*  1 */ SDC_SPOT00,
    /*  2 */ SDC_SPOT01,
    /*  3 */ SDC_SPOT03,
    /*  4 */ SDC_SPOT04,
    /*  5 */ SDC_SPOT06,
    /*  6 */ SDC_SPOT07,
    /*  7 */ SDC_SPOT08,
    /*  8 */ SDC_SPOT09,
    /*  9 */ SDC_SPOT10,
    /* 10 */ SDC_SPOT11,
    /* 11 */ SDC_SPOT12,
    /* 12 */ SDC_SPOT13,
    /* 13 */ SDC_SPOT15,
    /* 14 */ SDC_SPOT16,
    /* 15 */ SDC_SPOT17,
    /* 16 */ SDC_SPOT18,
    /* 17 */ SDC_SPOT20,
    /* 18 */ SDC_HIDAN, // used for Fire Temple and its boss scene
    /* 19 */ SDC_YDAN,
    /* 20 */ SDC_DDAN,
    /* 21 */ SDC_BDAN, // used for Jabu-Jabu and its boss scene
    /* 22 */ SDC_BMORI1,
    /* 23 */ SDC_MIZUSIN,
    /* 24 */ SDC_HAKADAN, // used for Bottom Of The Well, Shadow Temple and its boss scene
    /* 25 */ SDC_JYASINZOU,
    /* 26 */ SDC_GANONTIKA,
    /* 27 */ SDC_MEN,
    /* 28 */ SDC_YDAN_BOSS,
    /* 29 */ SDC_MIZUSIN_BS,
    /* 30 */ SDC_TOKINOMA,
    /* 31 */ SDC_KAKUSIANA,
    /* 32 */ SDC_KENJYANOMA,
    /* 33 */ SDC_GREAT_FAIRY_FOUNTAIN, // used for both Great Fairy Fountains scenes
    /* 34 */ SDC_SYATEKIJYOU,
    /* 35 */ SDC_HAIRAL_NIWA, // used for Castle Courtyard (with the hedges) (day, night and debug scenes)
    /* 36 */ SDC_GANON_CASTLE_EXTERIOR, // used for two scenes
    /* 37 */ SDC_ICE_DOUKUTO,
    /* 38 */ SDC_GANON_FINAL,
    /* 39 */ SDC_FAIRY_FOUNTAIN, // used for both Fairy Fountains scenes
    /* 40 */ SDC_GERUDOWAY,
    /* 41 */ SDC_BOWLING,
    /* 42 */ SDC_HAKAANA_OUKE,
    /* 43 */ SDC_HYLIA_LABO,
    /* 44 */ SDC_SOUKO,
    /* 45 */ SDC_MIHARIGOYA,
    /* 46 */ SDC_MAHOUYA,
    /* 47 */ SDC_CALM_WATER, // used for Castle Courtyard (with Zelda), Sacred Forest Meadow, and debug Jungle Gym
    /* 48 */ SDC_GRAVE_EXIT_LIGHT_SHINING, // used for one grave scene and the Dampé race scene
    /* 49 */ SDC_BESITU,
    /* 50 */ SDC_TURIBORI,
    /* 51 */ SDC_GANON_SONOGO,
    /* 52 */ SDC_GANONTIKA_SONOGO,
    /* 53 */ SDC_MAX
} SceneDrawConfig;

// R_SCENE_CAM_TYPE values
#define SCENE_CAM_TYPE_DEFAULT 0
#define SCENE_CAM_TYPE_FIXED_SHOP_VIEWPOINT 0x10 // Camera exhibits fixed behaviors and viewpoint changing is handled by shops
#define SCENE_CAM_TYPE_FIXED_TOGGLE_VIEWPOINT 0x20 // Camera exhibits fixed behaviors and viewpoint can be toggled with c-up
#define SCENE_CAM_TYPE_FIXED 0x30 // Camera exhibits fixed behaviors (see `Play_CamIsNotFixed` usages for examples)
#define SCENE_CAM_TYPE_FIXED_MARKET 0x40 // Camera exhibits fixed behaviors and delays textboxes by a small amount before they start to appear
#define SCENE_CAM_TYPE_SHOOTING_GALLERY 0x50 // Unreferenced in code, and set only by the main setup of the shooting gallery scene

// Scene commands

typedef enum {
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
    /* 0x0A */ SCENE_CMD_ID_MESH_HEADER,
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

#define SCENE_CMD_SPECIAL_FILES(elfMessageFile, keepObjectId) \
    { SCENE_CMD_ID_SPECIAL_FILES, elfMessageFile, CMD_W(keepObjectId) }

#define SCENE_CMD_ROOM_BEHAVIOR(curRoomUnk3, curRoomUnk2, showInvisActors, disableWarpSongs) \
    { SCENE_CMD_ID_ROOM_BEHAVIOR, curRoomUnk3, \
        curRoomUnk2 | _SHIFTL(showInvisActors, 8, 1) | _SHIFTL(disableWarpSongs, 10, 1) }

#define SCENE_CMD_UNK_09() \
    { SCENE_CMD_ID_UNDEFINED_9, 0, CMD_W(0) }

#define SCENE_CMD_MESH(meshHeader) \
    { SCENE_CMD_ID_MESH_HEADER, 0, CMD_PTR(meshHeader) }

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


#endif
