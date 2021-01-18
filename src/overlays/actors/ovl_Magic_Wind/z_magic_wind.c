/*
 * File: z_magic_wind.c
 * Overlay: ovl_Magic_Wind
 * Description: Farore's Wind
 */

#include "z_magic_wind.h"

#define FLAGS 0x02000010

#define THIS ((MagicWind*)thisx)

void MagicWind_Init(Actor* thisx, GlobalContext* globalCtx);
void MagicWind_Destroy(Actor* thisx, GlobalContext* globalCtx);
void MagicWind_Update(Actor* thisx, GlobalContext* globalCtx);
void MagicWind_Draw(Actor* thisx, GlobalContext* globalCtx);

void MagicWind_Shrink(MagicWind* this, GlobalContext* globalCtx);
void MagicWind_WaitForTimer(MagicWind* this, GlobalContext* globalCtx);
void MagicWind_FadeOut(MagicWind* this, GlobalContext* globalCtx);
void MagicWind_WaitAtFullSize(MagicWind* this, GlobalContext* globalCtx);
void MagicWind_Grow(MagicWind* this, GlobalContext* globalCtx);

const ActorInit Magic_Wind_InitVars = {
    ACTOR_MAGIC_WIND,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(MagicWind),
    (ActorFunc)MagicWind_Init,
    (ActorFunc)MagicWind_Destroy,
    (ActorFunc)MagicWind_Update,
    (ActorFunc)MagicWind_Draw,
};

#include "z_magic_wind_gfx.c"

