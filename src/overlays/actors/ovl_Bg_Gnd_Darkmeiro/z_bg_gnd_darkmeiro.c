/*
 * File: z_bg_gnd_darkmeiro.c
 * Overlay: ovl_Bg_Gnd_Darkmeiro
 * Description: Clear block
 */

#include "z_bg_gnd_darkmeiro.h"

#define FLAGS 0x00000030

#define THIS ((BgGndDarkmeiro*)thisx)

void BgGndDarkmeiro_Init(Actor* thisx, GlobalContext* globalCtx);
void BgGndDarkmeiro_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgGndDarkmeiro_Update(Actor* thisx, GlobalContext* globalCtx);

void BgGndDarkmeiro_TogglePlatform(BgGndDarkmeiro* this, GlobalContext* globalCtx);
void BgGndDarkmeiro_NoAction(BgGndDarkmeiro* this, GlobalContext* globalCtx);
void BgGndDarkmeiro_PlatformTimer(BgGndDarkmeiro* this, GlobalContext* globalCtx);
void BgGndDarkmeiro_StaticPlatform(BgGndDarkmeiro* this, GlobalContext* globalCtx);
void BgGndDarkmeiro_SwitchedPlatform(BgGndDarkmeiro* this, GlobalContext* globalCtx);
void BgGndDarkmeiro_Draw0(BgGndDarkmeiro* this, GlobalContext* globalCtx);
void BgGndDarkmeiro_DrawSwitchedPlatform(BgGndDarkmeiro* this, GlobalContext* globalCtx);
void BgGndDarkmeiro_DrawStaticPlatform(BgGndDarkmeiro* this, GlobalContext* globalCtx);

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

extern UNK_TYPE D_0600C080;
extern UNK_TYPE D_060088B0;
extern UNK_TYPE D_0600BEC0;

void BgGndDarkmeiro_TogglePlatform(BgGndDarkmeiro* this, GlobalContext* globalCtx) {

    if ((this->actorState & 2) != 0) { // If the platform is active
        if (this->timer1 == 0) {       // and the vanishing timer has run out,
            func_8003EBF8(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId); // remove its collision
            this->actorState &= ~2;                                                   // and set it to inactive.
        }
    } else if (this->timer1 != 0) { // If the vanishing timer has time left,
        func_8003EC50(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId); // turn on the collision
        this->actorState |= 2;                                                    // and set the platform to active.
    }
}

