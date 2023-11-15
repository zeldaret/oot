#include "z_demo_tre_lgt.h"
#include "overlays/actors/ovl_En_Box/z_en_box.h"
#include "assets/objects/object_box/object_box.h"

#define FLAGS ACTOR_FLAG_4

void DemoTreLgt_Init(Actor* thisx, PlayState* play);
void DemoTreLgt_Destroy(Actor* thisx, PlayState* play);
void DemoTreLgt_Update(Actor* thisx, PlayState* play);
void DemoTreLgt_Draw(Actor* thisx, PlayState* play);

void func_80993848(DemoTreLgt* this, PlayState* play);
void func_80993754(DemoTreLgt* this);
void func_8099375C(DemoTreLgt* this, PlayState* play);
void func_809937B4(DemoTreLgt* this, PlayState* play, f32 currentFrame);

typedef struct {
    /* 0x00 */ f32 startFrame;
    /* 0x04 */ f32 endFrame;
    /* 0x08 */ f32 unk_08;
    /* 0x0C */ f32 unk_0C;
} DemoTreLgtInfo; // size = 0x10

static DemoTreLgtInfo sDemoTreLgtInfo[] = {
    { 1.0f, 136.0f, 190.0f, 40.0f },
    { 1.0f, 136.0f, 220.0f, 50.0f },
};

ActorInit Demo_Tre_Lgt_InitVars = {
    /**/ ACTOR_DEMO_TRE_LGT,
    /**/ ACTORCAT_ITEMACTION,
    /**/ FLAGS,
    /**/ OBJECT_BOX,
    /**/ sizeof(DemoTreLgt),
    /**/ DemoTreLgt_Init,
    /**/ DemoTreLgt_Destroy,
    /**/ DemoTreLgt_Update,
    /**/ DemoTreLgt_Draw,
};

static CurveAnimationHeader* sAnimations[] = { &gTreasureChestCurveAnim_4B60, &gTreasureChestCurveAnim_4F70 };

static DemoTreLgtActionFunc sActionFuncs[] = {
    func_8099375C,
    func_80993848,
};

void DemoTreLgt_Init(Actor* thisx, PlayState* play) {
    DemoTreLgt* this = (DemoTreLgt*)thisx;

    if (!SkelCurve_Init(play, &this->skelCurve, &gTreasureChestCurveSkel, sAnimations[0])) {
        // "Demo_Tre_Lgt_Actor_ct (); Construct failed"
        osSyncPrintf("Demo_Tre_Lgt_Actor_ct();コンストラクト失敗\n");
    }

    ASSERT(true, "1", "../z_demo_tre_lgt.c", UNK_LINE);

    this->unk_170 = 255;
    this->unk_174 = 255;
    this->status = 0;
    func_80993754(this);
}

void DemoTreLgt_Destroy(Actor* thisx, PlayState* play) {
    DemoTreLgt* this = (DemoTreLgt*)thisx;

    SkelCurve_Destroy(play, &this->skelCurve);
}

void func_80993754(DemoTreLgt* this) {
    this->action = DEMO_TRE_LGT_ACTION_WAIT;
}

void func_8099375C(DemoTreLgt* this, PlayState* play) {
    EnBox* treasureChest = (EnBox*)this->actor.parent;

    if ((treasureChest != NULL) && Animation_OnFrame(&treasureChest->skelanime, 10.0f)) {
        func_809937B4(this, play, treasureChest->skelanime.curFrame);
    }
}

void func_809937B4(DemoTreLgt* this, PlayState* play, f32 currentFrame) {
    SkelCurve* skelCurve = &this->skelCurve;
    s32 pad[2];

    this->action = DEMO_TRE_LGT_ACTION_ANIMATE;

    SkelCurve_SetAnim(skelCurve, sAnimations[gSaveContext.save.linkAge], 1.0f,
                      sDemoTreLgtInfo[gSaveContext.save.linkAge].endFrame +
                          sDemoTreLgtInfo[gSaveContext.save.linkAge].unk_08,
                      currentFrame, 1.0f);
    SkelCurve_Update(play, skelCurve);
}

