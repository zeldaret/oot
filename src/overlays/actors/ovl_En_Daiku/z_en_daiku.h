#ifndef _Z_EN_DAIKU_H_
#define _Z_EN_DAIKU_H_

#include <ultra64.h>
#include <global.h>

struct EnDaiku;

typedef void (*EnDaikuActionFunc)(struct EnDaiku*, GlobalContext*);

typedef struct EnDaiku {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnDaikuActionFunc actionFunc;
    /* 0x0194 */ ColliderCylinder collider;
    /* 0x01E0 */ char unk_194[4];
    /* 0x01E4 */ s32 nok1E4;
    /* 0x01E8 */ char unk_1E8[4];
    /* 0x01EC */ s32 nok1EC;
    /* 0x01F0 */ f32 nok1F0;
    /* 0x01F4 */ s32 nok1F4;
    /* 0x01F8 */ char unk_1F8[4];
    /* 0x01FC */ s32 nok1FC;
    /* 0x0200 */ s32 nok200;
    /* 0x0204 */ s32 nok204;
    //s16 nok206 // is this nok204 but since it's cast to s16 it's loaded as s16 nok206; ?
    /* 0x0208 */ s16 nok208;
    /* 0x020A */ char unk_20A[2]; // looks like padding
    /* 0x020C */ Vec3f nok20C;
    /* 0x0218 */ Vec3f nok218;
    /* 0x0224 */ Vec3f nok224;
    /* 0x0230 */ Vec3f nok230;
    /* 0x023C */ s32 nok23C;
    /* 0x0240 */ s32 nok240;
    /* 0x0244 */ struct_80034A14_arg1 nok244;
    /* 0x026C */ Vec3s limbDrawTable[17];
    /* 0x02D2 */ Vec3s transitionDrawTable[17];
    /* 0x0338 */ Vec3s nok338;
    /* 0x033E */ char unk_33E[2]; // looks like padding
    /* 0x0340 */ Vec3f nok340;
} EnDaiku; // size = 0x034C

extern const ActorInit En_Daiku_InitVars;

#endif
