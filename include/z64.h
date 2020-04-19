#ifndef _Z64_H_
#define _Z64_H_

#include <ultra64.h>
#include <ultra64/gbi.h>
#include <ultra64/gs2dex.h>
#include <ultra64/controller.h>
#include <z64light.h>
#include <z64actor.h>
#include <z64object.h>
#include <z64cutscene.h>
#include <z64scene.h>
#include <z64effect.h>
#include <z64item.h>
#include <z64animation.h>
#include <z64dma.h>
#include <z64vec.h>
#include <bgm.h>
#include <sfx.h>
#include <color.h>
#include <ichain.h>
#include <stdarg.h>
#include <regs.h>

#define SCREEN_WIDTH  320
#define SCREEN_HEIGHT 240

#define REGION_NULL 0
#define REGION_US 1
#define REGION_JP 2
#define REGION_EU 3

// NOTE: Once we start supporting other builds, this can be changed with an ifdef
#define REGION_NATIVE REGION_EU

// Game Info aka. Static Context (dbg ram start: 80210A10)
// Data normally accessed through REG macros (see regs.h)
typedef struct {
    /* 0x00 */ s32  regPage;   // 1 is first page
    /* 0x04 */ s32  regGroup;  // "register" group (R, RS, RO, RP etc.)
    /* 0x08 */ s32  regCur;    // selected register within page
    /* 0x0C */ s32  dpadLast;
    /* 0x10 */ s32  repeat;
    /* 0x14 */ s16  data[REG_GROUPS * REG_PER_GROUP]; // 0xAE0 bytes
} GameInfo; // size = 0x15D4

typedef struct {
    /* 0x00 */ u8    buttonItems[4];
    /* 0x04 */ u8    cButtonSlots[3];
    /* 0x08 */ u16   equipment;
} ItemEquips; // size = 0x0A

typedef struct {
    /* 0x00 */ u32   chest;
    /* 0x04 */ u32   swch;
    /* 0x08 */ u32   clear;
    /* 0x0C */ u32   collect;
    /* 0x10 */ u32   unk;
    /* 0x14 */ u32   rooms1;
    /* 0x18 */ u32   rooms2;
} SaveSceneFlags; // size = 0x1C

typedef struct {
    /* 0x00 */ s16   scene;
    /* 0x02 */ Vec3s pos;
    /* 0x08 */ s16   angle;
} HorseData; // size = 0x0A

typedef struct {
    /* 0x00 */ Vec3f pos;
    /* 0x0C */ s16   yaw;
    /* 0x0E */ s16   playerParams;
    /* 0x10 */ s16   entranceIndex;
    /* 0x12 */ u8    roomIndex;
    /* 0x13 */ s8    data;
    /* 0x14 */ u32   tempSwchFlags;
    /* 0x18 */ u32   tempCollectFlags;
} RespawnData; // size = 0x1C

typedef enum {
    /* 0x00 */ RESPAWN_MODE_DOWN,   /* Normal Void Outs */
    /* 0x01 */ RESPAWN_MODE_RETURN, /* Grotto Returnpoints */
    /* 0x02 */ RESPAWN_MODE_TOP     /* Farore's Wind */
} RespawnMode;

typedef enum {
    /* 0x00 */ BTN_ENABLED,
    /* 0xFF */ BTN_DISABLED = 0xFF
} ButtonStatus;

// Save Context (dbg ram start: 8015E660)
typedef struct {
    /* 0x0000 */ s32          entranceIndex;
    /* 0x0004 */ s32          linkAge; // 0: Adult; 1: Child
    /* 0x0008 */ s32          cutsceneIndex;
    /* 0x000C */ u16          dayTime; // "zelda_time"
    /* 0x0010 */ s32          nightFlag;
    /* 0x0014 */ s32          unk_14;
    /* 0x0018 */ s32          unk_18;
    /* 0x001C */ char         newf[6]; // string "ZELDAZ"
    /* 0x0022 */ s16          deaths;
    /* 0x0024 */ char         playerName[8];
    /* 0x002C */ s16          n64ddFlag;
    /* 0x002E */ s16          healthCapacity; // "max_life"
    /* 0x0030 */ s16          health; // "now_life"
    /* 0x0032 */ s8           magicLevel;
    /* 0x0033 */ s8           magic;
    /* 0x0034 */ s16          rupees;
    /* 0x0036 */ u16          bgsHitsLeft;
    /* 0x0038 */ u16          naviTimer;
    /* 0x003A */ u8           magicAcquired;
    /* 0x003B */ char         unk_3B[0x0001];
    /* 0x003C */ u8           doubleMagic;
    /* 0x003D */ u8           doubleDefense;
    /* 0x003E */ s8           bgsFlag;
    /* 0x0040 */ ItemEquips   childEquips;
    /* 0x004A */ ItemEquips   adultEquips;
    /* 0x0054 */ char         unk_54[0x0014];
    /* 0x0068 */ ItemEquips   equips;
    /* 0x0072 */ char         unk_72[0x0002];
    /* 0x0074 */ u8           items[24];
    /* 0x008C */ s8           ammo[16];
    /* 0x009C */ u16          equipment;
    /* 0x00A0 */ u32          upgrades;
    /* 0x00A4 */ u32          questItems;
    /* 0x00A8 */ u8           dungeonItems[20];
    /* 0x00BC */ s8           dungeonKeys[19];
    /* 0x00CF */ s8           defenseHearts;
    /* 0x00D0 */ s16          gsTokens;
    /* 0x00D4 */ SaveSceneFlags sceneFlags[124];
    struct {
        /* 0x0E64 */ Vec3i pos;
        /* 0x0E70 */ s32  yaw;
        /* 0x0E74 */ s32  playerParams;
        /* 0x0E78 */ s32  entranceIndex;
        /* 0x0E7C */ s32  roomIndex;
        /* 0x0E80 */ s32  set;
        /* 0x0E84 */ s32  tempSwchFlags;
        /* 0x0E88 */ s32  tempCollectFlags;
    }                         fw;
    /* 0x0E8C */ char         unk_E8C[0x0010];
    /* 0x0E9C */ u8           gsFlags[24];
    /* 0x0EB4 */ char         unk_EB4[0x0020];
    /* 0x0ED4 */ u16          eventChkInf[14]; // "event_chk_inf"
    /* 0x0EF0 */ u16          itemGetInf[4]; // "item_get_inf"
    /* 0x0EF8 */ u16          infTable[30]; // "inf_table"
    /* 0x0F34 */ char         unk_F34[0x0004];
    /* 0x0F38 */ u32          worldMapAreaData; // "area_arrival"
    /* 0x0F3C */ char         unk_F3C[0x040C];
    /* 0x1348 */ HorseData    horseData;
    /* 0x1352 */ u16          checksum; // "check_sum"
    /* 0x1354 */ s32          fileNum; // "file_no"
    /* 0x1358 */ char         unk_1358[0x0004];
    /* 0x135C */ s32          gameMode;
    /* 0x1360 */ s32          sceneSetupIndex;
    /* 0x1364 */ s32          respawnFlag; // "restart_flag"
    /* 0x1368 */ RespawnData  respawn[3]; // "restart_data"
    /* 0x13BC */ char         unk_13BC[0x0008];
    /* 0x13C4 */ s16          dogParams;
    /* 0x13C6 */ char         unk_13C6[0x0001];
    /* 0x13C7 */ u8           unk_13C7;
    /* 0x13C8 */ u16          nayrusLoveTimer;
    /* 0x13CA */ char         unk_13CA[0x0002];
    /* 0x13CC */ s16          rupeeAccumulator;
    /* 0x13CE */ s16          timer1State;
    /* 0x13D0 */ s16          timer1Value;
    /* 0x13D2 */ s16          timer2State;
    /* 0x13D4 */ s16          timer2Value;
    /* 0x13D6 */ s16          timerX[2];
    /* 0x13DA */ s16          timerY[2];
    /* 0x13DE */ char         unk_13DE[0x0002];
    /* 0x13E0 */ u8           seqIndex;
    /* 0x13E1 */ u8           nightSeqIndex;
    /* 0x13E2 */ u8           buttonStatus[5];
    /* 0x13E7 */ u8           unk_13E7;
    /* 0x13E8 */ u16          unk_13E8; // alpha type?
    /* 0x13EA */ u16          unk_13EA; // also alpha type?
    /* 0x13EC */ u16          unk_13EC; // alpha type counter?
    /* 0x13EE */ u16          unk_13EE; // previous alpha type?
    /* 0x13F0 */ s16          unk_13F0;
    /* 0x13F2 */ s16          unk_13F2;
    /* 0x13F4 */ s16          unk_13F4;
    /* 0x13F6 */ s16          unk_13F6;
    /* 0x13F8 */ s16          unk_13F8;
    /* 0x13FA */ u16          eventInf[4]; // "event_inf"
    /* 0x1402 */ u16          dungeonIndex;
    /* 0x1404 */ u16          minigameState;
    /* 0x1406 */ u16          minigameScore; // "yabusame_total"
    /* 0x1408 */ char         unk_1408[0x0001];
    /* 0x1409 */ u8           language;
    /* 0x140A */ u8           audioSetting;
    /* 0x140B */ char         unk_140B[0x0001];
    /* 0x140C */ u8           zTargetingSetting; // 0: Switch; 1: Hold
    /* 0x140E */ u16          unk_140E; // bgm related
    /* 0x1410 */ u8           unk_1410;
    /* 0x1411 */ u8           unk_1411;
    /* 0x1412 */ u16          nextCutsceneIndex;
    /* 0x1414 */ u8           cutsceneTrigger;
    /* 0x1415 */ u8           chamberCutsceneNum;
    /* 0x1416 */ u16          nextDayTime; // "next_zelda_time"
    /* 0x1418 */ u8           fadeDuration;
    /* 0x1419 */ u8           unk_1419; // transition related
    /* 0x141A */ u16          environmentTime;
    /* 0x141C */ u8           dogIsLost;
    /* 0x141D */ u8           nextTransition;
    /* 0x141E */ char         unk_141E[0x0002];
    /* 0x1420 */ s16          worldMapArea;
    /* 0x1422 */ s16          unk_1422; // day time related
    /* 0x1424 */ s16          healthAccumulator;
} SaveContext; // size = 0x1428

