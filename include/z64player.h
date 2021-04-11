#ifndef _Z64PLAYER_H_
#define _Z64PLAYER_H_

#include "z64actor.h"

struct Player;

typedef enum {
    /* 0x00 */ PLAYER_SHIELD_NONE,
    /* 0x01 */ PLAYER_SHIELD_DEKU,
    /* 0x02 */ PLAYER_SHIELD_HYLIAN,
    /* 0x03 */ PLAYER_SHIELD_MIRROR,
    /* 0x04 */ PLAYER_SHIELD_MAX
} PlayerShield;

typedef enum {
    /* 0x00 */ PLAYER_TUNIC_KOKIRI,
    /* 0x01 */ PLAYER_TUNIC_GORON,
    /* 0x02 */ PLAYER_TUNIC_ZORA,
    /* 0x03 */ PLAYER_TUNIC_MAX
} PlayerTunic;

typedef enum {
    /* 0x00 */ PLAYER_BOOTS_NORMAL,
    /* 0x01 */ PLAYER_BOOTS_IRON,
    /* 0x02 */ PLAYER_BOOTS_HOVER,
    /* Values below are only relevant when setting regs in Player_SetBootData */
    /* 0x03 */ PLAYER_BOOTS_INDOOR,
    /* 0x04 */ PLAYER_BOOTS_IRON_UNDERWATER,
    /* 0x05 */ PLAYER_BOOTS_NORMAL_CHILD,
    /* 0x06 */ PLAYER_BOOTS_MAX
} PlayerBoots;

typedef enum {
    /* 0x00 */ PLAYER_STR_NONE,
    /* 0x01 */ PLAYER_STR_BRACELET,
    /* 0x02 */ PLAYER_STR_SILVER_G,
    /* 0x03 */ PLAYER_STR_GOLD_G,
    /* 0x04 */ PLAYER_STR_MAX
} PlayerStrength;

typedef enum {
    /* 0x00 */ PLAYER_MASK_NONE,
    /* 0x01 */ PLAYER_MASK_KEATON,
    /* 0x02 */ PLAYER_MASK_SKULL,
    /* 0x03 */ PLAYER_MASK_SPOOKY,
    /* 0x04 */ PLAYER_MASK_BUNNY,
    /* 0x05 */ PLAYER_MASK_GORON,
    /* 0x06 */ PLAYER_MASK_ZORA,
    /* 0x07 */ PLAYER_MASK_GERUDO,
    /* 0x08 */ PLAYER_MASK_TRUTH,
    /* 0x09 */ PLAYER_MASK_MAX
} PlayerMask;

