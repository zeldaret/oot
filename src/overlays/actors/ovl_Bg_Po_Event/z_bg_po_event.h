#ifndef _Z_BG_PO_EVENT_H_
#define _Z_BG_PO_EVENT_H_

#include <ultra64.h>
#include <global.h>

struct BgPoEvent;

typedef void (*BgPoEventActionFunc)(struct BgPoEvent*, GlobalContext*);

typedef union BgPoEventUnion {
    u8 unk8[2];
    s16 unk16;
} BgPoEventUnion; // size = 0x2

typedef struct BgPoEvent {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgPoEventActionFunc actionFunc;
    /* 0x0168 */ u8 unk_168;
    /* 0x0169 */ u8 unk_169;
    /* 0x016A */ s8 unk_16A;
    /* 0x016B */ u8 unk_16B;
    /* 0x016C */ BgPoEventUnion unk_16C;
    /* 0x016E */ char unk_16E[2];
    /* 0x0170 */ ColliderTris collider1;
    /* 0x0190 */ ColliderTrisItem colliderItems[2];
} BgPoEvent; // size = 0x0248

extern const ActorInit Bg_Po_Event_InitVars;

#endif
