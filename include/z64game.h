#ifndef Z64GAME_H
#define Z64GAME_H
// This file is named "game" after game.c for now, this may change later with the system name

#include "ultra64/ultratypes.h"
#include "padmgr.h"
#include "tha.h"
#include "gamealloc.h"

struct GraphicsContext;
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

#if OOT_DEBUG
#define GAME_STATE_ALLOC(gameState, size, file, line) GameState_Alloc(gameState, size, file, line)
#else
#define GAME_STATE_ALLOC(gameState, size, file, line) THA_AllocTailAlign16(&(gameState)->tha, size)
#endif

void GameState_ReqPadData(GameState* gameState);
void GameState_Update(GameState* gameState);
void GameState_Init(GameState* gameState, GameStateFunc init, struct GraphicsContext* gfxCtx);
void GameState_Destroy(GameState* gameState);
GameStateFunc GameState_GetInit(GameState* gameState);
u32 GameState_IsRunning(GameState* gameState);

#if OOT_DEBUG
void* GameState_Alloc(GameState* gameState, size_t size, const char* file, int line);
#endif
void GameState_Realloc(GameState* gameState, size_t size);

#endif
