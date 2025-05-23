/*
 * File: z_en_ko.c
 * Overlay: ovl_En_Ko
 * Description: Kokiri children, and Fado
 */

#include "z_en_ko.h"
#include "assets/objects/object_fa/object_fa.h"
#include "assets/objects/object_os_anime/object_os_anime.h"
#include "assets/objects/object_km1/object_km1.h"
#include "assets/objects/object_kw1/object_kw1.h"
#include "terminal.h"
#include "versions.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY | ACTOR_FLAG_UPDATE_CULLING_DISABLED)

#define ENKO_TYPE PARAMS_GET_S(this->actor.params, 0, 8)
#define ENKO_PATH PARAMS_GET_S(this->actor.params, 8, 8)

void EnKo_Init(Actor* thisx, PlayState* play);
void EnKo_Destroy(Actor* thisx, PlayState* play);
void EnKo_Update(Actor* thisx, PlayState* play);
void EnKo_Draw(Actor* thisx, PlayState* play);

void func_80A99048(EnKo* this, PlayState* play);
void func_80A995CC(EnKo* this, PlayState* play);
void func_80A99384(EnKo* this, PlayState* play);
void func_80A99438(EnKo* this, PlayState* play);
void func_80A99504(EnKo* this, PlayState* play);
void func_80A99560(EnKo* this, PlayState* play);

s32 func_80A98ECC(EnKo* this, PlayState* play);

