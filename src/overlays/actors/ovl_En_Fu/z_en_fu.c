/*
 * File: z_en_fu.c
 * Overlay: ovl_En_Fu
 * Description: Windmill Man
 */

#include "z_en_fu.h"

#define FLAGS 0x02000019

#define THIS ((EnFu*)thisx)

#define FU_RESET_LOOK_ANGLE (1 << 0)
#define FU_WAIT (1 << 1)

void EnFu_Init(Actor* thisx, GlobalContext* globalCtx);
void EnFu_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnFu_Update(Actor* thisx, GlobalContext* globalCtx);
void EnFu_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnFu_WaitChild(EnFu* this, GlobalContext* globalCtx);
void func_80A1DA04(EnFu* this, GlobalContext* globalCtx);

void EnFu_WaitAdult(EnFu* this, GlobalContext* globalCtx);
void EnFu_TeachSong(EnFu* this, GlobalContext* globalCtx);
void EnFu_WaitForPlayback(EnFu* this, GlobalContext* globalCtx);
void func_80A1DBA0(EnFu* this, GlobalContext* globalCtx);
void func_80A1DBD4(EnFu* this, GlobalContext* globalCtx);
void func_80A1DB60(EnFu* this, GlobalContext* globalCtx);

const ActorInit En_Fu_InitVars = {
    ACTOR_EN_FU,
    ACTORCAT_NPC,
    FLAGS,
    OBJECT_FU,
    sizeof(EnFu),
    (ActorFunc)EnFu_Init,
    (ActorFunc)EnFu_Destroy,
    (ActorFunc)EnFu_Update,
    (ActorFunc)EnFu_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_ENEMY,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_ON,
    },
    { 30, 40, 0, { 0, 0, 0 } },
};

static Vec3f sMtxSrc = {
    700.0f,
    700.0f,
    0.0f,
};

static UNK_PTR sEyesSegments[] = {
    0x06005F20,
    0x06006320,
};

static UNK_PTR sMouthSegments[] = {
    0x06006720,
    0x06006920,
};

extern AnimationHeader D_0600057C;
extern AnimationHeader D_06000B04;
extern FlexSkeletonHeader D_06006C90;
extern CutsceneData D_0200E080[];

typedef enum {
    /* 0x00 */ FU_FACE_CALM,
    /* 0x01 */ FU_FACE_MAD,
} EnFuFace;

void EnFu_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnFu* this = THIS;
    s32 pad;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 36.0f);
    SkelAnime_InitFlex(globalCtx, &this->skelanime, &D_06006C90, &D_06000B04, this->jointTable, this->morphTable, 16);
    Animation_PlayLoop(&this->skelanime, &D_06000B04);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    this->actor.colChkInfo.mass = MASS_IMMOVABLE;
    Actor_SetScale(&this->actor, 0.01f);
    if (LINK_IS_CHILD) {
        this->actionFunc = EnFu_WaitChild;
        this->facialExpression = FU_FACE_CALM;
    } else {
        this->actionFunc = EnFu_WaitAdult;
        this->facialExpression = FU_FACE_MAD;
        this->skelanime.playSpeed = 2.0f;
    }
    this->behaviorFlags = 0;
    this->actor.targetMode = 6;
}

void EnFu_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnFu* this = THIS;
    Collider_DestroyCylinder(globalCtx, &this->collider);
}

s32 func_80A1D94C(EnFu* this, GlobalContext* globalCtx, u16 textID, EnFuActionFunc actionFunc) {
    s16 yawDiff;

    // func_8002F194 returns 1 if actor flags & 0x100 is set and unsets it
    if (func_8002F194(&this->actor, globalCtx)) {
        this->actionFunc = actionFunc;
        return true;
    }
    this->actor.textId = textID;
    yawDiff = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;

    if ((ABS(yawDiff) < 0x2301) && (this->actor.xzDistToPlayer < 100.0f)) {
        func_8002F2CC(&this->actor, globalCtx, 100.0f);
    } else {
        this->behaviorFlags |= FU_RESET_LOOK_ANGLE;
    }
    return false;
}

