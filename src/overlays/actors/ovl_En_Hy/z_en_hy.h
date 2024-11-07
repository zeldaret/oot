#ifndef Z_EN_HY_H
#define Z_EN_HY_H

#include "ultra64.h"
#include "global.h"

#define ENHY_GET_TYPE(thisx) PARAMS_GET_S((thisx)->params, 0, 7)
#define ENHY_GET_PATH_INDEX(thisx) PARAMS_GET_S((thisx)->params, 7, 4)

typedef enum EnHyType {
    /*  0 */ ENHY_TYPE_DOG_LADY,
    /*  1 */ ENHY_TYPE_WOMAN_3,
    /*  2 */ ENHY_TYPE_MAN_1_BEARD,
    /*  3 */ ENHY_TYPE_MAN_2_BALD,
    /*  4 */ ENHY_TYPE_MAN_1_SHAVED_BLACK_SHIRT,
    /*  5 */ ENHY_TYPE_BEGGAR,
    /*  6 */ ENHY_TYPE_OLD_WOMAN,
    /*  7 */ ENHY_TYPE_OLD_MAN,
    /*  8 */ ENHY_TYPE_YOUNG_WOMAN_BROWN_HAIR,
    /*  9 */ ENHY_TYPE_MAN_2_MUSTACHE_RED_SHIRT,
    /* 10 */ ENHY_TYPE_MAN_2_MUSTACHE_BLUE_SHIRT,
    /* 11 */ ENHY_TYPE_YOUNG_WOMAN_ORANGE_HAIR,
    /* 12 */ ENHY_TYPE_MAN_2_ALT_MUSTACHE,
    /* 13 */ ENHY_TYPE_MAN_1_BOWL_CUT_PURPLE_SHIRT,
    /* 14 */ ENHY_TYPE_MAN_2_BEARD,
    /* 15 */ ENHY_TYPE_OLD_MAN_BALD_BROWN_ROBE,
    /* 16 */ ENHY_TYPE_MAN_2_MUSTACHE_WHITE_SHIRT,
    /* 17 */ ENHY_TYPE_MAN_1_SHAVED_GREEN_SHIRT,
    /* 18 */ ENHY_TYPE_WOMAN_2,
    /* 19 */ ENHY_TYPE_OLD_MAN_BALD_PURPLE_ROBE,
    /* 20 */ ENHY_TYPE_MAN_1_BOWL_CUT_GREEN_SHIRT,
    /* 21 */ ENHY_TYPE_MAX
} EnHyType;

typedef enum EnHyLimb {
    /* 0x00 */ ENHY_LIMB_NONE,
    /* 0x01 */ ENHY_LIMB_PELVIS,
    /* 0x02 */ ENHY_LIMB_LEFT_THIGH,
    /* 0x03 */ ENHY_LIMB_LEFT_SHIN,
    /* 0x04 */ ENHY_LIMB_LEFT_FOOT,
    /* 0x05 */ ENHY_LIMB_RIGHT_THIGH,
    /* 0x06 */ ENHY_LIMB_RIGHT_SHIN,
    /* 0x07 */ ENHY_LIMB_RIGHT_FOOT,
    /* 0x08 */ ENHY_LIMB_TORSO,
    /* 0x09 */ ENHY_LIMB_LEFT_UPPER_ARM,
    /* 0x0A */ ENHY_LIMB_LEFT_FOREARM,
    /* 0x0B */ ENHY_LIMB_LEFT_HAND,
    /* 0x0C */ ENHY_LIMB_RIGHT_UPPER_ARM,
    /* 0x0D */ ENHY_LIMB_RIGHT_FOREARM,
    /* 0x0E */ ENHY_LIMB_RIGHT_HAND,
    /* 0x0F */ ENHY_LIMB_HEAD,
    /* 0x10 */ ENHY_LIMB_MAX
} EnHyLimb;

struct EnHy;

typedef void (*EnHyActionFunc)(struct EnHy*, PlayState*);

typedef struct EnHy {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnHyActionFunc actionFunc;
    /* 0x0194 */ char unk_194; // unused
    /* 0x0195 */ u8 pathReverse;
    /* 0x0196 */ s8 objectSlotHead;
    /* 0x0197 */ s8 objectSlotUpperSkel; // upper body limbs object, 7 < limb < 15 (always same as objectSlotLowerSkel),
    /* 0x0198 */ s8 objectSlotLowerSkel; // lower body limbs object, limb <= 7
    /* 0x0199 */ s8 objectSlotOsAnime;
    /* 0x019C */ ColliderCylinder collider;
    /* 0x01E8 */ NpcInteractInfo interactInfo;
    /* 0x0210 */ Path* path;
    /* 0x0214 */ s8 waypoint;
    /* 0x0215 */ s8 playedSfx;
    /* 0x0216 */ char unk_216[2]; // unused
    /* 0x0218 */ s16 curEyeIndex;
    /* 0x021A */ s16 nextEyeIndexTimer;
    /* 0x021C */ s16 fidgetTableY[ENHY_LIMB_MAX];
    /* 0x023C */ s16 fidgetTableZ[ENHY_LIMB_MAX];
    /* 0x025C */ f32 interactRange;
    /* 0x0260 */ s32 getItemId;
    /* 0x0264 */ Vec3f modelOffset;
    /* 0x0270 */ Vec3s jointTable[ENHY_LIMB_MAX];
    /* 0x02D0 */ Vec3s morphTable[ENHY_LIMB_MAX];
    /* 0x0330 */ u16 talonEventChkInf;
} EnHy; // size = 0x0334

#endif
