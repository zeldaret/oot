#ifndef Z_BG_HIDAN_SEKIZOU_H
#define Z_BG_HIDAN_SEKIZOU_H

#include "ultra64.h"
#include "global.h"

struct BgHidanSekizou;

typedef struct BgHidanSekizou {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1C8];
} BgHidanSekizou; // size = 0x0314

#endif
