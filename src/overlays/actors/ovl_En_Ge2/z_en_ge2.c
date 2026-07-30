#include "z_en_ge2.h"

#include "gfx.h"
#include "gfx_setupdl.h"
#include "printf.h"
#include "segmented_address.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "z_lib.h"
#include "effect.h"
#include "horse.h"
#include "play_state.h"
#include "player.h"
#include "save.h"

#include "assets/objects/object_gla/object_gla.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY | ACTOR_FLAG_UPDATE_CULLING_DISABLED)

void EnGe2_Init(Actor* thisx, PlayState* play);
void EnGe2_Destroy(Actor* thisx, PlayState* play);
void EnGe2_Update(Actor* thisx, PlayState* play);
void EnGe2_Draw(Actor* thisx, PlayState* play);

s32 func_80A330A0(void);
void func_80A330CC(EnGe2* this, PlayState* play);
void func_80A331A0(EnGe2* this, PlayState* play);
void func_80A332D4(EnGe2* this, PlayState* play);
void func_80A3334C(EnGe2* this, PlayState* play);
void func_80A33444(EnGe2* this, PlayState* play);
void func_80A3354C(EnGe2* this, PlayState* play);
void func_80A33600(EnGe2* this, PlayState* play);
void func_80A336C4(EnGe2* this, PlayState* play);
void func_80A339EC(EnGe2* this, PlayState* play);
void func_80A33AFC(EnGe2* this, PlayState* play);
void func_80A33D10(Actor* thisx, PlayState* play);
void func_80A33DE0(Actor* thisx, PlayState* play);
void func_80A3402C(Actor* thisx, PlayState* play2);

ActorProfile En_Ge2_Profile = {
    /**/ ACTOR_EN_GE2,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_GLA,
    /**/ sizeof(EnGe2),
    /**/ EnGe2_Init,
    /**/ EnGe2_Destroy,
    /**/ EnGe2_Update,
    /**/ EnGe2_Draw,
};

static ColliderCylinderInit D_80A34310 = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0x00000000, HIT_SPECIAL_EFFECT_NONE, 0x00 },
        { 0x000007A2, HIT_BACKLASH_NONE, 0x00 },
        ATELEM_NONE,
        ACELEM_ON,
        OCELEM_ON,
    },
    { 20, 60, 0, { 0, 0, 0 } },
};

static void (*D_80A3433C[9])(EnGe2*, PlayState*) = {
    func_80A33600, func_80A3354C, func_80A33444, func_80A3334C, func_80A332D4,
    func_80A331A0, func_80A330CC, func_80A336C4, func_80A339EC,
};
static AnimationHeader* D_80A34360[9] = {
    &object_gla_009ED4_Anim, &object_gla_0098AC_Anim, &object_gla_0098AC_Anim,
    &object_gla_0011F4_Anim, &object_gla_0098AC_Anim, &object_gla_008D60_Anim,
    &object_gla_0098AC_Anim, &object_gla_0098AC_Anim, &object_gla_0098AC_Anim,
};
static u8 D_80A34384[9] = {
    ANIMMODE_LOOP, ANIMMODE_ONCE, ANIMMODE_LOOP, ANIMMODE_ONCE, ANIMMODE_LOOP,
    ANIMMODE_LOOP, ANIMMODE_LOOP, ANIMMODE_LOOP, ANIMMODE_ONCE,
};
static Vec3f D_80A34390 = { 0.0f, -0.05f, 0.0f };
static Vec3f D_80A3439C = { 0.0f, -0.025f, 0.0f };
static Color_RGBA8 D_80A343A8 = { 0xFF, 0xFF, 0xFF, 0 };
static Color_RGBA8 D_80A343AC = { 0xFF, 0x96, 0, 0 };
static Vec3f D_80A343B0 = { 600.0f, 700.0f, 0.0f };
static s32 D_80A343BC[3] = {
    0x06004F78,
    0x06005578,
    0x06005BF8,
};

void func_80A32BD0(EnGe2* this, s32 arg1) {
    this->unk308 = D_80A3433C[arg1];
    Animation_Change(&this->unk198, D_80A34360[arg1], 1.0f, 0.0f, Animation_GetLastFrame(D_80A34360[arg1]),
                     D_80A34384[arg1], -8.0f);
    this->unk2F4 &= ~2;
}

