/*
 * File: z_en_light.c
 * Overlay: ovl_En_Light
 * Description: Flame
 */

#include "z_en_light.h"

#define FLAGS 0x00000000

#define THIS ((EnLight*)thisx)

void EnLight_Init(Actor* thisx, GlobalContext* globalCtx);
void EnLight_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnLight_Update(Actor* thisx, GlobalContext* globalCtx);
void EnLight_Draw(Actor* thisx, GlobalContext* globalCtx);
void EnLight_UpdateSwitch(Actor* thisx, GlobalContext* globalCtx);

const ActorInit En_Light_InitVars = {
    ACTOR_EN_LIGHT,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnLight),
    (ActorFunc)EnLight_Init,
    (ActorFunc)EnLight_Destroy,
    (ActorFunc)EnLight_Update,
    (ActorFunc)EnLight_Draw,
};

typedef struct {
    /* 0x00 */ Color_RGBA8_n primColor;
    /* 0x04 */ Color_RGB8 envColor;
    /* 0x07 */ u8 scale;
} FlameParams;

FlameParams D_80A9E840[] = {
    { { 255, 200, 0, 255 }, { 255, 0, 0 }, 75 },     { { 255, 200, 0, 255 }, { 255, 0, 0 }, 75 },
    { { 0, 170, 255, 255 }, { 0, 0, 255 }, 75 },     { { 170, 255, 0, 255 }, { 0, 150, 0 }, 75 },
    { { 255, 200, 0, 255 }, { 255, 0, 0 }, 40 },     { { 255, 200, 0, 255 }, { 255, 0, 0 }, 75 },
    { { 170, 255, 0, 255 }, { 0, 150, 0 }, 75 },     { { 0, 170, 255, 255 }, { 0, 0, 255 }, 75 },
    { { 255, 0, 170, 255 }, { 200, 0, 0 }, 75 },     { { 255, 255, 170, 255 }, { 255, 50, 0 }, 75 },
    { { 255, 255, 170, 255 }, { 255, 255, 0 }, 75 }, { { 255, 255, 170, 255 }, { 100, 255, 0 }, 75 },
    { { 255, 170, 255, 255 }, { 255, 0, 100 }, 75 }, { { 255, 170, 255, 255 }, { 100, 0, 255 }, 75 },
    { { 170, 255, 255, 255 }, { 0, 0, 255 }, 75 },   { { 170, 255, 255, 255 }, { 0, 150, 255 }, 75 },
};

extern Gfx D_0404D4E0[];
extern Gfx D_05000440[];

void EnLight_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnLight* this = THIS;
    s16 yOffset;

    if (gSaveContext.gameMode == 3) {
        // special case for the credits
        yOffset = (this->actor.params < 0) ? 1 : 40;
        Lights_InitType0PositionalLight(&this->posLightInfo, this->actor.posRot.pos.x,
                                        yOffset + (s16)this->actor.posRot.pos.y, this->actor.posRot.pos.z, 255, 255,
                                        180, -1);
    } else {
        yOffset = (this->actor.params < 0) ? 1 : 40;
        Lights_InitType2PositionalLight(&this->posLightInfo, this->actor.posRot.pos.x,
                                        yOffset + (s16)this->actor.posRot.pos.y, this->actor.posRot.pos.z, 255, 255,
                                        180, -1);
    }

    this->lightNode = Lights_Insert(globalCtx, &globalCtx->lightCtx, &this->posLightInfo);
    Actor_SetScale(&this->actor, D_80A9E840[this->actor.params & 0xF].scale * 0.0001f);
    this->timer = (s32)(Math_Rand_ZeroOne() * 255.0f);

    if ((this->actor.params & 0x400) != 0) {
        this->actor.update = EnLight_UpdateSwitch;
    }
}

void EnLight_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnLight* this = THIS;

    Lights_Remove(globalCtx, &globalCtx->lightCtx, this->lightNode);
}

void EnLight_UpdatePosRot(EnLight* this, GlobalContext* globalCtx) {
    // update yaw for billboard effect
    this->actor.shape.rot.y = func_8005A9F4(ACTIVE_CAM) + 0x8000;

    if (this->actor.parent != NULL) {
        Math_Vec3f_Copy(&this->actor.posRot.pos, &(this->actor.parent)->posRot.pos);
        this->actor.posRot.pos.y += 17.0f;
    }

    this->timer++;
}

