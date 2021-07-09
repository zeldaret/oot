#ifndef _Z_EN_TEST_H_
#define _Z_EN_TEST_H_

#include "ultra64.h"
#include "global.h"

struct EnTest;

typedef void (*EnTestActionFunc)(struct EnTest*, GlobalContext*);

typedef struct EnTest {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ Vec3s bodyPartsPos[10];
    /* 0x0188 */ SkelAnime skelAnime_188;
    /* 0x01CC */ Vec3s limbDrawTable_1CC[61];
    /* 0x033A */ Vec3s transitionTbl_16E[61];
    /* 0x04A8 */ SkelAnime skelAnime_4A8;
    /* 0x04EC */ Vec3s limbDrawTable_4EC[61];
    /* 0x065A */ Vec3s transitionTbl_65A[61];
    /* 0x07C8 */ u8 unk_7C8;
    /* 0x07CC */ EnTestActionFunc actionFunc;
    /* 0x07D0 */ s16 unk_7D0;
    /* 0x07D2 */ s16 unk_7D2;
    /* 0x07D4 */ s16 unk_7D4;
    /* 0x07D6 */ char unk_7D6[0x2];
    /* 0x07D8 */ s16 unk_7D8;
    /* 0x07DA */ char unk_7DA[0x2];
    /* 0x07DC */ u8 unk_7DC;
    /* 0x07DD */ char unk_7DD[0x1];
    /* 0x07DE */ u8 unk_7DE;
    /* 0x07E0 */ s16 iceTimer;
    /* 0x07E2 */ u8 unk_7E2;
    /* 0x07E4 */ s32 unk_7E4;
    /* 0x07E8 */ s32 timer;
    /* 0x07EC */ f32 unk_7EC;
    /* 0x07F0 */ BodyBreak bodyBreak;
    /* 0x0808 */ s8 atOn;
    /* 0x080C */ s32 effectIndex;
    /* 0x0810 */ ColliderCylinder collider;
    /* 0x085C */ ColliderQuad swordCollider;
    /* 0x08DC */ ColliderCylinder shieldCollider;
} EnTest; // size = 0x0928

typedef enum {
    /* 0 */ STALFOS_INVISIBLE,
    /* 1 */ STALFOS_1,
    /* 2 */ STALFOS_2,
    /* 3 */ STALFOS_CEILING
} StalfosType;

typedef enum {
    /* 0x00 */ STALFOS_LIMB_NONE,
    /* 0x01 */ STALFOS_LIMB_ROOT,
    /* 0x02 */ STALFOS_LIMB_UPPERBODY_ROOT,
    /* 0x03 */ STALFOS_LIMB_LUMBARVERTEBRA2_ROOT,
    /* 0x04 */ STALFOS_LIMB_LUMBARVERTEBRA1_ROOT,
    /* 0x05 */ STALFOS_LIMB_CERVICALVERTEBRA2_ROOT,
    /* 0x06 */ STALFOS_LIMB_HEAD_ROOT,
    /* 0x07 */ STALFOS_LIMB_7,
    /* 0x08 */ STALFOS_LIMB_8,
    /* 0x09 */ STALFOS_LIMB_JAW_ROOT,
    /* 0x0A */ STALFOS_LIMB_JAW,
    /* 0x0B */ STALFOS_LIMB_HEAD,
    /* 0x0C */ STALFOS_LIMB_CERVICALVERTEBRA1,
    /* 0x0D */ STALFOS_LIMB_CERVICALVERTEBRA2,
    /* 0x0E */ STALFOS_LIMB_LUMBARVERTEBRA1,
    /* 0x0F */ STALFOS_LIMB_RIBCAGE,
    /* 0x10 */ STALFOS_LIMB_SHOULDER_R_ROOT,
    /* 0x11 */ STALFOS_LIMB_SHOULDER_ARMOR_R_ROOT,
    /* 0x12 */ STALFOS_LIMB_SHOULDER_ARMOR_R,
    /* 0x13 */ STALFOS_LIMB_SHOULDER_L_ROOT,
    /* 0x14 */ STALFOS_LIMB_SHOULDER_ARMOR_L_ROOT,
    /* 0x15 */ STALFOS_LIMB_SHOULDER_ARMOR_L,
    /* 0x16 */ STALFOS_LIMB_ARM_L_ROOT,
    /* 0x17 */ STALFOS_LIMB_HUMERUS_L_ROOT,
    /* 0x18 */ STALFOS_LIMB_FOREARM_L_ROOT,
    /* 0x19 */ STALFOS_LIMB_HAND_L_ROOT,
    /* 0x1A */ STALFOS_LIMB_HAND_L,
    /* 0x1B */ STALFOS_LIMB_SHIELD,
    /* 0x1C */ STALFOS_LIMB_FOREARM_L,
    /* 0x1D */ STALFOS_LIMB_HUMERUS_L,
    /* 0x1E */ STALFOS_LIMB_ARM_R_ROOT,
    /* 0x1F */ STALFOS_LIMB_HUMERUS_R_ROOT,
    /* 0x20 */ STALFOS_LIMB_FOREARM_R_ROOT,
    /* 0x21 */ STALFOS_LIMB_HAND_R_ROOT,
    /* 0x22 */ STALFOS_LIMB_SWORD,
    /* 0x23 */ STALFOS_LIMB_HAND_R,
    /* 0x24 */ STALFOS_LIMB_FOREARM_R,
    /* 0x25 */ STALFOS_LIMB_HUMERUS_R,
    /* 0x26 */ STALFOS_LIMB_LUMBARVERTEBRA2,
    /* 0x27 */ STALFOS_LIMB_LOWERBODY_ROOT,
    /* 0x28 */ STALFOS_LIMB_WAIST_ROOT,
    /* 0x29 */ STALFOS_LIMB_LEGS_ROOT,
    /* 0x2A */ STALFOS_LIMB_LEG_L_ROOT,
    /* 0x2B */ STALFOS_LIMB_FEMUR_L_ROOT,
    /* 0x2C */ STALFOS_LIMB_LOWERLEG_L_ROOT,
    /* 0x2D */ STALFOS_LIMB_ANKLE_L_ROOT,
    /* 0x2E */ STALFOS_LIMB_ANKLE_L,
    /* 0x2F */ STALFOS_LIMB_FOOT_L_ROOT,
    /* 0x30 */ STALFOS_LIMB_FOOT_L,
    /* 0x31 */ STALFOS_LIMB_LOWERLEG_L,
    /* 0x32 */ STALFOS_LIMB_FEMUR_L,
    /* 0x33 */ STALFOS_LIMB_LEG_R_ROOT,
    /* 0x34 */ STALFOS_LIMB_FEMUR_R_ROOT,
    /* 0x35 */ STALFOS_LIMB_LOWERLEG_R_ROOT,
    /* 0x36 */ STALFOS_LIMB_ANKLE_R_ROOT,
    /* 0x37 */ STALFOS_LIMB_ANKLE_R,
    /* 0x38 */ STALFOS_LIMB_FOOT_R_RROT,
    /* 0x39 */ STALFOS_LIMB_FOOT_R,
    /* 0x3A */ STALFOS_LIMB_LOWERLEG_R,
    /* 0x3B */ STALFOS_LIMB_FEMUR_R,
    /* 0x3C */ STALFOS_LIMB_WAIST
} StalfosLimb;

extern const ActorInit En_Test_InitVars;

#endif