void func_80A1DA04(EnFu* this, GlobalContext* globalCtx) {
    if (func_8002F334(&this->actor, globalCtx) != 0) {
        this->behaviorFlags &= ~FU_WAIT;
        this->actionFunc = EnFu_WaitChild;

        if (this->skelanime.animation == &D_0600057C) {
            Animation_Change(&this->skelanime, &D_06000B04, 1.0f, 0.0f, Animation_GetLastFrame(&D_06000B04),
                             ANIMMODE_ONCE, -4.0f);
        }
    }
}

void EnFu_WaitChild(EnFu* this, GlobalContext* globalCtx) {
    u16 textID;

    textID = Text_GetFaceReaction(globalCtx, 0xB);
    if (textID == 0) {
        textID = (gSaveContext.eventChkInf[6] & 0x80) ? 0x5033 : 0x5032;
        // 0x5032: "Go around!..I'm so happy!..I'm trying to come up with a musical theme inspired by this windmill..."
        // 0x5033: "Go around, go around, go around... What? It's going way too fast!"
    }

    // if actor flags & 0x100 is set and textID is 0x5033, change animation
    // if func_80A1D94C returns 1, actionFunc is set to func_80A1DA04
    if (func_80A1D94C(this, globalCtx, textID, func_80A1DA04)) {
        if (textID == 0x5033) {
            Animation_Change(&this->skelanime, &D_0600057C, 1.0f, 0.0f, Animation_GetLastFrame(&D_0600057C),
                             ANIMMODE_ONCE, -4.0f);
        }
    }
}

void func_80A1DB60(EnFu* this, GlobalContext* globalCtx) {
    if (globalCtx->csCtx.state == 0) {
        this->actionFunc = EnFu_WaitAdult;
        gSaveContext.eventChkInf[5] |= 0x800;
        globalCtx->msgCtx.unk_E3EE = 4;
    }
}

void func_80A1DBA0(EnFu* this, GlobalContext* globalCtx) {
    // if dialog state is 2 set action to WaitAdult
    if (func_8002F334(this, globalCtx)) {
        this->actionFunc = EnFu_WaitAdult;
    }
}

void func_80A1DBD4(EnFu* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (globalCtx->msgCtx.unk_E3EE >= 4) {
        this->actionFunc = EnFu_WaitAdult;
        globalCtx->msgCtx.unk_E3EE = 4;
        this->actor.flags &= ~0x10000;
    } else if (globalCtx->msgCtx.unk_E3EE == 3) {
        func_80078884(NA_SE_SY_CORRECT_CHIME);
        this->actionFunc = func_80A1DB60;
        this->actor.flags &= ~0x10000;
        globalCtx->csCtx.segment = SEGMENTED_TO_VIRTUAL(&D_0200E080);
        gSaveContext.cutsceneTrigger = 1;
        Item_Give(globalCtx, ITEM_SONG_STORMS);
        globalCtx->msgCtx.unk_E3EE = 0;
        gSaveContext.eventChkInf[6] |= 0x20;
    } else if (globalCtx->msgCtx.unk_E3EE == 2) {
        player->stateFlags2 &= ~0x1000000;
        this->actionFunc = EnFu_WaitAdult;
    } else if (globalCtx->msgCtx.unk_E3EE == 1) {
        player->stateFlags2 |= 0x800000;
    }
}

void EnFu_WaitForPlayback(EnFu* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    player->stateFlags2 |= 0x800000;
    // if dialog state is 7, player has played back the song
    if (func_8010BDBC(&globalCtx->msgCtx) == 7) {
        func_8010BD58(globalCtx, 0x1A);
        this->actionFunc = func_80A1DBD4;
    }
}

