/*
 * File: z_bg_haka_gate.c
 * Overlay: ovl_Bg_Haka_Gate
 * Description: Truth Spinner Puzzle (Shadow Temple)
 */

#include "z_bg_haka_gate.h"

#define FLAGS 0x00000000

#define THIS ((BgHakaGate*)thisx)

void BgHakaGate_Init(Actor* thisx, GlobalContext* globalCtx);
void BgHakaGate_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHakaGate_Update(Actor* thisx, GlobalContext* globalCtx);
void BgHakaGate_Draw(Actor* this, GlobalContext* globalCtx);

void func_8087C114(BgHakaGate* this, GlobalContext* globalCtx);
void func_8087C120(BgHakaGate* this, GlobalContext* globalCtx);
void func_8087C158(BgHakaGate* this, GlobalContext* globalCtx);
void func_8087C270(BgHakaGate* this, GlobalContext* globalCtx);
void func_8087C454(BgHakaGate* this, GlobalContext* globalCtx);
void func_8087C5D0(BgHakaGate* this, GlobalContext* globalCtx);
void func_8087C65C(BgHakaGate* this, GlobalContext* globalCtx);
void func_8087C6AC(BgHakaGate* this, GlobalContext* globalCtx);
void func_8087C73C(BgHakaGate* this, GlobalContext* globalCtx);
void func_8087C794(BgHakaGate* this, GlobalContext* globalCtx);
void func_8087C85C(BgHakaGate* this, GlobalContext* globalCtx);

extern Gfx D_0404D4E0[];
extern ColHeader D_0600A938;
extern Gfx D_0600F1B0[];
extern Gfx D_06010A10[];
extern Gfx D_06010C10[];
extern ColHeader D_06010E10;
extern ColHeader D_060131C4;

static s16 D_8087CCD0 = 0x100;
static u8 D_8087CCD4 = 1;
static f32 D_8087CCD8 = 0;

static s16 D_8087CFB0;

const ActorInit Bg_Haka_Gate_InitVars = {
    ACTOR_BG_HAKA_GATE,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_HAKA_OBJECTS,
    sizeof(BgHakaGate),
    (ActorFunc)BgHakaGate_Init,
    (ActorFunc)BgHakaGate_Destroy,
    (ActorFunc)BgHakaGate_Update,
    (ActorFunc)BgHakaGate_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

void BgHakaGate_Init(Actor *thisx, GlobalContext *globalCtx) {
    s32 pad;
    BgHakaGate* this = THIS;
    ColHeader* sp2C = NULL;

    Actor_ProcessInitChain(thisx, sInitChain);
    this->switchFlag = (thisx->params >> 8) & 0xFF;
    thisx->params &= 0xFF;
    DynaPolyInfo_SetActorMove(&this->dyna, 0);
    if (thisx->params == 3) {
        if (D_8087CCD0 != 0x100) {
            this->actionFunc = func_8087C794;
        } else if (ABS(thisx->shape.rot.y) < 0x4000) {
            if ((Math_Rand_ZeroOne() * 3.0f) < D_8087CCD4) {
                this->unk_170 = 1;
                D_8087CCD0 = thisx->shape.rot.y + 0x8000;
                if (Flags_GetSwitch(globalCtx, this->switchFlag)) {
                    this->actionFunc = func_8087C114;
                } else {
                    this->actionFunc = func_8087C73C;
                }
            } else {
                D_8087CCD4++;
                this->actionFunc = func_8087C794;
            }
        } else {
            this->actionFunc = func_8087C794;
        }
        this->frames = Math_Rand_ZeroOne() * 20.0f;
        thisx->flags |= 0x10;
        if (Flags_GetSwitch(globalCtx, this->switchFlag)) {
            this->unk_16E = 350;
        }
    } else {
        if (thisx->params == 0) {
            DynaPolyInfo_Alloc(&D_060131C4, &sp2C);
            this->timer = 0;
            D_8087CCD8 = 0.0f;
            if (Flags_GetSwitch(globalCtx, this->switchFlag)) {
                this->actionFunc = func_8087C120;
            } else {
                this->actionFunc = func_8087C158;
            }
        } else if (thisx->params == 1) {
            DynaPolyInfo_Alloc(&D_06010E10, &sp2C);
            if (Flags_GetSwitch(globalCtx, this->switchFlag)) {
                this->actionFunc = func_8087C114;
            } else {
                this->actionFunc = func_8087C454;
            }
        } else {
            DynaPolyInfo_Alloc(&D_0600A938, &sp2C);
            if (Flags_GetSwitch(globalCtx, this->switchFlag)) {
                this->actionFunc = func_8087C114;
                thisx->posRot.pos.y += 80.0f;
            } else {
                thisx->flags |= 0x10;
                Actor_SetHeight(thisx, 30.0f);
                this->actionFunc = func_8087C65C;
            }
        }
        this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, thisx, sp2C);
    }
}