void EnLight_Update(Actor* thisx, GlobalContext* globalCtx) {
    f32 intensity;
    FlameParams* flameParams;
    s16 radius;
    EnLight* this = THIS;

    flameParams = &D_80A9E840[this->actor.params & 0xF];
    intensity = (Math_Rand_ZeroOne() * 0.5f) + 0.5f;
    radius = (this->actor.params < 0) ? 100 : 300;
    Lights_SetPositionalLightColorAndRadius(&this->posLightInfo, (flameParams->primColor.r * intensity),
                                            (flameParams->primColor.g * intensity),
                                            (flameParams->primColor.b * intensity), radius);
    EnLight_UpdatePosRot(this, globalCtx);

    if (this->actor.params >= 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EV_TORCH - SFX_FLAG);
    }
}

void EnLight_UpdateSwitch(Actor* thisx, GlobalContext* globalCtx) {
    f32 intensity;
    FlameParams* flameParams;
    EnLight* this = THIS;
    f32 scale;

    flameParams = &D_80A9E840[this->actor.params & 0xF];
    scale = this->actor.scale.x / ((f32)flameParams->scale * 0.0001);

    if ((this->actor.params & 0x800) != 0) {
        if (Flags_GetSwitch(globalCtx, (this->actor.params & 0x3F0) >> 4)) {
            Math_ApproxF(&scale, 1.0f, 0.05f);
        } else {
            if (scale < 0.1f) {
                Actor_SetScale(&this->actor, 0.0f);
                return;
            }
            Math_ApproxF(&scale, 0.0f, 0.05f);
        }
    } else {
        if (Flags_GetSwitch(globalCtx, (this->actor.params & 0x3F0) >> 4)) {
            if (scale < 0.1f) {
                Actor_SetScale(&this->actor, 0.0f);
                return;
            }
            Math_ApproxF(&scale, 0.0f, 0.05f);
        } else {
            Math_ApproxF(&scale, 1.0f, 0.05f);
        }
    }

    Actor_SetScale(&this->actor, ((f32)flameParams->scale * 0.0001) * scale);
    intensity = (Math_Rand_ZeroOne() * 0.5f) + 0.5f;
    Lights_SetPositionalLightColorAndRadius(&this->posLightInfo, (flameParams->primColor.r * intensity),
                                            (flameParams->primColor.g * intensity),
                                            (flameParams->primColor.b * intensity), 300.0f * scale);
    EnLight_UpdatePosRot(this, globalCtx);

    if (this->actor.params >= 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EV_TORCH - SFX_FLAG);
    }
}

void EnLight_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnLight* this = THIS;
    s32 pad;
    FlameParams* flameParams;
    Gfx* dList;

    if (1) {}

    flameParams = &D_80A9E840[this->actor.params & 0xF];

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_light.c", 441);

    func_80093D84(globalCtx->state.gfxCtx);

    if (this->actor.params >= 0) {
        gSPSegment(
            oGfxCtx->polyXlu.p++, 0x08,
            Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 32, 64, 1, 0, (this->timer * -20) & 511, 32, 128));

        dList = D_0404D4E0;
        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x80, 0x80, flameParams->primColor.r, flameParams->primColor.g,
                        flameParams->primColor.b, flameParams->primColor.a);
        gDPSetEnvColor(oGfxCtx->polyXlu.p++, flameParams->envColor.r, flameParams->envColor.g, flameParams->envColor.b,
                       0);
    } else {
        gSPSegment(oGfxCtx->polyXlu.p++, 0x08,
                   Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 16, 32, 1, ((this->timer * 2) & 63),
                                    (this->timer * -6) & 127 * 1, 16, 32));

        dList = D_05000440;
        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0xC0, 0xC0, 255, 200, 0, 0);
        gDPSetEnvColor(oGfxCtx->polyXlu.p++, 255, 0, 0, 0);
    }

    Matrix_RotateY((s16)((func_8005A9F4(ACTIVE_CAM) - this->actor.shape.rot.y) + 0x8000) * (M_PI / 32768.0f),
                   MTXMODE_APPLY);

    if (this->actor.params & 1) {
        Matrix_RotateY(M_PI, MTXMODE_APPLY);
    }

    Matrix_Scale(1.0f, 1.0f, 1.0f, MTXMODE_APPLY);
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_light.c", 488),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(oGfxCtx->polyXlu.p++, dList);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_light.c", 491);
}
