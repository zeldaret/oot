#include "z_en_go2.h"
#include "overlays/actors/ovl_En_Bom/z_en_bom.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"
#include "assets/objects/object_oF1d_map/object_oF1d_map.h"
#include "quake.h"
#include "versions.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY | ACTOR_FLAG_4 | ACTOR_FLAG_5)

/*
FLAGS

EVENTCHKINF_23 - DC entrance boulder blown up as child

InfTable

INFTABLE_B4
INFTABLE_E0 - Talked to DMT Goron at DC entrance (Before DC is opened as child)
INFTABLE_E3 - Talked to GC Goron in bottom level stairwell
INFTABLE_E6 - Talked to GC Goron at LW entrance (Before LW shortcut is opened)
INFTABLE_EB - Talked to DMT Goron at Bomb Flower with goron bracelet
INFTABLE_F0 - Talked to Goron at GC Entrance (Before goron ruby is obtained)
INFTABLE_F4 - Talked to Goron at GC Island (Before goron ruby is obtained)
INFTABLE_F8 - (not on cloud modding) Talked to GC Goron outside Darunias door (after opening door,
before getting goron bracelet)
INFTABLE_109 - Obtained Fire Tunic from Goron Link
INFTABLE_10A - (not on cloud modding)
INFTABLE_10B - Spoke to Goron Link About Volvagia
INFTABLE_10C - Stopped Goron Link's Rolling
INFTABLE_10D - EnGo Exclusive
INFTABLE_10E - Spoke to Goron Link
INFTABLE_10F - (not on cloud modding)

INFTABLE_11E - Bomb bag upgrade obtained from rolling Goron

Gorons only move when this->interactInfo.talkState == NPC_TALK_STATE_IDLE
*/

void EnGo2_Init(Actor* thisx, PlayState* play);
void EnGo2_Destroy(Actor* thisx, PlayState* play);
void EnGo2_Update(Actor* thisx, PlayState* play);
void EnGo2_Draw(Actor* thisx, PlayState* play);

void EnGo2_StopRolling(EnGo2* this, PlayState* play);
void EnGo2_CurledUp(EnGo2* this, PlayState* play);

void EnGo2_Standing(EnGo2* this, PlayState* play);
void EnGo2_GoronDmtBombFlower(EnGo2* this, PlayState* play);
void EnGo2_GoronRollingBig(EnGo2* this, PlayState* play);
void EnGo2_RollingStart(EnGo2* this, PlayState* play);
void EnGo2_RollingSlow(EnGo2* this, PlayState* play);
void EnGo2_GroundRolling(EnGo2* this, PlayState* play);

void EnGo2_RollingReverse(EnGo2* this, PlayState* play);
void EnGo2_HandleOffer(EnGo2* this, PlayState* play);
void EnGo2_HandleOfferParented(EnGo2* this, PlayState* play);
void EnGo2_BiggoronEyedrops(EnGo2* this, PlayState* play);
void EnGo2_GoronLink(EnGo2* this, PlayState* play);
void EnGo2_GoronFireGeneric(EnGo2* this, PlayState* play);

static void* sDustTex[] = { gDust8Tex, gDust7Tex, gDust6Tex, gDust5Tex, gDust4Tex, gDust3Tex, gDust2Tex, gDust1Tex };

static Vec3f sPos = { 0.0f, 0.0f, 0.0f };
static Vec3f sVelocity = { 0.0f, 0.0f, 0.0f };
static Vec3f sAccel = { 0.0f, 0.3f, 0.0f };

static ColliderCylinderInit sCylinderInit = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x00000008, 0x00, 0x00 },
        ATELEM_NONE,
        ACELEM_NONE,
        OCELEM_ON,
    },
    { 40, 65, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit2 sColChkInfoInit = { 0, 0, 0, 0, MASS_IMMOVABLE };

ActorProfile En_Go2_Profile = {
    /**/ ACTOR_EN_GO2,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_OF1D_MAP,
    /**/ sizeof(EnGo2),
    /**/ EnGo2_Init,
    /**/ EnGo2_Destroy,
    /**/ EnGo2_Update,
    /**/ EnGo2_Draw,
};

static EnGo2ColliderData sColliderData[14] = {
    { 0, 0, 0, 68, 148 }, { 0, 0, 0, 24, 52 }, { 0, 320, 380, 400, 120 }, { 0, 0, 0, 30, 68 }, { 0, 0, 0, 46, 90 },
    { 0, 0, 0, 30, 68 },  { 0, 0, 0, 30, 68 }, { 0, 0, 0, 30, 68 },       { 0, 0, 0, 30, 68 }, { 0, 0, 0, 30, 68 },
    { 0, 0, 0, 30, 68 },  { 0, 0, 0, 30, 68 }, { 0, 0, 0, 30, 68 },       { 0, 0, 0, 30, 68 },
};

static EnGo2ShapeData sShapeData[14] = {
    { 30.0f, 0.026f, 6, 60.0f }, { 24.0f, 0.008f, 6, 30.0f }, { 28.0f, 0.16f, 5, 380.0f }, { 28.0f, 0.01f, 7, 40.0f },
    { 30.0f, 0.015f, 6, 30.0f }, { 28.0f, 0.01f, 6, 30.0f },  { 28.0f, 0.01f, 6, 30.0f },  { 28.0f, 0.01f, 6, 30.0f },
    { 28.0f, 0.01f, 6, 30.0f },  { 28.0f, 0.01f, 6, 30.0f },  { 28.0f, 0.01f, 6, 30.0f },  { 28.0f, 0.01f, 6, 30.0f },
    { 28.0f, 0.01f, 6, 30.0f },  { 28.0f, 0.01f, 6, 30.0f },
};

static f32 sPlayerTrackingYOffsets[14][2] = {
    // { adult, child }
    { 80.0f, 80.0f }, { -10.0f, -10.0f }, { 800.0f, 800.0f }, { 0.0f, 0.0f },   { 20.0f, 40.0f },
    { 20.0f, 20.0f }, { 20.0f, 20.0f },   { 20.0f, 20.0f },   { 20.0f, 20.0f }, { 20.0f, 20.0f },
    { 20.0f, 20.0f }, { 20.0f, 20.0f },   { 20.0f, 20.0f },   { 20.0f, 20.0f },
};

typedef enum EnGo2Animation {
    /*  0 */ ENGO2_ANIM_UNCURL_SIT_STAND_IDLE, // default idle
    /*  1 */ ENGO2_ANIM_UNCURL_SIT_STAND,
    /*  2 */ ENGO2_ANIM_WALKING_LOOP,
    /*  3 */ ENGO2_ANIM_SIDESTEP_LOOP,
    /*  4 */ ENGO2_ANIM_CRYING_LOOP,
    /*  5 */ ENGO2_ANIM_EYEDROPS_LOOP,
    /*  6 */ ENGO2_ANIM_EYEDROPS_TAKEN,
    /*  7 */ ENGO2_ANIM_UNCURL_PRONE_UNUSED,
    /*  8 */ ENGO2_ANIM_PRONE_LOOP_UNUSED,
    /*  9 */ ENGO2_ANIM_SCRATCHING_LOOP,
    /* 10 */ ENGO2_ANIM_UNCURL_SIT_STAND_BIG,
    /* 11 */ ENGO2_ANIM_SOBBING_LOOP,
    /* 12 */ ENGO2_ANIM_SHAKING_LOOP
} EnGo2Animation;

static AnimationInfo sAnimationInfo[] = {
    { &gGoronUncurlSitStandAnim, 0.0f, 0.0f, -1.0f, 0x00, 0.0f },
    { &gGoronUncurlSitStandAnim, 0.0f, 0.0f, -1.0f, 0x00, -8.0f },
    { &gGoronWalkingLoopAnim, 1.0f, 0.0f, -1.0f, 0x00, -8.0f },
    { &gGoronSidestepLoopAnim, 1.0f, 0.0f, -1.0f, 0x00, -8.0f },
    { &gGoronCryingLoopAnim, 1.0f, 0.0f, -1.0f, 0x00, -8.0f },
    { &gGoronEyeropsLoopAnim, 1.0f, 0.0f, -1.0f, 0x02, -8.0f },
    { &gGoronEyedropsTakenAnim, 1.0f, 0.0f, -1.0f, 0x02, -8.0f },
    { &gGoronUncurlToProneAnim, 1.0f, 0.0f, -1.0f, 0x00, -8.0f },
    { &gGoronProneLoopAnim, 1.0f, 0.0f, -1.0f, 0x00, -8.0f },
    { &gGoronScratchingLoopAnim, 1.0f, 0.0f, -1.0f, 0x00, -8.0f },
    { &gGoronUncurlSitStandAnim, 0.0f, 0.0f, -1.0f, 0x01, -8.0f },
    { &gGoronSobbingLoopAnim, 1.0f, 0.0f, -1.0f, 0x00, -8.0f },
    { &gGoronShakingLoopAnim, 1.0f, 0.0f, -1.0f, 0x00, -8.0f },
};

#define ENGO2_GET_TYPE(this) PARAMS_GET_S((this)->actor.params, 0, 5)
typedef enum GoronType {
    /* 0x00 */ GORON_CITY_ROLLING_BIG,
    /* 0x01 */ GORON_CITY_LINK,
    /* 0x02 */ GORON_DMT_BIGGORON,
    /* 0x03 */ GORON_FIRE_GENERIC,
    /* 0x04 */ GORON_DMT_BOMB_FLOWER,
    /* 0x05 */ GORON_DMT_ROLLING_SMALL,
    /* 0x06 */ GORON_DMT_DC_ENTRANCE,
    /* 0x07 */ GORON_CITY_ENTRANCE,
    /* 0x08 */ GORON_CITY_ISLAND,
    /* 0x09 */ GORON_CITY_LOWEST_FLOOR,
    /* 0x0A */ GORON_CITY_STAIRWELL,
    /* 0x0B */ GORON_CITY_LOST_WOODS,
    /* 0x0C */ GORON_DMT_FAIRY_HINT,
    /* 0x0D */ GORON_MARKET_BAZAAR
} GoronType;

#define ENGO2_GET_PATH_INDEX(this) PARAMS_GET_S((this)->actor.params, 5, 5)
#define ENGO2_CAGED_FLAG(this) PARAMS_GET_S((this)->actor.params, 10, 6)
#define ENGO2_IS_CAGE_OPEN(play, this) Flags_GetSwitch(play, ENGO2_CAGED_FLAG(this))

static EnGo2DustEffectData sDustEffectData[2][4] = {
    {
        // default
        { 12, 0.2f, 0.2f, 1, 18.0f, 0.0f },
        { 12, 0.1f, 0.2f, 12, 26.0f, 0.0f },
        { 12, 0.1f, 0.3f, 4, 10.0f, 0.0f },
        { 12, 0.2f, 0.2f, 1, 18.0f, 0.0f },
    },
    {
        // GORON_CITY_ROLLING_BIG
        { 12, 0.5f, 0.4f, 3, 42.0f, 0.0f },
        { 12, 0.5f, 0.4f, 3, 42.0f, 0.0f },
        { 12, 0.5f, 0.4f, 3, 42.0f, 0.0f },
        { 12, 0.5f, 0.4f, 3, 42.0f, 0.0f },
    },
};

static Vec3f sZeroVec = { 0.0f, 0.0f, 0.0f };

void EnGo2_SpawnEffectDust(EnGo2* this, Vec3f* pos, Vec3f* velocity, Vec3f* accel, u8 initialTimer, f32 scale,
                           f32 scaleStep) {
    EnGoEffect* dustEffect = this->effects;
    s16 i;

    for (i = 0; i < EN_GO2_EFFECT_COUNT; i++, dustEffect++) {
        if (dustEffect->type != 1) {
            dustEffect->scale = scale;
            dustEffect->scaleStep = scaleStep;
            dustEffect->initialTimer = dustEffect->timer = initialTimer;
            dustEffect->type = 1;
            dustEffect->pos = *pos;
            dustEffect->accel = *accel;
            dustEffect->velocity = *velocity;
            break;
        }
    }
}

void EnGo2_UpdateEffects(EnGo2* this) {
    EnGoEffect* dustEffect = this->effects;
    f32 randomNumber;
    s16 i;

    for (i = 0; i < EN_GO2_EFFECT_COUNT; i++, dustEffect++) {
        if (dustEffect->type) {
            dustEffect->timer--;
            if (dustEffect->timer == 0) {
                dustEffect->type = 0;
            }
            dustEffect->accel.x = (Rand_ZeroOne() * 0.4f) - 0.2f;
            randomNumber = Rand_ZeroOne() * 0.4f;
            dustEffect->accel.z = randomNumber - 0.2f;
            dustEffect->pos.x += dustEffect->velocity.x;
            dustEffect->pos.y += dustEffect->velocity.y;
            dustEffect->pos.z += dustEffect->velocity.z;
            dustEffect->velocity.x += dustEffect->accel.x;
            dustEffect->velocity.y += dustEffect->accel.y;
            dustEffect->velocity.z += randomNumber - 0.2f;
            dustEffect->scale += dustEffect->scaleStep;
        }
    }
}

void EnGo2_DrawEffects(EnGo2* this, PlayState* play) {
    EnGoEffect* dustEffect = this->effects;
    s16 alpha;
    s16 materialFlag;
    s16 index;
    s16 i;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_go2_eff.c", 111);

    materialFlag = false;
    Gfx_SetupDL_25Xlu(play->state.gfxCtx);

    for (i = 0; i < EN_GO2_EFFECT_COUNT; i++, dustEffect++) {
        if (dustEffect->type == 0) {
            continue;
        }

        if (!materialFlag) {
            POLY_XLU_DISP = Gfx_SetupDL(POLY_XLU_DISP, SETUPDL_0);
            gSPDisplayList(POLY_XLU_DISP++, gGoronParticleMaterialDL);
            gDPSetEnvColor(POLY_XLU_DISP++, 100, 60, 20, 0);
            materialFlag = true;
        }

        alpha = dustEffect->timer * (255.0f / dustEffect->initialTimer);
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 170, 130, 90, alpha);
        gDPPipeSync(POLY_XLU_DISP++);
        Matrix_Translate(dustEffect->pos.x, dustEffect->pos.y, dustEffect->pos.z, MTXMODE_NEW);
        Matrix_ReplaceRotation(&play->billboardMtxF);
        Matrix_Scale(dustEffect->scale, dustEffect->scale, 1.0f, MTXMODE_APPLY);
        MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_en_go2_eff.c", 137);
        index = dustEffect->timer * (8.0f / dustEffect->initialTimer);
        gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sDustTex[index]));
        gSPDisplayList(POLY_XLU_DISP++, gGoronParticleDL);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_go2_eff.c", 151);
}

