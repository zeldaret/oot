#ifndef Z64_H
#define Z64_H

#include "ultra64.h"
#include "ultra64/gs2dex.h"
#include "attributes.h"
#include "audiomgr.h"
#include "controller.h"
#include "versions.h"
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
#include "z64inventory.h"
#include "z64item.h"
#include "z64animation.h"
#include "z64animation_legacy.h"
#include "z64dma.h"
#include "letterbox.h"
#include "z64math.h"
#include "z64map_mark.h"
#include "z64message.h"
#include "z64olib.h"
#include "one_point_cutscene.h"
#include "z64pause.h"
#include "z64play.h"
#include "z64skin.h"
#include "z64skin_matrix.h"
#include "z64game.h"
#include "z64transition.h"
#include "z64transition_instances.h"
#include "z64interface.h"
#include "z64sfx_source.h"
#include "z64skybox.h"
#include "z64sram.h"
#include "z64view.h"
#include "z64vis.h"
#include "zelda_arena.h"
#include "alignment.h"
#include "audiothread_cmd.h"
#include "seqcmd.h"
#include "sequence.h"
#include "sfx.h"
#include "color.h"
#include "libu64/gfxprint.h"
#include "z_lib.h"
#include "ichain.h"
#include "regs.h"
#include "irqmgr.h"
#include "padmgr.h"
#include "sched.h"
#include "rumble.h"
#include "map.h"
#include "mempak.h"
#include "tha.h"
#include "thga.h"
#include "speed_meter.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "gfxalloc.h"
#include "jpeg.h"
#include "prerender.h"
#include "rand.h"
#include "libc64/qrand.h"
#include "sys_math.h"
#include "sys_math3d.h"
#include "libc64/math64.h"
#include "sys_matrix.h"
#include "main.h"
#include "segmented_address.h"
#include "stackcheck.h"
#include "kaleido_manager.h"
#include "libc64/aprintf.h"
#include "libc64/malloc.h"
#include "libc64/sleep.h"
#include "libc64/sprintf.h"
#include "libu64/debug.h"

#define SCREEN_WIDTH  320
#define SCREEN_HEIGHT 240

#define THREAD_PRI_IDLE_INIT    10
#define THREAD_PRI_MAIN_INIT    10
#define THREAD_PRI_DMAMGR_LOW   10  // Used when decompressing files
#define THREAD_PRI_GRAPH        11
#define THREAD_PRI_AUDIOMGR     12
#define THREAD_PRI_N64DD        13
#define THREAD_PRI_DDMSG        13
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
#define THREAD_ID_N64DD       8
#define THREAD_ID_DDMSG       9
#define THREAD_ID_AUDIOMGR   10
#define THREAD_ID_DMAMGR     18
#define THREAD_ID_IRQMGR     19

typedef enum LensMode {
    /* 0 */ LENS_MODE_SHOW_ACTORS, // lens actors are invisible by default, and shown by using lens (for example, invisible enemies)
    /* 1 */ LENS_MODE_HIDE_ACTORS // lens actors are visible by default, and hidden by using lens (for example, fake walls)
} LensMode;

typedef struct SetupState {
    /* 0x00 */ GameState state;
} SetupState; // size = 0xA4

typedef struct ConsoleLogoState {
    /* 0x0000 */ GameState state;
    /* 0x00A4 */ u8* staticSegment;
    /* 0x00A8 */ View view;
    /* 0x01D0 */ SramContext sramCtx;
    /* 0x01D4 */ s16 unk_1D4;
    /* 0x01D6 */ s16 coverAlpha;
    /* 0x01D8 */ s16 addAlpha;
    /* 0x01DA */ s16 visibleDuration;
    /* 0x01DC */ s16 ult;
    /* 0x01DE */ s16 uls;
    /* 0x01E0 */ u8 unk_1E0;
    /* 0x01E1 */ u8 exit;
    /* 0x01E2 */ char unk_1E2[0x06];
} ConsoleLogoState; // size = 0x1E8

struct MapSelectState;