static u8 sTransformRefIdx[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

static s16 sCopyValues[] = {
    0x0400, 0x0400, 0x0400, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0200, 0x0200, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x02CD, 0x02CD, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
};

static TransformData sTransformData[] = {
    {
        0x000C,
        0x0001,
        0x0001,
        0x0001,
        0.0f,
    },
    {
        0x0014,
        0x003C,
        0x0000,
        0x0000,
        1.5f,
    },
    {
        0x000C,
        0x0001,
        0x0001,
        0x0001,
        0.0f,
    },
    {
        0x0014,
        0x003C,
        0x0000,
        0x0000,
        1.0f,
    },
};

static TransformUpdateIndex sTransformUpdIdx = {
    sTransformRefIdx, sTransformData, sCopyValues, 0x0001, 0x0003C,
};

static SkelCurveLimb sRootLimb = {
    0x01,
    0xFF,
    {
        NULL,
        NULL,
    },
};

static SkelCurveLimb sInnerCylinder = {
    0xFF,
    0x02,
    {
        NULL,
        sInnerCylinderDList,
    },
};

static SkelCurveLimb sOuterCylinder = {
    0xFF,
    0xFF,
    {
        NULL,
        sOuterCylinderDList,
    },
};

static SkelCurveLimb* sLimbs[] = {
    &sRootLimb,
    &sInnerCylinder,
    &sOuterCylinder,
};

static SkelCurveLimbList sLimbList = {
    sLimbs,
    0x03,
};

static u8 sAlphaUpdVals[] = {
    0x00, 0x03, 0x04, 0x07, 0x09, 0x0A, 0x0D, 0x0F, 0x11, 0x12, 0x15, 0x16, 0x19, 0x1B, 0x1C, 0x1F, 0x21, 0x23,
};

void MagicWind_SetupAction(MagicWind* this, MagicWindFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void MagicWind_Init(Actor* thisx, GlobalContext* globalCtx) {
    MagicWind* this = THIS;
    Player* player = PLAYER;

    if (SkelCurve_Init(globalCtx, &this->skelCurve, &sLimbList, &sTransformUpdIdx) == 0) {
        // Magic_Wind_Actor_ct (): Construct failed
        osSyncPrintf("Magic_Wind_Actor_ct():コンストラクト失敗\n");
    }
    this->actor.room = -1;
    switch (this->actor.params) {
        case 0:
            SkelCurve_SetAnim(&this->skelCurve, &sTransformUpdIdx, 0.0f, 60.0f, 0.0f, 1.0f);
            this->timer = 29;
            MagicWind_SetupAction(this, MagicWind_WaitForTimer);
            break;
        case 1:
            SkelCurve_SetAnim(&this->skelCurve, &sTransformUpdIdx, 60.0f, 0.0f, 60.0f, -1.0f);
            MagicWind_SetupAction(this, MagicWind_Shrink);
            // Means start
            LOG_STRING("表示開始", "../z_magic_wind.c", 486);
            func_8002F7DC(&player->actor, NA_SE_PL_MAGIC_WIND_WARP);
            break;
    }
}

void MagicWind_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    MagicWind* this = THIS;
    SkelCurve_Destroy(globalCtx, &this->skelCurve);
    func_800876C8(globalCtx);
    // wipe out
    LOG_STRING("消滅", "../z_magic_wind.c", 505);
}

void MagicWind_UpdateAlpha(f32 alpha) {
    s32 i;
    for (i = 0; i < ARRAY_COUNT(sAlphaUpdVals); i++) {
        sCylinderVtx[sAlphaUpdVals[i]].n.a = alpha * 255.0f;
    }
}

void MagicWind_WaitForTimer(MagicWind* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (this->timer > 0) {
        this->timer--;
        return;
    }

    // Means start
    LOG_STRING("表示開始", "../z_magic_wind.c", 539);
    func_8002F7DC(&player->actor, NA_SE_PL_MAGIC_WIND_NORMAL);
    MagicWind_UpdateAlpha(1.0f);
    MagicWind_SetupAction(this, MagicWind_Grow);
    SkelCurve_Update(globalCtx, &this->skelCurve);
}

void MagicWind_Grow(MagicWind* this, GlobalContext* globalCtx) {
    if (SkelCurve_Update(globalCtx, &this->skelCurve)) {
        MagicWind_SetupAction(this, MagicWind_WaitAtFullSize);
        this->timer = 50;
    }
}

void MagicWind_WaitAtFullSize(MagicWind* this, GlobalContext* globalCtx) {
    if (this->timer > 0) {
        this->timer--;
    } else {
        MagicWind_SetupAction(this, MagicWind_FadeOut);
        this->timer = 30;
    }
}

void MagicWind_FadeOut(MagicWind* this, GlobalContext* globalCtx) {
    if (this->timer > 0) {
        MagicWind_UpdateAlpha((f32)this->timer * (1.0f / 30.0f));
        this->timer--;
    } else {
        Actor_Kill(&this->actor);
    }
}

void MagicWind_Shrink(MagicWind* this, GlobalContext* globalCtx) {
    if (SkelCurve_Update(globalCtx, &this->skelCurve)) {
        Actor_Kill(&this->actor);
    }
}

void MagicWind_Update(Actor* thisx, GlobalContext* globalCtx) {
    MagicWind* this = THIS;
    if (globalCtx->msgCtx.msgMode == 0xD || globalCtx->msgCtx.msgMode == 0x11) {
        Actor_Kill(thisx);
        return;
    }

    this->actionFunc(this, globalCtx);
}

s32 MagicWind_OverrideLimbDraw(GlobalContext* globalCtx, SkelAnimeCurve* skelCurve, s32 limbIndex, void* thisx) {
    MagicWind* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_magic_wind.c", 615);

    if (limbIndex == 1) {
        gSPSegment(POLY_XLU_DISP++, 8,
                   Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (globalCtx->state.frames * 9) & 0xFF,
                                    0xFF - ((globalCtx->state.frames * 0xF) & 0xFF), 0x40, 0x40, 1,
                                    (globalCtx->state.frames * 0xF) & 0xFF,
                                    0xFF - ((globalCtx->state.frames * 0x1E) & 0xFF), 0x40, 0x40));

    } else if (limbIndex == 2) {
        gSPSegment(POLY_XLU_DISP++, 9,
                   Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (globalCtx->state.frames * 3) & 0xFF,
                                    0xFF - ((globalCtx->state.frames * 5) & 0xFF), 0x40, 0x40, 1,
                                    (globalCtx->state.frames * 6) & 0xFF,
                                    0xFF - ((globalCtx->state.frames * 0xA) & 0xFF), 0x40, 0x40));
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_magic_wind.c", 646);

    return true;
}

void MagicWind_Draw(Actor* thisx, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    MagicWind* this = THIS;

    OPEN_DISPS(gfxCtx, "../z_magic_wind.c", 661);

    if (this->actionFunc != MagicWind_WaitForTimer) {
        POLY_XLU_DISP = Gfx_CallSetupDL(POLY_XLU_DISP, 25);
        SkelCurve_Draw(thisx, globalCtx, &this->skelCurve, MagicWind_OverrideLimbDraw, NULL, 1, NULL);
    }

    CLOSE_DISPS(gfxCtx, "../z_magic_wind.c", 673);
}
