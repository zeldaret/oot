#ifndef _Z_BG_HIDAN_CURTAIN_H_
#define _Z_BG_HIDAN_CURTAIN_H_

#include <ultra64.h>
#include <global.h>

struct BgHidanCurtain;

typedef void (*BgHidanCurtainActionFunc)(struct BgHidanCurtain*, GlobalContext*);

typedef struct BgHidanCurtainParams  {
	/* 0x00 */ s16 radius;
	/* 0x02 */ s16 height;
	/* 0x04 */ f32 scale;
	/* 0x08 */ f32 riseDist;
	/* 0x0C */ f32 riseSpeed;
} BgHidanCurtainParams; // size = 0x10

typedef struct BgHidanCurtain {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ BgHidanCurtainActionFunc actionFunc;
	/* 0x0150 */ u8 type;
	/* 0x0151 */ u8 chestFlag;
	/* 0x0152 */ u8 isSmall;
	/* 0x0153 */ u8 alpha;
	/* 0x0154 */ s16 timer;
	/* 0x0156 */ s16 texScroll;
	/* 0x0158 */ ColliderCylinder collider;
} BgHidanCurtain; // size = 0x01A4

extern const ActorInit Bg_Hidan_Curtain_InitVars;

#endif
