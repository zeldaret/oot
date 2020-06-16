/*
 * File: z_arrow_fire.c
 * Overlay: ovl_Arrow_Fire
 * Description: Fire Arrow. Spawned by and attached to a normal arrow.
 */

#include "z_arrow_fire.h"
#include "overlays/actors/ovl_En_Arrow/z_en_arrow.h"

#define FLAGS 0x02000010

#define THIS ((ArrowFire*)thisx)

void ArrowFire_Init(Actor* thisx, GlobalContext* globalCtx);
void ArrowFire_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ArrowFire_Update(Actor* thisx, GlobalContext* globalCtx);
void ArrowFire_Draw(Actor* thisx, GlobalContext* globalCtx);

void ArrowFire_Charge(ArrowFire* this, GlobalContext* globalCtx);
void ArrowFire_Fly(ArrowFire* this, GlobalContext* globalCtx);
void ArrowFire_Hit(ArrowFire* this, GlobalContext* globalCtx);

#include "z_arrow_fire_gfx.c"

const ActorInit Arrow_Fire_InitVars = {
    ACTOR_ARROW_FIRE,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(ArrowFire),
    (ActorFunc)ArrowFire_Init,
    (ActorFunc)ArrowFire_Destroy,
    (ActorFunc)ArrowFire_Update,
    (ActorFunc)ArrowFire_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(unk_F4, 2000, ICHAIN_STOP),
};

void ArrowFire_SetupAction(ArrowFire* this, ArrowFireActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void ArrowFire_Init(Actor* thisx, GlobalContext* globalCtx) {
    ArrowFire* this = THIS;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    this->radius = 0;
    this->unk_158 = 1.0f;
    ArrowFire_SetupAction(&this->actor, ArrowFire_Charge);
    Actor_SetScale(this, 0.01f);
    this->alpha = 0xA0;
    this->timer = 0;
    this->unk_15C = 0.0f;
}

void ArrowFire_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    func_800876C8(globalCtx);
    // Translates to: "Disappearance"
    LOG_STRING("消滅", "../z_arrow_fire.c", 421);
}

void ArrowFire_Charge(ArrowFire* this, GlobalContext* globalCtx) {
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

    func_8002F974(&this->actor, NA_SE_PL_ARROW_CHARGE_FIRE);

    // If arrow's attached is null, Link has fired the arrow
    if (arrow->actor.attachedA == NULL) {
        this->unkPos = this->actor.posRot.pos;
        this->radius = 10;
        ArrowFire_SetupAction(this, ArrowFire_Fly);
        this->alpha = 0xFF;
    }
}

void func_80865ECC(Vec3f* unkPos, Vec3f* firePos, f32 scale) {
    unkPos->x += ((firePos->x - unkPos->x) * scale);
    unkPos->y += ((firePos->y - unkPos->y) * scale);
    unkPos->z += ((firePos->z - unkPos->z) * scale);
}

void ArrowFire_Hit(ArrowFire* this, GlobalContext* globalCtx) {
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

void ArrowFire_Fly(ArrowFire* this, GlobalContext* globalCtx) {
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
    this->unk_158 = distanceScaled;
    if (distanceScaled < 1.0f) {
        this->unk_158 = 1.0f;
    }
    func_80865ECC(&this->unkPos, &this->actor.posRot.pos, 0.05f);

    if (arrow->hitWall & 1) {
        Audio_PlayActorSound2(&this->actor, NA_SE_IT_EXPLOSION_FRAME);
        ArrowFire_SetupAction(this, ArrowFire_Hit);
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

void ArrowFire_Update(Actor* thisx, GlobalContext* globalCtx) {
    ArrowFire* this = THIS;

    if (globalCtx->msgCtx.msgMode == 0xD || globalCtx->msgCtx.msgMode == 0x11) {
        Actor_Kill(&this->actor);
    } else {
        this->actionFunc(this, globalCtx);
    }
}

void ArrowFire_Draw(Actor* thisx, GlobalContext* globalCtx) {
    ArrowFire* this = THIS;
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
        gfxCtx = globalCtx->state.gfxCtx; Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_arrow_fire.c", 618);
        // clang-format on
        Matrix_Translate(tranform->posRot.pos.x, tranform->posRot.pos.y, tranform->posRot.pos.z, MTXMODE_NEW);
        Matrix_RotateY(tranform->shape.rot.y * (M_PI / 32768), MTXMODE_APPLY);
        Matrix_RotateX(tranform->shape.rot.x * (M_PI / 32768), MTXMODE_APPLY);
        Matrix_RotateZ(tranform->shape.rot.z * (M_PI / 32768), MTXMODE_APPLY);
        Matrix_Scale(0.01f, 0.01f, 0.01f, MTXMODE_APPLY);

        // Draw red effect over the screen when arrow hits
        if (this->unk_15C > 0) {
            gfxCtx->polyXlu.p = func_800937C0(gfxCtx->polyXlu.p);
            gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, (s32)(40.0f * this->unk_15C) & 0xFF, 0x00, 0x00,
                            (s32)(150.0f * this->unk_15C) & 0xFF);
            gDPSetAlphaDither(gfxCtx->polyXlu.p++, G_AD_DISABLE);
            gDPSetColorDither(gfxCtx->polyXlu.p++, G_CD_DISABLE);
            gDPFillRectangle(gfxCtx->polyXlu.p++, 0, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1);
        }

        // Draw fire on the arrow
        func_80093D84(globalCtx->state.gfxCtx);
        gDPSetPrimColor(gfxCtx->polyXlu.p++, 0x80, 0x80, 0xFF, 0xC8, 0x00, this->alpha);
        gDPSetEnvColor(gfxCtx->polyXlu.p++, 0xFF, 0x00, 0x00, 0x80);
        Matrix_RotateRPY(0x4000, 0x0, 0x0, MTXMODE_APPLY);
        if (this->timer != 0) {
            Matrix_Translate(0.0f, 0.0f, 0.0f, MTXMODE_APPLY);
        } else {
            Matrix_Translate(0.0f, 1500.0f, 0.0f, MTXMODE_APPLY);
        }
        Matrix_Scale(this->radius * 0.2f, this->unk_158 * 4.0f, this->radius * 0.2f, MTXMODE_APPLY);
        Matrix_Translate(0.0f, -700.0f, 0.0f, MTXMODE_APPLY);
        gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_arrow_fire.c", 666),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(gfxCtx->polyXlu.p++, sTextureDL);
        gSPDisplayList(gfxCtx->polyXlu.p++,
                       Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 255 - (stateFrames * 2) % 256, 0, 64, 32, 1,
                                        255 - stateFrames % 256, 511 - (stateFrames * 10) % 512, 64, 64));
        gSPDisplayList(gfxCtx->polyXlu.p++, sVertexDL);
        Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_arrow_fire.c", 682);
    }
}
