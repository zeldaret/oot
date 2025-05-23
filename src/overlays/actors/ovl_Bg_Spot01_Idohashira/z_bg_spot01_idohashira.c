/*
 * File: z_bg_spot01_idohashira.c
 * Overlay: Bg_Spot01_Idohashira
 * Description: Wooden beam above well in Kakariko Village
 */

#include "z_bg_spot01_idohashira.h"
#include "assets/objects/object_spot01_objects/object_spot01_objects.h"
#include "terminal.h"

#define FLAGS ACTOR_FLAG_UPDATE_CULLING_DISABLED

void BgSpot01Idohashira_Init(Actor* thisx, PlayState* play);
void BgSpot01Idohashira_Destroy(Actor* thisx, PlayState* play);
void BgSpot01Idohashira_Update(Actor* thisx, PlayState* play);
void BgSpot01Idohashira_Draw(Actor* thisx, PlayState* play);

void func_808AB504(BgSpot01Idohashira* this, PlayState* play);
void func_808AB510(BgSpot01Idohashira* this, PlayState* play);
void func_808AB530(BgSpot01Idohashira* this, PlayState* play);
void func_808AB570(BgSpot01Idohashira* this, PlayState* play);
void func_808AB700(BgSpot01Idohashira* this, PlayState* play);

