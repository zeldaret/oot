#include "z_eff_dust.h"
#include "objects/gameplay_keep/gameplay_keep.h"

#define FLAGS 0x00000030

#define THIS ((EffDust*)thisx)

void EffDust_Init(Actor* thisx, GlobalContext* globalCtx);
void EffDust_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EffDust_Update(Actor* thisx, GlobalContext* globalCtx);
void EffDust_Draw(Actor* thisx, GlobalContext* globalCtx);

void EffDust_InitPosAndDistance(EffDust* this);

void EffDust_UpdateFunc_8099DB28(EffDust* this, GlobalContext* globalCtx);
void EffDust_UpdateFunc_8099DD74(EffDust* this, GlobalContext* globalCtx);
void EffDust_UpdateFunc_8099DFC0(EffDust* this, GlobalContext* globalCtx);
void EffDust_DrawFunc_8099E4F4(EffDust* this, GlobalContext* globalCtx);
void EffDust_DrawFunc_8099E784(EffDust* this, GlobalContext* globalCtx);

const ActorInit Eff_Dust_InitVars = {
    ACTOR_EFF_DUST,
    ACTORCAT_NPC,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EffDust),
    (ActorFunc)EffDust_Init,
    (ActorFunc)EffDust_Destroy,
    (ActorFunc)EffDust_Update,
    (ActorFunc)EffDust_Draw,
};

static Gfx* D_8099EB60[] = { 0xDF000000, 0x00000000, 0x00000000, 0x00000000 };

enum DustEffect { Effect_0 = 0, Effect_1 = 1, Effect_2 = 2, Effect_3 = 3, Effect_4 = 4 };

void EffDust_setUpdateFunc(EffDust* this, EffDustActionFunc callback_updateFunc) {
    this->updateFunc = callback_updateFunc;
}

void EffDust_setDrawFunc(EffDust* this, EffDustActionFunc callback_drawFunc) {
    this->drawFunc = callback_drawFunc;
}

// Members initializer (?)
void EffDust_InitPosAndDistance(EffDust* this) {
    s32 i;

    for (i = 0; i < 0x40; i++) {
        this->initialPositions[i].z = 0.0f;
        this->initialPositions[i].y = 0.0f;
        this->initialPositions[i].x = 0.0f;

        this->distanceTraveled[i] = 1.0f;
    }

    this->index = 0;
}

void EffDust_Init(Actor* thisx, GlobalContext* globalCtx) {
    EffDust* this = THIS;
    enum DustEffect dust_effect;

    dust_effect = this->actor.params;
    EffDust_InitPosAndDistance(this);

    switch (dust_effect) {
        case Effect_0:
            EffDust_setUpdateFunc(this, EffDust_UpdateFunc_8099DB28);
            EffDust_setDrawFunc(this, EffDust_DrawFunc_8099E4F4);
            this->dy = 0.8f;
            this->dz = 0.8f;
            this->dx = 1.0f;
            this->scalingFactor = 0.1f;
            break;

        case Effect_1:
            EffDust_setUpdateFunc(this, EffDust_UpdateFunc_8099DD74);
            EffDust_setDrawFunc(this, EffDust_DrawFunc_8099E4F4);
            this->dx = 0.8f;
            this->dz = 0.8f;
            this->dy = 1.0f;
            this->scalingFactor = 0.5f;
            break;

        case Effect_2:
            EffDust_setUpdateFunc(this, EffDust_UpdateFunc_8099DFC0);
            EffDust_setDrawFunc(this, EffDust_DrawFunc_8099E784);
            this->dx = 0.5f;
            this->scalingFactor = 15.0f;
            break;

        case Effect_3:
            EffDust_setUpdateFunc(this, EffDust_UpdateFunc_8099DFC0);
            EffDust_setDrawFunc(this, EffDust_DrawFunc_8099E784);
            this->dx = 0.5f;
            this->scalingFactor = 10.0f;
            break;

        case Effect_4:
            EffDust_setUpdateFunc(this, EffDust_UpdateFunc_8099DFC0);
            EffDust_setDrawFunc(this, EffDust_DrawFunc_8099E784);
            this->actor.room = -1;
            this->dx = 0.5f;
            this->scalingFactor = 20.0f;
            break;

        default:
            SystemArena_FreeDebug(this, "../z_eff_dust.c", 202);
            break;
    }

    this->life = 0xA;
}

