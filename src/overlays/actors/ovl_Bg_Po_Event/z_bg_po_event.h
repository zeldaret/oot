#ifndef _Z_BG_PO_EVENT_H_
#define _Z_BG_PO_EVENT_H_

#include <ultra64.h>
#include <global.h>

struct BgPoEvent;

typedef struct BgPoEvent {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xFC];
} BgPoEvent; // size = 0x0248

extern const ActorInit Bg_Po_Event_InitVars;

#endif
