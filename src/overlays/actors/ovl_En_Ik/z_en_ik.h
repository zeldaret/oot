#ifndef Z_EN_IK_H
#define Z_EN_IK_H

#include "ultra64.h"
#include "global.h"

struct EnIk;

typedef void (*EnIkActionFunc)(struct EnIk*, PlayState*);

#define IK_GET_UPPER_PARAMS(thisx) ((thisx)->params & 0xFF00)
#define IK_GET_ARMOR_TYPE(thisx) ((thisx)->params & 0xFF)
#define IK_GET_SWITCH_FLAG(thisx) (((thisx)->params >> 8) & 0xFF)

typedef enum {
    /* 0 */ IK_TYPE_NABOORU,
    /* 1 */ IK_TYPE_SILVER,
    /* 2 */ IK_TYPE_BLACK,
    /* 3 */ IK_TYPE_WHITE
} EnIkType;

typedef enum {
    /* 0x00 */ IRON_KNUCKLE_LIMB_NONE,
    /* 0x01 */ IRON_KNUCKLE_LIMB_ROOT,
    /* 0x02 */ IRON_KNUCKLE_LIMB_LOWER_BODY,
    /* 0x03 */ IRON_KNUCKLE_LIMB_RIGHT_THIGH,
    /* 0x04 */ IRON_KNUCKLE_LIMB_RIGHT_SHIN,
    /* 0x05 */ IRON_KNUCKLE_LIMB_RIGHT_FOOT,
    /* 0x06 */ IRON_KNUCKLE_LIMB_LEFT_THIGH,
    /* 0x07 */ IRON_KNUCKLE_LIMB_LEFT_SHIN,
    /* 0x08 */ IRON_KNUCKLE_LIMB_LEFT_FOOT,
    /* 0x09 */ IRON_KNUCKLE_LIMB_UPPER_BODY_ROOT,
    /* 0x0A */ IRON_KNUCKLE_LIMB_UPPER_BODY,
    /* 0x0B */ IRON_KNUCKLE_LIMB_HEAD_ROOT,
    /* 0x0C */ IRON_KNUCKLE_LIMB_HELMET_ARMOR,
    /* 0x0D */ IRON_KNUCKLE_LIMB_HEAD,
    /* 0x0E */ IRON_KNUCKLE_LIMB_RIGHT_UPPER_ARM,
    /* 0x0F */ IRON_KNUCKLE_LIMB_RIGHT_FOREARM,
    /* 0x10 */ IRON_KNUCKLE_LIMB_RIGHT_HAND_ROOT,
    /* 0x11 */ IRON_KNUCKLE_LIMB_AXE,
    /* 0x12 */ IRON_KNUCKLE_LIMB_RIGHT_HAND,
    /* 0x13 */ IRON_KNUCKLE_LIMB_LEFT_UPPER_ARM,
    /* 0x14 */ IRON_KNUCKLE_LIMB_LEFT_FOREARM,
    /* 0x15 */ IRON_KNUCKLE_LIMB_LEFT_HAND,
    /* 0x16 */ IRON_KNUCKLE_LIMB_UPPER_LEFT_PAULDRON,
    /* 0x17 */ IRON_KNUCKLE_LIMB_LOWER_LEFT_PAULDRON,
    /* 0x18 */ IRON_KNUCKLE_LIMB_UPPER_RIGHT_PAULDRON,
    /* 0x19 */ IRON_KNUCKLE_LIMB_LOWER_RIGHT_PAULDRON,
    /* 0x1A */ IRON_KNUCKLE_LIMB_CHEST_ARMOR_FRONT,
    /* 0x1B */ IRON_KNUCKLE_LIMB_CHEST_ARMOR_BACK,
    /* 0x1C */ IRON_KNUCKLE_LIMB_TORSO,
    /* 0x1D */ IRON_KNUCKLE_LIMB_WAIST,
    /* 0x1E */ IRON_KNUCKLE_LIMB_MAX
} IronKnuckleLimb;