s32 EnGo2_SpawnDustExplicitly(EnGo2* this, u8 initialTimer, f32 scale, f32 scaleStep, s32 numDustEffects, f32 radius,
                              f32 yAccel) {
    Vec3f pos = sPos;
    Vec3f velocity = sVelocity;
    Vec3f accel = sAccel;
    s32 i;
    s16 angle;

    pos = this->actor.world.pos; // overwrites sPos data
    pos.y = this->actor.floorHeight;
    angle = (Rand_ZeroOne() - 0.5f) * 0x10000;
    i = numDustEffects;
    while (i >= 0) {
        accel.y += Rand_ZeroOne() * yAccel;
        pos.x = (Math_SinS(angle) * radius) + this->actor.world.pos.x;
        pos.z = (Math_CosS(angle) * radius) + this->actor.world.pos.z;
        EnGo2_SpawnEffectDust(this, &pos, &velocity, &accel, initialTimer, scale, scaleStep);
        angle += (s16)(0x10000 / numDustEffects);
        i--;
    }
    return 0;
}

void EnGo2_OfferItem(EnGo2* this, PlayState* play, s32 getItemId) {
    this->getItemId = getItemId;
    Actor_OfferGetItem(&this->actor, play, getItemId, this->actor.xzDistToPlayer + 1.0f,
                       fabsf(this->actor.yDistToPlayer) + 1.0f);
}

s32 EnGo2_GetDialogState(EnGo2* this, PlayState* play) {
    s16 dialogState = Message_GetState(&play->msgCtx);

    if ((this->messageState == TEXT_STATE_AWAITING_NEXT) || (this->messageState == TEXT_STATE_EVENT) ||
        (this->messageState == TEXT_STATE_CLOSING) || (this->messageState == TEXT_STATE_DONE_HAS_NEXT)) {
        if (dialogState != this->messageState) {
            this->messageEntry++;
        }
    }

    this->messageState = dialogState;
    return dialogState;
}

u16 EnGo2_GoronFireGenericGetTextId(EnGo2* this) {
    switch (ENGO2_CAGED_FLAG(this)) {
        case 3:
            return 0x3069;
        case 5:
            return 0x306A;
        case 4:
            return 0x306B;
        case 2:
            return 0x306C;
        case 10:
            return 0x306D;
        case 8:
            return 0x306E;
        case 11:
            return 0x306F;
        case 1:
            return 0x3070;
        default:
            return 0x3052;
    }
}

u16 EnGo2_GetTextIdGoronCityRollingBig(PlayState* play, EnGo2* this) {
    if (GET_INFTABLE(INFTABLE_11E)) {
        return 0x3013;
    } else if (CUR_CAPACITY(UPG_BOMB_BAG) >= 20 && this->waypoint > 7 && this->waypoint < 12) {
        return 0x3012;
    } else {
        return 0x3011;
    }
}

s16 EnGo2_UpdateTalkStateGoronCityRollingBig(PlayState* play, EnGo2* this) {
    s32 bombBagUpgrade;

    switch (Message_GetState(&play->msgCtx)) {
        case TEXT_STATE_CLOSING:
            return NPC_TALK_STATE_ACTION;
        case TEXT_STATE_EVENT:
            if (Message_ShouldAdvance(play)) {
                if (this->actor.textId == 0x3012) {
                    this->actionFunc = EnGo2_HandleOffer;
                    bombBagUpgrade = CUR_CAPACITY(UPG_BOMB_BAG) == 30 ? GI_BOMB_BAG_40 : GI_BOMB_BAG_30;
                    EnGo2_OfferItem(this, play, bombBagUpgrade);
                    Message_CloseTextbox(play);
                    SET_INFTABLE(INFTABLE_11E);
                    return NPC_TALK_STATE_ACTION;
                } else {
                    return NPC_TALK_STATE_ACTION;
                }
            }
            FALLTHROUGH;
        default:
            return NPC_TALK_STATE_TALKING;
    }
}

u16 EnGo2_GetTextIdGoronDmtBombFlower(PlayState* play, EnGo2* this) {
    return CHECK_QUEST_ITEM(QUEST_GORON_RUBY) ? 0x3027 : 0x300A;
}

// DMT Goron by Bomb Flower Choice
s16 EnGo2_UpdateTalkStateGoronDmtBombFlower(PlayState* play, EnGo2* this) {
    switch (Message_GetState(&play->msgCtx)) {
        case TEXT_STATE_CLOSING:
            if ((this->actor.textId == 0x300B) && !GET_INFTABLE(INFTABLE_EB)) {
                SET_INFTABLE(INFTABLE_EB);
                return NPC_TALK_STATE_ACTION;
            } else {
                return NPC_TALK_STATE_IDLE;
            }
        case TEXT_STATE_CHOICE:
            if (Message_ShouldAdvance(play)) {
                // Ask question to DMT Goron by bomb flower
                if (this->actor.textId == 0x300A) {
                    if (play->msgCtx.choiceIndex == 0) {
                        this->actor.textId = CUR_UPG_VALUE(UPG_STRENGTH) != 0 ? 0x300B : 0x300C;
                    } else {
                        this->actor.textId = 0x300D;
                    }
                    Message_ContinueTextbox(play, this->actor.textId);
                }
                return NPC_TALK_STATE_TALKING;
            }
            FALLTHROUGH;
        default:
            return NPC_TALK_STATE_TALKING;
    }
}

u16 EnGo2_GetTextIdGoronDmtRollingSmall(PlayState* play, EnGo2* this) {
    if (CHECK_QUEST_ITEM(QUEST_GORON_RUBY)) {
        return 0x3027;
    } else {
        return GET_EVENTCHKINF(EVENTCHKINF_23) ? 0x3026 : 0x3009;
    }
}

s16 EnGo2_UpdateTalkStateGoronDmtRollingSmall(PlayState* play, EnGo2* this) {
    if (Message_GetState(&play->msgCtx) == TEXT_STATE_CLOSING) {
        return NPC_TALK_STATE_IDLE;
    } else {
        return NPC_TALK_STATE_TALKING;
    }
}

u16 EnGo2_GetTextIdGoronDmtDcEntrance(PlayState* play, EnGo2* this) {
    if (CHECK_QUEST_ITEM(QUEST_MEDALLION_FIRE) && LINK_IS_ADULT) {
        return 0x3043;
    } else if (CHECK_QUEST_ITEM(QUEST_GORON_RUBY)) {
        return 0x3027;
    } else {
        return GET_EVENTCHKINF(EVENTCHKINF_23) ? 0x3021 : GET_INFTABLE(INFTABLE_E0) ? 0x302A : 0x3008;
    }
}

s16 EnGo2_UpdateTalkStateGoronDmtDcEntrance(PlayState* play, EnGo2* this) {
    if (Message_GetState(&play->msgCtx) == TEXT_STATE_CLOSING) {
        if (this->actor.textId == 0x3008) {
            SET_INFTABLE(INFTABLE_E0);
        }
        return NPC_TALK_STATE_IDLE;
    } else {
        return NPC_TALK_STATE_TALKING;
    }
}

u16 EnGo2_GetTextIdGoronCityEntrance(PlayState* play, EnGo2* this) {
    if (CHECK_QUEST_ITEM(QUEST_MEDALLION_FIRE) && LINK_IS_ADULT) {
        return 0x3043;
    } else if (CHECK_QUEST_ITEM(QUEST_GORON_RUBY)) {
        return 0x3027;
    } else {
        return GET_INFTABLE(INFTABLE_F0) ? 0x3015 : 0x3014;
    }
}

s16 EnGo2_UpdateTalkStateGoronCityEntrance(PlayState* play, EnGo2* this) {
    if (Message_GetState(&play->msgCtx) == TEXT_STATE_CLOSING) {
        if (this->actor.textId == 0x3014) {
            SET_INFTABLE(INFTABLE_F0);
        }
        return NPC_TALK_STATE_IDLE;
    } else {
        return NPC_TALK_STATE_TALKING;
    }
}

u16 EnGo2_GetTextIdGoronCityIsland(PlayState* play, EnGo2* this) {
    if (CHECK_QUEST_ITEM(QUEST_MEDALLION_FIRE) && LINK_IS_ADULT) {
        return 0x3043;
    } else if (CHECK_QUEST_ITEM(QUEST_GORON_RUBY)) {
        return 0x3067;
    } else {
        return GET_INFTABLE(INFTABLE_F4) ? 0x3017 : 0x3016;
    }
}

s16 EnGo2_UpdateTalkStateGoronCityIsland(PlayState* play, EnGo2* this) {
    if (Message_GetState(&play->msgCtx) == TEXT_STATE_CLOSING) {
        if (this->actor.textId == 0x3016) {
            SET_INFTABLE(INFTABLE_F4);
        }
        return NPC_TALK_STATE_IDLE;
    } else {
        return NPC_TALK_STATE_TALKING;
    }
}