void EnGe2_Init(Actor* thisx, PlayState* play) {
    EnGe2* this = (EnGe2*)thisx;
    s32 pad;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 36.0f);
    SkelAnime_InitFlex(play, &this->unk198, &object_gla_008968_Skel, NULL, this->unk1DC, this->unk260, 22);
    Animation_PlayLoop(&this->unk198, &object_gla_009ED4_Anim);
    Collider_InitCylinder(play, &this->unk14C);
    Collider_SetCylinder(play, &this->unk14C, &this->actor, &D_80A34310);
    this->actor.colChkInfo.mass = MASS_IMMOVABLE;
    Actor_SetScale(&this->actor, 0.01f);
    if (play->sceneId == SCENE_GERUDO_VALLEY) {
        this->actor.cullingVolumeDistance = 1000.0f;
    } else {
        this->actor.cullingVolumeDistance = 1200.0f;
    }
    this->unk2FC = (this->actor.world.rot.z + 1) * 40.0f;
    this->actor.world.rot.z = 0;
    this->actor.shape.rot.z = 0;
    switch (PARAMS_GET_S(thisx->params, 0, 8)) {
        case 0:
            func_80A32BD0(this, 0);
            if (func_80A330A0() != 0) {
                this->actor.update = func_80A33D10;
                this->actor.attentionRangeType = ATTENTION_RANGE_6;
            }
            break;

        case 1:
            func_80A32BD0(this, 7);
            if (func_80A330A0() != 0) {
                this->actor.update = func_80A33D10;
                this->actor.attentionRangeType = ATTENTION_RANGE_6;
            }
            break;

        case 2:
            func_80A32BD0(this, 8);
            this->actor.update = func_80A33DE0;
            this->unk308 = func_80A33AFC;
            this->actor.attentionRangeType = ATTENTION_RANGE_6;
            break;

        default:
            ASSERT(0, "0", "../z_en_ge2.c", 0x1A2);
            break;
    }
    this->unk2F4 = 0;
    this->unk304 = 0;
    this->unk302 = 0;
    this->unk306 = 0;
    this->actor.minVelocityY = -4.0f;
    this->actor.gravity = -1.0f;
    this->unk2F6 = this->actor.world.rot.y;
    this->unk300 = PARAMS_GET_S(thisx->params, 8, 8) * 0xA;
}

void EnGe2_Destroy(Actor* thisx, PlayState* play) {
    EnGe2* this = (EnGe2*)thisx;

    Collider_DestroyCylinder(play, &this->unk14C);
}

s32 func_80A32ECC(PlayState* play, EnGe2* this) {
    f32 var_fv0;

    if (!IS_DAY) {
        var_fv0 = 0.75f;
    } else {
        var_fv0 = 1.5f;
    }
    if ((250.0f * var_fv0) < this->actor.xzDistToPlayer) {
        return 0;
    }
    if (this->actor.xzDistToPlayer < 50.0f) {
        return 2;
    }
    if (func_8002DDE4(play) != 0) {
        return 1;
    }
    return 0;
}

s32 func_80A32F74(PlayState* play, EnGe2* this, Vec3f* arg2, s16 arg3, f32 arg4) {
    Player* player = GET_PLAYER(play);
    Vec3f sp38;
    CollisionPoly* sp34;
    f32 var_fv0;
    s16 temp_v0;

    if (!IS_DAY) {
        var_fv0 = 0.75f;
    } else {
        var_fv0 = 1.5f;
    }
    if ((250.0f * var_fv0) < this->actor.xzDistToPlayer) {
        return 0;
    }
    if (arg4 < ABS(this->actor.yDistToPlayer)) {
        return 0;
    }
    temp_v0 = this->actor.yawTowardsPlayer - arg3;
    if (ABS(temp_v0) > 0x2000) {
        return 0;
    }
    if (BgCheck_AnyLineTest1(&play->colCtx, arg2, &player->bodyPartsPos[PLAYER_BODYPART_HEAD], &sp38, &sp34, 0)) {
        return 0;
    }
    return 1;
}