// This skeleton is only used in the defeat cutscene that reveals Nabooru under the armor.
// The only difference between this skeleton and the main one is that the head and helmet armor limbs are swapped.
typedef enum {
    /* 0x00 */ IRON_KNUCKLE_DEFEAT_LIMB_NONE,
    /* 0x01 */ IRON_KNUCKLE_DEFEAT_LIMB_ROOT,
    /* 0x02 */ IRON_KNUCKLE_DEFEAT_LIMB_LOWER_BODY,
    /* 0x03 */ IRON_KNUCKLE_DEFEAT_LIMB_RIGHT_THIGH,
    /* 0x04 */ IRON_KNUCKLE_DEFEAT_LIMB_RIGHT_SHIN,
    /* 0x05 */ IRON_KNUCKLE_DEFEAT_LIMB_RIGHT_FOOT,
    /* 0x06 */ IRON_KNUCKLE_DEFEAT_LIMB_LEFT_THIGH,
    /* 0x07 */ IRON_KNUCKLE_DEFEAT_LIMB_LEFT_SHIN,
    /* 0x08 */ IRON_KNUCKLE_DEFEAT_LIMB_LEFT_FOOT,
    /* 0x09 */ IRON_KNUCKLE_DEFEAT_LIMB_UPPER_BODY_ROOT,
    /* 0x0A */ IRON_KNUCKLE_DEFEAT_LIMB_UPPER_BODY,
    /* 0x0B */ IRON_KNUCKLE_DEFEAT_LIMB_HEAD_ROOT,
    /* 0x0C */ IRON_KNUCKLE_DEFEAT_LIMB_HEAD,
    /* 0x0D */ IRON_KNUCKLE_DEFEAT_LIMB_HELMET_ARMOR,
    /* 0x0E */ IRON_KNUCKLE_DEFEAT_LIMB_RIGHT_UPPER_ARM,
    /* 0x0F */ IRON_KNUCKLE_DEFEAT_LIMB_RIGHT_FOREARM,
    /* 0x10 */ IRON_KNUCKLE_DEFEAT_LIMB_RIGHT_HAND_ROOT,
    /* 0x11 */ IRON_KNUCKLE_DEFEAT_LIMB_AXE,
    /* 0x12 */ IRON_KNUCKLE_DEFEAT_LIMB_RIGHT_HAND,
    /* 0x13 */ IRON_KNUCKLE_DEFEAT_LIMB_LEFT_UPPER_ARM,
    /* 0x14 */ IRON_KNUCKLE_DEFEAT_LIMB_LEFT_FOREARM,
    /* 0x15 */ IRON_KNUCKLE_DEFEAT_LIMB_LEFT_HAND,
    /* 0x16 */ IRON_KNUCKLE_DEFEAT_LIMB_UPPER_LEFT_PAULDRON,
    /* 0x17 */ IRON_KNUCKLE_DEFEAT_LIMB_LOWER_LEFT_PAULDRON,
    /* 0x18 */ IRON_KNUCKLE_DEFEAT_LIMB_UPPER_RIGHT_PAULDRON,
    /* 0x19 */ IRON_KNUCKLE_DEFEAT_LIMB_LOWER_RIGHT_PAULDRON,
    /* 0x1A */ IRON_KNUCKLE_DEFEAT_LIMB_CHEST_ARMOR_FRONT,
    /* 0x1B */ IRON_KNUCKLE_DEFEAT_LIMB_CHEST_ARMOR_BACK,
    /* 0x1C */ IRON_KNUCKLE_DEFEAT_LIMB_TORSO,
    /* 0x1D */ IRON_KNUCKLE_DEFEAT_LIMB_WAIST,
    /* 0x1E */ IRON_KNUCKLE_DEFEAT_LIMB_MAX
} IronKnuckleDefeatLimb;

typedef struct EnIk {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s jointTable[IRON_KNUCKLE_LIMB_MAX];
    /* 0x0244 */ Vec3s morphTable[IRON_KNUCKLE_LIMB_MAX];
    /* 0x02F8 */ u8 unk_2F8;
    /* 0x02F9 */ u8 animationTimer;
    /* 0x02FA */ u8 drawArmorFlag;
    /* 0x02FB */ u8 armorStatusFlag;
    /* 0x02FC */ u8 isBreakingProp;
    /* 0x02FD */ u8 damageEffect;
    /* 0x02FE */ s8 unk_2FE;
    /* 0x02FF */ s8 unk_2FF;
    /* 0x0300 */ s16 unk_300;
    /* 0x0302 */ s16 switchFlag;
    /* 0x0304 */ EnIkActionFunc actionFunc;
    /* 0x0308 */ BodyBreak bodyBreak;
    /* 0x0320 */ ColliderCylinder bodyCollider;
    /* 0x036C */ ColliderQuad axeCollider;
    /* 0x03EC */ ColliderTris shieldCollider;
    /* 0x040C */ ColliderTrisElement shieldColliderItems[2];
    /* 0x04C4 */ s32 blureIdx;
    /* 0x04C8 */ s32 csAction;
    /* 0x04CC */ s32 csDrawMode;
    /* 0x04D0 */ u32 cueId;
    /* 0x04D4 */ s32 isAxeSummoned;
    /* 0x04D8 */ char unk_4D8[0x04];
} EnIk; // size = 0x04DC

#endif
