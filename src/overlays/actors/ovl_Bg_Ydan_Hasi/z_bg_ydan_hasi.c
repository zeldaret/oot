#include "z_bg_ydan_hasi.h"

#define FLAGS 0x00000030

#define THIS ((BgYdanHasi*)thisx)

void BgYdanHasi_Init(Actor* thisx, GlobalContext* globalCtx);
void BgYdanHasi_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgYdanHasi_Update(Actor* thisx, GlobalContext* globalCtx);
void BgYdanHasi_Draw(Actor* thisx, GlobalContext* globalCtx);

void BgYdanHasi_initWater(BgYdanHasi* this, GlobalContext* globalCtx);
void BgYdanHasi_updateFloatingBlock(BgYdanHasi* this, GlobalContext* globalCtx);
void BgYdanHasi_setupThreeBlocks(BgYdanHasi* this, GlobalContext* globalCtx);
WaterBox* BgYdanHasi_updateWater(BgYdanHasi* this, GlobalContext* globalCtx);
void BgYdanHasi_decWaterTimer(BgYdanHasi* this, GlobalContext* globalCtx);
void BgYdanHasi_updateThreeBlocks(BgYdanHasi* this, GlobalContext* globalCtx);

const ActorInit Bg_Ydan_Hasi_InitVars = {
    ACTOR_BG_YDAN_HASI,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_YDAN_OBJECTS,
    sizeof(BgYdanHasi),
    (ActorFunc)BgYdanHasi_Init,
    (ActorFunc)BgYdanHasi_Destroy,
    (ActorFunc)BgYdanHasi_Update,
    (ActorFunc)BgYdanHasi_Draw,
};

static InitChainEntry sInitChain[] = {

    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

extern Gfx* D_808BEC24[] = { 0x06007508, 0x06005DE0, 0x06005018 };
extern UNK_TYPE D_06005780;
extern UNK_TYPE D_06007798;
extern Gfx* D_06005DE0;

void BgYdanHasi_Init(Actor* thisx, GlobalContext* globalCtx) {
    s16 pad1;
    BgYdanHasi* this = THIS;
    s32 localConst;
    WaterBox* waterBox;
    s16 pad2;

    localConst = 0;
    Actor_ProcessInitChain(thisx, sInitChain);
    this->unk_168 = (u8)((thisx->params >> 8) & 0x3F);
    thisx->params = thisx->params & 0xFF;
    waterBox = globalCtx->colCtx.stat.colHeader->waterBoxes + 0x1;
    DynaPolyInfo_SetActorMove(&this->dyna, 1);
    if (thisx->params == 1) { // Water the moving platform floats on in B1. Never runs in Master Quest
        thisx->initPosRot.pos.y = (thisx->initPosRot.pos.y + -5.0f);
        thisx->posRot.pos.y = thisx->initPosRot.pos.y;
        waterBox->unk_02 = thisx->initPosRot.pos.y;
        this->actionFunc = BgYdanHasi_initWater;
    } else {
        if (thisx->params == 0) { // Moving platform on the water in B1
            DynaPolyInfo_Alloc(&D_06007798, (void*)&localConst);
            thisx->scale.z = 0.15f;
            thisx->scale.x = 0.15f;
            thisx->posRot.pos.y = (waterBox->unk_02 + 20.0f);
            this->actionFunc = BgYdanHasi_updateFloatingBlock;
        } else { // 3 platforms on 2F
            DynaPolyInfo_Alloc(&D_06005780, (void*)&localConst);
            thisx->draw = NULL;
            this->actionFunc = BgYdanHasi_setupThreeBlocks;
            Actor_SetHeight(thisx, 40.0f);
        }
        this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, thisx, localConst);
    }
    this->timer = 0;
}

void BgYdanHasi_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgYdanHasi* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

void BgYdanHasi_updateFloatingBlock(BgYdanHasi* this, GlobalContext* globalCtx) {
    u32 pad;
    f32 framesAfterMath;
    f32 posOffset;
    WaterBox* waterBox;

    framesAfterMath = sinf((globalCtx->gameplayFrames & 0xFF) * 0.024543693f) * 165.0f;
    this->dyna.actor.posRot.pos.x =
        ((Math_Sins(this->dyna.actor.posRot.rot.y) * framesAfterMath) + this->dyna.actor.initPosRot.pos.x);
    this->dyna.actor.posRot.pos.z =
        ((Math_Coss(this->dyna.actor.posRot.rot.y) * framesAfterMath) + this->dyna.actor.initPosRot.pos.z);
    waterBox = &globalCtx->colCtx.stat.colHeader->waterBoxes[1];
    this->dyna.actor.posRot.pos.y = waterBox->unk_02 + 20.0f;
    if (this->timer != 0) {
        this->timer--;
    }
    if (this->timer == 0) {
        this->timer = 50;
    }
    posOffset = sinf(this->timer * 0.12566371f);
    this->dyna.actor.posRot.pos.y = (this->dyna.actor.posRot.pos.y + (posOffset + posOffset));
}