u16 EnGo2_GetTextIdGoronCityLowestFloor(PlayState* play, EnGo2* this) {
    if (CHECK_QUEST_ITEM(QUEST_MEDALLION_FIRE) && LINK_IS_ADULT) {
        return 0x3043;
    } else if (CHECK_QUEST_ITEM(QUEST_GORON_RUBY)) {
        return 0x3027;
    } else {
        return CUR_UPG_VALUE(UPG_STRENGTH) != 0 ? 0x302C
               : !Flags_GetSwitch(play, 0x1B)   ? 0x3017
               : GET_INFTABLE(INFTABLE_F8)      ? 0x3019
                                                : 0x3018;
    }
}

s16 EnGo2_UpdateTalkStateGoronCityLowestFloor(PlayState* play, EnGo2* this) {
    if (Message_GetState(&play->msgCtx) == TEXT_STATE_CLOSING) {
        if (this->actor.textId == 0x3018) {
            SET_INFTABLE(INFTABLE_F8);
        }
        return NPC_TALK_STATE_IDLE;
    } else {
        return NPC_TALK_STATE_TALKING;
    }
}

u16 EnGo2_GetTextIdGoronCityLink(PlayState* play, EnGo2* this) {
    if (CHECK_QUEST_ITEM(QUEST_MEDALLION_FIRE)) {
        return GET_INFTABLE(INFTABLE_10F) ? 0x3042 : 0x3041;
    } else if (CHECK_OWNED_EQUIP(EQUIP_TYPE_TUNIC, EQUIP_INV_TUNIC_GORON)) {
        return GET_INFTABLE(INFTABLE_10E) ? 0x3038 : 0x3037;
    } else if (GET_INFTABLE(INFTABLE_10C)) {
        this->messageEntry = 0;
        this->messageState = TEXT_STATE_NONE;
        return GET_INFTABLE(INFTABLE_10A) ? 0x3033 : 0x3032;
    } else {
        return 0x3030;
    }
}

s16 EnGo2_UpdateTalkStateGoronCityLink(PlayState* play, EnGo2* this) {
    switch (EnGo2_GetDialogState(this, play)) {
        case TEXT_STATE_CLOSING:
            switch (this->actor.textId) {
                case 0x3036:
                    EnGo2_OfferItem(this, play, GI_TUNIC_GORON);
                    this->actionFunc = EnGo2_HandleOffer;
                    return NPC_TALK_STATE_ACTION;
                case 0x3037:
                    SET_INFTABLE(INFTABLE_10E);
                    FALLTHROUGH;
                default:
                    return NPC_TALK_STATE_IDLE;
            }
        case TEXT_STATE_CHOICE:
            if (Message_ShouldAdvance(play)) {
                if (this->actor.textId == 0x3034) {
                    if (play->msgCtx.choiceIndex == 0) {
                        this->actor.textId = GET_INFTABLE(INFTABLE_10B) ? 0x3033 : 0x3035;
                        if (this->actor.textId == 0x3035) {
                            Audio_StopSfxById(NA_SE_EN_GOLON_CRY);
                        }
                    } else {
                        this->actor.textId = GET_INFTABLE(INFTABLE_10B) ? 0x3036 : 0x3033;
                        if (this->actor.textId == 0x3036) {
                            Audio_StopSfxById(NA_SE_EN_GOLON_CRY);
                        }
                    }
                    Message_ContinueTextbox(play, this->actor.textId);
                    this->messageEntry = 0;
                }
            } else {
                break;
            }
            return NPC_TALK_STATE_TALKING;
        case TEXT_STATE_EVENT:
            if (Message_ShouldAdvance(play)) {
                switch (this->actor.textId) {
                    case 0x3035:
                        SET_INFTABLE(INFTABLE_10B);
                        FALLTHROUGH;
                    case 0x3032:
                    case 0x3033:
                        this->actor.textId = 0x3034;
                        Message_ContinueTextbox(play, this->actor.textId);
                        return NPC_TALK_STATE_TALKING;
                    default:
                        return NPC_TALK_STATE_ACTION;
                }
            }
            break;
    }
    return NPC_TALK_STATE_TALKING;
}

u16 EnGo2_GetTextIdGoronDmtBiggoron(PlayState* play, EnGo2* this) {
    Player* player = GET_PLAYER(play);

    if (gSaveContext.save.info.playerData.bgsFlag) {
        player->exchangeItemId = EXCH_ITEM_CLAIM_CHECK;
        return 0x305E;
    } else if (INV_CONTENT(ITEM_TRADE_ADULT) >= ITEM_CLAIM_CHECK) {
        player->exchangeItemId = EXCH_ITEM_CLAIM_CHECK;
        return 0x305E;
    } else if (INV_CONTENT(ITEM_TRADE_ADULT) >= ITEM_PRESCRIPTION) {
        player->exchangeItemId = EXCH_ITEM_EYE_DROPS;
        return 0x3058;
    } else {
        player->exchangeItemId = EXCH_ITEM_BROKEN_GORONS_SWORD;
        return 0x3053;
    }
}