ActorProfile En_Ko_Profile = {
    /**/ ACTOR_EN_KO,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_GAMEPLAY_KEEP,
    /**/ sizeof(EnKo),
    /**/ EnKo_Init,
    /**/ EnKo_Destroy,
    /**/ EnKo_Update,
    /**/ EnKo_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_NONE,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x00000000, 0x00, 0x00 },
        ATELEM_NONE,
        ACELEM_NONE,
        OCELEM_ON,
    },
    { 20, 46, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit2 sColChkInfoInit = { 0, 0, 0, 0, MASS_IMMOVABLE };

static void* sFaEyes[] = { gFaEyeOpenTex, gFaEyeHalfTex, gFaEyeClosedTex, NULL };
static void* sKw1Eyes[] = { gKw1EyeOpenTex, gKw1EyeHalfTex, gKw1EyeClosedTex, NULL };

typedef struct EnKoHead {
    /* 0x0 */ s16 objectId;
    /* 0x4 */ Gfx* dList;
    /* 0x8 */ void** eyeTextures;
} EnKoHead; // size = 0xC

static EnKoHead sHead[] = {
    { OBJECT_KM1, gKm1DL, NULL },
    { OBJECT_KW1, object_kw1_DL_002C10, sKw1Eyes },
    { OBJECT_FA, gFaDL, sFaEyes },
};

typedef struct EnKoSkeleton {
    /* 0x0 */ s16 objectId;
    /* 0x4 */ FlexSkeletonHeader* flexSkeletonHeader;
} EnKoSkeleton; // size = 0x8

static EnKoSkeleton sSkeleton[2] = {
    { OBJECT_KM1, &gKm1Skel },
    { OBJECT_KW1, &gKw1Skel },
};

typedef enum EnKoAnimation {
    /*  0 */ ENKO_ANIM_BLOCKING_NOMORPH,
    /*  1 */ ENKO_ANIM_BLOCKING_NOMORPH_STATIC,
    /*  2 */ ENKO_ANIM_STANDUP_1,
    /*  3 */ ENKO_ANIM_STANDUP_2,
    /*  4 */ ENKO_ANIM_STANDUP_3,
    /*  5 */ ENKO_ANIM_IDLE_NOMORPH,
    /*  6 */ ENKO_ANIM_IDLE,
    /*  7 */ ENKO_ANIM_LAUGHING,
    /*  8 */ ENKO_ANIM_LIFTING_ROCK_NOMORPH,
    /*  9 */ ENKO_ANIM_RECLINED_STANDING,
    /* 10 */ ENKO_ANIM_RECLINED_SITTING_UP,
    /* 11 */ ENKO_ANIM_PUNCHING_NOMORPH,
    /* 12 */ ENKO_ANIM_STANDING_HAND_ON_CHEST,
    /* 13 */ ENKO_ANIM_STANDING_HANDS_ON_HIPS,
    /* 14 */ ENKO_ANIM_SITTING,
    /* 15 */ ENKO_ANIM_SITTING_CROSSED_ARMS_LEGS,
    /* 16 */ ENKO_ANIM_STANDING_APPREHENSIVE,
    /* 17 */ ENKO_ANIM_LEANING_ON_ARMS,
    /* 18 */ ENKO_ANIM_RECLINED_LEANING_BACK,
    /* 19 */ ENKO_ANIM_CUTTING_GRASS_NOMORPH,
    /* 20 */ ENKO_ANIM_BACKFLIP,
    /* 21 */ ENKO_ANIM_LEANING_FORWARD,
    /* 22 */ ENKO_ANIM_STANDING_RIGHT_ARM_UP,
    /* 23 */ ENKO_ANIM_STANDING_ARMS_BEHIND_BACK,
    /* 24 */ ENKO_ANIM_STANDING,
    /* 25 */ ENKO_ANIM_SITTING_CROSSED_LEGS,
    /* 26 */ ENKO_ANIM_SITTING_ARMS_UP,
    /* 27 */ ENKO_ANIM_SITTING_HEAD_ON_HAND,
    /* 28 */ ENKO_ANIM_SITTING_DIGGING,
    /* 29 */ ENKO_ANIM_BLOCKING_STATIC,
    /* 30 */ ENKO_ANIM_CUTTING_GRASS,
    /* 31 */ ENKO_ANIM_PUNCHING,
    /* 32 */ ENKO_ANIM_WIPING_FOREHEAD,
    /* 33 */ ENKO_ANIM_LIFTING_ROCK
} EnKoAnimation;

static AnimationInfo sAnimationInfo[] = {
    { &gKokiriBlockingAnim, 1.0f, 2.0f, 14.0f, ANIMMODE_LOOP_PARTIAL, 0.0f },
    { &gKokiriBlockingAnim, 0.0f, 1.0f, 1.0f, ANIMMODE_LOOP_PARTIAL, 0.0f },
    { &gKokiriStandUpAnim, 0.0f, 0.0f, 0.0f, ANIMMODE_ONCE, 0.0f },
    { &gKokiriStandUpAnim, 0.0f, 1.0f, 1.0f, ANIMMODE_ONCE, 0.0f },
    { &gKokiriStandUpAnim, 0.0f, 2.0f, 2.0f, ANIMMODE_ONCE, 0.0f },
    { &gKokiriIdleAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, 0.0f },
    { &gKokiriIdleAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, -10.0f },
    { &gKokiriLaughingAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, -10.0f },
    { &gKokiriLiftingRockAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, 0.0f },
    { &gKokiriRecliningStandingAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, 0.0f },
    { &gKokiriRecliningSittingUpAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, 0.0f },
    { &gKokiriPunchingAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, 0.0f },
    { &gKokiriStandingHandOnChestAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, 0.0f },
    { &gKokiriStandingHandsOnHipsAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, 0.0f },
    { &gKokiriSittingAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, 0.0f },
    { &gKokiriSittingCrossedArmsLegsAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, 0.0f },
    { &gKokiriStandingApprehensiveAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, 0.0f },
    { &gKokiriLeaningOnArmsAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, 0.0f },
    { &gKokiriRecliningLeaningBackAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, 0.0f },
    { &gKokiriCuttingGrassAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, 0.0f },
    { &gKokiriBackflipAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, 0.0f },
    { &gKokiriLeaningForwardAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, 0.0f },
    { &gKokiriStandingRightArmUpAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, 0.0f },
    { &gKokiriStandingArmsBehindBackAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, 0.0f },
    { &gKokiriStandingAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, 0.0f },
    { &gKokiriSittingCrossedLegsAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, 0.0f },
    { &gKokiriSittingArmsUpAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, 0.0f },
    { &gKokiriSittingHeadOnHandAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, 0.0f },
    { &gKokiriSittingDiggingAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, 0.0f },
    { &gKokiriBlockingAnim, 0.0f, 1.0f, 1.0f, ANIMMODE_LOOP_PARTIAL, -8.0f },
    { &gKokiriCuttingGrassAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, -8.0f },
    { &gKokiriPunchingAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, -8.0f },
    { &gKokiriWipingForeheadAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, -8.0f },
    { &gKokiriLiftingRockAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, -8.0f },
};

static u8 sOsAnimeLookup[13][5] = {
    /* ENKO_TYPE_CHILD_0    */ { ENKO_ANIM_LIFTING_ROCK_NOMORPH, ENKO_ANIM_RECLINED_STANDING,
                                 ENKO_ANIM_RECLINED_STANDING, ENKO_ANIM_SITTING, ENKO_ANIM_PUNCHING_NOMORPH },
    /* ENKO_TYPE_CHILD_1    */
    { ENKO_ANIM_STANDUP_1, ENKO_ANIM_STANDING_HAND_ON_CHEST, ENKO_ANIM_STANDUP_1, ENKO_ANIM_STANDING_HANDS_ON_HIPS,
      ENKO_ANIM_STANDING_HANDS_ON_HIPS },
    /* ENKO_TYPE_CHILD_2    */
    { ENKO_ANIM_PUNCHING_NOMORPH, ENKO_ANIM_PUNCHING_NOMORPH, ENKO_ANIM_PUNCHING_NOMORPH,
      ENKO_ANIM_SITTING_CROSSED_ARMS_LEGS, ENKO_ANIM_RECLINED_STANDING },
    /* ENKO_TYPE_CHILD_3    */
    { ENKO_ANIM_BLOCKING_NOMORPH, ENKO_ANIM_STANDING_APPREHENSIVE, ENKO_ANIM_STANDING_APPREHENSIVE,
      ENKO_ANIM_LEANING_ON_ARMS, ENKO_ANIM_RECLINED_LEANING_BACK },
    /* ENKO_TYPE_CHILD_4    */
    { ENKO_ANIM_CUTTING_GRASS_NOMORPH, ENKO_ANIM_CUTTING_GRASS_NOMORPH, ENKO_ANIM_BACKFLIP,
      ENKO_ANIM_RECLINED_SITTING_UP, ENKO_ANIM_RECLINED_STANDING },
    /* ENKO_TYPE_CHILD_5    */
    { ENKO_ANIM_STANDUP_2, ENKO_ANIM_STANDUP_2, ENKO_ANIM_STANDUP_2, ENKO_ANIM_STANDUP_2, ENKO_ANIM_STANDUP_2 },
    /* ENKO_TYPE_CHILD_6    */
    { ENKO_ANIM_STANDUP_3, ENKO_ANIM_STANDING_RIGHT_ARM_UP, ENKO_ANIM_STANDING_RIGHT_ARM_UP, ENKO_ANIM_STANDUP_3,
      ENKO_ANIM_STANDING_ARMS_BEHIND_BACK },
    /* ENKO_TYPE_CHILD_7    */
    { ENKO_ANIM_STANDING, ENKO_ANIM_STANDING_APPREHENSIVE, ENKO_ANIM_STANDING_APPREHENSIVE,
      ENKO_ANIM_SITTING_CROSSED_LEGS, ENKO_ANIM_STANDING_APPREHENSIVE },
    /* ENKO_TYPE_CHILD_8    */
    { ENKO_ANIM_SITTING_ARMS_UP, ENKO_ANIM_SITTING_CROSSED_ARMS_LEGS, ENKO_ANIM_SITTING_CROSSED_ARMS_LEGS,
      ENKO_ANIM_SITTING_ARMS_UP, ENKO_ANIM_SITTING_CROSSED_ARMS_LEGS },
    /* ENKO_TYPE_CHILD_9    */
    { ENKO_ANIM_STANDUP_2, ENKO_ANIM_STANDUP_2, ENKO_ANIM_STANDUP_2, ENKO_ANIM_SITTING_HEAD_ON_HAND,
      ENKO_ANIM_SITTING_HEAD_ON_HAND },
    /* ENKO_TYPE_CHILD_10   */
    { ENKO_ANIM_STANDUP_1, ENKO_ANIM_STANDUP_1, ENKO_ANIM_STANDUP_1, ENKO_ANIM_STANDUP_1,
      ENKO_ANIM_STANDING_RIGHT_ARM_UP },
    /* ENKO_TYPE_CHILD_11   */
    { ENKO_ANIM_SITTING, ENKO_ANIM_SITTING, ENKO_ANIM_SITTING, ENKO_ANIM_SITTING, ENKO_ANIM_SITTING },
    /* ENKO_TYPE_CHILD_FADO */
    { ENKO_ANIM_IDLE_NOMORPH, ENKO_ANIM_IDLE_NOMORPH, ENKO_ANIM_IDLE_NOMORPH, ENKO_ANIM_IDLE_NOMORPH,
      ENKO_ANIM_IDLE_NOMORPH },
};

typedef struct EnKoModelInfo {
    /* 0x0 */ u8 headId;
    /* 0x1 */ u8 bodyId;
    /* 0x4 */ Color_RGBA8 tunicColor;
    /* 0x8 */ u8 legsId;
    /* 0xC */ Color_RGBA8 bootsColor;
} EnKoModelInfo; // size = 0x10

typedef enum KokiriGender {
    /* 0 */ KO_BOY,
    /* 1 */ KO_GIRL,
    /* 2 */ KO_FADO
} KokiriGender;

static EnKoModelInfo sModelInfo[] = {
    /* ENKO_TYPE_CHILD_0    */ { KO_BOY, KO_BOY, { 0, 130, 70, 255 }, KO_BOY, { 110, 170, 20, 255 } },
    /* ENKO_TYPE_CHILD_1    */ { KO_GIRL, KO_GIRL, { 70, 190, 60, 255 }, KO_GIRL, { 100, 30, 0, 255 } },
    /* ENKO_TYPE_CHILD_2    */ { KO_BOY, KO_BOY, { 0, 130, 70, 255 }, KO_BOY, { 110, 170, 20, 255 } },
    /* ENKO_TYPE_CHILD_3    */ { KO_BOY, KO_BOY, { 0, 130, 70, 255 }, KO_BOY, { 110, 170, 20, 255 } },
    /* ENKO_TYPE_CHILD_4    */ { KO_BOY, KO_BOY, { 0, 130, 70, 255 }, KO_BOY, { 110, 170, 20, 255 } },
    /* ENKO_TYPE_CHILD_5    */ { KO_GIRL, KO_GIRL, { 70, 190, 60, 255 }, KO_GIRL, { 100, 30, 0, 255 } },
    /* ENKO_TYPE_CHILD_6    */ { KO_GIRL, KO_GIRL, { 70, 190, 60, 255 }, KO_GIRL, { 100, 30, 0, 255 } },
    /* ENKO_TYPE_CHILD_7    */ { KO_BOY, KO_BOY, { 0, 130, 70, 255 }, KO_BOY, { 110, 170, 20, 255 } },
    /* ENKO_TYPE_CHILD_8    */ { KO_BOY, KO_BOY, { 0, 130, 70, 255 }, KO_BOY, { 110, 170, 20, 255 } },
    /* ENKO_TYPE_CHILD_9    */ { KO_GIRL, KO_GIRL, { 70, 190, 60, 255 }, KO_GIRL, { 100, 30, 0, 255 } },
    /* ENKO_TYPE_CHILD_10   */ { KO_GIRL, KO_GIRL, { 70, 190, 60, 255 }, KO_GIRL, { 100, 30, 0, 255 } },
    /* ENKO_TYPE_CHILD_11   */ { KO_BOY, KO_BOY, { 0, 130, 70, 255 }, KO_BOY, { 110, 170, 20, 255 } },
    /* ENKO_TYPE_CHILD_FADO */ { KO_FADO, KO_GIRL, { 70, 190, 60, 255 }, KO_GIRL, { 100, 30, 0, 255 } },
};

typedef struct EnKoInteractInfo {
    /* 0x0 */ s8 attentionRangeType;
    /* 0x4 */ f32 lookDist; // extended by collider radius
    /* 0x8 */ f32 appearDist;
} EnKoInteractInfo; // size = 0xC

static EnKoInteractInfo sInteractInfo[] = {
    /* ENKO_TYPE_CHILD_0    */ { 6, 30.0f, 180.0f },
    /* ENKO_TYPE_CHILD_1    */ { 6, 30.0f, 180.0f },
    /* ENKO_TYPE_CHILD_2    */ { 6, 30.0f, 180.0f },
    /* ENKO_TYPE_CHILD_3    */ { 6, 30.0f, 180.0f },
    /* ENKO_TYPE_CHILD_4    */ { 6, 30.0f, 180.0f },
    /* ENKO_TYPE_CHILD_5    */ { 1, 30.0f, 240.0f },
    /* ENKO_TYPE_CHILD_6    */ { 6, 30.0f, 180.0f },
    /* ENKO_TYPE_CHILD_7    */ { 6, 30.0f, 180.0f },
    /* ENKO_TYPE_CHILD_8    */ { 6, 30.0f, 180.0f },
    /* ENKO_TYPE_CHILD_9    */ { 6, 30.0f, 180.0f },
    /* ENKO_TYPE_CHILD_10   */ { 6, 30.0f, 180.0f },
    /* ENKO_TYPE_CHILD_11   */ { 6, 30.0f, 180.0f },
    /* ENKO_TYPE_CHILD_FADO */ { 6, 30.0f, 180.0f },
};

s32 EnKo_AreObjectsAvailable(EnKo* this, PlayState* play) {
    u8 headId = sModelInfo[ENKO_TYPE].headId;
    u8 bodyId = sModelInfo[ENKO_TYPE].bodyId;
    u8 legsId = sModelInfo[ENKO_TYPE].legsId;

    this->legsObjectSlot = Object_GetSlot(&play->objectCtx, sSkeleton[legsId].objectId);
    if (this->legsObjectSlot < 0) {
        return false;
    }

    this->bodyObjectSlot = Object_GetSlot(&play->objectCtx, sSkeleton[bodyId].objectId);
    if (this->bodyObjectSlot < 0) {
        return false;
    }

    this->headObjectSlot = Object_GetSlot(&play->objectCtx, sHead[headId].objectId);
    if (this->headObjectSlot < 0) {
        return false;
    }
    return true;
}

s32 EnKo_AreObjectsLoaded(EnKo* this, PlayState* play) {
    if (!Object_IsLoaded(&play->objectCtx, this->legsObjectSlot)) {
        return false;
    }
    if (!Object_IsLoaded(&play->objectCtx, this->bodyObjectSlot)) {
        return false;
    }
    if (!Object_IsLoaded(&play->objectCtx, this->headObjectSlot)) {
        return false;
    }
    return true;
}

s32 EnKo_IsOsAnimeAvailable(EnKo* this, PlayState* play) {
    this->osAnimeObjectSlot = Object_GetSlot(&play->objectCtx, OBJECT_OS_ANIME);
    if (this->osAnimeObjectSlot < 0) {
        return false;
    }
    return true;
}

s32 EnKo_IsOsAnimeLoaded(EnKo* this, PlayState* play) {
    if (!Object_IsLoaded(&play->objectCtx, this->osAnimeObjectSlot)) {
        return false;
    }
    return true;
}

u16 EnKo_GetTextIdChild(PlayState* play, Actor* thisx) {
    EnKo* this = (EnKo*)thisx;
    switch (ENKO_TYPE) {
        case ENKO_TYPE_CHILD_FADO:
            if (GET_EVENTCHKINF(EVENTCHKINF_40)) {
                return 0x10DA;
            }
            if (CHECK_QUEST_ITEM(QUEST_KOKIRI_EMERALD)) {
                return 0x10D9;
            }
            return GET_INFTABLE(INFTABLE_B7) ? 0x10D8 : 0x10D7;
        case ENKO_TYPE_CHILD_0:
            if (GET_EVENTCHKINF(EVENTCHKINF_40)) {
                return 0x1025;
            }
            if (CHECK_QUEST_ITEM(QUEST_KOKIRI_EMERALD)) {
                return 0x1042;
            }
            return 0x1004;
        case ENKO_TYPE_CHILD_1:
            if (GET_EVENTCHKINF(EVENTCHKINF_40)) {
                return 0x1023;
            }
            if (CHECK_QUEST_ITEM(QUEST_KOKIRI_EMERALD)) {
                return 0x1043;
            }
            if (GET_INFTABLE(INFTABLE_1E)) {
                return 0x1006;
            }
            return 0x1005;
        case ENKO_TYPE_CHILD_2:
            if (GET_EVENTCHKINF(EVENTCHKINF_40)) {
                return 0x1022;
            }
            return 0x1007;
        case ENKO_TYPE_CHILD_3:
            if (GET_EVENTCHKINF(EVENTCHKINF_40)) {
                return 0x1021;
            }
            if (CHECK_QUEST_ITEM(QUEST_KOKIRI_EMERALD)) {
                return 0x1044;
            }
            if (GET_INFTABLE(INFTABLE_22)) {
                return 0x1009;
            }
            return 0x1008;
        case ENKO_TYPE_CHILD_4:
            if (GET_EVENTCHKINF(EVENTCHKINF_40)) {
                return 0x1097;
            }
            if (CHECK_QUEST_ITEM(QUEST_KOKIRI_EMERALD)) {
                return 0x1042;
            }
            if (GET_INFTABLE(INFTABLE_24)) {
                return 0x100B;
            }
            return 0x100A;
        case ENKO_TYPE_CHILD_5:
            if (GET_EVENTCHKINF(EVENTCHKINF_40)) {
                return 0x10B0;
            }
            if (CHECK_QUEST_ITEM(QUEST_KOKIRI_EMERALD)) {
                return 0x1043;
            }
            if (GET_INFTABLE(INFTABLE_26)) {
                return 0x100D;
            }
            return 0x100C;
        case ENKO_TYPE_CHILD_6:
            if (GET_EVENTCHKINF(EVENTCHKINF_40)) {
                return 0x10B5;
            }
            if (CHECK_QUEST_ITEM(QUEST_KOKIRI_EMERALD)) {
                return 0x1043;
            }
            if (GET_INFTABLE(INFTABLE_28)) {
                return 0x1019;
            }
            return 0x100E;
        case ENKO_TYPE_CHILD_7:
            return 0x1035;
        case ENKO_TYPE_CHILD_8:
            return 0x1038;
        case ENKO_TYPE_CHILD_9:
            if (CHECK_QUEST_ITEM(QUEST_KOKIRI_EMERALD)) {
                return 0x104B;
            }
            return 0x103C;
        case ENKO_TYPE_CHILD_10:
            if (CHECK_QUEST_ITEM(QUEST_KOKIRI_EMERALD)) {
                return 0x104C;
            }
            return 0x103D;
        case ENKO_TYPE_CHILD_11:
            return 0x103E;
    }
    return 0;
}

u16 EnKo_GetTextIdAdult(PlayState* play, Actor* thisx) {
    Player* player = GET_PLAYER(play);
    EnKo* this = (EnKo*)thisx;

    switch (ENKO_TYPE) {
        case ENKO_TYPE_CHILD_FADO:
            player->exchangeItemId = EXCH_ITEM_ODD_POTION;
            return 0x10B9;
        case ENKO_TYPE_CHILD_0:
            if (CHECK_QUEST_ITEM(QUEST_MEDALLION_FOREST)) {
                return 0x1072;
            }
            if (GET_INFTABLE(INFTABLE_41)) {
                return 0x1056;
            }
            return 0x1055;
        case ENKO_TYPE_CHILD_1:
            if (CHECK_QUEST_ITEM(QUEST_MEDALLION_FOREST)) {
                return 0x1073;
            }
            return 0x105A;
        case ENKO_TYPE_CHILD_2:
            if (CHECK_QUEST_ITEM(QUEST_MEDALLION_FOREST)) {
                return 0x1074;
            }
            if (GET_INFTABLE(INFTABLE_47)) {
                return 0x105E;
            }
            return 0x105D;
        case ENKO_TYPE_CHILD_3:
            if (CHECK_QUEST_ITEM(QUEST_MEDALLION_FOREST)) {
                return 0x1075;
            }
            return 0x105B;
        case ENKO_TYPE_CHILD_4:
            if (CHECK_QUEST_ITEM(QUEST_MEDALLION_FOREST)) {
                return 0x1076;
            }
            return 0x105F;
        case ENKO_TYPE_CHILD_5:
            return 0x1057;
        case ENKO_TYPE_CHILD_6:
            if (CHECK_QUEST_ITEM(QUEST_MEDALLION_FOREST)) {
                return 0x1077;
            }
            if (GET_INFTABLE(INFTABLE_51)) {
                return 0x1059;
            }
            return 0x1058;
        case ENKO_TYPE_CHILD_7:
            if (CHECK_QUEST_ITEM(QUEST_MEDALLION_FOREST)) {
                return 0x1079;
            }
            return 0x104E;
        case ENKO_TYPE_CHILD_8:
            if (CHECK_QUEST_ITEM(QUEST_MEDALLION_FOREST)) {
                return 0x107A;
            }
            if (GET_INFTABLE(INFTABLE_59)) {
                return 0x1050;
            }
            return 0x104F;
        case ENKO_TYPE_CHILD_9:
            if (CHECK_QUEST_ITEM(QUEST_MEDALLION_FOREST)) {
                return 0x107B;
            }
            return 0x1051;
        case ENKO_TYPE_CHILD_10:
            if (CHECK_QUEST_ITEM(QUEST_MEDALLION_FOREST)) {
                return 0x107C;
            }
            return 0x1052;
        case ENKO_TYPE_CHILD_11:
            if (CHECK_QUEST_ITEM(QUEST_MEDALLION_FOREST)) {
                return 0x107C;
            }
            if (GET_INFTABLE(INFTABLE_61)) {
                return 0x1054;
            }
            return 0x1053;
        default:
            return 0;
    }
}

u16 EnKo_GetTextId(PlayState* play, Actor* thisx) {
    u16 textId;
    EnKo* this = (EnKo*)thisx;

    if (ENKO_TYPE == ENKO_TYPE_CHILD_0 || ENKO_TYPE == ENKO_TYPE_CHILD_2 || ENKO_TYPE == ENKO_TYPE_CHILD_3 ||
        ENKO_TYPE == ENKO_TYPE_CHILD_4 || ENKO_TYPE == ENKO_TYPE_CHILD_7 || ENKO_TYPE == ENKO_TYPE_CHILD_8 ||
        ENKO_TYPE == ENKO_TYPE_CHILD_11) {
        textId = MaskReaction_GetTextId(play, MASK_REACTION_SET_KOKIRI_1);
    }
    if (ENKO_TYPE == ENKO_TYPE_CHILD_1 || ENKO_TYPE == ENKO_TYPE_CHILD_5 || ENKO_TYPE == ENKO_TYPE_CHILD_6 ||
        ENKO_TYPE == ENKO_TYPE_CHILD_9 || ENKO_TYPE == ENKO_TYPE_CHILD_10) {
        textId = MaskReaction_GetTextId(play, MASK_REACTION_SET_KOKIRI_2);
    }
    if (ENKO_TYPE == ENKO_TYPE_CHILD_FADO) {
        textId = MaskReaction_GetTextId(play, MASK_REACTION_SET_FADO);
    }
    if (textId != 0) {
        return textId;
    }
    if (LINK_IS_ADULT) {
        return EnKo_GetTextIdAdult(play, thisx);
    }
    return EnKo_GetTextIdChild(play, thisx);
}

s16 EnKo_UpdateTalkState(PlayState* play, Actor* thisx) {
    EnKo* this = (EnKo*)thisx;

    switch (Message_GetState(&play->msgCtx)) {
        case TEXT_STATE_CLOSING:
            switch (this->actor.textId) {
                case 0x1005:
                    SET_INFTABLE(INFTABLE_1E);
                    break;
                case 0x1008:
                    SET_INFTABLE(INFTABLE_22);
                    break;
                case 0x100A:
                    SET_INFTABLE(INFTABLE_24);
                    break;
                case 0x100C:
                    SET_INFTABLE(INFTABLE_26);
                    break;
                case 0x100E:
                    SET_INFTABLE(INFTABLE_28);
                    break;
                case 0x104F:
                    SET_INFTABLE(INFTABLE_59);
                    break;
                case 0x1053:
                    SET_INFTABLE(INFTABLE_61);
                    break;
                case 0x1055:
                    SET_INFTABLE(INFTABLE_41);
                    break;
                case 0x1058:
                    SET_INFTABLE(INFTABLE_51);
                    break;
                case 0x105D:
                    SET_INFTABLE(INFTABLE_47);
                    break;
                case 0x10D7:
                    SET_INFTABLE(INFTABLE_B7);
                    break;
                case 0x10BA:
                    return NPC_TALK_STATE_TALKING;
            }
            return NPC_TALK_STATE_IDLE;
        case TEXT_STATE_DONE_FADING:
            switch (this->actor.textId) {
                case 0x10B7:
                case 0x10B8:
                    if (this->unk_210 == 0) {
                        Audio_PlaySfxGeneral(NA_SE_SY_TRE_BOX_APPEAR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                        this->unk_210 = 1;
                    }
            }
            return NPC_TALK_STATE_TALKING;
        case TEXT_STATE_CHOICE:
            if (Message_ShouldAdvance(play)) {
                switch (this->actor.textId) {
                    case 0x1035:
                        this->actor.textId = (play->msgCtx.choiceIndex == 0) ? 0x1036 : 0x1037;
                        Message_ContinueTextbox(play, this->actor.textId);
                        break;
                    case 0x1038:
                        this->actor.textId = (play->msgCtx.choiceIndex != 0)
                                                 ? (play->msgCtx.choiceIndex == 1) ? 0x103A : 0x103B
                                                 : 0x1039;
                        Message_ContinueTextbox(play, this->actor.textId);
                        break;
                    case 0x103E:
                        this->actor.textId = (play->msgCtx.choiceIndex == 0) ? 0x103F : 0x1040;
                        Message_ContinueTextbox(play, this->actor.textId);
                        break;
                    case 0x10B7:
#if OOT_VERSION < NTSC_1_1
                        SET_INFTABLE(INFTABLE_B6);
#else
                        SET_INFTABLE(INFTABLE_BC);
#endif
                        FALLTHROUGH;
                    case 0x10B8:
                        this->actor.textId = (play->msgCtx.choiceIndex == 0) ? 0x10BA : 0x10B9;
                        return (play->msgCtx.choiceIndex == 0) ? NPC_TALK_STATE_ACTION : NPC_TALK_STATE_TALKING;
                }
                return NPC_TALK_STATE_TALKING;
            }
            break;
        case TEXT_STATE_DONE:
            if (Message_ShouldAdvance(play)) {
                return NPC_TALK_STATE_ITEM_GIVEN;
            }
    }
    return NPC_TALK_STATE_TALKING;
}

s32 EnKo_GetForestQuestState(EnKo* this) {
    s32 result;

    if (!LINK_IS_ADULT) {
        // Obtained Zelda's Letter
        if (GET_EVENTCHKINF(EVENTCHKINF_40)) {
            return ENKO_FQS_CHILD_SARIA;
        }
        if (CHECK_QUEST_ITEM(QUEST_KOKIRI_EMERALD)) {
            return ENKO_FQS_CHILD_STONE;
        }
        return ENKO_FQS_CHILD_START;
    }

    if (CHECK_QUEST_ITEM(QUEST_MEDALLION_FOREST)) {
        result = ENKO_FQS_ADULT_SAVED;
    } else {
        result = ENKO_FQS_ADULT_ENEMY;
    }
    return result;
}

f32 func_80A97BC0(EnKo* this) {
    f32 D_80A9A62C[13][5] = {
        /* ENKO_TYPE_CHILD_0    */ { 0.0f, 0.0f, 0.0f, -30.0f, -20.0f },
        /* ENKO_TYPE_CHILD_1    */ { 0.0f, 0.0f, 0.0f, -20.0f, -10.0f },
        /* ENKO_TYPE_CHILD_2    */ { 0.0f, 0.0f, 0.0f, -30.0f, -20.0f },
        /* ENKO_TYPE_CHILD_3    */ { -10.0f, 10.0f, 10.0f, -10.0f, -30.0f },
        /* ENKO_TYPE_CHILD_4    */ { 0.0f, 0.0f, 0.0f, -10.0f, -20.0f },
        /* ENKO_TYPE_CHILD_5    */ { 0.0f, 0.0f, 0.0f, -20.0f, -20.0f },
        /* ENKO_TYPE_CHILD_6    */ { 0.0f, 0.0f, 0.0f, -10.0f, -20.0f },
        /* ENKO_TYPE_CHILD_7    */ { 10.0f, 10.0f, 10.0f, -60.0f, -20.0f },
        /* ENKO_TYPE_CHILD_8    */ { -10.0f, -10.0f, -20.0f, -30.0f, -30.0f },
        /* ENKO_TYPE_CHILD_9    */ { -10.0f, -10.0f, -10.0f, -40.0f, -40.0f },
        /* ENKO_TYPE_CHILD_10   */ { 0.0f, 0.0f, 0.0f, -10.0f, -20.0f },
        /* ENKO_TYPE_CHILD_11   */ { -10.0f, -10.0f, -20.0f, -30.0f, -30.0f },
        /* ENKO_TYPE_CHILD_FADO */ { 0.0f, 0.0f, 0.0f, -20.0f, -20.0f },
    };

    if (LINK_IS_ADULT && ENKO_TYPE == ENKO_TYPE_CHILD_FADO) {
        return -20.0f;
    }
    return D_80A9A62C[ENKO_TYPE][EnKo_GetForestQuestState(this)];
}

u8 func_80A97C7C(EnKo* this) {
    u8 D_80A9A730[13][5] = {
        /* ENKO_TYPE_CHILD_0    */ { 1, 1, 1, 0, 1 },
        /* ENKO_TYPE_CHILD_1    */ { 1, 1, 1, 1, 1 },
        /* ENKO_TYPE_CHILD_2    */ { 1, 1, 1, 0, 1 },
        /* ENKO_TYPE_CHILD_3    */ { 1, 1, 1, 0, 1 },
        /* ENKO_TYPE_CHILD_4    */ { 1, 1, 1, 0, 1 },
        /* ENKO_TYPE_CHILD_5    */ { 0, 0, 0, 0, 0 },
        /* ENKO_TYPE_CHILD_6    */ { 1, 1, 1, 1, 1 },
        /* ENKO_TYPE_CHILD_7    */ { 1, 1, 1, 0, 1 },
        /* ENKO_TYPE_CHILD_8    */ { 0, 0, 0, 0, 0 },
        /* ENKO_TYPE_CHILD_9    */ { 0, 0, 0, 0, 0 },
        /* ENKO_TYPE_CHILD_10   */ { 1, 1, 1, 1, 1 },
        /* ENKO_TYPE_CHILD_11   */ { 0, 0, 0, 0, 0 },
        /* ENKO_TYPE_CHILD_FADO */ { 1, 1, 1, 1, 1 },
    };

    return D_80A9A730[ENKO_TYPE][EnKo_GetForestQuestState(this)];
}

s32 EnKo_IsWithinTalkAngle(EnKo* this) {
    s16 yawDiff;
    s16 yawDiffAbs;
    s32 result;

    yawDiff = this->actor.yawTowardsPlayer - (f32)this->actor.shape.rot.y;
    yawDiffAbs = ABS(yawDiff);

    if (yawDiffAbs < 0x3FFC) {
        result = true;
    } else {
        result = false;
    }
    return result;
}

s32 func_80A97D68(EnKo* this, PlayState* play) {
    s16 trackingMode;

    if (this->interactInfo.talkState != NPC_TALK_STATE_IDLE) {
        if ((this->skelAnime.animation == &gKokiriWipingForeheadAnim) == false) {
            Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENKO_ANIM_WIPING_FOREHEAD);
        }
        trackingMode = NPC_TRACKING_HEAD_AND_TORSO;
    } else {
        if ((this->skelAnime.animation == &gKokiriLiftingRockAnim) == false) {
            Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENKO_ANIM_LIFTING_ROCK);
        }
        trackingMode = NPC_TRACKING_NONE;
    }
    Npc_TrackPoint(&this->actor, &this->interactInfo, 2, trackingMode);
    return EnKo_IsWithinTalkAngle(this);
}