typedef enum {
    /* 0x00 */ PLAYER_AP_NONE,
    /* 0x01 */ PLAYER_AP_LAST_USED,
    /* 0x02 */ PLAYER_AP_FISHING_POLE,
    /* 0x03 */ PLAYER_AP_SWORD_MASTER,
    /* 0x04 */ PLAYER_AP_SWORD_KOKIRI,
    /* 0x05 */ PLAYER_AP_SWORD_BGS,
    /* 0x06 */ PLAYER_AP_STICK,
    /* 0x07 */ PLAYER_AP_HAMMER,
    /* 0x08 */ PLAYER_AP_BOW,
    /* 0x09 */ PLAYER_AP_BOW_FIRE,
    /* 0x0A */ PLAYER_AP_BOW_ICE,
    /* 0x0B */ PLAYER_AP_BOW_LIGHT,
    /* 0x0C */ PLAYER_AP_BOW_0C,
    /* 0x0D */ PLAYER_AP_BOW_0D,
    /* 0x0E */ PLAYER_AP_BOW_0E,
    /* 0x0F */ PLAYER_AP_SLINGSHOT,
    /* 0x10 */ PLAYER_AP_HOOKSHOT,
    /* 0x11 */ PLAYER_AP_LONGSHOT,
    /* 0x12 */ PLAYER_AP_BOMB,
    /* 0x13 */ PLAYER_AP_BOMBCHU,
    /* 0x14 */ PLAYER_AP_BOOMERANG,
    /* 0x15 */ PLAYER_AP_MAGIC_SPELL_15,
    /* 0x16 */ PLAYER_AP_MAGIC_SPELL_16,
    /* 0x17 */ PLAYER_AP_MAGIC_SPELL_17,
    /* 0x18 */ PLAYER_AP_FARORES_WIND,
    /* 0x19 */ PLAYER_AP_NAYRUS_LOVE,
    /* 0x1A */ PLAYER_AP_DINS_FIRE,
    /* 0x1B */ PLAYER_AP_NUT,
    /* 0x1C */ PLAYER_AP_OCARINA_FAIRY,
    /* 0x1D */ PLAYER_AP_OCARINA_TIME,
    /* 0x1E */ PLAYER_AP_BOTTLE,
    /* 0x1F */ PLAYER_AP_BOTTLE_FISH,
    /* 0x20 */ PLAYER_AP_BOTTLE_FIRE,
    /* 0x21 */ PLAYER_AP_BOTTLE_BUG,
    /* 0x22 */ PLAYER_AP_BOTTLE_POE,
    /* 0x23 */ PLAYER_AP_BOTTLE_BIG_POE,
    /* 0x24 */ PLAYER_AP_BOTTLE_LETTER,
    /* 0x25 */ PLAYER_AP_BOTTLE_POTION_RED,
    /* 0x26 */ PLAYER_AP_BOTTLE_POTION_BLUE,
    /* 0x27 */ PLAYER_AP_BOTTLE_POTION_GREEN,
    /* 0x28 */ PLAYER_AP_BOTTLE_MILK,
    /* 0x29 */ PLAYER_AP_BOTTLE_MILK_HALF,
    /* 0x2A */ PLAYER_AP_BOTTLE_FAIRY,
    /* 0x2B */ PLAYER_AP_LETTER_ZELDA,
    /* 0x2C */ PLAYER_AP_WEIRD_EGG,
    /* 0x2D */ PLAYER_AP_CHICKEN,
    /* 0x2E */ PLAYER_AP_BEAN,
    /* 0x2F */ PLAYER_AP_POCKET_EGG,
    /* 0x30 */ PLAYER_AP_POCKET_CUCCO,
    /* 0x31 */ PLAYER_AP_COJIRO,
    /* 0x32 */ PLAYER_AP_ODD_MUSHROOM,
    /* 0x33 */ PLAYER_AP_ODD_POTION,
    /* 0x34 */ PLAYER_AP_SAW,
    /* 0x35 */ PLAYER_AP_SWORD_BROKEN,
    /* 0x36 */ PLAYER_AP_PRESCRIPTION,
    /* 0x37 */ PLAYER_AP_FROG,
    /* 0x38 */ PLAYER_AP_EYEDROPS,
    /* 0x39 */ PLAYER_AP_CLAIM_CHECK,
    /* 0x3A */ PLAYER_AP_MASK_KEATON,
    /* 0x3B */ PLAYER_AP_MASK_SKULL,
    /* 0x3C */ PLAYER_AP_MASK_SPOOKY,
    /* 0x3D */ PLAYER_AP_MASK_BUNNY,
    /* 0x3E */ PLAYER_AP_MASK_GORON,
    /* 0x3F */ PLAYER_AP_MASK_ZORA,
    /* 0x40 */ PLAYER_AP_MASK_GERUDO,
    /* 0x41 */ PLAYER_AP_MASK_TRUTH,
    /* 0x42 */ PLAYER_AP_LENS,
    /* 0x43 */ PLAYER_AP_MAX
} PlayerActionParam;

typedef enum {
    /* 0x00 */ PLAYER_LIMB_NONE,
    /* 0x01 */ PLAYER_LIMB_ROOT,
    /* 0x02 */ PLAYER_LIMB_WAIST,
    /* 0x03 */ PLAYER_LIMB_LOWER,
    /* 0x04 */ PLAYER_LIMB_R_THIGH,
    /* 0x05 */ PLAYER_LIMB_R_SHIN,
    /* 0x06 */ PLAYER_LIMB_R_FOOT,
    /* 0x07 */ PLAYER_LIMB_L_THIGH,
    /* 0x08 */ PLAYER_LIMB_L_SHIN,
    /* 0x09 */ PLAYER_LIMB_L_FOOT,
    /* 0x0A */ PLAYER_LIMB_UPPER,
    /* 0x0B */ PLAYER_LIMB_HEAD,
    /* 0x0C */ PLAYER_LIMB_HAT,
    /* 0x0D */ PLAYER_LIMB_COLLAR,
    /* 0x0E */ PLAYER_LIMB_L_SHOULDER,
    /* 0x0F */ PLAYER_LIMB_L_FOREARM,
    /* 0x10 */ PLAYER_LIMB_L_HAND,
    /* 0x11 */ PLAYER_LIMB_R_SHOULDER,
    /* 0x12 */ PLAYER_LIMB_R_FOREARM,
    /* 0x13 */ PLAYER_LIMB_R_HAND,
    /* 0x14 */ PLAYER_LIMB_SHEATH,
    /* 0x15 */ PLAYER_LIMB_TORSO,
    /* 0x16 */ PLAYER_LIMB_MAX
} PlayerLimb;