typedef struct {
    /* 0x00000 */ u16 headMagic; // 1234
    /* 0x00008 */ Gfx polyOpaBuffer[0x17E0];
    /* 0x0BF08 */ Gfx polyXluBuffer[0x800];
    /* 0x0FF08 */ Gfx overlayBuffer[0x400];
    /* 0x11F08 */ Gfx workBuffer[0x80];
    /* 0x11308 */ Gfx unusedBuffer[0x20];
    /* 0x12408 */ u16 tailMagic; // 5678
} GfxPool; // size = 0x12410

typedef struct {
    /* 0x0000 */ u32    size;
    /* 0x0004 */ u8*    bufp;
    /* 0x0008 */ u8*    head;
    /* 0x000C */ u8*    tail;
} TwoHeadArena; // size = 0x10

typedef struct {
    /* 0x0000 */ u32    size;
    /* 0x0004 */ Gfx*   bufp;
    /* 0x0008 */ Gfx*   p;
    /* 0x000C */ Gfx*   d;
} TwoHeadGfxArena; // size = 0x10

typedef struct OSScTask {
    /* 0x00 */ struct OSScTask* next;
    /* 0x04 */ u32            state;
    /* 0x08 */ u32            flags;
    /* 0x0C */ void*          framebuffer;
    /* 0x10 */ OSTask         list;
    /* 0x50 */ OSMesgQueue*   msgQ;
    /* 0x54 */ OSMesg         msg;
} OSScTask;

typedef struct GraphicsContext {
    /* 0x0000 */ Gfx* polyOpaBuffer;
    /* 0x0004 */ Gfx* polyXluBuffer;
    /* 0x0008 */ char unk_008[0x08];
    /* 0x0010 */ Gfx* overlayBuffer;
    /* 0x0014 */ u32 unk_014;
    /* 0x0018 */ char unk_018[0x20];
    /* 0x0038 */ OSMesg msgBuff[0x08];
    /* 0x0058 */ OSMesgQueue* schedMsgQ;
    /* 0x005C */ OSMesgQueue queue;
    /* 0x0074 */ char unk_074[0x04];
    /* 0x0078 */ OSScTask task; // size of OSScTask might be wrong
    /* 0x00D0 */ char unk_0D0[0xE0];
    /* 0x01B0 */ Gfx* workBuffer;
    /* 0x01B4 */ TwoHeadGfxArena work;
    /* 0x01C4 */ char unk_01C4[0xC0];
    /* 0x0284 */ OSViMode* viMode;
    /* 0x0288 */ char unk_0288[0x20];
    /* 0x02A8 */ TwoHeadGfxArena overlay;
    /* 0x02B8 */ TwoHeadGfxArena polyOpa;
    /* 0x02C8 */ TwoHeadGfxArena polyXlu;
    /* 0x02D8 */ u32 gfxPoolIdx;
    /* 0x02DC */ u16* curFrameBuffer;
    /* 0x02E0 */ char unk_2E0[0x04];
    /* 0x02E4 */ u32 viFeatures;
    /* 0x02E8 */ s32 fbIdx;
    /* 0x02EC */ void (*callback)(struct GraphicsContext*, u32);
    /* 0x02F0 */ u32 callbackParam;
    /* 0x02F4 */ f32 xScale;
    /* 0x02F8 */ f32 yScale;
    /* 0x02FC */ char unk_2FC[0x04];
} GraphicsContext; // size = 0x300

typedef struct {
    PadInput in;
    union {
        u16 status;
        struct {
            u8 errno;
            u8 statusLo;
        };
    };
} PadState;

typedef struct
{
    /* 0x00 */ PadState cur;
    /* 0x06 */ PadState prev;
    /* 0x0C */ PadState press; // X/Y store delta from last frame
    /* 0x12 */ PadState rel; // X/Y store adjusted
    /* The old version of this struct is:
    RawInput raw;
    u16      status;
    RawInput rawPrev;
    u16      statusPrev;
    u16      padPressed;
    s8       xDiff;
    s8       yDiff;
    char     unk_10[0x02];
    u16      padReleased;
    s8       xAdjusted;
    s8       yAdjusted;
    char     unk_16[0x02];
    */
} Input; // size = 0x18

typedef struct {
    /* 0x0000 */ OSContStatus pad_status[4];
    /* 0x0010 */ OSMesg msgbuf1[1];
    /* 0x0014 */ OSMesg msgbuf2[1];
    /* 0x0018 */ OSMesg msgbuf3[4];
    /* 0x0028 */ OSMesgQueue queue1;
    /* 0x0040 */ OSMesgQueue queue2;
    /* 0x0058 */ OSMesgQueue queue3;
    /* 0x0070 */ UNK_TYPE unk_70;
    /* 0x0074 */ UNK_TYPE unk_74;
    /* 0x0078 */ UNK_TYPE unk_78;
    /* 0x007C */ UNK_TYPE unk_7C;
    /* 0x0080 */ OSThread thread;
    /* 0x0230 */ Input inputs[4]; // 0x18 each = 0x60 total
    /* 0x0290 */ PadState pads[4]; // 0x6 each = 0x18 total
    /* 0x02A8 */ volatile u8 validCtrlrsMask;
    /* 0x02A9 */ s8 ncontrollers;
    /* 0x02AA */ u8 ctrlrIsConnected[4]; // "Key_switch" originally
    /* 0x02AE */ u8 pakType[4]; // 1 if rumble pack, 2 if mempak?
    /* 0x02B2 */ volatile u8 rumbleEnable[4];
    /* 0x02B6 */ u8 rumbleCounter[4]; // not clear exact meaning
    /* 0x02BC */ unk_controller_t unk_controller[4];
    /* 0x045C */ volatile u8 rumbleOffFrames;
    /* 0x045D */ volatile u8 rumbleOnFrames;
    /* 0x045E */ u8 preNMIShutdown;
    /* 0x0460 */ void (*retraceCallback)(void* padmgr, u32 unk464);
    /* 0x0464 */ u32 retraceCallbackValue;
} PadMgr; // size = 0x468

typedef struct {
   /* 0x0000 */ s32 topY;    // uly (upper left y)
   /* 0x0004 */ s32 bottomY; // lry (lower right y)
   /* 0x0008 */ s32 leftX;   // ulx (upper left x)
   /* 0x000C */ s32 rightX;  // lrx (lower right x)
} Viewport; // size = 0x10


typedef struct { 
    /* 0x0000 */ s32    magic; // string literal "VIEW" / 0x56494557
    /* 0x0004 */ GraphicsContext* gfxCtx;
    /* 0x0008 */ Viewport viewport;
    /* 0x0018 */ f32    fovy;  // vertical field of view in degrees
    /* 0x001C */ f32    zNear;  // distance to near clipping plane
    /* 0x0020 */ f32    zFar;   // distance to far clipping plane
    /* 0x0024 */ f32    scale; // scale for matrix elements
    /* 0x0028 */ Vec3f  eye;
    /* 0x0034 */ Vec3f  unk_34;
    /* 0x0040 */ Vec3f  unk_40;
    /* 0x0050 */ Vp     vp;
    /* 0x0060 */ Mtx    projection;
    /* 0x00A0 */ Mtx    viewing;
    /* 0x00E0 */ Mtx*   projectionPtr;
    /* 0x00E4 */ Mtx*   viewingPtr;
    /* 0x00E8 */ Vec3f  unk_E8;
    /* 0x00F4 */ Vec3f  unk_F4;
    /* 0x0100 */ f32    unk_100;
    /* 0x0104 */ Vec3f  unk_104;
    /* 0x0110 */ Vec3f  unk_110;
    /* 0x011C */ u16    normal; // used to normalize the projection matrix
    /* 0x0120 */ u32    flags;
    /* 0x0124 */ s32    unk_124; 
} View; // size = 0x128

typedef struct {
    f32 unk_00;
    s16 unk_04;
    s16 unk_06;
} struct_80045714; // used in z_camera.c and code_8007BF90

