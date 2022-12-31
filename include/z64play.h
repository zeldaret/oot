#ifndef Z64PLAY_H
#define Z64PLAY_H

#include "ultra64.h"
#include "z64state.h"
#include "z64actor.h"
#include "z64animation.h"
#include "z64collision_check.h"
#include "z64cutscene.h"
#include "z64environment.h"
#include "z64light.h"
#include "z64math.h"
#include "z64message.h"
#include "z64object.h"
#include "z64sram.h"
#include "z64skybox.h"
#include "z64scene.h"
#include "z64transition.h"
#include "z64view.h"
#include "prerender.h"
#include "color.h"

typedef struct {
    /* 0x00 */ u8   seqId;
    /* 0x01 */ u8   natureAmbienceId;
} SequenceContext; // size = 0x2

typedef struct {
    /* 0x00 */ s32 enabled;
    /* 0x04 */ s32 timer;
} FrameAdvanceContext; // size = 0x8

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
    /* 0x90 */ Actor*   bgmEnemy; // The nearest enemy to player with the right flags that will trigger NA_BGM_ENEMY
    /* 0x94 */ Actor*   unk_94;
} TargetContext; // size = 0x98

typedef struct {
    /* 0x00 */ void*      texture;
    /* 0x04 */ s16      x;
    /* 0x06 */ s16      y;
    /* 0x08 */ u8       width;
    /* 0x09 */ u8       height;
    /* 0x0A */ u8       durationTimer; // how long the title card appears for before fading
    /* 0x0B */ u8       delayTimer; // how long the title card waits to appear
    /* 0x0C */ s16      alpha;
    /* 0x0E */ s16      intensity;
} TitleCardContext; // size = 0x10

typedef struct {
    /* 0x00 */ s32    length; // number of actors loaded of this category
    /* 0x04 */ Actor* head; // pointer to head of the linked list of this category (most recent actor added)
} ActorListEntry; // size = 0x08

typedef struct {
    /* 0x0000 */ u8     freezeFlashTimer;
    /* 0x0001 */ char   unk_01[0x01];
    /* 0x0002 */ u8     unk_02;
    /* 0x0003 */ u8     lensActive;
    /* 0x0004 */ char   unk_04[0x04];
    /* 0x0008 */ u8     total; // total number of actors loaded
    /* 0x000C */ ActorListEntry actorLists[ACTORCAT_MAX];
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
    /* 0x013C */ void*  absoluteSpace; // Space used to allocate actor overlays with alloc type ACTOROVL_ALLOC_ABSOLUTE
} ActorContext; // size = 0x140

typedef struct {
    /* 0x00 */ char  unk_00[0x4];
    /* 0x04 */ void* script;
    /* 0x08 */ u8 state;
    /* 0x0C */ f32 timer;
    /* 0x10 */ u16 curFrame; // current frame of the script that is running
    /* 0x12 */ u16 unk_12; // set but never used
    /* 0x14 */ s32 subCamId;
    /* 0x18 */ u16 camEyeSplinePointsAppliedFrame; // stores the frame the cam eye spline points data was last applied on
    /* 0x1A */ u8 camAtReady; // cam `at` data is ready to be applied
    /* 0x1B */ u8 camEyeReady; // cam `eye` data is ready to be applied
    /* 0x1C */ CutsceneCameraPoint* camAtPoints;
    /* 0x20 */ CutsceneCameraPoint* camEyePoints;
    /* 0x24 */ CsCmdActorCue* playerCue;
    /* 0x28 */ CsCmdActorCue* actorCues[10]; // "npcdemopnt"
} CutsceneContext; // size = 0x50

typedef struct {
    /* 0x00 */ u16 countdown;
    /* 0x04 */ Vec3f worldPos;
    /* 0x10 */ Vec3f projectedPos;
} SfxSource; // size = 0x1C

typedef struct {
    /* 0x00 */ u8 byte0;
    /* 0x01 */ u8 byte1;
    /* 0x02 */ u8 byte2;
    /* 0x03 */ u8 byte3;
} QuestHintCmd; // size = 0x4

