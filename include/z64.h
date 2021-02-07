#ifndef _Z64_H_
#define _Z64_H_

#include "ultra64.h"
#include "ultra64/gs2dex.h"
#include "z64save.h"
#include "z64light.h"
#include "z64bgcheck.h"
#include "z64actor.h"
#include "z64player.h"
#include "z64audio.h"
#include "z64object.h"
#include "z64camera.h"
#include "z64cutscene.h"
#include "z64collision_check.h"
#include "z64scene.h"
#include "z64effect.h"
#include "z64item.h"
#include "z64animation.h"
#include "z64dma.h"
#include "z64math.h"
#include "z64transition.h"
#include "bgm.h"
#include "sfx.h"
#include "color.h"
#include "ichain.h"
#include "stdarg.h"
#include "stdlib.h"
#include "regs.h"

#define SCREEN_WIDTH  320
#define SCREEN_HEIGHT 240

#define REGION_NULL 0
#define REGION_US 1
#define REGION_JP 2
#define REGION_EU 3

#define Z_PRIORITY_MAIN        10
#define Z_PRIORITY_GRAPH       11
#define Z_PRIORITY_AUDIOMGR    12
#define Z_PRIORITY_PADMGR      14
#define Z_PRIORITY_SCHED       15
#define Z_PRIORITY_DMAMGR      16
#define Z_PRIORITY_IRQMGR      17

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
    /* 0x14 */ s16  data[REG_GROUPS * REG_PER_GROUP]; // 0xAE0 entries
} GameInfo; // size = 0x15D4

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
    /* 0x0004 */ void*  bufp;
    /* 0x0008 */ void*  head;
    /* 0x000C */ void*  tail;
} TwoHeadArena; // size = 0x10

typedef struct {
    /* 0x0000 */ u32    size;
    /* 0x0004 */ Gfx*   bufp;
    /* 0x0008 */ Gfx*   p;
    /* 0x000C */ Gfx*   d;
} TwoHeadGfxArena; // size = 0x10

typedef struct {
    /* 0x00 */ u16* fb1;
    /* 0x04 */ u16* swapBuffer;
    /* 0x08 */ OSViMode* viMode;
    /* 0x0C */ u32 features;
    /* 0x10 */ u8 unk_10;
    /* 0x11 */ s8 updateRate;
    /* 0x12 */ s8 updateRate2;
    /* 0x13 */ u8 unk_13;
    /* 0x14 */ f32 xScale;
    /* 0x18 */ f32 yScale;
} CfbInfo; // size = 0x1C

typedef struct OSScTask {
    /* 0x00 */ struct OSScTask* next;
    /* 0x04 */ u32 state;
    /* 0x08 */ u32 flags;
    /* 0x0C */ CfbInfo* framebuffer;
    /* 0x10 */ OSTask list;
    /* 0x50 */ OSMesgQueue* msgQ;
    /* 0x54 */ OSMesg msg;
} OSScTask;

typedef struct GraphicsContext {
    /* 0x0000 */ Gfx* polyOpaBuffer; // Pointer to "Zelda 0"
    /* 0x0004 */ Gfx* polyXluBuffer; // Pointer to "Zelda 1"
    /* 0x0008 */ char unk_008[0x08]; // Unused, could this be pointers to "Zelda 2" / "Zelda 3"
    /* 0x0010 */ Gfx* overlayBuffer; // Pointer to "Zelda 4"
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
    /* 0x0288 */ char unk_0288[0x20]; // Unused, could this be Zelda 2/3 ?
    /* 0x02A8 */ TwoHeadGfxArena    overlay; // "Zelda 4"
    /* 0x02B8 */ TwoHeadGfxArena    polyOpa; // "Zelda 0"
    /* 0x02C8 */ TwoHeadGfxArena    polyXlu; // "Zelda 1"
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
    /* 0x00 */ OSContPad cur;
    /* 0x06 */ OSContPad prev;
    /* 0x0C */ OSContPad press; // X/Y store delta from last frame
    /* 0x12 */ OSContPad rel; // X/Y store adjusted
} Input; // size = 0x18

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
    /* 0x001C */ f32    zNear; // distance to near clipping plane
    /* 0x0020 */ f32    zFar;  // distance to far clipping plane
    /* 0x0024 */ f32    scale; // scale for matrix elements
    /* 0x0028 */ Vec3f  eye;
    /* 0x0034 */ Vec3f  lookAt;
    /* 0x0040 */ Vec3f  up;
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
    /* 0x0120 */ s32    flags;
    /* 0x0124 */ s32    unk_124;
} View; // size = 0x128

typedef struct {
    /* 0x00 */ u8   seqIndex;
    /* 0x01 */ u8   nightSeqIndex;
    /* 0x02 */ char unk_02[0x2];
} SoundContext; // size = 0x4

typedef struct {
    /* 0x00 */ u32 toggle;
    /* 0x04 */ s32 counter;
} SubGlobalContext7B8; // size = 0x8

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
    /* 0x4A */ u8       activeCategory;
    /* 0x4B */ u8       unk_4B;
    /* 0x4C */ s8       unk_4C;
    /* 0x4D */ char     unk_4D[0x03];
    /* 0x50 */ TargetContextEntry arr_50[3];
    /* 0x8C */ Actor*   unk_8C;
    /* 0x90 */ Actor*   unk_90;
    /* 0x94 */ Actor*   unk_94;
} TargetContext; // size = 0x98

typedef struct {
    /* 0x00 */ u8*      texture;
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
    /* 0x00 */ s32    length; // number of actors loaded of this category
    /* 0x04 */ Actor* head; // pointer to head of the linked list of this category (most recent actor added)
} ActorListEntry; // size = 0x08

