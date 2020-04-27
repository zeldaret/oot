/*
 * File: z_en_fu.c
 * Overlay: ovl_En_Fu
 * Description: Windmill Man
 */

#include "z_en_fu.h"

#define THIS ((EnFu*)thisx)

#define FLAGS 0x02000019

void EnFu_Init(Actor* thisx, GlobalContext* globalCtx);
void EnFu_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnFu_Update(Actor* thisx, GlobalContext* globalCtx);
void EnFu_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A1DA9C(EnFu* this, GlobalContext* globalCtx);
void func_80A1DA04(EnFu* this, GlobalContext* globalCtx);

void func_80A1DE24(EnFu* this, GlobalContext* globalCtx);
void func_80A1DDA8(EnFu* this, GlobalContext* globalCtx);
void func_80A1DD44(EnFu* this, GlobalContext* globalCtx);
void func_80A1DBA0(EnFu* this, GlobalContext* globalCtx);
void func_80A1DD44(EnFu* this, GlobalContext* globalCtx);
void func_80A1DBD4(EnFu* this, GlobalContext* globalCtx);
void func_80A1DB60(EnFu* this, GlobalContext* globalCtx);

/*
const ActorInit En_Fu_InitVars = {
    ACTOR_EN_FU,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_FU,
    sizeof(EnFu),
    (ActorFunc)EnFu_Init,
    (ActorFunc)EnFu_Destroy,
    (ActorFunc)EnFu_Update,
    (ActorFunc)EnFu_Draw,
};
*/

static ColliderCylinderInit cylinderInit = {
    0x0A, 0x00,       0x11, 0x39, 0x10,   0x01,   0x00,       0x00,   0x00,   0x00,   0x00,
    0x00, 0x00000000, 0x00, 0x00, 0x00,   0x00,   0xFFCFFFFF, 0x00,   0x00,   0x00,   0x00,
    0x00, 0x01,       0x01, 0x00, 0x001E, 0x0028, 0x0000,     0x0000, 0x0000, 0x0000,
};

Vec3f mtxSrc = {
    700.0f,
    700.0f,
};

UNK_PTR eyes[] = {
    0x06005F20, 
    0x06006320,
};

UNK_PTR mouth[] = {
    0x06006720, 
    0x06006920,
};

extern AnimationHeader D_0600057C;
extern AnimationHeader D_06000B04;
extern SkeletonHeader D_06006C90;
extern UNK_TYPE D_0201E080;

typedef enum {
    /* 0x00 */ FU_CALM,
    /* 0x01 */ FU_MAD,
} EnFuFace;

void EnFu_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnFu* this = THIS;
    s32 pad;

    ActorShape_Init(&this->actor.shape, 0.0f, &ActorShadow_DrawFunc_Circle, 36.0f);
    SkelAnime_InitSV(globalCtx, &this->skelanime, &D_06006C90, &D_06000B04, this->limbDrawTable,
                     this->transitionDrawTable, 16);
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelanime, &D_06000B04);
    ActorCollider_AllocCylinder(globalCtx, &this->collider);
    ActorCollider_InitCylinder(globalCtx, &this->collider, this, &cylinderInit);
    this->actor.sub_98.mass = 0xFF;
    Actor_SetScale(this, 0.01f);
    if (LINK_IS_CHILD) {
        this->actionFunc = func_80A1DA9C;
        this->facialExpression = FU_CALM;
    } else {
        this->actionFunc = func_80A1DE24;
        this->facialExpression = FU_MAD;
        this->skelanime.animPlaybackSpeed = 2.0f;
    }
    this->unk_2A8 = 0;
    this->actor.unk_1F = 6;
}

void EnFu_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnFu* this = THIS;
    ActorCollider_FreeCylinder(globalCtx, &this->collider);
}

