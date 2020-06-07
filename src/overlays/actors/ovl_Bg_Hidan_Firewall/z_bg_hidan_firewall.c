/*
 * File: z_bg_hidan_firewall.c
 * Overlay: ovl_Bg_Hidan_Firewall
 * Description: Proximity Triggered Flame Wall
 */

#include "z_bg_hidan_firewall.h"

#define FLAGS 0x00000000

#define THIS ((BgHidanFirewall*)thisx)

void BgHidanFirewall_Init(Actor* thisx, GlobalContext* globalCtx);
void BgHidanFirewall_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHidanFirewall_Update(Actor* thisx, GlobalContext* globalCtx);
void BgHidanFirewall_Draw(Actor* thisx, GlobalContext* globalCtx);

s32 BgHidanFirewall_CheckProximity(BgHidanFirewall* this, GlobalContext* globalCtx);
void BgHidanFirewall_Wait(BgHidanFirewall* this, GlobalContext* globalCtx);
void BgHidanFirewall_Countdown(BgHidanFirewall* this, GlobalContext* globalCtx);
void BgHidanFirewall_Erupt(BgHidanFirewall* this, GlobalContext* globalCtx);
void BgHidanFirewall_Collide(BgHidanFirewall* this, GlobalContext* globalCtx);
void BgHidanFirewall_ColliderFollowPlayer(BgHidanFirewall* this, GlobalContext* globalCtx);

extern Gfx D_0600DA80[];

const ActorInit Bg_Hidan_Firewall_InitVars = {
    ACTOR_BG_HIDAN_FIREWALL,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_HIDAN_OBJECTS,
    sizeof(BgHidanFirewall),
    (ActorFunc)BgHidanFirewall_Init,
    (ActorFunc)BgHidanFirewall_Destroy,
    (ActorFunc)BgHidanFirewall_Update,
    NULL,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x11, 0x00, 0x09, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x20000000, 0x01, 0x04 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x19, 0x00, 0x01 },
    { 30, 83, 0, { 0 } },
};

static CollisionCheckInfoInit sColChkInfoInit = {
    0x01,
    0x0050,
    0x0064,
    0xFF,
};

UNK_PTR D_80886D04[] = {
    0x06015D20, 0x06016120, 0x06016520, 0x06016920, 0x06016D20, 0x06017120, 0x06017520, 0x06017920,
};

void BgHidanFirewall_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanFirewall* this = THIS;

    this->actor.scale.x = 0.12f;
    this->actor.scale.z = 0.12f;
    this->actor.scale.y = 0.01f;

    this->unk_150 = 0;

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);

    this->collider.dim.pos.y = this->actor.posRot.pos.y;

    func_80061ED4(&this->actor.colChkInfo, NULL, &sColChkInfoInit);

    this->actionFunc = BgHidanFirewall_Wait;
}

void BgHidanFirewall_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanFirewall* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

s32 BgHidanFirewall_CheckProximity(BgHidanFirewall* this, GlobalContext* globalCtx) {
    Player* player;
    Vec3f distance;

    player = PLAYER;
    func_8002DBD0(&this->actor, &distance, &player->actor.posRot.pos);

    if (fabsf(distance.x) < 100.0f && fabsf(distance.z) < 120.0f) {
        return 1;
    }
    return 0;
}

void BgHidanFirewall_Wait(BgHidanFirewall* this, GlobalContext* globalCtx) {
    if (BgHidanFirewall_CheckProximity(this, globalCtx) != 0) {
        this->actor.draw = BgHidanFirewall_Draw;
        this->actor.params = 5;
        this->actionFunc = BgHidanFirewall_Countdown;
    }
}

void BgHidanFirewall_Countdown(BgHidanFirewall* this, GlobalContext* globalCtx) {

    if (this->actor.params != 0) {
        this->actor.params--;
    }
    if (this->actor.params == 0) {
        this->actionFunc = BgHidanFirewall_Erupt;
    }
}

void BgHidanFirewall_Erupt(BgHidanFirewall* this, GlobalContext* globalCtx) {
    if (BgHidanFirewall_CheckProximity(this, globalCtx) != 0) {
        Math_ApproxF(&this->actor.scale.y, 0.1f, 0.01f / 0.4f);
    } else {
        if (Math_ApproxF(&this->actor.scale.y, 0.01f, 0.01f) != 0) {
            this->actor.draw = NULL;
            this->actionFunc = BgHidanFirewall_Wait;
        } else {
            this->actor.params = 0;
        }
    }
}

void BgHidanFirewall_Collide(BgHidanFirewall* this, GlobalContext* globalCtx) {
    s16 phi_a3;

    if (func_8002E084(&this->actor, 0x4000) != 0) {
        phi_a3 = this->actor.shape.rot.y;
    } else {
        phi_a3 = this->actor.shape.rot.y + 0x8000;
    }
    func_8002F71C(globalCtx, &this->actor, 5.0f, phi_a3, 1.0f);
}

void BgHidanFirewall_ColliderFollowPlayer(BgHidanFirewall* this, GlobalContext* globalCtx) {
    Player* player;
    Vec3f sp30;
    f32 temp_ret;
    f32 sp28;
    f32 phi_f0;

    player = PLAYER;

    func_8002DBD0(&this->actor, &sp30, &player->actor.posRot.pos);
    if (sp30.x < -70.0f) {
        sp30.x = -70.0f;
    } else {
        if (70.0f < sp30.x) {
            phi_f0 = 70.0f;
        } else {
            phi_f0 = sp30.x;
        }
        sp30.x = phi_f0;
    }
    if (this->actor.params == 0) {
        if (0.0f < sp30.z) {
            sp30.z = -25.0f;
            this->actor.params = -1;
        } else {
            sp30.z = 25.0f;
            this->actor.params = 1;
        }
    } else {
        sp30.z = this->actor.params * 25.0f;
    }
    sp28 = Math_Sins(this->actor.shape.rot.y);
    temp_ret = Math_Coss(this->actor.shape.rot.y);
    this->collider.dim.pos.x = this->actor.posRot.pos.x + sp30.x * temp_ret + sp30.z * sp28;
    this->collider.dim.pos.z = this->actor.posRot.pos.z - sp30.x * sp28 + sp30.z * temp_ret;
}

void BgHidanFirewall_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanFirewall* this = THIS;
    s32 pad;

    this->unk_150 = (this->unk_150 + 1) % 8;

    if (this->collider.base.atFlags & 2) {
        this->collider.base.atFlags &= ~2;
        BgHidanFirewall_Collide(this, globalCtx);
    }

    this->actionFunc(this, globalCtx);
    if (this->actionFunc == BgHidanFirewall_Erupt) {
        BgHidanFirewall_ColliderFollowPlayer(this, globalCtx);
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider);
        func_8002F974(&this->actor, 0x2034);
    }
}

void BgHidanFirewall_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanFirewall* this = THIS;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    gfxCtx = globalCtx->state.gfxCtx;

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_hidan_firewall.c", 448);
    gfxCtx->polyXlu.p = Gfx_CallSetupDL(gfxCtx->polyXlu.p, 0x14);

    gSPSegment(gfxCtx->polyXlu.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_80886D04[this->unk_150]));
    gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0x01, 0xFF, 0xFF, 0x00, 0x96);
    gDPSetEnvColor(gfxCtx->polyXlu.p++, 0xFF, 0x00, 0x00, 0xFF);
    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_hidan_firewall.c", 458),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gfxCtx->polyXlu.p++, D_0600DA80);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_hidan_firewall.c", 463);
}