void BgHakaGate_Destroy(Actor *thisx, GlobalContext *globalCtx) {
    s32 pad;
    BgHakaGate* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
    if (this->dyna.actor.params == 0) {
        D_8087CCD0 = 0x100;
        D_8087CCD4 = 1;
    }
}

void func_8087C114(BgHakaGate *this, GlobalContext *globalCtx) {
}

void func_8087C120(BgHakaGate *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;

    if (this->dyna.unk_150 != 0.0f) {
        player->stateFlags2  &= ~0x10;
        this->dyna.unk_150 = 0.0f;
    }
}

void func_8087C158(BgHakaGate *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;
    s32 phi_v0;
    f32 phi_f0;

    if (this->dyna.unk_150 != 0.0f) {
        if (this->timer == 0) {
            this->frames = this->dyna.actor.shape.rot.y - this->dyna.actor.yawTowardsLink;
            D_8087CCD8 = this->dyna.actor.xzDistFromLink;
            phi_f0 = (this->dyna.unk_150 >= 0.0f) ? 1.0f : -1.0f;
            phi_v0 = ((s16)(this->dyna.actor.yawTowardsLink - player->actor.shape.rot.y) > 0) ? -1 : 1;
            this->timer = phi_v0 * phi_f0;
            this->actionFunc = func_8087C270;
        } else {
            player->stateFlags2 &= ~0x10;
            this->dyna.unk_150 = 0.0f;
            if (this->timer != 0) {
                this->timer--;
            }
        }
    } else {
        if (D_8087CCD4 == 100) {
            this->actionFunc = func_8087C120;
        } else {
            this->timer = 0;
        }
    }
}

void func_8087C270(BgHakaGate *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;
    s32 sp28;
    s16 sp26;

    this->unk_16C++;
    this->unk_16C = CLAMP_MAX(this->unk_16C, 5);
    sp28 = Math_ApproxS(&this->unk_16E, 0x258, this->unk_16C);
    sp26 = this->unk_16E * this->timer;
    this->dyna.actor.shape.rot.y = (this->unk_170 + sp26) * 0.1f * 182.04445f;
    if ((player->stateFlags2 & 0x10) && (D_8087CCD8 > 0.0f)) {
        player->actor.posRot.pos.x = (Math_Sins(this->dyna.actor.shape.rot.y - this->frames) * D_8087CCD8) + this->dyna.actor.initPosRot.pos.x;
        player->actor.posRot.pos.z = (Math_Coss(this->dyna.actor.shape.rot.y - this->frames) * D_8087CCD8) + this->dyna.actor.initPosRot.pos.z;
    } else {
        D_8087CCD8 = 0.0f;
    }
    D_8087CFB0 = this->dyna.actor.shape.rot.y;
    if (sp28 != 0) {
        player->stateFlags2 &= ~0x10;
        this->unk_170 = (this->unk_170 + sp26) % 0xE10;
        this->unk_16C = 0;
        this->unk_16E = 0;
        this->timer = 5;
        this->actionFunc = func_8087C158;
        this->dyna.unk_150 = 0.0f;
    }
    func_8002F974(&this->dyna.actor, NA_SE_EV_ROCK_SLIDE - SFX_FLAG);
}

void func_8087C454(BgHakaGate *this, GlobalContext *globalCtx) {
    if ((D_8087CCD8 > 1.0f) && (D_8087CFB0 != 0)) {
        Player* player = PLAYER;
        f32 temp1;
        f32 temp2;
        f32 cos = Math_Coss(D_8087CFB0);
        f32 sin = Math_Sins(D_8087CFB0);
        f32 dx = player->actor.posRot.pos.x - this->dyna.actor.posRot.pos.x;
        f32 dz = player->actor.posRot.pos.z - this->dyna.actor.posRot.pos.z;

        temp1 = dx * cos - dz * sin;
        temp2 = dx * sin + dz * cos;

        if ((temp1 > 110.0f) || (fabsf(temp2) > 40.0f)) {
            s16 temp_v0 = D_8087CCD0 - D_8087CFB0;

            D_8087CCD8 = 0.0f;
            if (ABS(temp_v0) < 0x80) {
                Flags_SetSwitch(globalCtx, this->switchFlag);
                D_8087CCD4 = 100;
                this->actionFunc = func_8087C114;
            } else {
                func_80078884(0x4806);
                Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_GROUND_GATE_OPEN);
                func_8003EBF8(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
                this->timer = 60;
                this->actionFunc = func_8087C5D0;
            }
        }
    }
}