s32 func_80A330A0(void) {
    if (GET_EVENTCHKINF_CARPENTERS_ALL_RESCUED2()) {
        return 1;
    } else {
        return 0;
    }
}

void func_80A330CC(EnGe2* this, PlayState* play) {
    if (this->unk305 > 0) {
        this->unk305--;
    } else {
        Horse_ResetHorseData(play);
        if ((INV_CONTENT(ITEM_HOOKSHOT) == ITEM_NONE) || (INV_CONTENT(ITEM_LONGSHOT) == ITEM_NONE)) {
            play->nextEntranceIndex = ENTR_GERUDO_VALLEY_1;
        } else if (GET_EVENTCHKINF(EVENTCHKINF_C7)) {
            play->nextEntranceIndex = ENTR_GERUDOS_FORTRESS_18;
        } else {
            play->nextEntranceIndex = ENTR_GERUDOS_FORTRESS_17;
        }
        play->transitionType = TRANS_TYPE_CIRCLE(TCA_STARBURST, TCC_BLACK, TCS_FAST);
        play->transitionTrigger = TRANS_TRIGGER_START;
    }
}

void func_80A331A0(EnGe2* this, PlayState* play) {
    Math_SmoothStepToS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer, 2, 0x400, 0x100);
    this->actor.shape.rot.y = this->actor.world.rot.y;
    if (this->actor.xzDistToPlayer < 50.0f) {
        func_80A32BD0(this, 6);
        this->actor.speed = 0.0f;
    }
    if (this->unk305 > 0) {
        this->unk305--;
    } else {
        Horse_ResetHorseData(play);
        if ((INV_CONTENT(ITEM_HOOKSHOT) == ITEM_NONE) || (INV_CONTENT(ITEM_LONGSHOT) == ITEM_NONE)) {
            play->nextEntranceIndex = ENTR_GERUDO_VALLEY_1;
        } else if (GET_EVENTCHKINF(EVENTCHKINF_C7)) {
            play->nextEntranceIndex = ENTR_GERUDOS_FORTRESS_18;
        } else {
            play->nextEntranceIndex = ENTR_GERUDOS_FORTRESS_17;
        }
        play->transitionType = TRANS_TYPE_CIRCLE(TCA_STARBURST, TCC_BLACK, TCS_FAST);
        play->transitionTrigger = TRANS_TRIGGER_START;
    }
}

void func_80A332D4(EnGe2* this, PlayState* play) {
    Math_SmoothStepToS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer, 2, 0x400, 0x100);
    this->actor.shape.rot.y = this->actor.world.rot.y;
    if (this->actor.world.rot.y == this->actor.yawTowardsPlayer) {
        func_80A32BD0(this, 5);
        this->unk305 = 0x32;
        this->actor.speed = 4.0f;
    }
}

void func_80A3334C(EnGe2* this, PlayState* play) {
    s32 temp_v0;
    Vec3f sp38;

    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    if (this->unk2F4 & 2) {
        temp_v0 = play->state.frames * 0x2800;
        sp38.x = this->actor.focus.pos.x + (Math_CosS(temp_v0) * 5.0f);
        sp38.y = this->actor.focus.pos.y + 10.0f;
        sp38.z = this->actor.focus.pos.z + (Math_SinS(temp_v0) * 5.0f);
        EffectSsKiraKira_SpawnDispersed(play, &sp38, &D_80A34390, &D_80A3439C, &D_80A343A8, &D_80A343AC, 0x3E8, 0x10);
    }
}

void func_80A33444(EnGe2* this, PlayState* play) {
    s32 temp_v0_2;

    this->actor.speed = 0.0f;
    if (this->unk2F4 & 0x10) {
        this->unk2F4 &= ~0x10;
    } else {
        temp_v0_2 = func_80A32ECC(play, this);
        if (temp_v0_2 != 0) {
            this->unk305 = 0x64;
            this->unk2F8 = this->actor.yawTowardsPlayer;
            if (this->unk306 < temp_v0_2) {
                this->unk306 = temp_v0_2;
            }
        } else if (this->actor.world.rot.y == this->unk2F8) {
            this->unk306 = 0;
            func_80A32BD0(this, 1);
            return;
        }
    }
    switch (this->unk306) {
        case 1:
            Math_SmoothStepToS(&this->actor.world.rot.y, this->unk2F8, 2, 0x200, 0x100);
            break;

        case 2:
            Math_SmoothStepToS(&this->actor.world.rot.y, this->unk2F8, 2, 0x600, 0x180);
            break;
    }
    this->actor.shape.rot.y = this->actor.world.rot.y;
}

