/*
 * File: z_bg_po_syokudai.c
 * Overlay: ovl_Bg_Po_Syokudai
 * Description: Golden Torch Stand (Poe Sisters)
 */

#include "z_bg_po_syokudai.h"

#define FLAGS 0x00000000

#define THIS ((BgPoSyokudai*)thisx)

typedef enum {
    POE_FLAME_PURPLE, // Meg
    POE_FLAME_RED,    // Joelle
    POE_FLAME_BLUE,   // Beth
    POE_FLAME_GREEN   // Amy
} PoeFlameColor;

#define POE_TORCH_FLAG 0x1C

void BgPoSyokudai_Init(Actor* thisx, GlobalContext* globalCtx);
void BgPoSyokudai_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgPoSyokudai_Update(Actor* thisx, GlobalContext* globalCtx);
void BgPoSyokudai_Draw(Actor* thisx, GlobalContext* globalCtx);

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_METAL_SHIELD, 0x00, 0x0D, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 12, 60, 0, { 0, 0, 0 } },
};

static Color_RGBA8 sPrimColors[] = {
    { 255, 170, 255, 255 },
    { 255, 200, 0, 255 },
    { 0, 170, 255, 255 },
    { 170, 255, 0, 255 },
};

static Color_RGBA8 sEnvColors[] = {
    { 100, 0, 255, 255 },
    { 255, 0, 0, 255 },
    { 0, 0, 255, 255 },
    { 0, 150, 0, 255 },
};

const ActorInit Bg_Po_Syokudai_InitVars = {
    ACTOR_BG_PO_SYOKUDAI,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_SYOKUDAI,
    sizeof(BgPoSyokudai),
    (ActorFunc)BgPoSyokudai_Init,
    (ActorFunc)BgPoSyokudai_Destroy,
    (ActorFunc)BgPoSyokudai_Update,
    (ActorFunc)BgPoSyokudai_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 1000, ICHAIN_STOP),
};

extern Gfx D_060003A0[];
extern Gfx D_0404D4E0[];

void BgPoSyokudai_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgPoSyokudai* this = THIS;
    s32 pad;

    Actor_ProcessInitChain(&this->actor, sInitChain);

    this->flameColor = (THIS->actor.params >> 8) & 0xFF;
    this->actor.params &= 0x3F;

    this->actor.colChkInfo.mass = 0xFF;

    this->lightNode = LightContext_InsertLight(globalCtx, &globalCtx->lightCtx, &this->lightInfo);
    Lights_PointGlowSetInfo(&this->lightInfo, this->actor.posRot.pos.x, (s16)this->actor.posRot.pos.y + 65,
                            this->actor.posRot.pos.z, 0, 0, 0, 0);

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);

    this->collider.dim.pos.x = this->actor.posRot.pos.x;
    this->collider.dim.pos.y = this->actor.posRot.pos.y;
    this->collider.dim.pos.z = this->actor.posRot.pos.z;

    if (this->flameColor == POE_FLAME_PURPLE && Flags_GetSwitch(globalCtx, POE_TORCH_FLAG + POE_FLAME_GREEN) &&
        Flags_GetSwitch(globalCtx, POE_TORCH_FLAG + POE_FLAME_BLUE) &&
        Flags_GetSwitch(globalCtx, POE_TORCH_FLAG + POE_FLAME_RED) && !Flags_GetSwitch(globalCtx, this->actor.params)) {

        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_PO_SISTERS, 119.0f, 225.0f, -1566.0f, 0, 0, 0,
                    this->actor.params);
        globalCtx->envCtx.unk_BF = 0x4;

    } else if (!Flags_GetSwitch(globalCtx, POE_TORCH_FLAG + POE_FLAME_PURPLE) && !Flags_GetSwitch(globalCtx, 0x1B)) {

        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_PO_SISTERS, this->actor.posRot.pos.x,
                    this->actor.posRot.pos.y + 52.0f, this->actor.posRot.pos.z, 0, 0, 0,
                    (this->flameColor << 8) + this->actor.params + 0x1000);

    } else if (!Flags_GetSwitch(globalCtx, this->actor.params)) {
        if (globalCtx->envCtx.unk_BF == 0xFF) {
            globalCtx->envCtx.unk_BF = 4;
        }
    }

    this->flameTextureScroll = (s16)(Math_Rand_ZeroOne() * 20.0f);
}

void BgPoSyokudai_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgPoSyokudai* this = THIS;

    LightContext_RemoveLight(globalCtx, &globalCtx->lightCtx, this->lightNode);
    Collider_DestroyCylinder(globalCtx, &this->collider);

    if (globalCtx->envCtx.unk_BF != 0xFF) {
        globalCtx->envCtx.unk_BF = 0xFF;
    }
}

void BgPoSyokudai_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgPoSyokudai* this = THIS;
    s32 pad;

    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    if (Flags_GetSwitch(globalCtx, this->actor.params)) {
        func_8002F974(&this->actor, NA_SE_EV_TORCH - SFX_FLAG);
    }
    this->flameTextureScroll++;
}

void BgPoSyokudai_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BgPoSyokudai* this = THIS;
    f32 lightBrightness;
    u8 red;
    u8 green;
    u8 blue;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_po_syokudai.c", 315);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_po_syokudai.c", 319),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(oGfxCtx->polyOpa.p++, D_060003A0);

    if (Flags_GetSwitch(globalCtx, this->actor.params)) {
        Color_RGBA8* primColor = &sPrimColors[this->flameColor];
        Color_RGBA8* envColor = &sEnvColors[this->flameColor];

        lightBrightness = (0.3f * Math_Rand_ZeroOne()) + 0.7f;

        red = (u8)(primColor->r * lightBrightness);
        green = (u8)(primColor->g * lightBrightness);
        blue = (u8)(primColor->b * lightBrightness);

        Lights_PointSetColorAndRadius(&this->lightInfo, red, green, blue, 200);

        func_80093D84(globalCtx->state.gfxCtx);
        gSPSegment(oGfxCtx->polyXlu.p++, 0x08,
                   Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 32, 64, 1, 0,
                                    (this->flameTextureScroll * -20) & 0x1FF, 32, 128));

        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x80, 0x80, primColor->r, primColor->g, primColor->b, 255);
        gDPSetEnvColor(oGfxCtx->polyXlu.p++, envColor->r, envColor->g, envColor->b, 255);

        Matrix_Translate(0.0f, 52.0f, 0.0f, MTXMODE_APPLY);
        Matrix_RotateY((s16)(func_8005A9F4(ACTIVE_CAM) - this->actor.shape.rot.y + 0x8000) * (M_PI / 0x8000),
                       MTXMODE_APPLY);
        Matrix_Scale(0.0027f, 0.0027f, 0.0027f, MTXMODE_APPLY);

        gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_po_syokudai.c", 368),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(oGfxCtx->polyXlu.p++, D_0404D4E0);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_po_syokudai.c", 373);
}
