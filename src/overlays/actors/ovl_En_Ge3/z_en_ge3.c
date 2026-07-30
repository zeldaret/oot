/*
 * File: z_en_ge3.c
 * Overlay: ovl_En_Ge3
 * Description: Gerudo giving you membership card
 */

#include "z_en_ge3.h"

#include "attributes.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "segmented_address.h"
#include "sys_matrix.h"
#include "versions.h"
#include "z_lib.h"
#include "item.h"
#include "play_state.h"
#include "player.h"

#include "assets/objects/object_geldb/object_geldb.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY | ACTOR_FLAG_UPDATE_CULLING_DISABLED)

void EnGe3_Init(Actor* thisx, PlayState* play);
void EnGe3_Destroy(Actor* thisx, PlayState* play);
void EnGe3_Update(Actor* thisx, PlayState* play);
void EnGe3_Draw(Actor* thisx, PlayState* play);

void func_80A34A80(EnGe3* this, PlayState* play);
void func_80A34B90(EnGe3* this, PlayState* play);
void func_80A34D68(Actor* thisx, PlayState* play);

extern FlexSkeletonHeader D_600A458;
extern AnimationHeader D_600B07C;

ActorProfile En_Ge3_Profile = {
    /**/ ACTOR_EN_GE3,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_GELDB,
    /**/ sizeof(EnGe3),
    /**/ EnGe3_Init,
    /**/ EnGe3_Destroy,
    /**/ EnGe3_Update,
    /**/ EnGe3_Draw,
};

static ColliderCylinderInit D_80A35190 = {
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
        { 0x00000722, HIT_BACKLASH_NONE, 0x00 },
        ATELEM_NONE,
        ACELEM_ON,
        OCELEM_ON,
    },
    { 20, 50, 0, { 0, 0, 0 } },
};

static void (*D_80A351BC[1])(EnGe3*, PlayState*) = { func_80A34A80 };
static AnimationHeader* D_80A351C0[1] = { &D_600B07C };
static u8 D_80A351C4[1] = { ANIMMODE_LOOP };
static Vec3f D_80A351C8 = { 600.0f, 700.0f, 0.0f };
static s32 D_80A351D4[3] = { 0x06005FE8, 0x060065A8, 0x06006D28 };

void func_80A34620(EnGe3* this, s32 arg1) {
    this->unk310 = D_80A351BC[arg1];
    Animation_Change(&this->unk198, D_80A351C0[arg1], 1.0f, 0.0f, Animation_GetLastFrame(D_80A351C0[arg1]),
                     D_80A351C4[arg1], -8.0f);
    this->unk30C &= ~2;
}

void EnGe3_Init(Actor* thisx, PlayState* play) {
    EnGe3* this = (EnGe3*)thisx;
    s32 pad;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 36.0f);
    SkelAnime_InitFlex(play, &this->unk198, &D_600A458, NULL, this->unk1DC, this->unk26C, 24);
    Animation_PlayLoop(&this->unk198, &D_600B07C);
    Collider_InitCylinder(play, &this->unk14C);
    Collider_SetCylinder(play, &this->unk14C, &this->actor, &D_80A35190);
    this->actor.colChkInfo.mass = MASS_IMMOVABLE;
    Actor_SetScale(&this->actor, 0.01f);
    this->actor.world.rot.z = 0;
    this->actor.shape.rot.z = 0;
    func_80A34620(this, 0);
    this->unk310 = func_80A34B90;
    this->unk30C = 0;
    this->actor.attentionRangeType = ATTENTION_RANGE_6;
    this->actor.minVelocityY = -4.0f;
    this->actor.gravity = -1.0f;
}

void EnGe3_Destroy(Actor* thisx, PlayState* play) {
    EnGe3* this = (EnGe3*)thisx;

    Collider_DestroyCylinder(play, &this->unk14C);
}

void func_80A347F4(EnGe3* this, PlayState* play) {
    s16 temp_v0;
    s32 pad;

    temp_v0 = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
    if (ABS(temp_v0) < 0x4001) {
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 6, 0xFA0, 0x64);
        this->actor.world.rot.y = this->actor.shape.rot.y;
        Actor_TrackPlayer(play, &this->actor, &this->unk300, &this->unk306, this->actor.focus.pos);
    } else {
        if (temp_v0 < 0) {
            Math_SmoothStepToS(&this->unk300.y, -0x2000, 6, 0x1838, 0x100);
        } else {
            Math_SmoothStepToS(&this->unk300.y, 0x2000, 6, 0x1838, 0x100);
        }
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 0xC, 0x3E8, 0x64);
        this->actor.world.rot.y = this->actor.shape.rot.y;
    }
}

void func_80A3490C(EnGe3* this, PlayState* play) {
    s16 temp_v0;

    temp_v0 = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
    if ((ABS(temp_v0) < 0x2301) && (this->actor.xzDistToPlayer < 100.0f)) {
        Actor_TrackPlayer(play, &this->actor, &this->unk300, &this->unk306, this->actor.focus.pos);
    } else {
        Math_SmoothStepToS(&this->unk300.x, 0, 6, 0x1838, 0x64);
        Math_SmoothStepToS(&this->unk300.y, 0, 6, 0x1838, 0x64);
        Math_SmoothStepToS(&this->unk306.x, 0, 6, 0x1838, 0x64);
        Math_SmoothStepToS(&this->unk306.y, 0, 6, 0x1838, 0x64);
    }
}