typedef enum {
    /* 0x00 */ DO_ACTION_ATTACK,
    /* 0x01 */ DO_ACTION_CHECK,
    /* 0x02 */ DO_ACTION_ENTER,
    /* 0x03 */ DO_ACTION_RETURN,
    /* 0x04 */ DO_ACTION_OPEN,
    /* 0x05 */ DO_ACTION_JUMP,
    /* 0x06 */ DO_ACTION_DECIDE,
    /* 0x07 */ DO_ACTION_DIVE,
    /* 0x08 */ DO_ACTION_FASTER,
    /* 0x09 */ DO_ACTION_THROW,
    /* 0x0A */ DO_ACTION_NONE, // in do_action_static, the texture at this position is NAVI, however this value is in practice the "No Action" value
    /* 0x0B */ DO_ACTION_CLIMB,
    /* 0x0C */ DO_ACTION_DROP,
    /* 0x0D */ DO_ACTION_DOWN,
    /* 0x0E */ DO_ACTION_SAVE,
    /* 0x0F */ DO_ACTION_SPEAK,
    /* 0x10 */ DO_ACTION_NEXT,
    /* 0x11 */ DO_ACTION_GRAB,
    /* 0x12 */ DO_ACTION_STOP,
    /* 0x13 */ DO_ACTION_PUTAWAY,
    /* 0x14 */ DO_ACTION_REEL,
    /* 0x15 */ DO_ACTION_1,
    /* 0x16 */ DO_ACTION_2,
    /* 0x17 */ DO_ACTION_3,
    /* 0x18 */ DO_ACTION_4,
    /* 0x19 */ DO_ACTION_5,
    /* 0x1A */ DO_ACTION_6,
    /* 0x1B */ DO_ACTION_7,
    /* 0x1C */ DO_ACTION_8,
    /* 0x1D */ DO_ACTION_MAX
} DoAction;

// TODO extract this information from the texture definitions themselves
#define DO_ACTION_TEX_WIDTH 48
#define DO_ACTION_TEX_HEIGHT 16
#define DO_ACTION_TEX_SIZE ((DO_ACTION_TEX_WIDTH * DO_ACTION_TEX_HEIGHT) / 2) // (sizeof(gCheckDoActionENGTex))

typedef struct {
    /* 0x0000 */ View   view;
    /* 0x0128 */ Vtx*   actionVtx;
    /* 0x012C */ Vtx*   beatingHeartVtx;
    /* 0x0130 */ u8*    parameterSegment;
    /* 0x0134 */ u8*    doActionSegment;
    /* 0x0138 */ u8*    iconItemSegment;
    /* 0x013C */ u8*    mapSegment;
    /* 0x0140 */ u8     mapPalette[32];
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
    /* 0x01FE */ s16    heartColorOscillator;
    /* 0x0200 */ s16    heartColorOscillatorDirection;
    /* 0x0202 */ s16    beatingHeartPrim[3];
    /* 0x0208 */ s16    beatingHeartEnv[3];
    /* 0x020E */ s16    heartsPrimR[2];
    /* 0x0212 */ s16    heartsPrimG[2];
    /* 0x0216 */ s16    heartsPrimB[2];
    /* 0x021A */ s16    heartsEnvR[2];
    /* 0x021E */ s16    heartsEnvG[2];
    /* 0x0222 */ s16    heartsEnvB[2];
    /* 0x0226 */ s16    unk_226; // Used only in unused functions
    /* 0x0228 */ s16    unk_228; // Used only in unused functions
    /* 0x022A */ s16    beatingHeartOscillator;
    /* 0x022C */ s16    beatingHeartOscillatorDirection;
    /* 0x022E */ s16    unk_22E;
    /* 0x0230 */ s16    lensMagicConsumptionTimer; // When lens is active, 1 unit of magic is consumed every time the timer reaches 0
    /* 0x0232 */ s16    counterDigits[4]; // used for key and rupee counters
    /* 0x023A */ u8     numHorseBoosts;
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
    /* 0x025E */ s16    mapPaletteIndex; // "map_palete_no"
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
    /* 0x00 */ void* loadedRamAddr;
    /* 0x04 */ uintptr_t vromStart;
    /* 0x08 */ uintptr_t vromEnd;
    /* 0x0C */ void* vramStart;
    /* 0x10 */ void* vramEnd;
    /* 0x14 */ u32 offset; // loadedRamAddr - vramStart
    /* 0x18 */ const char* name;
} KaleidoMgrOverlay; // size = 0x1C

