#ifndef _Z64SCENE_H_
#define _Z64SCENE_H_

typedef struct {
    /* 0x00 */ u32 vromStart;
    /* 0x04 */ u32 vromEnd;
} RomFile; // size = 0x8

typedef struct {
    /* 0x00 */ RomFile sceneFile;
    /* 0x08 */ RomFile titleFile;
    /* 0x10 */ u8  unk_10;
    /* 0x11 */ u8  config;
    /* 0x12 */ u8  unk_12;
    /* 0x13 */ u8  unk_13;
} Scene; // size = 0x14

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ u32 data2;
} SCmdBase;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ u32 segment;
} SCmdSpawnList;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  num;
    /* 0x04 */ u32 segment;
} SCmdActorList;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ u32 segment;
} SCmdCsCameraList;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ u32 segment;
} SCmdColHeader;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  num;
    /* 0x04 */ u32 segment;
} SCmdRoomList;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x02 */ char pad[2];
    /* 0x04 */ s8  unk_04;
    /* 0x05 */ s8  unk_05;
    /* 0x06 */ s8  unk_06;
    /* 0x07 */ u8  unk_07;
} SCmdWindSettings;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ u32 segment;
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
    /* 0x04 */ u32 segment;
} SCmdMesh;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  num;
    /* 0x04 */ u32 segment;
} SCmdObjectList;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  num;
    /* 0x04 */ u32 segment;
} SCmdLightList;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ u32 segment;
} SCmdPathList;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  num;
    /* 0x04 */ u32 segment;
} SCmdTransiActorList;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  num;
    /* 0x04 */ u32 segment;
} SCmdLightSettingList;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x02 */ char pad[2];
    /* 0x04 */ u8  hour;
    /* 0x05 */ u8  min;
    /* 0x06 */ u8  unk_06;
} SCmdTimeSettings;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x02 */ char pad[2];
    /* 0x04 */ u8  skyboxId;
    /* 0x05 */ u8  unk_05;
    /* 0x06 */ u8  unk_06;
} SCmdSkyboxSettings;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x02 */ char pad[2];
    /* 0x04 */ u8  unk_04;
    /* 0x05 */ u8  unk_05;
} SCmdSkyboxDisables;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ u32 data2;
} SCmdEndMarker;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ u32 segment;
} SCmdExitList;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  bgmId;
    /* 0x02 */ char pad[4];
    /* 0x06 */ u8  nightSeqIndex;
    /* 0x07 */ u8  seqIndex;
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
    /* 0x04 */ u32 segment;
} SCmdCutsceneData;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ u32 segment;
} SCmdAltHeaders;

typedef struct {
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  cameraMovement;
    /* 0x04 */ u32 area;
} SCmdMiscSettings;

typedef struct {
    u8 headerType;
} MeshHeaderBase;

typedef struct {
    MeshHeaderBase base;

    u8 numEntries;
    u32 dListStart;
    u32 dListEnd;
} MeshHeader0;

typedef struct {
    u32 opaqueDList;
    u32 translucentDList;
} MeshEntry0;

typedef struct {
    MeshHeaderBase base;
    u8 format;
    u32 entryRecord;
} MeshHeader1Base;

typedef struct {
    MeshHeader1Base base;
    u32 imagePtr; // 0x08
    u32 unknown; // 0x0C
    u32 unknown2; // 0x10
    u16 bgWidth; // 0x14
    u16 bgHeight; // 0x16
    u8 imageFormat; // 0x18
    u8 imageSize; // 0x19
    u16 imagePal; // 0x1A
    u16 imageFlip; // 0x1C
} MeshHeader1Single;

typedef struct {
    MeshHeader1Base base;
    u8 bgCnt;
    u32 bgRecordPtr;
} MeshHeader1Multi;

typedef struct {
    u16 unknown; // 0x00
    s8 bgID; // 0x02
    u32 imagePtr; // 0x04
    u32 unknown2; // 0x08
    u32 unknown3; // 0x0C
    u16 bgWidth; // 0x10
    u16 bgHeight; // 0x12
    u8 imageFmt; // 0x14
    u8 imageSize; // 0x15
    u16 imagePal; // 0x16
    u16 imageFlip; // 0x18
} BackgroundRecord;