s32 func_80A97E18(EnKo* this, PlayState* play) {
    s16 trackingMode;

    Actor_UpdateFidgetTables(play, this->fidgetTableY, this->fidgetTableZ, 16);
    if (EnKo_IsWithinTalkAngle(this) == true) {
        trackingMode = NPC_TRACKING_HEAD_AND_TORSO;
    } else {
        trackingMode = NPC_TRACKING_NONE;
    }
    if (this->interactInfo.talkState != NPC_TALK_STATE_IDLE) {
        trackingMode = NPC_TRACKING_FULL_BODY;
    } else if (this->lookDist < this->actor.xzDistToPlayer) {
        trackingMode = NPC_TRACKING_NONE;
    }
    Npc_TrackPoint(&this->actor, &this->interactInfo, 2, trackingMode);
    return 1;
}

s32 func_80A97EB0(EnKo* this, PlayState* play) {
    s16 trackingMode;
    s32 result;

    Actor_UpdateFidgetTables(play, this->fidgetTableY, this->fidgetTableZ, 16);
    result = EnKo_IsWithinTalkAngle(this);
    trackingMode = (result == true) ? NPC_TRACKING_HEAD_AND_TORSO : NPC_TRACKING_NONE;
    Npc_TrackPoint(&this->actor, &this->interactInfo, 2, trackingMode);
    return result;
}