typedef struct {
    /* 0x0000 */ u8     unk_00;
    /* 0x0001 */ char   unk_01[0x01];
    /* 0x0002 */ u8     unk_02;
    /* 0x0003 */ u8     unk_03;
    /* 0x0004 */ char   unk_04[0x04];
    /* 0x0008 */ u8     total; // total number of actors loaded
    /* 0x0009 */ char   unk_09[0x03];
    /* 0x000C */ ActorListEntry actorLists[12];
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
    /* 0x28 */ CsCmdActorAction* npcActions[10]; // "npcdemopnt"
} CutsceneContext; // size = 0x50

typedef struct {
    /* 0x00 */ u16 countdown;
    /* 0x04 */ Vec3f originPos;
    /* 0x10 */ Vec3f relativePos;
} SoundSource; // size = 0x1C

typedef struct {
    /* 0x000 */ char unk_00[0x128];
    /* 0x128 */ void* staticSegments[3];
    /* 0x134 */ Gfx* dpList;
    /* 0x138 */ Gfx* unk_138;
    /* 0x13C */ void* roomVtx;
    /* 0x140 */ s16  unk_140;
    /* 0x144 */ Vec3f rot;
} SkyboxContext; // size = 0x150

typedef enum {
    MESSAGE_ICON_TRIANGLE,
    MESSAGE_ICON_SQUARE,
    MESSAGE_ICON_ARROW
} MessageBoxIcon;

#define FONT_CHAR_TEX_SIZE 128 // 16x16 I4 texture

typedef struct {
    /* 0x0000 */ u32   msgOffset;
    /* 0x0004 */ u32   msgLength;
    /* 0x0008 */ char  unk_8[0x3C00];
    /* 0x3C08 */ u8    iconBuf[FONT_CHAR_TEX_SIZE];
    /* 0x3C88 */ u8    fontBuf[FONT_CHAR_TEX_SIZE * 320]; // size possibly unconfirmed
    /* 0xDC88 */ char  msgBuf[1064]; // size unconfirmed
    /* 0xE0B0 */ char  unk_E0B0[0xD8];
} Font; // size = 0xE188

typedef struct {
    /* 0x0000 */ View   view;
    /* 0x0128 */ Font   font;
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
    /* 0xE3E6 */ char   unk_E3E6[0x01];
    /* 0xE3E7 */ u8     unk_E3E7;
    /* 0xE3E8 */ char   unk_E3E8[0x04];
    /* 0xE3EC */ u16    unk_E3EC;
    /* 0xE3EE */ u16    unk_E3EE;
    /* 0xE3F0 */ u16    unk_E3F0;
    /* 0xE3F2 */ u16    unk_E3F2;
    /* 0xE3F4 */ u16    unk_E3F4;
    /* 0xE3F6 */ char   unk_E3F6[0x16];
    /* 0xE40C */ u16    unk_E40C;
    /* 0xE40E */ s16    unk_E40E;
    /* 0xE410 */ u8     unk_E410;
    /* 0xE411 */ char   unk_E411[0x07];
} MessageContext; // size = 0xE418

