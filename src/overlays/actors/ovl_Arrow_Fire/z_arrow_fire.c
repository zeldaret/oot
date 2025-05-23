/*
 * File: z_arrow_fire.c
 * Overlay: ovl_Arrow_Fire
 * Description: Fire Arrow. Spawned as a child of a normal arrow.
 */

#include "z_arrow_fire.h"
#include "overlays/actors/ovl_En_Arrow/z_en_arrow.h"

#define FLAGS (ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_UPDATE_DURING_OCARINA)

void ArrowFire_Init(Actor* thisx, PlayState* play);
void ArrowFire_Destroy(Actor* thisx, PlayState* play);
void ArrowFire_Update(Actor* thisx, PlayState* play);
void ArrowFire_Draw(Actor* thisx, PlayState* play2);

void ArrowFire_Charge(ArrowFire* this, PlayState* play);
void ArrowFire_Fly(ArrowFire* this, PlayState* play);
void ArrowFire_Hit(ArrowFire* this, PlayState* play);

#include "assets/overlays/ovl_Arrow_Fire/ovl_Arrow_Fire.c"

ActorProfile Arrow_Fire_Profile = {
    /**/ ACTOR_ARROW_FIRE,
    /**/ ACTORCAT_ITEMACTION,
    /**/ FLAGS,
    /**/ OBJECT_GAMEPLAY_KEEP,
    /**/ sizeof(ArrowFire),
    /**/ ArrowFire_Init,
    /**/ ArrowFire_Destroy,
    /**/ ArrowFire_Update,
    /**/ ArrowFire_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(cullingVolumeDistance, 2000, ICHAIN_STOP),
};