void func_80A3354C(EnGe2* this, PlayState* play) {
    s32 temp_v0;

    this->actor.speed = 0.0f;
    temp_v0 = func_80A32ECC(play, this);
    if (temp_v0 != 0) {
        func_80A32BD0(this, 2);
        this->unk305 = 0x64;
        this->unk306 = temp_v0;
        this->unk2F8 = this->actor.yawTowardsPlayer;
    } else if (this->unk2F4 & 2) {
        Math_SmoothStepToS(&this->actor.world.rot.y, this->unk2F6, 2, 0x400, 0x200);
        this->actor.shape.rot.y = this->actor.world.rot.y;
    }
    if (this->actor.shape.rot.y == this->unk2F6) {
        func_80A32BD0(this, 0);
    }
}

void func_80A33600(EnGe2* this, PlayState* play) {
    u8 temp_v0;

    temp_v0 = func_80A32ECC(play, this);
    if (temp_v0 != 0) {
        this->actor.speed = 0.0f;
        func_80A32BD0(this, 2);
        this->unk305 = 0x64;
        this->unk306 = temp_v0;
        this->unk2F8 = this->actor.yawTowardsPlayer;
    } else if (this->unk302 >= this->unk300) {
        this->unk302 = 0;
        this->unk2F6 += 0x8000;
        func_80A32BD0(this, 1);
        this->actor.speed = 0.0f;
    } else {
        this->unk302 += 1;
        this->actor.speed = 2.0f;
    }
}

void func_80A336C4(EnGe2* this, PlayState* play) {
    Math_SmoothStepToS(&this->actor.world.rot.y, this->unk2F6, 2, 0x400, 0x200);
}

void func_80A33704(EnGe2* this, PlayState* play) {
    s16 temp_v0;
    s32 pad;

    temp_v0 = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
    if (ABS(temp_v0) <= 0x4000) {
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 6, 0xFA0, 0x64);
        this->actor.world.rot.y = this->actor.shape.rot.y;
        Actor_TrackPlayer(play, &this->actor, &this->unk2E8, &this->unk2EE, this->actor.focus.pos);
        return;
    }
    if (temp_v0 < 0) {
        Math_SmoothStepToS(&this->unk2E8.y, -0x2000, 6, 0x1838, 0x100);
    } else {
        Math_SmoothStepToS(&this->unk2E8.y, 0x2000, 6, 0x1838, 0x100);
    }
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 0xC, 0x3E8, 0x64);
    this->actor.world.rot.y = this->actor.shape.rot.y;
}

void func_80A3381C(EnGe2* this, PlayState* play) {
    s16 temp_v0;

    temp_v0 = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
    if ((ABS(temp_v0) < 0x4301) && (this->actor.xzDistToPlayer < 200.0f)) {
        Actor_TrackPlayer(play, &this->actor, &this->unk2E8, &this->unk2EE, this->actor.focus.pos);
    } else {
        Math_SmoothStepToS(&this->unk2E8.x, 0, 6, 0x1838, 0x64);
        Math_SmoothStepToS(&this->unk2E8.y, 0, 6, 0x1838, 0x64);
        Math_SmoothStepToS(&this->unk2EE.x, 0, 6, 0x1838, 0x64);
        Math_SmoothStepToS(&this->unk2EE.y, 0, 6, 0x1838, 0x64);
    }
}

void func_80A33930(EnGe2* this, PlayState* play) {
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        switch (PARAMS_GET_S(this->actor.params, 0, 8)) {
            case 0:
                func_80A32BD0(this, 1);
                break;

            case 1:
                func_80A32BD0(this, 7);
                break;

            case 2:
                this->unk308 = func_80A339EC;
                break;
        }
        this->actor.update = func_80A33D10;
        this->actor.flags &= ~ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
    }
    func_80A33704(this, play);
}

