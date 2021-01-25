/*
 * File: z_bg_gnd_darkmeiro.c
 * Overlay: ovl_Bg_Gnd_Darkmeiro
 * Description: Shadow trial actors (invisible path, clear block, and timer)
 */

#include "z_bg_gnd_darkmeiro.h"

#define FLAGS 0x00000030

#define THIS ((BgGndDarkmeiro*)thisx)

void BgGndDarkmeiro_Init(Actor* thisx, GlobalContext* globalCtx);
void BgGndDarkmeiro_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgGndDarkmeiro_Update(Actor* thisx, GlobalContext* globalCtx);
void BgGndDarkmeiro_DrawInvisiblePath(Actor* thisx, GlobalContext* globalCtx);
void BgGndDarkmeiro_DrawSwitchBlock(Actor* thisx, GlobalContext* globalCtx);
void BgGndDarkmeiro_DrawStaticBlock(Actor* thisx, GlobalContext* globalCtx);

void BgGndDarkmeiro_Noop(BgGndDarkmeiro* this, GlobalContext* globalCtx);
void BgGndDarkmeiro_UpdateBlockTimer(BgGndDarkmeiro* this, GlobalContext* globalCtx);
void BgGndDarkmeiro_UpdateStaticBlock(BgGndDarkmeiro* this, GlobalContext* globalCtx);
void BgGndDarkmeiro_UpdateSwitchBlock(BgGndDarkmeiro* this, GlobalContext* globalCtx);

const ActorInit Bg_Gnd_Darkmeiro_InitVars = {
    ACTOR_BG_GND_DARKMEIRO,
    ACTORCAT_PROP,
    FLAGS,
    OBJECT_DEMO_KEKKAI,
    sizeof(BgGndDarkmeiro),
    (ActorFunc)BgGndDarkmeiro_Init,
    (ActorFunc)BgGndDarkmeiro_Destroy,
    (ActorFunc)BgGndDarkmeiro_Update,
    NULL,
};

extern Gfx D_060088B0[];
extern Gfx D_0600BEC0[];
extern CollisionHeader D_0600C080;

