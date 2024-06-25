#ifndef Z64_H
#define Z64_H

#include "ultra64.h"
#include "ultra64/gs2dex.h"
#include "attributes.h"
#include "audiomgr.h"
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
#include "z64game_over.h"
#include "z64item.h"
#include "z64animation.h"
#include "z64animation_legacy.h"
#include "z64dma.h"
#include "z64math.h"
#include "z64map_mark.h"
#include "z64message.h"
#include "z64pause.h"
#include "z64play.h"
#include "z64skin.h"
#include "z64game.h"
#include "z64transition.h"
#include "z64transition_instances.h"
#include "z64interface.h"
#include "z64sfx_source.h"
#include "z64skybox.h"
#include "z64sram.h"
#include "z64view.h"
#include "z64vis.h"
#include "alignment.h"
#include "audiothread_cmd.h"
#include "seqcmd.h"
#include "sequence.h"
#include "sfx.h"
#include "color.h"
#include "gfxprint.h"
#include "z_lib.h"
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
#include "gfx.h"
#include "graph.h"
#include "jpeg.h"
#include "prerender.h"
#include "rand.h"
#include "sys_math.h"
#include "sys_math3d.h"
#include "fp_math.h"
#include "sys_matrix.h"

#define SCREEN_WIDTH  320
#define SCREEN_HEIGHT 240

#define REGION_NULL 0
#define REGION_JP 1
#define REGION_US 2
#define REGION_EU 3

#define THREAD_PRI_IDLE_INIT    10
#define THREAD_PRI_MAIN_INIT    10
#define THREAD_PRI_DMAMGR_LOW   10  // Used when decompressing files
#define THREAD_PRI_GRAPH        11
#define THREAD_PRI_AUDIOMGR     12
#define THREAD_PRI_PADMGR       14
#define THREAD_PRI_MAIN         15
#define THREAD_PRI_SCHED        15
#define THREAD_PRI_DMAMGR       16
#define THREAD_PRI_IRQMGR       17
#define THREAD_PRI_FAULT_CLIENT (OS_PRIORITY_APPMAX - 1)
#define THREAD_PRI_FAULT        OS_PRIORITY_APPMAX

#define THREAD_ID_IDLE        1
#define THREAD_ID_FAULT       2
#define THREAD_ID_MAIN        3
#define THREAD_ID_GRAPH       4
#define THREAD_ID_SCHED       5
#define THREAD_ID_PADMGR      7
#define THREAD_ID_AUDIOMGR   10
#define THREAD_ID_DMAMGR     18
#define THREAD_ID_IRQMGR     19

#define STACK(stack, size) \
    u64 stack[ALIGN8(size) / sizeof(u64)]

#define STACK_TOP(stack) \
    ((u8*)(stack) + sizeof(stack))

// NOTE: Once we start supporting other builds, this can be changed with an ifdef
#define REGION_NATIVE REGION_EU