void func_80993848(DemoTreLgt* this, PlayState* play) {
    f32 currentFrame = this->skelCurve.curFrame;

    if (currentFrame < sDemoTreLgtInfo[((void)0, gSaveContext.save.linkAge)].endFrame) {
        this->unk_170 = 255;
    } else {
        if (currentFrame <= (sDemoTreLgtInfo[((void)0, gSaveContext.save.linkAge)].endFrame +
                             sDemoTreLgtInfo[((void)0, gSaveContext.save.linkAge)].unk_08)) {
            this->unk_170 = ((((sDemoTreLgtInfo[((void)0, gSaveContext.save.linkAge)].endFrame - currentFrame) /
                               sDemoTreLgtInfo[((void)0, gSaveContext.save.linkAge)].unk_08) *
                              255.0f) +
                             255.0f);
        } else {
            this->unk_170 = 0;
        }
    }
    if (currentFrame < sDemoTreLgtInfo[((void)0, gSaveContext.save.linkAge)].unk_0C) {
        this->unk_174 = 255;
    } else if (currentFrame < (sDemoTreLgtInfo[((void)0, gSaveContext.save.linkAge)].unk_0C + 10.0f)) {
        this->unk_174 =
            ((((sDemoTreLgtInfo[((void)0, gSaveContext.save.linkAge)].unk_0C - currentFrame) / 10.0f) * 255.0f) +
             255.0f);
    } else {
        this->unk_174 = 0;
    }
    if ((currentFrame > 30.0f) && !(this->status & 1)) {
        this->status |= 1;
        Audio_PlaySfxGeneral(NA_SE_EV_TRE_BOX_FLASH, &this->actor.projectedPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
    }
    if (SkelCurve_Update(play, &this->skelCurve)) {
        Actor_Kill(&this->actor);
    }
}

void DemoTreLgt_Update(Actor* thisx, PlayState* play) {
    DemoTreLgt* this = (DemoTreLgt*)thisx;

    sActionFuncs[this->action](this, play);
}

s32 DemoTreLgt_OverrideLimbDraw(PlayState* play, SkelCurve* skelCurve, s32 limbIndex, void* thisx) {
    s32 pad;
    DemoTreLgt* this = (DemoTreLgt*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_demo_tre_lgt.c", 423);
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, (play->state.frames * 2) % 256, 0, 64, 32, 1,
                                (play->state.frames * -2) % 256, 0, 64, 32));

    if (limbIndex == 1) {
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0x80, 255, 255, 180, this->unk_170);
    } else if ((limbIndex == 13) || (limbIndex == 7) || (limbIndex == 4) || (limbIndex == 10)) {
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0x80, 255, 255, 180, this->unk_174);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_demo_tre_lgt.c", 448);

    //! @bug missing return
    //! If the returned value (i.e. the contents of v0) ends up being false (0), the limb won't draw. Therefore what
    //! matters is what was last written to v0 before the end of the function.
    //! - In debug versions, the last instruction that does this is in `Graph_CloseDisps`.
    //! - In retail versions, `gDPSetPrimColor` writes to it last.
    //! In both cases, that instruction sets v0 to a non-NULL pointer, which is "true", so the limb happens to be drawn.
#ifdef AVOID_UB
    return true;
#endif
}

void DemoTreLgt_Draw(Actor* thisx, PlayState* play) {
    GraphicsContext* gfxCtx = play->state.gfxCtx;
    DemoTreLgt* this = (DemoTreLgt*)thisx;

    OPEN_DISPS(gfxCtx, "../z_demo_tre_lgt.c", 461);

    if (this->action != DEMO_TRE_LGT_ACTION_ANIMATE) {
        return;
    }

    Gfx_SetupDL_25Xlu(gfxCtx);
    gDPSetEnvColor(POLY_XLU_DISP++, 200, 255, 0, 0);
    SkelCurve_Draw(&this->actor, play, &this->skelCurve, DemoTreLgt_OverrideLimbDraw, NULL, 1, &this->actor);

    CLOSE_DISPS(gfxCtx, "../z_demo_tre_lgt.c", 476);
}
