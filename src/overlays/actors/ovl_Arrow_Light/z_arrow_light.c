/*
 * File: z_arrow_light.c
 * Overlay: ovl_Arrow_Light
 * Description: Light Arrow. Spawned by and attached to a normal arrow.
 */

#include "z_arrow_light.h"

#include "overlays/actors/ovl_En_Arrow/z_en_arrow.h"

#define FLAGS 0x02000010

#define THIS ((ArrowLight*)thisx)

void ArrowLight_Init(Actor* thisx, GlobalContext* globalCtx);
void ArrowLight_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ArrowLight_Update(Actor* thisx, GlobalContext* globalCtx);
void ArrowLight_Draw(Actor* thisx, GlobalContext* globalCtx);

void ArrowLight_Charge(ArrowLight* this, GlobalContext* globalCtx);
void ArrowLight_Fly(ArrowLight* this, GlobalContext* globalCtx);
void ArrowLight_Hit(ArrowLight* this, GlobalContext* globalCtx);

#include "z_arrow_light_gfx.c"

const ActorInit Arrow_Light_InitVars = {
    ACTOR_ARROW_LIGHT,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(ArrowLight),
    (ActorFunc)ArrowLight_Init,
    (ActorFunc)ArrowLight_Destroy,
    (ActorFunc)ArrowLight_Update,
    (ActorFunc)ArrowLight_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(unk_F4, 2000, ICHAIN_STOP),
};

void ArrowLight_SetupAction(ArrowLight* this, ArrowLightActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void ArrowLight_Init(Actor* thisx, GlobalContext* globalCtx) {
    ArrowLight* this = THIS;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    this->radius = 0;
    this->unk_160 = 1.0f;
    ArrowLight_SetupAction(this, ArrowLight_Charge);
    Actor_SetScale(&this->actor, 0.01f);
    this->alpha = 0x82;
    this->timer = 0;
    this->unk_164 = 0.0f;
}

void ArrowLight_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    func_800876C8(globalCtx);
    // Translates to: "Disappearance"
    LOG_STRING("消滅", "../z_arrow_light.c", 403);
}

void ArrowLight_Charge(ArrowLight* this, GlobalContext* globalCtx) {
    EnArrow* arrow;

    arrow = (EnArrow*)this->actor.attachedA;
    if ((arrow == NULL) || (arrow->actor.update == NULL)) {
        Actor_Kill(&this->actor);
        return;
    }

    if (this->radius < 10) {
        this->radius += 1;
    }
    // copy position and rotation from the attached arrow
    this->actor.posRot.pos = arrow->actor.posRot.pos;
    this->actor.shape.rot = arrow->actor.shape.rot;

    func_8002F974(&this->actor, NA_SE_PL_ARROW_CHARGE_LIGHT);

    // If arrow's attached is null, Link has fired the arrow
    if (arrow->actor.attachedA == NULL) {
        this->unkPos = this->actor.posRot.pos;
        this->radius = 10;
        ArrowLight_SetupAction(this, ArrowLight_Fly);
        this->alpha = 0xFF;
    }
}

void func_80869E6C(Vec3f* unkPos, Vec3f* lightPos, f32 scale) {
    unkPos->x += ((lightPos->x - unkPos->x) * scale);
    unkPos->y += ((lightPos->y - unkPos->y) * scale);
    unkPos->z += ((lightPos->z - unkPos->z) * scale);
}