s32 func_80A1D94C(EnFu* this, GlobalContext* globalCtx, u16 textID, ActorFunc actionFunc) {
    s16 yawDiff;

    // func_8002F194 returns 1 if actor flags & 0x100 is set and unsets it
    if (func_8002F194(&this->actor, globalCtx)) { 
        this->actionFunc = actionFunc;
        return 1;
    }
    this->actor.textId = textID;
    yawDiff = this->actor.rotTowardsLinkY - this->actor.shape.rot.y;

    if ((ABS(yawDiff) < 0x2301) && (this->actor.xzDistanceFromLink < 100.0f)) {
        func_8002F2CC(&this->actor, globalCtx, 100.0f);
    } else {
        this->unk_2A8 |= 1;
    }
    return 0;
}

void func_80A1DA04(EnFu* this, GlobalContext* globalCtx) {
    if (func_8002F334(&this->actor, globalCtx) != 0) {
        this->unk_2A8 &= ~0x0002;
        this->actionFunc = func_80A1DA9C;

        if (this->skelanime.animCurrentSeg == &D_0600057C) {
            SkelAnime_ChangeAnim(&this->skelanime, &D_06000B04, 1.0f, 0.0f, 
                                 SkelAnime_GetFrameCount(&D_06000B04), 2, -4.0f);
        }
    }
}

void func_80A1DA9C(EnFu* this, GlobalContext* globalCtx) {
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
            SkelAnime_ChangeAnim(&this->skelanime, &D_0600057C, 1.0f, 0.0f, 
                                 SkelAnime_GetFrameCount(&D_0600057C), 2, -4.0f);
        }
    }
}

void func_80A1DB60(EnFu* this, GlobalContext* globalCtx) {
    if (globalCtx->csCtx.state == 0) {
        this->actionFunc = func_80A1DE24;
        gSaveContext.eventChkInf[5] |= 0x800;
        globalCtx->msgCtx.unk_E3EE = 4;
    }  
}

void func_80A1DBA0(EnFu *this, GlobalContext *globalCtx) {
    if (func_8002F334(this, globalCtx)) { // if dialog state is 2
        this->actionFunc = func_80A1DE24;
    }
}

void func_80A1DBD4(EnFu* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (globalCtx->msgCtx.unk_E3EE >= 4) {
        this->actionFunc = func_80A1DE24;
        globalCtx->msgCtx.unk_E3EE = 4;
        this->actor.flags &= ~0x10000;
    } else if (globalCtx->msgCtx.unk_E3EE == 3) {
        func_80078884(NA_SE_SY_CORRECT_CHIME);
        this->actionFunc = func_80A1DB60;
        this->actor.flags &= ~0x10000;
        globalCtx->csCtx.segment = SEGMENTED_TO_VIRTUAL(&D_0201E080);
        gSaveContext.cutsceneTrigger = 1;
        Item_Give(globalCtx, ITEM_SONG_STORMS);
        globalCtx->msgCtx.unk_E3EE = 0;
        gSaveContext.eventChkInf[6] |= 0x20;
    } else if (globalCtx->msgCtx.unk_E3EE == 2) {
        player->stateFlags2 &= ~0x1000000;
        this->actionFunc = func_80A1DE24;
    } else if (globalCtx->msgCtx.unk_E3EE == 1) {
        player->stateFlags2 |= 0x800000;
    }
}

void func_80A1DD44(EnFu *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;
    player->stateFlags2 |= 0x800000;
    // if dialog state is 7
    if (func_8010BDBC(&globalCtx->msgCtx) == 7) {
        func_8010BD58(globalCtx, 0x1A);
        this->actionFunc = func_80A1DBD4;
    }
}

void func_80A1DDA8(EnFu *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;
    player->stateFlags2 |= 0x800000;
    // if dialog state is 2, start song demonstration
    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        this->unk_2A8 &= ~0x0002;
        func_800ED858(4); // seems to be related to setting instrument type
        func_8010BD58(globalCtx, 0xD); // play song demonstration, song 0xD = SoS
        this->actionFunc = func_80A1DD44;
    }
}

