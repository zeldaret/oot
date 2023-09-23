#ifndef Z64_H
#define Z64_H

#include "ultra64.h"
#include "ultra64/gs2dex.h"
#include "attributes.h"
#include "z64save.h"
#include "z64light.h"
#include "z64bgcheck.h"
#include "z64actor.h"
#include "z64player.h"
#include "z64audio.h"
#include "z64object.h"
#include "z64ocarina.h"
#include "z64camera.h"
#include "z64environment.h"
#include "z64cutscene.h"
#include "z64collision_check.h"
#include "z64curve.h"
#include "z64scene.h"
#include "z64effect.h"
#include "z64item.h"
#include "z64animation.h"
#include "z64animation_legacy.h"
#include "z64dma.h"
#include "z64math.h"
#include "z64map_mark.h"
#include "z64message.h"
#include "z64pause.h"
#include "z64skin.h"
#include "z64frameadvance.h"
#include "z64game.h"
#include "z64game_over.h"
#include "z64transition.h"
#include "z64transition_instances.h"
#include "z64interface.h"
#include "z64skybox.h"
#include "z64sram.h"
#include "z64view.h"
#include "z64vis.h"
#include "alignment.h"
#include "seqcmd.h"
#include "sequence.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "color.h"
#include "gfxprint.h"
#include "ichain.h"
#include "regs.h"
#include "irqmgr.h"
#include "padmgr.h"
#include "fault.h"
#include "sched.h"
#include "rumble.h"
#include "mempak.h"
#include "tha.h"
#include "thga.h"
#include "speedmeter.h"
#include "gfx.h"
#include "jpeg.h"
#include "prerender.h"

#define REGION_NULL 0
#define REGION_JP 1
#define REGION_US 2
#define REGION_EU 3

// NOTE: Once we start supporting other builds, this can be changed with an ifdef
#define REGION_NATIVE REGION_EU

#define STACK(stack, size) \
    u64 stack[ALIGN8(size) / sizeof(u64)]

#define STACK_TOP(stack) \
    ((u8*)(stack) + sizeof(stack))

typedef struct {
    /* 0x00 */ u8   seqId;
    /* 0x01 */ u8   natureAmbienceId;
} SequenceContext; // size = 0x2

typedef struct {
    /* 0x00 */ u16 countdown;
    /* 0x04 */ Vec3f worldPos;
    /* 0x10 */ Vec3f projectedPos;
} SfxSource; // size = 0x1C

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
    /* 0 */ KALEIDO_OVL_KALEIDO_SCOPE,
    /* 1 */ KALEIDO_OVL_PLAYER_ACTOR,
    /* 2 */ KALEIDO_OVL_MAX
} KaleidoOverlayType;

typedef struct {
    /* 0x00 */ u8 byte0;
    /* 0x01 */ u8 byte1;
    /* 0x02 */ u8 byte2;
    /* 0x03 */ u8 byte3;
} QuestHintCmd; // size = 0x4

typedef struct {
    /* 0x00 */ u8 numActors;
    /* 0x04 */ TransitionActorEntry* list;
} TransitionActorContext; // size = 0x8

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
} TransitionTileState;

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
    /* 0x11E18 */ s16 bgCoverAlpha;
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

typedef struct {
    /* 0x00 */ GameState state;
    /* 0xA4 */ u32       timer;
    /* 0xA8 */ UNK_TYPE4 unk_A8;
} PreNMIState; // size = 0xAC

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

// All arrays pointed in this struct are indexed by "map indices"
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
    /* 0x38 */ s16*  dgnTexIndexBase; // dungeon texture index base
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

// TODO get these properties from the textures themselves
#define MAP_I_TEX_WIDTH 96
#define MAP_I_TEX_HEIGHT 85
#define MAP_I_TEX_SIZE ((MAP_I_TEX_WIDTH * MAP_I_TEX_HEIGHT) / 2) // 96x85 I4 texture

#define MAP_48x85_TEX_WIDTH 48
#define MAP_48x85_TEX_HEIGHT 85
#define MAP_48x85_TEX_SIZE ((MAP_48x85_TEX_WIDTH * MAP_48x85_TEX_HEIGHT) / 2) // 48x85 CI4 texture

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

#endif