void BgGndDarkmeiro_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgGndDarkmeiro* this = THIS;
    s32 local_c = 0;
    DynaCollisionContext* sp20;

    this->actionFunc = BgGndDarkmeiro_NoAction; // Default action is doing nothing.
    Actor_SetScale(&this->dyna.actor, 0.1f);

    switch (thisx->params & 0xFF) {
        case 0: // This does nothing, but does have a draw function. Not sure what it draws.
            thisx->draw = BgGndDarkmeiro_Draw0;
            thisx->flags |= 0x80;
            break;
        case 1: /*Transparent platform
            Transparent platforms appear when their switch flag is set and disappear 64 frames after
            their flag is unset. Transparent platforms with flag 0x3F ignore switches and are always on.*/

            sp20 = &globalCtx->colCtx.dyna; // Needed for matching
            DynaPolyInfo_Alloc(&D_0600C080, &local_c);
            this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, sp20, &this->dyna.actor, local_c);

            if (((thisx->params >> 8) & 0x3F) == 0x3F) { // If switch flag is 0x3F, use a static platform
                this->actionFunc = BgGndDarkmeiro_StaticPlatform;
                thisx->draw = BgGndDarkmeiro_DrawStaticPlatform;
            } else {
                this->actorState = this->timer1 = this->timer2 = 0; // Initialize state and timers to 0
                thisx->draw = BgGndDarkmeiro_DrawSwitchedPlatform;
                this->actionFunc = BgGndDarkmeiro_SwitchedPlatform;
                if (Flags_GetSwitch(globalCtx, (thisx->params >> 8) & 0x3F) == 0) {
                    func_8003EBF8(globalCtx, &globalCtx->colCtx.dyna,
                                  this->dyna.dynaPolyId); // Turn off collision if switch is off
                } else {
                    this->timer1 = 64;     // Set vanishing timer if switch is on
                    this->actorState |= 2; // Set active state if switch is on
                }
            }
            break;
        case 2: /* Transparent platform timer.
        A transparent platform timer with switch flag N reacts to switch flags N+1 and N+2 being set,
        setting its own switch flag and a timer for 304 frames. There are separate timers for N+1
        and N+2, and the timer sets flag N as long as either timer is above 64 frames. Despite the
        name, it does not require any transparent platforms to be present to work.*/

            this->actorState = this->timer1 = this->timer2 = 0; // initialize state and timers to 0
            this->actionFunc = BgGndDarkmeiro_PlatformTimer;
            thisx->draw = NULL;
            if (Flags_GetSwitch(globalCtx, ((thisx->params >> 8) & 0x3F) + 1) != 0) {
                this->timer1 = 64; // If switch N+1 is already set, turn on timer 1 with 64 frames on the clock.
                this->actorState |= 4;
            }
            if (Flags_GetSwitch(globalCtx, ((thisx->params >> 8) & 0x3F) + 2) != 0) {
                this->timer2 = 64; // If switch N+2 is already set, turn on timer 2 with 64 frames on the clock.
                this->actorState |= 8;
            }
            if ((this->timer1 != 0) || (this->timer2 != 0)) {
                Flags_SetSwitch(globalCtx, (thisx->params >> 8) & 0x3F); // If the timers are set, set switch N
            } else {
                Flags_UnsetSwitch(globalCtx, (thisx->params >> 8) & 0x3F); // If not, clear it.
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
    // This mode 0's action function, as well as any undefined mode. As you can see, it does nothing.
}

void BgGndDarkmeiro_PlatformTimer(BgGndDarkmeiro* this, GlobalContext* globalCtx) {
    s16 timeLeft;

    if (Flags_GetSwitch(globalCtx, ((this->dyna.actor.params >> 8) & 0x3F) + 1) != 0) {    // If switch N+1 is active
        if ((this->actorState & 4) != 0) {                                                 // and timer 1 is running,
            if (this->timer1 > 0) {                                                        // if there's any time left,
                this->timer1--;                                                            // decrement timer 1.
            } else {                                                                       // If timer 1 has run out,
                Flags_UnsetSwitch(globalCtx, ((this->dyna.actor.params >> 8) & 0x3F) + 1); // clear switch N+1
                this->actorState &= ~4;                                                    // and turn off timer 1.
            }                                                                              //
        } else {                                                                           // If timer 1 isn't running,
            this->actorState |= 4;                                                         // turn on timer 1,
            this->timer1 = 304;                                                            // set it to 304 frames,
            Audio_PlaySoundGeneral(0x2881U, &D_801333D4, 4U, &D_801333E0, &D_801333E0,
                                   &D_801333E8); // and play a whistling sound.
        }
    }
    if (Flags_GetSwitch(globalCtx, ((this->dyna.actor.params >> 8) & 0x3F) + 2) != 0) {    // If switch N+2 is active
        if ((this->actorState & 8) != 0) {                                                 // and timer 2 is running,
            if (this->timer2 > 0) {                                                        // if there's any time left,
                this->timer2--;                                                            // decrement timer 2.
            } else {                                                                       // If timer 2 has run out,
                Flags_UnsetSwitch(globalCtx, ((this->dyna.actor.params >> 8) & 0x3F) + 2); // clear switch N+2
                this->actorState &= ~8;                                                    // and turn off timer 2.
            }                                                                              //
        } else {                                                                           // If timer 2 isn't running,
            this->actorState |= 8;                                                         // turn on timer 1,
            this->timer2 = 304;                                                            // set it to 304 frames,
            Audio_PlaySoundGeneral(0x2881U, &D_801333D4, 4U, &D_801333E0, &D_801333E0,
                                   &D_801333E8); // and play a whistling sound.
        }
    }

    timeLeft = CLAMP_MIN(this->timer1, this->timer2); // Uses the larger timer for the clock sound
    if (timeLeft > 0) {
        func_8002F994(this, timeLeft); // If either timer is running, play the clock sound.
    }
    if ((this->timer1 >= 64) || (this->timer2 >= 64)) {                    // If either timer has at least 64 left,
        Flags_SetSwitch(globalCtx, (this->dyna.actor.params >> 8) & 0x3F); // set switch N.
    } else {
        Flags_UnsetSwitch(globalCtx, (this->dyna.actor.params >> 8) & 0x3F); // If both are under 64, clear switch N.
    }
    // Switch N is cleared 0x40 frames early to give the transparent platforms time to flicker and vanish
    // in sync with the other switches. This flickering effect is bugged, though, so it doesn't happen.
}