typedef enum {
    /* -1 */ PLAYER_DOORTYPE_AJAR = -1,
    /*  0 */ PLAYER_DOORTYPE_NONE,
    /*  1 */ PLAYER_DOORTYPE_HANDLE,
    /*  2 */ PLAYER_DOORTYPE_SLIDING,
    /*  3 */ PLAYER_DOORTYPE_FAKE
} PlayerDoorType;


#define PLAYER_LIMB_BUF_COUNT PLAYER_LIMB_MAX + 2 // 2 extra entries in limb buffers?

typedef struct {
    /* 0x00 */ f32 unk_00;
    /* 0x04 */ f32 unk_04;
    /* 0x08 */ f32 unk_08;
    /* 0x0C */ f32 unk_0C;
    /* 0x10 */ f32 unk_10;
    /* 0x14 */ f32 unk_14;
    /* 0x18 */ f32 unk_18;
    /* 0x1C */ f32 unk_1C;
    /* 0x20 */ f32 unk_20;
    /* 0x24 */ f32 unk_24;
    /* 0x28 */ f32 unk_28;
    /* 0x2C */ f32 unk_2C;
    /* 0x30 */ f32 unk_30;
    /* 0x34 */ f32 unk_34;
    /* 0x38 */ f32 unk_38;
    /* 0x3C */ f32 unk_3C;
    /* 0x40 */ f32 unk_40;
    /* 0x44 */ Vec3s unk_44;
    /* 0x4A */ Vec3s unk_4A[4];
    /* 0x62 */ Vec3s unk_62[4];
    /* 0x7A */ Vec3s unk_7A[2];
    /* 0x86 */ Vec3s unk_86[2];
    /* 0x92 */ u16 unk_92;
    /* 0x94 */ u16 unk_94;
    /* 0x98 */ LinkAnimationHeader* unk_98;
    /* 0x9C */ LinkAnimationHeader* unk_9C;
    /* 0xA0 */ LinkAnimationHeader* unk_A0;
    /* 0xA4 */ LinkAnimationHeader* unk_A4;
    /* 0xA8 */ LinkAnimationHeader* unk_A8;
    /* 0xAC */ LinkAnimationHeader* unk_AC[4];
    /* 0xBC */ LinkAnimationHeader* unk_BC[2];
    /* 0xC4 */ LinkAnimationHeader* unk_C4[2];
    /* 0xCC */ LinkAnimationHeader* unk_CC[2];
} PlayerAgeProperties; // size = 0xD4

typedef struct {
    /* 0x00 */ s32 active;
    /* 0x04 */ Vec3f tip;
    /* 0x10 */ Vec3f base;
} WeaponInfo; // size = 0x1C

typedef void (*PlayerFunc674)(struct Player*, struct GlobalContext*);
typedef s32 (*PlayerFunc82C)(struct Player*, struct GlobalContext*);
typedef void (*PlayerFuncA74)(struct GlobalContext*, struct Player*);

