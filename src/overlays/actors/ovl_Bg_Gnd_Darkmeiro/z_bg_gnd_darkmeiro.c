/*
 * File: z_bg_gnd_darkmeiro.c
 * Overlay: ovl_Bg_Gnd_Darkmeiro
 * Description: Clear block and timer
 */

#include "z_bg_gnd_darkmeiro.h"

#define FLAGS 0x00000030

#define THIS ((BgGndDarkmeiro*)thisx)

void BgGndDarkmeiro_Init(Actor* thisx, GlobalContext* globalCtx);
void BgGndDarkmeiro_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgGndDarkmeiro_Update(Actor* thisx, GlobalContext* globalCtx);
void BgGndDarkmeiro_Draw0(Actor* thisx, GlobalContext* globalCtx);
void BgGndDarkmeiro_DrawSwitchBlock(Actor* thisx, GlobalContext* globalCtx);
void BgGndDarkmeiro_DrawStaticBlock(Actor* thisx, GlobalContext* globalCtx);

void BgGndDarkmeiro_ToggleBlock(BgGndDarkmeiro* this, GlobalContext* globalCtx);
void BgGndDarkmeiro_DoNothing(BgGndDarkmeiro* this, GlobalContext* globalCtx);
void BgGndDarkmeiro_BlockTimer(BgGndDarkmeiro* this, GlobalContext* globalCtx);
void BgGndDarkmeiro_StaticBlock(BgGndDarkmeiro* this, GlobalContext* globalCtx);
void BgGndDarkmeiro_SwitchBlock(BgGndDarkmeiro* this, GlobalContext* globalCtx);

const ActorInit Bg_Gnd_Darkmeiro_InitVars = {
    ACTOR_BG_GND_DARKMEIRO,
    ACTORTYPE_PROP,
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

extern UNK_TYPE D_0600C080;

void BgGndDarkmeiro_ToggleBlock(BgGndDarkmeiro* this, GlobalContext* globalCtx) {

    if ((this->actionState & 2) != 0) {
        if (this->timer1 == 0) {
            func_8003EBF8(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
            this->actionState &= ~2;
        }
    } else if (this->timer1 != 0) {
        func_8003EC50(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
        this->actionState |= 2;
    }
}

void BgGndDarkmeiro_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgGndDarkmeiro* this = THIS;
    s32 local_c = 0;
    DynaCollisionContext* sp20;

    this->actionFunc = BgGndDarkmeiro_DoNothing;
    Actor_SetScale(&this->dyna.actor, 0.1f);

    switch (thisx->params & 0xFF) {
        case MODE_ZERO:
            this->dyna.actor.draw = BgGndDarkmeiro_Draw0;
            this->dyna.actor.flags |= 0x80;
            break;
        case CLEAR_BLOCK:
            sp20 = &globalCtx->colCtx.dyna;
            DynaPolyInfo_Alloc(&D_0600C080, &local_c);
            this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, sp20, &this->dyna.actor, local_c);

            if (((this->dyna.actor.params >> 8) & 0x3F) == 0x3F) {
                this->actionFunc = BgGndDarkmeiro_StaticBlock;
                this->dyna.actor.draw = BgGndDarkmeiro_DrawStaticBlock;
            } else {
                this->actionState = this->timer1 = this->timer2 = 0;
                thisx->draw = BgGndDarkmeiro_DrawSwitchBlock;
                this->actionFunc = BgGndDarkmeiro_SwitchBlock;
                if (Flags_GetSwitch(globalCtx, ((this->dyna.actor.params >> 8) & 0x3F)) == 0) {
                    func_8003EBF8(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
                } else {
                    this->timer1 = 64;
                    this->actionState |= 2;
                }
            }
            break;
        case BLOCK_TIMER:
            this->actionState = this->timer1 = this->timer2 = 0;
            this->actionFunc = BgGndDarkmeiro_BlockTimer;
            thisx->draw = NULL;
            if (Flags_GetSwitch(globalCtx, ((this->dyna.actor.params >> 8) & 0x3F) + 1) != 0) {
                this->timer1 = 64;
                this->actionState |= 4;
            }
            if (Flags_GetSwitch(globalCtx, ((this->dyna.actor.params >> 8) & 0x3F) + 2) != 0) {
                this->timer2 = 64;
                this->actionState |= 8;
            }
            if ((this->timer1 != 0) || (this->timer2 != 0)) {
                Flags_SetSwitch(globalCtx, ((this->dyna.actor.params >> 8) & 0x3F));
            } else {
                Flags_UnsetSwitch(globalCtx, ((this->dyna.actor.params >> 8) & 0x3F));
            }
            break;
    }
    if (globalCtx) {}; // needed for matching
}

void BgGndDarkmeiro_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgGndDarkmeiro* this = THIS;

    if ((this->dyna.actor.params & 0xFF) == 1) {
        if (!globalCtx) {}; // needed for matching
        DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
    }
}

void BgGndDarkmeiro_DoNothing(BgGndDarkmeiro* this, GlobalContext* globalCtx) {
    
}

void BgGndDarkmeiro_BlockTimer(BgGndDarkmeiro* this, GlobalContext* globalCtx) {
    s16 timeLeft;

    if (Flags_GetSwitch(globalCtx, ((this->dyna.actor.params >> 8) & 0x3F) + 1) != 0) {
        if ((this->actionState & 4) != 0) {
            if (this->timer1 > 0) {
                this->timer1--;
            } else {
                Flags_UnsetSwitch(globalCtx, ((this->dyna.actor.params >> 8) & 0x3F) + 1);
                this->actionState &= ~4;
            }
        } else {
            this->actionState |= 4;
            this->timer1 = 304;
            Audio_PlaySoundGeneral(0x2881U, &D_801333D4, 4U, &D_801333E0, &D_801333E0, &D_801333E8);
        }
    }

    if (Flags_GetSwitch(globalCtx, ((this->dyna.actor.params >> 8) & 0x3F) + 2) != 0) {
        if ((this->actionState & 8) != 0) {
            if (this->timer2 > 0) {
                this->timer2--;
            } else {
                Flags_UnsetSwitch(globalCtx, ((this->dyna.actor.params >> 8) & 0x3F) + 2);
                this->actionState &= ~8;
            }
        } else {
            this->actionState |= 8;
            this->timer2 = 304;
            Audio_PlaySoundGeneral(0x2881U, &D_801333D4, 4U, &D_801333E0, &D_801333E0, &D_801333E8);
        }
    }

    timeLeft = CLAMP_MIN(this->timer1, this->timer2);
    if (timeLeft > 0) {
        func_8002F994(&this->dyna.actor, timeLeft);
    }
    if ((this->timer1 >= 64) || (this->timer2 >= 64)) {
        Flags_SetSwitch(globalCtx, ((this->dyna.actor.params >> 8) & 0x3F));
    } else {
        Flags_UnsetSwitch(globalCtx, ((this->dyna.actor.params >> 8) & 0x3F));
    }
}

void BgGndDarkmeiro_StaticBlock(BgGndDarkmeiro* this, GlobalContext* globalCtx) {
    
}

void BgGndDarkmeiro_SwitchBlock(BgGndDarkmeiro* this, GlobalContext* globalCtx) {

    if (this->timer1 > 0) {
        this->timer1--;
    }

    if (Flags_GetSwitch(globalCtx, ((this->dyna.actor.params >> 8) & 0x3F)) != 0) {
        this->timer1 = 64;
    }

    BgGndDarkmeiro_ToggleBlock(this, globalCtx);
}

void BgGndDarkmeiro_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgGndDarkmeiro* this = THIS;
    
    this->actionFunc(this, globalCtx);
}