typedef struct {
    /* 0x0000 */ View   view;
    /* 0x0128 */ Vtx*   vtx_128;
    /* 0x012C */ Vtx*   vtx_12C;
    /* 0x0130 */ void*  parameterSegment;
    /* 0x0134 */ void*  do_actionSegment;
    /* 0x0138 */ void*  icon_itemSegment;
    /* 0x013C */ void*  mapSegment;
    /* 0x0140 */ u8     unk_140[32];
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
    /* 0x0202 */ s16    beatingHeartPrim[3];
    /* 0x0208 */ s16    beatingHeartEnv[3];
    /* 0x020E */ s16    heartsPrimR[2];
    /* 0x0212 */ s16    heartsPrimG[2];
    /* 0x0216 */ s16    heartsPrimB[2];
    /* 0x021A */ s16    heartsEnvR[2];
    /* 0x021E */ s16    heartsEnvG[2];
    /* 0x0222 */ s16    heartsEnvB[2];
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
    /* 0x0258 */ s16    unk_258;
    /* 0x025A */ s16    unk_25A;
    /* 0x025C */ s16    mapRoomNum;
    /* 0x025E */ s16    mapPaletteNum; // "map_palete_no"
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
    /* 0x012C */ void*  unk_12C;
    /* 0x0130 */ void*  unk_130;
    /* 0x0134 */ void*  unk_134;
    /* 0x0138 */ void*  unk_138;
    /* 0x013C */ void*  unk_13C;
    /* 0x0140 */ char   unk_140[0x028];
    /* 0x0168 */ Vtx*   vtx_168;
    /* 0x016C */ char   unk_16C[0x068];
    /* 0x01D4 */ u16    state;
    /* 0x01D6 */ u16    flag;
    /* 0x01D8 */ Vec3f  eye;
    /* 0x01E4 */ u16    unk_1E4;
    /* 0x01E6 */ u16    mode;
    /* 0x01E8 */ u16    kscpPos; // "kscp_pos"; basically the page index (0=SELECT ITEM; 1=MAP; 2=QUEST STATUS; 3=EQUIPMENT)
    /* 0x01EA */ u16    unk_1EA;
    /* 0x01EC */ u16    unk_1EC;
    /* 0x01EE */ char   unk_1EE[0x2];
    /* 0x01F0 */ f32    unk_1F0;
    /* 0x01F4 */ f32    unk_1F4;
    /* 0x01F8 */ f32    unk_1F8;
    /* 0x01FC */ f32    unk_1FC;
    /* 0x0200 */ f32    unk_200;
    /* 0x0204 */ f32    unk_204;
    /* 0x0208 */ s16    unk_208;
    /* 0x020A */ char   unk_20A[0xA];
    /* 0x0214 */ s16    inputX;
    /* 0x0216 */ s16    inputY;
    /* 0x0218 */ s16    unk_218;
    /* 0x021A */ s16    unk_21A;
    /* 0x021C */ s16    unk_21C;
    /* 0x021E */ s16    unk_21E;
    /* 0x0220 */ s16    unk_220;
    /* 0x0222 */ s16    unk_222;
    /* 0x0224 */ s16    unk_224;
    /* 0x0226 */ s16    unk_226;
    /* 0x0228 */ s16    unk_228;
    /* 0x022A */ s16    unk_22A;
    /* 0x022C */ s16    unk_22C;
    /* 0x022E */ s16    unk_22E;
    /* 0x0230 */ s16    unk_230;
    /* 0x0232 */ s16    unk_232;
    /* 0x0234 */ s16    unk_234;
    /* 0x0236 */ s16    unk_236;
    /* 0x0238 */ s16    unk_238;
    /* 0x023A */ s16    unk_23A;
    /* 0x023C */ s16    unk_23C;
    /* 0x023E */ u16    unk_23E;
    /* 0x0240 */ s16    unk_240;
    /* 0x0242 */ u16    unk_242;
    /* 0x0244 */ s16    unk_244;
    /* 0x0246 */ s16    unk_246;
    /* 0x0248 */ s16    unk_248;
    /* 0x024A */ s16    unk_24A;
    /* 0x024C */ s16    unk_24C;
    /* 0x024E */ s16    unk_24E;
    /* 0x0250 */ s16    unk_250;
    /* 0x0252 */ s16    unk_252;
    /* 0x0254 */ s16    unk_254;
    /* 0x0256 */ s16    unk_256;
    /* 0x0258 */ s16    unk_258;
    /* 0x025A */ s16    unk_25A;
    /* 0x025C */ s16    unk_25C;
    /* 0x025E */ s16    unk_25E;
    /* 0x0260 */ s16    unk_260;
    /* 0x0262 */ s16    unk_262;
    /* 0x0264 */ s16    unk_264;
    /* 0x0266 */ s16    unk_266;
    /* 0x0268 */ char   unk_268[0x58];
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
    /* 0x8C */ s16      unk_8C[3][3];
    /* 0x9E */ s16      unk_9E;
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
    /* 0xC0 */ char     unk_C0[0x0F];
    /* 0xCF */ u8       unk_CF[3];
    /* 0xD2 */ s16      unk_D2;
    /* 0xD4 */ char     unk_D4[0x02];
    /* 0xD6 */ s16      unk_D6;
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
} ObjectContext; // size = 0x518

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
    /* 0x000 */ s16 colATCount;
    /* 0x002 */ u16 sacFlags;
    /* 0x004 */ Collider* colAT[COLLISION_CHECK_AT_MAX];
    /* 0x0CC */ s32 colACCount;
    /* 0x0D0 */ Collider* colAC[COLLISION_CHECK_AC_MAX];
    /* 0x1C0 */ s32 colOCCount;
    /* 0x1C4 */ Collider* colOC[COLLISION_CHECK_OC_MAX];
    /* 0x28C */ s32 colLineCount;
    /* 0x290 */ OcLine* colLine[COLLISION_CHECK_OC_LINE_MAX];
} CollisionCheckContext; // size = 0x29C

typedef struct ListAlloc {
    /* 0x00 */ struct ListAlloc* prev;
    /* 0x04 */ struct ListAlloc* next;
} ListAlloc; // size = 0x8

typedef struct {
    /* 0x00 */ s32 width;
    /* 0x04 */ s32 height;
    /* 0x08 */ s32 widthSave;
    /* 0x0C */ s32 heightSave;
    /* 0x10 */ u16* fbuf;
    /* 0x14 */ u16* fbufSave;
    /* 0x18 */ u8* cvgSave;
    /* 0x1C */ u16* zbuf;
    /* 0x20 */ u16* zbufSave;
    /* 0x24 */ s32 ulxSave;
    /* 0x28 */ s32 ulySave;
    /* 0x2C */ s32 lrxSave;
    /* 0x30 */ s32 lrySave;
    /* 0x34 */ s32 ulx;
    /* 0x38 */ s32 uly;
    /* 0x3C */ s32 lrx;
    /* 0x40 */ s32 lry;
    /* 0x44 */ ListAlloc alloc;
    /* 0x4C */ u32 unk_4C;
} PreRenderContext; // size = 0x50

typedef struct {
    union {
        TransitionFade fade;
        TransitionCircle circle;
        TransitionTriforce triforce;
        TransitionWipe wipe;
        char data[0x228];
    };
    /* 0x228 */ s32    transitionType;
    /* 0x22C */ void* (*init)(void* transition);
    /* 0x230 */ void  (*destroy)(void* transition);
    /* 0x234 */ void  (*update)(void* transition, s32 updateRate);
    /* 0x238 */ void  (*draw)(void* transition, Gfx** gfxP);
    /* 0x23C */ void  (*start)(void* transition);
    /* 0x240 */ void  (*setType)(void* transition, s32 type);
    /* 0x244 */ void  (*setColor)(void* transition, u32 color);
    /* 0x248 */ void  (*setEnvColor)(void* transition, u32 color);
    /* 0x24C */ s32   (*isDone)(void* transition);
} TransitionContext; // size = 0x250

typedef struct {
    /* 0x00 */ s16   id;
    /* 0x02 */ Vec3s pos;
    /* 0x08 */ Vec3s rot;
    /* 0x0E */ s16   params;
} ActorEntry; // size = 0x10