s32 func_80A97F20(EnKo* this, PlayState* play) {
    Actor_UpdateFidgetTables(play, this->fidgetTableY, this->fidgetTableZ, 16);
    Npc_TrackPoint(&this->actor, &this->interactInfo, 2, NPC_TRACKING_FULL_BODY);
    return 1;
}

s32 func_80A97F70(EnKo* this, PlayState* play) {
    s16 trackingMode;

    if (this->interactInfo.talkState != NPC_TALK_STATE_IDLE) {
        if ((this->skelAnime.animation == &gKokiriBlockingAnim) == false) {
            Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENKO_ANIM_BLOCKING_STATIC);
        }
        Actor_UpdateFidgetTables(play, this->fidgetTableY, this->fidgetTableZ, 16);
        trackingMode = NPC_TRACKING_HEAD_AND_TORSO;
    } else {
        if ((this->skelAnime.animation == &gKokiriCuttingGrassAnim) == false) {
            Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENKO_ANIM_CUTTING_GRASS);
        }
        trackingMode = NPC_TRACKING_NONE;
    }
    Npc_TrackPoint(&this->actor, &this->interactInfo, 5, trackingMode);
    return EnKo_IsWithinTalkAngle(this);
}

s32 func_80A98034(EnKo* this, PlayState* play) {
    s16 trackingMode;
    s32 result;

    if (this->interactInfo.talkState != NPC_TALK_STATE_IDLE) {
        if ((this->skelAnime.animation == &gKokiriBlockingAnim) == false) {
            Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENKO_ANIM_BLOCKING_STATIC);
        }
        Actor_UpdateFidgetTables(play, this->fidgetTableY, this->fidgetTableZ, 16);
        result = EnKo_IsWithinTalkAngle(this);
        trackingMode = (result == true) ? NPC_TRACKING_HEAD_AND_TORSO : NPC_TRACKING_NONE;
    } else {
        if ((this->skelAnime.animation == &gKokiriPunchingAnim) == false) {
            Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENKO_ANIM_PUNCHING);
        }
        trackingMode = NPC_TRACKING_NONE;
        result = EnKo_IsWithinTalkAngle(this);
    }
    Npc_TrackPoint(&this->actor, &this->interactInfo, 5, trackingMode);
    return result;
}

