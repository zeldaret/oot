#ifndef GAMEALLOC_H
#define GAMEALLOC_H

#include "ultra64.h"

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

#if OOT_DEBUG
void* GameAlloc_MallocDebug(GameAlloc* this, u32 size, const char* file, int line);
#endif

void* GameAlloc_Malloc(GameAlloc* this, u32 size);
void GameAlloc_Free(GameAlloc* this, void* data);
void GameAlloc_Cleanup(GameAlloc* this);
void GameAlloc_Init(GameAlloc* this);

#if OOT_DEBUG
#define GAME_ALLOC_MALLOC(alloc, size, file, line) GameAlloc_MallocDebug(alloc, size, file, line)
#else
#define GAME_ALLOC_MALLOC(alloc, size, file, line) GameAlloc_Malloc(alloc, size)
#endif

#endif
