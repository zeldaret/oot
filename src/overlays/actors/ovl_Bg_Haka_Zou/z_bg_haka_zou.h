#ifndef _Z_BG_HAKA_ZOU_H_
#define _Z_BG_HAKA_ZOU_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x6C];
} BgHakaZou; // size = 0x01B8

extern const ActorInit Bg_Haka_Zou_InitVars;

#endif
