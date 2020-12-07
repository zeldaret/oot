#ifndef _Z_EN_SYATEKI_MAN_H_
#define _Z_EN_SYATEKI_MAN_H_

#include "ultra64.h"
#include "global.h"

struct EnSyatekiMan;

typedef void (*EnSyatekiManActionFunc) (struct EnSyatekiMan*, GlobalContext*);
typedef void (*EnSyaketiManOtherFunc) (struct EnSyatekiMan*);

typedef struct EnSyatekiMan {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s limbDrawTbl[9];
    /* 0x01C6 */ Vec3s transitionDrawTbl[9];
    /* 0x01FC */ EnSyatekiManActionFunc actionFunc;
    /* 0x0200 */ Vec3s unk_200;
    /* 0x0206 */ Vec3s unk_206;
    /* 0x020C */ s16 unk_20C;
    /* 0x020E */ s16 unk_20E;
    /* 0x0210 */ s16 unk_210;
    /* 0x0212 */ s16 unk_212;
    /* 0x0214 */ s16 unk_214;
    /* 0x0216 */ s16 unk_216;
    /* 0x0218 */ s32 unk_218;
    /* 0x021C */ u8 unk_21C;
    /* 0x0220 */ Actor* unk_220;
    /* 0x0224 */ EnSyaketiManOtherFunc unk_224;
    /* 0x0228 */ s16 unk_228;
} EnSyatekiMan; // size = 0x022C

extern const ActorInit En_Syateki_Man_InitVars;

#endif