typedef struct {
    struct {
        s8 room;    // Room to switch to
        s8 effects; // How the camera reacts during the transition
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
    /* 0x00 */ u8* readBuff;
} SramContext; // size = 0x4

#define SRAM_SIZE 0x8000

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

struct GameState;

typedef void (*GameStateFunc)(struct GameState* gameState);

typedef struct GameState {
    /* 0x00 */ GraphicsContext* gfxCtx;
    /* 0x04 */ GameStateFunc main;
    /* 0x08 */ GameStateFunc destroy; // "cleanup"
    /* 0x0C */ GameStateFunc init;
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
    /* 0x01D0 */ SramContext sramCtx;
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

struct SelectContext;

typedef struct {
    /* 0x00 */ char* name;
    /* 0x04 */ void (*loadFunc)(struct SelectContext*, s32);
    /* 0x08 */ s32 entranceIndex;
} SceneSelectEntry; // size = 0xC

typedef struct SelectContext {
    /* 0x0000 */ GameState state;
    /* 0x00A8 */ View view;
    /* 0x01D0 */ s32 count;
    /* 0x01D4 */ SceneSelectEntry* scenes;
    /* 0x01D8 */ s32 currentScene;
    /* 0x01DC */ s32 unk_1DC;
    /* 0x01E0 */ s32 unk_1E0[7];
    /* 0x01FC */ s32 unk_1FC;
    /* 0x0200 */ s32 unk_200;
    /* 0x0204 */ s32 unk_204;
    /* 0x0208 */ s32 opt;
    /* 0x020C */ s32 unk_20C;
    /* 0x0210 */ s32 unk_210;
    /* 0x0214 */ s32 unk_214;
    /* 0x0218 */ s32 unk_218;
    /* 0x021C */ s32 unk_21C;
    /* 0x0220 */ s32 unk_220;
    /* 0x0224 */ s32 unk_224;
    /* 0x0228 */ s32 unk_228;
    /* 0x022C */ s32 unk_22C;
    /* 0x0230 */ s32 unk_230;
    /* 0x0234 */ s32 unk_234;
    /* 0x0238 */ void* staticSegment;
    /* 0x023C */ s32 unk_23C;
} SelectContext; // size = 0x240

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
    /* 0x000B8 */ View view;
    /* 0x001E0 */ Camera mainCamera;
    /* 0x001E0 */ Camera subCameras[3];
    /* 0x00790 */ Camera* cameraPtrs[4];
    /* 0x007A0 */ s16 activeCamera;
    /* 0x007A2 */ s16 nextCamera;
    /* 0x007A4 */ SoundContext soundCtx;
    /* 0x007A8 */ LightContext lightCtx;
    /* 0x007B8 */ SubGlobalContext7B8 sub_7B8;
    /* 0x007C0 */ CollisionContext colCtx;
    /* 0x01C24 */ ActorContext actorCtx;
    /* 0x01D64 */ CutsceneContext csCtx; // "demo_play"
    /* 0x01DB4 */ SoundSource soundSources[16];
    /* 0x01F74 */ SramContext sramCtx;
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
    /* 0x11D3C */ void (*playerInit)(Player* player, struct GlobalContext* globalCtx, FlexSkeletonHeader* skelHeader);
    /* 0x11D40 */ void (*playerUpdate)(Player* player, struct GlobalContext* globalCtx, Input* input);
    /* 0x11D44 */ s32 (*isPlayerDroppingFish)(struct GlobalContext* globalCtx);
    /* 0x11D48 */ s32 (*startPlayerFishing)(struct GlobalContext* globalCtx);
    /* 0x11D4C */ s32 (*grabPlayer)(struct GlobalContext* globalCtx, Player* player);
    /* 0x11D50 */ s32 (*startPlayerCutscene)(struct GlobalContext* globalCtx, Actor* actor, s32 mode);
    /* 0x11D54 */ void (*func_11D54)(Player* player, struct GlobalContext* globalCtx);
    /* 0x11D58 */ s32 (*damagePlayer)(struct GlobalContext* globalCtx, s32 damage);
    /* 0x11D5C */ void (*talkWithPlayer)(struct GlobalContext* globalCtx, Actor* actor);
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
    /* 0x11E04 */ s16* setupExitList;
    /* 0x11E08 */ Path* setupPathList;
    /* 0x11E0C */ ElfMessage* cUpElfMsgs;
    /* 0x11E10 */ char unk_11E10[0x4];
    /* 0x11E14 */ u8 skyboxId;
    /* 0x11E15 */ s8 sceneLoadFlag; // "fade_direction"
    /* 0x11E16 */ s16 unk_11E16;
    /* 0x11E18 */ s16 unk_11E18;
    /* 0x11E1A */ s16 nextEntranceIndex;
    /* 0x11E1C */ char unk_11E1C[0x40];
    /* 0x11E5C */ s8 shootingGalleryStatus;
    /* 0x11E5D */ s8 bombchuBowlingStatus; // "bombchu_game_flag"
    /* 0x11E5E */ u8 fadeTransition;
    /* 0x11E60 */ CollisionCheckContext colChkCtx;
    /* 0x120FC */ u16 envFlags[20];
    /* 0x12124 */ PreRenderContext preRenderCtx;
    /* 0x12174 */ char unk_12174[0x53];
    /* 0x121C7 */ s8 unk_121C7;
    /* 0x121C8 */ TransitionContext transitionCtx;
    /* 0x12418 */ char unk_12418[0x3];
    /* 0x1241B */ u8 transitionMode; // "fbdemo_wipe_modem"
    /* 0x1241C */ TransitionFade transitionFade;
    /* 0x12428 */ char unk_12428[0x3];
    /* 0x1242B */ u8 unk_1242B;
    /* 0x1242C */ Scene* loadedScene;
    /* 0x12430 */ char unk_12430[0xE8];
} GlobalContext; // size = 0x12518

typedef struct {
    /* 0x0000 */ GameState state;
    /* 0x00A8 */ View view;
} OpeningContext; // size = 0x1D0

typedef struct {
    /* 0x00000 */ GameState state;
    /* 0x000A4 */ Vtx* allocVtx1;
    /* 0x000A8 */ void* staticSegment;
    /* 0x000AC */ void* parameterSegment;
    /* 0x000B0 */ char unk_B0[0x8];
    /* 0x000B8 */ View view;
    /* 0x001E0 */ SramContext sramCtx;
    /* 0x001E4 */ char unk_1E4[0x4];
    /* 0x001E8 */ SkyboxContext skyboxCtx;
    /* 0x00338 */ char unk_338[0x10];
    /* 0x00348 */ MessageContext msgCtx;
    /* 0x0E760 */ char kanfont[0xE188];
    /* 0x1C8E8 */ EnvironmentContext envCtx;
    /* 0x1C9E4 */ char unk_1C9E4[0x4];
    /* 0x1C9E8 */ Vtx* allocVtx2;
    /* 0x1C9EC */ Vtx* allocVtx3;
    /* 0x1C9F0 */ Vtx* allocVtx4;
    /* 0x1C9F4 */ u8 n64ddFlag;
    /* 0x1C9F6 */ u16 deaths[3];
    /* 0x1C9FC */ u8 fileNames[3][8];
    /* 0x1CA14 */ u16 healthCapacities[3];
    /* 0x1CA1C */ u32 questItems[3];
    /* 0x1CA28 */ s16 n64ddFlags[3];
    /* 0x1CA2E */ s8 heartStatus[3];
    /* 0x1CA32 */ u16 nowLife[3];
    /* 0x1CA38 */ s16 btnIdx;
    /* 0x1CA3A */ u16 yesNoButtonIdx;
    /* 0x1CA3C */ s16 menuIdx;
    /* 0x1CA3E */ s16 fileSelectStateIdx;
    /* 0x1CA40 */ s16 unkActionIndex;
    /* 0x1CA42 */ u16 nextFileSelectStateIdx;
    /* 0x1CA44 */ s16 openFileStateIdx;
    /* 0x1CA46 */ s16 selectedFileIdx;
    /* 0x1CA48 */ char unk_1CA48[0x2];
    /* 0x1CA4A */ u16 fileNamesY[3];
    /* 0x1CA50 */ u16 actionTimer;
    /* 0x1CA52 */ u16 buttonsY[6];
    /* 0x1CA5E */ s16 copyDestFileIdx;
    /* 0x1CA60 */ u16 fileWarningTexIdx;
    /* 0x1CA62 */ u16 warningFileIdx;
    /* 0x1CA64 */ u16 titleTexIdx;
    /* 0x1CA66 */ u16 nextTitleTexIdx;
    /* 0x1CA68 */ s16 windowR;
    /* 0x1CA6A */ s16 windowG;
    /* 0x1CA6C */ s16 windowB;
    /* 0x1CA6E */ u16 selectFileTitleA;
    /* 0x1CA70 */ u16 openFileTitleA;
    /* 0x1CA72 */ u16 windowA;
    /* 0x1CA74 */ u16 fileButtonsA[3];
    /* 0x1CA7A */ u16 fileNameBoxesA[3];
    /* 0x1CA80 */ u16 fileNamesA[3];
    /* 0x1CA86 */ u16 metalJointsA[3];
    /* 0x1CA8C */ u16 fileInfoA;
    /* 0x1CA8E */ u16 targetFileInfoBoxA;
    /* 0x1CA90 */ u16 unkFileInfoBoxA;
    /* 0x1CA92 */ u16 copyButtonA;
    /* 0x1CA94 */ u16 eraseButtonA;
    /* 0x1CA96 */ u16 yesBiuttonA;
    /* 0x1CA98 */ u16 quitButtonA;
    /* 0x1CA9A */ u16 optionButtonA;
    /* 0x1CA9C */ u16 newFileNameBoxA;
    /* 0x1CA9E */ u16 decideCancelTextA;
    /* 0x1CAA0 */ u16 fileEmptyTextA;
    /* 0x1CAA2 */ u16 highlightColorR;
    /* 0x1CAA4 */ u16 highlightColorG;
    /* 0x1CAA6 */ u16 highlightColorB;
    /* 0x1CAA8 */ u16 highlightColorA;
    /* 0x1CAAA */ u16 highlightColorAIncrease;
    /* 0x1CAAC */ char unk_1CAAC[0x6];
    /* 0x1CAB2 */ u16 stickXTimer;
    /* 0x1CAB4 */ u16 stickYTimer;
    /* 0x1CAB6 */ u16 idxXOff;
    /* 0x1CAB8 */ u16 idxYOff;
    /* 0x1CABA */ s16 stickX;
    /* 0x1CABC */ s16 stickY;
    /* 0x1CABE */ u16 newFileNameBoxX;
    /* 0x1CAC0 */ u16 windowX;
    /* 0x1CAC4 */ f32 windowRotX;
    /* 0x1CAC8 */ u16 kbdButtonIdx;
    /* 0x1CACA */ u16 unk_1CACA;
    /* 0x1CACC */ u16 kbdCharBoxA;
    /* 0x1CACE */ s16 kbdCharIdx;
    /* 0x1CAD0 */ s16 kbdCharX;
    /* 0x1CAD2 */ s16 kbdCharY;
    /* 0x1CAD4 */ s16 newFileNameCharCount;
    /* 0x1CAD6 */ u16 unk_1CAD6[3];
} FileChooseContext; // size = 0x1CADC

typedef enum {
    DPM_UNK = 0,
    DPM_PLAYER = 1,
    DPM_ENEMY = 2,
    DPM_UNK3 = 3
} DynaPolyMoveFlag;

// Some animation related structure
typedef struct {
    /* 0x00 */ AnimationHeader* animation;
    /* 0x04 */ f32              playbackSpeed;
    /* 0x08 */ f32              startFrame;
    /* 0x0C */ f32              frameCount;
    /* 0x10 */ u8               mode;
    /* 0x14 */ f32              transitionRate;
} struct_80034EC0_Entry; // size = 0x18

// Another animation related structure
typedef struct {
    /* 0x00 */ AnimationHeader* animation;
    /* 0x04 */ f32              frameCount;
    /* 0x08 */ u8               mode;
    /* 0x0C */ f32              transitionRate;
} struct_D_80AA1678; // size = 0x10

typedef struct {
    /* 0x00 */ s16 unk_00;
    /* 0x02 */ s16 unk_02;
    /* 0x04 */ s16 unk_04;
    /* 0x06 */ s16 unk_06;
    /* 0x08 */ Vec3s unk_08;
    /* 0x0E */ Vec3s unk_0E;
    /* 0x14 */ f32 unk_14;
    /* 0x18 */ Vec3f unk_18;
    /* 0x24 */ s16 unk_24;
} struct_80034A14_arg1; // size = 0x28

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

typedef enum {
    /*  1 */ F_8F = 1,
    /*  2 */ F_7F,
    /*  3 */ F_6F,
    /*  4 */ F_5F,
    /*  5 */ F_4F,
    /*  6 */ F_3F,
    /*  7 */ F_2F,
    /*  8 */ F_1F,
    /*  9 */ F_B1,
    /* 10 */ F_B2,
    /* 11 */ F_B3,
    /* 12 */ F_B4,
    /* 13 */ F_B5,
    /* 14 */ F_B6,
    /* 15 */ F_B7,
    /* 16 */ F_B8
} FloorID;

// All arrays pointed in this struct are indexed by "map indexes"
// In dungeons, the map index corresponds to the dungeon index (which also indexes keys, items, etc)
// In overworld areas, the map index corresponds to the overworld area index (spot 00, 01, etc)
typedef struct {
    /* 0x00 */ s16 (*floorTexIndexOffset)[8]; // dungeon texture index offset by floor
    /* 0x04 */ s16*  bossFloor; // floor the boss is on
    /* 0x08 */ s16 (*roomPalette)[32]; // map palette by room
    /* 0x0C */ s16*  maxPaletteCount; // max number of palettes in a same floor
    /* 0x10 */ s16 (*paletteRoom)[8][14]; // room by palette by floor
    /* 0x14 */ s16 (*roomCompassOffsetX)[44]; // dungeon compass icon X offset by room
    /* 0x18 */ s16 (*roomCompassOffsetY)[44]; // dungeon compass icon Y offset by room
    /* 0x1C */ u8*   dgnMinimapCount; // number of room minimaps
    /* 0x20 */ u16*  dgnMinimapTexIndexOffset; // dungeon minimap texture index offset
    /* 0x24 */ u16*  owMinimapTexSize;
    /* 0x28 */ u16*  owMinimapTexOffset;
    /* 0x2C */ s16*  owMinimapPosX;
    /* 0x30 */ s16*  owMinimapPosY;
    /* 0x34 */ s16 (*owCompassInfo)[4]; // [X scale, Y scale, X offset, Y offset]
    /* 0x38 */ s16*  dgnMinimapTexIndexBase; // dungeon minimap texture index base
    /* 0x3C */ s16 (*dgnCompassInfo)[4]; // [X scale, Y scale, X offset, Y offset]
    /* 0x40 */ s16*  owMinimapWidth;
    /* 0x44 */ s16*  owMinimapHeight;
    /* 0x48 */ s16*  owEntranceIconPosX; // "dungeon entrance" icon X pos
    /* 0x4C */ s16*  owEntranceIconPosY; // "dungeon entrance" icon Y pos
    /* 0x50 */ u16*  owEntranceFlag; // flag in inf_table[26] based on which entrance icons are shown (0xFFFF = always shown)
    /* 0x54 */ f32 (*floorCoordY)[8]; // Y coordinate of each floor
    /* 0x58 */ u16*  switchEntryCount; // number of "room switch" entries, which correspond to the next 3 arrays
    /* 0x5C */ u8  (*switchFromRoom)[51]; // room to come from
    /* 0x60 */ u8  (*switchFromFloor)[51]; // floor to come from
    /* 0x64 */ u8  (*switchToRoom)[51]; // room to go to
    /* 0x68 */ u8  (*floorID)[8];
    /* 0x6C */ s16* skullFloorIconY; // dungeon big skull icon Y pos
} MapData; // size = 0x70

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
    /* 0x10 */ Color_RGBA8_u32 color;
    /* 0x14 */ char unk_14[0x1C]; // unused
} GfxPrint; // size = 0x30

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
    /* 0x08 */ u32 compInfoOffset; // only used in mio0
    /* 0x0C */ u32 uncompDataOffset; // only used in mio0
    /* 0x10 */ u32 data[1];
} Yaz0Header; // size = 0x10 ("data" is not part of the header)

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