// EnFu_WaitAdult
void func_80A1DE24(EnFu* this, GlobalContext* globalCtx) {
    static s16 yawDiff;
    Player* player = PLAYER;

    yawDiff = this->actor.rotTowardsLinkY - this->actor.shape.rot.y;
    if ((gSaveContext.eventChkInf[5] & 0x800) != 0) {
        func_80A1D94C(this, globalCtx, 0x508E, func_80A1DBA0);
    } else if (player->stateFlags2 & 0x1000000) {
        this->actor.textId = 0x5035;
        func_8010B680(globalCtx, this->actor.textId, 0);
        this->actionFunc = func_80A1DDA8;
        this->unk_2A8 |= 2;
    } else if (func_8002F194(&this->actor, globalCtx) != 0) {
        this->actionFunc = func_80A1DBA0;
    } else if (ABS(yawDiff) < 0x2301) {
        if (this->actor.xzDistanceFromLink < 100.0f) {
            this->actor.textId = 0x5034; // ...I'll never forget what happened on that day, seven years ago!..."
            func_8002F2CC(&this->actor, globalCtx, 100.0f);
            player->stateFlags2 |= 0x800000;
        }
    }
}

void EnFu_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnFu* this = THIS;
    s32 pad;

    ActorCollider_Cylinder_Update(&this->actor, &this->collider);
    Actor_CollisionCheck_SetOT(globalCtx, &globalCtx->sub_11E60, &this->collider);
    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 4);
    if (((this->unk_2A8 & 2) == 0) && (SkelAnime_FrameUpdateMatrix(&this->skelanime) != 0)) {
        SkelAnime_ChangeAnim(&this->skelanime, this->skelanime.animCurrentSeg, 1.0f, 0.0f, 
                             SkelAnime_GetFrameCount(this->skelanime.animCurrentSeg), 2, 0.0f);
    }
    this->actionFunc(this, globalCtx);
    if ((this->unk_2A8 & 1) != 0) {
        Math_SmoothScaleMaxMinS(&this->unk_29C.x, 0, 6, 6200, 100);
        Math_SmoothScaleMaxMinS(&this->unk_29C.y, 0, 6, 6200, 100);
        Math_SmoothScaleMaxMinS(&this->unk_2A2.x, 0, 6, 6200, 100);
        Math_SmoothScaleMaxMinS(&this->unk_2A2.y, 0, 6, 6200, 100);
        this->unk_2A8 &= ~0x0001;
    } else {
        func_80038290(globalCtx, &this->actor, &this->unk_29C, &this->unk_2A2, this->actor.posRot2.pos);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fu/func_80A1E110.s")
s32 func_80A1E110(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f *pos, Vec3s* rot, EnFu* this) {
    s32 temp_v1;
    s32 pad;
    if (limbIndex == 10) {
        return 0;
    }
    switch (limbIndex) {
        case 14:
            rot->x += this->unk_29C.y;
            rot->z += this->unk_29C.x;
            break;
        case 8:
            if (this->unk_2A8 & 2) {
                rot->y += (Math_Sins((globalCtx->state.frames * (limbIndex * 50 + 0x814))) * 200.0f);
                rot->z += (Math_Coss((globalCtx->state.frames * (limbIndex * 50 + 0x940))) * 200.0f);
            }
            break;
    }
    return 0;
}

void func_80A1E26C(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, EnFu* this) {
    if (limbIndex == 14) {
        Matrix_MultVec3f(&mtxSrc, &this->actor.posRot2);
    }
}

void EnFu_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnFu* this = THIS;
    GraphicsContext *gfxCtx;
    Gfx* dispRefs[4];

    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_fu.c", 773);
    func_800943C8(globalCtx->state.gfxCtx);
    gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(eyes[this->facialExpression]));
    gSPSegment(gfxCtx->polyOpa.p++, 0x09, SEGMENTED_TO_VIRTUAL(mouth[this->facialExpression]));
    SkelAnime_DrawSV(globalCtx, this->skelanime.skeleton, this->skelanime.limbDrawTbl, 
                     this->skelanime.dListCount, func_80A1E110, func_80A1E26C, &this->actor);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_fu.c", 791);
}
