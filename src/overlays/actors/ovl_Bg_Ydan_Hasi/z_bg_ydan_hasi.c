/*
 * File: z_bg_ydan_hasi.c
 * Overlay: ovl_Bg_Ydan_Hasi
 * Description: Deku Tree Puzzle elements. Water plane and floating block in B1, and 3 blocks on 2F
 */
#include "z_bg_ydan_hasi.h"

#define FLAGS 0x00000030

#define THIS ((BgYdanHasi*)thisx)

void BgYdanHasi_Init(Actor* thisx, GlobalContext* globalCtx);
void BgYdanHasi_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgYdanHasi_Update(Actor* thisx, GlobalContext* globalCtx);
void BgYdanHasi_Draw(Actor* thisx, GlobalContext* globalCtx);

void BgYdanHasi_InitWater(BgYdanHasi* this, GlobalContext* globalCtx);
void BgYdanHasi_UpdateFloatingBlock(BgYdanHasi* this, GlobalContext* globalCtx);
void BgYdanHasi_SetupThreeBlocks(BgYdanHasi* this, GlobalContext* globalCtx);
WaterBox* BgYdanHasi_MoveWater(BgYdanHasi* this, GlobalContext* globalCtx);
void BgYdanHasi_DecWaterTimer(BgYdanHasi* this, GlobalContext* globalCtx);
void BgYdanHasi_UpdateThreeBlocks(BgYdanHasi* this, GlobalContext* globalCtx);

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

Gfx* D_808BEC24[] = { 0x06007508, 0x06005DE0, 0x06005018 };

extern UNK_TYPE D_06005780;
extern UNK_TYPE D_06007798;
extern Gfx* D_06005DE0[];