typedef struct {
    /* 0x0000 */ s32 unk_00;
    /* 0x0004 */ s16 unk_04;
    /* 0x0006 */ s16 unk_06;
    /* 0x0008 */ s16 unk_08;
    /* 0x000A */ s16 unk_0A;
    /* 0x000C */ char unk_0C[0x44];
    /* 0x0050 */ Vec3f unk_50;
    /* 0x005C */ Vec3f unk_5C;
    /* 0x0068 */ char unk_68[0x0C];
    /* 0x0074 */ Vec3f unk_74;
    /* 0x0080 */ Vec3f unk_80;
    /* 0x008C */ struct GlobalContext* globalCtx;
    /* 0x0090 */ Player* player;
    /* 0x0094 */ PosRot unk_94;
    /* 0x00A8 */ char unk_A8[0x18];
    /* 0x00C0 */ Vec3f unk_C0;
    /* 0x00CC */ Vec3f unk_CC;
    /* 0x00D8 */ f32 unk_D8;
    /* 0x00DC */ f32 unk_DC; // possibly a Vec3f
    /* 0x00E0 */ f32 unk_E0;
    /* 0x00E4 */ Vec3f unk_E4;
    /* 0x00F0 */ char unk_F0[0x0C];
    /* 0x00FC */ f32 unk_FC;
    /* 0x0100 */ f32 unk_100;
    /* 0x0104 */ f32 unk_104;
    /* 0x0108 */ Vec3f unk_108;
    /* 0x0114 */ char unk_114[0x10];
    /* 0x0124 */ s32 unk_124;
    /* 0x0128 */ s32 unk_128;
    /* 0x012C */ s16 unk_12C;
    /* 0x012E */ s16 unk_12E;
    /* 0x0130 */ s16 unk_130;
    /* 0x0132 */ char unk_132[0x0E];
    /* 0x0140 */ s16 unk_140;
    /* 0x0142 */ s16 unk_142; // related to door camera (see func_8005AD40)
    /* 0x0144 */ s16 unk_144;
    /* 0x0146 */ s16 unk_146; // unknown if used
    /* 0x0148 */ s16 unk_148; // ID for door camera? (see func_8005AD40)
    /* 0x014A */ s16 unk_14A; // unknown if used
    /* 0x014C */ s16 unk_14C;
    /* 0x014E */ s16 unk_14E;
    /* 0x0150 */ s16 unk_150; // unknown if used
    /* 0x0152 */ s16 unk_152;
    /* 0x0154 */ u16 unk_154;
    /* 0x0156 */ s16 unk_156;
    /* 0x0158 */ s16 unk_158; // unknown if used
    /* 0x015E */ s16 unk_15A;
    /* 0x015E */ s16 unk_15C; // unknown if used
    /* 0x015E */ u16 unk_15E;
    /* 0x0160 */ s16 unk_160;
    /* 0x0162 */ s16 unk_162;
    /* 0x0164 */ s16 unk_164;
    /* 0x0166 */ s16 unk_166; // unknown if used
    /* 0x0168 */ s16 unk_168;
    /* 0x016A */ s16 unk_16A; // unknown if used
} Camera; // size = 0x16C

typedef struct {
    /* 0x0000 */ Camera  cameras[4];
    /* 0x05B0 */ Camera* cameraPtrs[4];
    /* 0x05C0 */ s16     activeCamera;
    /* 0x05C2 */ s16     nextCamera;
} CameraContext; // size = 0x5C4

typedef struct {
    /* 0x00 */ u8   musicSeq;
    /* 0x01 */ u8   nighttimeSFX;
    /* 0x02 */ char unk_02[0x2];
} SoundContext; // size = 0x4

typedef struct {
    /* 0x00 */ s32  unk_0;
    /* 0x04 */ char unk_4[0x4];
} SubGlobalContext7B8; // size = 0x8

typedef struct {
    /* 0x00 */ char unk_00[0x2];
    /* 0x02 */ s16  unk_02;
    /* 0x04 */ char unk_04[0xC];
} WaterBox; // size = 0x10

typedef struct {
    /* 0x00 */ Vec3s     colAbsMin;
    /* 0x06 */ Vec3s     colAbsMax;
    /* 0x0C */ s16       nbVertices;
    /* 0x10 */ void*     vertexArray;
    /* 0x14 */ s16       nbPolygons;
    /* 0x18 */ void*     polygonArray;
    /* 0x1C */ void*     polygonTypes;
    /* 0x20 */ void*     cameraData;
    /* 0x24 */ s16       nbWaterBoxes;
    /* 0x28 */ WaterBox* waterBoxes;
} CollisionHeader;

typedef struct {
    /* 0x00 */ CollisionHeader* colHeader;
    /* 0x04 */ char             unk_04[0x4C];
} StaticCollisionContext; // size = 0x50

typedef struct {
    /* 0x0000 */ char   unk_00[0x04];
    /* 0x0004 */ ActorMesh actorMeshArr[50];
    /* 0x138C */ u16    flags[50];
    /* 0x13F0 */ char   unk_13F0[0x24];
} DynaCollisionContext; // size = 0x1414

typedef struct {
    /* 0x0000 */ StaticCollisionContext stat;
    /* 0x0050 */ DynaCollisionContext   dyna;
} CollisionContext; // size = 0x1464

typedef struct {
    /* 0x00 */ Vec3f    pos;
    /* 0x0C */ f32      unk_0C; // radius?
    /* 0x10 */ Color_RGB8 color;
} TargetContextEntry; // size = 0x14

typedef struct {
    /* 0x00 */ Vec3f    naviRefPos; // possibly wrong
    /* 0x0C */ Vec3f    targetCenterPos;
    /* 0x18 */ Color_RGBAf naviInner;
    /* 0x28 */ Color_RGBAf naviOuter;
    /* 0x38 */ Actor*   arrowPointedActor;
    /* 0x3C */ Actor*   targetedActor;
    /* 0x40 */ f32      unk_40;
    /* 0x44 */ f32      unk_44;
    /* 0x48 */ s16      unk_48;
    /* 0x4A */ u8       activeType;
    /* 0x4B */ u8       unk_4B;
    /* 0x4C */ s8       unk_4C;
    /* 0x4D */ char     unk_4D[0x03];
    /* 0x50 */ TargetContextEntry arr_50[3];
    /* 0x8C */ Actor*   unk_8C;
    /* 0x90 */ Actor*   unk_90;
    /* 0x94 */ Actor*   unk_94;
} TargetContext; // size = 0x98

typedef struct {
    /* 0x00 */ u32      texture;
    /* 0x04 */ s16      unk_4;
    /* 0x06 */ s16      unk_6;
    /* 0x08 */ u8       unk_8;
    /* 0x09 */ u8       unk_9;
    /* 0x0A */ u8       delayA;
    /* 0x0B */ u8       delayB;
    /* 0x0C */ s16      unk_C;
    /* 0x0E */ s16      unk_E;
} TitleCardContext; // size = 0x10

typedef struct {
    /* 0x00 */ u32    length; // number of actors loaded of this type
    /* 0x04 */ Actor* first;  // pointer to first actor of this type
} ActorListEntry; // size = 0x08

typedef struct {
    /* 0x0000 */ u8     unk_00;
    /* 0x0001 */ char   unk_01[0x01];
    /* 0x0002 */ u8     unk_02;
    /* 0x0003 */ u8     unk_03;
    /* 0x0004 */ char   unk_04[0x04];
    /* 0x0008 */ u8     total; // total number of actors loaded
    /* 0x0009 */ char   unk_09[0x03];
    /* 0x000C */ ActorListEntry actorList[12];
    /* 0x006C */ TargetContext targetCtx;
    struct {
        /* 0x0104 */ u32    swch;
        /* 0x0108 */ u32    tempSwch;
        /* 0x010C */ u32    unk0;
        /* 0x0110 */ u32    unk1;
        /* 0x0114 */ u32    chest;
        /* 0x0118 */ u32    clear;
        /* 0x011C */ u32    tempClear;
        /* 0x0120 */ u32    collect;
        /* 0x0124 */ u32    tempCollect;
    }                   flags;
    /* 0x0128 */ TitleCardContext titleCtx;
    /* 0x0138 */ char   unk_138[0x04];
    /* 0x013C */ void*  absoluteSpace; // Space used to allocate actor overlays of alloc type 1
} ActorContext; // size = 0x140

typedef struct {
    /* 0x00 */ char  unk_00[0x4];
    /* 0x04 */ void* segment;
    /* 0x08 */ u8    state;
    /* 0x0C */ f32   unk_0C;
    /* 0x10 */ u16   frames;
    /* 0x12 */ u16   unk_12;
    /* 0x14 */ s32   unk_14;
    /* 0x18 */ u16   unk_18;
    /* 0x1A */ u8    unk_1A;
    /* 0x1B */ u8    unk_1B;
    /* 0x1C */ CutsceneCameraPoint* cameraFocus;
    /* 0x20 */ CutsceneCameraPoint* cameraPosition;
    /* 0x24 */ CsCmdActorAction* linkAction;
    /* 0x28 */ CsCmdActorAction* actorActions[10]; // "npcdemopnt"
} CutsceneContext; // size = 0x50