typedef struct {
    /* 0x0000 */ OSContStatus padStatus[4];
    /* 0x0010 */ OSMesg serialMsgBuf[1];
    /* 0x0014 */ OSMesg lockMsgBuf[1];
    /* 0x0018 */ OSMesg interruptMsgBuf[4];
    /* 0x0028 */ OSMesgQueue serialMsgQ;
    /* 0x0040 */ OSMesgQueue lockMsgQ;
    /* 0x0058 */ OSMesgQueue interruptMsgQ;
    /* 0x0070 */ IrqMgrClient irqClient;
    /* 0x0078 */ IrqMgr* irqMgr;
    /* 0x0080 */ OSThread thread;
    /* 0x0230 */ Input inputs[4];
    /* 0x0290 */ OSContPad pads[4];
    /* 0x02A8 */ vu8 validCtrlrsMask;
    /* 0x02A9 */ u8 ncontrollers;
    /* 0x02AA */ u8 ctrlrIsConnected[4]; // "Key_switch" originally
    /* 0x02AE */ u8 pakType[4]; // 1 if rumble pack, 2 if mempak?
    /* 0x02B2 */ vu8 rumbleEnable[4];
    /* 0x02B6 */ u8 rumbleCounter[4]; // not clear exact meaning
    /* 0x02BC */ OSPfs pfs[4];
    /* 0x045C */ vu8 rumbleOffFrames;
    /* 0x045D */ vu8 rumbleOnFrames;
    /* 0x045E */ u8 preNMIShutdown;
    /* 0x0460 */ void (*retraceCallback)(void* padmgr, u32 unk464);
    /* 0x0464 */ u32 retraceCallbackValue;
} PadMgr; // size = 0x468