void ArrowLight_Hit(ArrowLight* this, GlobalContext* globalCtx) {
    f32 scale;
    f32 offset;
    u16 timer;

    if (this->actor.unk_F0 < 50.0f) {
        scale = 10.0f;
    } else {
        if (950.0f < this->actor.unk_F0) {
            scale = 310.0f;
        } else {
            scale = this->actor.unk_F0;
            scale = ((scale - 50.0f) * (1.0f / 3.0f)) + 10.0f;
        }
    }

    timer = this->timer;
    if (timer != 0) {
        this->timer -= 1;

        if (this->timer >= 8) {
            offset = ((this->timer - 8) * (1.0f / 24.0f));
            offset = SQ(offset);
            this->radius = (((1.0f - offset) * scale) + 10.0f);
            this->unk_160 += ((2.0f - this->unk_160) * 0.1f);
            if (this->timer < 16) {
                if (1) {}
                this->alpha = ((this->timer * 0x23) - 0x118);
            }
        }
    }

    if (this->timer >= 9) {
        if (this->unk_164 < 1.0f) {
            this->unk_164 += 0.25f;
        }
    } else {
        if (this->unk_164 > 0.0f) {
            this->unk_164 -= 0.125f;
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

void ArrowLight_Fly(ArrowLight* this, GlobalContext* globalCtx) {
    EnArrow* arrow;
    f32 distanceScaled;
    s32 pad;

    arrow = (EnArrow*)this->actor.attachedA;
    if ((arrow == NULL) || (arrow->actor.update == NULL)) {
        Actor_Kill(&this->actor);
        return;
    }
    // copy position and rotation from the attached arrow
    this->actor.posRot.pos = arrow->actor.posRot.pos;
    this->actor.shape.rot = arrow->actor.shape.rot;
    distanceScaled = Math_Vec3f_DistXYZ(&this->unkPos, &this->actor.posRot.pos) * (1.0f / 24.0f);
    this->unk_160 = distanceScaled;
    if (distanceScaled < 1.0f) {
        this->unk_160 = 1.0f;
    }
    func_80869E6C(&this->unkPos, &this->actor.posRot.pos, 0.05f);

    if (arrow->hitWall & 1) {
        Audio_PlayActorSound2(&this->actor, NA_SE_IT_EXPLOSION_LIGHT);
        ArrowLight_SetupAction(this, ArrowLight_Hit);
        this->timer = 32;
        this->alpha = 0xFF;
    } else if (arrow->timer < 34) {
        if (this->alpha < 0x23) {
            Actor_Kill(&this->actor);
        } else {
            this->alpha -= 0x19;
        }
    }
}

void ArrowLight_Update(Actor* thisx, GlobalContext* globalCtx) {
    ArrowLight* this = THIS;

    if (globalCtx->msgCtx.msgMode == 0xD || globalCtx->msgCtx.msgMode == 0x11) {
        Actor_Kill(&this->actor);
    } else {
        this->actionFunc(this, globalCtx);
    }
}

void ArrowLight_Draw(Actor* thisx, GlobalContext* globalCtx) {
    ArrowLight* this = THIS;
    s32 pad;
    u32 stateFrames;
    GraphicsContext* gfxCtx;
    Actor* tranform;
    EnArrow* arrow;
    Gfx* dispRefs[4];

    stateFrames = globalCtx->state.frames;
    arrow = (EnArrow*)this->actor.attachedA;
    if (1) {}

    if ((arrow != NULL) && (arrow->actor.update != NULL) && (this->timer < 255)) {
        if (1) {}
        tranform = (arrow->hitWall & 2) ? &this->actor : &arrow->actor;
        // clang-format off
        gfxCtx = globalCtx->state.gfxCtx; Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_arrow_light.c", 598);
        // clang-format on
        Matrix_Translate(tranform->posRot.pos.x, tranform->posRot.pos.y, tranform->posRot.pos.z, MTXMODE_NEW);
        Matrix_RotateY(tranform->shape.rot.y * (M_PI / 32768), MTXMODE_APPLY);
        Matrix_RotateX(tranform->shape.rot.x * (M_PI / 32768), MTXMODE_APPLY);
        Matrix_RotateZ(tranform->shape.rot.z * (M_PI / 32768), MTXMODE_APPLY);
        Matrix_Scale(0.01f, 0.01f, 0.01f, MTXMODE_APPLY);

        // Draw yellow effect over the screen when arrow hits
        if (this->unk_164 > 0) {
            gfxCtx->polyXlu.p = func_800937C0(gfxCtx->polyXlu.p);
            gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, (s32)(30.0f * this->unk_164) & 0xFF,
                            (s32)(40.0f * this->unk_164) & 0xFF, 0, (s32)(150.0f * this->unk_164) & 0xFF);
            gDPSetAlphaDither(gfxCtx->polyXlu.p++, G_AD_DISABLE);
            gDPSetColorDither(gfxCtx->polyXlu.p++, G_CD_DISABLE);
            gDPFillRectangle(gfxCtx->polyXlu.p++, 0, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1);
        }

        // Draw light on the arrow
        func_80093D84(globalCtx->state.gfxCtx);
        gDPSetPrimColor(gfxCtx->polyXlu.p++, 0x80, 0x80, 0xFF, 0xFF, 0xAA, this->alpha);
        gDPSetEnvColor(gfxCtx->polyXlu.p++, 0xFF, 0xFF, 0x00, 0x80);
        Matrix_RotateRPY(0x4000, 0x0, 0x0, MTXMODE_APPLY);
        if (this->timer != 0) {
            Matrix_Translate(0.0f, 0.0f, 0.0f, MTXMODE_APPLY);
        } else {
            Matrix_Translate(0.0f, 1500.0f, 0.0f, MTXMODE_APPLY);
        }
        Matrix_Scale(this->radius * 0.2f, this->unk_160 * 4.0f, this->radius * 0.2f, MTXMODE_APPLY);
        Matrix_Translate(0.0f, -700.0f, 0.0f, MTXMODE_APPLY);
        gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_arrow_light.c", 648),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(gfxCtx->polyXlu.p++, sTextureDL);
        gSPDisplayList(gfxCtx->polyXlu.p++,
                       Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 511 - (stateFrames * 5) % 512, 0, 4, 32, 1,
                                        511 - (stateFrames * 10) % 512, 511 - (stateFrames * 30) % 512, 8, 16));
        gSPDisplayList(gfxCtx->polyXlu.p++, sVertexDL);
        Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_arrow_light.c", 664);
    }
}