typedef struct {
    /* 0x00 */ char unk_0[0x4];
} SubGlobalContext1F74; // size = 0x4

typedef struct {
    /* 0x000 */ char unk_00[0x140];
    /* 0x140 */ s16  unk_140;
    /* 0x142 */ char unk_142[0x0E];
} SkyboxContext; // size = 0x150

typedef struct {
    /* 0x0000 */ View   view;
    /* 0x0128 */ char   unk_128[0xE188];
    /* 0xE2B0 */ void*  textboxSegment; // "fukidashiSegment"
    /* 0xE2B4 */ char   unk_E2B4[0x44];
    /* 0xE2FA */ u16    unk_E2F8;
    /* 0xE2FA */ u16    unk_E2FA;
    /* 0xE2FC */ char   unk_E2FC[0x04];
    /* 0xE300 */ s32    unk_E300;
    /* 0xE304 */ u8     msgMode;
    /* 0xE305 */ char   unk_E305[0xD1];
    /* 0xE3D6 */ u16    unk_E3D6;
    /* 0xE3D8 */ char   unk_E3D8[0x0A];
    /* 0xE3E2 */ u16    unk_E3E2;
    /* 0xE3E4 */ u8     unk_E3E4;
    /* 0xE3E5 */ u8     choiceIndex;
    /* 0xE3E6 */ char   unk_E3E6[0x08];
    /* 0xE3EE */ u16    unk_E3EE;
    /* 0xE3EE */ u16    unk_E3F0;
    /* 0xE3F2 */ char   unk_E3F2[0x02];
    /* 0xE3F4 */ u16    unk_E3F4;
    /* 0xE3F6 */ char   unk_E3F6[0x16];
    /* 0xE40C */ u16    unk_E40C;
    /* 0xE40E */ char   unk_E40E[0x0A];
} MessageContext; // size = 0xE418

typedef struct {
    /* 0x0000 */ View   view;
    /* 0x0128 */ Vtx*   vtx_128;
    /* 0x012C */ Vtx*   vtx_12C;
    /* 0x0130 */ void*  parameterSegment;
    /* 0x0134 */ void*  do_actionSegment;
    /* 0x0138 */ void*  icon_itemSegment;
    /* 0x013C */ void*  mapSegment;
    /* 0x0140 */ char   unk_140[0x20];
    /* 0x0160 */ DmaRequest dmaRequest_160;
    /* 0x0180 */ DmaRequest dmaRequest_180;
    /* 0x01A0 */ char   unk_1A0[0x20];
    /* 0x01C0 */ OSMesgQueue loadQueue;
    /* 0x01D8 */ OSMesg loadMsg;
    /* 0x01DC */ Viewport viewport;
    /* 0x01EC */ s16    unk_1EC;
    /* 0x01EE */ u16    unk_1EE;
    /* 0x01F0 */ u16    unk_1F0;
    /* 0x01F4 */ f32    unk_1F4;
    /* 0x01F8 */ s16    naviCalling;
    /* 0x01FA */ s16    unk_1FA;
    /* 0x01FC */ s16    unk_1FC;
    /* 0x01FE */ s16    unk_1FE;
    /* 0x0200 */ s16    unk_200;
    /* 0x0202 */ s16    unk_202[3];
    /* 0x0208 */ s16    unk_208[3];
    /* 0x020E */ s16    unk_20E[6];
    /* 0x021A */ s16    unk_21A[6];
    /* 0x0226 */ s16    unk_226;
    /* 0x0228 */ s16    unk_228;
    /* 0x022A */ s16    unk_22A;
    /* 0x022C */ s16    unk_22C;
    /* 0x022E */ s16    unk_22E;
    /* 0x0230 */ s16    unk_230;
    /* 0x0232 */ s16    counterDigits[4]; // used for key and rupee counters
    /* 0x023A */ u8     unk_23A;
    /* 0x023C */ u16    unk_23C;
    /* 0x023E */ u16    hbaAmmo; // ammo while playing the horseback archery minigame
    /* 0x0240 */ u16    unk_240;
    /* 0x0242 */ u16    unk_242;
    /* 0x0224 */ u16    unk_244; // screen fill alpha?
    /* 0x0246 */ u16    aAlpha; // also carrots alpha
    /* 0x0248 */ u16    bAlpha; // also HBA score alpha
    /* 0x024A */ u16    cLeftAlpha;
    /* 0x024C */ u16    cDownAlpha;
    /* 0x024E */ u16    cRightAlpha;
    /* 0x0250 */ u16    healthAlpha; // also max C-Up alpha
    /* 0x0252 */ u16    magicAlpha; // also Rupee and Key counters alpha
    /* 0x0254 */ u16    minimapAlpha;
    /* 0x0256 */ s16    startAlpha;
    /* 0x0258 */ char   unk_258[0x004];
    /* 0x025C */ s16    roomNum;
    /* 0x025E */ char   unk_25E[0x002];
    /* 0x0260 */ u8     unk_260;
    /* 0x0261 */ u8     unk_261;
    struct {
        /* 0x0262 */ u8    hGauge;     // "h_gage"; unknown?
        /* 0x0263 */ u8    bButton;    // "b_button"
        /* 0x0264 */ u8    aButton;    // "a_button"
        /* 0x0265 */ u8    bottles;    // "c_bottle"
        /* 0x0266 */ u8    tradeItems; // "c_warasibe"
        /* 0x0267 */ u8    hookshot;   // "c_hook"
        /* 0x0268 */ u8    ocarina;    // "c_ocarina"
        /* 0x0269 */ u8    warpSongs;  // "c_warp"
        /* 0x026A */ u8    sunsSong;   // "m_sunmoon"
        /* 0x026B */ u8    farores;    // "m_wind"
        /* 0x026C */ u8    dinsNayrus; // "m_magic"; din's fire and nayru's love
        /* 0x026D */ u8    all;        // "another"; enables all item restrictions
    }                   restrictions;
} InterfaceContext; // size = 0x270

typedef struct {
    /* 0x0000 */ View   view;
    /* 0x0128 */ void*  unk_128;
    /* 0x012C */ char   unk_12C[0x03C];
    /* 0x0168 */ Vtx*   vtx_168;
    /* 0x016C */ char   unk_16C[0x068];
    /* 0x01D4 */ u16    state;
    /* 0x01D6 */ u16    flag;
    /* 0x01D8 */ char   unk_1D8[0x00C];
    /* 0x01E4 */ u16    unk_1E4;
    /* 0x01E6 */ char   unk_1E6[0x006];
    /* 0x01EC */ u16    unk_1EC;
    /* 0x01EE */ char   unk_1EE[0x04A];
    /* 0x0238 */ u16    unk_238;
    /* 0x023A */ char   unk_23A[0x004];
    /* 0x023E */ u16    unk_23E;
    /* 0x0240 */ char   unk_240[0x00E];
    /* 0x024E */ u16    unk_24E;
    /* 0x0250 */ char   unk_250[0x004];
    /* 0x0254 */ s16    unk_254;
    /* 0x0256 */ s16    unk_256;
    /* 0x0258 */ s16    unk_258;
    /* 0x025A */ char   unk_25A[0x066];
} PauseContext; // size = 0x2C0

typedef struct {
    /* 0x00 */ char     unk_00[0x02];
    /* 0x02 */ u16      unk_02;
    /* 0x04 */ Vec3f    unk_04;
    /* 0x10 */ char     unk_10[0x03];
    /* 0x13 */ u8       unk_13;
    /* 0x14 */ char     unk_14[0x01];
    /* 0x15 */ u8       skyDisabled;
    /* 0x16 */ u8       sunMoonDisabled;
    /* 0x17 */ u8       gloomySky;
    /* 0x18 */ u8       unk_18;
    /* 0x19 */ u8       unk_19;
    /* 0x1A */ u16      unk_1A;
    /* 0x1C */ char     unk_1C[0x02];
    /* 0x1E */ u8       unk_1E;
    /* 0x1F */ u8       unk_1F;
    /* 0x20 */ u8       unk_20;
    /* 0x21 */ u8       unk_21;
    /* 0x22 */ u16      unk_22;
    /* 0x24 */ u16      unk_24;
    /* 0x26 */ char     unk_26[0x04];
    /* 0x2A */ s8       unk_2A;
    /* 0x2B */ s8       unk_2B;
    /* 0x2C */ s8       unk_2C;
    /* 0x2D */ char     unk_2D[0x5E];
    /* 0x8C */ s16      unk_8C[6];
    /* 0x98 */ char     unk_98[0x08];
    /* 0xA0 */ s16      unk_A0;
    /* 0xA2 */ char     unk_A2[0x06];
    /* 0xA8 */ s16      unk_A8;
    /* 0xAA */ s16      unk_AA;
    /* 0xAC */ s16      unk_AC;
    /* 0xB0 */ f32      unk_B0;
    /* 0xB4 */ u8       nbLightSettings;
    /* 0xB8 */ UNK_PTR  lightSettingsList;
    /* 0xBC */ char     unk_BC[0x03];
    /* 0xBF */ u8       unk_BF;
    /* 0xC0 */ char     unk_C0[0x18];
    /* 0xD8 */ f32      unk_D8;
    /* 0xDC */ u8       unk_DC;
    /* 0xDD */ u8       gloomySkyEvent;
    /* 0xDE */ u8       unk_DE;
    /* 0xDF */ u8       lightning;
    /* 0xE0 */ u8       unk_E0;
    /* 0xE1 */ u8       unk_E1;
    /* 0xE2 */ u8       unk_E2[4];
    /* 0xE6 */ u8       unk_E6;
    /* 0xE7 */ u8       unk_E7;
    /* 0xE8 */ u8       unk_E8;
    /* 0xE9 */ char     unk_E9[0x05];
    /* 0xEE */ u8       unk_EE[4];
    /* 0xF2 */ u8       unk_F2[4];
    /* 0xF6 */ char     unk_F6[0x06];
} EnvironmentContext; // size = 0xFC

