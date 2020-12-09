#include "z_demo_tre_lgt.h"
#include "overlays/actors/ovl_En_Box/z_en_box.h"

#define FLAGS 0x00000010

#define THIS ((DemoTreLgt*)thisx)

void DemoTreLgt_Init(Actor* thisx, GlobalContext* globalCtx);
void DemoTreLgt_Destroy(Actor* thisx, GlobalContext* globalCtx);
void DemoTreLgt_Update(Actor* thisx, GlobalContext* globalCtx);
void DemoTreLgt_Draw(Actor* thisx, GlobalContext* globalCtx);
s32 func_80993B2C(GlobalContext* globalCtx, SkelAnimeCurve* skelCurve, s32 limbIndex, void* data);

void func_8099375C(DemoTreLgt* this, GlobalContext* globalCtx);
void func_80993848(DemoTreLgt* this, GlobalContext* globalCtx);
void func_80993754(DemoTreLgt* this);
void func_8099375C(DemoTreLgt* this, GlobalContext* globalCtx);
void func_809937B4(DemoTreLgt* this, GlobalContext* globalCtx, f32 currentFrame);
void func_809937B4(DemoTreLgt* this, GlobalContext* globalCtx, f32 currentFrame);

extern SkelCurveLimbList D_06005EB8;

DemoTreLgtInfo D_80993D70 = {
    1.0f, 136.0f, 190.0f, 40.0f, 1.0f, 136.0f, 220.0f, 50.0f,
};

const ActorInit Demo_Tre_Lgt_InitVars = {
    ACTOR_DEMO_TRE_LGT,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_BOX,
    sizeof(DemoTreLgt),
    (ActorFunc)DemoTreLgt_Init,
    (ActorFunc)DemoTreLgt_Destroy,
    (ActorFunc)DemoTreLgt_Update,
    (ActorFunc)DemoTreLgt_Draw,
};

TransformUpdateIndex* D_80993DB0[] = { 0x06004B60, 0x06004F70 };

DemoTreLgtActionFunc D_80993DB8[] = {
    func_8099375C,
    func_80993848,
};

void DemoTreLgt_Init(Actor* thisx, GlobalContext* globalCtx) {
    DemoTreLgt* this = THIS;

    if (!SkelCurve_Init(globalCtx, &this->skelCurve, &D_06005EB8, D_80993DB0[0])) {
        osSyncPrintf("Demo_Tre_Lgt_Actor_ct();コンストラクト失敗\n");
    }

    // defined in .rodata but not used
    "1";
    "../z_demo_tre_lgt.c";

    this->unk_170 = 255;
    this->unk_174 = 255;
    this->status = 0;
    func_80993754(this);
}

void DemoTreLgt_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    DemoTreLgt* this = THIS;

    SkelCurve_Destroy(globalCtx, &this->skelCurve);
}

void func_80993754(DemoTreLgt* this) {
    this->action = 0;
}

void func_8099375C(DemoTreLgt* this, GlobalContext* globalCtx) {
    EnBox* treasureChest = (EnBox*)this->actor.parent;

    if (treasureChest != NULL && func_800A56C8(&treasureChest->skelanime, 10.0f)) {
        func_809937B4(this, globalCtx, treasureChest->skelanime.animCurrentFrame);
    }
}

void func_809937B4(DemoTreLgt* this, GlobalContext* globalCtx, f32 currentFrame) {
    SkelAnimeCurve* skelCurve = &this->skelCurve;
    s32 pad;

    this->action = 1;

    { s32 pad; }

    SkelCurve_SetAnim(skelCurve, D_80993DB0[gSaveContext.linkAge], 1.0f,
                      D_80993D70.frameInfo[gSaveContext.linkAge].endFrame +
                          D_80993D70.frameInfo[gSaveContext.linkAge].unkFrame,
                      currentFrame, 1.0f);
    SkelCurve_Update(globalCtx, skelCurve);
}

void func_80993848(DemoTreLgt* this, GlobalContext* globalCtx) {
    f32 currentFrame = this->skelCurve.animCurFrame;

    if (currentFrame < D_80993D70.frameInfo[(0, gSaveContext.linkAge)].endFrame) {
        this->unk_170 = 255;
    } else {
        if (currentFrame <= (D_80993D70.frameInfo[(0, gSaveContext.linkAge)].endFrame +
                             D_80993D70.frameInfo[(0, gSaveContext.linkAge)].unkFrame)) {
            this->unk_170 = ((((D_80993D70.frameInfo[(0, gSaveContext.linkAge)].endFrame - currentFrame) /
                               D_80993D70.frameInfo[(0, gSaveContext.linkAge)].unkFrame) *
                              255.0f) +
                             255.0f);
        } else {
            this->unk_170 = 0;
        }
    }
    if (currentFrame < D_80993D70.frameInfo[(0, gSaveContext.linkAge)].sideMaxFrame) {
        this->unk_174 = 255;
    } else if (currentFrame < (D_80993D70.frameInfo[(0, gSaveContext.linkAge)].sideMaxFrame + 10.0f)) {
        this->unk_174 =
            ((((D_80993D70.frameInfo[(0, gSaveContext.linkAge)].sideMaxFrame - currentFrame) / 10.0f) * 255.0f) +
             255.0f);
    } else {
        this->unk_174 = 0;
    }
    if ((currentFrame > 30.0f) && !(this->status & 1)) {
        this->status |= 1;
        Audio_PlaySoundGeneral(NA_SE_EV_TRE_BOX_FLASH, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                               &D_801333E8);
    }
    if (SkelCurve_Update(globalCtx, &this->skelCurve)) {
        Actor_Kill(&this->actor);
    }
}

void DemoTreLgt_Update(Actor* thisx, GlobalContext* globalCtx) {
    DemoTreLgt* this = THIS;

    D_80993DB8[this->action](this, globalCtx);
}

s32 func_80993B2C(GlobalContext* globalCtx, SkelAnimeCurve* skelCurve, s32 limbIndex, void* thisx) {
    s32 pad;
    DemoTreLgt* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_demo_tre_lgt.c", 423);
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (globalCtx->state.frames * 2) % 256, 0, 64, 32, 1,
                                (globalCtx->state.frames * -2) % 256, 0, 64, 32));

    if (limbIndex == 1) {
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0x80, 255, 255, 180, this->unk_170);
    } else if ((limbIndex == 13) || (limbIndex == 7) || (limbIndex == 4) || (limbIndex == 10)) {
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0x80, 255, 255, 180, this->unk_174);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_demo_tre_lgt.c", 448);
}

void DemoTreLgt_Draw(Actor* thisx, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    DemoTreLgt* this = THIS;

    OPEN_DISPS(gfxCtx, "../z_demo_tre_lgt.c", 461);

    if (this->action != 1) {
        return;
    }

    func_80093D84(gfxCtx);
    gDPSetEnvColor(POLY_XLU_DISP++, 200, 255, 0, 0);
    SkelCurve_Draw(&this->actor, globalCtx, &this->skelCurve, func_80993B2C, 0, 1, thisx);

    CLOSE_DISPS(gfxCtx, "../z_demo_tre_lgt.c", 476);
}