typedef struct {
    /* 0x00 */ void* loadedRamAddr;
    /* 0x04 */ RomFile file;
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

typedef enum {
    /* 0 */ LENS_MODE_SHOW_ACTORS, // lens actors are invisible by default, and shown by using lens (for example, invisible enemies)
    /* 1 */ LENS_MODE_HIDE_ACTORS // lens actors are visible by default, and hidden by using lens (for example, fake walls)
} LensMode;

typedef struct {
    /* 0x00 */ GameState state;
} SetupState; // size = 0xA4

typedef struct {
    /* 0x0000 */ GameState state;
    /* 0x00A4 */ u8* staticSegment;
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
} ConsoleLogoState; // size = 0x1E8

struct MapSelectState;

typedef struct {
    /* 0x00 */ char* name;
    /* 0x04 */ void (*loadFunc)(struct MapSelectState*, s32);
    /* 0x08 */ s32 entranceIndex;
} SceneSelectEntry; // size = 0xC

typedef struct MapSelectState {
    /* 0x0000 */ GameState state;
    /* 0x00A8 */ View view;
    /* 0x01D0 */ s32 count;
    /* 0x01D4 */ SceneSelectEntry* scenes;
    /* 0x01D8 */ s32 currentScene;
    /* 0x01DC */ s32 pageDownIndex; // Index of pageDownStops
    /* 0x01E0 */ s32 pageDownStops[7];
    /* 0x01FC */ char unk_1FC[0x0C];
    /* 0x0208 */ s32 opt;
    /* 0x020C */ s32 topDisplayedScene; // The scene which is currently at the top of the screen
    /* 0x0210 */ char unk_210[0x0C];
    /* 0x021C */ s32 verticalInputAccumulator;
    /* 0x0220 */ s32 verticalInput;
    /* 0x0224 */ s32 timerUp;
    /* 0x0228 */ s32 timerDown;
    /* 0x022C */ s32 lockUp;
    /* 0x0230 */ s32 lockDown;
    /* 0x0234 */ s32 unk_234; // unused
    /* 0x0238 */ u8* staticSegment;
} MapSelectState; // size = 0x240

typedef struct {
    /* 0x0000 */ GameState state;
    /* 0x00A4 */ u8* staticSegment;
    /* 0x00A8 */ View view;
} SampleState; // size = 0x1D0

typedef struct QuestHintCmd {
    /* 0x00 */ u8 byte0;
    /* 0x01 */ u8 byte1;
    /* 0x02 */ u8 byte2;
    /* 0x03 */ u8 byte3;
} QuestHintCmd; // size = 0x4

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

typedef struct {
    /* 0x0000 */ GameState state;
    /* 0x00A8 */ View view;
} TitleSetupState; // size = 0x1D0

typedef struct {
    /* 0x00000 */ GameState state;
    /* 0x000A4 */ Vtx* windowVtx;
    /* 0x000A8 */ u8* staticSegment;
    /* 0x000AC */ u8* parameterSegment;
    /* 0x000B0 */ char unk_B0[0x8];
    /* 0x000B8 */ View view;
    /* 0x001E0 */ SramContext sramCtx;
    /* 0x001E4 */ char unk_1E4[0x4];
    /* 0x001E8 */ SkyboxContext skyboxCtx;
    /* 0x00348 */ MessageContext msgCtx;
    /* 0x0E760 */ Font font;
    /* 0x1C8E8 */ EnvironmentContext envCtx;
    /* 0x1C9E4 */ char unk_1C9E4[0x4];
    /* 0x1C9E8 */ Vtx* windowContentVtx;
    /* 0x1C9EC */ Vtx* keyboardVtx;
    /* 0x1C9F0 */ Vtx* nameEntryVtx;
    /* 0x1C9F4 */ u8 n64ddFlag;
    /* 0x1C9F6 */ u16 deaths[3];
    /* 0x1C9FC */ u8 fileNames[3][8];
    /* 0x1CA14 */ u16 healthCapacities[3];
    /* 0x1CA1C */ u32 questItems[3];
    /* 0x1CA28 */ s16 n64ddFlags[3];
    /* 0x1CA2E */ s8 defense[3];
    /* 0x1CA32 */ u16 health[3];
    /* 0x1CA38 */ s16 buttonIndex;
    /* 0x1CA3A */ s16 confirmButtonIndex; // 0: yes, 1: quit
    /* 0x1CA3C */ s16 menuMode;
    /* 0x1CA3E */ s16 configMode;
    /* 0x1CA40 */ s16 prevConfigMode;
    /* 0x1CA42 */ s16 nextConfigMode;
    /* 0x1CA44 */ s16 selectMode;
    /* 0x1CA46 */ s16 selectedFileIndex;
    /* 0x1CA48 */ char unk_1CA48[0x2];
    /* 0x1CA4A */ s16 fileNamesY[3];
    /* 0x1CA50 */ s16 actionTimer;
    /* 0x1CA52 */ s16 buttonYOffsets[6];
    /* 0x1CA5E */ s16 copyDestFileIndex;
    /* 0x1CA60 */ s16 warningLabel;
    /* 0x1CA62 */ s16 warningButtonIndex;
    /* 0x1CA64 */ s16 titleLabel;
    /* 0x1CA66 */ s16 nextTitleLabel;
    /* 0x1CA68 */ s16 windowColor[3];
    /* 0x1CA6E */ s16 titleAlpha[2];
    /* 0x1CA72 */ s16 windowAlpha;
    /* 0x1CA74 */ s16 fileButtonAlpha[3];
    /* 0x1CA7A */ s16 nameBoxAlpha[3];
    /* 0x1CA80 */ s16 nameAlpha[3];
    /* 0x1CA86 */ s16 connectorAlpha[3];
    /* 0x1CA8C */ s16 fileInfoAlpha[3];
    /* 0x1CA92 */ s16 actionButtonAlpha[2];
    /* 0x1CA96 */ s16 confirmButtonAlpha[2];
    /* 0x1CA9A */ s16 optionButtonAlpha;
    /* 0x1CA9C */ s16 nameEntryBoxAlpha;
    /* 0x1CA9E */ s16 controlsAlpha;
    /* 0x1CAA0 */ s16 emptyFileTextAlpha;
    /* 0x1CAA2 */ s16 highlightColor[4];
    /* 0x1CAAA */ s16 highlightPulseDir; // 0 fade out, 1 fade in
    /* 0x1CAAC */ s16 unk_1CAAC; // initialized but never used
    /* 0x1CAAE */ s16 confirmButtonTexIndices[2];
    /* 0x1CAB2 */ s16 inputTimerX;
    /* 0x1CAB4 */ s16 inputTimerY;
    /* 0x1CAB6 */ s16 stickXDir;
    /* 0x1CAB8 */ s16 stickYDir;
    /* 0x1CABA */ s16 stickAdjX;
    /* 0x1CABC */ s16 stickAdjY;
    /* 0x1CABE */ s16 nameEntryBoxPosX;
    /* 0x1CAC0 */ s16 windowPosX;
    /* 0x1CAC4 */ f32 windowRot;
    /* 0x1CAC8 */ s16 kbdButton; // only for buttons, not characters
    /* 0x1CACA */ s16 charPage; // 0: hiragana, 1: katakana, 2: alphabet
    /* 0x1CACC */ s16 charBgAlpha; // square shape the letter sits in
    /* 0x1CACE */ s16 charIndex; // 0 - 64, top left to bottom right
    /* 0x1CAD0 */ s16 kbdX; // (0, 0) is top left character
    /* 0x1CAD2 */ s16 kbdY;
    /* 0x1CAD4 */ s16 newFileNameCharCount;
    /* 0x1CAD6 */ s16 unk_1CAD6[5];
} FileSelectState; // size = 0x1CAE0

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

typedef struct DebugDispObject {
    /* 0x00 */ Vec3f pos;
    /* 0x0C */ Vec3s rot;
    /* 0x14 */ Vec3f scale;
    /* 0x20 */ Color_RGBA8 color;
    /* 0x24 */ s16   type;
    /* 0x28 */ struct DebugDispObject* next;
} DebugDispObject; // size = 0x2C

typedef struct StackEntry {
    /* 0x00 */ struct StackEntry* next;
    /* 0x04 */ struct StackEntry* prev;
    /* 0x08 */ u32* head;
    /* 0x0C */ u32* tail;
    /* 0x10 */ u32 initValue;
    /* 0x14 */ s32 minSpace;
    /* 0x18 */ const char* name;
} StackEntry;

typedef enum {
    /* 0 */ STACK_STATUS_OK,
    /* 1 */ STACK_STATUS_WARNING,
    /* 2 */ STACK_STATUS_OVERFLOW
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
} Yaz0Header; // size = 0x10

struct ArenaNode;

typedef struct Arena {
    /* 0x00 */ struct ArenaNode* head;
    /* 0x04 */ void* start;
    /* 0x08 */ OSMesgQueue lockQueue;
    /* 0x20 */ u8 allocFailures; // only used in non-debug builds
    /* 0x21 */ u8 isInit;
    /* 0x22 */ u8 flag;
} Arena; // size = 0x24

typedef struct ArenaNode {
    /* 0x00 */ s16 magic;
    /* 0x02 */ s16 isFree;
    /* 0x04 */ u32 size;
    /* 0x08 */ struct ArenaNode* next;
    /* 0x0C */ struct ArenaNode* prev;
#if OOT_DEBUG // TODO: This debug info is also present in N64 retail builds
    /* 0x10 */ const char* filename;
    /* 0x14 */ int line;
    /* 0x18 */ OSId threadId;
    /* 0x1C */ Arena* arena;
    /* 0x20 */ OSTime time;
    /* 0x28 */ u8 unk_28[0x30-0x28]; // probably padding
#endif
} ArenaNode; // size = 0x30

/* Relocation entry field getters */
#define RELOC_SECTION(reloc)   ((reloc) >> 30)
#define RELOC_OFFSET(reloc)    ((reloc) & 0xFFFFFF)
#define RELOC_TYPE_MASK(reloc) ((reloc) & 0x3F000000)
#define RELOC_TYPE_SHIFT 24

/* MIPS Relocation Types, matches the MIPS ELF spec */
#define R_MIPS_32   2
#define R_MIPS_26   4
#define R_MIPS_HI16 5
#define R_MIPS_LO16 6

/* Reloc section id, must fit in 2 bits otherwise the relocation format must be modified */
typedef enum {
    /* 0 */ RELOC_SECTION_NULL,
    /* 1 */ RELOC_SECTION_TEXT,
    /* 2 */ RELOC_SECTION_DATA,
    /* 3 */ RELOC_SECTION_RODATA,
    /* 4 */ RELOC_SECTION_MAX
} RelocSectionId;

typedef struct OverlayRelocationSection {
    /* 0x00 */ u32 textSize;
    /* 0x04 */ u32 dataSize;
    /* 0x08 */ u32 rodataSize;
    /* 0x0C */ u32 bssSize;
    /* 0x10 */ u32 nRelocations;
    /* 0x14 */ u32 relocations[1]; // size is nRelocations
} OverlayRelocationSection; // size >= 0x18

// This struct is used at osAppNMIBuffer which is not at an 8-byte aligned address. This causes an unaligned access
// crash if the OSTime variables use 64-bit load/store instructions, which is the case in any MIPS ABI other than O32
// where 64-bit load/store instructions are emulated with 2x 32-bit load/store instructions. The alignment attribute
// conveys that this structure will not always be 8-bytes aligned, allowing a modern compiler to generate non-crashing
// code for accessing these. This is not an issue in the original compiler as it only output O32 ABI code.
ALIGNED(4) typedef struct {
    /* 0x00 */ u32 resetting;
    /* 0x04 */ u32 resetCount;
    /* 0x08 */ OSTime duration;
    /* 0x10 */ OSTime resetTime;
} PreNmiBuff; // size = 0x18 (actually osAppNMIBuffer is 0x40 bytes large but the rest is unused)

typedef enum {
    /* 0 */ VI_MODE_EDIT_STATE_INACTIVE,
    /* 1 */ VI_MODE_EDIT_STATE_ACTIVE,
    /* 2 */ VI_MODE_EDIT_STATE_2, // active, more adjustments
    /* 3 */ VI_MODE_EDIT_STATE_3  // active, more adjustments, print comparison with NTSC LAN1 mode
} ViModeEditState;

typedef struct {
    /* 0x00 */ OSViMode customViMode;
    /* 0x50 */ s32 viHeight;
    /* 0x54 */ s32 viWidth;
    /* 0x58 */ s32 rightAdjust;
    /* 0x5C */ s32 leftAdjust;
    /* 0x60 */ s32 lowerAdjust;
    /* 0x64 */ s32 upperAdjust;
    /* 0x68 */ s32 editState;
    /* 0x6C */ s32 tvType;
    /* 0x70 */ u32 loRes;
    /* 0x74 */ u32 antialiasOff;
    /* 0x78 */ u32 modeN; // Controls interlacing, the meaning of this mode is different based on choice of resolution
    /* 0x7C */ u32 fb16Bit;
    /* 0x80 */ u32 viFeatures;
    /* 0x84 */ u32 unk_84;
} ViMode; // size = 0x88

#endif
