#ifndef _Z_EN_YABUSAME_MARK_H_
#define _Z_EN_YABUSAME_MARK_H_

#include "ultra64.h"
#include "global.h"

struct EnYabusameMark;

typedef struct EnYabusameMark {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xC4];
} EnYabusameMark; // size = 0x0210

extern const ActorInit En_Yabusame_Mark_InitVars;

#endif
