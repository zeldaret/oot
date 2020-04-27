/*
 * File: z_demo_go.c
 * Overlay: Demo_Go
 * Description: Gorons (Cutscene)
 */

#include "z_demo_go.h"

#include <vt.h>

#define FLAGS 0x00000010

void DemoGo_Init(DemoGo* this, GlobalContext* globalCtx);
void DemoGo_Destroy(DemoGo* this, GlobalContext* globalCtx);
void DemoGo_Update(DemoGo* this, GlobalContext* globalCtx);
void DemoGo_Draw(DemoGo* this, GlobalContext* globalCtx);

void func_8097CE10(DemoGo* this, GlobalContext* globalCtx);
void func_8097CFDC(DemoGo* this, GlobalContext* globalCtx);
void func_8097CFFC(DemoGo* this, GlobalContext* globalCtx);
void func_8097D01C(DemoGo* this, GlobalContext* globalCtx);
void func_8097D058(DemoGo* this, GlobalContext* globalCtx);
void func_8097D088(DemoGo* this, GlobalContext* globalCtx);
void func_8097D0D0(DemoGo* this, GlobalContext* globalCtx);
void func_8097D130(DemoGo* this, GlobalContext* globalCtx);
void func_8097D290(DemoGo* this, GlobalContext* globalCtx);
void func_8097D29C(DemoGo* this, GlobalContext* globalCtx);

UNK_PTR D_8097D440[] = { 0x0600CE80, 0x0600D280, 0x0600D680 };

ActorFunc D_8097D44C[] = {
    func_8097CFDC, func_8097CFFC, func_8097D01C, func_8097D058, func_8097D088, func_8097D0D0, func_8097D130,
};

ActorFunc D_8097D468[] = {
    func_8097D290,
    func_8097D29C,
};

const ActorInit Demo_Go_InitVars = {
    ACTOR_DEMO_GO,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_OF1D_MAP,
    sizeof(DemoGo),
    (ActorFunc)DemoGo_Init,
    (ActorFunc)DemoGo_Destroy,
    (ActorFunc)DemoGo_Update,
    (ActorFunc)DemoGo_Draw,
};

extern AnimationHeader D_060029A8;
extern AnimationHeader D_06004930;
extern UNK_TYPE D_0600E680;
extern SkeletonHeader D_0600FEF0;

UNK_TYPE func_8097C870(DemoGo* this) {
    s32 ret;
    switch (this->actor.params) {
        case 0:
            ret = 3;
            break;
        case 1:
            ret = 4;
            break;
        default:
            if (1) {
                ret = 5;
            }
            break;
    }
    return ret;
}

void func_8097C8A8(DemoGo* this, GlobalContext* globalCtx) {
    s32 pad[2];
    Actor* thisx = &this->actor;
    Vec3f* sp20;
    Vec3f* sp1C;

    if ((thisx->params == 0) || (thisx->params == 1)) {
        func_800A6E10(&globalCtx->mf_11D60, &thisx->posRot.pos, &sp20, &sp1C);
        Audio_PlaySoundAtPosition(globalCtx, &sp20, 0x14, 0x28A0);
    }
}

void DemoGo_Destroy(DemoGo* this, GlobalContext* globalCtx) {
    SkelAnime_Free(&this->skelAnime, globalCtx);
}

void func_8097C930(DemoGo* this) {
    s16* something = &this->unk_192;
    s16* other = &this->unk_190;
    s32 pad[3];

    if (DECR(*something) == 0) {
        *something = Math_Rand_S16Offset(0x3C, 0x3C);
    }
    *other = *something;
    if (*other >= 3) {
        *other = 0;
    }
}

void func_8097C9B8(DemoGo* this) {
    func_80078914(&this->actor.unk_E4, NA_SE_EN_DODO_M_GND);
}

void func_8097C9DC(DemoGo* this) {
    s32 pad[2];
    if (func_800A56C8(&this->skelAnime, 12.0f) || func_800A56C8(&this->skelAnime, 25.0f)) {
        func_80078914(&this->actor.unk_E4, NA_SE_EN_MORIBLIN_WALK);
    }
}

void func_8097CA30(DemoGo* this, GlobalContext* globalCtx) {
    func_8002E4B4(globalCtx, &this->actor, 75.0f, 30.0f, 30.0f, 5);
}

