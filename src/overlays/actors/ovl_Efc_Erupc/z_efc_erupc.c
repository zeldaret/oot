#include "z_efc_erupc.h"
#include "assets/objects/object_efc_erupc/object_efc_erupc.h"

#define FLAGS (ACTOR_FLAG_4 | ACTOR_FLAG_5)

void EfcErupc_Init(Actor* thisx, PlayState* play);
void EfcErupc_Destroy(Actor* thisx, PlayState* play);
void EfcErupc_Update(Actor* thisx, PlayState* play);
void EfcErupc_Draw(Actor* thisx, PlayState* play);

void EfcErupc_UpdateAction(EfcErupc* this, PlayState* play);
void EfcErupc_DrawEffects(EfcErupcEffect* effect, PlayState* play);
void EfcErupc_UpdateEffects(EfcErupc* this, PlayState* play);
void EfcErupc_SpawnEffect(EfcErupcEffect* effect, Vec3f* pos, Vec3f* vel, Vec3f* accel, f32 scaleFactor);
void EfcErupc_InitEffects(EfcErupcEffect* effect);

ActorInit Efc_Erupc_InitVars = {
    /**/ ACTOR_EFC_ERUPC,
    /**/ ACTORCAT_ITEMACTION,
    /**/ FLAGS,
    /**/ OBJECT_EFC_ERUPC,
    /**/ sizeof(EfcErupc),
    /**/ EfcErupc_Init,
    /**/ EfcErupc_Destroy,
    /**/ EfcErupc_Update,
    /**/ EfcErupc_Draw,
};

void EfcErupc_SetupAction(EfcErupc* this, EfcErupcActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EfcErupc_Init(Actor* thisx, PlayState* play) {
    EfcErupc* this = (EfcErupc*)thisx;

    EfcErupc_SetupAction(this, EfcErupc_UpdateAction);
    Actor_SetScale(&this->actor, 1.0f);
    EfcErupc_InitEffects(this->effects);
    this->unk_14C = this->unk_14E = this->unk_150 = 0;
    this->unk_152 = 5;
    this->unk_154 = -100;
}

void EfcErupc_Destroy(Actor* thisx, PlayState* play) {
}

void EfcErupc_UpdateAction(EfcErupc* this, PlayState* play) {
    Vec3f pos;
    Vec3f vel;
    Vec3f accel;
    s32 i;

    if (play->csCtx.state != CS_STATE_IDLE) {
        if (play->csCtx.actorCues[1] != NULL) {
            if (play->csCtx.actorCues[1]->id == 2) {
                if (this->unk_150 == 30) {
                    Sfx_PlaySfxCentered2(NA_SE_IT_EARTHQUAKE);
                }
                if (this->unk_150 <= 64) {
                    if (this->unk_154 < 200) {
                        this->unk_154 += 10;
                    }
                } else {
                    if (this->unk_154 > -100) {
                        this->unk_154 -= 10;
                    }
                }
                this->unk_150++;
            } else {
                if (this->unk_154 > -100) {
                    this->unk_154 -= 10;
                }
            }
        }
    }
    if (play->csCtx.state != CS_STATE_IDLE) {
        if (play->csCtx.actorCues[2] != NULL) {
            switch (play->csCtx.actorCues[2]->id) {
                case 2:
                    if (this->unk_14E == 0) {
                        Audio_PlayCutsceneEffectsSequence(SEQ_CS_EFFECTS_LAVA_ERUPT);
                        SET_EVENTCHKINF(EVENTCHKINF_2F);
                    }
                    this->unk_14E++;
                    break;
                case 3:
                    this->unk_14E = 30;
            }
            this->unk_14C++;
        }
    }
    accel.z = 0.0f;
    accel.x = 0.0f;
    pos.y = this->actor.world.pos.y + 300.0f;
    for (i = 0; i < this->unk_152; i++) {
        pos.x = Rand_CenteredFloat(100.0f) + this->actor.world.pos.x;
        pos.z = Rand_CenteredFloat(100.0f) + this->actor.world.pos.z;
        vel.x = Rand_CenteredFloat(100.0f);
        vel.y = Rand_ZeroFloat(100.0f);
        vel.z = Rand_CenteredFloat(100.0f);
        accel.y = this->unk_154 * 0.1f;
        EfcErupc_SpawnEffect(this->effects, &pos, &vel, &accel, 80.0f);
    }
}

void EfcErupc_Update(Actor* thisx, PlayState* play) {
    EfcErupc* this = (EfcErupc*)thisx;

    this->actionFunc(this, play);
    EfcErupc_UpdateEffects(this, play);
}

void EfcErupc_Draw(Actor* thisx, PlayState* play) {
    EfcErupc* this = (EfcErupc*)thisx;
    u16 cueId;

    OPEN_DISPS(play->state.gfxCtx, "../z_efc_erupc.c", 282);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);

    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, this->unk_14C * 1, this->unk_14E * -4, 32, 64, 1,
                                this->unk_14C * 4, this->unk_14E * -20, 64, 64));

    gSPSegment(POLY_XLU_DISP++, 0x09,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, this->unk_150 * -4, 16, 128, 1, 0,
                                this->unk_150 * 12, 32, 32));

    gSPSegment(POLY_XLU_DISP++, 0x0A,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, this->unk_150 * -4, 16, 128, 1, 0,
                                this->unk_150 * 12, 32, 32));

    Matrix_Push();
    Matrix_Scale(0.8f, 0.8f, 0.8f, MTXMODE_APPLY);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_efc_erupc.c", 321),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    if (play->csCtx.state != CS_STATE_IDLE) {
        if ((play->csCtx.actorCues[1] != NULL) && (play->csCtx.actorCues[1]->id == 2)) {
            gSPDisplayList(POLY_XLU_DISP++, object_efc_erupc_DL_002570);
        }
    }
    Matrix_Pop();
    Matrix_Scale(3.4f, 3.4f, 3.4f, MTXMODE_APPLY);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_efc_erupc.c", 333),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    if (play->csCtx.state != CS_STATE_IDLE) {
        CsCmdActorCue* cue = play->csCtx.actorCues[2];

        if (cue != NULL) {
            cueId = cue->id;

            if ((cueId == 2) || (cueId == 3)) {
                gDPSetPrimColor(POLY_XLU_DISP++, 0x80, 0x80, 255, 255, 200, 255);
                gDPSetEnvColor(POLY_XLU_DISP++, 100, 0, 0, 255);
                gSPDisplayList(POLY_XLU_DISP++, object_efc_erupc_DL_001720);
            }
        }
    }
    CLOSE_DISPS(play->state.gfxCtx, "../z_efc_erupc.c", 356);
    EfcErupc_DrawEffects(this->effects, play);
}