// == Previously sched.h

#define OS_SC_NEEDS_RDP         0x0001
#define OS_SC_NEEDS_RSP         0x0002
#define OS_SC_DRAM_DLIST        0x0004
#define OS_SC_PARALLEL_TASK     0x0010
#define OS_SC_LAST_TASK         0x0020
#define OS_SC_SWAPBUFFER        0x0040

#define OS_SC_RCP_MASK          0x0003
#define OS_SC_TYPE_MASK         0x0007

typedef struct {
    /* 0x0000 */ u16*   curBuffer;
    /* 0x0004 */ u16*   nextBuffer;
} FrameBufferSwap;

typedef struct {
    /* 0x0000 */ OSMesgQueue  interruptQ;
    /* 0x0018 */ OSMesg       intBuf[8];
    /* 0x0038 */ OSMesgQueue  cmdQ;
    /* 0x0050 */ OSMesg       cmdMsgBuf[8];
    /* 0x0070 */ OSThread     thread;
    /* 0x0220 */ OSScTask*    audioListHead;
    /* 0x0224 */ OSScTask*    gfxListHead;
    /* 0x0228 */ OSScTask*    audioListTail;
    /* 0x022C */ OSScTask*    gfxListTail;
    /* 0x0230 */ OSScTask*    curRSPTask;
    /* 0x0234 */ OSScTask*    curRDPTask;
    /* 0x0238 */ s32          retraceCnt;
    /* 0x023C */ s32          doAudio;
    /* 0x0240 */ CfbInfo* curBuf;
    /* 0x0244 */ CfbInfo*        pendingSwapBuf1;
    /* 0x0220 */ CfbInfo* pendingSwapBuf2;
    /* 0x0220 */ UNK_TYPE     unk_24C;
    /* 0x0250 */ IrqMgrClient   irqClient;
} SchedContext; // size = 0x258