void func_8097CA78(DemoGo* this, GlobalContext* globalCtx) {
    s16 pad;
    Vec3f vec = this->actor.posRot.pos;
    func_80033480(globalCtx, &vec, kREG(11) + 100.0f, kREG(12) + 0xA, kREG(13) + 0x12C, kREG(14), 0);
    func_8097C9B8(this);
}

void func_8097CB0C(DemoGo* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->actor;
    PosRot* posRot = &thisx->posRot;
    CutsceneContext* csCtx = &globalCtx->csCtx;
    CsCmdActorAction* actorAction;
    f32 temp_ret;
    s32 pad;
    Vec3f startPos;
    Vec3f endPos;

    if (globalCtx->csCtx.state != 0) {
        actorAction = csCtx->actorActions[func_8097C870(this)];
        if (actorAction != NULL) {
            temp_ret = func_8006F93C(actorAction->endFrame, actorAction->startFrame, csCtx->frames);
            startPos.x = actorAction->startPos.x;
            startPos.y = actorAction->startPos.y;
            startPos.z = actorAction->startPos.z;
            endPos.x = actorAction->endPos.x;
            endPos.y = actorAction->endPos.y;
            endPos.z = actorAction->endPos.z;
            posRot->pos.x = (((endPos.x - startPos.x) * temp_ret) + startPos.x);
            posRot->pos.y = (((endPos.y - startPos.y) * temp_ret) + startPos.y);
            posRot->pos.z = (((endPos.z - startPos.z) * temp_ret) + startPos.z);
            posRot->rot.y = thisx->shape.rot.y = actorAction->rot.y;
        }
    }
}

void func_8097CC08(DemoGo* this) {
    f32 something = this->unk_19C;
    if (something < 8.0f) {
        this->actor.speedXZ = (((kREG(15) * 0.01f) + 1.2f) * 0.125f) * something;
    } else {
        this->actor.speedXZ = (kREG(15) * 0.01f) + 1.2f;
    }
    Actor_MoveForward(&this->actor);
}

void func_8097CCC0(DemoGo* this) {
    Actor_MoveForward(&this->actor);
}

void func_8097CCE0(DemoGo* this, GlobalContext* globalCtx) {
    CsCmdActorAction* actorAction;
    Actor* thisx = &this->actor;
    s32 rotYDelta;
    s32 newRotY;
    s32 thisRotY;

    if (globalCtx->csCtx.state != 0) {
        actorAction = globalCtx->csCtx.actorActions[func_8097C870(this)];
        if (actorAction != NULL) {
            thisRotY = thisx->posRot.rot.y;
            rotYDelta = actorAction->rot.y - thisRotY;
            if ((rotYDelta > -(kREG(16) + 0x96)) && (rotYDelta < kREG(16) + 0x96)) {
                newRotY = actorAction->rot.y;
            } else if (rotYDelta > 0) {
                newRotY = (thisRotY + kREG(16)) + 0x96;
            } else {
                newRotY = (thisRotY - kREG(16)) - 0x96;
            }
            thisx->shape.rot.y = newRotY;
            thisx->posRot.rot.y = newRotY;
        }
    }
}

UNK_TYPE DemoGo_FrameUpdateMatrix(DemoGo* this) {
    return SkelAnime_FrameUpdateMatrix(&this->skelAnime);
}

