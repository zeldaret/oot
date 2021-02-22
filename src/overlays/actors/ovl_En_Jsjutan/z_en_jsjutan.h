#ifndef _Z_EN_JSJUTAN_H_
#define _Z_EN_JSJUTAN_H_

#include "ultra64.h"
#include "global.h"

struct EnJsjutan;

typedef struct EnJsjutan {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0165 */ u8 unk_164;
    /* 0x0165 */ char unk_165[0x03]; // padding (?)
    /* 0x0168 */ f32 unk_168; // actorYPos
    /* 0x016C */ f32 shadowAlpha;
    /* 0x0170 */ f32 unk_170;
    /* 0x0174 */ u8 unk_174;
    /* 0x0175 */ u8 unk_175;
    /* 0x0176 */ char unk_176[0x02]; // padding (?)
} EnJsjutan; // size = 0x0178

extern const ActorInit En_Jsjutan_InitVars;

#endif