void EffDust_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void EffDust_UpdateFunc_8099DB28(EffDust* this, GlobalContext* globalCtx) {
    s16 theta;
    s16 fi;

    f32* distanceTraveled;

    s32 i;
    s32 j;

    distanceTraveled = this->distanceTraveled;
    for (i = 0; i < 0x40; i++) {
        if ((*distanceTraveled) < 1.0f) {
            *distanceTraveled += 0.05f;
        }
        distanceTraveled++;
        // This won't match.
        /*if (this->distanceTraveled[i] < 1.0f) {
            this->distanceTraveled[i] += 0.05f;
        }*/
    }

    for (j = 0; j < 3; j++) {
        i = this->index & 0x3F;
        if (this->distanceTraveled[i] >= 1.0f) {
            // Spherical coordinate system.
            fi = Rand_CenteredFloat(8192.0f);
            theta = Rand_CenteredFloat(4096.0f);
            this->initialPositions[i].x = -800.0f * Math_CosS(fi) * Math_CosS(theta);
            this->initialPositions[i].y = -800.0f * Math_SinS(theta);
            this->initialPositions[i].z = -800.0f * Math_SinS(fi) * Math_CosS(theta);
            this->distanceTraveled[i] = 0.0f;
            this->index += 1;
        }
    }
}

void EffDust_UpdateFunc_8099DD74(EffDust* this, GlobalContext* globalCtx) {
    s16 theta;
    s16 fi;

    f32* distanceTraveled;

    s32 i;
    s32 j;

    distanceTraveled = this->distanceTraveled;
    for (i = 0; i < 0x40; i++) {
        if ((*distanceTraveled) < 1.0f) {
            *distanceTraveled += 0.03f;
        }
        distanceTraveled++;
        // This won't match.
        /*if (this->distanceTraveled[i] < 1.0f) {
            this->distanceTraveled[i] += 0.03f;
        }*/
    }

    for (j = 0; j < 2; j++) {
        i = this->index & 0x3F;
        if (this->distanceTraveled[i] >= 1.0f) {
            // Spherical coordinate system.
            fi = Rand_CenteredFloat(65536.0f);
            theta = Rand_ZeroFloat(8192.0f);
            this->initialPositions[i].x = 400.0f * Math_CosS(fi) * Math_CosS(theta);
            this->initialPositions[i].y = 400.0f * Math_SinS(theta);
            this->initialPositions[i].z = 400.0f * Math_SinS(fi) * Math_CosS(theta);
            this->distanceTraveled[i] = 0.0f;
            this->index += 1;
        }
    }
}

void EffDust_UpdateFunc_8099DFC0(EffDust* this, GlobalContext* globalCtx) {
    s16 theta;

    Player* player;
    Actor* parent;

    f32* distanceTraveled;

    s32 i;
    s32 j;

    player = PLAYER;

    parent = this->actor.parent;
    distanceTraveled = this->distanceTraveled;

    if (parent == NULL || parent->update == NULL || !(player->stateFlags1 & 0x1000)) {
        if (this->life != 0) {
            this->life -= 1;
        } else {
            Actor_Kill(&this->actor);
        }

        for (i = 0; i < 0x40; i++) {
            if ((*distanceTraveled) < 1.0f) {
                *distanceTraveled += 0.2f;
            }
            distanceTraveled++;
        }

        return;
    }

    for (i = 0; i < 0x40; i++) {
        if ((*distanceTraveled) < 1.0f) {
            *distanceTraveled += 0.1f;
        }
        distanceTraveled++;
    }

    this->actor.world.pos = parent->world.pos;

    for (j = 0; j < 3; j++) {
        i = this->index & 0x3F;
        if (this->distanceTraveled[i] >= 1.0f) {

            theta = Rand_CenteredFloat(65536.0f);
            switch (this->actor.params) {
                case Effect_2:
                    this->initialPositions[i].x = (Rand_ZeroOne() * 4500.0f) + 700.0f;
                    if (this->initialPositions[i].x > 3000.0f) {
                        this->initialPositions[i].y = (3000.0f * Rand_ZeroOne()) * Math_SinS(theta);
                        this->initialPositions[i].z = (3000.0f * Rand_ZeroOne()) * Math_CosS(theta);
                    } else {
                        this->initialPositions[i].y = 3000.0f * Math_SinS(theta);
                        this->initialPositions[i].z = 3000.0f * Math_CosS(theta);
                    }
                    break;

                case Effect_3:
                    this->initialPositions[i].x = (Rand_ZeroOne() * 2500.0f) + 700.0f;
                    if (this->initialPositions[i].x > 2000.0f) {
                        this->initialPositions[i].y = (2000.0f * Rand_ZeroOne()) * Math_SinS(theta);
                        this->initialPositions[i].z = (2000.0f * Rand_ZeroOne()) * Math_CosS(theta);
                    } else {
                        this->initialPositions[i].y = 2000.0f * Math_SinS(theta);
                        this->initialPositions[i].z = 2000.0f * Math_CosS(theta);
                    }
                    break;

                case Effect_4:
                    this->initialPositions[i].x = (Rand_ZeroOne() * 8500.0f) + 1700.0f;
                    if (this->initialPositions[i].x > 5000.0f) {
                        this->initialPositions[i].y = (4000.0f * Rand_ZeroOne()) * Math_SinS(theta);
                        this->initialPositions[i].z = (4000.0f * Rand_ZeroOne()) * Math_CosS(theta);
                    } else {
                        this->initialPositions[i].y = 4000.0f * Math_SinS(theta);
                        this->initialPositions[i].z = 4000.0f * Math_CosS(theta);
                    }

                    break;
                default:
                    break;
            }

            this->distanceTraveled[i] = 0.0f;
            this->index += 1;
        }
    }
}