void func_8087C5D0(BgHakaGate *this, GlobalContext *globalCtx) {
    if (this->timer != 0) {
        this->timer--;
    }
    if (this->timer == 0) {
        if (Math_ApproxUpdateScaledS(&this->unk_16C, 0, 0x800)) {
            func_8003EC50(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
            this->actionFunc = func_8087C454;
        }
    } else {
        Math_ApproxUpdateScaledS(&this->unk_16C, 0x3000, 0x800);
    }
}

void func_8087C65C(BgHakaGate *this, GlobalContext *globalCtx) {
    if (Flags_GetSwitch(globalCtx, this->switchFlag)) {
        func_80080480(globalCtx, &this->dyna.actor);
        this->actionFunc = func_8087C6AC;
    }
}

void func_8087C6AC(BgHakaGate *this, GlobalContext *globalCtx) {
    if (Math_ApproxF(&this->dyna.actor.posRot.pos.y, this->dyna.actor.initPosRot.pos.y + 80.0f, 1.0f)) {
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_METALDOOR_STOP);
        this->dyna.actor.flags &= ~0x10;
        this->actionFunc = func_8087C114;
    } else {
        func_8002F974(&this->dyna.actor, NA_SE_EV_METALDOOR_SLIDE - SFX_FLAG);
    }
}

void func_8087C73C(BgHakaGate *this, GlobalContext *globalCtx) {
    if (Flags_GetSwitch(globalCtx, this->switchFlag) && Math_ApproxS(&this->unk_16E, 0x15E, 0x14)) {
        this->actionFunc = func_8087C114;
    }
}

void func_8087C794(BgHakaGate *this, GlobalContext *globalCtx) {
    if (Flags_GetSwitch(globalCtx, this->switchFlag)) {
        Math_ApproxS(&this->unk_16E, 0x15E, 0x14);
    }
    if (globalCtx->actorCtx.unk_03 != 0) {
        this->dyna.actor.flags |= 0x80;
    } else {
        this->dyna.actor.flags &= ~0x80;
    }
}

void BgHakaGate_Update(Actor *thisx, GlobalContext *globalCtx) {
    s32 pad;
    BgHakaGate* this = THIS;

    this->actionFunc(this, globalCtx);
    if (this->dyna.actor.params == 3) {
        this->frames++;
    }
}

void func_8087C85C(BgHakaGate *this, GlobalContext *globalCtx) {
    Actor* thisx = &this->dyna.actor;
    f32 scale;

    if (this->unk_16E > 0) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_haka_gate.c", 716);

        if(1){}

        func_80093D84(globalCtx->state.gfxCtx);
        gSPSegment(POLY_XLU_DISP++, 0x08, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 0x20, 0x40, 1, 0, (this->frames * -20) & 0x1FF, 0x20, 0x80));
        gDPSetPrimColor(POLY_XLU_DISP++, 0x80, 0x80, 255, 255, 0, 255);
        gDPSetEnvColor(POLY_XLU_DISP++, 255, 0, 0, 0);

        Matrix_Translate(thisx->posRot.pos.x, thisx->posRot.pos.y + 15.0f, thisx->posRot.pos.z, MTXMODE_NEW);
        Matrix_RotateY(Camera_GetCamDirYaw(ACTIVE_CAM) * (M_PI / 0x8000), 1);
        scale = this->unk_16E * 0.00001f;
        Matrix_Scale(scale, scale, scale, 1);
        gSPMatrix(POLY_XLU_DISP++,Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_haka_gate.c", 744), 2 );
        gSPDisplayList(POLY_XLU_DISP++, D_0404D4E0);
        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_haka_gate.c", 749);
    }
}

void BgHakaGate_Draw(Actor *thisx, GlobalContext *globalCtx) {
    static Gfx* D_8087CD00[] = {0x06012270, 0x06010A10, 0x0600A860, 0x0600F1B0};
    BgHakaGate* this = THIS;
    MtxF sp4C;

    if ((thisx->flags & 0x80) == 0x80) {
        Gfx_DrawDListXlu(globalCtx, D_0600F1B0);
    } else {
        func_80093D18(globalCtx->state.gfxCtx);
        if (thisx->params == 1) {
            OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_haka_gate.c", 781);
            Matrix_Get(&sp4C);
            Matrix_Translate(0.0f, 0.0f, -2000.0f, MTXMODE_APPLY);
            Matrix_RotateX(this->unk_16C * (M_PI / 0x8000), MTXMODE_APPLY);
            Matrix_Translate(0.0f, 0.0f, 2000.0f, 1);
            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_haka_gate.c", 788), 2);
            gSPDisplayList(POLY_OPA_DISP++, D_06010A10);
            Matrix_Put(&sp4C);
            Matrix_Translate(0.0f, 0.0f, 2000.0f, MTXMODE_APPLY);
            Matrix_RotateX(-this->unk_16C * (M_PI / 0x8000), MTXMODE_APPLY);
            Matrix_Translate(0.0f, 0.0f, -2000.0f, 1);
            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_haka_gate.c", 796), 2);
            gSPDisplayList(POLY_OPA_DISP++, D_06010C10);
            CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_haka_gate.c", 800);
        } else {
            Gfx_DrawDListOpa(globalCtx, D_8087CD00[thisx->params]);
        }
    }
    if (thisx->params == 3) {
        func_8087C85C(this, globalCtx);
    }
}
