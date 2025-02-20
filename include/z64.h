#ifndef Z64_H
#define Z64_H

#include "ultra64.h"
#include "ultra64/gs2dex.h"
#include "attributes.h"
#include "audiomgr.h"
#include "controller.h"
#include "versions.h"
#include "z64player.h"
#include "z64audio.h"
#include "z64ocarina.h"
#include "z64curve.h"
#include "z64effect.h"
#include "z64animation.h"
#include "z64animation_legacy.h"
#include "letterbox.h"
#include "z64math.h"
#include "z64map_mark.h"
#include "one_point_cutscene.h"
#include "z64play.h"
#include "z64skin.h"
#include "z64skin_matrix.h"
#include "z64vis.h"
#include "zelda_arena.h"
#include "alignment.h"
#include "audiothread_cmd.h"
#include "sfx.h"
#include "color.h"
#include "libu64/gfxprint.h"
#include "z_lib.h"
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
#include "prerender.h"
#include "rand.h"
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