typedef enum {
    /* 0x00 */ KALEIDO_OVL_KALEIDO_SCOPE,
    /* 0x01 */ KALEIDO_OVL_PLAYER_ACTOR,
    /* 0x02 */ KALEIDO_OVL_MAX
} KaleidoOverlayType;

typedef enum {
    /* 00 */ GAMEOVER_INACTIVE,
    /* 01 */ GAMEOVER_DEATH_START,
    /* 02 */ GAMEOVER_DEATH_WAIT_GROUND, // wait for link to fall and hit the ground
    /* 03 */ GAMEOVER_DEATH_DELAY_MENU, // wait for 1 second before showing the game over menu
    /* 04 */ GAMEOVER_DEATH_MENU, // do nothing while kaleidoscope handles the game over menu
    /* 20 */ GAMEOVER_REVIVE_START = 20,
    /* 21 */ GAMEOVER_REVIVE_RUMBLE,
    /* 22 */ GAMEOVER_REVIVE_WAIT_GROUND, // wait for link to fall and hit the ground
    /* 23 */ GAMEOVER_REVIVE_WAIT_FAIRY, // wait for the fairy to rise all the way up out of links body
    /* 24 */ GAMEOVER_REVIVE_FADE_OUT // fade out the game over lights as link is revived and gets back up
} GameOverState;

typedef struct {
    /* 0x00 */ u16 state;
} GameOverContext; // size = 0x2

typedef enum {
    /* 0 */ LENS_MODE_HIDE_ACTORS, // lens actors are visible by default, and hidden by using lens (for example, fake walls)
    /* 1 */ LENS_MODE_SHOW_ACTORS // lens actors are invisible by default, and shown by using lens (for example, invisible enemies)
} LensMode;

typedef enum {
    /* 0 */ ROOM_BEHAVIOR_TYPE1_0,
    /* 1 */ ROOM_BEHAVIOR_TYPE1_1,
    /* 2 */ ROOM_BEHAVIOR_TYPE1_2,
    /* 3 */ ROOM_BEHAVIOR_TYPE1_3, // unused
    /* 4 */ ROOM_BEHAVIOR_TYPE1_4, // unused
    /* 5 */ ROOM_BEHAVIOR_TYPE1_5
} RoomBehaviorType1;

typedef enum {
    /* 0 */ ROOM_BEHAVIOR_TYPE2_0,
    /* 1 */ ROOM_BEHAVIOR_TYPE2_1,
    /* 2 */ ROOM_BEHAVIOR_TYPE2_2,
    /* 3 */ ROOM_BEHAVIOR_TYPE2_3,
    /* 4 */ ROOM_BEHAVIOR_TYPE2_4,
    /* 5 */ ROOM_BEHAVIOR_TYPE2_5,
    /* 6 */ ROOM_BEHAVIOR_TYPE2_6
} RoomBehaviorType2;

typedef struct {
    /* 0x00 */ s8   num;
    /* 0x01 */ u8   unk_01;
    /* 0x02 */ u8   behaviorType2;
    /* 0x03 */ u8   behaviorType1;
    /* 0x04 */ s8   echo;
    /* 0x05 */ u8   lensMode;
    /* 0x08 */ RoomShape* roomShape; // original name: "ground_shape"
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
    /* 0x74 */ s16 unk_74[2]; // context-specific data used by the current scene draw config
} RoomContext; // size = 0x78

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

#define TRANS_TRIGGER_OFF 0 // transition is not active
#define TRANS_TRIGGER_START 20 // start transition (exiting an area)
#define TRANS_TRIGGER_END -20 // transition is ending (arriving in a new area)