// ========================

#define OS_SC_RETRACE_MSG       1
#define OS_SC_DONE_MSG          2
#define OS_SC_NMI_MSG           3 // name is made up, 3 is OS_SC_RDP_DONE_MSG in the original sched.c
#define OS_SC_PRE_NMI_MSG       4

#define OS_SC_DP                0x0001
#define OS_SC_SP                0x0002
#define OS_SC_YIELD             0x0010
#define OS_SC_YIELDED           0x0020

typedef struct {
    struct {
    /* 0x0000 */ s32          unk_0[0x10]; // not char to avoid generating lwl/lwr swl/swr in a struct copy
    } unk_0;
    /* 0x0040 */ OSMesgQueue*  unk_40;
} Sub_AudioMgr_18; // size = 0x44

typedef struct {
    /* 0x0000 */ IrqMgr*       irqMgr;
    /* 0x0004 */ SchedContext* sched;
    /* 0x0008 */ OSMesg        unk_8;
    /* 0x000C */ char          unk_C[0x04];
    /* 0x0010 */ s32           unk_10;
    /* 0x0014 */ s32           unk_14;
    /* 0x0018 */ Sub_AudioMgr_18 unk_18;
    /* 0x005C */ UNK_PTR       unk_5C;
    /* 0x0060 */ char          unk_60[0x10];
    /* 0x0070 */ Sub_AudioMgr_18* unk_70;
    /* 0x0074 */ OSMesgQueue   unk_74;
    /* 0x008C */ OSMesg        unk_8C;
    /* 0x0090 */ OSMesgQueue   unk_90;
    /* 0x00A8 */ OSMesg        unk_A8;
    /* 0x00AC */ OSMesgQueue   unk_AC;
    /* 0x00C4 */ OSMesg        unk_C4;
    /* 0x00C8 */ OSMesgQueue   unk_C8;
    /* 0x00E0 */ OSMesg        unk_E0;
    /* 0x00E4 */ char          unk_E4[0x04];
    /* 0x00E8 */ OSThread      unk_E8;
} AudioMgr; // size = 0x298


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
    /* 0x00 */ Vec3f atOffset;
    /* 0x0C */ Vec3f eyeOffset;
    /* 0x18 */ s16 rotZ;
    /* 0x1A */ s16 unk_1A;
    /* 0x1C */ s16 zoom;
    /* 0x20 */ f32 unk_20;
} QuakeCamCalc; // size = 0x24


#define UCODE_NULL      0
#define UCODE_F3DZEX    1
#define UCODE_UNK       2
#define UCODE_S2DEX     3

typedef struct {
    /* 0x00 */ u32 type;
    /* 0x04 */ void* ptr;
} UCodeInfo; // size = 0x8

