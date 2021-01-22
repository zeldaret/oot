#include "z_eff_dust.h"

#define FLAGS 0x00000030

#define THIS ((EffDust*)thisx)

void EffDust_Init(Actor* thisx, GlobalContext* globalCtx);
void EffDust_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EffDust_Update(Actor* thisx, GlobalContext* globalCtx);
void EffDust_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_8099D8E0(EffDust* this);

void EffDust_UpdateFunc_8099DB28(EffDust* this, GlobalContext* globalCtx);
void EffDust_UpdateFunc_8099DD74(EffDust* this, GlobalContext* globalCtx);
void func_8099DFC0(EffDust* this, GlobalContext* globalCtx);
void func_8099E4F4(EffDust* this, GlobalContext* globalCtx);
void func_8099E784(EffDust* this, GlobalContext* globalCtx);

extern Gfx D_04037880[];

const ActorInit Eff_Dust_InitVars = {
    ACTOR_EFF_DUST,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EffDust),
    (ActorFunc)EffDust_Init,
    (ActorFunc)EffDust_Destroy,
    (ActorFunc)EffDust_Update,
    (ActorFunc)EffDust_Draw,
};

static Gfx *D_8099EB60[] = {
    0xDF000000, 0x00000000, 0x00000000, 0x00000000
};


void EffDust_setUpdateFunc(EffDust* this, EffDustActionFunc callback_updateFunc) {
    this->updateFunc = callback_updateFunc;
}

void EffDust_setDrawFunc(EffDust* this, EffDustActionFunc callback_drawFunc) {
    this->drawFunc = callback_drawFunc;
}


// Members initializer (?)
void func_8099D8E0(EffDust *this) {
    s32 i;

    for (i = 0; i < 0x40; i++) {
        this->initialPositions[i].z = 0.0f;
        this->initialPositions[i].y = 0.0f;
        this->initialPositions[i].x = 0.0f;

        this->distanceTraveled[i] = 1.0f;
    }

    this->index = 0;
}


