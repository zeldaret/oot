#ifndef _Z_EN_WF_H_
#define _Z_EN_WF_H_

#include "ultra64.h"
#include "global.h"

struct EnWf;

typedef void (*EnWfActionFunc)(struct EnWf*, GlobalContext*);

typedef enum {
    /*  0 */ WOLFOS_LIMB_NONE,
    /*  1 */ WOLFOS_LIMB_ROOT,
    /*  2 */ WOLFOS_LIMB_BACK_LEFT_THIGH,
    /*  3 */ WOLFOS_LIMB_BACK_LEFT_SHIN,
    /*  4 */ WOLFOS_LIMB_BACK_LEFT_PASTERN,
    /*  5 */ WOLFOS_LIMB_BACK_LEFT_PAW,
    /*  6 */ WOLFOS_LIMB_TAIL,
    /*  7 */ WOLFOS_LIMB_ABDOMEN,
    /*  8 */ WOLFOS_LIMB_BACK_RIGHT_THIGH,
    /*  9 */ WOLFOS_LIMB_BACK_RIGHT_SHIN,
    /* 10 */ WOLFOS_LIMB_BACK_RIGHT_PASTERN,
    /* 11 */ WOLFOS_LIMB_BACK_RIGHT_PAW,
    /* 12 */ WOLFOS_LIMB_THORAX,
    /* 13 */ WOLFOS_LIMB_FRONT_RIGHT_UPPER_LEG,
    /* 14 */ WOLFOS_LIMB_FRONT_RIGHT_LOWER_LEG,
    /* 15 */ WOLFOS_LIMB_FRONT_RIGHT_CLAW,
    /* 16 */ WOLFOS_LIMB_HEAD_ROOT,
    /* 17 */ WOLFOS_LIMB_HEAD,
    /* 18 */ WOLFOS_LIMB_EYES,
    /* 19 */ WOLFOS_LIMB_FRONT_LEFT_UPPER_LEG,
    /* 20 */ WOLFOS_LIMB_FRONT_LEFT_LOWER_LEG,
    /* 21 */ WOLFOS_LIMB_FRONT_LEFT_CLAW,
    /* 22 */ WOLFOS_LIMB_MAX
} EnWfLimb;

typedef struct EnWf {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ Vec3s bodyPartsPos[10];
    /* 0x0188 */ SkelAnime skelAnime;
    /* 0x01CC */ Vec3s jointTable[WOLFOS_LIMB_MAX];
    /* 0x0250 */ Vec3s morphTable[WOLFOS_LIMB_MAX];
    /* 0x02D4 */ s32 unk_2D4;
    /* 0x02D8 */ s32 action;
    /* 0x02DC */ EnWfActionFunc actionFunc;
    /* 0x02E0 */ s16 unk_2E0;
    /* 0x02E2 */ s16 unk_2E2;
    /* 0x02E4 */ s16 fireTimer;
    /* 0x02E6 */ u8 unk_2E6;
    /* 0x02E8 */ s32 actionTimer; // Used to make an action last for a certain amount of time
    /* 0x02EC */ f32 unk_2EC;
    /* 0x02F0 */ f32 unk_2F0;
    /* 0x02F4 */ f32 unk_2F4;
    /* 0x02F8 */ s16 unk_2F8;
    /* 0x02FA */ s16 unk_2FA;
    /* 0x02FC */ s16 switchFlag;
    /* 0x02FE */ s16 unk_2FE;
    /* 0x0300 */ s16 unk_300;
    /* 0x0302 */ u8 eyeIndex;
    /* 0x0304 */ ColliderJntSph colliderSphere;
    /* 0x0324 */ ColliderJntSphElement colliderSphereElements[4];
    /* 0x0424 */ ColliderCylinder colliderCylinder1;
    /* 0x0470 */ ColliderCylinder colliderCylinder2;
    /* 0x04BC */ Vec3f unk_4BC;
    /* 0x04C8 */ Vec3f unk_4C8;
    /* 0x04D4 */ Vec3s headRot;
} EnWf; // size = 0x04DC

typedef enum {
    /* 0 */ WOLFOS_NORMAL,
    /* 1 */ WOLFOS_WHITE
} EnWfType;

#endif
