/*
 * File: z_en_dy_extra.c
 * Overlay: ovl_En_Dy_Extra
 * Description: Spiral Beams (Great Fairy Fountains)
 */

#include "z_en_dy_extra.h"
#include "vt.h"

#define FLAGS 0x00000030

#define THIS ((EnDyExtra*)thisx)

void EnDyExtra_Init(Actor* thisx, GlobalContext* globalCtx);
void EnDyExtra_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnDyExtra_Update(Actor* thisx, GlobalContext* globalCtx);
void EnDyExtra_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_809FF7AC(EnDyExtra* this, GlobalContext* globalCtx);
void func_809FF840(EnDyExtra* this, GlobalContext* globalCtx);

const ActorInit En_Dy_Extra_InitVars = {
    ACTOR_EN_DY_EXTRA,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_DY_OBJ,
    sizeof(EnDyExtra),
    (ActorFunc)EnDyExtra_Init,
    (ActorFunc)EnDyExtra_Destroy,
    (ActorFunc)EnDyExtra_Update,
    (ActorFunc)EnDyExtra_Draw,
};

extern Vtx D_0601BFB0[];
extern Gfx D_0601C160[];

void EnDyExtra_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void EnDyExtra_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnDyExtra* this = THIS;

    osSyncPrintf("\n\n");
    // "Big fairy effect"
    osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ 大妖精効果 ☆☆☆☆☆ %d\n" VT_RST, this->actor.params);
    this->type = this->actor.params;
    this->unk_15C.x = 0.025f;
    this->unk_15C.y = 0.039f;
    this->unk_15C.z = 0.025f;
    this->unk_168 = this->actor.posRot.pos;
    this->actor.gravity = -0.2f;
    this->unk_158 = 1.0f;
    this->unk_154 = 0x3C;
    this->actionFunc = func_809FF7AC;
}

void func_809FF7AC(EnDyExtra* this, GlobalContext* globalCtx) {
    Math_SmoothScaleMaxF(&this->actor.gravity, 0.0f, 0.1f, 0.005f);
    if (this->actor.posRot.pos.y < -55.0f) {
        this->actor.velocity.y = 0.0f;
    }
    if (this->unk_154 == 0 && this->unk_152 != 0) {
        this->unk_154 = 0xC8;
        this->actionFunc = func_809FF840;
    }
}

void func_809FF840(EnDyExtra* this, GlobalContext* globalCtx) {
    Math_SmoothScaleMaxF(&this->actor.gravity, 0.0f, 0.1f, 0.005f);
    if (this->unk_154 == 0 || this->unk_158 < 0.02f) {
        Actor_Kill(&this->actor);
        return;
    }
    Math_SmoothDownscaleMaxF(&this->unk_158, 0.03f, 0.05f);
    if (this->actor.posRot.pos.y < -55.0f) {
        this->actor.velocity.y = 0.0f;
    }
}

void EnDyExtra_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnDyExtra* this = THIS;

    DECR(this->unk_154);
    this->actor.scale.x = this->unk_15C.x;
    this->actor.scale.y = this->unk_15C.y;
    this->actor.scale.z = this->unk_15C.z;
    Audio_PlayActorSound2(&this->actor, NA_SE_PL_SPIRAL_HEAL_BEAM - SFX_FLAG);
    this->actionFunc(this, globalCtx);
    Actor_MoveForward(&this->actor);
}

void EnDyExtra_Draw(Actor* thisx, GlobalContext* globalCtx) {
    static Color_RGBA8 primColors[] = { { 255, 255, 170, 255 }, { 255, 255, 170, 255 } };
    static Color_RGBA8 envColors[] = { { 255, 100, 255, 255 }, { 100, 255, 255, 255 } };
    static u8 D_809FFC50[] = { 0x02, 0x01, 0x01, 0x02, 0x00, 0x00, 0x02, 0x01, 0x00, 0x02, 0x01, 0x00, 0x02,
                               0x01, 0x00, 0x02, 0x01, 0x00, 0x02, 0x01, 0x00, 0x02, 0x01, 0x00, 0x01, 0x02 };
    EnDyExtra* this = THIS;
    s32 pad;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Vtx* vertices = SEGMENTED_TO_VIRTUAL(D_0601BFB0);
    s32 i;
    u8 unk[3];

    unk[0] = 0.0f;
    unk[1] = (s8)(this->unk_158 * 240.0f);
    unk[2] = (s8)(this->unk_158 * 255.0f);

    for (i = 0; i < 27; i++) {
        if (D_809FFC50[i]) {
            vertices[i].v.cn[3] = unk[D_809FFC50[i]];
        }
    }

    OPEN_DISPS(gfxCtx, "../z_en_dy_extra.c", 294);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPSegment(oGfxCtx->polyXlu.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, globalCtx->state.frames * 2, 0, 0x20, 0x40, 1,
                                globalCtx->state.frames, globalCtx->state.frames * -8, 0x10, 0x10));
    gDPPipeSync(oGfxCtx->polyXlu.p++);
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_dy_extra.c", 307),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0x80, primColors[this->type].r, primColors[this->type].g,
                    primColors[this->type].b, 255);
    gDPSetEnvColor(oGfxCtx->polyXlu.p++, envColors[this->type].r, envColors[this->type].g, envColors[this->type].b,
                   128);
    gSPDisplayList(oGfxCtx->polyXlu.p++, D_0601C160);

    CLOSE_DISPS(gfxCtx, "../z_en_dy_extra.c", 325);
}