typedef struct {
    /* 0x00 */ s16      id;
    /* 0x04 */ void*    segment;
    /* 0x08 */ DmaRequest  dmaRequest;
    /* 0x28 */ OSMesgQueue loadQueue;
    /* 0x40 */ OSMesg   loadMsg;
} ObjectStatus; // size = 0x44

typedef struct {
    /* 0x0000 */ void*  spaceStart;
    /* 0x0004 */ void*  spaceEnd; // original name: "endSegment"
    /* 0x0008 */ u8     num; // number of objects in bank
    /* 0x0009 */ u8     unk_09;
    /* 0x000A */ u8     mainKeepIndex; // "gameplay_keep" index in bank
    /* 0x000B */ u8     subKeepIndex; // "gameplay_field_keep" or "gameplay_dangeon_keep" index in bank
    /* 0x000C */ ObjectStatus status[OBJECT_EXCHANGE_BANK_MAX];
} ObjectContext; // size = 0x514

typedef struct {
    /* 0x00 */ Gfx* opa;
    /* 0x04 */ Gfx* xlu;
} PolygonDlist; // size = 0x8

typedef struct {
    /* 0x00 */ u8    type;
    /* 0x01 */ u8    num; // number of dlist entries
    /* 0x04 */ void* start;
    /* 0x08 */ void* end;
} Polygon; // size = 0xC

typedef struct {
    /* 0x00 */ u8    type;
    /* 0x01 */ u8    num; // number of dlist entries
    /* 0x04 */ void* start;
    /* 0x08 */ void* end;
} PolygonType0; // size = 0xC

typedef struct {
    /* 0x00 */ u16   unk_00;
    /* 0x02 */ u8    id;
    /* 0x04 */ u32   source;
    /* 0x08 */ u32   unk_0C;
    /* 0x0C */ u32   tlut;
    /* 0x10 */ u16   width;
    /* 0x12 */ u16   height;
    /* 0x14 */ u8    fmt;
    /* 0x15 */ u8    siz;
    /* 0x16 */ u16   mode0;
    /* 0x18 */ u16   tlutCount;
} BgImage; // size = 0x1C

typedef struct {
    /* 0x00 */ u8    type;
    /* 0x01 */ u8    format; // 1 = single, 2 = multi
    /* 0x04 */ void* dlist;
    union {
        struct {
            /* 0x08 */ u32   source;
            /* 0x0C */ u32   unk_0C;
            /* 0x10 */ u32   tlut;
            /* 0x14 */ u16   width;
            /* 0x16 */ u16   height;
            /* 0x18 */ u8    fmt;
            /* 0x19 */ u8    siz;
            /* 0x1A */ u16   mode0;
            /* 0x1C */ u16   tlutCount;
        } single;
        struct {
            /* 0x08 */ u8    count;
            /* 0x0C */ BgImage* list;
        } multi;
    };
} PolygonType1;

typedef struct {
    /* 0x00 */ Vec3s pos;
    /* 0x06 */ s16   unk_06;
    /* 0x08 */ Gfx*  opa;
    /* 0x0C */ Gfx*  xlu;
} PolygonDlist2; // size = 0x8

typedef struct {
    /* 0x00 */ u8    type;
    /* 0x01 */ u8    num; // number of dlist entries
    /* 0x04 */ void* start;
    /* 0x08 */ void* end;
} PolygonType2; // size = 0xC

typedef union {
    Polygon      polygon;
    PolygonType0 polygon0;
    PolygonType1 polygon1;
    PolygonType2 polygon2;
} Mesh; // "Ground Shape"

typedef struct {
    /* 0x00 */ s8   num;
    /* 0x01 */ u8   unk_01;
    /* 0x02 */ u8   unk_02;
    /* 0x03 */ u8   unk_03;
    /* 0x04 */ s8   echo;
    /* 0x05 */ u8   showInvisActors;
    /* 0x08 */ Mesh* mesh; // original name: "ground_shape"
    /* 0x0C */ void* segment;
    /* 0x10 */ char unk_10[0x4];
} Room; // size = 0x14

typedef struct {
    /* 0x00 */ Room  curRoom;
    /* 0x14 */ Room  prevRoom;
    /* 0x28 */ void* bufPtrs[2];
    /* 0x30 */ u8    unk_30;
    /* 0x31 */ s8    status;
    /* 0x34 */ void* unk_34;
    /* 0x38 */ DmaRequest dmaRequest;
    /* 0x58 */ OSMesgQueue loadQueue;
    /* 0x70 */ OSMesg loadMsg;
} RoomContext; // size = 0x74

typedef struct {
    /* 0x00 */ char unk_00[0x028C];
} SubGlobalContext11E60; // size = 0x28C

typedef struct {
    /* 0x00 */ char unk_00[0x10];
    /* 0x10 */ u16* unk_10;
    /* 0x14 */ u16* unk_14;
    /* 0x18 */ u16* unk_18;
    /* 0x1C */ char unk_1C[0x87];
    /* 0xA3 */ s8   unk_A3;
} PreRenderContext; // size = 0xA4

typedef struct {
    /* 0x00 */ char unk_00[0xDC];
    /* 0xDC */ u16* unk_DC;
} TransitionStruct; // size = 0xE0

typedef struct {
    /* 0x000 */ char   unk_00[0x228];
    /* 0x228 */ s32    unk_228;
    /* 0x22C */ void (*unk_22C)(UNK_ARGS);
    /* 0x230 */ void (*unk_230)(UNK_ARGS);
    /* 0x234 */ void (*unk_234)(UNK_ARGS);
    /* 0x238 */ void (*unk_238)(UNK_ARGS);
    /* 0x23C */ void (*unk_23C)(UNK_ARGS);
    /* 0x240 */ void (*unk_240)(UNK_ARGS);
    /* 0x244 */ void (*unk_244)(UNK_ARGS);
    /* 0x248 */ void (*unk_248)(UNK_ARGS);
    /* 0x24C */ s32  (*unk_24C)(UNK_ARGS);
} TransitionContext; // size = 0x250

typedef struct {
    /* 0x00 */ char unk_00[0x0C];
} SubGlobalContext1241C; // size = 0xC

typedef struct {
    /* 0x00 */ s16   id;
    /* 0x02 */ Vec3s pos;
    /* 0x08 */ Vec3s rot;
    /* 0x0E */ s16   params;
} ActorEntry; // size = 0x10

typedef struct {
    /* 0x00 */ s8    frontRoom;    // Room to switch to when triggered from the front of the object
    /* 0x01 */ s8    frontEffects; // How the camera reacts during the front transition
    /* 0x02 */ s8    backRoom;     // Room to switch to when triggered from the back of the object
    /* 0x03 */ s8    backEffects;  // How the camera reacts during the back transition
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
    /* 0x00 */ void* read_buff;
} Sram; // size = 0x4

typedef struct GameAllocEntry {
    /* 0x00 */ struct GameAllocEntry* next;
    /* 0x04 */ struct GameAllocEntry* prev;
    /* 0x08 */ u32 size;
    /* 0x0C */ u32 unk_0C;
} GameAllocEntry; // size = 0x10

typedef struct {
    /* 0x00 */ GameAllocEntry base;
    /* 0x10 */ GameAllocEntry* head;
} GameAlloc; // size = 0x14

typedef struct GameState {
    /* 0x00 */ GraphicsContext* gfxCtx;
    /* 0x04 */ void (*main)(struct GameState*);
    /* 0x08 */ void (*destroy)(struct GameState*); // "cleanup"
    /* 0x0C */ void (*init)(struct GameState*);
    /* 0x10 */ u32 size;
    /* 0x14 */ Input input[4];
    /* 0x74 */ TwoHeadArena tha;
    /* 0x84 */ GameAlloc alloc;
    /* 0x98 */ u32 running;
    /* 0x9C */ u32 frames;
    /* 0xA0 */ u32 unk_A0;
} GameState; // size = 0xA4