typedef enum {
    /*  0 */ TRANS_MODE_OFF,
    /*  1 */ TRANS_MODE_SETUP,
    /*  2 */ TRANS_MODE_INSTANCE_INIT,
    /*  3 */ TRANS_MODE_INSTANCE_RUNNING,
    /*  4 */ TRANS_MODE_FILL_WHITE_INIT,
    /*  5 */ TRANS_MODE_FILL_IN,
    /*  6 */ TRANS_MODE_FILL_OUT,
    /*  7 */ TRANS_MODE_FILL_BROWN_INIT,
    /*  8 */ TRANS_MODE_08, // unused
    /*  9 */ TRANS_MODE_09, // unused
    /* 10 */ TRANS_MODE_INSTANT,
    /* 11 */ TRANS_MODE_INSTANCE_WAIT,
    /* 12 */ TRANS_MODE_SANDSTORM_INIT,
    /* 13 */ TRANS_MODE_SANDSTORM,
    /* 14 */ TRANS_MODE_SANDSTORM_END_INIT,
    /* 15 */ TRANS_MODE_SANDSTORM_END,
    /* 16 */ TRANS_MODE_CS_BLACK_FILL_INIT,
    /* 17 */ TRANS_MODE_CS_BLACK_FILL
} TransitionMode;

typedef enum {
    /*  0 */ TRANS_TYPE_WIPE,
    /*  1 */ TRANS_TYPE_TRIFORCE,
    /*  2 */ TRANS_TYPE_FADE_BLACK,
    /*  3 */ TRANS_TYPE_FADE_WHITE,
    /*  4 */ TRANS_TYPE_FADE_BLACK_FAST,
    /*  5 */ TRANS_TYPE_FADE_WHITE_FAST,
    /*  6 */ TRANS_TYPE_FADE_BLACK_SLOW,
    /*  7 */ TRANS_TYPE_FADE_WHITE_SLOW,
    /*  8 */ TRANS_TYPE_WIPE_FAST,
    /*  9 */ TRANS_TYPE_FILL_WHITE2,
    /* 10 */ TRANS_TYPE_FILL_WHITE,
    /* 11 */ TRANS_TYPE_INSTANT,
    /* 12 */ TRANS_TYPE_FILL_BROWN,
    /* 13 */ TRANS_TYPE_FADE_WHITE_CS_DELAYED,
    /* 14 */ TRANS_TYPE_SANDSTORM_PERSIST,
    /* 15 */ TRANS_TYPE_SANDSTORM_END,
    /* 16 */ TRANS_TYPE_CS_BLACK_FILL,
    /* 17 */ TRANS_TYPE_FADE_WHITE_INSTANT,
    /* 18 */ TRANS_TYPE_FADE_GREEN,
    /* 19 */ TRANS_TYPE_FADE_BLUE,
    // transition types 20 - 31 are unused
    // transition types 32 - 55 are constructed using the TRANS_TYPE_CIRCLE macro
    /* 56 */ TRANS_TYPE_MAX = 56
} TransitionType;

#define TRANS_NEXT_TYPE_DEFAULT 0xFF // when `nextTransitionType` is set to default, the type will be taken from the entrance table for the ending transition

typedef enum {
    /* 0 */ TCA_NORMAL,
    /* 1 */ TCA_WAVE,
    /* 2 */ TCA_RIPPLE,
    /* 3 */ TCA_STARBURST
} TransitionCircleAppearance;

typedef enum {
    /* 0 */ TCC_BLACK,
    /* 1 */ TCC_WHITE,
    /* 2 */ TCC_GRAY,
    /* 3 */ TCC_SPECIAL // color varies depending on appearance. unused and appears broken
} TransitionCircleColor;

typedef enum {
    /* 0 */ TCS_FAST,
    /* 1 */ TCS_SLOW
} TransitionCircleSpeed;

#define TC_SET_PARAMS (1 << 7)