typedef struct {
    /* 0x00 */ u32 segments[NUM_SEGMENTS];
    /* 0x40 */ u32 dlStack[18];
    /* 0x88 */ s32 dlDepth;
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
    /* 0xBC */ s32 enableLog;
    /* 0xC0 */ s32 ucodeType;
    /* 0xC4 */ s32 ucodeInfoCount;
    /* 0xC8 */ UCodeInfo* ucodeInfo;
    /* 0xCC */ u32 modeH;
    /* 0xD0 */ u32 modeL;
    /* 0xD4 */ u32 geometryMode;
} UCodeDisas; // size = 0xD8

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
    /* 0x00 */ u32 address;
    /* 0x04 */ u32 mbCount;
    /* 0x08 */ u32 mode;
    /* 0x0C */ u32 qTableYPtr;
    /* 0x10 */ u32 qTableUPtr;
    /* 0x14 */ u32 qTableVPtr;
    /* 0x18 */ char unk_18[0x8];
} JpegTaskData; // size = 0x20

typedef struct {
    /* 0x000 */ JpegTaskData taskData;
    /* 0x020 */ char yieldData[0x200];
    /* 0x220 */ JpegQuantizationTable qTableY;
    /* 0x2A0 */ JpegQuantizationTable qTableU;
    /* 0x320 */ JpegQuantizationTable qTableV;
    /* 0x3A0 */ u8 codesLengths[0x110];
    /* 0x4B0 */ u16 codes[0x108];
    /* 0x6C0 */ u16 unk_6C0[4][0x180];
} JpegWork; // size = 0x12C0

typedef struct {
    /* 0x00 */ void* imageData;
    /* 0x04 */ u8 mode;
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
    /* 0x28 */ u32 mode; // 0 if Y V0 is 1 and 2 if Y V0 is 2
    /* 0x2C */ char unk_2C[4];
    /* 0x30 */ OSScTask scTask;
    /* 0x88 */ char unk_88[0x10];
    /* 0x98 */ OSMesgQueue mq;
    /* 0xB0 */ OSMesg msg;
    /* 0xB4 */ JpegWork* workBuf;
} JpegContext; // size = 0xB8

typedef struct {
    /* 0x00 */ u32 byteIdx;
    /* 0x04 */ u8 bitIdx;
    /* 0x05 */ u8 dontSkip;
    /* 0x08 */ u32 curWord;
    /* 0x0C */ s16 unk_0C;
    /* 0x0E */ s16 unk_0E;
    /* 0x10 */ s16 unk_10;
} JpegDecoderState; // size = 0x14

// Vis...
typedef struct {
    /* 0x00 */ u32 type;
    /* 0x04 */ u32 setScissor;
    /* 0x08 */ Color_RGBA8_u32 color;
    /* 0x0C */ Color_RGBA8_u32 envColor;
} struct_801664F0; // size = 0x10

typedef struct {
    /* 0x00 */ u32 unk_00;
    /* 0x04 */ u32 setScissor;
    /* 0x08 */ Color_RGBA8_u32 primColor;
    /* 0x0C */ Color_RGBA8_u32 envColor;
    /* 0x10 */ u16* tlut;
    /* 0x14 */ Gfx* monoDl;
} VisMono; // size = 0x18

// Vis...
typedef struct {
    /* 0x00 */ u32 useRgba;
    /* 0x04 */ u32 setScissor;
    /* 0x08 */ Color_RGBA8_u32 primColor;
    /* 0x08 */ Color_RGBA8_u32 envColor;
} struct_80166500; // size = 0x10

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

typedef struct {
    /* 0x00 */ char unk_00[0x18];
    /* 0x18 */ s32 unk_18;
    /* 0x1C */ s32 y;
} SpeedMeter; // size = 0x20

typedef struct {
    /* 0x00 */ s32 maxval;
    /* 0x04 */ s32 val;
    /* 0x08 */ u16 backColor;
    /* 0x0A */ u16 foreColor;
    /* 0x0C */ s32 ulx;
    /* 0x10 */ s32 lrx;
    /* 0x14 */ s32 uly;
    /* 0x18 */ s32 lry;
} SpeedMeterAllocEntry; // size = 0x1C

typedef struct {
    /* 0x00 */ OSTime* time;
    /* 0x04 */ u8 x;
    /* 0x05 */ u8 y;
    /* 0x06 */ u16 color;
} SpeedMeterTimeEntry; // size = 0x08

typedef struct {
    /* 0x00 */ u16 intPart[4][4];
    /* 0x20 */ u16 fracPart[4][4];
} MatrixInternal; // size = 0x40

typedef struct {
    /* 0x00 */ u32 value;
    /* 0x04 */ const char* name;
} F3dzexConst; // size = 0x8

typedef struct {
    /* 0x00 */ u32 value;
    /* 0x04 */ const char* setName;
    /* 0x08 */ const char* unsetName;
} F3dzexFlag; // size = 0x0C

typedef struct {
    /* 0x00 */ const char* name;
    /* 0x04 */ u32 value;
    /* 0x08 */ u32 mask;
} F3dzexRenderMode; // size = 0x0C

typedef struct {
    /* 0x00 */ const char* name;
    /* 0x04 */ u32 value;
} F3dzexSetModeMacroValue; // size = 0x8

typedef struct {
    /* 0x00 */ const char* name;
    /* 0x04 */ u32 shift;
    /* 0x08 */ u32 len;
    /* 0x0C */ F3dzexSetModeMacroValue values[4];
} F3dzexSetModeMacro; // size = 0x2C

typedef struct {
    /* 0x00 */ u16* value;
    /* 0x04 */ const char* name;
} FlagSetEntry; // size = 0x08

#endif
