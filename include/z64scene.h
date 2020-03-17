#ifndef _Z64SCENE_H_
#define _Z64SCENE_H_

typedef struct
{
    /* 0x00 */ u32 sceneVromStart;
    /* 0x04 */ u32 sceneVromEnd;
    /* 0x08 */ u32 titleVromStart;
    /* 0x0C */ u32 titleVromEnd;
    /* 0x10 */ u8  unk_10;
    /* 0x11 */ u8  config;
    /* 0x12 */ u8  unk_12;
    /* 0x13 */ u8  unk_13;
} Scene; // size = 0x14

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ u32 data2;
} SCmdBase;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ u32 segment;
} SCmdSpawnList;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  num;
    /* 0x04 */ u32 segment;
} SCmdActorList;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ u32 segment;
} SCmdCsCameraList;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ u32 segment;
} SCmdColHeader;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  num;
    /* 0x04 */ u32 segment;
} SCmdRoomList;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x02 */ char pad[2];
    /* 0x04 */ s8  unk_04;
    /* 0x05 */ s8  unk_05;
    /* 0x06 */ s8  unk_06;
    /* 0x07 */ u8  unk_07;
} SCmdWindSettings;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ u32 segment;
} SCmdEntranceList;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  naviMsgNum;
    /* 0x04 */ u32 keepObjectId;
} SCmdSpecialFiles;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  gpFlag1;
    /* 0x04 */ u32 gpFlag2;
} SCmdRoomBehavior;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ u32 segment;
} SCmdMesh;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  num;
    /* 0x04 */ u32 segment;
} SCmdObjectList;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  num;
    /* 0x04 */ u32 segment;
} SCmdLightList;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ u32 segment;
} SCmdPathList;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  num;
    /* 0x04 */ u32 segment;
} SCmdTransiActorList;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  num;
    /* 0x04 */ u32 segment;
} SCmdLightSettingList;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x02 */ char pad[2];
    /* 0x04 */ u8  hour;
    /* 0x05 */ u8  min;
    /* 0x06 */ u8  unk_06;
} SCmdTimeSettings;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x02 */ char pad[2];
    /* 0x04 */ u8  skyboxId;
    /* 0x05 */ u8  unk_05;
    /* 0x06 */ u8  unk_06;
} SCmdSkyboxSettings;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x02 */ char pad[2];
    /* 0x04 */ u8  unk_04;
    /* 0x05 */ u8  unk_05;
} SCmdSkyboxDisables;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ u32 data2;
} SCmdEndMarker;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ u32 segment;
} SCmdExitList;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  bgmId;
    /* 0x02 */ char pad[4];
    /* 0x06 */ u8  nighttimeSFX;
    /* 0x07 */ u8  musicSeq;
} SCmdSoundSettings;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x02 */ char pad[5];
    /* 0x07 */ u8  echo;
} SCmdEchoSettings;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ u32 segment;
} SCmdCutsceneData;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ u32 segment;
} SCmdAltHeaders;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  cameraMovement;
    /* 0x04 */ u32 area;
} SCmdMiscSettings;

typedef struct
{
    u8 headerType;
} MeshHeaderBase;

typedef struct
{
    MeshHeaderBase base;

    u8 numEntries;
    u32 dListStart;
    u32 dListEnd;
} MeshHeader0;

typedef struct
{
    u32 opaqueDList;
	u32 translucentDList;
} MeshEntry0;

typedef struct
{
    MeshHeaderBase base;

    u8 format;
    u32 entryRecord;
} MeshHeader1Base;