static BgSpot01IdohashiraActionFunc sActionFuncs[] = {
    func_808AB504,
    func_808AB510,
    func_808AB530,
    func_808AB570,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

static BgSpot01IdohashiraDrawFunc sDrawFuncs[] = {
    func_808AB700,
};

ActorProfile Bg_Spot01_Idohashira_Profile = {
    /**/ ACTOR_BG_SPOT01_IDOHASHIRA,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_SPOT01_OBJECTS,
    /**/ sizeof(BgSpot01Idohashira),
    /**/ BgSpot01Idohashira_Init,
    /**/ BgSpot01Idohashira_Destroy,
    /**/ BgSpot01Idohashira_Update,
    /**/ BgSpot01Idohashira_Draw,
};

void BgSpot01Idohashira_PlayBreakSfx1(BgSpot01Idohashira* this) {
    Sfx_PlaySfxAtPos(&this->dyna.actor.projectedPos, NA_SE_EV_BOX_BREAK);
}

void BgSpot01Idohashira_PlayBreakSfx2(BgSpot01Idohashira* this, PlayState* play) {
    SfxSource_PlaySfxAtFixedWorldPos(play, &this->dyna.actor.world.pos, 60, NA_SE_EV_WOODBOX_BREAK);
}

void func_808AAD3C(PlayState* play, Vec3f* vec, u32 arg2) {
    EffectSparkInit effect;
    s32 sp24;

    effect.position.x = vec->x;
    effect.position.y = vec->y;
    effect.position.z = vec->z;
    effect.speed = 8.0f;
    effect.gravity = -1.0f;
    effect.uDiv = arg2;
    effect.vDiv = arg2;
    effect.colorStart[0].r = 0;
    effect.colorStart[0].g = 0;
    effect.colorStart[0].b = 0;
    effect.colorStart[0].a = 255;
    effect.colorStart[1].r = 0;
    effect.colorStart[1].g = 0;
    effect.colorStart[1].b = 0;
    effect.colorStart[1].a = 255;
    effect.colorStart[2].r = 0;
    effect.colorStart[2].g = 0;
    effect.colorStart[2].b = 0;
    effect.colorStart[2].a = 255;
    effect.colorStart[3].r = 0;
    effect.colorStart[3].g = 0;
    effect.colorStart[3].b = 0;
    effect.colorStart[3].a = 255;
    effect.colorEnd[0].r = 0;
    effect.colorEnd[0].g = 0;
    effect.colorEnd[0].b = 0;
    effect.colorEnd[0].a = 0;
    effect.colorEnd[1].r = 0;
    effect.colorEnd[1].g = 0;
    effect.colorEnd[1].b = 0;
    effect.colorEnd[1].a = 0;
    effect.colorEnd[2].r = 0;
    effect.colorEnd[2].g = 0;
    effect.colorEnd[2].b = 0;
    effect.colorEnd[2].a = 0;
    effect.colorEnd[3].r = 0;
    effect.colorEnd[3].g = 0;
    effect.colorEnd[3].b = 0;
    effect.colorEnd[3].a = 0;
    effect.timer = 0;
    effect.duration = 32;

    Effect_Add(play, &sp24, EFFECT_SPARK, 0, 1, &effect);
}

void func_808AAE6C(BgSpot01Idohashira* this, PlayState* play) {
    s32 pad;
    Vec3f sp30 = this->dyna.actor.world.pos;

    sp30.y += kREG(15);
    func_80033480(play, &sp30, kREG(11) + 350.0f, kREG(12) + 5, kREG(13) + 0x7D0, kREG(14) + 0x320, 0);
    func_808AAD3C(play, &sp30, 5);
    BgSpot01Idohashira_PlayBreakSfx2(this, play);
}

void func_808AAF34(BgSpot01Idohashira* this, PlayState* play) {
    s32 pad[2];

    if (this->unk_170 != 0) {
        Vec3f dest;
        Vec3f src;

        src.x = kREG(20) + 1300.0f;
        src.y = kREG(21) + 200.0f;
        src.z = 0.0f;
        Matrix_MultVec3f(&src, &dest);
        func_80033480(play, &dest, kREG(16) + 80.0f, kREG(17) + 10, kREG(18) + 1000, kREG(19), 0);
        func_808AAD3C(play, &dest, 3);
        src.x = -(kREG(20) + 1300.0f);
        src.y = kREG(21) + 200.0f;
        src.z = 0.0f;
        Matrix_MultVec3f(&src, &dest);
        func_80033480(play, &dest, kREG(16) + 80.0f, kREG(17) + 10, kREG(18) + 1000, kREG(19), 0);
        func_808AAD3C(play, &dest, 3);
        this->unk_170 = 0;
        BgSpot01Idohashira_PlayBreakSfx1(this);
    }
}

void BgSpot01Idohashira_Destroy(Actor* thisx, PlayState* play) {
    BgSpot01Idohashira* this = (BgSpot01Idohashira*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

s32 BgSpot01Idohashira_NotInCsMode(PlayState* play) {
    if (play->csCtx.state == CS_STATE_IDLE) {
        return true;
    }
    return false;
}

CsCmdActorCue* BgSpot01Idohashira_GetCue(PlayState* play, s32 cueChannel) {
    s32 pad[2];
    CsCmdActorCue* cue = NULL;

    if (!BgSpot01Idohashira_NotInCsMode(play)) {
        cue = play->csCtx.actorCues[cueChannel];
    }
    return cue;
}

void func_808AB18C(BgSpot01Idohashira* this) {
    this->dyna.actor.shape.rot.x += kREG(6);
    this->dyna.actor.shape.rot.y += (s16)(kREG(7) + 0x3E8);
    this->dyna.actor.shape.rot.z += (s16)(kREG(8) + 0x7D0);
}

f32 func_808AB1DC(f32 arg0, f32 arg1, u16 arg2, u16 arg3, u16 arg4) {
    f32 temp_f12;
    f32 regFloat;
    f32 diff23 = arg2 - arg3;
    f32 diff43 = arg4 - arg3;

    if (diff23 != 0.0f) {
        regFloat = kREG(9) + 30.0f;
        temp_f12 = regFloat * diff43;
        return (((((arg1 - arg0) - temp_f12) / SQ(diff23)) * diff43) * diff43) + temp_f12;
    }
    PRINTF(VT_FGCOL(RED) "Bg_Spot01_Idohashira_Get_FreeFallで割り算出来ない!!!!!!!!!!!!!!\n" VT_RST);
    return 0.0f;
}

s32 func_808AB29C(BgSpot01Idohashira* this, PlayState* play) {
    CsCmdActorCue* cue;
    Vec3f* thisPos;
    f32 endX;
    f32 temp_f0;
    s32 pad2;
    Vec3f initPos;
    f32 endZ;
    f32 tempY;
    f32 tempZ;

    cue = BgSpot01Idohashira_GetCue(play, 2);

    if (cue != NULL) {
        temp_f0 = Environment_LerpWeight(cue->endFrame, cue->startFrame, play->csCtx.curFrame);
        initPos = this->dyna.actor.home.pos;
        endX = cue->endPos.x;
        tempY = ((kREG(10) + 1100.0f) / 10.0f) + cue->endPos.y;
        endZ = cue->endPos.z;
        thisPos = &this->dyna.actor.world.pos;
        thisPos->x = ((endX - initPos.x) * temp_f0) + initPos.x;
        thisPos->y = func_808AB1DC(initPos.y, tempY, cue->endFrame, cue->startFrame, play->csCtx.curFrame) + initPos.y;
        thisPos->z = ((endZ - initPos.z) * temp_f0) + initPos.z;

        if (temp_f0 >= 1.0f) {
            return true;
        } else {
            return false;
        }
    }
    return false;
}

void func_808AB3E8(BgSpot01Idohashira* this) {
    this->action = 1;
    this->drawConfig = 0;
}

void func_808AB3F8(BgSpot01Idohashira* this, PlayState* play) {
    this->action = 2;
    this->drawConfig = 0;
    this->unk_170 = 1;
}

void func_808AB414(BgSpot01Idohashira* this, PlayState* play) {
    func_808AAE6C(this, play);
    this->action = 3;
    this->drawConfig = 0;
}

void func_808AB444(BgSpot01Idohashira* this, PlayState* play) {
    CsCmdActorCue* cue = BgSpot01Idohashira_GetCue(play, 2);
    u32 nextCueId;
    u32 currentCueId;

    if (cue != NULL) {
        nextCueId = cue->id;
        currentCueId = this->cueId;

        if (nextCueId != currentCueId) {
            switch (nextCueId) {
                case 1:
                    func_808AB3E8(this);
                    break;
                case 2:
                    func_808AB3F8(this, play);
                    break;
                case 3:
                    Actor_Kill(&this->dyna.actor);
                    break;
                default:
                    PRINTF("Bg_Spot01_Idohashira_Check_DemoMode:そんな動作は無い!!!!!!!!\n");
            }

            this->cueId = nextCueId;
        }
    }
}

void func_808AB504(BgSpot01Idohashira* this, PlayState* play) {
}

void func_808AB510(BgSpot01Idohashira* this, PlayState* play) {
    func_808AB444(this, play);
}

void func_808AB530(BgSpot01Idohashira* this, PlayState* play) {
    func_808AB18C(this);
    if (func_808AB29C(this, play)) {
        func_808AB414(this, play);
    }
}

void func_808AB570(BgSpot01Idohashira* this, PlayState* play) {
    func_808AB444(this, play);
}

void BgSpot01Idohashira_Update(Actor* thisx, PlayState* play) {
    BgSpot01Idohashira* this = (BgSpot01Idohashira*)thisx;

    if (this->action < 0 || this->action >= 4 || sActionFuncs[this->action] == NULL) {
        PRINTF(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    sActionFuncs[this->action](this, play);
}

void BgSpot01Idohashira_Init(Actor* thisx, PlayState* play) {
    s32 pad[2];
    BgSpot01Idohashira* this = (BgSpot01Idohashira*)thisx;
    CollisionHeader* colHeader;

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    DynaPolyActor_Init(&this->dyna, 0);
    colHeader = NULL;
    CollisionHeader_GetVirtual(&gKakarikoWellArchCol, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);

    if (!IS_CUTSCENE_LAYER) {
        if (GET_EVENTCHKINF(EVENTCHKINF_54) && LINK_IS_ADULT) {
            Actor_Kill(&this->dyna.actor);
        } else {
            this->action = 0;
        }
    } else if (gSaveContext.sceneLayer == 4) {
        this->action = 1;
        this->dyna.actor.shape.yOffset = -(kREG(10) + 1100.0f);
    } else if (gSaveContext.sceneLayer == 6) {
        this->action = 0;
    } else {
        Actor_Kill(&this->dyna.actor);
    }
}

void func_808AB700(BgSpot01Idohashira* this, PlayState* play) {
    GraphicsContext* localGfxCtx = play->state.gfxCtx;

    OPEN_DISPS(localGfxCtx, "../z_bg_spot01_idohashira.c", 689);

    Gfx_SetupDL_25Opa(localGfxCtx);

    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, localGfxCtx, "../z_bg_spot01_idohashira.c", 699);
    func_808AAF34(this, play);
    gSPDisplayList(POLY_OPA_DISP++, gKakarikoWellArchDL);

    CLOSE_DISPS(localGfxCtx, "../z_bg_spot01_idohashira.c", 708);
}

void BgSpot01Idohashira_Draw(Actor* thisx, PlayState* play) {
    BgSpot01Idohashira* this = (BgSpot01Idohashira*)thisx;

    if (this->drawConfig < 0 || this->drawConfig > 0 || sDrawFuncs[this->drawConfig] == NULL) {
        PRINTF(VT_FGCOL(RED) "描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    sDrawFuncs[this->drawConfig](this, play);
}
