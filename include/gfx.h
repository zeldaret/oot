#ifndef GFX_H
#define GFX_H

#include "ultra64.h"
#include "ultra64/gbi.h"
#include "sched.h"
#include "thga.h"

// Texture memory size, 4 KiB
#define TMEM_SIZE 0x1000

typedef struct {
    /* 0x00000 */ u16 headMagic; // GFXPOOL_HEAD_MAGIC
    /* 0x00008 */ Gfx polyOpaBuffer[0x17E0];
    /* 0x0BF08 */ Gfx polyXluBuffer[0x800];
    /* 0x0FF08 */ Gfx overlayBuffer[0x400];
    /* 0x11F08 */ Gfx workBuffer[0x80];
    /* 0x11308 */ Gfx unusedBuffer[0x20];
    /* 0x12408 */ u16 tailMagic; // GFXPOOL_TAIL_MAGIC
} GfxPool; // size = 0x12410

typedef struct GraphicsContext {
    /* 0x0000 */ Gfx* polyOpaBuffer; // Pointer to "Zelda 0"
    /* 0x0004 */ Gfx* polyXluBuffer; // Pointer to "Zelda 1"
    /* 0x0008 */ char unk_008[0x08]; // Unused, could this be pointers to "Zelda 2" / "Zelda 3"
    /* 0x0010 */ Gfx* overlayBuffer; // Pointer to "Zelda 4"
    /* 0x0014 */ u32 unk_014;
    /* 0x0018 */ char unk_018[0x20];
    /* 0x0038 */ OSMesg msgBuff[0x08];
    /* 0x0058 */ OSMesgQueue* schedMsgQueue;
    /* 0x005C */ OSMesgQueue queue;
    /* 0x0078 */ OSScTask task;
    /* 0x00E0 */ char unk_0E0[0xD0];
    /* 0x01B0 */ Gfx* workBuffer;
    /* 0x01B4 */ TwoHeadGfxArena work;
    /* 0x01C4 */ char unk_01C4[0xC0];
    /* 0x0284 */ OSViMode* viMode;
    /* 0x0288 */ char unk_0288[0x20]; // Unused, could this be Zelda 2/3 ?
    /* 0x02A8 */ TwoHeadGfxArena overlay; // "Zelda 4"
    /* 0x02B8 */ TwoHeadGfxArena polyOpa; // "Zelda 0"
    /* 0x02C8 */ TwoHeadGfxArena polyXlu; // "Zelda 1"
    /* 0x02D8 */ u32 gfxPoolIdx;
    /* 0x02DC */ u16* curFrameBuffer;
    /* 0x02E0 */ char unk_2E0[0x04];
    /* 0x02E4 */ u32 viFeatures;
    /* 0x02E8 */ s32 fbIdx;
    /* 0x02EC */ void (*callback)(struct GraphicsContext*, void*);
    /* 0x02F0 */ void* callbackParam;
    /* 0x02F4 */ f32 xScale;
    /* 0x02F8 */ f32 yScale;
    /* 0x02FC */ char unk_2FC[0x04];
} GraphicsContext; // size = 0x300

typedef enum {
    /*  0 */ SETUPDL_0,
    /*  1 */ SETUPDL_1,
    /*  2 */ SETUPDL_2,
    /*  3 */ SETUPDL_3,
    /*  4 */ SETUPDL_4,
    /*  5 */ SETUPDL_5,
    /*  6 */ SETUPDL_6,
    /*  7 */ SETUPDL_7,
    /*  8 */ SETUPDL_8,
    /*  9 */ SETUPDL_9,
    /* 10 */ SETUPDL_10,
    /* 11 */ SETUPDL_11,
    /* 12 */ SETUPDL_12,
    /* 13 */ SETUPDL_13,
    /* 14 */ SETUPDL_14,
    /* 15 */ SETUPDL_15,
    /* 16 */ SETUPDL_16,
    /* 17 */ SETUPDL_17,
    /* 18 */ SETUPDL_18,
    /* 19 */ SETUPDL_19,
    /* 20 */ SETUPDL_20,
    /* 21 */ SETUPDL_21,
    /* 22 */ SETUPDL_22,
    /* 23 */ SETUPDL_23,
    /* 24 */ SETUPDL_24,
    /* 25 */ SETUPDL_25,
    /* 26 */ SETUPDL_26,
    /* 27 */ SETUPDL_27,
    /* 28 */ SETUPDL_28,
    /* 29 */ SETUPDL_29,
    /* 30 */ SETUPDL_30,
    /* 31 */ SETUPDL_31,
    /* 32 */ SETUPDL_32,
    /* 33 */ SETUPDL_33,
    /* 34 */ SETUPDL_34,
    /* 35 */ SETUPDL_35,
    /* 36 */ SETUPDL_36,
    /* 37 */ SETUPDL_37,
    /* 38 */ SETUPDL_38,
    /* 39 */ SETUPDL_39,
    /* 40 */ SETUPDL_40,
    /* 41 */ SETUPDL_41,
    /* 42 */ SETUPDL_42,
    /* 43 */ SETUPDL_43,
    /* 44 */ SETUPDL_44,
    /* 45 */ SETUPDL_45,
    /* 46 */ SETUPDL_46,
    /* 47 */ SETUPDL_47,
    /* 48 */ SETUPDL_48,
    /* 49 */ SETUPDL_49,
    /* 50 */ SETUPDL_50,
    /* 51 */ SETUPDL_51,
    /* 52 */ SETUPDL_52,
    /* 53 */ SETUPDL_53,
    /* 54 */ SETUPDL_54,
    /* 55 */ SETUPDL_55,
    /* 56 */ SETUPDL_56,
    /* 57 */ SETUPDL_57,
    /* 58 */ SETUPDL_58,
    /* 59 */ SETUPDL_59,
    /* 60 */ SETUPDL_60,
    /* 61 */ SETUPDL_61,
    /* 62 */ SETUPDL_62,
    /* 63 */ SETUPDL_63,
    /* 64 */ SETUPDL_64,
    /* 65 */ SETUPDL_65,
    /* 66 */ SETUPDL_66,
    /* 67 */ SETUPDL_67,
    /* 68 */ SETUPDL_68,
    /* 69 */ SETUPDL_69,
    /* 70 */ SETUPDL_70,
    /* 71 */ SETUPDL_MAX
} SetupDL;

#define UCODE_NULL      0
#define UCODE_F3DZEX    1
#define UCODE_UNK       2
#define UCODE_S2DEX     3

typedef struct {
    /* 0x00 */ u32 type;
    /* 0x04 */ void* ptr;
} UCodeInfo; // size = 0x8

typedef struct {
    /* 0x00 */ uintptr_t segments[NUM_SEGMENTS];
    /* 0x40 */ Gfx* dlStack[18];
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

#endif
