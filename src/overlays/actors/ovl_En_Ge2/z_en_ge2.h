#ifndef _Z_EN_GE2_H_
#define _Z_EN_GE2_H_

#include <ultra64.h>
#include <global.h>

struct EnGe2;

typedef void (*EnGe2ActionFunc)(struct EnGe2*, GlobalContext*);

typedef struct EnGe2 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderCylinder collider;
    /* 0x0198 */ SkelAnime skelAnime;
    /* 0x01DC */ Vec3s limbDrawTbl;
    /* 0x01E2 */ char unk_1E2[0x7E];
    /* 0x0260 */ Vec3s unk_260;
    /* 0x0266 */ char unk_266[0x7E];
    /* 0x02E4 */ s16 unk_2E4;
    /* 0x02E6 */ s16 unk_2E6;
    /* 0x02E8 */ Vec3s unk_2E8;
    /* 0x02EE */ Vec3s unk_2EE;
    /* 0x02F4 */ u16 unk_2F4;
    /* 0x02F6 */ s16 unk_2F6;
    /* 0x02F8 */ s16 unk_2F8;
    /* 0x02FA */ char unk_2FA[0x2];
    /* 0x02FC */ f32 unk_2FC;
    /* 0x0300 */ u16 unk_300;
    /* 0x0302 */ u16 unk_302;
    /* 0x0304 */ s8 unk_304;
    /* 0x0305 */ u8 unk_305;
    /* 0x0306 */ u8 unk_306;
    /* 0x0307 */ char unk_307[0x1];
    /* 0x0308 */ EnGe2ActionFunc actionFunc;
} EnGe2; // size = 0x030C

extern const ActorInit En_Ge2_InitVars;

#endif