void BgGndDarkmeiro_Draw0(Actor* thisx, GlobalContext* globalCtx) {
    
    Gfx_DrawDListXlu(globalCtx, D_060088B0);
}

void BgGndDarkmeiro_DrawSwitchBlock(Actor* thisx, GlobalContext* globalCtx) {
    BgGndDarkmeiro* this = THIS;
    s16 vanishTimer;
    u16 vanishTimerU;

    vanishTimer = this->timer1;
    if (vanishTimer != 0) {
        if (vanishTimer > 64) {
            this->timer2 = (this->timer2 < 120) ? this->timer2 + 8 : 127;
        } else if (vanishTimer > 16) {
            vanishTimerU = this->timer1;
            this->timer2 = (Math_Coss((s16)vanishTimerU * 4096) * 64.0f) + 127.0f;
            if (this->timer2 > 127) {
                this->timer2 = 127;
            }
        } else {
            this->timer2 = vanishTimer * 8;
        }

        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_gnd_darkmeiro.c", 378);
        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, 0xC6, 0xCA, 0xD0, this->timer2);
        //@ bug: Due to a bug in the display list, the transparency data is not used.
        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_gnd_darkmeiro.c", 380);

        Gfx_DrawDListXlu(globalCtx, D_0600BEC0);
    }
}

void BgGndDarkmeiro_DrawStaticBlock(Actor* thisx, GlobalContext* globalCtx) {
    
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_gnd_darkmeiro.c", 391);
    gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, 0xC6, 0xCA, 0xD0, 0xFF);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_gnd_darkmeiro.c", 393);

    Gfx_DrawDListXlu(globalCtx, D_0600BEC0);
}