void BgYdanHasi_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad1;
    BgYdanHasi* this = THIS;
    s32 localConst;
    WaterBox* waterBox;
    s32 pad2;

    localConst = 0;
    Actor_ProcessInitChain(thisx, sInitChain);
    this->unk_168 = ((thisx->params >> 8) & 0x3F);
    thisx->params = thisx->params & 0xFF;
    waterBox = globalCtx->colCtx.stat.colHeader->waterBoxes + 0x1;
    DynaPolyInfo_SetActorMove(&this->dyna, 1);
    if (thisx->params == 1) {
        // Water the moving platform floats on in B1. Never runs in Master Quest
        thisx->initPosRot.pos.y = (thisx->initPosRot.pos.y + -5.0f);
        thisx->posRot.pos.y = thisx->initPosRot.pos.y;
        waterBox->unk_02 = thisx->initPosRot.pos.y;
        this->actionFunc = BgYdanHasi_InitWater;
    } else {
        if (thisx->params == 0) {
            // Moving platform on the water in B1
            DynaPolyInfo_Alloc(&D_06007798, &localConst);
            thisx->scale.z = 0.15f;
            thisx->scale.x = 0.15f;
            thisx->posRot.pos.y = (waterBox->unk_02 + 20.0f);
            this->actionFunc = BgYdanHasi_UpdateFloatingBlock;
        } else {
            // 3 platforms on 2F
            DynaPolyInfo_Alloc(&D_06005780, &localConst);
            thisx->draw = NULL;
            this->actionFunc = BgYdanHasi_SetupThreeBlocks;
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

void BgYdanHasi_UpdateFloatingBlock(BgYdanHasi* this, GlobalContext* globalCtx) {
    s32 pad;
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

void BgYdanHasi_InitWater(BgYdanHasi* this, GlobalContext* globalCtx) {
    if (Flags_GetSwitch(globalCtx, this->unk_168)) {
        this->timer = 600;
        this->actionFunc = BgYdanHasi_MoveWater;
    }
}

WaterBox* BgYdanHasi_MoveWater(BgYdanHasi* this, GlobalContext* globalCtx) {
    WaterBox* waterBox;

    if (this->timer == 0) {
        if (Math_ApproxF(&this->dyna.actor.posRot.pos.y, this->dyna.actor.initPosRot.pos.y, 1.0f) != 0) {
            Flags_UnsetSwitch(globalCtx, this->unk_168);
            this->actionFunc = BgYdanHasi_InitWater;
        }
        func_8002F948(&this->dyna.actor, NA_SE_EV_WATER_LEVEL_DOWN - SFX_FLAG);
    } else {
        if (Math_ApproxF(&this->dyna.actor.posRot.pos.y, this->dyna.actor.initPosRot.pos.y - 47.0f, 0.5f)) {
            this->actionFunc = BgYdanHasi_DecWaterTimer;
        }
        func_8002F948(&this->dyna.actor, NA_SE_EV_WATER_LEVEL_DOWN - SFX_FLAG);
    }
    waterBox = globalCtx->colCtx.stat.colHeader->waterBoxes;
    globalCtx->colCtx.stat.colHeader->waterBoxes[1].unk_02 = this->dyna.actor.posRot.pos.y;
    if (1) {}
    return waterBox + 0x1;
}

void BgYdanHasi_DecWaterTimer(BgYdanHasi* this, GlobalContext* globalCtx) {
    if (this->timer != 0) {
        this->timer--;
    }
    func_8002F994(&this->dyna.actor, this->timer);
    if (this->timer == 0) {
        this->actionFunc = BgYdanHasi_MoveWater;
    }
}

void BgYdanHasi_SetupThreeBlocks(BgYdanHasi* this, GlobalContext* globalCtx) {
    if (Flags_GetSwitch(globalCtx, this->unk_168) != 0) {
        this->timer = 260;
        this->dyna.actor.draw = BgYdanHasi_Draw;
        this->actionFunc = BgYdanHasi_UpdateThreeBlocks;
        func_800800F8(globalCtx, 0xBE0, 0x1E, &this->dyna.actor, 0);
    }
}

void BgYdanHasi_UpdateThreeBlocks(BgYdanHasi* this, GlobalContext* globalCtx) {
    s32 pad;

    if (this->timer != 0) {
        this->timer--;
    }
    if (this->timer == 0) {
        if (Math_ApproxF(&this->dyna.actor.posRot.pos.y, this->dyna.actor.initPosRot.pos.y, 3.0f) != 0) {
            Flags_UnsetSwitch(globalCtx, this->unk_168);
            this->dyna.actor.draw = NULL;
            this->actionFunc = BgYdanHasi_SetupThreeBlocks;
            return;
        }
        func_8002F948(&this->dyna.actor, NA_SE_EV_ELEVATOR_MOVE - SFX_FLAG);
        return;
    }
    if (Math_ApproxF(&this->dyna.actor.posRot.pos.y, this->dyna.actor.initPosRot.pos.y + 120.0f, 3.0f) == 0) {
        func_8002F948(&this->dyna.actor, NA_SE_EV_ELEVATOR_MOVE - SFX_FLAG);
        return;
    }
    func_8002F994(&this->dyna.actor, this->timer);
}

void BgYdanHasi_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgYdanHasi* this = THIS;

    this->actionFunc(this, globalCtx);
}

void BgYdanHasi_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BgYdanHasi* this = THIS;

    if (this->dyna.actor.params == 0 || this->dyna.actor.params == 2) {
        Gfx_DrawDListOpa(globalCtx, D_808BEC24[this->dyna.actor.params]);
        return;
    }

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_ydan_hasi.c", 577);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (0 - globalCtx->gameplayFrames & 0x7F),
                                globalCtx->gameplayFrames & 0x7F, 0x20, 0x20, 1, globalCtx->gameplayFrames & 0x7F,
                                globalCtx->gameplayFrames & 0x7F, 0x20, 0x20));
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_ydan_hasi.c", 592),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_XLU_DISP++, &D_06005DE0);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_ydan_hasi.c", 597);
}
