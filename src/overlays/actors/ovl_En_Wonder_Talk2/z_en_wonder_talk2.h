#ifndef _Z_EN_WONDER_TALK2_H_
#define _Z_EN_WONDER_TALK2_H_

#include <ultra64.h>
#include <global.h>

struct EnWonderTalk2;

typedef void (*EnWonderTalk2Func)(struct EnWonderTalk2*, GlobalContext*);

typedef struct EnWonderTalk2 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ EnWonderTalk2Func actionFunc;
    /* 0x0150 */ s16 unk_150; // specified message type
    /* 0x0152 */ s16 switchFlag; // save information
    /* 0x0154 */ s16 unk_154;
    /* 0x0156 */ s16 unk_156;
    /* 0x0158 */ s16 unk_158;
    /* 0x015A */ u8 unk_15A;
    /* 0x015B */ u8 unk_15B;
    /* 0x015C */ f32 unk_15C; // processing range
    /* 0x0160 */ f32 height;
    /* 0x0164 */ Vec3f posRot;
} EnWonderTalk2; // size = 0x0170

extern const ActorInit En_Wonder_Talk2_InitVars;

#endif
