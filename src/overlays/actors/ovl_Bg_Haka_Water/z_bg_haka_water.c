/*
 * File: z_bg_haka_water.c
 * Overlay: ovl_Bg_Haka_Water
 * Description: Bottom of the Well water level changer
 */

#include "z_bg_haka_water.h"

#define FLAGS 0x00000030

#define THIS ((BgHakaWater*)thisx)

void BgHakaWater_Init(Actor* thisx, GlobalContext* globalCtx);
void BgHakaWater_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHakaWater_Update(Actor* thisx, GlobalContext* globalCtx);
void BgHakaWater_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80881D94(BgHakaWater* this, GlobalContext* globalCtx);
void BgHakaWater_Wait(BgHakaWater* this, GlobalContext* globalCtx);
void BgHakaWater_ChangeWaterLevel(BgHakaWater* this, GlobalContext* globalCtx);

const ActorInit Bg_Haka_Water_InitVars = {
    ACTOR_BG_HAKA_WATER,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_HAKACH_OBJECTS,
    sizeof(BgHakaWater),
    (ActorFunc)BgHakaWater_Init,
    (ActorFunc)BgHakaWater_Destroy,
    (ActorFunc)BgHakaWater_Update,
    (ActorFunc)BgHakaWater_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

extern Gfx D_06001E50[];
extern Gfx D_06002010[];

void BgHakaWater_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgHakaWater* this = THIS;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    if (Flags_GetSwitch(globalCtx, this->actor.params)) {
        this->isLowered = true;
        this->actor.initPosRot.pos.y -= 200.0f;
        this->actor.posRot.pos.y = this->actor.initPosRot.pos.y;
    } else {
        this->isLowered = false;
    }
    func_80881D94(this, globalCtx);
    this->actionFunc = BgHakaWater_Wait;
}

void BgHakaWater_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void func_80881D94(BgHakaWater* this, GlobalContext* globalCtx) {
    s32 i;

    for (i = 0; i < 9; i++) {
        globalCtx->colCtx.stat.colHeader->waterBoxes[i].unk_02 = (s16)this->actor.posRot.pos.y - 8;
    }
}

void BgHakaWater_Wait(BgHakaWater* this, GlobalContext* globalCtx) {
    if ((!this->isLowered && Flags_GetSwitch(globalCtx, this->actor.params)) ||
        (this->isLowered && !Flags_GetSwitch(globalCtx, this->actor.params))) {
        if (this->isLowered) {
            this->isLowered = false;
            this->actor.draw = BgHakaWater_Draw;
            this->actor.initPosRot.pos.y += 200.0f;
        } else {
            this->isLowered = true;
            this->actor.initPosRot.pos.y -= 200.0f;
        }
        this->actionFunc = BgHakaWater_ChangeWaterLevel;
    }
}

void BgHakaWater_ChangeWaterLevel(BgHakaWater* this, GlobalContext* globalCtx) {
    if (!this->isLowered && Flags_GetSwitch(globalCtx, this->actor.params)) {
        this->isLowered = true;
        this->actor.initPosRot.pos.y -= 200.0f;
    } else if (this->isLowered && !Flags_GetSwitch(globalCtx, this->actor.params)) {
        this->isLowered = false;
        this->actor.initPosRot.pos.y += 200.0f;
    }

    if (this->actor.initPosRot.pos.y < this->actor.posRot.pos.y) {
        func_8002F948(&this->actor, NA_SE_EV_WATER_LEVEL_DOWN - SFX_FLAG);
    } else {
        func_8002F948(&this->actor, NA_SE_EV_WATER_LEVEL_DOWN - SFX_FLAG);
    }

    if (Math_ApproxF(&this->actor.posRot.pos.y, this->actor.initPosRot.pos.y, 0.5f) != 0) {
        this->actionFunc = BgHakaWater_Wait;
        if (this->isLowered) {
            this->actor.draw = NULL;
        }
    }
    func_80881D94(this, globalCtx);
}

void BgHakaWater_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgHakaWater* this = THIS;

    this->actionFunc(this, globalCtx);
}

void BgHakaWater_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BgHakaWater* this = THIS;
    s32 pad;
    f32 temp;
    s32 pad2;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_haka_water.c", 287);
    func_80093D84(globalCtx->state.gfxCtx);

    if (this->isLowered) {
        temp = this->actor.posRot.pos.y - this->actor.initPosRot.pos.y;
    } else {
        temp = this->actor.posRot.pos.y - (this->actor.initPosRot.pos.y - 200.0f);
    }

    gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, 255, 255, 255, (u8)(0.765f * temp));
    gSPSegment(gfxCtx->polyXlu.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, globalCtx->gameplayFrames % 128,
                                globalCtx->gameplayFrames % 128, 32, 32, 1, 0, (0 - globalCtx->gameplayFrames) % 128,
                                32, 32));

    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_haka_water.c", 312),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gfxCtx->polyXlu.p++, D_06001E50);

    Matrix_Translate(0.0f, 92.0f, -1680.0f, MTXMODE_NEW);
    Matrix_Scale(0.1f, 0.1f, 0.1f, MTXMODE_APPLY);
    temp -= 170.0f;
    if (temp < 0.0f) {
        temp = 0.0f;
    }

    gDPPipeSync(gfxCtx->polyXlu.p++);
    gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, 255, 255, 255, (u8)(5.1f * temp));
    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_haka_water.c", 328),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gfxCtx->polyXlu.p++, D_06002010);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_haka_water.c", 332);
}