s16 EnGo2_UpdateTalkStateGoronDmtBiggoron(PlayState* play, EnGo2* this) {
    s32 unusedPad;
    u8 dialogState = this->messageState;

    switch (EnGo2_GetDialogState(this, play)) {
#if OOT_VERSION < PAL_1_0
        case TEXT_STATE_CLOSING:
#else
        case TEXT_STATE_DONE:
#endif
            if (this->actor.textId == 0x305E) {
                if (!gSaveContext.save.info.playerData.bgsFlag) {
                    EnGo2_OfferItem(this, play, GI_SWORD_BIGGORON);
                    this->actionFunc = EnGo2_HandleOffer;
                    return NPC_TALK_STATE_ACTION;
                } else {
                    return NPC_TALK_STATE_IDLE;
                }
            } else {
                return NPC_TALK_STATE_IDLE;
            }
        case TEXT_STATE_DONE_FADING:
            switch (this->actor.textId) {
                case 0x305E:
                    if (Player_GetExchangeItemId(play) != EXCH_ITEM_CLAIM_CHECK) {
                        break;
                    }
                    FALLTHROUGH;
                case 0x3059:
                    if (dialogState == TEXT_STATE_NONE) {
                        func_800F4524(&gSfxDefaultPos, NA_SE_EN_GOLON_WAKE_UP, 60);
                    }
                    FALLTHROUGH;
                case 0x3054:
                    if (dialogState == TEXT_STATE_NONE) {
                        Audio_PlaySfxGeneral(NA_SE_SY_TRE_BOX_APPEAR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                    }
                    break;
            }
            return NPC_TALK_STATE_TALKING;
        case TEXT_STATE_CHOICE:
            if (Message_ShouldAdvance(play)) {
                if ((this->actor.textId == 0x3054) || (this->actor.textId == 0x3055)) {
                    if (play->msgCtx.choiceIndex == 0) {
                        EnGo2_OfferItem(this, play, GI_PRESCRIPTION);
                        this->actionFunc = EnGo2_HandleOffer;
                        return NPC_TALK_STATE_ACTION;
                    }
                    this->actor.textId = 0x3056;
                    Message_ContinueTextbox(play, this->actor.textId);
                }
                return NPC_TALK_STATE_TALKING;
            }
            break;
        case TEXT_STATE_EVENT:
            if (Message_ShouldAdvance(play)) {
                if (this->actor.textId == 0x3059) {
                    play->msgCtx.msgMode = MSGMODE_PAUSED;
                    this->actionFunc = EnGo2_BiggoronEyedrops;
                }
                return NPC_TALK_STATE_ACTION;
            }
            break;
    }
    return NPC_TALK_STATE_TALKING;
}

u16 EnGo2_GetTextIdGoronFireGeneric(PlayState* play, EnGo2* this) {
    if (ENGO2_IS_CAGE_OPEN(play, this)) {
        return 0x3071;
    } else {
        return 0x3051;
    }
}

s16 EnGo2_UpdateTalkStateGoronFireGeneric(PlayState* play, EnGo2* this) {
    switch (Message_GetState(&play->msgCtx)) {
        case TEXT_STATE_CLOSING:
            return NPC_TALK_STATE_IDLE;
        case TEXT_STATE_EVENT:
            if (Message_ShouldAdvance(play)) {
                if (this->actor.textId == 0x3071) {
                    this->actor.textId = EnGo2_GoronFireGenericGetTextId(this);
                    Message_ContinueTextbox(play, this->actor.textId);
                }
                return NPC_TALK_STATE_TALKING;
            }
            FALLTHROUGH;
        default:
            return NPC_TALK_STATE_TALKING;
    }
}

u16 EnGo2_GetTextIdGoronCityStairwell(PlayState* play, EnGo2* this) {
    return !LINK_IS_ADULT ? GET_INFTABLE(INFTABLE_E3) ? 0x3022 : 0x300E : 0x3043;
}

s16 EnGo2_UpdateTalkStateGoronCityStairwell(PlayState* play, EnGo2* this) {
    if (Message_GetState(&play->msgCtx) == TEXT_STATE_CLOSING) {
        if (this->actor.textId == 0x300E) {
            SET_INFTABLE(INFTABLE_E3);
        }
        return NPC_TALK_STATE_IDLE;
    } else {
        return NPC_TALK_STATE_TALKING;
    }
}

// Goron in child market bazaar after obtaining Goron Ruby
u16 EnGo2_GetTextIdGoronMarketBazaar(PlayState* play, EnGo2* this) {
    return 0x7122;
}

s16 EnGo2_UpdateTalkStateGoronMarketBazaar(PlayState* play, EnGo2* this) {
    if (Message_GetState(&play->msgCtx) == TEXT_STATE_CLOSING) {
        return NPC_TALK_STATE_IDLE;
    } else {
        return NPC_TALK_STATE_TALKING;
    }
}

u16 EnGo2_GetTextIdGoronCityLostWoods(PlayState* play, EnGo2* this) {
    if (!LINK_IS_ADULT) {
        if (Flags_GetSwitch(play, 0x1C)) {
            return 0x302F;
        } else {
            return GET_INFTABLE(INFTABLE_E6) ? 0x3025 : 0x3024;
        }
    } else {
        return 0x3043;
    }
}

s16 EnGo2_UpdateTalkStateGoronCityLostWoods(PlayState* play, EnGo2* this) {
    if (Message_GetState(&play->msgCtx) == TEXT_STATE_CLOSING) {
        if (this->actor.textId == 0x3024) {
            SET_INFTABLE(INFTABLE_E6);
        }
        return NPC_TALK_STATE_IDLE;
    } else {
        return NPC_TALK_STATE_TALKING;
    }
}

// Goron at base of DMT summit
u16 EnGo2_GetTextIdGoronDmtFairyHint(PlayState* play, EnGo2* this) {
    if (!LINK_IS_ADULT) {
        return CHECK_QUEST_ITEM(QUEST_GORON_RUBY) ? 0x3065 : 0x3064;
    } else {
        return 0x3043;
    }
}

s16 EnGo2_UpdateTalkStateGoronDmtFairyHint(PlayState* play, EnGo2* this) {
    if (Message_GetState(&play->msgCtx) == TEXT_STATE_CLOSING) {
        return NPC_TALK_STATE_IDLE;
    } else {
        return NPC_TALK_STATE_TALKING;
    }
}

u16 EnGo2_GetTextId(PlayState* play, Actor* thisx) {
    EnGo2* this = (EnGo2*)thisx;
    u16 textId = MaskReaction_GetTextId(play, MASK_REACTION_SET_GORON);

    if (textId != 0) {
        return textId;
    } else {
        switch (ENGO2_GET_TYPE(this)) {
            case GORON_CITY_ROLLING_BIG:
                return EnGo2_GetTextIdGoronCityRollingBig(play, this);
            case GORON_CITY_LINK:
                return EnGo2_GetTextIdGoronCityLink(play, this);
            case GORON_DMT_BIGGORON:
                return EnGo2_GetTextIdGoronDmtBiggoron(play, this);
            case GORON_FIRE_GENERIC:
                return EnGo2_GetTextIdGoronFireGeneric(play, this);
            case GORON_DMT_BOMB_FLOWER:
                return EnGo2_GetTextIdGoronDmtBombFlower(play, this);
            case GORON_DMT_ROLLING_SMALL:
                return EnGo2_GetTextIdGoronDmtRollingSmall(play, this);
            case GORON_DMT_DC_ENTRANCE:
                return EnGo2_GetTextIdGoronDmtDcEntrance(play, this);
            case GORON_CITY_ENTRANCE:
                return EnGo2_GetTextIdGoronCityEntrance(play, this);
            case GORON_CITY_ISLAND:
                return EnGo2_GetTextIdGoronCityIsland(play, this);
            case GORON_CITY_LOWEST_FLOOR:
                return EnGo2_GetTextIdGoronCityLowestFloor(play, this);
            case GORON_CITY_STAIRWELL:
                return EnGo2_GetTextIdGoronCityStairwell(play, this);
            case GORON_CITY_LOST_WOODS:
                return EnGo2_GetTextIdGoronCityLostWoods(play, this);
            case GORON_DMT_FAIRY_HINT:
                return EnGo2_GetTextIdGoronDmtFairyHint(play, this);
            case GORON_MARKET_BAZAAR:
                return EnGo2_GetTextIdGoronMarketBazaar(play, this);
        }
    }
#ifdef AVOID_UB
    return textId; // textId is always in the v0 return value register at this point
#endif
}

s16 EnGo2_UpdateTalkState(PlayState* play, Actor* thisx) {
    EnGo2* this = (EnGo2*)thisx;
    switch (ENGO2_GET_TYPE(this)) {
        case GORON_CITY_ROLLING_BIG:
            return EnGo2_UpdateTalkStateGoronCityRollingBig(play, this);
        case GORON_CITY_LINK:
            return EnGo2_UpdateTalkStateGoronCityLink(play, this);
        case GORON_DMT_BIGGORON:
            return EnGo2_UpdateTalkStateGoronDmtBiggoron(play, this);
        case GORON_FIRE_GENERIC:
            return EnGo2_UpdateTalkStateGoronFireGeneric(play, this);
        case GORON_DMT_BOMB_FLOWER:
            return EnGo2_UpdateTalkStateGoronDmtBombFlower(play, this);
        case GORON_DMT_ROLLING_SMALL:
            return EnGo2_UpdateTalkStateGoronDmtRollingSmall(play, this);
        case GORON_DMT_DC_ENTRANCE:
            return EnGo2_UpdateTalkStateGoronDmtDcEntrance(play, this);
        case GORON_CITY_ENTRANCE:
            return EnGo2_UpdateTalkStateGoronCityEntrance(play, this);
        case GORON_CITY_ISLAND:
            return EnGo2_UpdateTalkStateGoronCityIsland(play, this);
        case GORON_CITY_LOWEST_FLOOR:
            return EnGo2_UpdateTalkStateGoronCityLowestFloor(play, this);
        case GORON_CITY_STAIRWELL:
            return EnGo2_UpdateTalkStateGoronCityStairwell(play, this);
        case GORON_CITY_LOST_WOODS:
            return EnGo2_UpdateTalkStateGoronCityLostWoods(play, this);
        case GORON_DMT_FAIRY_HINT:
            return EnGo2_UpdateTalkStateGoronDmtFairyHint(play, this);
        case GORON_MARKET_BAZAAR:
            return EnGo2_UpdateTalkStateGoronMarketBazaar(play, this);
    }
#ifdef AVOID_UB
    // The v0 register isn't set in this function, the last value in v0 is the return value of Actor_TalkOfferAccepted
    // called in the function below, which must be false for this function to be called
    return false;
#endif
}

s32 func_80A44790(EnGo2* this, PlayState* play) {
    if (ENGO2_GET_TYPE(this) != GORON_DMT_BIGGORON && ENGO2_GET_TYPE(this) != GORON_CITY_ROLLING_BIG) {
        return Npc_UpdateTalking(play, &this->actor, &this->interactInfo.talkState, this->interactRange,
                                 EnGo2_GetTextId, EnGo2_UpdateTalkState);
    } else if ((ENGO2_GET_TYPE(this) == GORON_DMT_BIGGORON) && !(this->collider.base.ocFlags2 & OC2_HIT_PLAYER)) {
        return false;
    } else {
        if (Actor_TalkOfferAccepted(&this->actor, play)) {
            this->interactInfo.talkState = NPC_TALK_STATE_TALKING;
            return true;
        } else if (this->interactInfo.talkState != NPC_TALK_STATE_IDLE) {
            this->interactInfo.talkState = EnGo2_UpdateTalkState(play, &this->actor);
            return false;
        } else if (Actor_OfferTalk(&this->actor, play, this->interactRange)) {
            this->actor.textId = EnGo2_GetTextId(play, &this->actor);
        }
        return false;
    }
}

void EnGo2_SetColliderDim(EnGo2* this) {
    u8 index = ENGO2_GET_TYPE(this);

    this->collider.dim.radius = sColliderData[index].radius;
    this->collider.dim.height = sColliderData[index].height;
}

void EnGo2_SetShape(EnGo2* this) {
    u8 index = ENGO2_GET_TYPE(this);

    this->actor.shape.shadowScale = sShapeData[index].shadowScale;
    Actor_SetScale(&this->actor, sShapeData[index].scale);
    this->actor.attentionRangeType = sShapeData[index].attentionRangeType;
    this->interactRange = sShapeData[index].interactRange;
    this->interactRange += this->collider.dim.radius;
}

void EnGo2_CheckCollision(EnGo2* this, PlayState* play) {
    Vec3s pos;
    f32 xzDist;

    pos.x = this->actor.world.pos.x;
    pos.y = this->actor.world.pos.y;
    pos.z = this->actor.world.pos.z;
    xzDist = sColliderData[ENGO2_GET_TYPE(this)].xzDist;
    pos.x += (s16)(xzDist * Math_SinS(this->actor.shape.rot.y));
    pos.z += (s16)(xzDist * Math_CosS(this->actor.shape.rot.y));
    pos.y += sColliderData[ENGO2_GET_TYPE(this)].yDist;
    this->collider.dim.pos = pos;
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
    CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
}

void EnGo2_SwapInitialFrameAnimFrameCount(EnGo2* this) {
    f32 initialFrame;

    initialFrame = this->skelAnime.startFrame;
    this->skelAnime.startFrame = this->skelAnime.endFrame;
    this->skelAnime.endFrame = initialFrame;
}

s32 EnGo2_UpdateRollingKnockback(EnGo2* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    f32 knockbackSpeed;

    if (ENGO2_GET_TYPE(this) == GORON_DMT_BIGGORON) {
        return false;
    }

    if ((this->actionFunc != EnGo2_RollingSlow) && (this->actionFunc != EnGo2_RollingReverse) &&
        (this->actionFunc != EnGo2_RollingStart)) {
        return false;
    }

    if (this->collider.base.acFlags & AC_HIT) {
        Audio_PlaySfxGeneral(NA_SE_SY_CORRECT_CHIME, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        this->actor.flags &= ~ACTOR_FLAG_SFX_FOR_PLAYER_BODY_HIT;
        this->collider.base.acFlags &= ~AC_HIT;
        EnGo2_StopRolling(this, play);
        return true;
    }

    if (player->invincibilityTimer <= 0) {
        this->collider.base.ocFlags1 |= OC1_TYPE_PLAYER;
    } else {
        return false;
    }

    if (this->collider.base.ocFlags2 & OC2_HIT_PLAYER) {
        this->collider.base.ocFlags2 &= ~OC2_HIT_PLAYER;

        knockbackSpeed = this->actionFunc == EnGo2_RollingStart ? 1.5f : this->actor.speed * 1.5f;

        play->damagePlayer(play, -4);
        Actor_SetPlayerKnockbackLargeNoDamage(play, &this->actor, knockbackSpeed, this->actor.yawTowardsPlayer, 6.0f);
        Actor_PlaySfx(&player->actor, NA_SE_PL_BODY_HIT);
        this->collider.base.ocFlags1 &= ~OC1_TYPE_PLAYER;
    }

    return false;
}

s32 EnGo2_UpdateWaypoint(EnGo2* this, PlayState* play) {
    s32 change;

    if (this->path == NULL) {
        return 0;
    }

    change = (u8)(this->path->count - 1);
    if (this->reverse) {
        this->waypoint--;
        if (this->waypoint < 0) {
            this->waypoint = change - 1;
        }
    } else {
        this->waypoint++;
        if (this->waypoint >= change) {
            this->waypoint = 0;
        }
    }

    return 1;
}

s32 EnGo2_FollowPath(EnGo2* this, PlayState* play) {
    s16 targetYaw;
    f32 waypointDistSq = Path_OrientAndGetDistSq(&this->actor, this->path, this->waypoint, &targetYaw);

    Math_SmoothStepToS(&this->actor.world.rot.y, targetYaw, 6, 4000, 1);
    if (waypointDistSq > 0.0f && waypointDistSq < SQ(30.0f)) {
        return EnGo2_UpdateWaypoint(this, play);
    } else {
        return 0;
    }
}

s32 EnGo2_OrientInstant(EnGo2* this) {
    s16 targetYaw;

    Path_OrientAndGetDistSq(&this->actor, this->path, this->waypoint, &targetYaw);
    this->actor.world.rot.y = targetYaw;
    return 1;
}

s32 EnGo2_IsAttentionDrawn(EnGo2* this) {
    s16 yawDiff;
    f32 xyzDist = (ENGO2_GET_TYPE(this) == GORON_DMT_BIGGORON) ? 800.0f : 200.0f;
    f32 yDist = (ENGO2_GET_TYPE(this) == GORON_DMT_BIGGORON) ? 400.0f : 60.0f;
    s16 yawDiffAbs;

    if (ENGO2_GET_TYPE(this) == GORON_DMT_BIGGORON) {
        if (!(this->collider.base.ocFlags2 & OC2_HIT_PLAYER)) {
            this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
            return false;
        } else {
            this->actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED;
            return true;
        }
    }

    xyzDist = SQ(xyzDist);
    yawDiff = (f32)this->actor.yawTowardsPlayer - (f32)this->actor.shape.rot.y;
    yawDiffAbs = ABS(yawDiff);
    if (this->actor.xyzDistToPlayerSq <= xyzDist && fabsf(this->actor.yDistToPlayer) < yDist && yawDiffAbs < 0x2AA8) {
        return true;
    } else {
        return false;
    }
}

s32 EnGo2_IsRollingOnGround(EnGo2* this, s16 bounceCount, f32 boundSpeed, s16 rumble) {
    if (!(this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) || this->actor.velocity.y > 0.0f) {
        return false;
    }

    // rumble on odds and evens
    if (DECR(this->bounceTimer)) {
        if (!rumble) {
            return true;
        }

        {
            this->actor.world.pos.y =
                (this->bounceTimer & 1) ? this->actor.world.pos.y + 1.5f : this->actor.world.pos.y - 1.5f;
            Actor_PlaySfx(&this->actor, NA_SE_EV_BIGBALL_ROLL - SFX_FLAG);
            return true;
        }
    }

    // bounce!
    {
        if (this->bounceCounter >= 2) {
            Actor_PlaySfx(&this->actor, (ENGO2_GET_TYPE(this) == GORON_CITY_ROLLING_BIG) ? NA_SE_EN_GOLON_LAND_BIG
                                                                                         : NA_SE_EN_DODO_M_GND);
        }

        this->bounceCounter--;
        if (this->bounceCounter <= 0) {
            if (this->bounceCounter == 0) {
                this->bounceTimer = Rand_S16Offset(60, 30);
                this->bounceCounter = 0;
                this->actor.velocity.y = 0.0f;
                return true;
            } else {
                this->bounceCounter = bounceCount;
            }
        }

        this->actor.velocity.y = ((f32)this->bounceCounter / (f32)bounceCount) * boundSpeed;
        return true;
    }
}

void EnGo2_BiggoronSetTextId(EnGo2* this, PlayState* play, Player* player) {
    u16 textId;

    if (ENGO2_GET_TYPE(this) == GORON_DMT_BIGGORON) {
        if (gSaveContext.save.info.playerData.bgsFlag) {
            if (Player_GetExchangeItemId(play) == EXCH_ITEM_CLAIM_CHECK) {
                this->actor.textId = 0x3003;
            } else {
                this->actor.textId = 0x305E;
            }
            player->actor.textId = this->actor.textId;

        } else if (!gSaveContext.save.info.playerData.bgsFlag && (INV_CONTENT(ITEM_TRADE_ADULT) == ITEM_CLAIM_CHECK)) {
            if (Player_GetExchangeItemId(play) == EXCH_ITEM_CLAIM_CHECK) {
                if (Environment_GetBgsDayCount() >= 3) {
                    textId = 0x305E;
                } else {
                    textId = 0x305D;
                }
                this->actor.textId = textId;
            } else {
                if (Environment_GetBgsDayCount() >= 3) {
                    textId = 0x3002;
                } else {
                    textId = 0x305D;
                }
                this->actor.textId = textId;
            }
            player->actor.textId = this->actor.textId;

        } else if ((INV_CONTENT(ITEM_TRADE_ADULT) >= ITEM_PRESCRIPTION) &&
                   (INV_CONTENT(ITEM_TRADE_ADULT) <= ITEM_CLAIM_CHECK)) {
            if (Player_GetExchangeItemId(play) == EXCH_ITEM_EYE_DROPS) {
                this->actor.textId = 0x3059;
            } else {
                this->actor.textId = 0x3058;
            }
            if (this->actor.textId == 0x3059) {
                gSaveContext.subTimerState = SUBTIMER_STATE_OFF;
            }
            player->actor.textId = this->actor.textId;

        } else if (INV_CONTENT(ITEM_TRADE_ADULT) <= ITEM_BROKEN_GORONS_SWORD) {
            if (Player_GetExchangeItemId(play) == EXCH_ITEM_BROKEN_GORONS_SWORD) {
                if (GET_INFTABLE(INFTABLE_B4)) {
                    textId = 0x3055;
                } else {
                    textId = 0x3054;
                }
                this->actor.textId = textId;
            } else {
                this->actor.textId = 0x3053;
            }
            player->actor.textId = this->actor.textId;
        } else {
            this->actor.textId = 0x3053;
            player->actor.textId = this->actor.textId;
        }
    }
}

void EnGo2_TrackPlayer(EnGo2* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (this->actionFunc != EnGo2_GoronFireGeneric) {
        this->interactInfo.trackPos = player->actor.world.pos;
        this->interactInfo.yOffset =
            sPlayerTrackingYOffsets[ENGO2_GET_TYPE(this)][((void)0, gSaveContext.save.linkAge)];
        Npc_TrackPoint(&this->actor, &this->interactInfo, 4, this->trackingMode);
    }
    if ((this->actionFunc != EnGo2_HandleOfferParented) && (this->isAwake == true)) {
        if (func_80A44790(this, play)) {
            EnGo2_BiggoronSetTextId(this, play, player);
        }
    }
}

void EnGo2_UpdateShadowAlpha(EnGo2* this, f32* alpha) {
    f32 alphaTarget =
        (this->skelAnime.animation == &gGoronUncurlSitStandAnim) && (this->skelAnime.curFrame <= 32.0f) ? 0.0f : 255.0f;

    Math_ApproachF(alpha, alphaTarget, 0.4f, 100.0f);
    this->actor.shape.shadowAlpha = (u8)(u32)*alpha;
}

void EnGo2_RollForward(EnGo2* this) {
    f32 speedXZ = this->actor.speed;

    if (this->interactInfo.talkState != NPC_TALK_STATE_IDLE) {
        this->actor.speed = 0.0f;
    }

    if (this->actionFunc != EnGo2_RollingStart) {
        Actor_MoveXZGravity(&this->actor);
    }

    this->actor.speed = speedXZ;
}

void EnGo2_ChooseIdleAnimation(EnGo2* this) {
    switch (ENGO2_GET_TYPE(this)) {
        case GORON_CITY_ROLLING_BIG:
        case GORON_DMT_DC_ENTRANCE:
        case GORON_CITY_ENTRANCE:
        case GORON_CITY_STAIRWELL:
        case GORON_DMT_FAIRY_HINT:
            Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENGO2_ANIM_SCRATCHING_LOOP);
            break;
        case GORON_DMT_BIGGORON:
            if (INV_CONTENT(ITEM_TRADE_ADULT) >= ITEM_BROKEN_GORONS_SWORD &&
                INV_CONTENT(ITEM_TRADE_ADULT) <= ITEM_EYE_DROPS) {
                Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENGO2_ANIM_CRYING_LOOP);
                break;
            }
            FALLTHROUGH;
        default:
            this->skelAnime.playSpeed = 0.0f;
            break;
    }
}

