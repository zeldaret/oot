#ifndef Z64SRAM_H
#define Z64SRAM_H

#include "ultra64/ultratypes.h"

struct FileSelectState;
struct GameState;

typedef struct SramContext {
    /* 0x00 */ u8* readBuff;
} SramContext; // size = 0x4

#define SRAM_SIZE 0x8000
#define SRAM_HEADER_SIZE 0x10

typedef enum SramHeaderField {
    /* 0x00 */ SRAM_HEADER_SOUND,
    /* 0x01 */ SRAM_HEADER_Z_TARGET,
    /* 0x02 */ SRAM_HEADER_LANGUAGE,
    /* 0x03 */ SRAM_HEADER_MAGIC // must be the value in `sSramDefaultHeader` for save to be considered valid
} SramHeaderField;

void Sram_InitNewSave(void);
void Sram_InitDebugSave(void);
void Sram_OpenSave(SramContext* sramCtx);
void Sram_WriteSave(SramContext* sramCtx);
void Sram_VerifyAndLoadAllSaves(struct FileSelectState* fileSelect, SramContext* sramCtx);
void Sram_InitSave(struct FileSelectState* fileSelect, SramContext* sramCtx);
void Sram_EraseSave(struct FileSelectState* fileSelect, SramContext* sramCtx);
void Sram_CopySave(struct FileSelectState* fileSelect, SramContext* sramCtx);
void Sram_WriteSramHeader(SramContext* sramCtx);
void Sram_InitSram(struct GameState* gameState, SramContext* sramCtx);
void Sram_Alloc(struct GameState* gameState, SramContext* sramCtx);
void Sram_Init(struct GameState* play, SramContext* sramCtx);

#endif
