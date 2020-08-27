/*
 * File: z_bg_gnd_darkmeiro.c
 * Overlay: ovl_Bg_Gnd_Darkmeiro
 * Description: Transparent platform
 */

#include "z_bg_gnd_darkmeiro.h"

#define FLAGS 0x00000030

#define THIS ((BgGndDarkmeiro*)thisx)

#define SWITCH ((this->dyna.actor.params >> 8) & 0x3F)

void BgGndDarkmeiro_Init(Actor* thisx, GlobalContext* globalCtx);
void BgGndDarkmeiro_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgGndDarkmeiro_Update(Actor* thisx, GlobalContext* globalCtx);
void BgGndDarkmeiro_Draw0(Actor* thisx, GlobalContext* globalCtx);
void BgGndDarkmeiro_DrawSwitchedPlatform(Actor* thisx, GlobalContext* globalCtx);
void BgGndDarkmeiro_DrawStaticPlatform(Actor* thisx, GlobalContext* globalCtx);

void BgGndDarkmeiro_TogglePlatform(BgGndDarkmeiro* this, GlobalContext* globalCtx);
void BgGndDarkmeiro_NoAction(BgGndDarkmeiro* this, GlobalContext* globalCtx);
void BgGndDarkmeiro_PlatformTimer(BgGndDarkmeiro* this, GlobalContext* globalCtx);
void BgGndDarkmeiro_StaticPlatform(BgGndDarkmeiro* this, GlobalContext* globalCtx);
void BgGndDarkmeiro_SwitchedPlatform(BgGndDarkmeiro* this, GlobalContext* globalCtx);

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

