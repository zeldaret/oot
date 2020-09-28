#ifndef _Z_EN_NIW_H_
#define _Z_EN_NIW_H_

#include <ultra64.h>
#include <global.h>

struct EnNiw;

typedef void (*EnNiwActionFunc)(struct EnNiw*, GlobalContext*);

typedef struct EnNiw {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s limbDrawTable[16];
    /* 0x01F0 */ Vec3s transitionDrawTable[16];
    /* 0x0250 */ EnNiwActionFunc actionFunc;
    /* 0x0254 */ s16 unk_254;
    /* 0x0256 */ s16 unk_256;
    /* 0x0258 */ s16 unk_258;
    /* 0x025A */ s16 unk_25A;
    /* 0x025C */ s16 unk_25C;
    /* 0x025E */ s16 unk_25E;
    /* 0x0260 */ s16 unk_260;
    /* 0x0262 */ s16 unk_262;
    /* 0x0264 */ s16 unk_264;
    /* 0x0266 */ s16 unk_266;
    /* 0x0268 */ s16 unk_268;
    /* 0x026A */ s16 unk_26A;
    /* 0x026C */ f32 unk_26C[10];
    /* 0x0294 */ s16 unk_294;
    /* 0x0296 */ s16 unk_296;
    /* 0x0298 */ s16 unk_298;
    /* 0x029A */ s16 unk_29A;
    /* 0x029C */ s16 unk_29C;
    /* 0x029E */ s16 unk_29E;
    /* 0x02A0 */ s16 unk_2A0;
    /* 0x02A2 */ s16 unk_2A2;
    /* 0x02A4 */ s16 unk_2A4;
    /* 0x02A6 */ s16 unk_2A6;
    /* 0x02A8 */ s16 unk_2A8;
    /* 0x02AA */ s16 unk_2AA;
    /* 0x02AC */ f32 unk_2AC;
    /* 0x02B0 */ f32 unk_2B0;
    /* 0x02B4 */ f32 unk_2B4;
    /* 0x02B8 */ f32 unk_2B8;
    /* 0x02BC */ f32 unk_2BC;
    /* 0x02C0 */ f32 unk_2C0;
    /* 0x02C4 */ f32 unk_2C4;
    /* 0x02C8 */ f32 unk_2C8;
    /* 0x02CC */ f32 unk_2CC;
    /* 0x02D0 */ f32 unk_2D0;
    /* 0x02D4 */ f32 unk_2D4;
    /* 0x02D8 */ f32 unk_2D8;
    /* 0x02DC */ f32 unk_2DC;
    /* 0x02E0 */ f32 unk_2E0;
    /* 0x02E4 */ s16 unk_2E4;
    /* 0x02E6 */ s16 unk_2E6;
    /* 0x02E8 */ s16 path;
    /* 0x02EA */ s16 waypoint;
    /* 0x02EC */ s16 unk_2EC;
    /* 0x02EE */ s16 unk_2EE;
    /* 0x02F0 */ f32 unk_2F0;
    /* 0x02F4 */ f32 unk_2F4;
    /* 0x02F8 */ f32 unk_2F8;
    /* 0x02FC */ f32 unk_2FC;
    /* 0x0300 */ f32 unk_300;
    /* 0x0304 */ f32 unk_304;
    /* 0x0308 */ u8 unk_308;
    /* 0x030A */ char unk_30A[2];
    /* 0x030C */ ColliderCylinder collider;
    /* 0x0358 */ char unk_358[0x460];
} EnNiw; // size = 0x07B8

extern const ActorInit En_Niw_InitVars;

#endif