f32 EnGo2_GetTargetXZSpeed(EnGo2* this) {
    f32 yDist = (ENGO2_GET_TYPE(this) == GORON_DMT_BIGGORON) ? 400.0f : 60.0f;
    s32 index = ENGO2_GET_TYPE(this);

    if (index == GORON_CITY_LINK && (fabsf(this->actor.yDistToPlayer) < yDist) &&
        (this->actor.xzDistToPlayer < 400.0f)) {
        return 9.0f;
    } else {
        return index == GORON_CITY_ROLLING_BIG ? 3.6000001f : 6.0f;
    }
}

s32 EnGo2_IsAttentionDrawnExtented(EnGo2* this, PlayState* play) {
    Camera* mainCam = play->cameraPtrs[CAM_ID_MAIN];

    if (ENGO2_GET_TYPE(this) == GORON_DMT_BIGGORON) {
        if (EnGo2_IsAttentionDrawn(this)) {
            Camera_RequestSetting(mainCam, CAM_SET_DIRECTED_YAW);
            Camera_UnsetStateFlag(mainCam, CAM_STATE_CHECK_BG);
        } else if (!EnGo2_IsAttentionDrawn(this) && (mainCam->setting == CAM_SET_DIRECTED_YAW)) {
            Camera_RequestSetting(mainCam, CAM_SET_DUNGEON1);
            Camera_SetStateFlag(mainCam, CAM_STATE_CHECK_BG);
        }
    }

    if (ENGO2_GET_TYPE(this) == GORON_FIRE_GENERIC || ENGO2_GET_TYPE(this) == GORON_CITY_ROLLING_BIG ||
        ENGO2_GET_TYPE(this) == GORON_CITY_STAIRWELL || (ENGO2_GET_TYPE(this) == GORON_DMT_BIGGORON) ||
        ENGO2_GET_TYPE(this) == GORON_MARKET_BAZAAR) {
        return true;
    }

    if (!CHECK_QUEST_ITEM(QUEST_MEDALLION_FIRE) && CHECK_OWNED_EQUIP(EQUIP_TYPE_TUNIC, EQUIP_INV_TUNIC_GORON)) {
        return true;
    }

    return false;
}

void EnGo2_DefaultWakingUp(EnGo2* this) {
    if (EnGo2_IsAttentionDrawn(this)) {
        this->trackingMode = NPC_TRACKING_HEAD_AND_TORSO;
    } else {
        this->trackingMode = NPC_TRACKING_NONE;
    }

    if (this->interactInfo.talkState != NPC_TALK_STATE_IDLE) {
        this->trackingMode = NPC_TRACKING_FULL_BODY;
    }

    this->isAwake = true;
}

void EnGo2_WakingUp(EnGo2* this) {
    f32 xyzDist = (ENGO2_GET_TYPE(this) == GORON_DMT_BIGGORON) ? 800.0f : 200.0f;
    s32 isTrue = true;

    xyzDist = SQ(xyzDist);
    this->trackingMode = NPC_TRACKING_NONE;
    if ((this->actor.xyzDistToPlayerSq <= xyzDist) || (this->interactInfo.talkState != NPC_TALK_STATE_IDLE)) {
        this->trackingMode = NPC_TRACKING_FULL_BODY;
    }

    this->isAwake = isTrue;
}

void EnGo2_BiggoronWakingUp(EnGo2* this) {
    if (EnGo2_IsAttentionDrawn(this) || this->interactInfo.talkState != NPC_TALK_STATE_IDLE) {
        this->trackingMode = NPC_TRACKING_HEAD_AND_TORSO;
        this->isAwake = true;
    } else {
        this->trackingMode = NPC_TRACKING_NONE;
        this->isAwake = false;
    }
}

void EnGo2_AnimateGoronWakingUp(EnGo2* this) {
    switch (ENGO2_GET_TYPE(this)) {
        case GORON_DMT_BOMB_FLOWER:
            this->isAwake = true;
            this->trackingMode = EnGo2_IsAttentionDrawn(this) ? NPC_TRACKING_HEAD_AND_TORSO : NPC_TRACKING_NONE;
            break;
        case GORON_FIRE_GENERIC:
            EnGo2_WakingUp(this);
            break;
        case GORON_DMT_BIGGORON:
            EnGo2_BiggoronWakingUp(this);
            break;
        case GORON_CITY_LINK:
            if (!CHECK_QUEST_ITEM(QUEST_MEDALLION_FIRE) && CHECK_OWNED_EQUIP(EQUIP_TYPE_TUNIC, EQUIP_INV_TUNIC_GORON)) {
                EnGo2_WakingUp(this);
                break;
            }
            FALLTHROUGH;
        default:
            EnGo2_DefaultWakingUp(this);
            break;
    }
}

void EnGo2_EyeMouthTexState(EnGo2* this) {
    switch (this->eyeMouthTexState) {
        case 1:
            this->blinkTimer = 0;
            this->eyeTexIndex = 0;
            this->mouthTexIndex = 0;
            break;
        case 2:
            this->blinkTimer = 0;
            this->eyeTexIndex = 1;
            this->mouthTexIndex = 0;
            break;
        // case 3 only when biggoron is given eyedrops. Biggoron smiles. (only use of second mouth texture)
        case 3:
            this->blinkTimer = 0;
            this->eyeTexIndex = 0;
            this->mouthTexIndex = 1;
            break;
        default:
            if (DECR(this->blinkTimer) == 0) {
                this->eyeTexIndex++;
                if (this->eyeTexIndex >= 4) {
                    this->blinkTimer = Rand_S16Offset(30, 30);
                    this->eyeTexIndex = 1;
                }
            }
    }
}

void EnGo2_PlayStandingChangeSfx(EnGo2* this) {
    if ((this->skelAnime.playSpeed != 0.0f) && (this->skelAnime.animation == &gGoronUncurlSitStandAnim)) {
        if (this->skelAnime.playSpeed > 0.0f && this->skelAnime.curFrame == 14.0f) {
            if (ENGO2_GET_TYPE(this) != GORON_DMT_BIGGORON) {
                Actor_PlaySfx(&this->actor, NA_SE_EN_GOLON_SIT_DOWN);
            } else {
                func_800F4524(&gSfxDefaultPos, NA_SE_EN_GOLON_SIT_DOWN, 60);
            }
        }
        if (this->skelAnime.playSpeed < 0.0f) {
            if (this->skelAnime.curFrame == 1.0f) {
                Actor_PlaySfx(&this->actor, NA_SE_EN_DODO_M_GND);
            }
            if (this->skelAnime.curFrame == 40.0f) {
                Actor_PlaySfx(&this->actor, NA_SE_EN_GOLON_SIT_DOWN);
            }
        }
    }
}

void EnGo2_SpawnDust(EnGo2* this, s32 index2) {
    s32 index1 = ENGO2_GET_TYPE(this) == GORON_CITY_ROLLING_BIG ? 1 : 0;
    EnGo2DustEffectData* dustEffectData = &sDustEffectData[index1][index2];

    EnGo2_SpawnDustExplicitly(this, dustEffectData->initialTimer, dustEffectData->scale, dustEffectData->scaleStep,
                              dustEffectData->numDustEffects, dustEffectData->radius, dustEffectData->yAccel);
}