typedef struct SceneSelectEntry {
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

typedef struct SampleState {
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

typedef enum PauseBgPreRenderState {
    /* 0 */ PAUSE_BG_PRERENDER_OFF, // Inactive, do nothing.
    /* 1 */ PAUSE_BG_PRERENDER_SETUP, // The current frame is only drawn for the purpose of serving as the pause background.
    /* 2 */ PAUSE_BG_PRERENDER_PROCESS, // The previous frame was PAUSE_BG_PRERENDER_SETUP, now apply prerender filters.
    /* 3 */ PAUSE_BG_PRERENDER_READY, // The pause background is ready to be used.
    /* 4 */ PAUSE_BG_PRERENDER_MAX
} PauseBgPreRenderState;

typedef enum TransitionTileState {
    /* 0 */ TRANS_TILE_OFF, // Inactive, do nothing
    /* 1 */ TRANS_TILE_SETUP, // Save the necessary buffers
    /* 2 */ TRANS_TILE_PROCESS, // Initialize the transition
    /* 3 */ TRANS_TILE_READY // The transition is ready, so will update and draw each frame
} TransitionTileState;

typedef struct TitleSetupState {
    /* 0x0000 */ GameState state;
    /* 0x00A8 */ View view;
} TitleSetupState; // size = 0x1D0

typedef struct FileSelectState {
    /* 0x00000 */ GameState state;
    /* 0x000A4 */ Vtx* windowVtx;
    /* 0x000A8 */ u8* staticSegment;
    /* 0x000AC */ u8* parameterSegment;
#if OOT_PAL
    /* 0x000B0 */ u8* objectMagSegment;
#endif
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
#if OOT_PAL
    /* 0x1CA32 */ u16 health[3];
#endif
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
    /* 0x1CA92 */ s16 actionButtonAlpha[4]; // also contains the alphas for the confirm buttons
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

typedef struct GameStateOverlay {
    /* 0x00 */ void*     loadedRamAddr;
    /* 0x04 */ RomFile   file;      // if applicable
    /* 0x0C */ void*     vramStart; // if applicable
    /* 0x10 */ void*     vramEnd;   // if applicable
    /* 0x14 */ void*     unk_14;
    /* 0x18 */ void*     init;    // initializes and executes the given context
    /* 0x1C */ void*     destroy; // deconstructs the context, and sets the next context to load
    /* 0x20 */ void*     unk_20;
    /* 0x24 */ void*     unk_24;
    /* 0x28 */ UNK_TYPE4 unk_28;
    /* 0x2C */ u32       instanceSize;
} GameStateOverlay; // size = 0x30

typedef struct PreNMIState {
    /* 0x00 */ GameState state;
    /* 0xA4 */ u32       timer;
    /* 0xA8 */ UNK_TYPE4 unk_A8;
} PreNMIState; // size = 0xAC

typedef struct ISVDbg {
    /* 0x00 */ u32 magic; // IS64
    /* 0x04 */ u32 get;
    /* 0x08 */ u8 unk_08[0x14-0x08];
    /* 0x14 */ u32 put;
    /* 0x18 */ u8 unk_18[0x20-0x18];
    /* 0x20 */ u8 data[0x10000-0x20];
} ISVDbg;

typedef struct LocaleCartInfo {
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

typedef struct Yaz0Header {
    /* 0x00 */ char magic[4]; // Yaz0
    /* 0x04 */ u32 decSize;
    /* 0x08 */ u32 compInfoOffset; // only used in mio0
    /* 0x0C */ u32 uncompDataOffset; // only used in mio0
} Yaz0Header; // size = 0x10

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
typedef enum RelocSectionId {
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
ALIGNED(4) typedef struct PreNmiBuff {
    /* 0x00 */ u32 resetting;
    /* 0x04 */ u32 resetCount;
    /* 0x08 */ OSTime duration;
    /* 0x10 */ OSTime resetTime;
} PreNmiBuff; // size = 0x18 (actually osAppNMIBuffer is 0x40 bytes large but the rest is unused)

typedef enum ViModeEditState {
#if OOT_VERSION < PAL_1_0
    /* -2 */ VI_MODE_EDIT_STATE_NEGATIVE_2 = -2,
    /* -1 */ VI_MODE_EDIT_STATE_NEGATIVE_1,
    /*  0 */ VI_MODE_EDIT_STATE_INACTIVE,
    /*  1 */ VI_MODE_EDIT_STATE_2, // active, more adjustments
    /*  2 */ VI_MODE_EDIT_STATE_3  // active, more adjustments, print comparison with NTSC LAN1 mode
#else
    /*  0 */ VI_MODE_EDIT_STATE_INACTIVE,
    /*  1 */ VI_MODE_EDIT_STATE_ACTIVE,
    /*  2 */ VI_MODE_EDIT_STATE_2, // active, more adjustments
    /*  3 */ VI_MODE_EDIT_STATE_3  // active, more adjustments, print comparison with NTSC LAN1 mode
#endif
} ViModeEditState;

typedef struct ViMode {
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