typedef struct
{
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

typedef struct
{
    MeshHeader1Base base;
    
    u8 bgCnt;
    u32 bgRecordPtr;

} MeshHeader1Multi;

typedef struct
{
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

typedef struct
{
	s16 playerXMax, playerZMax;
	s16 playerXMin, playerZMin;

	u32 opaqueDList;
	u32 translucentDList;
} MeshEntry2;

typedef struct
{
    MeshHeaderBase base;

    u8 numEntries;
	u32 dListStart;
	u32 dListEnd;
} MeshHeader2;


typedef struct
{
    u8 ambientClrR, ambientClrG, ambientClrB;

    u8 diffuseClrA_R, diffuseClrA_G, diffuseClrA_B;
    u8 diffuseDirA_X, diffuseDirA_Y, diffuseDirA_Z;
    u8 diffuseClrB_R, diffuseClrB_G, diffuseClrB_B;
    u8 diffuseDirB_X, diffuseDirB_Y, diffuseDirB_Z;

    u8 fogClrR, fogClrG, fogClrB;
    u16 unk;
    u16 drawDistance;
} LightSettings;

typedef struct
{
    s16 absMinX, absMinY, absMinZ;
    s16 absMaxX, absMaxY, absMaxZ;
	s16 numVerts;
	s32 vtxSegmentOffset;
	s16 numPolygons;
	s32 polySegmentOffset;
	s32 polyTypeDefSegmentOffset;
	s32 camDataSegmentOffset;

	s16 numWaterBoxes;
	s32 waterBoxSegmentOffset;
} ColHeader;

typedef struct
{
    s16 cameraSType;            // 0x00
	s16 numCameras;             // 0x02
	s32 camPosDataSeg;  // 0x04
} CamData;

typedef struct
{
    u32 unknown;
    u32 camPosDataSeg;
} CamPosDataEntry;


/*
typedef union
{
    _CamData data;
    long long int forceStructAlignment;
} CamData;
*/

typedef struct
{
    s16 posX, posY, posZ;
	s16 rotX, rotY, rotZ;
	s16 fov;
	s16 jfifId;
	s16 unk;
	//s16 unk2;
	//s32 unk;
} CamPosData;

/*
typedef union
{
    _CamPosData data;
    long long int forceStructAlignment;
} CamPosData;
*/

typedef struct
{
    s16 type;
	s16 vtxA, vtxB, vtxC;
	s16 a, b, c, d;
} RoomPoly;

typedef struct
{
    s16 xMin;
	s16 ySurface;
	s16 zMin;
	s16 xLength;
	s16 zLength;
	s32 properties;
} WaterBoxHeader;

typedef union
{
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

typedef enum
{
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
    /* 0x0A */ SCENE_GANON,
    /* 0x0B */ SCENE_MEN,
    /* 0x0C */ SCENE_GERUDOWAY,
    /* 0x0D */ SCENE_GANONTIKA,
    /* 0x0E */ SCENE_GANON_SONOGO,
    /* 0x0F */ SCENE_GANONTIKA_SONOGO,
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
    /* 0x1A */ SCENE_GANON_FINAL,
    /* 0x1B */ SCENE_ENTRA,
    /* 0x1C */ SCENE_ENTRA_N,
    /* 0x1D */ SCENE_ENRUI,
    /* 0x1E */ SCENE_MARKET_ALLEY,
    /* 0x1F */ SCENE_MARKET_ALLEY_N,
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
    /* 0x2A */ SCENE_KAKARIKO,
    /* 0x2B */ SCENE_KAKARIKO3,
    /* 0x2C */ SCENE_SHOP1,
    /* 0x2D */ SCENE_KOKIRI_SHOP,
    /* 0x2E */ SCENE_GOLON,
    /* 0x2F */ SCENE_ZOORA,
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
    /* 0x3A */ SCENE_HUT,
    /* 0x3B */ SCENE_DAIYOUSEI_IZUMI,
    /* 0x3C */ SCENE_YOUSEI_IZUMI_TATE,
    /* 0x3D */ SCENE_YOUSEI_IZUMI_YOKO,
    /* 0x3E */ SCENE_KAKUSIANA,
    /* 0x3F */ SCENE_HAKAANA,
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
    /* 0x4A */ SCENE_NAKANIWA,
    /* 0x4B */ SCENE_BOWLING,
    /* 0x4C */ SCENE_SOUKO,
    /* 0x4D */ SCENE_MIHARIGOYA,
    /* 0x4E */ SCENE_MAHOUYA,
    /* 0x4F */ SCENE_GANON_DEMO,
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
    /* 0x5A */ SCENE_SPOT09,
    /* 0x5B */ SCENE_SPOT10,
    /* 0x5C */ SCENE_SPOT11,
    /* 0x5D */ SCENE_SPOT12,
    /* 0x5E */ SCENE_SPOT13,
    /* 0x5F */ SCENE_SPOT15,
    /* 0x60 */ SCENE_SPOT16,
    /* 0x61 */ SCENE_SPOT17,
    /* 0x62 */ SCENE_SPOT18,
    /* 0x63 */ SCENE_SPOT20,
    /* 0x64 */ SCENE_GANON_TOU,
    // Debug only scenes
    /* 0x65 */ SCENE_TEST01,
    /* 0x66 */ SCENE_BESITU,
    /* 0x67 */ SCENE_DEPTH_TEST,
    /* 0x68 */ SCENE_SYOTES,
    /* 0x69 */ SCENE_SYOTES2,
    /* 0x6A */ SCENE_SUTARU,
    /* 0x6B */ SCENE_HAIRAL_NIWA2,
    /* 0x6C */ SCENE_SASATEST,
    /* 0x6D */ SCENE_TESTROOM
} SceneID;

#endif
