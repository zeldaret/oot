/*
 * File: z_demo_shd.c
 * Overlay: Demo_Shd
 * Description: Bongo Bongo's Shadow
 */

#include "z_demo_shd.h"

#define FLAGS (ACTOR_FLAG_4 | ACTOR_FLAG_5)

void DemoShd_Init(Actor* thisx, PlayState* play);
void DemoShd_Destroy(Actor* thisx, PlayState* play);
void DemoShd_Update(Actor* thisx, PlayState* play);
void DemoShd_Draw(Actor* thisx, PlayState* play);

void func_80991298(DemoShd* this, PlayState* play);

ActorInit Demo_Shd_InitVars = {
    /**/ ACTOR_DEMO_SHD,
    /**/ ACTORCAT_ITEMACTION,
    /**/ FLAGS,
    /**/ OBJECT_GAMEPLAY_KEEP,
    /**/ sizeof(DemoShd),
    /**/ DemoShd_Init,
    /**/ DemoShd_Destroy,
    /**/ DemoShd_Update,
    /**/ DemoShd_Draw,
};

#include "assets/overlays/ovl_Demo_Shd/ovl_Demo_Shd.c"

void DemoShd_SetupAction(DemoShd* this, DemoShdActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void DemoShd_Init(Actor* thisx, PlayState* play) {
    DemoShd* this = (DemoShd*)thisx;

    this->unk_14C = 0;
    DemoShd_SetupAction(this, func_80991298);
    Actor_SetScale(&this->actor, 0.4f);
    this->actor.world.pos.y = 0.0f;
    this->actor.world.pos.x = 0.0f;
}

void DemoShd_Destroy(Actor* thisx, PlayState* play) {
}

void func_80991298(DemoShd* this, PlayState* play) {
    if ((play->csCtx.state != CS_STATE_IDLE && play->csCtx.actorCues[0] != NULL) ||
        (play->csCtx.state != CS_STATE_IDLE && play->csCtx.actorCues[1] != NULL)) {
        if (play->csCtx.curFrame == 800) {
            Audio_PlayCutsceneEffectsSequence(SEQ_CS_EFFECTS_BONGO_EMERGES);
        }
        if (play->csCtx.curFrame == 1069) {
            Audio_PlayCutsceneEffectsSequence(SEQ_CS_EFFECTS_BONGO_HOVER);
        }
    }

    if (play->csCtx.state != CS_STATE_IDLE) {
        CsCmdActorCue* cue = play->csCtx.actorCues[0];

        if (cue != NULL) {
            if (cue->id == 2) {
                if (!(this->unk_14C & 1)) {
                    this->unk_14E = cue->startPos.x;
                }
                this->unk_14C |= 1;
            } else {
                this->unk_14C &= ~1;
            }
        }
    }

    if (play->csCtx.state != CS_STATE_IDLE) {
        CsCmdActorCue* cue = play->csCtx.actorCues[1];

        if (cue != NULL) {
            if (cue->id == 2) {
                if (!(this->unk_14C & 2)) {
                    this->unk_14E = cue->startPos.x;
                }
                this->unk_14C |= 2;
            } else {
                this->unk_14C &= ~2;
            }
        }
    }

    this->unk_14E++;
}

void DemoShd_Update(Actor* thisx, PlayState* play) {
    DemoShd* this = (DemoShd*)thisx;

    this->actionFunc(this, play);
}

void DemoShd_Draw(Actor* thisx, PlayState* play) {
    DemoShd* this = (DemoShd*)thisx;
    s32 pad;
    u32 unk_14E = this->unk_14E;

    if (1) {} // Necessary to match, can be anywhere in the function

    OPEN_DISPS(play->state.gfxCtx, "../z_demo_shd.c", 726);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);

    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_demo_shd.c", 729),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_XLU_DISP++, D_809932D0);

    if (this->unk_14C & 1) {
        gSPDisplayList(POLY_XLU_DISP++,
                       Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, 0x3FF - ((unk_14E * 5) & 0x3FF), 16,
                                        256, 1, 0, 255 - ((unk_14E * 5) & 255), 32, 32));
        gSPDisplayList(POLY_XLU_DISP++, D_80993390);
    } else if (this->unk_14C & 2) {
        gSPDisplayList(POLY_XLU_DISP++,
                       Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, 0x3FF - ((unk_14E * 5) & 0x3FF), 16,
                                        256, 1, 0, 255 - ((unk_14E * 5) & 255), 32, 32));
        gSPDisplayList(POLY_XLU_DISP++, D_809934B8);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_demo_shd.c", 762);
}