void ArrowFire_SetupAction(ArrowFire* this, ArrowFireActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void ArrowFire_Init(Actor* thisx, PlayState* play) {
    ArrowFire* this = (ArrowFire*)thisx;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    this->radius = 0;
    this->unk_158 = 1.0f;
    ArrowFire_SetupAction(this, ArrowFire_Charge);
    Actor_SetScale(&this->actor, 0.01f);
    this->alpha = 160;
    this->timer = 0;
    this->unk_15C = 0.0f;
}

void ArrowFire_Destroy(Actor* thisx, PlayState* play) {
    Magic_Reset(play);
    LOG_STRING("消滅", "../z_arrow_fire.c", 421); // "Disappearance"
}

void ArrowFire_Charge(ArrowFire* this, PlayState* play) {
    EnArrow* arrow;

    arrow = (EnArrow*)this->actor.parent;
    if ((arrow == NULL) || (arrow->actor.update == NULL)) {
        Actor_Kill(&this->actor);
        return;
    }

    if (this->radius < 10) {
        this->radius += 1;
    }
    // copy position and rotation from arrow
    this->actor.world.pos = arrow->actor.world.pos;
    this->actor.shape.rot = arrow->actor.shape.rot;

    Actor_PlaySfx_Flagged(&this->actor, NA_SE_PL_ARROW_CHARGE_FIRE - SFX_FLAG);

    // if arrow has no parent, player has fired the arrow
    if (arrow->actor.parent == NULL) {
        this->unkPos = this->actor.world.pos;
        this->radius = 10;
        ArrowFire_SetupAction(this, ArrowFire_Fly);
        this->alpha = 255;
    }
}

void func_80865ECC(Vec3f* unkPos, Vec3f* firePos, f32 scale) {
    unkPos->x += ((firePos->x - unkPos->x) * scale);
    unkPos->y += ((firePos->y - unkPos->y) * scale);
    unkPos->z += ((firePos->z - unkPos->z) * scale);
}

void ArrowFire_Hit(ArrowFire* this, PlayState* play) {
    f32 scale;
    f32 offset;
    u16 timer;

    if (this->actor.projectedW < 50.0f) {
        scale = 10.0f;
    } else {
        if (950.0f < this->actor.projectedW) {
            scale = 310.0f;
        } else {
            scale = this->actor.projectedW;
            scale = ((scale - 50.0f) * (1.0f / 3.0f)) + 10.0f;
        }
    }

    timer = this->timer;
    if (timer != 0) {
        this->timer--;

        if (this->timer >= 8) {
            offset = ((this->timer - 8) * (1.0f / 24.0f));
            offset = SQ(offset);
            this->radius = (((1.0f - offset) * scale) + 10.0f);
            this->unk_158 += ((2.0f - this->unk_158) * 0.1f);
            if (this->timer < 16) {
                if (1) {}
                this->alpha = ((this->timer * 0x23) - 0x118);
            }
        }
    }

    if (this->timer >= 9) {
        if (this->unk_15C < 1.0f) {
            this->unk_15C += 0.25f;
        }
    } else {
        if (this->unk_15C > 0.0f) {
            this->unk_15C -= 0.125f;
        }
    }

    if (this->timer < 8) {
        this->alpha = 0;
    }

    if (this->timer == 0) {
        this->timer = 255;
        Actor_Kill(&this->actor);
    }
}

void ArrowFire_Fly(ArrowFire* this, PlayState* play) {
    EnArrow* arrow;
    f32 distanceScaled;
    s32 pad;

    arrow = (EnArrow*)this->actor.parent;
    if ((arrow == NULL) || (arrow->actor.update == NULL)) {
        Actor_Kill(&this->actor);
        return;
    }
    // copy position and rotation from arrow
    this->actor.world.pos = arrow->actor.world.pos;
    this->actor.shape.rot = arrow->actor.shape.rot;
    distanceScaled = Math_Vec3f_DistXYZ(&this->unkPos, &this->actor.world.pos) * (1.0f / 24.0f);
    this->unk_158 = distanceScaled;
    if (distanceScaled < 1.0f) {
        this->unk_158 = 1.0f;
    }
    func_80865ECC(&this->unkPos, &this->actor.world.pos, 0.05f);

    if (arrow->hitFlags & 1) {
        Actor_PlaySfx(&this->actor, NA_SE_IT_EXPLOSION_FRAME);
        ArrowFire_SetupAction(this, ArrowFire_Hit);
        this->timer = 32;
        this->alpha = 255;
    } else if (arrow->timer < 34) {
        if (this->alpha < 35) {
            Actor_Kill(&this->actor);
        } else {
            this->alpha -= 0x19;
        }
    }
}

void ArrowFire_Update(Actor* thisx, PlayState* play) {
    ArrowFire* this = (ArrowFire*)thisx;

    // See `ACTOROVL_ALLOC_ABSOLUTE`
    //! @bug This condition is too broad, the actor will also be killed by warp songs. But warp songs do not use an
    //! actor which uses `ACTOROVL_ALLOC_ABSOLUTE`. There is no reason to kill the actor in this case.
    if ((play->msgCtx.msgMode == MSGMODE_OCARINA_CORRECT_PLAYBACK) || (play->msgCtx.msgMode == MSGMODE_SONG_PLAYED)) {
        Actor_Kill(&this->actor);
        return;
    }

    this->actionFunc(this, play);
}

void ArrowFire_Draw(Actor* thisx, PlayState* play2) {
    ArrowFire* this = (ArrowFire*)thisx;
    PlayState* play = play2;
    u32 stateFrames;
    EnArrow* arrow;
    Actor* transform;

    stateFrames = play->state.frames;
    arrow = (EnArrow*)this->actor.parent;

    if ((arrow == NULL) || (arrow->actor.update == NULL)) {
        return;
    }

    if (this->timer >= 255) {
        return;
    }

    transform = (arrow->hitFlags & 2) ? &this->actor : &arrow->actor;

    OPEN_DISPS(play->state.gfxCtx, "../z_arrow_fire.c", 618);

    Matrix_Translate(transform->world.pos.x, transform->world.pos.y, transform->world.pos.z, MTXMODE_NEW);
    Matrix_RotateY(BINANG_TO_RAD(transform->shape.rot.y), MTXMODE_APPLY);
    Matrix_RotateX(BINANG_TO_RAD(transform->shape.rot.x), MTXMODE_APPLY);
    Matrix_RotateZ(BINANG_TO_RAD(transform->shape.rot.z), MTXMODE_APPLY);
    Matrix_Scale(0.01f, 0.01f, 0.01f, MTXMODE_APPLY);

    // Draw red effect over the screen when arrow hits
    if (this->unk_15C > 0) {
        POLY_XLU_DISP = Gfx_SetupDL_57(POLY_XLU_DISP);
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, (s32)(40.0f * this->unk_15C) & 0xFF, 0, 0,
                        (s32)(150.0f * this->unk_15C) & 0xFF);
        gDPSetAlphaDither(POLY_XLU_DISP++, G_AD_DISABLE);
        gDPSetColorDither(POLY_XLU_DISP++, G_CD_DISABLE);
        gDPFillRectangle(POLY_XLU_DISP++, 0, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1);
    }

    // Draw fire on the arrow
    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    gDPSetPrimColor(POLY_XLU_DISP++, 0x80, 0x80, 255, 200, 0, this->alpha);
    gDPSetEnvColor(POLY_XLU_DISP++, 255, 0, 0, 128);
    Matrix_RotateZYX(0x4000, 0x0, 0x0, MTXMODE_APPLY);
    if (this->timer != 0) {
        Matrix_Translate(0.0f, 0.0f, 0.0f, MTXMODE_APPLY);
    } else {
        Matrix_Translate(0.0f, 1500.0f, 0.0f, MTXMODE_APPLY);
    }
    Matrix_Scale(this->radius * 0.2f, this->unk_158 * 4.0f, this->radius * 0.2f, MTXMODE_APPLY);
    Matrix_Translate(0.0f, -700.0f, 0.0f, MTXMODE_APPLY);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_arrow_fire.c", 666);
    gSPDisplayList(POLY_XLU_DISP++, sMaterialDL);
    gSPDisplayList(POLY_XLU_DISP++,
                   Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 255 - (stateFrames * 2) % 256, 0, 64, 32, 1,
                                    255 - stateFrames % 256, 511 - (stateFrames * 10) % 512, 64, 64));
    gSPDisplayList(POLY_XLU_DISP++, sModelDL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_arrow_fire.c", 682);
}
