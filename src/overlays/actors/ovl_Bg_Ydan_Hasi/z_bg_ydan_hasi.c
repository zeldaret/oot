/*
 * File: z_bg_ydan_hasi.c
 * Overlay: ovl_Bg_Ydan_Hasi
 * Description: Deku Tree Puzzle elements. Water plane and floating block in B1, and 3 blocks on 2F
 */

#include "z_bg_ydan_hasi.h"
#include "objects/object_ydan_objects/object_ydan_objects.h"

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

typedef enum {
    /* 0 */ HASI_WATER_BLOCK,
    /* 1 */ HASI_WATER,
    /* 2 */ HASI_THREE_BLOCKS
} HasiTypes;

const ActorInit Bg_Ydan_Hasi_InitVars = {
    ACTOR_BG_YDAN_HASI,
    ACTORCAT_BG,
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

void BgYdanHasi_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad1;
    BgYdanHasi* this = THIS;
    CollisionHeader* colHeader;
    WaterBox* waterBox;
    s32 pad2;

    colHeader = NULL;
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    this->type = (this->dyna.actor.params >> 8) & 0x3F;
    thisx->params = thisx->params & 0xFF; // thisx is required to match here
    waterBox = globalCtx->colCtx.colHeader->waterBoxes + 0x1;
    DynaPolyActor_Init(&this->dyna, DPM_PLAYER);
    if (this->dyna.actor.params == HASI_WATER) {
        // Water the moving platform floats on in B1. Never runs in Master Quest
        this->dyna.actor.home.pos.y = this->dyna.actor.home.pos.y + -5.0f;
        this->dyna.actor.world.pos.y = this->dyna.actor.home.pos.y;
        waterBox->ySurface = this->dyna.actor.home.pos.y;
        this->actionFunc = BgYdanHasi_InitWater;
    } else {
        if (this->dyna.actor.params == HASI_WATER_BLOCK) {
            // Moving platform on the water in B1
            CollisionHeader_GetVirtual(&gYdanHasiCol2, &colHeader);
            this->dyna.actor.scale.z = 0.15f;
            this->dyna.actor.scale.x = 0.15f;
            this->dyna.actor.world.pos.y = waterBox->ySurface + 20.0f;
            this->actionFunc = BgYdanHasi_UpdateFloatingBlock;
        } else {
            // 3 platforms on 2F
            CollisionHeader_GetVirtual(&gYdanHasiCol, &colHeader);
            this->dyna.actor.draw = NULL;
            this->actionFunc = BgYdanHasi_SetupThreeBlocks;
            Actor_SetFocus(&this->dyna.actor, 40.0f);
        }
        this->dyna.bgId = DynaPoly_SetBgActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, colHeader);
    }
    this->timer = 0;
}

void BgYdanHasi_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgYdanHasi* this = THIS;

    DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
}

void BgYdanHasi_UpdateFloatingBlock(BgYdanHasi* this, GlobalContext* globalCtx) {
    s32 pad;
    f32 framesAfterMath;
    f32 posOffset;
    WaterBox* waterBox;

    framesAfterMath = sinf((globalCtx->gameplayFrames & 0xFF) * 0.024543693f) * 165.0f;
    this->dyna.actor.world.pos.x =
        ((Math_SinS(this->dyna.actor.world.rot.y) * framesAfterMath) + this->dyna.actor.home.pos.x);
    this->dyna.actor.world.pos.z =
        ((Math_CosS(this->dyna.actor.world.rot.y) * framesAfterMath) + this->dyna.actor.home.pos.z);
    waterBox = &globalCtx->colCtx.colHeader->waterBoxes[1];
    this->dyna.actor.world.pos.y = waterBox->ySurface + 20.0f;
    if (this->timer != 0) {
        this->timer--;
    }
    if (this->timer == 0) {
        this->timer = 50;
    }
    posOffset = sinf(this->timer * 0.12566371f);
    this->dyna.actor.world.pos.y = (this->dyna.actor.world.pos.y + (posOffset + posOffset));
}

void BgYdanHasi_InitWater(BgYdanHasi* this, GlobalContext* globalCtx) {
    if (Flags_GetSwitch(globalCtx, this->type)) {
        this->timer = 600;
        this->actionFunc = BgYdanHasi_MoveWater;
    }
}

//! @bug This is an actionFunc and should not return anything however it returns waterBox + 1 for an unknown reason
WaterBox* BgYdanHasi_MoveWater(BgYdanHasi* this, GlobalContext* globalCtx) {
    WaterBox* waterBox;

    if (this->timer == 0) {
        if (Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y, 1.0f) != 0) {
            Flags_UnsetSwitch(globalCtx, this->type);
            this->actionFunc = BgYdanHasi_InitWater;
        }
        func_8002F948(&this->dyna.actor, NA_SE_EV_WATER_LEVEL_DOWN - SFX_FLAG);
    } else {
        if (Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y - 47.0f, 0.5f)) {
            this->actionFunc = BgYdanHasi_DecWaterTimer;
        }
        func_8002F948(&this->dyna.actor, NA_SE_EV_WATER_LEVEL_DOWN - SFX_FLAG);
    }
    waterBox = globalCtx->colCtx.colHeader->waterBoxes;
    globalCtx->colCtx.colHeader->waterBoxes[1].ySurface = this->dyna.actor.world.pos.y;
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
    if (Flags_GetSwitch(globalCtx, this->type) != 0) {
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
        if (Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y, 3.0f) != 0) {
            Flags_UnsetSwitch(globalCtx, this->type);
            this->dyna.actor.draw = NULL;
            this->actionFunc = BgYdanHasi_SetupThreeBlocks;
        } else {
            func_8002F948(&this->dyna.actor, NA_SE_EV_ELEVATOR_MOVE - SFX_FLAG);
        }
    } else if (Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y + 120.0f, 3.0f) == 0) {
        func_8002F948(&this->dyna.actor, NA_SE_EV_ELEVATOR_MOVE - SFX_FLAG);

    } else {
        func_8002F994(&this->dyna.actor, this->timer);
    }
}

void BgYdanHasi_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgYdanHasi* this = THIS;

    this->actionFunc(this, globalCtx);
}

void BgYdanHasi_Draw(Actor* thisx, GlobalContext* globalCtx) {
    static Gfx* sDlists[] = { gYdanHasiWaterBlockDlist, gYdanHasiWaterDlist, gYdanHasiThreeBlocksDlist };
    BgYdanHasi* this = THIS;

    if (this->dyna.actor.params == HASI_WATER_BLOCK || this->dyna.actor.params == HASI_THREE_BLOCKS) {
        Gfx_DrawDListOpa(globalCtx, sDlists[this->dyna.actor.params]);
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
    gSPDisplayList(POLY_XLU_DISP++, &gYdanHasiWaterDlist);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_ydan_hasi.c", 597);
}