// Same as func_80A97F20
s32 func_80A98124(EnKo* this, PlayState* play) {
    Actor_UpdateFidgetTables(play, this->fidgetTableY, this->fidgetTableZ, 16);
    Npc_TrackPoint(&this->actor, &this->interactInfo, 2, NPC_TRACKING_FULL_BODY);
    return 1;
}

s32 func_80A98174(EnKo* this, PlayState* play) {
    if (this->interactInfo.talkState != NPC_TALK_STATE_IDLE) {
        if (Animation_OnFrame(&this->skelAnime, 18.0f)) {
            this->skelAnime.playSpeed = 0.0f;
        }
    } else if (this->skelAnime.playSpeed != 1.0f) {
        this->skelAnime.playSpeed = 1.0f;
    }
    if (this->skelAnime.playSpeed == 0.0f) {
        Actor_UpdateFidgetTables(play, this->fidgetTableY, this->fidgetTableZ, 16);
    }
    Npc_TrackPoint(&this->actor, &this->interactInfo, 2,
                   (this->skelAnime.playSpeed == 0.0f) ? NPC_TRACKING_HEAD_AND_TORSO : NPC_TRACKING_NONE);
    return EnKo_IsWithinTalkAngle(this);
}

s32 EnKo_ChildStart(EnKo* this, PlayState* play) {
    switch (ENKO_TYPE) {
        case ENKO_TYPE_CHILD_0:
            return func_80A97D68(this, play);
        case ENKO_TYPE_CHILD_1:
            return func_80A97E18(this, play);
        case ENKO_TYPE_CHILD_2:
            return func_80A98034(this, play);
        case ENKO_TYPE_CHILD_3:
            return func_80A97E18(this, play);
        case ENKO_TYPE_CHILD_4:
            return func_80A97F70(this, play);
        case ENKO_TYPE_CHILD_5:
            return func_80A97EB0(this, play);
        case ENKO_TYPE_CHILD_6:
            return func_80A97F20(this, play);
        case ENKO_TYPE_CHILD_7:
            return func_80A97EB0(this, play);
        case ENKO_TYPE_CHILD_8:
            return func_80A97EB0(this, play);
        case ENKO_TYPE_CHILD_9:
            return func_80A97EB0(this, play);
        case ENKO_TYPE_CHILD_10:
            return func_80A97E18(this, play);
        case ENKO_TYPE_CHILD_11:
            return func_80A97EB0(this, play);
        case ENKO_TYPE_CHILD_FADO:
            return func_80A97E18(this, play);
    }
    // Note this function assumes the kokiri type is valid
    UNREACHABLE();
}