void EffDust_Update(Actor* thisx, GlobalContext* globalCtx) {
    EffDust* this = THIS;
    this->updateFunc(this, globalCtx);
}

void EffDust_DrawFunc_8099E4F4(EffDust* this, GlobalContext* globalCtx) {
    EffDust* this2;

    GlobalContext* glb_ctx;
    GraphicsContext* gfx_ctx;

    Vec3f* initialPositions;
    f32* distanceTraveled;

    s32 i;

    f32 aux;

    glb_ctx = globalCtx;
    gfx_ctx = globalCtx->state.gfxCtx;
    this2 = this;

    OPEN_DISPS(gfx_ctx, "../z_eff_dust.c", 425);

    func_80093D18(gfx_ctx);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 0x80, 0x80, 0x80, 0xFF);
    gDPSetEnvColor(POLY_XLU_DISP++, 0x80, 0x80, 0x80, 0x00);

    initialPositions = this2->initialPositions;
    distanceTraveled = this2->distanceTraveled;

    gSPSegment(POLY_XLU_DISP++, 0x08, D_8099EB60);

    for (i = 0; i < 0x40; i++) {
        if (*distanceTraveled < 1.0f) {
            // Needed to match.
            if (!this2) {}

            aux = 1.0f - (*distanceTraveled * *distanceTraveled);
            Matrix_Translate(
                this2->actor.world.pos.x + (initialPositions->x * ((this2->dx * aux) + (1.0f - this2->dx))),
                this2->actor.world.pos.y + (initialPositions->y * ((this2->dy * aux) + (1.0f - this2->dy))),
                this2->actor.world.pos.z + (initialPositions->z * ((this2->dz * aux) + (1.0f - this2->dz))),
                MTXMODE_NEW);

            Matrix_Scale(this2->scalingFactor, this2->scalingFactor, this2->scalingFactor, MTXMODE_APPLY);
            Matrix_Mult(&glb_ctx->mf_11DA0, MTXMODE_APPLY);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfx_ctx, "../z_eff_dust.c", 449),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gEffFairySparklesDL));
        }
        initialPositions++;
        distanceTraveled++;
        // Needed for matching.
        if (1) {}
        {}
        if (1) {}
        if (1) {}
        if (1 != 0) {}
    }

    CLOSE_DISPS(gfx_ctx, "../z_eff_dust.c", 458);
}

void EffDust_DrawFunc_8099E784(EffDust* this, GlobalContext* globalCtx) {
    EffDust* this2;
    GlobalContext* glb_ctx;
    GraphicsContext* gfx_ctx;

    f32* distanceTraveled;
    Vec3f* initialPositions;

    s32 i;
    f32 aux;

    Player* player;

    gfx_ctx = globalCtx->state.gfxCtx;
    player = PLAYER;

    OPEN_DISPS(gfx_ctx, "../z_eff_dust.c", 472);

    glb_ctx = globalCtx;

    func_80093D18(gfx_ctx);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 0xFF, 0xFF, 0xFF, 0xFF);
    if (player->unk_858 >= 0.85f) {
        gDPSetEnvColor(POLY_XLU_DISP++, 0xFF, 0x00, 0x00, 0x00);
    } else {
        gDPSetEnvColor(POLY_XLU_DISP++, 0x00, 0x00, 0xFF, 0x00);
    }

    initialPositions = this->initialPositions;
    distanceTraveled = this->distanceTraveled;

    gSPSegment(POLY_XLU_DISP++, 0x08, D_8099EB60);

    for (i = 0; i < 0x40; i++) {
        if (*distanceTraveled < 1.0f) {
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 0xFF, 0xFF, 0xFF, ((255.0f * (*distanceTraveled))));

            // Needed to match.
            this2 = this;
            if (!this2) {}

            aux = 1.0f - (*distanceTraveled * *distanceTraveled);

            Matrix_Mult(&player->mf_9E0, MTXMODE_NEW);

            Matrix_Translate(initialPositions->x * ((this2->dx * aux) + (1.0f - this2->dx)),
                             initialPositions->y * (1.0f - *distanceTraveled) + 320.0f,
                             initialPositions->z * (1.0f - *distanceTraveled) + -20.0f, MTXMODE_APPLY);

            Matrix_Scale(*distanceTraveled * this2->scalingFactor, *distanceTraveled * this2->scalingFactor,
                         *distanceTraveled * this2->scalingFactor, MTXMODE_APPLY);

            func_800D1FD4(&glb_ctx->mf_11DA0);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfx_ctx, "../z_eff_dust.c", 506),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gEffFairySparklesDL));
        }

        initialPositions++;
        distanceTraveled++;
    }

    CLOSE_DISPS(gfx_ctx, "../z_eff_dust.c", 515);
}

void EffDust_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EffDust* this = THIS;
    this->drawFunc(this, globalCtx);
}