typedef struct {
    /* 0x0000 */ GameState state;
    /* 0x00A4 */ void* staticSegment;
    /* 0x00A8 */ View view;
    /* 0x01D0 */ Sram sram;
    /* 0x01D4 */ u16 unk_1D4; // not used in mq dbg (some sort of timer that doesn't seem to affect anything)
    /* 0x01D6 */ s16 coverAlpha;
    /* 0x01D8 */ s16 addAlpha; // not used in mq dbg
    /* 0x01DA */ u16 visibleDuration; // not used in mq dbg
    /* 0x01DC */ s16 ult;
    /* 0x01DE */ s16 uls;
    /* 0x01E0 */ char unk_1E0[0x01];
    /* 0x01E1 */ u8 exit;
    /* 0x01E2 */ char unk_1E2[0x06];
} TitleContext; // size = 0x1E8

typedef struct {
    /* 0x0000 */ GameState state;
    /* 0x00A4 */ void* staticSegment;
    /* 0x00A8 */ View view;
} SampleContext; // size = 0x1D0

typedef struct {
    /* 0x00 */ u8 byte0;
    /* 0x01 */ u8 byte1;
    /* 0x02 */ u8 byte2;
    /* 0x03 */ u8 byte3;
} ElfMessage; // size = 0x4

// Global Context (dbg ram start: 80212020)
typedef struct GlobalContext {
    /* 0x00000 */ GameState state;
    /* 0x000A4 */ s16 sceneNum;
    /* 0x000A6 */ u8 sceneConfig;
    /* 0x000A7 */ char unk_A7[0x9];
    /* 0x000B0 */ void* sceneSegment;
    /* 0x000B4 */ char unk_B4[0x4];
    /* 0x000B8 */ View view;
    /* 0x001E0 */ Camera cameras[4];
    /* 0x00790 */ Camera* cameraPtrs[4];
    /* 0x007A0 */ s16 activeCamera;
    /* 0x007A2 */ s16 nextCamera;
    /* 0x007A4 */ SoundContext soundCtx;
    /* 0x007A8 */ LightingContext lightCtx;
    /* 0x007B8 */ SubGlobalContext7B8 sub_7B8;
    /* 0x007C0 */ CollisionContext colCtx;
    /* 0x01C24 */ ActorContext actorCtx;
    /* 0x01D64 */ CutsceneContext csCtx; // "demo_play"
    /* 0x01DB4 */ char unk_1DB4[0x1C0];
    /* 0x01F74 */ SubGlobalContext1F74 sub_1F74;
    /* 0x01F78 */ SkyboxContext skyboxCtx;
    /* 0x020C8 */ char unk_20C8[0x10];
    /* 0x020D8 */ MessageContext msgCtx; // "message"
    /* 0x104F0 */ InterfaceContext interfaceCtx; // "parameter"
    /* 0x10760 */ PauseContext pauseCtx;
    /* 0x10A20 */ u16 unk_10A20;
    /* 0x10A24 */ EnvironmentContext envCtx;
    /* 0x10B20 */ AnimationContext animationCtx;
    /* 0x117A4 */ ObjectContext objectCtx;
    /* 0x11CBC */ RoomContext roomCtx;
    /* 0x11D30 */ s16 unk_11D30[2];
    /* 0x11D34 */ u8 nbTransitionActors;
    /* 0x11D38 */ TransitionActorEntry* transitionActorList;
    /* 0x11D3C */ char unk_11D3C[0x1C];
    /* 0x11D58 */ void (*unk_11D58)(struct GlobalContext*, s32);
    /* 0x11D5C */ char unk_11D5C[0x4];
    /* 0x11D60 */ MtxF mf_11D60;
    /* 0x11DA0 */ MtxF mf_11DA0;
    /* 0x11DE0 */ Mtx* unk_11DE0;
    /* 0x11DE4 */ u32 gameplayFrames;
    /* 0x11DE8 */ u8 linkAgeOnLoad;
    /* 0x11DE9 */ u8 unk_11DE9;
    /* 0x11DEA */ u8 curSpawn;
    /* 0x11DEB */ u8 nbSetupActors;
    /* 0x11DEC */ u8 nbRooms;
    /* 0x11DF0 */ RomFile* roomList;
    /* 0x11DF4 */ ActorEntry* linkActorEntry;
    /* 0x11DF8 */ ActorEntry* setupActorList;
    /* 0x11DFC */ UNK_PTR unk_11DFC;
    /* 0x11E00 */ EntranceEntry* setupEntranceList;
    /* 0x11E04 */ UNK_PTR setupExitList;
    /* 0x11E08 */ Path* setupPathList;
    /* 0x11E0C */ ElfMessage* cUpElfMsgs;
    /* 0x11E10 */ char unk_11E10[0x4];
    /* 0x11E14 */ u8 skyboxId;
    /* 0x11E15 */ s8 sceneLoadFlag; // "fade_direction"
    /* 0x11E16 */ s16 unk_11E16;
    /* 0x11E18 */ s16 unk_11E18;
    /* 0x11E1A */ s16 nextEntranceIndex;
    /* 0x11E1C */ char unk_11E1C[0x40];
    /* 0x11E5C */ s8 unk_11E5C;
    /* 0x11E5D */ s8 bombchuBowlingAmmo; // "bombchu_game_flag"
    /* 0x11E5E */ u8 fadeTransition;
    /* 0x11E5F */ char unk_11E5F[0x1];
    /* 0x11E60 */ SubGlobalContext11E60 sub_11E60;
    /* 0x120EC */ char unk_120EC[0x38];
    /* 0x12124 */ PreRenderContext preRenderCtx;
    /* 0x121C8 */ TransitionContext transitionCtx;
    /* 0x12418 */ char unk_12418[0x3];
    /* 0x1241B */ u8 unk_1241B; // "fbdemo_wipe_modem"
    /* 0x1241C */ SubGlobalContext1241C sub_1241C;
    /* 0x12428 */ char unk_12428[0x3];
    /* 0x1242B */ u8 unk_1242B;
    /* 0x1242C */ Scene* loadedScene;
    /* 0x12430 */ char unk_12430[0xE8];
} GlobalContext; // size = 0x12518

typedef struct {
    /* 0x0000 */ GameState state;
    /* 0x00A4 */ char unk_A4[4];
    /* 0x00A8 */ View view;
} OpeningContext; // size = 0x1D0

typedef enum {
    DPM_UNK = 0,
    DPM_PLAYER = 1,
    DPM_ENEMY = 2
} DynaPolyMoveFlag;

typedef struct LoadedParticleEntry {
    /* 0x0000 */ Vec3f position;
    /* 0x000C */ Vec3f velocity;
    /* 0x0018 */ Vec3f acceleration;
    /* 0x0024 */ void(*update)(GlobalContext*, s32, struct LoadedParticleEntry*);
    /* 0x0028 */ void(*draw)(GlobalContext*, s32, struct LoadedParticleEntry*);
    /* 0x002C */ f32 unk_2C; // Probaly a Vec3f
    /* 0x0030 */ f32 unk_30;
    /* 0x0034 */ f32 unk_34;
    /* 0x0038 */ u32 unk_38;
    /* 0x003C */ u32 unk_3C;
    /* 0x0042 */ u16 unk_40[13];
    /* 0x005A */ u16 flags; // bit 0: set if this entry is not considered free on a priority tie bit 1: ? bit 2: ?
    /* 0x005C */ s16 life; // -1 means this entry is free
    /* 0x005E */ u8 priority; // Lower value means higher priority
    /* 0x005F */ u8 type;
} LoadedParticleEntry; // size = 0x60

// Some animation related structure
typedef struct {
    /* 0x00 */ AnimationHeader* animation;
    /* 0x04 */ f32              playbackSpeed;
    /* 0x08 */ f32              unk_08;
    /* 0x0C */ f32              frameCount;
    /* 0x10 */ u8               unk_10;
    /* 0x14 */ f32              transitionRate;
} struct_80034EC0_Entry; // size = 0x18

typedef struct {
    /* 0x00 */ s16 unk_00;
    /* 0x02 */ s16 unk_02;
    /* 0x04 */ s16 unk_04;
    /* 0x06 */ s16 unk_06;
    /* 0x08 */ Vec3s unk_08;
    /* 0x0E */ Vec3s unk_0E;
    /* 0x14 */ f32 unk_14;
    /* 0x18 */ Vec3f unk_18;
} struct_80034A14_arg1;

typedef struct {
    /* 0x00 */ u32 unk_00;
    /* 0x04 */ u32(*init)(GlobalContext*, u32, LoadedParticleEntry*, void*);
} ParticleOverlayInfo;

typedef struct {
    /* 0x00 */ u32 vromStart;
    /* 0x04 */ u32 vromEnd;
    /* 0x0C */ void* vramStart;
    /* 0x08 */ void* vramEnd;
    /* 0x10 */ void* loadedRamAddr;
    /* 0x14 */ ParticleOverlayInfo* overlayInfo;
    /* 0x18 */ u32 unk_18; // Always 0x01000000?
} ParticleOverlay;

typedef struct {
    /* 0x00 */ LoadedParticleEntry* data_table; // Name from debug assert
    /* 0x04 */ s32 searchIndex;
    /* 0x08 */ s32 size;
} EffectTableInfo;

typedef struct {
    /* 0x00 */ s8  scene;
    /* 0x01 */ s8  spawn;
    /* 0x02 */ u16 field;
} EntranceInfo; // size = 0x4