void BgGndDarkmeiro_StaticPlatform(BgGndDarkmeiro* this, GlobalContext* globalCtx) {
    // Static platforms do nothing, just like this function.
}

void BgGndDarkmeiro_SwitchedPlatform(BgGndDarkmeiro* this, GlobalContext* globalCtx) {

    if (this->timer1 > 0) {
        this->timer1--; // If the vanishing timer isn't 0, decrement it.
    }

    if (Flags_GetSwitch(globalCtx, (this->dyna.actor.params >> 8) & 0x3F) != 0) {
        this->timer1 = 64; // If the switch is on, reset the vanishing timer.
    }

    BgGndDarkmeiro_TogglePlatform(this, globalCtx); // Set whether the platform is solid.
}

void BgGndDarkmeiro_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgGndDarkmeiro* this = THIS;
    this->actionFunc(this, globalCtx);
}

void BgGndDarkmeiro_Draw0(BgGndDarkmeiro* this, GlobalContext* globalCtx) {
    Gfx_DrawDListXlu(globalCtx, &D_060088B0); // Draws...something. Used by mode 0.
}

void BgGndDarkmeiro_DrawSwitchedPlatform(BgGndDarkmeiro* this, GlobalContext* globalCtx) {
    s16 vanishTimer;
    s32 vanishTimer32;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    vanishTimer = this->timer1;
    if (vanishTimer != 0) { // Platform only gets drawn if vanishing timer isn't zero.
        if (vanishTimer > 64) {
            this->timer2 = (this->timer2 < 120) ? this->timer2 + 8 : 127;
        } else if (vanishTimer > 16) {
            vanishTimer32 = this->timer1;
            this->timer2 = (Math_Coss((s16)vanishTimer32 * 4096) * 64.0f) + 127.0f;
            if (this->timer2 > 127) {
                this->timer2 = 127;
            }
        } else {
            this->timer2 = vanishTimer * 8;
        } // This block of code sets the transparency of the platforms and causes them to flash before they
          // vanish when their switch is unset. Or it would if they didn't ignore all of their color data.

        gfxCtx = globalCtx->state.gfxCtx;
        Graph_OpenDisps(&dispRefs, globalCtx->state.gfxCtx, "../z_bg_gnd_darkmeiro.c", 378);
        gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, 0xC6, 0xCA, 0xD0, this->timer2);
        Graph_CloseDisps(&dispRefs, globalCtx->state.gfxCtx, "../z_bg_gnd_darkmeiro.c", 380);
        Gfx_DrawDListXlu(globalCtx, &D_0600BEC0); // Draws the platform.
    }
}

void BgGndDarkmeiro_DrawStaticPlatform(BgGndDarkmeiro* this, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(&dispRefs, globalCtx->state.gfxCtx, "../z_bg_gnd_darkmeiro.c", 391);
    gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, 0xC6, 0xCA, 0xD0, 0xFF);
    Graph_CloseDisps(&dispRefs, globalCtx->state.gfxCtx, "../z_bg_gnd_darkmeiro.c", 393);
    Gfx_DrawDListXlu(globalCtx, &D_0600BEC0); // Draws the platform.
}