void EffDust_Init(Actor *thisx, GlobalContext *globalCtx) {
    EffDust *this = THIS;
    u32 sp20;

    sp20 = this->actor.params;
    func_8099D8E0(this);

    switch(sp20){
    case 0:
        EffDust_setUpdateFunc(this, EffDust_UpdateFunc_8099DB28);
        EffDust_setDrawFunc(this, func_8099E4F4);
        this->dy = 0.8f;
        this->dz = 0.8f;
        this->dx = 1.0f;
        this->scalingFactor = 0.1f;
        break;

    case 1:
        EffDust_setUpdateFunc(this, EffDust_UpdateFunc_8099DD74);
        EffDust_setDrawFunc(this, func_8099E4F4);
        this->dx = 0.8f;
        this->dz = 0.8f;
        this->dy = 1.0f;
        this->scalingFactor = 0.5f;
        break;

    case 2:
        EffDust_setUpdateFunc(this, func_8099DFC0);
        EffDust_setDrawFunc(this, func_8099E784);
        this->dx = 0.5f;
        this->scalingFactor = 15.0f;
        break;

    case 3:
        EffDust_setUpdateFunc(this, func_8099DFC0);
        EffDust_setDrawFunc(this, func_8099E784);
        this->dx = 0.5f;
        this->scalingFactor = 10.0f;
        break;

    case 4:
        EffDust_setUpdateFunc(this, func_8099DFC0);
        EffDust_setDrawFunc(this, func_8099E784);
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


void EffDust_Destroy(Actor *thisx, GlobalContext *globalCtx) {
}


void EffDust_UpdateFunc_8099DB28(EffDust *this, GlobalContext *globalCtx) {
    s16 theta;
    s16 fi;

    f32 *distanceTraveled;

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

    for (j = 0; j < 3; j++){
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


void EffDust_UpdateFunc_8099DD74(EffDust *this, GlobalContext *globalCtx) {
    s16 theta;
    s16 fi;

    f32 *distanceTraveled;

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

    for (j = 0; j < 2; j++){
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


void func_8099DFC0(EffDust *this, GlobalContext *globalCtx) {
    s16 theta;

    Player *player;
    Actor *parent;

    f32 *distanceTraveled;

    s32 i;
    s32 j;

    player = PLAYER;

    parent = this->actor.parent;
    distanceTraveled = this->distanceTraveled;

    if(parent == NULL || parent->update == NULL || !(player->stateFlags1 & 0x1000)){
        if (this->life != 0) {
            this->life -= 1;
        }
        else {
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

    this->actor.posRot.pos = parent->posRot.pos;

    for(j = 0; j < 3; j++){
        i = this->index & 0x3F;
        if (this->distanceTraveled[i] >= 1.0f) {

            theta = Rand_CenteredFloat(65536.0f);
            switch (this->actor.params) {
            case 2:
                this->initialPositions[i].x = (Rand_ZeroOne() * 4500.0f) + 700.0f;
                if (this->initialPositions[i].x > 3000.0f) {
                    this->initialPositions[i].y = (3000.0f * Rand_ZeroOne()) * Math_SinS(theta);
                    this->initialPositions[i].z = (3000.0f * Rand_ZeroOne()) * Math_CosS(theta);
                } else {
                    this->initialPositions[i].y = 3000.0f * Math_SinS(theta);
                    this->initialPositions[i].z = 3000.0f * Math_CosS(theta);
                }
                break;

            case 3:
                this->initialPositions[i].x = (Rand_ZeroOne() * 2500.0f) + 700.0f;
                if (this->initialPositions[i].x > 2000.0f) {
                    this->initialPositions[i].y = (2000.0f * Rand_ZeroOne()) * Math_SinS(theta);
                    this->initialPositions[i].z = (2000.0f * Rand_ZeroOne()) *  Math_CosS(theta);
                } else {
                    this->initialPositions[i].y = 2000.0f * Math_SinS(theta);
                    this->initialPositions[i].z = 2000.0f * Math_CosS(theta);
                }
                break;

            case 4:
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


void EffDust_Update(Actor *thisx, GlobalContext *globalCtx) {
    EffDust *this = THIS;
    this->updateFunc(this, globalCtx);
}

#ifdef NON_MATCHING
void func_8099E4F4(EffDust *this, GlobalContext *globalCtx) {
    Vec3f *initialPositions;

    f32 temp_f0;
    f32 dx;
    f32 dy;
    f32 dz;

    s32 i;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_eff_dust.c", 425);

    func_80093D18(globalCtx->state.gfxCtx);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 0x80, 0x80, 0x80, 0xFF);
    gDPSetEnvColor(POLY_XLU_DISP++, 0x80, 0x80, 0x80, 0x00);
    gSPSegment(POLY_XLU_DISP++, 0x08, D_8099EB60);

    for (i = 0; i < 0x40; i++) {
        if (this->distanceTraveled[i] < 1.0f) {
            dx = this->dx;
            dy = this->dy;
            dz = this->dz;

            temp_f0 = 1.0f - (this->distanceTraveled[i] * this->distanceTraveled[i]);
            
            initialPositions = &this->initialPositions[i];

            Matrix_Translate(
                //this->actor.posRot.pos.x + (initialPositions->x * ((temp_f2 * temp_f0) + (1.0f - temp_f2))),
                //this->actor.posRot.pos.x + (initialPositions->x * ((dx * temp_f0) + (1.0f - dx))),
                this->actor.posRot.pos.x + (initialPositions->x * ((this->dx * temp_f0) + (1.0f - this->dx))),
                //this->actor.posRot.pos.y + (initialPositions->y * ((temp_f16 * temp_f0) + (1.0f - temp_f16))),
                //this->actor.posRot.pos.y + (initialPositions->y * ((dy * temp_f0) + (1.0f - dy))),
                this->actor.posRot.pos.y + (initialPositions->y * ((this->dy * temp_f0) + (1.0f - this->dy))),
                //this->actor.posRot.pos.z + (initialPositions->z * ((temp_f18 * temp_f0) + (1.0f - temp_f18))),
                //this->actor.posRot.pos.z + (initialPositions->z * ((dz * temp_f0) + (1.0f - dz))),
                this->actor.posRot.pos.z + (initialPositions->z * ((this->dz * temp_f0) + (1.0f - this->dz))),
                MTXMODE_NEW
                );

            Matrix_Scale(this->scalingFactor, this->scalingFactor, this->scalingFactor, MTXMODE_APPLY);

            Matrix_Mult(&globalCtx->mf_11DA0, MTXMODE_APPLY);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_eff_dust.c", 449), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_04037880));
        }
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_eff_dust.c", 458);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Eff_Dust/func_8099E4F4.s")
#endif

void func_8099E784(EffDust *this, GlobalContext *globalCtx) {
    EffDust *this2;
    GlobalContext *glb_ctx;
    GraphicsContext *gfx_ctx;

    f32 *distanceTraveled;
    Vec3f *initialPositions;

    s32 i;
    f32 aux;

    Player *player;

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

            // TODO: find a way to match without needing to do this.
            this2 = this;
            if (!this2) { }

            aux = 1.0f - (*distanceTraveled * *distanceTraveled);

            Matrix_Mult(&player->mf_9E0, MTXMODE_NEW);
            
            Matrix_Translate(
                initialPositions->x * ((this2->dx * aux) + (1.0f - this2->dx)), 
                initialPositions->y * (1.0f - *distanceTraveled) + 320.0f, 
                initialPositions->z * (1.0f - *distanceTraveled) + -20.0f, 
                MTXMODE_APPLY
                );

            Matrix_Scale(*distanceTraveled * this2->scalingFactor, *distanceTraveled * this2->scalingFactor, *distanceTraveled * this2->scalingFactor, MTXMODE_APPLY);

            func_800D1FD4(&glb_ctx->mf_11DA0);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfx_ctx, "../z_eff_dust.c", 506), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_04037880));
        }

        initialPositions++;
        distanceTraveled++;
    }

    CLOSE_DISPS(gfx_ctx, "../z_eff_dust.c", 515);
}

void EffDust_Draw(Actor *thisx, GlobalContext *globalCtx) {
    EffDust *this = THIS;
    this->drawFunc(this, globalCtx);
}