void func_80A34A20(EnGe3* this, PlayState* play) {
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        this->unk310 = func_80A34A80;
        this->actor.update = func_80A34D68;
        this->actor.flags &= ~ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
    }
    func_80A347F4(this, play);
}

void func_80A34A80(EnGe3* this, PlayState* play) {
    func_80A3490C(this, play);
}

void func_80A34AA0(EnGe3* this, PlayState* play) {
    if (Actor_HasParent(&this->actor, play) != 0) {
        this->actor.parent = NULL;
        this->unk310 = func_80A34A20;
    } else {
        Actor_OfferGetItem(&this->actor, play, GI_GERUDOS_CARD, 10000.0f, 50.0f);
    }
}

void func_80A34B00(EnGe3* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
        this->actor.flags &= ~ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
        this->unk310 = func_80A34AA0;
        Actor_OfferGetItem(&this->actor, play, GI_GERUDOS_CARD, 10000.0f, 50.0f);
    }
}

void func_80A34B90(EnGe3* this, PlayState* play) {
    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        this->unk310 = func_80A34B00;
    } else {
        if (!(this->unk30C & 4)) {
            Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_7);
            this->unk30C |= 4;
        }
        this->actor.textId = 0x6004;
        this->actor.flags |= ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
        Actor_OfferTalkExchange(&this->actor, play, 300.0f, 300.0f, EXCH_ITEM_NONE);
    }
    func_80A3490C(this, play);
}

void func_80A34C40(EnGe3* this, PlayState* play) {
    s32 pad[2];

    Collider_UpdateCylinder(&this->actor, &this->unk14C);
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->unk14C.base);
    Actor_UpdateBgCheckInfo(play, &this->actor, 40.0f, 25.0f, 40.0f, UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2);
    if (!(this->unk30C & 2) && SkelAnime_Update(&this->unk198)) {
        this->unk30C |= 2;
    }
}

void func_80A34CE4(EnGe3* this, PlayState* play) {
    Actor_MoveXZGravity(&this->actor);
    if (DECR(this->unk2FE) == 0) {
        this->unk2FE = Rand_S16Offset(0x3C, 0x3C);
    }
    this->unk2FC = this->unk2FE;
    if (this->unk2FC >= 3) {
        this->unk2FC = 0;
    }
}

void func_80A34D68(Actor* thisx, PlayState* play) {
    EnGe3* this = (EnGe3*)thisx;

    func_80A34C40(this, play);
    this->unk310(this, play);
    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        this->unk310 = func_80A34A20;
        this->actor.update = EnGe3_Update;
    } else {
        this->actor.textId = 0x6005;
        if (this->actor.xzDistToPlayer < 100.0f) {
            Actor_OfferTalk(&this->actor, play, 100.0f);
        }
    }
    func_80A34CE4(this, play);
}

void EnGe3_Update(Actor* thisx, PlayState* play) {
    EnGe3* this = (EnGe3*)thisx;

    func_80A34C40(this, play);
    this->unk310(this, play);
    func_80A34CE4(this, play);
}

s32 func_80A34E58(PlayState* play, s32 arg1, Gfx** arg2, Vec3f* arg3, Vec3s* arg4, void* thisx) {
    EnGe3* this = thisx;

    switch (arg1) {
        case 5:
        case 0xB:
        case 0x10:
            *arg2 = NULL;
            return 0;

        case 6:
            arg4->x += this->unk300.y;
#if OOT_VERSION >= PAL_1_1
            FALLTHROUGH;
        default:
            // This is a hack to fix a bug present before PAL 1.1, where the actor's clothes can change color
            // depending on what was drawn earlier in the frame.
            OPEN_DISPS(play->state.gfxCtx, "../z_en_ge3.c", 547);
            switch (arg1) {
                case 3:
                    break;

                case 6:
                    gDPPipeSync(POLY_OPA_DISP++);
                    gDPSetEnvColor(POLY_OPA_DISP++, 80, 60, 10, 255);
                    break;

                case 11:
                case 16:
                    gDPPipeSync(POLY_OPA_DISP++);
                    gDPSetEnvColor(POLY_OPA_DISP++, 140, 170, 230, 255);
                    gDPSetPrimColor(POLY_OPA_DISP++, 0x00, 0x00, 255, 255, 255, 255);
                    break;

                default:
                    gDPPipeSync(POLY_OPA_DISP++);
                    gDPSetEnvColor(POLY_OPA_DISP++, 140, 0, 0, 255);
                    break;
            }
            CLOSE_DISPS(play->state.gfxCtx, "../z_en_ge3.c", 566);
#endif
            break;
    }
    return 0;
}

void func_80A35004(PlayState* play, s32 arg1, Gfx** arg2, Vec3s* arg3, void* thisx) {
    EnGe3* this = thisx;
    Vec3f sp18 = D_80A351C8;

    if (arg1 == 6) {
        Matrix_MultVec3f(&sp18, &this->actor.focus.pos);
    }
}

void EnGe3_Draw(Actor* thisx, PlayState* play) {
    s32 temp_a0;
    EnGe3* this = (EnGe3*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_ge3.c", 614);
    Gfx_SetupDL_37Opa(play->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 8, SEGMENTED_TO_VIRTUAL(D_80A351D4[this->unk2FC]));
    func_8002EBCC(&this->actor, play, 0);
    SkelAnime_DrawFlexOpa(play, this->unk198.skeleton, this->unk198.jointTable, this->unk198.dListCount, func_80A34E58,
                          func_80A35004, this);
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_ge3.c", 631);
}