s32 EnKo_ChildStone(EnKo* this, PlayState* play) {
    switch (ENKO_TYPE) {
        case ENKO_TYPE_CHILD_0:
            return func_80A98124(this, play);
        case ENKO_TYPE_CHILD_1:
            return func_80A98124(this, play);
        case ENKO_TYPE_CHILD_2:
            return func_80A98034(this, play);
        case ENKO_TYPE_CHILD_3:
            return func_80A97EB0(this, play);
        case ENKO_TYPE_CHILD_4:
            return func_80A97F70(this, play);
        case ENKO_TYPE_CHILD_5:
            return func_80A97EB0(this, play);
        case ENKO_TYPE_CHILD_6:
            return func_80A97F20(this, play);
        case ENKO_TYPE_CHILD_7:
            return func_80A97EB0(this, play);
        case ENKO_TYPE_CHILD_8:
            return func_80A97EB0(this, play);
        case ENKO_TYPE_CHILD_9:
            return func_80A97EB0(this, play);
        case ENKO_TYPE_CHILD_10:
            return func_80A97E18(this, play);
        case ENKO_TYPE_CHILD_11:
            return func_80A97EB0(this, play);
        case ENKO_TYPE_CHILD_FADO:
            return func_80A97E18(this, play);
    }
    // Note this function assumes the kokiri type is valid
    UNREACHABLE();
}

s32 EnKo_ChildSaria(EnKo* this, PlayState* play) {
    switch (ENKO_TYPE) {
        case ENKO_TYPE_CHILD_0:
            return func_80A98124(this, play);
        case ENKO_TYPE_CHILD_1:
            return func_80A98124(this, play);
        case ENKO_TYPE_CHILD_2:
            return func_80A98034(this, play);
        case ENKO_TYPE_CHILD_3:
            return func_80A97EB0(this, play);
        case ENKO_TYPE_CHILD_4:
            return func_80A98174(this, play);
        case ENKO_TYPE_CHILD_5:
            return func_80A97EB0(this, play);
        case ENKO_TYPE_CHILD_6:
            return func_80A97F20(this, play);
        case ENKO_TYPE_CHILD_7:
            return func_80A97EB0(this, play);
        case ENKO_TYPE_CHILD_8:
            return func_80A97EB0(this, play);
        case ENKO_TYPE_CHILD_9:
            return func_80A97EB0(this, play);
        case ENKO_TYPE_CHILD_10:
            return func_80A97E18(this, play);
        case ENKO_TYPE_CHILD_11:
            return func_80A97EB0(this, play);
        case ENKO_TYPE_CHILD_FADO:
            return func_80A97E18(this, play);
    }
    // Note this function assumes the kokiri type is valid
    UNREACHABLE();
}

s32 EnKo_AdultEnemy(EnKo* this, PlayState* play) {
    switch (ENKO_TYPE) {
        case ENKO_TYPE_CHILD_0:
            return func_80A97EB0(this, play);
        case ENKO_TYPE_CHILD_1:
            return func_80A98124(this, play);
        case ENKO_TYPE_CHILD_2:
            return func_80A97EB0(this, play);
        case ENKO_TYPE_CHILD_3:
            return func_80A97EB0(this, play);
        case ENKO_TYPE_CHILD_4:
            return func_80A97EB0(this, play);
        case ENKO_TYPE_CHILD_5:
            return func_80A97EB0(this, play);
        case ENKO_TYPE_CHILD_6:
            return func_80A97F20(this, play);
        case ENKO_TYPE_CHILD_7:
            return func_80A97EB0(this, play);
        case ENKO_TYPE_CHILD_8:
            return func_80A97EB0(this, play);
        case ENKO_TYPE_CHILD_9:
            return func_80A97EB0(this, play);
        case ENKO_TYPE_CHILD_10:
            return func_80A97E18(this, play);
        case ENKO_TYPE_CHILD_11:
            return func_80A97EB0(this, play);
        case ENKO_TYPE_CHILD_FADO:
            return func_80A97E18(this, play);
    }
    // Note this function assumes the kokiri type is valid
    UNREACHABLE();
}

s32 EnKo_AdultSaved(EnKo* this, PlayState* play) {
    switch (ENKO_TYPE) {
        case ENKO_TYPE_CHILD_0:
            return func_80A98034(this, play);
        case ENKO_TYPE_CHILD_1:
            return func_80A97E18(this, play);
        case ENKO_TYPE_CHILD_2:
            return func_80A97E18(this, play);
        case ENKO_TYPE_CHILD_3:
            return func_80A97EB0(this, play);
        case ENKO_TYPE_CHILD_4:
            return func_80A97E18(this, play);
        case ENKO_TYPE_CHILD_5:
            return func_80A97EB0(this, play);
        case ENKO_TYPE_CHILD_6:
            return func_80A97F20(this, play);
        case ENKO_TYPE_CHILD_7:
            return func_80A97EB0(this, play);
        case ENKO_TYPE_CHILD_8:
            return func_80A97EB0(this, play);
        case ENKO_TYPE_CHILD_9:
            return func_80A97EB0(this, play);
        case ENKO_TYPE_CHILD_10:
            return func_80A97E18(this, play);
        case ENKO_TYPE_CHILD_11:
            return func_80A97EB0(this, play);
        case ENKO_TYPE_CHILD_FADO:
            return func_80A97E18(this, play);
    }
    // Note this function assumes the kokiri type is valid
    UNREACHABLE();
}

void func_80A9877C(EnKo* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if ((play->csCtx.state != CS_STATE_IDLE) || gDebugCamEnabled) {
        this->interactInfo.trackPos = play->view.eye;
        this->interactInfo.yOffset = 40.0f;
        if (ENKO_TYPE != ENKO_TYPE_CHILD_0) {
            Npc_TrackPoint(&this->actor, &this->interactInfo, 2, NPC_TRACKING_HEAD_AND_TORSO);
        }
    } else {
        this->interactInfo.trackPos = player->actor.world.pos;
        this->interactInfo.yOffset = func_80A97BC0(this);
        if ((func_80A98ECC(this, play) == 0) && (this->interactInfo.talkState == NPC_TALK_STATE_IDLE)) {
            return;
        }
    }
    if (Npc_UpdateTalking(play, &this->actor, &this->interactInfo.talkState, this->lookDist, EnKo_GetTextId,
                          EnKo_UpdateTalkState) &&
        ENKO_TYPE == ENKO_TYPE_CHILD_FADO && play->sceneId == SCENE_LOST_WOODS) {
        this->actor.textId = INV_CONTENT(ITEM_TRADE_ADULT) > ITEM_ODD_POTION ? 0x10B9 : 0x10DF;

        if (Actor_GetPlayerExchangeItemId(play) == EXCH_ITEM_ODD_POTION) {
#if OOT_VERSION < NTSC_1_1
            this->actor.textId = GET_INFTABLE(INFTABLE_B6) ? 0x10B8 : 0x10B7;
#else
            this->actor.textId = GET_INFTABLE(INFTABLE_BC) ? 0x10B8 : 0x10B7;
#endif
            this->unk_210 = 0;
        }
        player->actor.textId = this->actor.textId;
    }
}

// Checks if the Kokiri should spawn based on quest progress
s32 EnKo_CanSpawn(EnKo* this, PlayState* play) {
    switch (play->sceneId) {
        case SCENE_KOKIRI_FOREST:
            if (ENKO_TYPE >= ENKO_TYPE_CHILD_7 && ENKO_TYPE != ENKO_TYPE_CHILD_FADO) {
                return false;
            }
            if (!CHECK_QUEST_ITEM(QUEST_MEDALLION_FOREST) && LINK_IS_ADULT) {
                return false;
            }
            return true;
        case SCENE_KNOW_IT_ALL_BROS_HOUSE:
            if (ENKO_TYPE != ENKO_TYPE_CHILD_7 && ENKO_TYPE != ENKO_TYPE_CHILD_8 && ENKO_TYPE != ENKO_TYPE_CHILD_11) {
                return false;
            } else {
                return true;
            }
        case SCENE_TWINS_HOUSE:
            if (LINK_IS_ADULT && !CHECK_QUEST_ITEM(QUEST_MEDALLION_FOREST)) {
                if (ENKO_TYPE != ENKO_TYPE_CHILD_1 && ENKO_TYPE != ENKO_TYPE_CHILD_9) {
                    return false;
                } else {
                    return true;
                }
            }
            if (ENKO_TYPE != ENKO_TYPE_CHILD_9) {
                return false;
            } else {
                return true;
            }
        case SCENE_MIDOS_HOUSE:
            if (LINK_IS_ADULT && !CHECK_QUEST_ITEM(QUEST_MEDALLION_FOREST)) {
                if (ENKO_TYPE != ENKO_TYPE_CHILD_0 && ENKO_TYPE != ENKO_TYPE_CHILD_4) {
                    return false;
                } else {
                    return true;
                }
            } else {
                return false;
            }
        case SCENE_SARIAS_HOUSE:
            if (LINK_IS_ADULT && !CHECK_QUEST_ITEM(QUEST_MEDALLION_FOREST)) {
                if (ENKO_TYPE != ENKO_TYPE_CHILD_6) {
                    return false;
                } else {
                    return true;
                }
            } else {
                return false;
            }

        case SCENE_KOKIRI_SHOP:
            if (LINK_IS_ADULT && !CHECK_QUEST_ITEM(QUEST_MEDALLION_FOREST)) {
                if (ENKO_TYPE != ENKO_TYPE_CHILD_5 && ENKO_TYPE != ENKO_TYPE_CHILD_10) {
                    return false;
                } else {
                    return true;
                }
            } else if (ENKO_TYPE != ENKO_TYPE_CHILD_10) {
                return false;
            } else {
                return true;
            }

        case SCENE_LOST_WOODS:
            return (INV_CONTENT(ITEM_TRADE_ADULT) == ITEM_ODD_POTION) ? true : false;
        default:
            return false;
    }
}