void BgGndDarkmeiro_TogglePlatform(BgGndDarkmeiro* this, GlobalContext* globalCtx) {

    if ((this->actorState & 2) != 0) {
        if (this->timer1 == 0) {
            func_8003EBF8(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
            this->actorState &= ~2;
        }
    } else if (this->timer1 != 0) {
        func_8003EC50(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
        this->actorState |= 2;
    }
}

void BgGndDarkmeiro_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgGndDarkmeiro* this = THIS;
    s32 local_c = 0;
    DynaCollisionContext* sp20;

    this->actionFunc = BgGndDarkmeiro_NoAction;
    Actor_SetScale(&this->dyna.actor, 0.1f);

    switch (thisx->params & 0xFF) {
        case 0: // This does nothing, but does have a draw function. Not sure what it draws.
            this->dyna.actor.draw = BgGndDarkmeiro_Draw0;
            this->dyna.actor.flags |= 0x80;
            break;
        case 1: /*Transparent platform
            Transparent platforms appear when their switch flag is set and disappear 64 frames after
            their flag is unset. Transparent platforms with flag 0x3F ignore switches and are always on.*/

            sp20 = &globalCtx->colCtx.dyna;
            DynaPolyInfo_Alloc(&D_0600C080, &local_c);
            this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, sp20, &this->dyna.actor, local_c);

            if (SWITCH == 0x3F) {
                this->actionFunc = BgGndDarkmeiro_StaticPlatform;
                this->dyna.actor.draw = BgGndDarkmeiro_DrawStaticPlatform;
            } else {
                this->actorState = this->timer1 = this->timer2 = 0;
                thisx->draw = BgGndDarkmeiro_DrawSwitchedPlatform;
                this->actionFunc = BgGndDarkmeiro_SwitchedPlatform;
                if (Flags_GetSwitch(globalCtx, SWITCH) == 0) {
                    func_8003EBF8(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
                } else {
                    this->timer1 = 64;
                    this->actorState |= 2;
                }
            }
            break;
        case 2: /* Transparent platform timer.
        A transparent platform timer with switch flag N reacts to switch flags N+1 and N+2 being set,
        setting its own switch flag and a timer for 304 frames. There are separate timers for N+1
        and N+2, and the timer sets flag N as long as either timer is above 64 frames. Does not need
        transparent platforms to be present to function.*/

            this->actorState = this->timer1 = this->timer2 = 0;
            this->actionFunc = BgGndDarkmeiro_PlatformTimer;
            thisx->draw = NULL;
            if (Flags_GetSwitch(globalCtx, SWITCH + 1) != 0) {
                this->timer1 = 64;
                this->actorState |= 4;
            }
            if (Flags_GetSwitch(globalCtx, SWITCH + 2) != 0) {
                this->timer2 = 64;
                this->actorState |= 8;
            }
            if ((this->timer1 != 0) || (this->timer2 != 0)) {
                Flags_SetSwitch(globalCtx, SWITCH);
            } else {
                Flags_UnsetSwitch(globalCtx, SWITCH);
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

void BgGndDarkmeiro_NoAction(BgGndDarkmeiro* this, GlobalContext* globalCtx) {
    // This mode 0's action function, as well as any undefined mode. It does nothing.
}

void BgGndDarkmeiro_PlatformTimer(BgGndDarkmeiro* this, GlobalContext* globalCtx) {
    s16 timeLeft;

    if (Flags_GetSwitch(globalCtx, SWITCH + 1) != 0) {
        if ((this->actorState & 4) != 0) {
            if (this->timer1 > 0) {
                this->timer1--;
            } else {
                Flags_UnsetSwitch(globalCtx, SWITCH + 1);
                this->actorState &= ~4;
            }
        } else {
            this->actorState |= 4;
            this->timer1 = 304;
            Audio_PlaySoundGeneral(0x2881U, &D_801333D4, 4U, &D_801333E0, &D_801333E0, &D_801333E8);
        }
    }
    if (Flags_GetSwitch(globalCtx, SWITCH + 2) != 0) {
        if ((this->actorState & 8) != 0) {
            if (this->timer2 > 0) {
                this->timer2--;
            } else {
                Flags_UnsetSwitch(globalCtx, SWITCH + 2);
                this->actorState &= ~8;
            }
        } else {
            this->actorState |= 8;
            this->timer2 = 304;
            Audio_PlaySoundGeneral(0x2881U, &D_801333D4, 4U, &D_801333E0, &D_801333E0, &D_801333E8);
        }
    }

    timeLeft = CLAMP_MIN(this->timer1, this->timer2);
    if (timeLeft > 0) {
        func_8002F994(&this->dyna.actor, timeLeft);
    }
    if ((this->timer1 >= 64) || (this->timer2 >= 64)) {
        Flags_SetSwitch(globalCtx, SWITCH);
    } else {
        Flags_UnsetSwitch(globalCtx, SWITCH);
    }
}

void BgGndDarkmeiro_StaticPlatform(BgGndDarkmeiro* this, GlobalContext* globalCtx) {
    // Static platforms do nothing, just like this function.
}

void BgGndDarkmeiro_SwitchedPlatform(BgGndDarkmeiro* this, GlobalContext* globalCtx) {

    if (this->timer1 > 0) {
        this->timer1--;
    }

    if (Flags_GetSwitch(globalCtx, SWITCH) != 0) {
        this->timer1 = 64;
    }

    BgGndDarkmeiro_TogglePlatform(this, globalCtx);
}

void BgGndDarkmeiro_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgGndDarkmeiro* this = THIS;
    this->actionFunc(this, globalCtx);
}

void BgGndDarkmeiro_Draw0(Actor* thisx, GlobalContext* globalCtx) {
    Gfx_DrawDListXlu(globalCtx, D_060088B0); // This doesn't seem to draw anything.
}

void BgGndDarkmeiro_DrawSwitchedPlatform(Actor* thisx, GlobalContext* globalCtx) {
    BgGndDarkmeiro* this = THIS;
    s16 vanishTimer;
    u16 vanishTimerU;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

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
        } // This block of code sets the transparency of the platforms and causes them to flash before they
          // vanish when their switch is unset. Or it would if they didn't ignore all of their color data.

        gfxCtx = globalCtx->state.gfxCtx;
        Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_gnd_darkmeiro.c", 378);
        gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, 0xC6, 0xCA, 0xD0, this->timer2);
        Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_gnd_darkmeiro.c", 380);
        Gfx_DrawDListXlu(globalCtx, D_0600BEC0);
    }
}

void BgGndDarkmeiro_DrawStaticPlatform(Actor* thisx, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_gnd_darkmeiro.c", 391);
    gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, 0xC6, 0xCA, 0xD0, 0xFF);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_gnd_darkmeiro.c", 393);
    Gfx_DrawDListXlu(globalCtx, D_0600BEC0);
}
