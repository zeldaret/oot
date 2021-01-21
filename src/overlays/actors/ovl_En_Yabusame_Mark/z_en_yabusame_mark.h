#ifndef _Z_EN_YABUSAME_MARK_H_
#define _Z_EN_YABUSAME_MARK_H_

#include "ultra64.h"
#include "global.h"

struct EnYabusameMark;

typedef void (*EnYabusameMarkActionFunc)(struct EnYabusameMark*, GlobalContext*);

typedef struct EnYabusameMark {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ EnYabusameMarkActionFunc actionFunc;
	/* 0x0150 */ s16 typeIndex;
	/* 0x0152 */ s16 subType;
	/* 0x0154 */ Vec3f unk_154;
	/* 0x0160 */ Vec3f unk_160;
	/* 0x016C */ Vec3f unk_16C;
	/* 0x0178 */ Vec3f unk_178;
	/* 0x0184 */ Vec3f unk_184;
	/* 0x0190 */ ColliderQuad collider;
} EnYabusameMark; // size = 0x0210

extern const ActorInit En_Yabusame_Mark_InitVars;

#endif