#define TRANS_TYPE_CIRCLE(appearance, color, speed) ((1 << 5) | ((color & 3) << 3) | ((appearance & 3) << 1) | (speed & 1))

typedef struct {
    union {
        TransitionFade fade;
        TransitionCircle circle;
        TransitionTriforce triforce;
        TransitionWipe wipe;
    } instanceData;
    /* 0x228 */ s32   transitionType;
    /* 0x22C */ void* (*init)(void* transition);
    /* 0x230 */ void  (*destroy)(void* transition);
    /* 0x234 */ void  (*update)(void* transition, s32 updateRate);
    /* 0x238 */ void  (*draw)(void* transition, Gfx** gfxP);
    /* 0x23C */ void  (*start)(void* transition);
    /* 0x240 */ void  (*setType)(void* transition, s32 type);
    /* 0x244 */ void  (*setColor)(void* transition, u32 color);
    /* 0x248 */ void  (*setUnkColor)(void* transition, u32 color);
    /* 0x24C */ s32   (*isDone)(void* transition);
} TransitionContext; // size = 0x250

typedef struct {
    /* 0x00 */ u8 numActors;
    /* 0x04 */ TransitionActorEntry* list;
} TransitionActorContext;

typedef enum {
    /* 0 */ PAUSE_BG_PRERENDER_OFF, // Inactive, do nothing.
    /* 1 */ PAUSE_BG_PRERENDER_SETUP, // The current frame is only drawn for the purpose of serving as the pause background.
    /* 2 */ PAUSE_BG_PRERENDER_PROCESS, // The previous frame was PAUSE_BG_PRERENDER_SETUP, now apply prerender filters.
    /* 3 */ PAUSE_BG_PRERENDER_READY, // The pause background is ready to be used.
    /* 4 */ PAUSE_BG_PRERENDER_MAX
} PauseBgPreRenderState;

typedef enum {
    /* 0 */ TRANS_TILE_OFF, // Inactive, do nothing
    /* 1 */ TRANS_TILE_SETUP, // Save the necessary buffers
    /* 2 */ TRANS_TILE_PROCESS, // Initialize the transition
    /* 3 */ TRANS_TILE_READY // The transition is ready, so will update and draw each frame
} TransitionTileStatus;

