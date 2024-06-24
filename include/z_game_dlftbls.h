#ifndef Z_GAME_DLFTBLS_H
#define Z_GAME_DLFTBLS_H

#include "ultra64.h"
#include "romfile.h"
#include "unk.h"

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

/* START typedef enum GameStateId */
// Used in Graph_GetNextGameState in graph.c
#define DEFINE_GAMESTATE_INTERNAL(typeName, enumName) enumName,
#define DEFINE_GAMESTATE(typeName, enumName, name) DEFINE_GAMESTATE_INTERNAL(typeName, enumName)
typedef enum {
#include "tables/gamestate_table.h"
    GAMESTATE_ID_MAX
} GameStateId;
#undef DEFINE_GAMESTATE
#undef DEFINE_GAMESTATE_INTERNAL
/* END typedef enum GameStateId */

void Overlay_LoadGameState(GameStateOverlay* overlayEntry);
void Overlay_FreeGameState(GameStateOverlay* overlayEntry);

extern GameStateOverlay gGameStateOverlayTable[GAMESTATE_ID_MAX];

#endif