void EnKo_Blink(EnKo* this) {
    void** eyeTextures;
    s32 headId;

    if (DECR(this->blinkTimer) == 0) {
        headId = sModelInfo[ENKO_TYPE].headId;
        this->eyeTextureIndex++;
        eyeTextures = sHead[headId].eyeTextures;
        if (eyeTextures != NULL && eyeTextures[this->eyeTextureIndex] == NULL) {
            this->blinkTimer = Rand_S16Offset(30, 30);
            this->eyeTextureIndex = 0;
        }
    }
}

void func_80A98CD8(EnKo* this) {
    s32 type = ENKO_TYPE;
    EnKoInteractInfo* info = &sInteractInfo[type];

    this->actor.attentionRangeType = info->attentionRangeType;
    this->lookDist = info->lookDist;
    this->lookDist += this->collider.dim.radius;
    this->appearDist = info->appearDist;
}

// Used to fetch actor animation?
s32 EnKo_GetForestQuestState2(EnKo* this) {
    if (LINK_IS_ADULT) {
        return CHECK_QUEST_ITEM(QUEST_MEDALLION_FOREST) ? ENKO_FQS_ADULT_SAVED : ENKO_FQS_ADULT_ENEMY;
    }
    if (CHECK_QUEST_ITEM(QUEST_KOKIRI_EMERALD)) {
        return GET_EVENTCHKINF(EVENTCHKINF_40) ? ENKO_FQS_CHILD_SARIA : ENKO_FQS_CHILD_STONE;
    }
    return ENKO_FQS_CHILD_START;
}

void func_80A98DB4(EnKo* this, PlayState* play) {
    f32 dist;

    if (play->sceneId != SCENE_LOST_WOODS && play->sceneId != SCENE_KOKIRI_FOREST) {
        this->modelAlpha = 255.0f;
        return;
    }
    if ((play->csCtx.state != CS_STATE_IDLE) || gDebugCamEnabled) {
        dist = Math_Vec3f_DistXYZ(&this->actor.world.pos, &play->view.eye) * 0.25f;
    } else {
        dist = this->actor.xzDistToPlayer;
    }

    Math_SmoothStepToF(&this->modelAlpha, (this->appearDist < dist) ? 0.0f : 255.0f, 0.3f, 40.0f, 1.0f);
    if (this->modelAlpha < 10.0f) {
        this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    } else {
        this->actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED;
    }
}

s32 func_80A98ECC(EnKo* this, PlayState* play) {
    if (play->sceneId == SCENE_LOST_WOODS && ENKO_TYPE == ENKO_TYPE_CHILD_FADO) {
        return func_80A97E18(this, play);
    }
    switch (EnKo_GetForestQuestState(this)) {
        case ENKO_FQS_CHILD_START:
            return EnKo_ChildStart(this, play);
        case ENKO_FQS_CHILD_STONE:
            return EnKo_ChildStone(this, play);
        case ENKO_FQS_CHILD_SARIA:
            return EnKo_ChildSaria(this, play);
        case ENKO_FQS_ADULT_ENEMY:
            return EnKo_AdultEnemy(this, play);
        case ENKO_FQS_ADULT_SAVED:
            return EnKo_AdultSaved(this, play);
    }
    // Note this function assumes the kokiri type is valid
    UNREACHABLE();
}

void EnKo_Init(Actor* thisx, PlayState* play) {
    EnKo* this = (EnKo*)thisx;

    if (ENKO_TYPE >= ENKO_TYPE_CHILD_MAX || !EnKo_IsOsAnimeAvailable(this, play) ||
        !EnKo_AreObjectsAvailable(this, play)) {
        Actor_Kill(thisx);
    }
    if (!EnKo_CanSpawn(this, play)) {
        Actor_Kill(thisx);
    }
    this->actionFunc = func_80A99048;
}

void EnKo_Destroy(Actor* thisx, PlayState* play) {
    EnKo* this = (EnKo*)thisx;
    Collider_DestroyCylinder(play, &this->collider);
}

void func_80A99048(EnKo* this, PlayState* play) {
    if (EnKo_IsOsAnimeLoaded(this, play) && EnKo_AreObjectsLoaded(this, play)) {
        this->actor.flags &= ~ACTOR_FLAG_UPDATE_CULLING_DISABLED;
        this->actor.objectSlot = this->legsObjectSlot;
        gSegments[6] = VIRTUAL_TO_PHYSICAL(play->objectCtx.slots[this->actor.objectSlot].segment);
        SkelAnime_InitFlex(play, &this->skelAnime, sSkeleton[sModelInfo[ENKO_TYPE].legsId].flexSkeletonHeader, NULL,
                           this->jointTable, this->morphTable, 16);
        ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 18.0f);
        gSegments[6] = VIRTUAL_TO_PHYSICAL(play->objectCtx.slots[this->osAnimeObjectSlot].segment);
        Collider_InitCylinder(play, &this->collider);
        Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
        CollisionCheck_SetInfo2(&this->actor.colChkInfo, NULL, &sColChkInfoInit);
        if (ENKO_TYPE == ENKO_TYPE_CHILD_7) {
            // "Angle Z"
            PRINTF(VT_BGCOL(BLUE) "  アングルＺ->(%d)\n" VT_RST, this->actor.shape.rot.z);
            if (LINK_IS_ADULT && !CHECK_QUEST_ITEM(QUEST_MEDALLION_FOREST)) {
                if (this->actor.shape.rot.z != 1) {
                    Actor_Kill(&this->actor);
                    return;
                }
            } else if (this->actor.shape.rot.z != 0) {
                Actor_Kill(&this->actor);
                return;
            }
        }
        if (ENKO_TYPE == ENKO_TYPE_CHILD_5) {
            this->collider.base.ocFlags1 |= 0x40;
        }
        this->forestQuestState = EnKo_GetForestQuestState2(this);
        Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, sOsAnimeLookup[ENKO_TYPE][this->forestQuestState]);
        Actor_SetScale(&this->actor, 0.01f);
        func_80A98CD8(this);
        this->modelAlpha = 0.0f;
        this->path = Path_GetByIndex(play, ENKO_PATH, 0xFF);
        Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_EN_ELF, this->actor.world.pos.x,
                           this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0, 3);
        if (ENKO_TYPE == ENKO_TYPE_CHILD_3) {
            if (!CHECK_QUEST_ITEM(QUEST_KOKIRI_EMERALD)) {
                this->collider.dim.height += 200;
                this->actionFunc = func_80A995CC;
                return;
            }
            Path_CopyLastPoint(this->path, &this->actor.world.pos);
        }
        this->actionFunc = func_80A99384;
    }
}

void func_80A99384(EnKo* this, PlayState* play) {
    if (ENKO_TYPE == ENKO_TYPE_CHILD_FADO && this->interactInfo.talkState != NPC_TALK_STATE_IDLE &&
        this->actor.textId == 0x10B9) {
        Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENKO_ANIM_LAUGHING);
        this->actionFunc = func_80A99438;
    } else if (ENKO_TYPE == ENKO_TYPE_CHILD_FADO && this->interactInfo.talkState == NPC_TALK_STATE_ACTION) {
        this->actionFunc = func_80A99504;
        play->msgCtx.stateTimer = 4;
        play->msgCtx.msgMode = MSGMODE_TEXT_CLOSING;
    }
}