typedef struct {
    s16 playerXMax, playerZMax;
    s16 playerXMin, playerZMin;
    u32 opaqueDList;
    u32 translucentDList;
} MeshEntry2;

typedef struct {
    MeshHeaderBase base;
    u8 numEntries;
    u32 dListStart;
    u32 dListEnd;
} MeshHeader2;


typedef struct {
    u8 ambientClrR, ambientClrG, ambientClrB;
    u8 diffuseClrA_R, diffuseClrA_G, diffuseClrA_B;
    u8 diffuseDirA_X, diffuseDirA_Y, diffuseDirA_Z;
    u8 diffuseClrB_R, diffuseClrB_G, diffuseClrB_B;
    u8 diffuseDirB_X, diffuseDirB_Y, diffuseDirB_Z;
    u8 fogClrR, fogClrG, fogClrB;
    u16 unk;
    u16 drawDistance;
} LightSettings;

typedef struct {
    /* 0x00 */ u8 count; // number of points in the path
    /* 0x04 */ Vec3s* points; // Segment Address to the array of points
} Path; // size = 0x8

typedef union {
    SCmdBase              base;
    SCmdSpawnList         spawnList;
    SCmdActorList         actorList;
    SCmdCsCameraList      csCameraList;
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

typedef enum {
	/* 0x00 */ SCENE_YDAN,
	/* 0x01 */ SCENE_DDAN,
	/* 0x02 */ SCENE_BDAN,
	/* 0x03 */ SCENE_BMORI1,
	/* 0x04 */ SCENE_HIDAN,
	/* 0x05 */ SCENE_MIZUSIN,
	/* 0x06 */ SCENE_JYASINZOU,
	/* 0x07 */ SCENE_HAKADAN,
	/* 0x08 */ SCENE_HAKADANCH,
	/* 0x09 */ SCENE_ICE_DOUKUTO,
	/* 0x0a */ SCENE_GANON,
	/* 0x0b */ SCENE_MEN,
	/* 0x0c */ SCENE_GERUDOWAY,
	/* 0x0d */ SCENE_GANONTIKA,
	/* 0x0e */ SCENE_GANON_SONOGO,
	/* 0x0f */ SCENE_GANONTIKA_SONOGO,
	/* 0x10 */ SCENE_TAKARAYA,
	/* 0x11 */ SCENE_YDAN_BOSS,
	/* 0x12 */ SCENE_DDAN_BOSS,
	/* 0x13 */ SCENE_BDAN_BOSS,
	/* 0x14 */ SCENE_MORIBOSSROOM,
	/* 0x15 */ SCENE_FIRE_BS,
	/* 0x16 */ SCENE_MIZUSIN_BS,
	/* 0x17 */ SCENE_JYASINBOSS,
	/* 0x18 */ SCENE_HAKADAN_BS,
	/* 0x19 */ SCENE_GANON_BOSS,
	/* 0x1a */ SCENE_GANON_FINAL,
	/* 0x1b */ SCENE_ENTRA,
	/* 0x1c */ SCENE_ENTRA_N,
	/* 0x1d */ SCENE_ENRUI,
	/* 0x1e */ SCENE_MARKET_ALLEY,
	/* 0x1f */ SCENE_MARKET_ALLEY_N,
	/* 0x20 */ SCENE_MARKET_DAY,
	/* 0x21 */ SCENE_MARKET_NIGHT,
	/* 0x22 */ SCENE_MARKET_RUINS,
	/* 0x23 */ SCENE_SHRINE,
	/* 0x24 */ SCENE_SHRINE_N,
	/* 0x25 */ SCENE_SHRINE_R,
	/* 0x26 */ SCENE_KOKIRI_HOME,
	/* 0x27 */ SCENE_KOKIRI_HOME3,
	/* 0x28 */ SCENE_KOKIRI_HOME4,
	/* 0x29 */ SCENE_KOKIRI_HOME5,
	/* 0x2a */ SCENE_KAKARIKO,
	/* 0x2b */ SCENE_KAKARIKO3,
	/* 0x2c */ SCENE_SHOP1,
	/* 0x2d */ SCENE_KOKIRI_SHOP,
	/* 0x2e */ SCENE_GOLON,
	/* 0x2f */ SCENE_ZOORA,
	/* 0x30 */ SCENE_DRAG,
	/* 0x31 */ SCENE_ALLEY_SHOP,
	/* 0x32 */ SCENE_NIGHT_SHOP,
	/* 0x33 */ SCENE_FACE_SHOP,
	/* 0x34 */ SCENE_LINK_HOME,
	/* 0x35 */ SCENE_IMPA,
	/* 0x36 */ SCENE_MALON_STABLE,
	/* 0x37 */ SCENE_LABO,
	/* 0x38 */ SCENE_HYLIA_LABO,
	/* 0x39 */ SCENE_TENT,
	/* 0x3a */ SCENE_HUT,
	/* 0x3b */ SCENE_DAIYOUSEI_IZUMI,
	/* 0x3c */ SCENE_YOUSEI_IZUMI_TATE,
	/* 0x3d */ SCENE_YOUSEI_IZUMI_YOKO,
	/* 0x3e */ SCENE_KAKUSIANA,
	/* 0x3f */ SCENE_HAKAANA,
	/* 0x40 */ SCENE_HAKAANA2,
	/* 0x41 */ SCENE_HAKAANA_OUKE,
	/* 0x42 */ SCENE_SYATEKIJYOU,
	/* 0x43 */ SCENE_TOKINOMA,
	/* 0x44 */ SCENE_KENJYANOMA,
	/* 0x45 */ SCENE_HAIRAL_NIWA,
	/* 0x46 */ SCENE_HAIRAL_NIWA_N,
	/* 0x47 */ SCENE_HIRAL_DEMO,
	/* 0x48 */ SCENE_HAKASITARELAY,
	/* 0x49 */ SCENE_TURIBORI,
	/* 0x4a */ SCENE_NAKANIWA,
	/* 0x4b */ SCENE_BOWLING,
	/* 0x4c */ SCENE_SOUKO,
	/* 0x4d */ SCENE_MIHARIGOYA,
	/* 0x4e */ SCENE_MAHOUYA,
	/* 0x4f */ SCENE_GANON_DEMO,
	/* 0x50 */ SCENE_KINSUTA,
	/* 0x51 */ SCENE_SPOT00,
	/* 0x52 */ SCENE_SPOT01,
	/* 0x53 */ SCENE_SPOT02,
	/* 0x54 */ SCENE_SPOT03,
	/* 0x55 */ SCENE_SPOT04,
	/* 0x56 */ SCENE_SPOT05,
	/* 0x57 */ SCENE_SPOT06,
	/* 0x58 */ SCENE_SPOT07,
	/* 0x59 */ SCENE_SPOT08,
	/* 0x5a */ SCENE_SPOT09,
	/* 0x5b */ SCENE_SPOT10,
	/* 0x5c */ SCENE_SPOT11,
	/* 0x5d */ SCENE_SPOT12,
	/* 0x5e */ SCENE_SPOT13,
	/* 0x5f */ SCENE_SPOT15,
	/* 0x60 */ SCENE_SPOT16,
	/* 0x61 */ SCENE_SPOT17,
	/* 0x62 */ SCENE_SPOT18,
	/* 0x63 */ SCENE_SPOT20,
	/* 0x64 */ SCENE_GANON_TOU,
	/* 0x65 */ SCENE_TEST01,
	/* 0x66 */ SCENE_BESITU,
	/* 0x67 */ SCENE_DEPTH_TEST,
	/* 0x68 */ SCENE_SYOTES,
	/* 0x69 */ SCENE_SYOTES2,
	/* 0x6a */ SCENE_SUTARU,
	/* 0x6b */ SCENE_HAIRAL_NIWA2,
	/* 0x6c */ SCENE_SASATEST,
	/* 0x6d */ SCENE_TESTROOM,
	/* 0x6e */ SCENE_ID_MAX
} SceneID;

#endif