void EnFu_TeachSong(EnFu* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    player->stateFlags2 |= 0x800000;
    // if dialog state is 2, start song demonstration
    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        this->behaviorFlags &= ~FU_WAIT;
        func_800ED858(4);              // seems to be related to setting instrument type
        func_8010BD58(globalCtx, 0xD); // play song demonstration, song 0xD = SoS
        this->actionFunc = EnFu_WaitForPlayback;
    }
}

void EnFu_WaitAdult(EnFu* this, GlobalContext* globalCtx) {
    static s16 yawDiff;
    Player* player = PLAYER;

    yawDiff = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
    if ((gSaveContext.eventChkInf[5] & 0x800)) {
        func_80A1D94C(this, globalCtx, 0x508E, func_80A1DBA0);
    } else if (player->stateFlags2 & 0x1000000) {
        this->actor.textId = 0x5035;
        func_8010B680(globalCtx, this->actor.textId, NULL);
        this->actionFunc = EnFu_TeachSong;
        this->behaviorFlags |= FU_WAIT;
    } else if (func_8002F194(&this->actor, globalCtx) != 0) {
        this->actionFunc = func_80A1DBA0;
    } else if (ABS(yawDiff) < 0x2301) {
        if (this->actor.xzDistToPlayer < 100.0f) {
            this->actor.textId = 0x5034;
            func_8002F2CC(&this->actor, globalCtx, 100.0f);
            player->stateFlags2 |= 0x800000;
        }
    }
}

void EnFu_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnFu* this = THIS;
    s32 pad;

    Collider_UpdateCylinder(&this->actor, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    Actor_MoveForward(&this->actor);
    Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 4);
    if ((!(this->behaviorFlags & FU_WAIT)) && (SkelAnime_Update(&this->skelanime) != 0)) {
        Animation_Change(&this->skelanime, this->skelanime.animation, 1.0f, 0.0f,
                         Animation_GetLastFrame(this->skelanime.animation), ANIMMODE_ONCE, 0.0f);
    }
    this->actionFunc(this, globalCtx);
    if ((this->behaviorFlags & FU_RESET_LOOK_ANGLE)) {
        Math_SmoothStepToS(&this->lookAngleOffset.x, 0, 6, 6200, 100);
        Math_SmoothStepToS(&this->lookAngleOffset.y, 0, 6, 6200, 100);
        Math_SmoothStepToS(&this->unk_2A2.x, 0, 6, 6200, 100);
        Math_SmoothStepToS(&this->unk_2A2.y, 0, 6, 6200, 100);
        this->behaviorFlags &= ~FU_RESET_LOOK_ANGLE;
    } else {
        func_80038290(globalCtx, &this->actor, &this->lookAngleOffset, &this->unk_2A2, this->actor.focus.pos);
    }
}

s32 EnFu_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnFu* this = THIS;
    s32 pad1;

    if (limbIndex == 10) {
        return false;
    }
    switch (limbIndex) {
        case 14:
            rot->x += this->lookAngleOffset.y;
            rot->z += this->lookAngleOffset.x;
            break;
        case 8:
            break;
    }

    if (!(this->behaviorFlags & FU_WAIT)) {
        return false;
    }

    if (limbIndex == 8) {
        rot->y += (Math_SinS((globalCtx->state.frames * (limbIndex * 50 + 0x814))) * 200.0f);
        rot->z += (Math_CosS((globalCtx->state.frames * (limbIndex * 50 + 0x940))) * 200.0f);
    }
    return false;
}

void EnFu_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnFu* this = THIS;

    if (limbIndex == 14) {
        Matrix_MultVec3f(&sMtxSrc, &this->actor.focus.pos);
    }
}

void EnFu_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnFu* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_fu.c", 773);

    func_800943C8(globalCtx->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sEyesSegments[this->facialExpression]));
    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(sMouthSegments[this->facialExpression]));
    SkelAnime_DrawFlexOpa(globalCtx, this->skelanime.skeleton, this->skelanime.jointTable, this->skelanime.dListCount,
                          EnFu_OverrideLimbDraw, EnFu_PostLimbDraw, this);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_fu.c", 791);
}