void BgYdanHasi_initWater(BgYdanHasi* this, GlobalContext* globalCtx) {
    if (Flags_GetSwitch(globalCtx, (u8)this->unk_168)) {
        this->timer = 600;
        this->actionFunc = BgYdanHasi_updateWater;
    }
}

WaterBox* BgYdanHasi_updateWater(BgYdanHasi* this, GlobalContext* globalCtx) {
    WaterBox* waterBox;

    if (this->timer == 0) {
        if (Math_ApproxF(&this->dyna.actor.posRot.pos.y, this->dyna.actor.initPosRot.pos.y, 1.0f) != 0) {
            Flags_UnsetSwitch(globalCtx, this->unk_168);
            this->actionFunc = BgYdanHasi_initWater;
        }
        func_8002F948(&this->dyna.actor, 0x205E);
    } else {
        if (Math_ApproxF(&this->dyna.actor.posRot.pos.y, this->dyna.actor.initPosRot.pos.y - 47.0f, 0.5f)) {
            this->actionFunc = BgYdanHasi_decWaterTimer;
        }
        func_8002F948(&this->dyna.actor, 0x205E);
    }
    waterBox = globalCtx->colCtx.stat.colHeader->waterBoxes;
    globalCtx->colCtx.stat.colHeader->waterBoxes[1].unk_02 = this->dyna.actor.posRot.pos.y;
    if (true) {}
    return waterBox + 0x1;
}

void BgYdanHasi_decWaterTimer(BgYdanHasi* this, GlobalContext* globalCtx) {
    if (this->timer != 0) {
        this->timer--;
    }
    func_8002F994(&this->dyna.actor, this->timer);
    if (this->timer == 0) {
        this->actionFunc = BgYdanHasi_updateWater;
    }
}

void BgYdanHasi_setupThreeBlocks(BgYdanHasi* this, GlobalContext* globalCtx) {
    if (Flags_GetSwitch(globalCtx, this->unk_168) != 0) {
        this->timer = 260;
        this->dyna.actor.draw = BgYdanHasi_Draw;
        this->actionFunc = BgYdanHasi_updateThreeBlocks;
        func_800800F8(globalCtx, 0xBE0, 0x1E, &this->dyna.actor, 0);
    }
}

void BgYdanHasi_updateThreeBlocks(BgYdanHasi* this, GlobalContext* globalCtx) {
    BgYdanHasi* temp;

    if (this->timer != 0) {
        this->timer--;
    }
    if (this->timer == 0) {
        if (Math_ApproxF(&this->dyna.actor.posRot.pos.y, this->dyna.actor.initPosRot.pos.y, 3.0f) != 0) {
            Flags_UnsetSwitch(globalCtx, this->unk_168);
            this->dyna.actor.draw = NULL;
            this->actionFunc = BgYdanHasi_setupThreeBlocks;
            return;
        }
        func_8002F948(&this->dyna.actor, 0x2024);
        return;
    }
    if (Math_ApproxF(&this->dyna.actor.posRot.pos.y, this->dyna.actor.initPosRot.pos.y + 120.0f, 3.0f) == 0) {
        func_8002F948(&this->dyna.actor, 0x2024);
        return;
    }
    func_8002F994(&this->dyna.actor, this->timer);
}

void BgYdanHasi_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgYdanHasi* this = THIS;

    this->actionFunc(this, globalCtx);
}

void BgYdanHasi_Draw(Actor* thisx, GlobalContext* globalCtx) {
    char pad[0xE];
    GraphicsContext* gfxCtx;
    Gfx* sp50;

    if (thisx->params == 0 || thisx->params == 2) {

        Gfx_DrawDListOpa(globalCtx, (D_808BEC24[thisx->params]));
        return;
    }
    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(&sp50, globalCtx->state.gfxCtx, "../z_bg_ydan_hasi.c", 0x241);
    func_80093D84(globalCtx->state.gfxCtx);
    gSPSegment(gfxCtx->polyXlu.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (0 - globalCtx->gameplayFrames & 0x7F),
                                globalCtx->gameplayFrames & 0x7F, 0x20, 0x20, 1, globalCtx->gameplayFrames & 0x7F,
                                globalCtx->gameplayFrames & 0x7F, 0x20, 0x20));
    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_ydan_hasi.c", 0x250),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gfxCtx->polyXlu.p++, &D_06005DE0);
    Graph_CloseDisps(&sp50, globalCtx->state.gfxCtx, "../z_bg_ydan_hasi.c", 0x255);
}