typedef struct {
    /* 0x00 */ void*    loadedRamAddr;
    /* 0x04 */ u32      vromStart; // if applicable
    /* 0x08 */ u32      vromEnd;   // if applicable
    /* 0x0C */ void*    vramStart; // if applicable
    /* 0x10 */ void*    vramEnd;   // if applicable
    /* 0x14 */ UNK_PTR  unk_14;
    /* 0x18 */ void*    init;    // initializes and executes the given context
    /* 0x1C */ void*    destroy; // deconstructs the context, and sets the next context to load
    /* 0x20 */ UNK_PTR  unk_20;
    /* 0x24 */ UNK_PTR  unk_24;
    /* 0x28 */ UNK_TYPE unk_28;
    /* 0x2C */ u32      instanceSize;
} GameStateOverlay; // size = 0x30

typedef struct PreNMIContext {
    /* 0x00 */ GameState state;
    /* 0xA4 */ u32      timer;
    /* 0xA8 */ UNK_TYPE unk_A8;
} PreNMIContext; // size = 0xAC

typedef struct {
    /* 0x00 */ s8 chestFlag; // chest icon is only displayed if this flag is not set for the current room
    /* 0x01 */ u8 x, y; // coordinates to place the icon (top-left corner), relative to the minimap texture
} MapMarkPoint; // size = 0x3

typedef struct {
    /* 0x00 */ s8 markType; // 0 for the chest icon, 1 for the boss skull icon, -1 for none
    /* 0x01 */ u8 count; // number of icons to display
    /* 0x02 */ MapMarkPoint points[12];
} MapMarkData; // size = 0x26

typedef MapMarkData MapMarksData[3]; // size = 0x72

typedef struct DebugDispObject {
    /* 0x00 */ Vec3f pos;
    /* 0x0C */ Vec3s rot;
    /* 0x14 */ Vec3f scale;
    /* 0x20 */ Color_RGBA8 color;
    /* 0x24 */ s16   type;
    /* 0x28 */ struct DebugDispObject* next;
} DebugDispObject; // size = 0x2C

typedef enum {
    MTXMODE_NEW,  // generates a new matrix
    MTXMODE_APPLY // applies transformation to the current matrix
} MatrixMode;

typedef struct FaultClient {
    /* 0x00 */ struct FaultClient* next;
    /* 0x04 */ u32 callback;
    /* 0x08 */ u32 param1;
    /* 0x0C */ u32 param2;
} FaultClient; // size = 0x10

typedef struct FaultAddrConvClient {
    /* 0x00 */ struct FaultAddrConvClient* next;
    /* 0x04 */ u32 callback;
    /* 0x08 */ u32 param;
} FaultAddrConvClient; // size = 0xC


typedef struct {
    /* 0x00 */ u32 (*callback)(u32, u32);
    /* 0x04 */ u32 param0;
    /* 0x08 */ u32 param1;
    /* 0x0C */ u32 ret;
    /* 0x10 */ OSMesgQueue* queue;
    /* 0x14 */ OSMesg msg;
} FaultClientContext; // size = 0x18

typedef struct FaultThreadStruct {
    /* 0x000 */ OSThread thread;
    /* 0x1B0 */ u8 unk_1B0[0x600];
    /* 0x7B0 */ OSMesgQueue queue;
    /* 0x7C8 */ OSMesg msg;
    /* 0x7CC */ u8 exitDebugger;
    /* 0x7CD */ u8 msgId;
    /* 0x7CE */ u8 faultHandlerEnabled;
    /* 0x7CF */ u8 faultActive;
    /* 0x7D0 */ OSThread* faultedThread;
    /* 0x7D4 */ void(*padCallback)(Input*);
    /* 0x7D8 */ FaultClient* clients;
    /* 0x7DC */ FaultAddrConvClient* addrConvClients;
    /* 0x7E0 */ u8 unk_7E0[4];
    /* 0x7E4 */ Input padInput;
    /* 0x7FC */ u16 colors[36];
    /* 0x844 */ void* fb;
    /* 0x848 */ u32 currClientThreadSp;
    /* 0x84C */ u8 unk_84C[4];
} FaultThreadStruct; // size = 0x850

typedef struct {
    /* 0x00 */ u16* fb;
    /* 0x04 */ u16 w;
    /* 0x08 */ u16 h;
    /* 0x0A */ u16 yStart;
    /* 0x0C */ u16 yEnd;
    /* 0x0E */ u16 xStart;
    /* 0x10 */ u16 xEnd;
    /* 0x12 */ u16 foreColor;
    /* 0x14 */ u16 backColor;
    /* 0x14 */ u16 cursorX;
    /* 0x16 */ u16 cursorY;
    /* 0x18 */ u32* fontData;
    /* 0x1C */ u8 charW;
    /* 0x1D */ u8 charH;
    /* 0x1E */ s8 charWPad;
    /* 0x1F */ s8 charHPad;
    /* 0x20 */ u16 printColors[10];
    /* 0x34 */ u8 escCode; // bool
    /* 0x35 */ u8 osSyncPrintfEnabled;
    /* 0x38 */ void(*inputCallback)();
} FaultDrawer; // size = 0x3C

typedef struct GfxPrint {
    /* 0x00 */ struct GfxPrint*(*callback)(struct GfxPrint*, const char*, size_t);
    /* 0x04 */ Gfx* dlist;
    /* 0x08 */ u16 posX;
    /* 0x0A */ u16 posY;
    /* 0x0C */ u16 baseX;
    /* 0x0E */ u8 baseY;
    /* 0x0F */ u8 flag;
    /* 0x10 */ Color_RGBA8 color;
} GfxPrint;

typedef enum {
    GFXPRINT_FLAG1 = 1,
    GFXPRINT_USE_RGBA16 = 2,
    GFXPRINT_FLAG4 = 4,
    GFXPRINT_UPDATE_MODE = 8,
    GFXPRINT_FLAG64 = 0x40,
    GFXPRINT_OPEN = 0x80
} GfxPrintFlag;

typedef struct StackEntry {
    /* 0x00 */ struct StackEntry* next;
    /* 0x04 */ struct StackEntry* prev;
    /* 0x08 */ u32 head;
    /* 0x0C */ u32 tail;
    /* 0x10 */ u32 initValue;
    /* 0x14 */ s32 minSpace;
    /* 0x18 */ const char* name;
} StackEntry;

typedef enum {
    STACK_STATUS_OK = 0,
    STACK_STATUS_WARNING = 1,
    STACK_STATUS_OVERFLOW = 2
} StackStatus;

typedef struct {
    /* 0x00 */ u32 magic; // IS64
    /* 0x04 */ u32 get;
    /* 0x08 */ u8 unk_08[0x14-0x08];
    /* 0x14 */ u32 put;
    /* 0x18 */ u8 unk_18[0x20-0x18];
    /* 0x20 */ u8 data[0x10000-0x20];
} ISVDbg;

typedef struct {
    /* 0x00 */ char name[0x18];
    /* 0x18 */ u32 mediaFormat;
    /* 0x1C */ union {
        struct {
            u16 cartId;
            u8 countryCode;
            u8 version;
        };
        u32 regionInfo;
    };
} LocaleCartInfo; // size = 0x20

typedef struct {
    /* 0x00 */ char magic[4]; // Yaz0
    /* 0x04 */ u32 decSize;
    /* 0x08 */ u32 compInfoOffset; // only used in yaz0_old.c
    /* 0x0C */ u32 uncompDataOffset; // only used in yaz0_old.c
    /* 0x10 */ u32 data[1];
} Yaz0Header; // size = 0x10 ("data" is not part of the header)

#define OS_SC_RETRACE_MSG       1
#define OS_SC_DONE_MSG          2
#define OS_SC_NMI_MSG           3 // name is made up, 3 is OS_SC_RDP_DONE_MSG in the original sched.c
#define OS_SC_PRE_NMI_MSG       4

typedef struct {
    /* 0x00 */ s16 type;
    /* 0x02 */ char  misc[0x1E];
} OSScMsg; // size = 0x20

typedef struct IrqMgrClient {
    /* 0x00 */ struct IrqMgrClient* prev;
    /* 0x04 */ OSMesgQueue* queue;
} IrqMgrClient;

typedef struct {
    /* 0x000 */ OSScMsg retraceMsg; // this apparently got moved from OSSched
    /* 0x020 */ OSScMsg prenmiMsg; // this apparently got moved from OSSched
    /* 0x040 */ OSScMsg nmiMsg;
    /* 0x060 */ OSMesgQueue queue;
    /* 0x078 */ OSMesg msgBuf[8];
    /* 0x098 */ OSThread thread;
    /* 0x248 */ IrqMgrClient* clients;
    /* 0x24C */ u8 resetStatus;
    /* 0x250 */ OSTime resetTime;
    /* 0x258 */ OSTimer timer;
    /* 0x278 */ OSTime retraceTime;
} IrqMgr; // size = 0x280

struct ArenaNode;

typedef struct Arena {
    /* 0x00 */ struct ArenaNode* head;
    /* 0x04 */ void* start;
    /* 0x08 */ OSMesgQueue lock;
    /* 0x20 */ u8 unk_20;
    /* 0x21 */ u8 isInit;
    /* 0x22 */ u8 flag;
} Arena; // size = 0x24

