#ifndef UCODE_DISAS_H
#define UCODE_DISAS_H

#include "ultra64.h"

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

void UCodeDisas_Init(UCodeDisas*);
void UCodeDisas_Destroy(UCodeDisas*);
void UCodeDisas_Disassemble(UCodeDisas*, Gfx*);
void UCodeDisas_RegisterUCode(UCodeDisas*, s32, UCodeInfo*);
void UCodeDisas_SetCurUCode(UCodeDisas*, void*);

#endif