typedef struct PlayState {
    /* 0x00000 */ GameState state;
    /* 0x000A4 */ s16 sceneId;
    /* 0x000A6 */ u8 sceneDrawConfig;
    /* 0x000A7 */ char unk_A7[0x9];
    /* 0x000B0 */ void* sceneSegment;
    /* 0x000B8 */ View view;
    /* 0x001E0 */ Camera mainCamera;
    /* 0x0034C */ Camera subCameras[NUM_CAMS - CAM_ID_SUB_FIRST];
    /* 0x00790 */ Camera* cameraPtrs[NUM_CAMS];
    /* 0x007A0 */ s16 activeCamId;
    /* 0x007A2 */ s16 nextCamId;
    /* 0x007A4 */ SequenceContext sequenceCtx;
    /* 0x007A8 */ LightContext lightCtx;
    /* 0x007B8 */ FrameAdvanceContext frameAdvCtx;
    /* 0x007C0 */ CollisionContext colCtx;
    /* 0x01C24 */ ActorContext actorCtx;
    /* 0x01D64 */ CutsceneContext csCtx; // "demo_play"
    /* 0x01DB4 */ SfxSource sfxSources[16];
    /* 0x01F74 */ SramContext sramCtx;
    /* 0x01F78 */ SkyboxContext skyboxCtx;
    /* 0x020D8 */ MessageContext msgCtx; // "message"
    /* 0x104F0 */ InterfaceContext interfaceCtx; // "parameter"
    /* 0x10760 */ PauseContext pauseCtx;
    /* 0x10A20 */ GameOverContext gameOverCtx;
    /* 0x10A24 */ EnvironmentContext envCtx;
    /* 0x10B20 */ AnimationContext animationCtx;
    /* 0x117A4 */ ObjectContext objectCtx;
    /* 0x11CBC */ RoomContext roomCtx;
    /* 0x11D34 */ TransitionActorContext transiActorCtx;
    /* 0x11D3C */ void (*playerInit)(Player* player, struct PlayState* play, FlexSkeletonHeader* skelHeader);
    /* 0x11D40 */ void (*playerUpdate)(Player* player, struct PlayState* play, Input* input);
    /* 0x11D44 */ s32 (*isPlayerDroppingFish)(struct PlayState* play);
    /* 0x11D48 */ s32 (*startPlayerFishing)(struct PlayState* play);
    /* 0x11D4C */ s32 (*grabPlayer)(struct PlayState* play, Player* player);
    /* 0x11D50 */ s32 (*startPlayerCutscene)(struct PlayState* play, Actor* actor, s32 csMode);
    /* 0x11D54 */ void (*func_11D54)(Player* player, struct PlayState* play);
    /* 0x11D58 */ s32 (*damagePlayer)(struct PlayState* play, s32 damage);
    /* 0x11D5C */ void (*talkWithPlayer)(struct PlayState* play, Actor* actor);
    /* 0x11D60 */ MtxF viewProjectionMtxF;
    /* 0x11DA0 */ MtxF billboardMtxF;
    /* 0x11DE0 */ Mtx* billboardMtx;
    /* 0x11DE4 */ u32 gameplayFrames;
    /* 0x11DE8 */ u8 linkAgeOnLoad;
    /* 0x11DE9 */ u8 haltAllActors;
    /* 0x11DEA */ u8 spawn;
    /* 0x11DEB */ u8 numActorEntries;
    /* 0x11DEC */ u8 numRooms;
    /* 0x11DF0 */ RomFile* roomList;
    /* 0x11DF4 */ ActorEntry* playerEntry;
    /* 0x11DF8 */ ActorEntry* actorEntryList;
    /* 0x11DFC */ void* unk_11DFC;
    /* 0x11E00 */ Spawn* spawnList;
    /* 0x11E04 */ s16* exitList;
    /* 0x11E08 */ Path* pathList;
    /* 0x11E0C */ QuestHintCmd* naviQuestHints;
    /* 0x11E10 */ void* specialEffects;
    /* 0x11E14 */ u8 skyboxId;
    /* 0x11E15 */ s8 transitionTrigger; // "fade_direction"
    /* 0x11E16 */ s16 unk_11E16;
    /* 0x11E18 */ s16 unk_11E18;
    /* 0x11E1A */ s16 nextEntranceIndex;
    /* 0x11E1C */ char unk_11E1C[0x40];
    /* 0x11E5C */ s8 shootingGalleryStatus;
    /* 0x11E5D */ s8 bombchuBowlingStatus; // "bombchu_game_flag"
    /* 0x11E5E */ u8 transitionType;
    /* 0x11E60 */ CollisionCheckContext colChkCtx;
    /* 0x120FC */ u16 cutsceneFlags[20];
    /* 0x12124 */ PreRender pauseBgPreRender;
    /* 0x12174 */ char unk_12174[0x53];
    /* 0x121C7 */ s8 unk_121C7;
    /* 0x121C8 */ TransitionContext transitionCtx;
    /* 0x12418 */ char unk_12418[0x3];
    /* 0x1241B */ u8 transitionMode; // "fbdemo_wipe_modem"
    /* 0x1241C */ TransitionFade transitionFadeFlash; // Transition fade instance which flashes screen, see R_TRANS_FADE_FLASH_ALPHA_STEP
    /* 0x12428 */ char unk_12428[0x3];
    /* 0x1242B */ u8 viewpoint; // toggleable camera setting by shops or player. Is also equal to the bgCamIndex + 1
    /* 0x1242C */ SceneTableEntry* loadedScene;
    /* 0x12430 */ char unk_12430[0xE8];
} PlayState; // size = 0x12518

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

typedef struct {
    /* 0x00 */ s8  sceneId;
    /* 0x01 */ s8  spawn;
    /* 0x02 */ u16 field;
} EntranceInfo; // size = 0x4

#endif