void EnGo2_AnimateRolling(EnGo2* this, PlayState* play) {
    if (ENGO2_GET_TYPE(this) == GORON_DMT_BIGGORON) {
        this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
        Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENGO2_ANIM_UNCURL_SIT_STAND_BIG);
        this->skelAnime.playSpeed = -0.5f;
    } else {
        Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENGO2_ANIM_UNCURL_SIT_STAND);
        this->skelAnime.playSpeed = -1.0f;
    }
    EnGo2_SwapInitialFrameAnimFrameCount(this);
    this->trackingMode = NPC_TRACKING_NONE;
    this->isUncurled = false;
    this->isAwake = false;
    this->actionFunc = EnGo2_CurledUp;
}

void EnGo2_WakeUpAnimated(EnGo2* this, PlayState* play) {
    if (this->skelAnime.playSpeed == 0.0f) {
        if (ENGO2_GET_TYPE(this) != GORON_DMT_BIGGORON) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_GOLON_WAKE_UP);
        } else {
            func_800F4524(&gSfxDefaultPos, NA_SE_EN_GOLON_WAKE_UP, 60);
        }
    }
    if (ENGO2_GET_TYPE(this) == GORON_DMT_BIGGORON) {
        OnePointCutscene_Init(play, 4200, -99, &this->actor, CAM_ID_MAIN);
        Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENGO2_ANIM_UNCURL_SIT_STAND_BIG);
        this->skelAnime.playSpeed = 0.5f;
    } else {
        Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENGO2_ANIM_UNCURL_SIT_STAND);
        this->skelAnime.playSpeed = 1.0f;
    }
    this->actionFunc = EnGo2_Standing;
}

void EnGo2_WakeUpInstant(EnGo2* this, PlayState* play) {
    Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENGO2_ANIM_UNCURL_SIT_STAND);
    this->isUncurled = true;
    this->actionFunc = EnGo2_Standing;
    this->skelAnime.playSpeed = 0.0f;
    this->actor.speed = 0.0f;
    this->skelAnime.curFrame = this->skelAnime.endFrame;
}

void EnGo2_StartRolling(EnGo2* this, PlayState* play) {
    if (ENGO2_GET_TYPE(this) == GORON_CITY_ROLLING_BIG || ENGO2_GET_TYPE(this) == GORON_CITY_LINK) {
        this->collider.elem.acElemFlags = ACELEM_ON;
        this->actor.speed = GET_INFTABLE(INFTABLE_11E) ? 6.0f : 3.6000001f;
    } else {
        this->actor.speed = 6.0f;
    }
    this->actor.flags |= ACTOR_FLAG_SFX_FOR_PLAYER_BODY_HIT;
    this->animTimer = 10;
    this->actor.shape.yOffset = 1800.0f;
    this->actor.speed *= 2.0f; // Speeding up
    this->actionFunc = EnGo2_RollingStart;
}

void EnGo2_StopRolling(EnGo2* this, PlayState* play) {
    EnBom* bomb;

    switch (ENGO2_GET_TYPE(this)) {
        case GORON_DMT_ROLLING_SMALL:
            bomb = (EnBom*)Actor_Spawn(&play->actorCtx, play, ACTOR_EN_BOM, this->actor.world.pos.x,
                                       this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0, 0);
            if (bomb != NULL) {
                bomb->timer = 0;
            }
            break;

        case GORON_CITY_LINK:
        case GORON_CITY_ROLLING_BIG:
            this->collider.elem.acElemFlags = ACELEM_NONE;
            break;
    }

    this->actor.shape.rot = this->actor.world.rot;
    this->bounceCounter = 0;
    this->bounceTimer = 0;
    this->actionFunc = EnGo2_GroundRolling;
    this->actor.shape.yOffset = 0.0f;
    this->actor.speed = 0.0f;
}

s32 EnGo2_IsGoronFireGenericFreed(EnGo2* this, PlayState* play) {
    if (ENGO2_GET_TYPE(this) != GORON_FIRE_GENERIC) {
        return false;
    }

    // shaking curled up
    this->actor.world.pos.x += (play->state.frames & 1) ? 1.0f : -1.0f;
    if (ENGO2_IS_CAGE_OPEN(play, this)) {
        return true;
    }
    return false;
}

s32 EnGo2_IsGoronDmtBombFlower(EnGo2* this) {
    if (ENGO2_GET_TYPE(this) != GORON_DMT_BOMB_FLOWER || this->interactInfo.talkState != NPC_TALK_STATE_ACTION) {
        return false;
    }

    Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENGO2_ANIM_SIDESTEP_LOOP);
    this->interactInfo.talkState = NPC_TALK_STATE_IDLE;
    this->isAwake = false;
    this->trackingMode = NPC_TRACKING_NONE;
    this->actionFunc = EnGo2_GoronDmtBombFlower;
    return true;
}

s32 EnGo2_IsGoronRollingBig(EnGo2* this, PlayState* play) {
    if (ENGO2_GET_TYPE(this) != GORON_CITY_ROLLING_BIG || (this->interactInfo.talkState != NPC_TALK_STATE_ACTION)) {
        return false;
    }
    this->interactInfo.talkState = NPC_TALK_STATE_IDLE;
    EnGo2_AnimateRolling(this, play);
    this->actionFunc = EnGo2_GoronRollingBig;
    return true;
}

s32 EnGo2_IsGoronFireGeneric(EnGo2* this) {
    if (ENGO2_GET_TYPE(this) != GORON_FIRE_GENERIC || this->interactInfo.talkState == NPC_TALK_STATE_IDLE) {
        return false;
    }
    this->actionFunc = EnGo2_GoronFireGeneric;
    return true;
}

s32 EnGo2_IsGoronLinkReversing(EnGo2* this) {
    if (ENGO2_GET_TYPE(this) != GORON_CITY_LINK || (this->waypoint >= this->reverseWaypoint) ||
        !EnGo2_IsAttentionDrawn(this)) {
        return false;
    }
    return true;
}

s32 EnGo2_IsRolling(EnGo2* this) {
    if (this->interactInfo.talkState == NPC_TALK_STATE_IDLE || this->actor.speed < 1.0f) {
        return false;
    }
    if (EnGo2_IsRollingOnGround(this, 2, 20.0 / 3.0f, 0)) {
        if ((this->bounceTimer >= 9) && (this->bounceCounter == 0)) {
            this->bounceTimer = 8;
        }
        EnGo2_SpawnDust(this, 0);
    }
    return true;
}

void EnGo2_AnimateGoronLinkAndDoSfx(EnGo2* this, PlayState* play) {
    s32 animation = ARRAY_COUNT(sAnimationInfo);

    if (ENGO2_GET_TYPE(this) == GORON_CITY_LINK) {
        if ((this->actor.textId == 0x3035 && this->messageEntry == 0) ||
            (this->actor.textId == 0x3036 && this->messageEntry == 0)) {
            if (this->skelAnime.animation != &gGoronShakingLoopAnim) {
                animation = ENGO2_ANIM_SHAKING_LOOP;
                this->eyeMouthTexState = 0;
            }
        }

        if ((this->actor.textId == 0x3032 && this->messageEntry == 12) || (this->actor.textId == 0x3033) ||
            (this->actor.textId == 0x3035 && this->messageEntry == 6)) {
            if (this->skelAnime.animation != &gGoronSobbingLoopAnim) {
                animation = ENGO2_ANIM_SOBBING_LOOP;
                this->eyeMouthTexState = 1;
            }
        }

        if (this->skelAnime.animation == &gGoronSobbingLoopAnim) {
            if (this->skelAnime.curFrame == 20.0f) {
                Actor_PlaySfx(&this->actor, NA_SE_EN_GOLON_CRY);
            }
        }

        if (animation != ARRAY_COUNT(sAnimationInfo)) {
            Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, animation);
        }
    }
}

void EnGo2_GoronFireGeneric_CreateSubcamera(EnGo2* this, PlayState* play) {
    s16 yaw;

    this->subCamId = Play_CreateSubCamera(play);
    Play_ChangeCameraStatus(play, CAM_ID_MAIN, CAM_STAT_WAIT);
    Play_ChangeCameraStatus(play, this->subCamId, CAM_STAT_ACTIVE);
    Path_CopyLastPoint(this->path, &this->subCamAt);
    yaw = Math_Vec3f_Yaw(&this->actor.world.pos, &this->subCamAt) + 0xE38;
    this->subCamEye.x = Math_SinS(yaw) * 100.0f + this->actor.world.pos.x;
    this->subCamEye.z = Math_CosS(yaw) * 100.0f + this->actor.world.pos.z;
    this->subCamEye.y = this->actor.world.pos.y + 20.0f;
    this->subCamAt.x = this->actor.world.pos.x;
    this->subCamAt.y = this->actor.world.pos.y + 40.0f;
    this->subCamAt.z = this->actor.world.pos.z;
    Play_SetCameraAtEye(play, this->subCamId, &this->subCamAt, &this->subCamEye);
}

void EnGo2_GoronFireGeneric_ClearSubcamera(EnGo2* this, PlayState* play) {
    Play_ChangeCameraStatus(play, CAM_ID_MAIN, CAM_STAT_ACTIVE);
    Play_ClearCamera(play, this->subCamId);
}

void EnGo2_AnimateBiggoronAndDoSfx(EnGo2* this) {
    if (INV_CONTENT(ITEM_TRADE_ADULT) >= ITEM_BROKEN_GORONS_SWORD && INV_CONTENT(ITEM_TRADE_ADULT) <= ITEM_EYE_DROPS &&
        (ENGO2_GET_TYPE(this) == GORON_DMT_BIGGORON) && this->interactInfo.talkState == NPC_TALK_STATE_IDLE) {
        if (DECR(this->animTimer) == 0) {
            this->animTimer = Rand_S16Offset(30, 30);
            func_800F4524(&gSfxDefaultPos, NA_SE_EN_GOLON_EYE_BIG, 60);
        }
    }
}

