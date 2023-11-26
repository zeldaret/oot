/*
 * File: z_demo_go.c
 * Overlay: Demo_Go
 * Description: Gorons (Cutscene)
 */

#include "z_demo_go.h"
#include "assets/objects/object_oF1d_map/object_oF1d_map.h"
#include "terminal.h"

#define FLAGS ACTOR_FLAG_4

void DemoGo_Init(Actor* thisx, PlayState* play);
void DemoGo_Destroy(Actor* thisx, PlayState* play);
void DemoGo_Update(Actor* thisx, PlayState* play);
void DemoGo_Draw(Actor* thisx, PlayState* play);

void func_8097CE10(DemoGo* this, PlayState* play);
void func_8097CFDC(DemoGo* this, PlayState* play);
void func_8097CFFC(DemoGo* this, PlayState* play);
void func_8097D01C(DemoGo* this, PlayState* play);
void func_8097D058(DemoGo* this, PlayState* play);
void func_8097D088(DemoGo* this, PlayState* play);
void func_8097D0D0(DemoGo* this, PlayState* play);
void func_8097D130(DemoGo* this, PlayState* play);
void func_8097D290(DemoGo* this, PlayState* play);
void func_8097D29C(DemoGo* this, PlayState* play);

static void* sEyeTextures[] = { gGoronCsEyeOpenTex, gGoronCsEyeHalfTex, gGoronCsEyeClosedTex };

static DemoGoActionFunc D_8097D44C[] = {
    func_8097CFDC, func_8097CFFC, func_8097D01C, func_8097D058, func_8097D088, func_8097D0D0, func_8097D130,
};

static DemoGoDrawFunc D_8097D468[] = {
    func_8097D290,
    func_8097D29C,
};

ActorInit Demo_Go_InitVars = {
    /**/ ACTOR_DEMO_GO,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_OF1D_MAP,
    /**/ sizeof(DemoGo),
    /**/ DemoGo_Init,
    /**/ DemoGo_Destroy,
    /**/ DemoGo_Update,
    /**/ DemoGo_Draw,
};