void func_80A339EC(EnGe2* this, PlayState* play) {
    func_80A3381C(this, play);
}

void func_80A33A0C(EnGe2* this, PlayState* play) {
    if (Actor_HasParent(&this->actor, play) != 0) {
        this->actor.parent = NULL;
        this->unk308 = func_80A33930;
    } else {
        Actor_OfferGetItem(&this->actor, play, GI_GERUDOS_CARD, 10000.0f, 50.0f);
    }
}

void func_80A33A6C(EnGe2* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
        this->actor.flags &= ~ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
        this->unk308 = func_80A33A0C;
        Actor_OfferGetItem(&this->actor, play, GI_GERUDOS_CARD, 10000.0f, 50.0f);
    }
}

void func_80A33AFC(EnGe2* this, PlayState* play) {
    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        this->unk308 = func_80A33A6C;
    } else {
        this->actor.textId = 0x6004;
        this->actor.flags |= ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
        Actor_OfferTalkExchange(&this->actor, play, 300.0f, 300.0f, EXCH_ITEM_NONE);
    }
    func_80A3381C(this, play);
}

void func_80A33B7C(EnGe2* this, PlayState* play) {
    this->unk2F4 |= 8;
    this->actor.speed = 0.0f;
    func_80A32BD0(this, 4);
    Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_95);
    Sfx_PlaySfxCentered(NA_SE_SY_FOUND);
    Message_StartTextbox(play, 0x6000, &this->actor);
}

void func_80A33BE8(EnGe2* this, PlayState* play) {
    s32 pad[2];

    Collider_UpdateCylinder(&this->actor, &this->unk14C);
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->unk14C.base);
    Actor_UpdateBgCheckInfo(play, &this->actor, 40.0f, 25.0f, 40.0f, UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2);
    if (!(this->unk2F4 & 2) && SkelAnime_Update(&this->unk198)) {
        this->unk2F4 |= 2;
    }
}

void func_80A33C8C(EnGe2* this, PlayState* play) {
    Actor_MoveXZGravity(&this->actor);
    if (DECR(this->unk2E6) == 0) {
        this->unk2E6 = Rand_S16Offset(0x3C, 0x3C);
    }
    this->unk2E4 = this->unk2E6;
    if (this->unk2E4 >= 3) {
        this->unk2E4 = 0;
    }
}

void func_80A33D10(Actor* thisx, PlayState* play) {
    EnGe2* this = (EnGe2*)thisx;

    func_80A33BE8(this, play);
    this->unk308(this, play);
    if (Actor_TalkOfferAccepted(thisx, play)) {
        if (PARAMS_GET_S(thisx->params, 0, 8) == 0) {
            thisx->speed = 0.0f;
            func_80A32BD0(this, 8);
        }
        this->unk308 = func_80A33930;
        thisx->update = func_80A33DE0;
    } else {
        thisx->textId = 0x6005;
        if (thisx->xzDistToPlayer < 100.0f) {
            Actor_OfferTalk(thisx, play, 100.0f);
        }
    }
    func_80A33C8C(this, play);
}

void func_80A33DE0(Actor* thisx, PlayState* play) {
    EnGe2* this = (EnGe2*)thisx;

    this->unk2F4 |= 0x10;
    func_80A33BE8(this, play);
    this->unk308(this, play);
    func_80A33C8C(this, play);
}