void BgGndDarkmeiro_ToggleBlock(BgGndDarkmeiro* this, GlobalContext* globalCtx) {
    if (this->actionFlags & 2) {
        if (this->timer1 == 0) {
            func_8003EBF8(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
            this->actionFlags &= ~2;
        }
    } else if (this->timer1 != 0) {
        func_8003EC50(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
        this->actionFlags |= 2;
    }
}

void BgGndDarkmeiro_Init(Actor* thisx, GlobalContext* globalCtx) {
    GlobalContext* globalCtx2 = globalCtx;
    CollisionHeader* colHeader = NULL;
    BgGndDarkmeiro* this = THIS;

    this->updateFunc = BgGndDarkmeiro_Noop;
    Actor_SetScale(&this->dyna.actor, 0.1f);
    switch (this->dyna.actor.params & 0xFF) {
        case DARKMEIRO_INVISIBLE_PATH:
            this->dyna.actor.draw = BgGndDarkmeiro_DrawInvisiblePath;
            this->dyna.actor.flags |= 0x80;
            break;
        case DARKMEIRO_CLEAR_BLOCK:
            CollisionHeader_GetVirtual(&D_0600C080, &colHeader);
            this->dyna.bgId = DynaPoly_SetBgActor(globalCtx2, &globalCtx2->colCtx.dyna, &this->dyna.actor, colHeader);
            if (((this->dyna.actor.params >> 8) & 0x3F) == 0x3F) {
                this->updateFunc = BgGndDarkmeiro_UpdateStaticBlock;
                this->dyna.actor.draw = BgGndDarkmeiro_DrawStaticBlock;
            } else {
                this->actionFlags = this->timer1 = this->timer2 = 0;
                thisx->draw = BgGndDarkmeiro_DrawSwitchBlock;
                this->updateFunc = BgGndDarkmeiro_UpdateSwitchBlock;
                if (!Flags_GetSwitch(globalCtx2, (this->dyna.actor.params >> 8) & 0x3F)) {
                    func_8003EBF8(globalCtx2, &globalCtx2->colCtx.dyna, this->dyna.bgId);
                } else {
                    this->timer1 = 64;
                    this->actionFlags |= 2;
                }
            }
            break;
        case DARKMEIRO_BLOCK_TIMER:
            this->actionFlags = this->timer1 = this->timer2 = 0;
            this->updateFunc = BgGndDarkmeiro_UpdateBlockTimer;
            thisx->draw = NULL;
            if (Flags_GetSwitch(globalCtx2, ((this->dyna.actor.params >> 8) & 0x3F) + 1)) {
                this->timer1 = 64;
                this->actionFlags |= 4;
            }
            if (Flags_GetSwitch(globalCtx2, ((this->dyna.actor.params >> 8) & 0x3F) + 2)) {
                this->timer2 = 64;
                this->actionFlags |= 8;
            }
            if ((this->timer1 != 0) || (this->timer2 != 0)) {
                Flags_SetSwitch(globalCtx2, (this->dyna.actor.params >> 8) & 0x3F);
            } else {
                Flags_UnsetSwitch(globalCtx2, (this->dyna.actor.params >> 8) & 0x3F);
            }
            break;
    }
}

void BgGndDarkmeiro_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    GlobalContext* globalCtx2 = globalCtx;
    BgGndDarkmeiro* this = THIS;

    if ((this->dyna.actor.params & 0xFF) == 1) {
        if (1) {}
        DynaPoly_DeleteBgActor(globalCtx2, &globalCtx2->colCtx.dyna, this->dyna.bgId);
    }
}

void BgGndDarkmeiro_Noop(BgGndDarkmeiro* this, GlobalContext* globalCtx) {
}

void BgGndDarkmeiro_UpdateBlockTimer(BgGndDarkmeiro* this, GlobalContext* globalCtx) {
    s16 timeLeft;

    if (Flags_GetSwitch(globalCtx, ((this->dyna.actor.params >> 8) & 0x3F) + 1)) {
        if (this->actionFlags & 4) {
            if (this->timer1 > 0) {
                this->timer1--;
            } else {
                Flags_UnsetSwitch(globalCtx, ((this->dyna.actor.params >> 8) & 0x3F) + 1);
                this->actionFlags &= ~4;
            }
        } else {
            this->actionFlags |= 4;
            this->timer1 = 304;
            Audio_PlaySoundGeneral(NA_SE_EV_RED_EYE, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        }
    }

    if (Flags_GetSwitch(globalCtx, ((this->dyna.actor.params >> 8) & 0x3F) + 2)) {
        if (this->actionFlags & 8) {
            if (this->timer2 > 0) {
                this->timer2--;
            } else {
                Flags_UnsetSwitch(globalCtx, ((this->dyna.actor.params >> 8) & 0x3F) + 2);
                this->actionFlags &= ~8;
            }
        } else {
            this->actionFlags |= 8;
            this->timer2 = 304;
            Audio_PlaySoundGeneral(NA_SE_EV_RED_EYE, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        }
    }

    timeLeft = CLAMP_MIN(this->timer1, this->timer2);
    if (timeLeft > 0) {
        func_8002F994(&this->dyna.actor, timeLeft);
    }
    if ((this->timer1 >= 64) || (this->timer2 >= 64)) {
        Flags_SetSwitch(globalCtx, (this->dyna.actor.params >> 8) & 0x3F);
    } else {
        Flags_UnsetSwitch(globalCtx, (this->dyna.actor.params >> 8) & 0x3F);
    }
}

void BgGndDarkmeiro_UpdateStaticBlock(BgGndDarkmeiro* this, GlobalContext* globalCtx) {
}

void BgGndDarkmeiro_UpdateSwitchBlock(BgGndDarkmeiro* this, GlobalContext* globalCtx) {
    if (this->timer1 > 0) {
        this->timer1--;
    }

    if (Flags_GetSwitch(globalCtx, (this->dyna.actor.params >> 8) & 0x3F)) {
        this->timer1 = 64;
    }

    BgGndDarkmeiro_ToggleBlock(this, globalCtx);
}

void BgGndDarkmeiro_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgGndDarkmeiro* this = THIS;
    GlobalContext* globalCtx2 = globalCtx;

    this->updateFunc(this, globalCtx2);
}

void BgGndDarkmeiro_DrawInvisiblePath(Actor* thisx, GlobalContext* globalCtx) {
    Gfx_DrawDListXlu(globalCtx, D_060088B0);
}

void BgGndDarkmeiro_DrawSwitchBlock(Actor* thisx, GlobalContext* globalCtx) {
    BgGndDarkmeiro* this = THIS;
    s16 vanishTimer;

    vanishTimer = this->timer1;
    if (vanishTimer != 0) {
        if (vanishTimer > 64) {
            this->timer2 = (this->timer2 < 120) ? this->timer2 + 8 : 127;
        } else if (vanishTimer > 16) {
            this->timer2 = (Math_CosS((u16)this->timer1 * 0x1000) * 64.0f) + 127.0f;
            if (this->timer2 > 127) {
                this->timer2 = 127;
            }
        } else {
            this->timer2 = vanishTimer * 8;
        }

        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_gnd_darkmeiro.c", 378);
        //@bug Due to a bug in the display list, the transparency data is not used.
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 198, 202, 208, this->timer2);
        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_gnd_darkmeiro.c", 380);

        Gfx_DrawDListXlu(globalCtx, D_0600BEC0);
    }
}

void BgGndDarkmeiro_DrawStaticBlock(Actor* thisx, GlobalContext* globalCtx) {
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_gnd_darkmeiro.c", 391);
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 198, 202, 208, 255);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_gnd_darkmeiro.c", 393);

    Gfx_DrawDListXlu(globalCtx, D_0600BEC0);
}