typedef struct ArenaNode {
    /* 0x00 */ s16 magic;
    /* 0x02 */ s16 isFree;
    /* 0x04 */ u32 size;
    /* 0x08 */ struct ArenaNode* next;
    /* 0x0C */ struct ArenaNode* prev;
    /* 0x10 */ const char* filename;
    /* 0x14 */ s32 line;
    /* 0x18 */ OSId threadId;
    /* 0x1C */ Arena* arena;
    /* 0x20 */ OSTime time;
    /* 0x28 */ u8 unk_28[0x30-0x28]; // probably padding
} ArenaNode; // size = 0x30

typedef struct OverlayRelocationSection {
    /* 0x00 */ u32 textSize;
    /* 0x04 */ u32 dataSize;
    /* 0x08 */ u32 rodataSize;
    /* 0x0C */ u32 bssSize;
    /* 0x10 */ u32 nRelocations;
    /* 0x14 */ u32 relocations[1];
} OverlayRelocationSection; // size >= 0x18

typedef struct {
    /* 0x00 */ void* loadedRamAddr;
    /* 0x04 */ u32 vromStart;
    /* 0x08 */ u32 vromEnd;
    /* 0x0C */ u8* vramStart;
    /* 0x10 */ u8* vramEnd;
    /* 0x14 */ u32 off; // loadedRamAddr - vram
    /* 0x18 */ const char* name;
} KaleidoManagerOvl; // size = 0x1C

#define KALEIDO_OVL_KALEIDO_SCOPE   0
#define KALEIDO_OVL_PLAYER_ACTOR    1
#define KALEIDO_OVL_COUNT           2

typedef struct ListAlloc {
    /* 0x00 */ struct ListAlloc* prev;
    /* 0x04 */ struct ListAlloc* next;
} ListAlloc; // size = 0x8

typedef struct {
    /* 0x00 */ u32 resetting;
    /* 0x04 */ u32 resetCount;
    /* 0x08 */ OSTime duration;
    /* 0x10 */ OSTime resetTime;
} PreNmiBuff; // size = 0x18 (actually osAppNmiBuffer is 0x40 bytes large but the rest is unused)

typedef struct {
    /* 0x00 */ s16 unk_00;
    /* 0x02 */ s16 unk_02;
    /* 0x04 */ s16 unk_04;
} SubQuakeRequest14;

typedef struct {
    /* 0x00 */ s16 randIdx;
    /* 0x02 */ s16 countdownMax;
    /* 0x04 */ Camera* cam;
    /* 0x08 */ u32 callbackIdx;
    /* 0x0C */ s16 y;
    /* 0x0E */ s16 x;
    /* 0x10 */ s16 zoom;
    /* 0x12 */ s16 rotZ;
    /* 0x14 */ SubQuakeRequest14 unk_14;
    /* 0x1A */ s16 speed;
    /* 0x1C */ s16 unk_1C;
    /* 0x1E */ s16 countdown;
    /* 0x20 */ s16 camPtrIdx;
} QuakeRequest; // size = 0x24

typedef struct {
    /* 0x00 */ Vec3f vec1;
    /* 0x0C */ Vec3f vec2;
    /* 0x18 */ s16 rotZ;
    /* 0x1A */ s16 unk_1A;
    /* 0x1C */ s16 zoom;
} ShakeInfo; // size = 0x1E

typedef struct {
    /* 0x00 */ Vec3f vec1;
    /* 0x0C */ Vec3f vec2;
    /* 0x18 */ s16 rotZ;
    /* 0x1A */ s16 unk_1A;
    /* 0x1C */ s16 zoom;
    /* 0x20 */ f32 unk_20;
} UnkQuakeCalcStruct; // size = 0x24

typedef struct {
    /* 0x00 */ u32 idx;
    /* 0x04 */ void* ptr;
} UCodeInfo; // size = 0x8

typedef struct {
    /* 0x00 */ u32 segments[NUM_SEGMENTS];
    /* 0x40 */ u32 dlStack[18];
    /* 0x88 */ u32 dlDepth;
    /* 0x8C */ u32 dlCnt;
    /* 0x90 */ u32 vtxCnt;
    /* 0x94 */ u32 spvtxCnt;
    /* 0x98 */ u32 tri1Cnt;
    /* 0x9C */ u32 tri2Cnt;
    /* 0xA0 */ u32 quadCnt;
    /* 0xA4 */ u32 lineCnt;
    /* 0xA8 */ u32 loaducodeCnt;
    /* 0xAC */ u32 pipeSyncRequired;
    /* 0xB0 */ u32 tileSyncRequired;
    /* 0xB4 */ u32 loadSyncRequired;
    /* 0xB8 */ u32 syncErr;
    /* 0xBC */ u32 enableLog;
    /* 0xC0 */ u32 ucodeInfoIdx;
    /* 0xC4 */ u32 ucodeInfoCount;
    /* 0xC8 */ UCodeInfo* ucodeInfo;
    /* 0xCC */ u32 modeH;
    /* 0xD0 */ u32 modeL;
    /* 0xD4 */ u32 geometryMode;
} UCodeDisas; // size = 0xD8

typedef struct {
    /* 0x00 */ u16* fb1;
    /* 0x04 */ u16* swapbuffer;
    /* 0x08 */ OSViMode* viMode;
    /* 0x0C */ u32 features;
    /* 0x10 */ u8 unk_10;
    /* 0x11 */ u8 updateRate;
    /* 0x12 */ u8 updateRate2;
    /* 0x13 */ u8 unk_13;
    /* 0x14 */ f32 xScale;
    /* 0x18 */ f32 yScale;
} CfbInfo; // size = 0x1C

typedef struct {
    /* 0x00 */ u16 table[8*8];
} JpegQuantizationTable; // size = 0x80

typedef struct {
    /* 0x00 */ u8 codeOffs[16];
    /* 0x10 */ u16 codesA[16];
    /* 0x30 */ u16 codesB[16];
    /* 0x50 */ u8* symbols;
} JpegHuffmanTable; // size = 0x54

// this struct might be unaccurate but it's not used outside jpegutils.c anyways
typedef struct {
    /* 0x000 */ u8 codeOffs[16];
    /* 0x010 */ u16 dcCodes[120];
    /* 0x100 */ u16 acCodes[256]; 
} JpegHuffmanTableOld; // size = 0x300

typedef struct {
    /* 0x00 */ u32 unk_00;
    /* 0x04 */ u32 unk_04;
    /* 0x08 */ u32 unk_08;
    /* 0x0C */ u32 qTablePtrs[3];
    /* 0x18 */ char unk_18[0x8];
} JpegTaskData; // size = 0x20

typedef struct {
    /* 0x000 */ JpegTaskData taskData;
    /* 0x020 */ char yieldData[0x200];
    /* 0x220 */ JpegQuantizationTable qTables[3];
    /* 0x3A0 */ u8 codesLengths[0x110];
    /* 0x4B0 */ u16 codes[0x108];
    /* 0x6C0 */ u16 unk_6C0[4][0x180];
} JpegWork; // size = 0x12C0

typedef struct {
    /* 0x00 */ void* imageData;
    /* 0x04 */ u8 unk_04;
    /* 0x05 */ u8 unk_05;
    /* 0x08 */ JpegHuffmanTable* hTablePtrs[4];
    /* 0x18 */ u8 unk_18;
} JpegDecoder; // size = 0x1C

typedef struct {
    /* 0x00 */ u8 dqtCount;
    /* 0x04 */ u8* dqtPtr[3];
    /* 0x10 */ u8 dhtCount;
    /* 0x14 */ u8* dhtPtr[4];
    /* 0x24 */ void* imageData;
    /* 0x28 */ u32 unk_28; // 0 if Y V0 is 0 and 2 if Y V0 is 2
    /* 0x2C */ char unk_2C[4];
    /* 0x30 */ OSScTask scTask;
    /* 0x88 */ char unk_88[0x10];
    /* 0x98 */ OSMesgQueue mq;
    /* 0xB0 */ OSMesg msg;
    /* 0xB4 */ JpegWork* workBuf;
} JpegContext; // size = 0xB8

typedef struct {
    /* 0x00 */ char unk_00[0x08];
    /* 0x08 */ Color_RGBA8 color;
    /* 0x0C */ char unk_0C[0x0C];
} VisMonoStruct; // size = 0x18

typedef struct {
    /* 0x000 */ u8 rumbleEnable[4];
    /* 0x004 */ u8 unk_04[0x40];
    /* 0x044 */ u8 unk_44[0x40];
    /* 0x084 */ u8 unk_84[0x40];
    /* 0x0C4 */ u8 unk_C4[0x40];
    /* 0x104 */ u8 unk_104;
    /* 0x105 */ u8 unk_105;
    /* 0x106 */ u16 unk_106;
    /* 0x108 */ u16 unk_108;
    /* 0x10A */ u8 unk_10A;
    /* 0x10B */ u8 unk_10B;
    /* 0x10C */ u8 unk_10C;
    /* 0x10D */ u8 unk_10D;
} UnkRumbleStruct; // size = 0x10E

#endif