#ifdef NON_MATCHING
// return value isn't produced in the same way
s32 func_8097CDB0(DemoGo* this, GlobalContext* globalCtx, u16 csCmdActorAction) {
    CutsceneContext* csCtx = &globalCtx->csCtx;
    CsCmdActorAction* actorAction = csCtx->actorActions[func_8097C870(this)];
    if (csCtx->state != 0) {
        if (actorAction != NULL && actorAction->action == csCmdActorAction) {
            return 1;
        }
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Go/func_8097CDB0.s")
#endif

void func_8097CE10(DemoGo* this, GlobalContext* globalCtx) {
    this->action = 1;
}

void func_8097CE20(DemoGo* this, GlobalContext* globalCtx) {
    if (func_8097CDB0(this, globalCtx, 2)) {
        this->action = 2;
        this->drawConfig = 1;
        func_8097CB0C(this, globalCtx);
        func_8097C8A8(this, globalCtx);
    }
}

void func_8097CE78(DemoGo* this, GlobalContext* globalCtx) {
    CutsceneContext* csCtx = &globalCtx->csCtx;
    CsCmdActorAction* actorAction;

    if (globalCtx->csCtx.state != 0) {
        actorAction = csCtx->actorActions[func_8097C870(this)];
        if (actorAction != NULL && csCtx->frames >= actorAction->endFrame) {
            func_8097CA78(this, globalCtx);
            this->action = 3;
        }
    }
}

void func_8097CEEC(DemoGo* this, GlobalContext* globalCtx) {
    if (func_8097CDB0(this, globalCtx, 3)) {
        this->action = 4;
    }
}

void func_8097CF20(DemoGo* this, GlobalContext* globalCtx, UNK_TYPE arg2) {
    AnimationHeader* animation = &D_060029A8;
    if (arg2 != 0) {
        SkelAnime_ChangeAnim(&this->skelAnime, animation, 1.0f, 0.0f,
                             SkelAnime_GetFrameCount(&animation->genericHeader), 0, -8.0f);
        this->action = 5;
        this->unk_19C = 0.0f;
    }
}

void func_8097CF9C(DemoGo* this) {
    this->unk_19C += 1.0f;
    if (this->unk_19C >= 8.0f) {
        this->action = 6;
    }
}

void func_8097CFDC(DemoGo* this, GlobalContext* globalCtx) {
    func_8097CE10(this, globalCtx);
}

void func_8097CFFC(DemoGo* this, GlobalContext* globalCtx) {
    func_8097CE20(this, globalCtx);
}

void func_8097D01C(DemoGo* this, GlobalContext* globalCtx) {
    func_8097CB0C(this, globalCtx);
    func_8097CA30(this, globalCtx);
    func_8097CE78(this, globalCtx);
}

void func_8097D058(DemoGo* this, GlobalContext* globalCtx) {
    func_8097CA30(this, globalCtx);
    func_8097CEEC(this, globalCtx);
}

void func_8097D088(DemoGo* this, GlobalContext* globalCtx) {
    UNK_TYPE something;
    func_8097CA30(this, globalCtx);
    something = DemoGo_FrameUpdateMatrix(this);
    func_8097C930(this);
    func_8097CF20(this, globalCtx, something);
}

void func_8097D0D0(DemoGo* this, GlobalContext* globalCtx) {
    func_8097CCE0(this, globalCtx);
    func_8097CCC0(this);
    func_8097CA30(this, globalCtx);
    DemoGo_FrameUpdateMatrix(this);
    func_8097C930(this);
    func_8097C9DC(this);
    func_8097CF9C(this);
}
void func_8097D130(DemoGo* this, GlobalContext* globalCtx) {
    func_8097CCE0(this, globalCtx);
    func_8097CC08(this);
    func_8097CA30(this, globalCtx);
    DemoGo_FrameUpdateMatrix(this);
    func_8097C930(this);
    func_8097C9DC(this);
}

void DemoGo_Update(DemoGo* this, GlobalContext* globalCtx) {
    if (this->action < 0 || this->action >= 7 || D_8097D44C[this->action] == 0) {
        osSyncPrintf(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    D_8097D44C[this->action](this, globalCtx);
}

void DemoGo_Init(DemoGo* this, GlobalContext* globalCtx) {
    s16 pad;
    AnimationHeader* animation = &D_06004930;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_0600FEF0, NULL, NULL, NULL, 0);
    SkelAnime_ChangeAnim(&this->skelAnime, animation, 1.0f, 0.0f, SkelAnime_GetFrameCount(&animation->genericHeader), 2,
                         0.0f);
    this->action = 0;
}

void func_8097D290(DemoGo* this, GlobalContext* globalCtx) {
}

void func_8097D29C(DemoGo* this, GlobalContext* globalCtx) {
    s32 pad;
    s16 temp = this->unk_190;
    SkelAnime* skelAnime = &this->skelAnime;
    void* srcSegment8 = D_8097D440[temp];
    void* srcSegment9 = &D_0600E680;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_demo_go.c", 732);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(srcSegment8));
    gSPSegment(gfxCtx->polyOpa.p++, 0x09, SEGMENTED_TO_VIRTUAL(srcSegment9));

    SkelAnime_DrawSV(globalCtx, skelAnime->skeleton, skelAnime->limbDrawTbl, skelAnime->dListCount, NULL, NULL,
                     &this->actor);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_demo_go.c", 746);
}

void DemoGo_Draw(DemoGo* this, GlobalContext* globalCtx) {
    if (this->drawConfig < 0 || this->drawConfig >= 2 || D_8097D468[this->drawConfig] == 0) {
        osSyncPrintf(VT_FGCOL(RED) "描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    D_8097D468[this->drawConfig](this, globalCtx);
}
