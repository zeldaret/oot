#ifndef Z_ITEM_SCENE_CHANGE_H
#define Z_ITEM_SCENE_CHANGE_H

#include "ultra64.h"
#include "z64actor.h"

struct EnSceneChange;

typedef void (*EnSceneChangeActionFunc)(struct EnSceneChange*, struct PlayState*);

typedef struct EnSceneChange {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ EnSceneChangeActionFunc actionFunc;
} EnSceneChange; // size = 0x0150

#endif
