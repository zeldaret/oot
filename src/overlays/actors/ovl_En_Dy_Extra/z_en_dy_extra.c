/*
 * File: z_en_dy_extra.c
 * Overlay: ovl_En_Dy_Extra
 * Description: Spiral Beams (Great Fairy Fountains)
 */

#include "z_en_dy_extra.h"
#include "vt.h"

#define FLAGS 0x00000030

#define THIS ((EnDyExtra*)thisx)

extern UNK_TYPE D_0601BFB0;
extern UNK_TYPE D_0601C160;

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

void EnDyExtra_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void EnDyExtra_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnDyExtra* this = THIS;

    osSyncPrintf("\n\n");
    //"Big fairy effect"
    osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ 大妖精効果 ☆☆☆☆☆ %d\n" VT_RST, this->actor.params);

    this->unk_150 = this->actor.params;
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
    if (this->unk_154 == 0) {
        if (this->unk_152 != 0) {
            this->unk_154 = 0xC8;
            this->actionFunc = func_809FF840;
        }
    }
}

void func_809FF840(EnDyExtra* this, GlobalContext* globalCtx) {
    Math_SmoothScaleMaxF(&this->actor.gravity, 0.0f, 0.1f, 0.005f);
    if (this->unk_154 == 0 || this->unk_158 < 0.02f) {
        Actor_Kill(&this->actor);
    } else {
        Math_SmoothDownscaleMaxF(&this->unk_158, 0.03f, 0.05f);
        if (this->actor.posRot.pos.y < -55.0f) {
            this->actor.velocity.y = 0.0f;
        }
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
    static Color_RGBA8_n D_809FFC40[] = { 0xFFFFAAFF, 0xFFFFAAFF };
    static Color_RGBA8_n D_809FFC48[] = { 0xFF64FFFF, 0x64FFFFFF };
    static u8 D_809FFC50[] = { 0x02010102, 0x00000201, 0x00020100, 0x02010002, 0x01000201, 0x00020100, 0x01020000};
 
    EnDyExtra* this = THIS;

    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];
    
    Vtx* data = (Vtx*)SEGMENTED_TO_VIRTUAL(&D_0601BFB0);
    
    u8 unk[3];
    u32 i;
    s32 pad2;


    
    
    
    unk[0] = 0.0f;
    unk[1] = (s8)(this->unk_158 * 240.0f);
    unk[2] = (s8)(this->unk_158 * 255.0f);
 
    for (i = 0; i < 27; i++) {
        if (D_809FFC50[i]) {
            data[i].v.cn[3] = unk[D_809FFC50[i]];
        }
    }
    Graph_OpenDisps(dispRefs, gfxCtx, "../z_en_dy_extra.c", 0x126);
    func_80093D84(globalCtx->state.gfxCtx);
 
    gSPSegment(gfxCtx->polyXlu.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, globalCtx->state.frames * 2, 0, 0x20, 0x40, 1, globalCtx->state.frames, globalCtx->state.frames * -8,
                                0x10, 0x10));
 
    gDPPipeSync(gfxCtx->polyXlu.p++);
    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_dy_extra.c", 307),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    
    gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0x80, D_809FFC40[this->unk_150].r, D_809FFC40[this->unk_150].g, D_809FFC40[this->unk_150].b, 255);
 
    gDPSetEnvColor(gfxCtx->polyXlu.p++, D_809FFC48[this->unk_150].r, D_809FFC48[this->unk_150].g, D_809FFC48[this->unk_150].b, 128);
 
    gSPDisplayList(gfxCtx->polyXlu.p++, &D_0601C160);
    Graph_CloseDisps(dispRefs, gfxCtx, "../z_en_dy_extra.c", 325);
}