s32 DemoGo_GetCueChannel(DemoGo* this) {
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

void func_8097C8A8(DemoGo* this, PlayState* play) {
    Actor* thisx = &this->actor;
    Vec3f sp20;
    f32 sp1C;

    if ((thisx->params == 0) || (thisx->params == 1)) {
        SkinMatrix_Vec3fMtxFMultXYZW(&play->viewProjectionMtxF, &thisx->world.pos, &sp20, &sp1C);
        SfxSource_PlaySfxAtFixedWorldPos(play, &sp20, 20, NA_SE_EV_OBJECT_FALL);
    }
}

void DemoGo_Destroy(Actor* thisx, PlayState* play) {
    DemoGo* this = (DemoGo*)thisx;

    SkelAnime_Free(&this->skelAnime, play);
}

void func_8097C930(DemoGo* this) {
    s16* something = &this->unk_192;
    s16* other = &this->unk_190;
    s32 pad[3];

    if (DECR(*something) == 0) {
        *something = Rand_S16Offset(60, 60);
    }
    *other = *something;
    if (*other >= 3) {
        *other = 0;
    }
}

void func_8097C9B8(DemoGo* this) {
    Sfx_PlaySfxAtPos(&this->actor.projectedPos, NA_SE_EN_DODO_M_GND);
}

void func_8097C9DC(DemoGo* this) {
    s32 pad[2];

    if (Animation_OnFrame(&this->skelAnime, 12.0f) || Animation_OnFrame(&this->skelAnime, 25.0f)) {
        Sfx_PlaySfxAtPos(&this->actor.projectedPos, NA_SE_EN_MORIBLIN_WALK);
    }
}

void func_8097CA30(DemoGo* this, PlayState* play) {
    Actor_UpdateBgCheckInfo(play, &this->actor, 75.0f, 30.0f, 30.0f, UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2);
}

void func_8097CA78(DemoGo* this, PlayState* play) {
    s16 pad;
    Vec3f vec = this->actor.world.pos;
    func_80033480(play, &vec, kREG(11) + 100.0f, kREG(12) + 0xA, kREG(13) + 0x12C, kREG(14), 0);
    func_8097C9B8(this);
}

void func_8097CB0C(DemoGo* this, PlayState* play) {
    Actor* thisx = &this->actor;
    PosRot* world = &thisx->world;
    CutsceneContext* csCtx = &play->csCtx;
    CsCmdActorCue* cue;
    f32 lerp;
    s32 pad;
    Vec3f startPos;
    Vec3f endPos;

    if (play->csCtx.state != CS_STATE_IDLE) {
        cue = csCtx->actorCues[DemoGo_GetCueChannel(this)];

        if (cue != NULL) {
            lerp = Environment_LerpWeight(cue->endFrame, cue->startFrame, csCtx->curFrame);

            startPos.x = cue->startPos.x;
            startPos.y = cue->startPos.y;
            startPos.z = cue->startPos.z;

            endPos.x = cue->endPos.x;
            endPos.y = cue->endPos.y;
            endPos.z = cue->endPos.z;

            world->pos.x = (endPos.x - startPos.x) * lerp + startPos.x;
            world->pos.y = (endPos.y - startPos.y) * lerp + startPos.y;
            world->pos.z = (endPos.z - startPos.z) * lerp + startPos.z;

            world->rot.y = thisx->shape.rot.y = cue->rot.y;
        }
    }
}

void func_8097CC08(DemoGo* this) {
    f32 something = this->unk_19C;

    if (something < 8.0f) {
        this->actor.speed = (((kREG(15) * 0.01f) + 1.2f) / 8.0f) * something;
    } else {
        this->actor.speed = (kREG(15) * 0.01f) + 1.2f;
    }
    Actor_MoveXZGravity(&this->actor);
}

void func_8097CCC0(DemoGo* this) {
    Actor_MoveXZGravity(&this->actor);
}

void func_8097CCE0(DemoGo* this, PlayState* play) {
    CsCmdActorCue* cue;
    Actor* thisx = &this->actor;
    s32 rotYDelta;
    s32 newRotY;
    s32 thisRotY;

    if (play->csCtx.state != CS_STATE_IDLE) {
        cue = play->csCtx.actorCues[DemoGo_GetCueChannel(this)];

        if (cue != NULL) {
            thisRotY = thisx->world.rot.y;
            rotYDelta = (s16)cue->rot.y - thisRotY;

            if ((rotYDelta > -(kREG(16) + 0x96)) && (rotYDelta < kREG(16) + 0x96)) {
                newRotY = (s16)cue->rot.y;
            } else if (rotYDelta > 0) {
                newRotY = (thisRotY + kREG(16)) + 0x96;
            } else {
                newRotY = (thisRotY - kREG(16)) - 0x96;
            }

            thisx->shape.rot.y = newRotY;
            thisx->world.rot.y = newRotY;
        }
    }
}

s32 DemoGo_UpdateSkelAnime(DemoGo* this) {
    return SkelAnime_Update(&this->skelAnime);
}

s32 func_8097CDB0(DemoGo* this, PlayState* play, u16 cueId) {
    CutsceneContext* csCtx = &play->csCtx;
    s32 cueChannel = DemoGo_GetCueChannel(this);

    if ((csCtx->state != CS_STATE_IDLE) && (csCtx->actorCues[cueChannel] != NULL) &&
        (csCtx->actorCues[cueChannel]->id == cueId)) {
        return true;
    }

    return false;
}

void func_8097CE10(DemoGo* this, PlayState* play) {
    this->action = 1;
}

void func_8097CE20(DemoGo* this, PlayState* play) {
    if (func_8097CDB0(this, play, 2)) {
        this->action = 2;
        this->drawConfig = 1;
        func_8097CB0C(this, play);
        func_8097C8A8(this, play);
    }
}

void func_8097CE78(DemoGo* this, PlayState* play) {
    CutsceneContext* csCtx = &play->csCtx;
    CsCmdActorCue* cue;

    if (play->csCtx.state != CS_STATE_IDLE) {
        cue = csCtx->actorCues[DemoGo_GetCueChannel(this)];

        if (cue != NULL && csCtx->curFrame >= cue->endFrame) {
            func_8097CA78(this, play);
            this->action = 3;
        }
    }
}

void func_8097CEEC(DemoGo* this, PlayState* play) {
    if (func_8097CDB0(this, play, 3)) {
        this->action = 4;
    }
}

void func_8097CF20(DemoGo* this, PlayState* play, s32 arg2) {
    AnimationHeader* animation = &gGoronAnim_0029A8;
    if (arg2 != 0) {
        Animation_Change(&this->skelAnime, animation, 1.0f, 0.0f, Animation_GetLastFrame(animation), ANIMMODE_LOOP,
                         -8.0f);
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

void func_8097CFDC(DemoGo* this, PlayState* play) {
    func_8097CE10(this, play);
}

void func_8097CFFC(DemoGo* this, PlayState* play) {
    func_8097CE20(this, play);
}

void func_8097D01C(DemoGo* this, PlayState* play) {
    func_8097CB0C(this, play);
    func_8097CA30(this, play);
    func_8097CE78(this, play);
}

void func_8097D058(DemoGo* this, PlayState* play) {
    func_8097CA30(this, play);
    func_8097CEEC(this, play);
}

void func_8097D088(DemoGo* this, PlayState* play) {
    s32 something;

    func_8097CA30(this, play);
    something = DemoGo_UpdateSkelAnime(this);
    func_8097C930(this);
    func_8097CF20(this, play, something);
}

void func_8097D0D0(DemoGo* this, PlayState* play) {
    func_8097CCE0(this, play);
    func_8097CCC0(this);
    func_8097CA30(this, play);
    DemoGo_UpdateSkelAnime(this);
    func_8097C930(this);
    func_8097C9DC(this);
    func_8097CF9C(this);
}
void func_8097D130(DemoGo* this, PlayState* play) {
    func_8097CCE0(this, play);
    func_8097CC08(this);
    func_8097CA30(this, play);
    DemoGo_UpdateSkelAnime(this);
    func_8097C930(this);
    func_8097C9DC(this);
}

void DemoGo_Update(Actor* thisx, PlayState* play) {
    DemoGo* this = (DemoGo*)thisx;

    if (this->action < 0 || this->action >= 7 || D_8097D44C[this->action] == NULL) {
        osSyncPrintf(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    D_8097D44C[this->action](this, play);
}

void DemoGo_Init(Actor* thisx, PlayState* play) {
    DemoGo* this = (DemoGo*)thisx;
    AnimationHeader* animation = &gGoronAnim_004930;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
    SkelAnime_InitFlex(play, &this->skelAnime, &gGoronSkel, NULL, NULL, NULL, 0);
    Animation_Change(&this->skelAnime, animation, 1.0f, 0.0f, Animation_GetLastFrame(animation), ANIMMODE_ONCE, 0.0f);
    this->action = 0;
}

void func_8097D290(DemoGo* this, PlayState* play) {
}

void func_8097D29C(DemoGo* this, PlayState* play) {
    s32 pad;
    s16 eyeTexIdx = this->unk_190;
    SkelAnime* skelAnime = &this->skelAnime;
    void* eyeTexture = sEyeTextures[eyeTexIdx];
    void* mouthTexture = gGoronCsMouthSmileTex;

    OPEN_DISPS(play->state.gfxCtx, "../z_demo_go.c", 732);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(eyeTexture));
    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(mouthTexture));

    SkelAnime_DrawFlexOpa(play, skelAnime->skeleton, skelAnime->jointTable, skelAnime->dListCount, NULL, NULL, this);

    CLOSE_DISPS(play->state.gfxCtx, "../z_demo_go.c", 746);
}

void DemoGo_Draw(Actor* thisx, PlayState* play) {
    DemoGo* this = (DemoGo*)thisx;

    if (this->drawConfig < 0 || this->drawConfig >= 2 || D_8097D468[this->drawConfig] == NULL) {
        osSyncPrintf(VT_FGCOL(RED) "描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    D_8097D468[this->drawConfig](this, play);
}
