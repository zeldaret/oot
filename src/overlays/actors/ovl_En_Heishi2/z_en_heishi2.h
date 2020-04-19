#ifndef _Z_EN_HEISHI2_H_
#define _Z_EN_HEISHI2_H_

#include <ultra64.h>
#include <global.h>
#include "../ovl_Bg_Gate_Shutter/z_bg_gate_shutter.h"

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s limbDrawTable[17];
    /* 0x01F6 */ Vec3s transitionDrawTable[17];
    /* 0x025C */ ActorFunc actionFunc;
    /* 0x0260 */ Vec3s unk_260;
    /* 0x0266 */ char unk_266[0x06];
    /* 0x026C */ Vec3s unk_26C; // padding inbetween these
    /* 0x0274 */ Vec3f unk_274; 
    /* 0x0280 */ Vec3f unk_280; // camera related
    /* 0x028C */ Vec3f unk_28C; // camera related
    /* 0x0298 */ Vec3f unk_298; // camera related
    /* 0x02A4 */ char unk_2A4[0x18];
    /* 0x02BC */ Vec3f unk_2BC; // camera related
    /* 0x02C8 */ char unk_2C8[0x2A];
    /* 0x02F2 */ s16 gateTimer; // starts counting down when guard starts to open gate.
    /* 0x02F4 */ char unk_2F4[0xA];
    /* 0x02FE */ s16 initParams; // copy of actor params at init
    /* 0x0300 */ s16 unk_300; // mask related
    /* 0x0302 */ char unk_302[0x6];
    /* 0x0308 */ u8 audioFlag;
    /* 0x0309 */ char unk_309[0x3];
    /* 0x030C */ u8 unk_30C;
    /* 0x030D */ char unk_30D[0x3];
    /* 0x0310 */ s16 cameraId;
    /* 0x0314 */ BgGateShutter* attached;
    /* 0x0318 */ char unk_318[0x18];
    /* 0x0330 */ MtxF mtxf_330;
    /* 0x0370 */ char unk_370[0x28];
    /* 0x0398 */ ColliderCylinderMain collider;
} EnHeishi2; // size = 0x03E4

extern const ActorInit En_Heishi2_InitVars;

#endif
