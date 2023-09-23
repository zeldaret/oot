#ifndef Z64GAME_H
#define Z64GAME_H
// This file is named "game" after game.c for now, this may change later with the system name

#include "ultra64/ultratypes.h"
#include "padmgr.h"
#include "tha.h"
#include "unk.h"

struct GraphicsContext;

typedef struct {
    /* 0x00 */ void* loadedRamAddr;
    /* 0x04 */ uintptr_t vromStart; // if applicable
    /* 0x08 */ uintptr_t vromEnd;   // if applicable
    /* 0x0C */ void* vramStart; // if applicable
    /* 0x10 */ void* vramEnd;   // if applicable
    /* 0x14 */ void* unk_14;
    /* 0x18 */ void* init;    // initializes and executes the given context
    /* 0x1C */ void* destroy; // deconstructs the context, and sets the next context to load
    /* 0x20 */ void* unk_20;
    /* 0x24 */ void* unk_24;
    /* 0x28 */ UNK_TYPE4 unk_28;
    /* 0x2C */ u32 instanceSize;
} GameStateOverlay; // size = 0x30

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

// Used in Graph_GetNextGameState in graph.c
#define DEFINE_GAMESTATE_INTERNAL(typeName, enumName) enumName,
#define DEFINE_GAMESTATE(typeName, enumName, name) DEFINE_GAMESTATE_INTERNAL(typeName, enumName)
typedef enum {
#include "tables/gamestate_table.h"
    GAMESTATE_ID_MAX
} GameStateId;
#undef DEFINE_GAMESTATE
#undef DEFINE_GAMESTATE_INTERNAL

struct GameState;

typedef void (*GameStateFunc)(struct GameState* gameState);

typedef struct GameState {
    /* 0x00 */ struct GraphicsContext* gfxCtx;
    /* 0x04 */ GameStateFunc main;
    /* 0x08 */ GameStateFunc destroy; // "cleanup"
    /* 0x0C */ GameStateFunc init;
    /* 0x10 */ u32 size;
    /* 0x14 */ Input input[MAXCONTROLLERS];
    /* 0x74 */ TwoHeadArena tha;
    /* 0x84 */ GameAlloc alloc;
    /* 0x98 */ u32 running;
    /* 0x9C */ u32 frames;
    /* 0xA0 */ u32 inPreNMIState;
} GameState; // size = 0xA4

#endif
