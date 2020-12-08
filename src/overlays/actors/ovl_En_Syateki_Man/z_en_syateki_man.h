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
    /* 0x0200 */ Vec3s headRot;
    /* 0x0206 */ Vec3s bodyRot;
    /* 0x020C */ s16 unk_20C; // Unused
    /* 0x020E */ s16 unk_20E; // Unused
    /* 0x0210 */ s16 unk_210; // Talk state
    /* 0x0212 */ s16 unk_212; // Text box count?
    /* 0x0214 */ s16 unk_214; // actionState
    /* 0x0216 */ s16 timer;
    /* 0x0218 */ s32 unk_218; // Get Item id
    /* 0x021C */ u8 unk_21C; // game active flag?
    /* 0x0220 */ Actor* tempGallery;
    /* 0x0224 */ EnSyaketiManOtherFunc unk_224; // Seems to be part of a blink system with unk_20C and unk_20E, but it's unused.
    /* 0x0228 */ s16 unk_228; //one point demo-related. Camera id?
} EnSyatekiMan; // size = 0x022C

extern const ActorInit En_Syateki_Man_InitVars;

#endif