void EfcErupc_DrawEffects(EfcErupcEffect* effect, PlayState* play) {
    GraphicsContext* gfxCtx = play->state.gfxCtx;
    s16 i;
    s32 pad;

    OPEN_DISPS(gfxCtx, "../z_efc_erupc.c", 368);
    for (i = 0; i < EFC_ERUPC_EFFECT_COUNT; i++, effect++) {
        if (effect->isActive) {
            Gfx_SetupDL_25Xlu(play->state.gfxCtx);
            gSPDisplayList(POLY_XLU_DISP++, object_efc_erupc_DL_002760);
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, effect->color.r, effect->color.g, effect->color.b, effect->alpha);
            gDPSetEnvColor(POLY_XLU_DISP++, 150, 0, 0, 0);
            gDPPipeSync(POLY_XLU_DISP++);
            Matrix_Translate(effect->pos.x, effect->pos.y, effect->pos.z, MTXMODE_NEW);
            Matrix_ReplaceRotation(&play->billboardMtxF);
            Matrix_Scale(effect->scale, effect->scale, 1.0f, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_efc_erupc.c", 393),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, object_efc_erupc_DL_0027D8);
        }
    }
    CLOSE_DISPS(gfxCtx, "../z_efc_erupc.c", 399);
}

static Color_RGB8 D_8099D770[] = {
    { 255, 128, 0 },
    { 255, 0, 0 },
    { 255, 255, 0 },
    { 255, 0, 0 },
};

void EfcErupc_UpdateEffects(EfcErupc* this, PlayState* play) {
    s16 i;
    s16 index;
    Color_RGB8 effectColors[] = {
        { 255, 128, 0 },
        { 255, 0, 0 },
        { 0, 0, 0 },
        { 100, 0, 0 },
    };
    Color_RGB8* color;
    EfcErupcEffect* cur = this->effects;

    for (i = 0; i < EFC_ERUPC_EFFECT_COUNT; i++, cur++) {
        if (cur->isActive) {
            cur->pos.x += cur->vel.x;
            cur->pos.y += cur->vel.y;
            cur->pos.z += cur->vel.z;
            cur->vel.x += cur->accel.x;
            cur->vel.y += cur->accel.y;
            cur->vel.z += cur->accel.z;
            cur->animTimer++;
            index = cur->animTimer % 4;
            color = &effectColors[index];
            cur->color.r = color->r;
            cur->color.g = color->g;
            cur->color.b = color->b;
            cur->alpha -= 20;
            if (cur->alpha <= 0) {
                cur->alpha = 0;
                cur->isActive = false;
            }
        }
    }
}

void EfcErupc_SpawnEffect(EfcErupcEffect* effect, Vec3f* pos, Vec3f* vel, Vec3f* accel, f32 scaleFactor) {
    s16 i;

    for (i = 0; i < EFC_ERUPC_EFFECT_COUNT; i++, effect++) {
        if (!effect->isActive) {
            effect->isActive = true;
            effect->pos = *pos;
            effect->vel = *vel;
            effect->accel = *accel;
            effect->scale = scaleFactor / 1000.0f;
            effect->alpha = 255;
            effect->animTimer = (s16)Rand_ZeroFloat(10.0f);
            return;
        }
    }
}

void EfcErupc_InitEffects(EfcErupcEffect* effect) {
    s16 i;

    for (i = 0; i < EFC_ERUPC_EFFECT_COUNT; i++, effect++) {
        effect->isActive = false;
    }
}