void EnGe2_Update(Actor* thisx, PlayState* play) {
    EnGe2* this = (EnGe2*)thisx;

    func_80A33BE8(this, play);
    if ((this->unk2F4 & 4) || (this->unk2F4 & 8)) {
        this->unk308(this, play);
    } else {
        if (this->unk14C.base.acFlags & AC_HIT) {
            if ((this->unk14C.elem.acHitElem != NULL) &&
                (this->unk14C.elem.acHitElem->atDmgInfo.dmgFlags & DMG_HOOKSHOT)) {
                //! @bug duration parameter is larger than 255 which messes with the internal bitpacking of the
                //! colorfilter.
                //! Because of the duration being tracked as an unsigned byte it ends up being truncated to 144
                Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_BLUE, 120, COLORFILTER_BUFFLAG_OPA, 400);
                this->actor.update = func_80A3402C;
                return;
            }
            func_80A32BD0(this, 3);
            this->unk305 = 0x64;
            this->unk2F4 |= 4;
            this->actor.speed = 0.0f;
            Actor_PlaySfx(&this->actor, NA_SE_VO_SK_CRASH);
        } else {
            this->unk308(this, play);
            if (func_80A32F74(play, this, &this->actor.focus.pos, this->actor.shape.rot.y, this->unk2FC) != 0) {
                PRINTF("\x1b[32m発見!!!!!!!!!!!!\n\x1b[m");
                func_80A33B7C(this, play);
            }
            if ((PARAMS_GET_S(this->actor.params, 0, 8) == 1) && (this->actor.xzDistToPlayer < 100.0f)) {
                PRINTF("\x1b[32m発見!!!!!!!!!!!!\n\x1b[m");
                func_80A33B7C(this, play);
            }
        }
    }
    if (!(this->unk2F4 & 4) &&
        ((PARAMS_GET_S(this->actor.params, 0, 8) == 0) || (PARAMS_GET_S(this->actor.params, 0, 8) == 1))) {
        CollisionCheck_SetAC(play, &play->colChkCtx, &this->unk14C.base);
    }
    func_80A33C8C(this, play);
    if ((func_80A330A0() != 0) && !(this->unk2F4 & 4)) {
        this->actor.update = func_80A33D10;
        this->actor.attentionRangeType = ATTENTION_RANGE_6;
    }
}

void func_80A3402C(Actor* thisx, PlayState* play2) {
    PlayState* play = play2;
    EnGe2* this = (EnGe2*)thisx;

    Collider_UpdateCylinder(&this->actor, &this->unk14C);
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->unk14C.base);
    Actor_UpdateBgCheckInfo(play, &this->actor, 40.0f, 25.0f, 40.0f, UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2);
    if ((this->unk14C.base.acFlags & AC_HIT) && (((this->unk14C.elem.acHitElem == NULL)) ||
                                                 !(this->unk14C.elem.acHitElem->atDmgInfo.dmgFlags & DMG_HOOKSHOT))) {
        this->actor.colorFilterTimer = 0;
        func_80A32BD0(this, 3);
        this->unk305 = 0x64;
        this->unk2F4 = (u16)(this->unk2F4 | 4);
        this->actor.speed = 0.0f;
        Actor_PlaySfx(&this->actor, NA_SE_VO_SK_CRASH);
    }
    CollisionCheck_SetAC(play, &play->colChkCtx, &this->unk14C.base);
    if (func_80A330A0() != 0) {
        this->actor.update = func_80A33D10;
        this->actor.attentionRangeType = ATTENTION_RANGE_6;
        this->actor.colorFilterTimer = 0;
    } else if (this->actor.colorFilterTimer == 0) {
        this->actor.update = EnGe2_Update;
    }
}

s32 func_80A3415C(PlayState* play, s32 arg1, Gfx** arg2, Vec3f* arg3, Vec3s* arg4, void* thisx) {
    EnGe2* this = thisx;

    if (arg1 == 3) {
        arg4->x += this->unk2E8.y;
        arg4->z += this->unk2E8.x;
    }
    return 0;
}

void func_80A341A0(PlayState* play, s32 arg1, Gfx** arg2, Vec3s* arg3, void* thisx) {
    EnGe2* this = thisx;

    if (arg1 == 6) {
        Matrix_MultVec3f(&D_80A343B0, &this->actor.focus.pos);
    }
}

void EnGe2_Draw(Actor* thisx, PlayState* play) {
    EnGe2* this = (EnGe2*)thisx;
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_ge2.c", 1274);
    Gfx_SetupDL_37Opa(play->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 8, SEGMENTED_TO_VIRTUAL(D_80A343BC[this->unk2E4]));
    func_8002EBCC(&this->actor, play, 0);
    SkelAnime_DrawFlexOpa(play, this->unk198.skeleton, this->unk198.jointTable, this->unk198.dListCount, func_80A3415C,
                          func_80A341A0, this);
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_ge2.c", 1291);
}
