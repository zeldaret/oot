#ifndef Z64GAME_H
#define Z64GAME_H
// This file is named "game" after game.c for now, this may change later with the system name

#include "ultra64/ultratypes.h"
#include "libu64/pad.h"
#include "gamealloc.h"
#include "romfile.h"
#include "tha.h"

struct GraphicsContext;

// Used in Graph_GetNextGameState in graph.c
#define DEFINE_GAMESTATE_INTERNAL(typeName, enumName) enumName,
#define DEFINE_GAMESTATE(typeName, enumName, name) DEFINE_GAMESTATE_INTERNAL(typeName, enumName)
typedef enum GameStateId {
#include "tables/gamestate_table.h"
    GAMESTATE_ID_MAX
} GameStateId;
#undef DEFINE_GAMESTATE
#undef DEFINE_GAMESTATE_INTERNAL

typedef struct GameStateOverlay {
    /* 0x00 */ void* loadedRamAddr;
    /* 0x04 */ RomFile file; // if applicable
    /* 0x0C */ void* vramStart; // if applicable
    /* 0x10 */ void* vramEnd; // if applicable
    /* 0x14 */ void* unk_14;
    /* 0x18 */ void* init;
    /* 0x1C */ void* destroy;
    /* 0x20 */ void* unk_20;
    /* 0x24 */ void* unk_24;
    /* 0x28 */ s32 unk_28;
    /* 0x2C */ u32 instanceSize;
} GameStateOverlay; // size = 0x30

extern GameStateOverlay gGameStateOverlayTable[GAMESTATE_ID_MAX];

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

void GameState_ReqPadData(GameState* gameState);
void GameState_Update(GameState* gameState);
void GameState_InitArena(GameState* gameState, size_t size);
void GameState_Realloc(GameState* gameState, size_t size);
void GameState_Init(GameState* gameState, GameStateFunc init, struct GraphicsContext* gfxCtx);
void GameState_Destroy(GameState* gameState);
GameStateFunc GameState_GetInit(GameState* gameState);
u32 GameState_IsRunning(GameState* gameState);
#if DEBUG_FEATURES
void* GameState_Alloc(GameState* gameState, size_t size, const char* file, int line);
#define GAME_STATE_ALLOC(gameState, size, file, line) GameState_Alloc(gameState, size, file, line)
#else
#define GAME_STATE_ALLOC(gameState, size, file, line) THA_AllocTailAlign16(&(gameState)->tha, size)
#endif

#endif
