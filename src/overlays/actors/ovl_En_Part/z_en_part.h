#ifndef _Z_EN_PART_H_
#define _Z_EN_PART_H_

#include <ultra64.h>
#include <global.h>

struct EnPart;

typedef void (*EnPartActionFunc)(struct EnPart*, GlobalContext*);

typedef struct EnPart {
    /* 0x000 */ Actor actor;
    /* 0x14C */ u8 action;
    /* 0x14E */ s16 delay;
    /* 0x150 */ Gfx* displayList;
    /* 0x154 */ f32 rotation;
    /* 0x158 */ f32 rotationSpeed;
} EnPart; // size = 0x015C

extern const ActorInit En_Part_InitVars;

#endif