typedef struct Player {
    /* 0x0000 */ Actor      actor;
    /* 0x014C */ s8         currentTunic; // current tunic from `PlayerTunic`
    /* 0x014D */ s8         currentSword; // current sword Item ID
    /* 0x014E */ s8         currentShield; // current shield from `PlayerShield`
    /* 0x014F */ s8         currentBoots; // current boots from `PlayerBoots`
    /* 0x0150 */ s8         heldItemButton; // Button index for the item currently used
    /* 0x0151 */ s8         heldItemActionParam; // Action param for the item currently used
    /* 0x0152 */ u8         heldItemId; // Item id for the item currently used
    /* 0x0153 */ s8         prevBoots; // previous boots from `PlayerBoots`
    /* 0x0154 */ s8         itemActionParam; // the difference between this and heldItemActionParam is unclear
    /* 0x0155 */ char       unk_155[0x003];
    /* 0x0158 */ u8         modelGroup;
    /* 0x0159 */ u8         nextModelGroup;
    /* 0x015A */ s8         unk_15A;
    /* 0x015B */ u8         modelAnimType;
    /* 0x015C */ u8         leftHandType;
    /* 0x015D */ u8         rightHandType;
    /* 0x015E */ u8         sheathType;
    /* 0x015F */ u8         currentMask; // current mask equipped from `PlayerMask`
    /* 0x0160 */ Gfx**      rightHandDLists;
    /* 0x0164 */ Gfx**      leftHandDLists;
    /* 0x0168 */ Gfx**      sheathDLists;
    /* 0x016C */ Gfx**      waistDLists;
    /* 0x0170 */ u8         giObjectLoading;
    /* 0x0174 */ DmaRequest giObjectDmaRequest;
    /* 0x0194 */ OSMesgQueue giObjectLoadQueue;
    /* 0x01AC */ OSMesg     giObjectLoadMsg;
    /* 0x01B0 */ void*      giObjectSegment; // also used for title card textures
    /* 0x01B4 */ SkelAnime  skelAnime;
    /* 0x01F8 */ Vec3s      jointTable[PLAYER_LIMB_BUF_COUNT];
    /* 0x0288 */ Vec3s      morphTable[PLAYER_LIMB_BUF_COUNT];
    /* 0x0318 */ Vec3s      blendTable[PLAYER_LIMB_BUF_COUNT];
    /* 0x03A8 */ s16        unk_3A8[2];
    /* 0x03AC */ Actor*     heldActor;
    /* 0x03B0 */ Vec3f      leftHandPos;
    /* 0x03BC */ Vec3s      unk_3BC;
    /* 0x03C4 */ Actor*     unk_3C4;
    /* 0x03C8 */ Vec3f      unk_3C8;
    /* 0x03D4 */ char       unk_3D4[0x058];
    /* 0x042C */ s8         doorType;
    /* 0x042D */ s8         doorDirection;
    /* 0x042E */ s16        doorTimer;
    /* 0x0430 */ Actor*     doorActor;
    /* 0x0434 */ s8         getItemId;
    /* 0x0436 */ u16        getItemDirection;
    /* 0x0438 */ Actor*     interactRangeActor;
    /* 0x043C */ s8         mountSide;
    /* 0x043D */ char       unk_43D[0x003];
    /* 0x0440 */ Actor*     rideActor;
    /* 0x0444 */ u8         csMode;
    /* 0x0445 */ u8         prevCsMode;
    /* 0x0446 */ u8         unk_446;
    /* 0x0447 */ u8         unk_447;
    /* 0x0448 */ Actor*     unk_448;
    /* 0x044C */ char       unk_44C[0x004];
    /* 0x0450 */ Vec3f      unk_450;
    /* 0x045C */ Vec3f      unk_45C;
    /* 0x0468 */ char       unk_468[0x002];
    /* 0x046A */ s16        unk_46A;
    /* 0x046C */ s16        unk_46C;
    /* 0x046E */ char       unk_46E[0x02A];
    /* 0x0498 */ ColliderCylinder cylinder;
    /* 0x04E4 */ ColliderQuad swordQuads[2];
    /* 0x05E4 */ ColliderQuad shieldQuad;
    /* 0x0664 */ Actor*     unk_664;
    /* 0x0668 */ char       unk_668[0x004];
    /* 0x066C */ s32        unk_66C;
    /* 0x0670 */ s32        swordEffectIndex;
    /* 0x0674 */ PlayerFunc674 func_674;
    /* 0x0678 */ PlayerAgeProperties* ageProperties;
    /* 0x067C */ u32        stateFlags1;
    /* 0x0680 */ u32        stateFlags2;
    /* 0x0684 */ Actor*     unk_684;
    /* 0x0688 */ Actor*     boomerangActor;
    /* 0x068C */ Actor*     naviActor;
    /* 0x0690 */ s16        naviTextId;
    /* 0x0692 */ u8         stateFlags3;
    /* 0x0693 */ s8         exchangeItemId;
    /* 0x0694 */ Actor*     targetActor;
    /* 0x0698 */ f32        targetActorDistance;
    /* 0x069C */ char       unk_69C[0x004];
    /* 0x06A0 */ f32        unk_6A0;
    /* 0x06A4 */ f32        unk_6A4;
    /* 0x06A8 */ Actor*     unk_6A8;
    /* 0x06AC */ s8         unk_6AC;
    /* 0x06AD */ u8         unk_6AD;
    /* 0x06AE */ u16        unk_6AE;
    /* 0x06B0 */ s16        unk_6B0;
    /* 0x06B2 */ char       unk_6B4[0x004];
    /* 0x06B6 */ s16        unk_6B6;
    /* 0x06B8 */ s16        unk_6B8;
    /* 0x06BA */ s16        unk_6BA;
    /* 0x06BC */ s16        unk_6BC;
    /* 0x06BE */ s16        unk_6BE;
    /* 0x06C0 */ s16        unk_6C0;
    /* 0x06C2 */ s16        unk_6C2;
    /* 0x06C4 */ f32        unk_6C4;
    /* 0x06C8 */ SkelAnime  skelAnime2;
    /* 0x070C */ Vec3s      jointTable2[PLAYER_LIMB_BUF_COUNT];
    /* 0x079C */ Vec3s      morphTable2[PLAYER_LIMB_BUF_COUNT];
    /* 0x082C */ PlayerFunc82C func_82C;
    /* 0x0830 */ f32        unk_830;
    /* 0x0834 */ s16        unk_834;
    /* 0x0836 */ s8         unk_836;
    /* 0x0837 */ u8         unk_837;
    /* 0x0838 */ f32        linearVelocity;
    /* 0x083C */ s16        currentYaw;
    /* 0x083E */ s16        targetYaw;
    /* 0x0840 */ u16        unk_840;
    /* 0x0842 */ s8         swordAnimation;
    /* 0x0843 */ s8         swordState;
    /* 0x0844 */ s8         unk_844;
    /* 0x0845 */ u8         unk_845;
    /* 0x0846 */ u8         unk_846;
    /* 0x0847 */ s8         unk_847[4];
    /* 0x084B */ s8         unk_84B[4];
    /* 0x084F */ s8         unk_84F;
    /* 0x0850 */ s16        unk_850; // multipurpose timer
    /* 0x0854 */ f32        unk_854;
    /* 0x0858 */ f32        unk_858;
    /* 0x085C */ f32        unk_85C; // stick length among other things
    /* 0x0860 */ s16        unk_860; // stick flame timer among other things
    /* 0x0862 */ s8         unk_862; // get item draw ID + 1
    /* 0x0864 */ f32        unk_864;
    /* 0x0868 */ f32        unk_868;
    /* 0x086C */ f32        unk_86C;
    /* 0x0870 */ f32        unk_870;
    /* 0x0874 */ f32        unk_874;
    /* 0x0878 */ f32        unk_878;
    /* 0x087C */ s16        unk_87C;
    /* 0x087E */ s16        unk_87E;
    /* 0x0880 */ f32        unk_880;
    /* 0x0884 */ f32        wallHeight; // height used to determine whether link can climb or grab a ledge at the top
    /* 0x0888 */ f32        wallDistance; // distance to the colliding wall plane
    /* 0x088C */ u8         unk_88C;
    /* 0x088D */ u8         unk_88D;
    /* 0x088E */ u8         unk_88E;
    /* 0x088F */ u8         unk_88F;
    /* 0x0890 */ u8         unk_890;
    /* 0x0891 */ u8         shockTimer;
    /* 0x0892 */ u8         unk_892;
    /* 0x0893 */ u8         hoverBootsTimer;
    /* 0x0894 */ s16        fallStartHeight; // last truncated Y position before falling
    /* 0x0896 */ s16        fallDistance; // truncated Y distance the player has fallen so far (positive is down)
    /* 0x0898 */ s16        unk_898;
    /* 0x089A */ s16        unk_89A;
    /* 0x089C */ s16        unk_89C;
    /* 0x089E */ u16        unk_89E;
    /* 0x08A0 */ u8         unk_8A0;
    /* 0x08A1 */ u8         unk_8A1;
    /* 0x08A2 */ s16        unk_8A2;
    /* 0x08A4 */ f32        unk_8A4;
    /* 0x08A8 */ f32        unk_8A8;
    /* 0x08AC */ f32        windSpeed;
    /* 0x08B0 */ s16        windDirection;
    /* 0x08B4 */ WeaponInfo swordInfo[3];
    /* 0x0908 */ Vec3f      bodyPartsPos[18];
    /* 0x09E0 */ MtxF       mf_9E0;
    /* 0x0A20 */ MtxF       shieldMf;
    /* 0x0A60 */ u8         isBurning;
    /* 0x0A61 */ u8         flameTimers[18]; // one flame per body part
    /* 0x0A73 */ u8         unk_A73;
    /* 0x0A74 */ PlayerFuncA74 func_A74;
    /* 0x0A78 */ s8         invincibilityTimer; // prevents damage when nonzero (positive = visible, counts towards zero each frame)
    /* 0x0A79 */ u8         unk_A79;
    /* 0x0A7A */ u8         unk_A7A;
    /* 0x0A7B */ u8         unk_A7B;
    /* 0x0A7C */ f32        unk_A7C;
    /* 0x0A80 */ s16        unk_A80;
    /* 0x0A82 */ u16        unk_A82;
    /* 0x0A84 */ s16        unk_A84;
    /* 0x0A86 */ s8         unk_A86;
    /* 0x0A87 */ u8         unk_A87;
    /* 0x0A88 */ Vec3f      unk_A88; // previous body part 0 position
} Player; // size = 0xA94

#endif