void func_80A99438(EnKo* this, PlayState* play) {
    if (ENKO_TYPE == ENKO_TYPE_CHILD_FADO && this->interactInfo.talkState == NPC_TALK_STATE_ACTION) {
        Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENKO_ANIM_IDLE);
        this->actionFunc = func_80A99504;
        play->msgCtx.stateTimer = 4;
        play->msgCtx.msgMode = MSGMODE_TEXT_CLOSING;
    } else if (this->interactInfo.talkState == NPC_TALK_STATE_IDLE || this->actor.textId != 0x10B9) {
        Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENKO_ANIM_IDLE);
        this->actionFunc = func_80A99384;
    }
}

void func_80A99504(EnKo* this, PlayState* play) {
    if (Actor_HasParent(&this->actor, play)) {
        this->actor.parent = NULL;
        this->actionFunc = func_80A99560;
    } else {
        Actor_OfferGetItem(&this->actor, play, GI_POACHERS_SAW, 120.0f, 10.0f);
    }
}

void func_80A99560(EnKo* this, PlayState* play) {
    if (this->interactInfo.talkState == NPC_TALK_STATE_ITEM_GIVEN) {
        this->actor.textId = 0x10B9;
        Message_ContinueTextbox(play, this->actor.textId);
        this->interactInfo.talkState = NPC_TALK_STATE_TALKING;
        SET_ITEMGETINF(ITEMGETINF_31);
        this->actionFunc = func_80A99384;
    }
}

void func_80A995CC(EnKo* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    f32 temp_f2;
    f32 phi_f0;
    s16 homeYawToPlayer = Math_Vec3f_Yaw(&this->actor.home.pos, &player->actor.world.pos);

    this->actor.world.pos.x = this->actor.home.pos.x;
    this->actor.world.pos.x += 80.0f * Math_SinS(homeYawToPlayer);
    this->actor.world.pos.z = this->actor.home.pos.z;
    this->actor.world.pos.z += 80.0f * Math_CosS(homeYawToPlayer);
    this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;

    if (this->interactInfo.talkState == NPC_TALK_STATE_IDLE || !this->actor.isLockedOn) {
        temp_f2 = fabsf((f32)this->actor.yawTowardsPlayer - homeYawToPlayer) * 0.001f * 3.0f;
        if (temp_f2 < 1.0f) {
            this->skelAnime.playSpeed = 1.0f;
        } else {
            phi_f0 = CLAMP_MAX(temp_f2, 3.0f);
            this->skelAnime.playSpeed = phi_f0;
        }
    } else {
        this->skelAnime.playSpeed = 1.0f;
    }
}

void EnKo_Update(Actor* thisx, PlayState* play) {
    ColliderCylinder* collider;
    EnKo* this = (EnKo*)thisx;
    s32 pad;

    if (this->actionFunc != func_80A99048) {
        if ((s32)this->modelAlpha != 0) {
            gSegments[6] = VIRTUAL_TO_PHYSICAL(play->objectCtx.slots[this->osAnimeObjectSlot].segment);
            SkelAnime_Update(&this->skelAnime);
            func_80A98DB4(this, play);
            EnKo_Blink(this);
        } else {
            func_80A98DB4(this, play);
        }
    }
    if (this->interactInfo.talkState == NPC_TALK_STATE_IDLE) {
        Actor_MoveXZGravity(&this->actor);
    }
    if (func_80A97C7C(this)) {
        Actor_UpdateBgCheckInfo(play, &this->actor, 0.0f, 0.0f, 0.0f, UPDBGCHECKINFO_FLAG_2);
        this->actor.gravity = -1.0f;
    } else {
        this->actor.gravity = 0.0f;
    }
    this->actionFunc(this, play);
    func_80A9877C(this, play);
    collider = &this->collider;
    Collider_UpdateCylinder(&this->actor, collider);
    CollisionCheck_SetOC(play, &play->colChkCtx, &collider->base);
}

s32 EnKo_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx, Gfx** gfx) {
    EnKo* this = (EnKo*)thisx;
    void* eyeTexture;
    Vec3s limbRot;
    u8 headId;
    s32 pad;

    if (limbIndex == 15) {
        gSPSegment((*gfx)++, 0x06, play->objectCtx.slots[this->headObjectSlot].segment);
        gSegments[6] = VIRTUAL_TO_PHYSICAL(play->objectCtx.slots[this->headObjectSlot].segment);

        headId = sModelInfo[ENKO_TYPE].headId;
        *dList = sHead[headId].dList;
        if (sHead[headId].eyeTextures != NULL) {
            eyeTexture = sHead[headId].eyeTextures[this->eyeTextureIndex];
            gSPSegment((*gfx)++, 0x0A, SEGMENTED_TO_VIRTUAL(eyeTexture));
        }
        gSegments[6] = VIRTUAL_TO_PHYSICAL(play->objectCtx.slots[this->legsObjectSlot].segment);
    }
    if (limbIndex == 8) {
        limbRot = this->interactInfo.torsoRot;
        Matrix_RotateX(BINANG_TO_RAD_ALT(-limbRot.y), MTXMODE_APPLY);
        Matrix_RotateZ(BINANG_TO_RAD_ALT(limbRot.x), MTXMODE_APPLY);
    }
    if (limbIndex == 15) {
        Matrix_Translate(1200.0f, 0.0f, 0.0f, MTXMODE_APPLY);
        limbRot = this->interactInfo.headRot;
        Matrix_RotateX(BINANG_TO_RAD_ALT(limbRot.y), MTXMODE_APPLY);
        Matrix_RotateZ(BINANG_TO_RAD_ALT(limbRot.x), MTXMODE_APPLY);
        Matrix_Translate(-1200.0f, 0.0f, 0.0f, MTXMODE_APPLY);
    }
    if (limbIndex == 8 || limbIndex == 9 || limbIndex == 12) {
        rot->y += Math_SinS(this->fidgetTableY[limbIndex]) * FIDGET_AMPLITUDE;
        rot->z += Math_CosS(this->fidgetTableZ[limbIndex]) * FIDGET_AMPLITUDE;
    }
    return false;
}

void EnKo_PostLimbDraw(PlayState* play2, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx, Gfx** gfx) {
    PlayState* play = play2;
    EnKo* this = (EnKo*)thisx;
    Vec3f D_80A9A774 = { 0.0f, 0.0f, 0.0f };

    if (limbIndex == 7) {
        gSPSegment((*gfx)++, 0x06, play->objectCtx.slots[this->bodyObjectSlot].segment);
        gSegments[6] = VIRTUAL_TO_PHYSICAL(play->objectCtx.slots[this->bodyObjectSlot].segment);
    }
    if (limbIndex == 15) {
        Matrix_MultVec3f(&D_80A9A774, &this->actor.focus.pos);
    }
}

Gfx* EnKo_SetEnvColor(GraphicsContext* gfxCtx, u8 r, u8 g, u8 b, u8 a) {
    Gfx* dList = GRAPH_ALLOC(gfxCtx, sizeof(Gfx) * 2);

    gDPSetEnvColor(dList, r, g, b, a);
    gSPEndDisplayList(dList + 1);
    return dList;
}

void EnKo_Draw(Actor* thisx, PlayState* play) {
    EnKo* this = (EnKo*)thisx;
    Color_RGBA8 tunicColor = sModelInfo[ENKO_TYPE].tunicColor;
    Color_RGBA8 bootsColor = sModelInfo[ENKO_TYPE].bootsColor;

    this->actor.shape.shadowAlpha = this->modelAlpha;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_ko.c", 2095);
    if ((s16)this->modelAlpha == 255) {
        gSPSegment(POLY_OPA_DISP++, 0x08,
                   EnKo_SetEnvColor(play->state.gfxCtx, tunicColor.r, tunicColor.g, tunicColor.b, 255));
        gSPSegment(POLY_OPA_DISP++, 0x09,
                   EnKo_SetEnvColor(play->state.gfxCtx, bootsColor.r, bootsColor.g, bootsColor.b, 255));
        func_80034BA0(play, &this->skelAnime, EnKo_OverrideLimbDraw, EnKo_PostLimbDraw, &this->actor, this->modelAlpha);
    } else if ((s16)this->modelAlpha != 0) {
        tunicColor.a = this->modelAlpha;
        bootsColor.a = this->modelAlpha;
        gSPSegment(POLY_XLU_DISP++, 0x08,
                   EnKo_SetEnvColor(play->state.gfxCtx, tunicColor.r, tunicColor.g, tunicColor.b, tunicColor.a));
        gSPSegment(POLY_XLU_DISP++, 0x09,
                   EnKo_SetEnvColor(play->state.gfxCtx, bootsColor.r, bootsColor.g, bootsColor.b, bootsColor.a));
        func_80034CC4(play, &this->skelAnime, EnKo_OverrideLimbDraw, EnKo_PostLimbDraw, &this->actor, this->modelAlpha);
    }
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_ko.c", 2136);
}