void EnGo2_Init(Actor* thisx, PlayState* play) {
    EnGo2* this = (EnGo2*)thisx;
    s32 pad;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 28.0f);
    SkelAnime_InitFlex(play, &this->skelAnime, &gGoronSkel, NULL, this->jointTable, this->morphTable, GORON_LIMB_MAX);
    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
    CollisionCheck_SetInfo2(&this->actor.colChkInfo, NULL, &sColChkInfoInit);

    // Not GORON_CITY_ROLLING_BIG, GORON_CITY_LINK, GORON_DMT_BIGGORON
    switch (ENGO2_GET_TYPE(this)) {
        case GORON_FIRE_GENERIC:
        case GORON_DMT_BOMB_FLOWER:
        case GORON_DMT_ROLLING_SMALL:
        case GORON_DMT_DC_ENTRANCE:
        case GORON_CITY_ENTRANCE:
        case GORON_CITY_ISLAND:
        case GORON_CITY_LOWEST_FLOOR:
        case GORON_CITY_STAIRWELL:
        case GORON_CITY_LOST_WOODS:
        case GORON_DMT_FAIRY_HINT:
        case GORON_MARKET_BAZAAR:
            this->actor.flags &= ~ACTOR_FLAG_4;
            this->actor.flags &= ~ACTOR_FLAG_5;
    }

    EnGo2_SetColliderDim(this);
    EnGo2_SetShape(this);
    Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENGO2_ANIM_UNCURL_SIT_STAND_IDLE);
    this->actor.gravity = -1.0f;
    this->shadownAlpha = this->actor.shape.shadowAlpha = 0;
    this->reverse = 0;
    this->isAwake = false;
    this->isUncurled = false;
    this->goronState = 0;
    this->waypoint = 0;
    this->reverseWaypoint = this->actor.shape.rot.z;
    this->trackingMode = NPC_TRACKING_NONE;
    this->path = Path_GetByIndex(play, ENGO2_GET_PATH_INDEX(this), 0x1F);
    switch (ENGO2_GET_TYPE(this)) {
        case GORON_CITY_ENTRANCE:
        case GORON_CITY_ISLAND:
        case GORON_CITY_LOWEST_FLOOR:
        case GORON_CITY_STAIRWELL:
        case GORON_CITY_LOST_WOODS:
            if (!CHECK_QUEST_ITEM(QUEST_MEDALLION_FIRE) && LINK_IS_ADULT) {
                Actor_Kill(&this->actor);
            }
            this->actionFunc = EnGo2_CurledUp;
            break;
        case GORON_MARKET_BAZAAR:
            if ((LINK_IS_ADULT) || !CHECK_QUEST_ITEM(QUEST_GORON_RUBY)) {
                Actor_Kill(&this->actor);
            }
            EnGo2_WakeUpInstant(this, play);
            break;
        case GORON_CITY_LINK:
            if (GET_INFTABLE(INFTABLE_109)) {
                Path_CopyLastPoint(this->path, &this->actor.world.pos);
                this->actor.home.pos = this->actor.world.pos;
                if (!CHECK_QUEST_ITEM(QUEST_MEDALLION_FIRE) &&
                    CHECK_OWNED_EQUIP(EQUIP_TYPE_TUNIC, EQUIP_INV_TUNIC_GORON)) {
                    EnGo2_WakeUpInstant(this, play);
                } else {
                    this->actionFunc = EnGo2_CurledUp;
                }
            } else {
#if OOT_VERSION >= PAL_1_1
                CLEAR_INFTABLE(INFTABLE_10C);
#endif
                this->collider.dim.height = (sColliderData[ENGO2_GET_TYPE(this)].height * 0.6f);
                EnGo2_StartRolling(this, play);
                this->isAwake = true;
            }
            break;
        case GORON_CITY_ROLLING_BIG:
        case GORON_DMT_ROLLING_SMALL:
            this->collider.dim.height = (sColliderData[ENGO2_GET_TYPE(this)].height * 0.6f);
            EnGo2_StartRolling(this, play);
            break;
        case GORON_FIRE_GENERIC:
            if (ENGO2_IS_CAGE_OPEN(play, this)) {
                Actor_Kill(&this->actor);
            } else {
                this->isAwake = true;
                this->actionFunc = EnGo2_CurledUp;
            }
            break;
        case GORON_DMT_BIGGORON:
            this->actor.shape.shadowDraw = NULL;
            this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
            if ((INV_CONTENT(ITEM_TRADE_ADULT) >= ITEM_BROKEN_GORONS_SWORD) &&
                (INV_CONTENT(ITEM_TRADE_ADULT) <= ITEM_EYE_DROPS)) {
                this->eyeMouthTexState = 1;
            }
            this->collider.base.acFlags = AC_NONE;
            this->collider.base.ocFlags1 = OC1_ON | OC1_NO_PUSH | OC1_TYPE_PLAYER;
            this->actionFunc = EnGo2_CurledUp;
            break;
        case GORON_DMT_BOMB_FLOWER:
            if (GET_INFTABLE(INFTABLE_EB)) {
                Path_CopyLastPoint(this->path, &this->actor.world.pos);
                this->actor.home.pos = this->actor.world.pos;
            }
            FALLTHROUGH;
        case GORON_DMT_DC_ENTRANCE:
        case GORON_DMT_FAIRY_HINT:
        default:
            this->actionFunc = EnGo2_CurledUp;
            break;
    }
}

void EnGo2_Destroy(Actor* thisx, PlayState* play) {
}

void EnGo2_CurledUp(EnGo2* this, PlayState* play) {
    u8 index = ENGO2_GET_TYPE(this);
    s16 height;
    s32 quakeIndex;

    if (Animation_OnFrame(&this->skelAnime, this->skelAnime.endFrame)) {
        if (ENGO2_GET_TYPE(this) == GORON_DMT_BIGGORON) {
            quakeIndex = Quake_Request(GET_ACTIVE_CAM(play), QUAKE_TYPE_3);
            Quake_SetSpeed(quakeIndex, -0x3CB0);
            Quake_SetPerturbations(quakeIndex, 8, 0, 0, 0);
            Quake_SetDuration(quakeIndex, 16);
        } else {
            EnGo2_SpawnDust(this, 1);
        }
        this->skelAnime.playSpeed = 0.0f;
    }

    if ((s32)this->skelAnime.curFrame == 0) {
        this->collider.dim.height = (sColliderData[index].height * 0.6f);
    } else {
        height = sColliderData[index].height;
        this->collider.dim.height =
            ((sColliderData[index].height * 0.4f * (this->skelAnime.curFrame / this->skelAnime.startFrame)) +
             (height * 0.6f));
    }
    if (EnGo2_IsGoronFireGenericFreed(this, play)) {
        this->isAwake = false;
        EnGo2_WakeUpAnimated(this, play);
    }
    if ((ENGO2_GET_TYPE(this) != GORON_FIRE_GENERIC) && EnGo2_IsAttentionDrawn(this)) {
        EnGo2_WakeUpAnimated(this, play);
    }
}

void EnGo2_Standing(EnGo2* this, PlayState* play) {
    u8 index = ENGO2_GET_TYPE(this);
    f32 height;

    if (this->isUncurled == true) {
        EnGo2_AnimateBiggoronAndDoSfx(this);
        EnGo2_AnimateGoronLinkAndDoSfx(this, play);
        EnGo2_AnimateGoronWakingUp(this);

        if (!EnGo2_IsGoronRollingBig(this, play) && !EnGo2_IsGoronFireGeneric(this)) {
            if (EnGo2_IsGoronDmtBombFlower(this)) {
                return;
            }
        } else {
            return;
        }
    } else {
        if (Animation_OnFrame(&this->skelAnime, this->skelAnime.endFrame)) {
            if (ENGO2_GET_TYPE(this) == GORON_DMT_BIGGORON) {
                this->actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED;
            }
            EnGo2_ChooseIdleAnimation(this);
            this->isUncurled = true;
            this->collider.dim.height = sColliderData[index].height;
        } else {
            height = sColliderData[index].height;
            this->collider.dim.height =
                (s16)((height * 0.4f * (this->skelAnime.curFrame / this->skelAnime.endFrame)) + (height * 0.6f));
        }
    }
    if ((!EnGo2_IsAttentionDrawnExtented(this, play)) && (!EnGo2_IsAttentionDrawn(this))) {
        EnGo2_AnimateRolling(this, play);
    }
}

void EnGo2_GoronDmtBombFlower(EnGo2* this, PlayState* play) {
    f32 float1 = this->skelAnime.endFrame;
    f32 float2 = this->skelAnime.curFrame * ((f32)0x8000 / float1);

    this->actor.speed = Math_SinS(float2);
    if ((EnGo2_FollowPath(this, play)) && (this->waypoint == 0)) {
        EnGo2_WakeUpInstant(this, play);
    }
}

void EnGo2_GoronRollingBig(EnGo2* this, PlayState* play) {
    if (Animation_OnFrame(&this->skelAnime, this->skelAnime.endFrame)) {
        EnGo2_SpawnDust(this, 1);
        this->skelAnime.playSpeed = 0.0f;
        EnGo2_StartRolling(this, play);
    }
}

void EnGo2_RollingStart(EnGo2* this, PlayState* play) {
    f32 float1 = 1000.0f;

    if ((ENGO2_GET_TYPE(this) != GORON_DMT_ROLLING_SMALL || !(this->actor.xyzDistToPlayerSq > SQ(float1))) &&
        DECR(this->animTimer) == 0) {
        this->actionFunc = EnGo2_RollingSlow;
        this->actor.speed *= 0.5f; // slowdown
    }
    EnGo2_SpawnDust(this, 2);
}

void EnGo2_RollingSlow(EnGo2* this, PlayState* play) {
    s32 updatedWaypoint;
    s32 index;

    if (!EnGo2_IsRolling(this)) {
        if (EnGo2_IsRollingOnGround(this, 4, 8.0f, 1) == true) {
            if (EnGo2_IsGoronLinkReversing(this)) {
                this->actionFunc = EnGo2_RollingReverse;
                return;
            }
            EnGo2_SpawnDust(this, 3);
        }
        updatedWaypoint = EnGo2_FollowPath(this, play);
        index = ENGO2_GET_TYPE(this);
        if (index != GORON_CITY_LINK) {
            if ((index == GORON_DMT_ROLLING_SMALL) && (updatedWaypoint == 1) && (this->waypoint == 0)) {
                EnGo2_StopRolling(this, play);
                return;
            }
        } else if ((updatedWaypoint == 2) && (this->waypoint == 1)) {
            // @unreachable: `EnGo2_FollowPath` returns `0` or `1`
            EnGo2_StopRolling(this, play);
            return;
        }
        Math_ApproachF(&this->actor.speed, EnGo2_GetTargetXZSpeed(this), 0.4f, 0.6f);
        this->actor.shape.rot = this->actor.world.rot;
    }
}

void EnGo2_GroundRolling(EnGo2* this, PlayState* play) {
    if (EnGo2_IsRollingOnGround(this, 4, 8.0f, 0)) {
        EnGo2_SpawnDust(this, 0);
        if (this->bounceCounter == 0) {
            switch (ENGO2_GET_TYPE(this)) {
                case GORON_CITY_LINK:
                    this->goronState = 0;
                    this->actionFunc = EnGo2_GoronLink;
                    break;
                case GORON_CITY_ROLLING_BIG:
                    EnGo2_WakeUpAnimated(this, play);
                    break;
                default:
                    this->actionFunc = EnGo2_CurledUp;
            }
        }
    }
}

void EnGo2_RollingReverse(EnGo2* this, PlayState* play) {
    if (!EnGo2_IsRolling(this)) {
        Math_ApproachF(&this->actor.speed, 0.0f, 0.6f, 0.8f);
        if (this->actor.speed >= 1.0f) {
            EnGo2_SpawnDust(this, 3);
        }
        if ((s32)this->actor.speed == 0) {
            this->actor.world.rot.y ^= 0x8000;
            this->actor.shape.rot.y = this->actor.world.rot.y;
            this->reverse ^= 1;
            EnGo2_UpdateWaypoint(this, play);
            EnGo2_StartRolling(this, play);
        }
    }
}

void EnGo2_HandleOffer(EnGo2* this, PlayState* play) {
    if (Actor_HasParent(&this->actor, play)) {
#if OOT_VERSION >= PAL_1_0
        this->actor.parent = NULL;
#endif
        this->actionFunc = EnGo2_HandleOfferParented;
    } else {
        // @redundant: this action is always paired with `EnGo2_OfferItem`, which itself calls Actor_OfferGetItem
        Actor_OfferGetItem(&this->actor, play, this->getItemId, this->actor.xzDistToPlayer + 1.0f,
                           fabsf(this->actor.yDistToPlayer) + 1.0f);
    }
}

void EnGo2_HandleOfferParented(EnGo2* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_DONE) && Message_ShouldAdvance(play)) {
        this->interactInfo.talkState = NPC_TALK_STATE_IDLE;
        switch (this->getItemId) {
            case GI_CLAIM_CHECK:
                Environment_ClearBgsDayCount();
                EnGo2_WakeUpInstant(this, play);
                return;
            case GI_TUNIC_GORON:
                SET_INFTABLE(INFTABLE_109);
                EnGo2_WakeUpInstant(this, play);
                return;
            case GI_SWORD_BIGGORON:
                gSaveContext.save.info.playerData.bgsFlag = true;
                break;
            case GI_BOMB_BAG_30:
            case GI_BOMB_BAG_40:
                EnGo2_AnimateRolling(this, play);
                this->actionFunc = EnGo2_GoronRollingBig;
                return;
        }
        this->actionFunc = EnGo2_Standing;
    }
}

