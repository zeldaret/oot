#ifndef _Z_EN_PO_RELAY_H_
#define _Z_EN_PO_RELAY_H_

#include <ultra64.h>
#include <global.h>

struct EnPoRelay;

typedef void (*EnPoRelayActionFunc)(struct EnPoRelay*, struct GlobalContext*);

typedef struct EnPoRelay {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnPoRelayActionFunc actionFunc;
    /* 0x0194 */ u8 unk_194;
    /* 0x0195 */ u8 unk_195;
    /* 0x0196 */ s16 unk_196;
    /* 0x0198 */ s16 unk_198;
    /* 0x019A */ s16 unk_19A;
    /* 0x019C */ u16 unk_19C;
    /* 0x019E */ u16 unk_19E;
    /* 0x01A0 */ Vec3s unk_1A0[18];
    /* 0x020C */ Vec3s unk_20C[18];
    /* 0x0278 */ u8 unk_278;
    /* 0x0279 */ u8 unk_279;
    /* 0x027A */ u8 unk_27A;
    /* 0x027B */ u8 unk_27B;
    /* 0x027C */ z_Light* light;
    /* 0x0280 */ LightInfoPositional lightInfo;
    /* 0x0290 */ ColliderCylinder collider;
} EnPoRelay; // size = 0x02DC

extern const ActorInit En_Po_Relay_InitVars;

#endif
