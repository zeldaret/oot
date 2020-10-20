#ifndef _Z_EN_FW_H_
#define _Z_EN_FW_H_

#include "ultra64.h"
#include "global.h"
#include "../ovl_En_Fd/z_en_fd.h"

struct EnFw;

typedef void (*EnFwActionFunc)(struct EnFw* this, GlobalContext* globalCtx);

typedef struct {
    /* 0x0000 */ u8 used;
    /* 0x0001 */ u8 timer;
    /* 0x0002 */ u8 initialTimer;
    /* 0x0004 */ f32 scale;
    /* 0x0008 */ f32 scaleSpeed;
    /* 0x000C */ Color_RGBA8 color;
    /* 0x0010 */ char unk_10[4];
    /* 0x0014 */ Vec3f pos;
    /* 0x0020 */ Vec3f speed;
    /* 0x002C */ Vec3f accel;
} EnFwPart;

typedef struct EnFw {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnFwActionFunc actionFunc;
    /* 0x0194 */ ColliderJntSph collider;
    /* 0x01B4 */ ColliderJntSphItem sphs[1];
    /* 0x01F4 */ Vec3f bompPos;
    /* 0x0200 */ u8 lastDmgHook;
    /* 0x0202 */ s16 runDirection;
    /* 0x0204 */ s16 bounceCnt;
    /* 0x0206 */ s16 unk_206; // unused.
    /* 0x0208 */ s16 damageTimer;
    /* 0x020A */ s16 explosionTimer;
    /* 0x020C */ s16 unk_20C; // unused
    /* 0x020E */ s16 slideTimer;
    /* 0x0210 */ s16 slideSfxTimer;
    /* 0x0212 */ s16 returnToParentTimer;
    /* 0x0214 */ s16 turnAround;
    /* 0x0218 */ f32 runRadius;
    /* 0x021C */ Vec3s limbDrawTable[11];
    /* 0x025E */ Vec3s transDrawTable[11];
    /* 0x02A0 */ EnFwPart particles[20];
} EnFw; // size = 0x0700

extern const ActorInit En_Fw_InitVars;

#endif