void EnGo2_BiggoronEyedrops(EnGo2* this, PlayState* play) {
    switch (this->goronState) {
        case 0: // give eyedrops
            Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENGO2_ANIM_EYEDROPS_LOOP);
            this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
            this->actor.shape.rot.y += 0x5B0;
            this->trackingMode = NPC_TRACKING_NONE;
            this->animTimer = this->skelAnime.endFrame + 60.0f + 60.0f; // eyeDrops animation timer
            this->eyeMouthTexState = 2;
            this->messageEntry = 0;
            this->goronState++;
            Audio_SetMainBgmVolume(0x28, 5);
            OnePointCutscene_Init(play, 4190, -99, &this->actor, CAM_ID_MAIN);
            break;
        case 1: // applying eyedrops
            if (DECR(this->animTimer)) {
                if (this->animTimer == 60 || this->animTimer == 120) {
                    Camera_SetFinishedFlag(GET_ACTIVE_CAM(play));
                    func_800F4524(&gSfxDefaultPos, NA_SE_EV_GORON_WATER_DROP, 60);
                }
            } else {
                func_800F4524(&gSfxDefaultPos, NA_SE_EN_GOLON_GOOD_BIG, 60);
                Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENGO2_ANIM_EYEDROPS_TAKEN);
                Message_ContinueTextbox(play, 0x305A);
                this->eyeMouthTexState = 3;
                this->goronState++;
                Audio_SetMainBgmVolume(0x7F, 5);
            }
            break;
        case 2: // getting claimcheck
            if (Animation_OnFrame(&this->skelAnime, this->skelAnime.endFrame)) {
                this->eyeMouthTexState = 0;
            }
            if (Message_GetState(&play->msgCtx) == TEXT_STATE_CLOSING) {
                Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENGO2_ANIM_UNCURL_SIT_STAND);
                this->actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED;
                this->trackingMode = NPC_TRACKING_HEAD_AND_TORSO;
                this->skelAnime.playSpeed = 0.0f;
                this->skelAnime.curFrame = this->skelAnime.endFrame;
                EnGo2_OfferItem(this, play, GI_CLAIM_CHECK);
                this->actionFunc = EnGo2_HandleOffer;
                this->goronState = 0;
            }
            break;
    }
}

void EnGo2_GoronLink(EnGo2* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    switch (this->goronState) {
        case 0: // rolling
            if (Message_GetState(&play->msgCtx) != TEXT_STATE_NONE) {
                return;
            } else {
                Message_StartTextbox(play, 0x3031, NULL);
                player->actor.freezeTimer = 10;
                this->goronState++;
            }
        case 1: // stunned
            break;
        default:
            return;
    }

    if (Message_GetState(&play->msgCtx) != TEXT_STATE_CLOSING) {
        player->actor.freezeTimer = 10;
    } else {
        SET_INFTABLE(INFTABLE_10C);
        this->trackingMode = NPC_TRACKING_NONE;
        this->isUncurled = false;
        this->isAwake = false;
        this->actionFunc = EnGo2_CurledUp;
    }
}

void EnGo2_GoronFireGeneric(EnGo2* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    Vec3s zeroVec = { 0x00, 0x00, 0x00 };

    switch (this->goronState) {
        case 0: // Wake up
            if (Message_GetState(&play->msgCtx) == TEXT_STATE_CLOSING) {
                EnGo2_GoronFireGeneric_CreateSubcamera(this, play);
                play->msgCtx.msgMode = MSGMODE_PAUSED;
                Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENGO2_ANIM_WALKING_LOOP);
                this->waypoint = 1;
                this->skelAnime.playSpeed = 2.0f;
                EnGo2_OrientInstant(this);
                this->actor.shape.rot = this->actor.world.rot;
                this->animTimer = 60;
                this->actor.gravity = 0.0f;
                this->actor.speed = 2.0f;
                this->interactInfo.headRot = zeroVec;
                this->interactInfo.torsoRot = zeroVec;
                this->goronState++;
                this->goronState++;
                player->actor.world.rot.y = this->actor.world.rot.y;
                player->actor.shape.rot.y = this->actor.world.rot.y;
                player->actor.world.pos.x =
                    (f32)((Math_SinS(this->actor.world.rot.y) * -30.0f) + this->actor.world.pos.x);
                player->actor.world.pos.z =
                    (f32)((Math_CosS(this->actor.world.rot.y) * -30.0f) + this->actor.world.pos.z);
                Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_8);
                Audio_PlayFanfare(NA_BGM_APPEAR);
            }
            break;
        case 2: // Walking away
            if (DECR(this->animTimer)) {
                if (!(this->animTimer % 8)) {
                    Actor_PlaySfx(&this->actor, NA_SE_EN_MORIBLIN_WALK);
                }
                Actor_MoveXZGravity(&this->actor);
            } else {
                this->animTimer = 0;
                this->actor.speed = 0.0f;
                if ((ENGO2_CAGED_FLAG(this) != 1) && (ENGO2_CAGED_FLAG(this) != 2) && (ENGO2_CAGED_FLAG(this) != 4) &&
                    (ENGO2_CAGED_FLAG(this) != 5) && (ENGO2_CAGED_FLAG(this) != 9) && (ENGO2_CAGED_FLAG(this) != 11)) {
                    this->goronState++;
                }
                this->goronState++;
            }
            break;
        case 3: // Walking away
            this->animTimer++;
            if (!(this->animTimer % 8) && (this->animTimer < 10)) {
                Actor_PlaySfx(&this->actor, NA_SE_EN_MORIBLIN_WALK);
            }
            if (this->animTimer == 10) {
                Actor_PlaySfx(&this->actor, NA_SE_EV_IRON_DOOR_OPEN);
            }
            if (this->animTimer > 44) {
                SfxSource_PlaySfxAtFixedWorldPos(play, &this->actor.world.pos, 20, NA_SE_EV_IRON_DOOR_CLOSE);
            } else {
                break;
            }
        case 4: // Finalize walking away
            Message_CloseTextbox(play);
            EnGo2_GoronFireGeneric_ClearSubcamera(this, play);
            Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_7);
            Actor_Kill(&this->actor);
            break;
        case 1:
            break;
    }
}

void EnGo2_Update(Actor* thisx, PlayState* play) {
    EnGo2* this = (EnGo2*)thisx;

    EnGo2_UpdateShadowAlpha(this, &this->shadownAlpha);
    EnGo2_PlayStandingChangeSfx(this);
    SkelAnime_Update(&this->skelAnime);
    EnGo2_RollForward(this);
    Actor_UpdateBgCheckInfo(play, &this->actor, this->collider.dim.height * 0.5f, this->collider.dim.radius * 0.6f,
                            0.0f, UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2);
#if OOT_VERSION < PAL_1_0
    EnGo2_UpdateRollingKnockback(this, play);
#else
    if (this->interactInfo.talkState == NPC_TALK_STATE_IDLE) {
        EnGo2_UpdateRollingKnockback(this, play);
    }
#endif
    this->actionFunc(this, play);
    if (this->isUncurled == true) {
        func_80034F54(play, this->unk_226, this->unk_24A, GORON_LIMB_MAX);
    }
    EnGo2_TrackPlayer(this, play);
    EnGo2_EyeMouthTexState(this);
    EnGo2_CheckCollision(this, play);
}

s32 EnGo2_DrawCurledUp(EnGo2* this, PlayState* play) {
    Vec3f D_80A48554 = { 0.0f, 0.0f, 0.0f };

    OPEN_DISPS(play->state.gfxCtx, "../z_en_go2.c", 2881);
    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_en_go2.c", 2884);
    gSPDisplayList(POLY_OPA_DISP++, gGoronCurledUpDL);
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_go2.c", 2889);
    Matrix_MultVec3f(&D_80A48554, &this->actor.focus.pos);

    return 1;
}

s32 EnGo2_DrawRolling(EnGo2* this, PlayState* play) {
    s32 pad;
    Vec3f D_80A48560 = { 0.0f, 0.0f, 0.0f };
    f32 speedXZ;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_go2.c", 2914);
    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    speedXZ = this->actionFunc == EnGo2_RollingReverse ? 0.0f : this->actor.speed;
    Matrix_RotateZYX((play->state.frames * ((s16)speedXZ * 1400)), 0, this->actor.shape.rot.z, MTXMODE_APPLY);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_en_go2.c", 2926);
    gSPDisplayList(POLY_OPA_DISP++, gGoronRollingDL);
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_go2.c", 2930);
    Matrix_MultVec3f(&D_80A48560, &this->actor.focus.pos);
    return 1;
}

s32 EnGo2_OverrideLimbDraw(PlayState* play, s32 limb, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnGo2* this = (EnGo2*)thisx;
    Vec3s limbRot;

    if (limb == GORON_LIMB_HEAD) {
        Matrix_Translate(2800.0f, 0.0f, 0.0f, MTXMODE_APPLY);
        limbRot = this->interactInfo.headRot;
        Matrix_RotateX(BINANG_TO_RAD_ALT(limbRot.y), MTXMODE_APPLY);
        Matrix_RotateZ(BINANG_TO_RAD_ALT(limbRot.x), MTXMODE_APPLY);
        Matrix_Translate(-2800.0f, 0.0f, 0.0f, MTXMODE_APPLY);
    }
    if (limb == GORON_LIMB_TORSO) {
        limbRot = this->interactInfo.torsoRot;
        Matrix_RotateY(BINANG_TO_RAD_ALT(limbRot.y), MTXMODE_APPLY);
        Matrix_RotateX(BINANG_TO_RAD_ALT(limbRot.x), MTXMODE_APPLY);
    }
    if ((limb == GORON_LIMB_TORSO) || (limb == GORON_LIMB_LEFT_ARM) || (limb == GORON_LIMB_RIGHT_ARM)) {
        rot->y += Math_SinS(this->unk_226[limb]) * 200.0f;
        rot->z += Math_CosS(this->unk_24A[limb]) * 200.0f;
    }
    return 0;
}

void EnGo2_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnGo2* this = (EnGo2*)thisx;
    Vec3f D_80A4856C = { 600.0f, 0.0f, 0.0f };

    if (limbIndex == GORON_LIMB_HEAD) {
        Matrix_MultVec3f(&D_80A4856C, &this->actor.focus.pos);
    }
}

void EnGo2_Draw(Actor* thisx, PlayState* play) {
    EnGo2* this = (EnGo2*)thisx;
    void* eyeTextures[] = { gGoronCsEyeClosed2Tex, gGoronCsEyeOpenTex, gGoronCsEyeHalfTex, gGoronCsEyeClosedTex };
    void* mouthTextures[] = { gGoronCsMouthNeutralTex, gGoronCsMouthSmileTex };

    EnGo2_UpdateEffects(this);
    Matrix_Push();
    EnGo2_DrawEffects(this, play);
    Matrix_Pop();

    if ((this->actionFunc == EnGo2_CurledUp) && (this->skelAnime.playSpeed == 0.0f) &&
        (this->skelAnime.curFrame == 0.0f)) {
        if (1) {}
        EnGo2_DrawCurledUp(this, play);
        return;
    }

    if (this->actionFunc == EnGo2_RollingSlow || this->actionFunc == EnGo2_RollingReverse ||
        this->actionFunc == EnGo2_RollingStart) {
        EnGo2_DrawRolling(this, play);
        return;
    }

    // draw skeleton normally
    {
        OPEN_DISPS(play->state.gfxCtx, "../z_en_go2.c", 3063);
        Gfx_SetupDL_25Opa(play->state.gfxCtx);

        gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(eyeTextures[this->eyeTexIndex]));
        gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(mouthTextures[this->mouthTexIndex]));

        SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                              EnGo2_OverrideLimbDraw, EnGo2_PostLimbDraw, this);
        CLOSE_DISPS(play->state.gfxCtx, "../z_en_go2.c", 3081);
    }
}
