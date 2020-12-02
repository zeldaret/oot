/*
 * File: z_bg_mizu_water.c
 * Overlay: ovl_Bg_Mizu_Water
 * Description: Water plane in Water Temple. Changes height based on switches 0x1C, 0x1D, 0x1E.
 */

#include "z_bg_mizu_water.h"

#define FLAGS 0x00000030

#define THIS ((BgMizuWater*)thisx)

void BgMizuWater_Init(Actor* thisx, GlobalContext* globalCtx);
void BgMizuWater_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgMizuWater_Update(Actor* thisx, GlobalContext* globalCtx);
void BgMizuWater_Draw(Actor* thisx, GlobalContext* globalCtx);

void BgMizuWater_WaitForAction(BgMizuWater* this, GlobalContext* globalCtx);
void BgMizuWater_ChangeWaterLevel(BgMizuWater* this, GlobalContext* globalCtx);

extern Gfx D_06004B20[];

typedef struct {
    s32 switchFlag;
    s32 yDiff;
} WaterLevel;

static WaterLevel sWaterLevels[] = {
    { 0x00, 0 },
    { 0x1E, 0 },
    { 0x1D, -320 },
    { 0x1C, -780 },
};

const ActorInit Bg_Mizu_Water_InitVars = {
    ACTOR_BG_MIZU_WATER,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_MIZU_OBJECTS,
    sizeof(BgMizuWater),
    (ActorFunc)BgMizuWater_Init,
    (ActorFunc)BgMizuWater_Destroy,
    (ActorFunc)BgMizuWater_Update,
    (ActorFunc)BgMizuWater_Draw,
};

static f32 sUnused1 = 0;
static f32 sUnused2 = 110.0f;

static u32 sWaterBoxIndexes[] = { 2, 3, 5, 7, 12, 20, 21, 22 };

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F(scale, 1, ICHAIN_STOP),
};

u32 BgMizuWater_GetWaterLevelActionIndex(s16 switchFlag, GlobalContext* globalCtx) {
    u32 ret;

    if (bREG(0) != 0) {
        switch (bREG(1)) {
            case 0:
                Flags_SetSwitch(globalCtx, 0x1C);
                break;
            case 1:
                Flags_SetSwitch(globalCtx, 0x1D);
                break;
            case 2:
                Flags_SetSwitch(globalCtx, 0x1E);
                break;
        }
        bREG(0) = 0;
    }
    if (Flags_GetSwitch(globalCtx, 0x1C) && (switchFlag != 0x1C)) {
        ret = 3;
    } else if (Flags_GetSwitch(globalCtx, 0x1D) && (switchFlag != 0x1D)) {
        ret = 2;
    } else if (Flags_GetSwitch(globalCtx, 0x1E) && (switchFlag != 0x1E)) {
        ret = 1;
    } else {
        ret = 0;
    }

    return ret;
}

void BgMizuWater_SetWaterBoxesHeight(WaterBox* waterBoxes, s16 height) {
    u32 i;

    for (i = 0; i < 8; i++) {
        waterBoxes[sWaterBoxIndexes[i]].unk_02 = height;
    }
}

void BgMizuWater_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgMizuWater* this = THIS;
    f32 initialActorY;
    WaterBox* waterBoxes;
    s32 waterLevelActionIndex;

    waterBoxes = globalCtx->colCtx.stat.colHeader->waterBoxes;
    this->type = this->actor.params & 0xFF;
    this->switchFlag = (this->actor.params >> 8) & 0xFF;
    Actor_ProcessInitChain(&this->actor, sInitChain);
    initialActorY = this->actor.posRot.pos.y;
    this->baseY = initialActorY;
    this->targetY = initialActorY;

    switch (this->type) {
        case 0:
            if (bREG(15) == 0) {
                osSyncPrintf("<コンストラクト>%x %x %x\n", Flags_GetSwitch(globalCtx, 0x1C),
                             Flags_GetSwitch(globalCtx, 0x1D), Flags_GetSwitch(globalCtx, 0x1E));
            }
            waterLevelActionIndex = BgMizuWater_GetWaterLevelActionIndex(-1, globalCtx);
            this->actor.posRot.pos.y = sWaterLevels[waterLevelActionIndex].yDiff + this->baseY;
            BgMizuWater_SetWaterBoxesHeight(waterBoxes, this->actor.posRot.pos.y);
            this->actor.params = sWaterLevels[waterLevelActionIndex].switchFlag;
            Flags_UnsetSwitch(globalCtx, 0x1C);
            Flags_UnsetSwitch(globalCtx, 0x1D);
            Flags_UnsetSwitch(globalCtx, 0x1E);

            switch (this->actor.params) {
                case 0x1E:
                    Flags_SetSwitch(globalCtx, 0x1E);
                    break;
                case 0x1D:
                    Flags_SetSwitch(globalCtx, 0x1D);
                    break;
                case 0x1C:
                default:
                    Flags_SetSwitch(globalCtx, 0x1C);
                    break;
            }
            this->targetY = this->actor.posRot.pos.y;
            break;
        case 1:
            break;
        case 2:
            if (Flags_GetSwitch(globalCtx, this->switchFlag)) {
                this->actor.posRot.pos.y = this->baseY + 85.0f;
            }
            waterBoxes[6].unk_02 = this->actor.posRot.pos.y;
            break;
        case 3:
            if (Flags_GetSwitch(globalCtx, this->switchFlag)) {
                this->actor.posRot.pos.y = this->baseY + 110.0f;
                if (1) {}
                this->targetY = this->actor.posRot.pos.y;
            }
            waterBoxes[8].unk_02 = this->actor.posRot.pos.y;
            break;
        case 4:
            if (Flags_GetSwitch(globalCtx, this->switchFlag)) {
                this->actor.posRot.pos.y = this->baseY + 160.0f;
                if (1) {}
                this->targetY = this->actor.posRot.pos.y;
            }
            waterBoxes[16].unk_02 = this->actor.posRot.pos.y;
            break;
    }

    this->actionFunc = BgMizuWater_WaitForAction;
}

void BgMizuWater_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void BgMizuWater_WaitForAction(BgMizuWater* this, GlobalContext* globalCtx) {
    s32 pad;
    s32 waterLevelActionIndex;
    s16 prevSwitchFlag;

    switch (this->type) {
        case 0:
            prevSwitchFlag = this->actor.params;
            waterLevelActionIndex = BgMizuWater_GetWaterLevelActionIndex(this->actor.params, globalCtx);
            if (waterLevelActionIndex != 0) {
                if (prevSwitchFlag != sWaterLevels[waterLevelActionIndex].switchFlag) {
                    func_800800F8(globalCtx, 0xC30, -0x64 - waterLevelActionIndex, 0, 0);
                    this->actor.params = sWaterLevels[waterLevelActionIndex].switchFlag;
                    this->targetY = sWaterLevels[waterLevelActionIndex].yDiff + this->baseY;
                }
            }
            if ((prevSwitchFlag != this->actor.params) && (prevSwitchFlag != 0)) {
                Flags_UnsetSwitch(globalCtx, prevSwitchFlag);
            }
            break;
        case 1:
            break;
        case 2:
            if (Flags_GetSwitch(globalCtx, this->switchFlag)) {
                this->targetY = this->baseY + 85.0f;
            } else {
                this->targetY = this->baseY;
            }
            break;
        case 3:
            if (Flags_GetSwitch(globalCtx, this->switchFlag)) {
                this->targetY = this->baseY + 110.0f;
            } else {
                this->targetY = this->baseY;
            }
            break;
        case 4:
            if (Flags_GetSwitch(globalCtx, this->switchFlag)) {
                this->targetY = this->baseY + 160.0f;
            } else {
                this->targetY = this->baseY;
            }
    }

    if (this->targetY != this->actor.posRot.pos.y) {
        this->actionFunc = BgMizuWater_ChangeWaterLevel;
    }
}

void BgMizuWater_ChangeWaterLevel(BgMizuWater* this, GlobalContext* globalCtx) {
    s32 pad;
    s16 prevSwitchFlag;
    s32 waterLevelActionIndex;
    WaterBox* waterBoxes;

    waterBoxes = globalCtx->colCtx.stat.colHeader->waterBoxes;
    switch (this->type) {
        case 0:
            prevSwitchFlag = this->actor.params;
            waterLevelActionIndex = BgMizuWater_GetWaterLevelActionIndex(this->actor.params, globalCtx);
            if (waterLevelActionIndex != 0) {
                if (prevSwitchFlag != sWaterLevels[waterLevelActionIndex].switchFlag) {
                    this->actor.params = sWaterLevels[waterLevelActionIndex].switchFlag;
                    this->targetY = sWaterLevels[waterLevelActionIndex].yDiff + this->baseY;
                }
            }

            if ((prevSwitchFlag != this->actor.params) && (prevSwitchFlag != 0)) {
                Flags_UnsetSwitch(globalCtx, prevSwitchFlag);
            }

            if (Math_ApproxF(&this->actor.posRot.pos.y, this->targetY, 5.0f)) {
                globalCtx->unk_11D30[0] = 0;
                this->actionFunc = BgMizuWater_WaitForAction;
                func_80106CCC(globalCtx);
            }
            BgMizuWater_SetWaterBoxesHeight(globalCtx->colCtx.stat.colHeader->waterBoxes, this->actor.posRot.pos.y);
            break;
        case 1:
            break;
        case 2:
            if (Flags_GetSwitch(globalCtx, this->switchFlag)) {
                this->targetY = this->baseY + 85.0f;
            } else {
                this->targetY = this->baseY;
            }
            if (Math_ApproxF(&this->actor.posRot.pos.y, this->targetY, 1.0f)) {
                globalCtx->unk_11D30[0] = 0;
                this->actionFunc = BgMizuWater_WaitForAction;
            }
            waterBoxes[6].unk_02 = this->actor.posRot.pos.y;
            break;
        case 3:
            if (Flags_GetSwitch(globalCtx, this->switchFlag)) {
                this->targetY = this->baseY + 110.0f;
            } else {
                this->targetY = this->baseY;
            }
            if (Math_ApproxF(&this->actor.posRot.pos.y, this->targetY, 1.0f)) {
                globalCtx->unk_11D30[0] = 0;
                this->actionFunc = BgMizuWater_WaitForAction;
            }
            waterBoxes[8].unk_02 = this->actor.posRot.pos.y;
            break;
        case 4:
            if (Flags_GetSwitch(globalCtx, this->switchFlag)) {
                this->targetY = this->baseY + 160.0f;
            } else {
                this->targetY = this->baseY;
            }
            if (Math_ApproxF(&this->actor.posRot.pos.y, this->targetY, 1.0f)) {
                globalCtx->unk_11D30[0] = 0;
                this->actionFunc = BgMizuWater_WaitForAction;
            }
            waterBoxes[16].unk_02 = this->actor.posRot.pos.y;
            break;
    }

    if (this->targetY < this->actor.posRot.pos.y) {
        func_800AA000(0.0f, 0x78, 0x14, 0xA);
        func_8002F948(&this->actor, NA_SE_EV_WATER_LEVEL_DOWN - SFX_FLAG);
    } else if (this->targetY > this->actor.posRot.pos.y) {
        func_800AA000(0.0f, 0x78, 0x14, 0xA);
        func_8002F948(&this->actor, NA_SE_EV_WATER_LEVEL_DOWN - SFX_FLAG);
    }
}

void BgMizuWater_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgMizuWater* this = THIS;
    s32 posY;
    s32 unk0;
    s32 unk1;
    s32 pad;

    if (bREG(15) == 0) {
        osSyncPrintf("%x %x %x\n", Flags_GetSwitch(globalCtx, 0x1C), Flags_GetSwitch(globalCtx, 0x1D),
                     Flags_GetSwitch(globalCtx, 0x1E));
    }

    if (this->type == 0) {
        posY = this->actor.posRot.pos.y;
        unk0 = 0;
        unk1 = 0;
        if (posY < -15.0f) {
            unk0 = 0;
            unk1 = ((posY - -835.0f) / 820.0f) * 200.0f;
        } else if (posY < 445.0f) {
            unk0 = 1;
            unk1 = 0xFF - (s32)(((posY - -15.0f) / 460.0f) * 95.0f);
        } else if (posY <= 765.0f) {
            unk0 = 2;
            unk1 = 0xFF - (s32)(((posY - 445.0f) / 320.0f) * 95.0f);
        }
        globalCtx->unk_11D30[1] = ((u8)unk0 << 8) | (unk1 & 0xFF);
    }

    this->actionFunc(this, globalCtx);
}

void BgMizuWater_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BgMizuWater* this = THIS;
    s32 gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_mizu_water.c", 738);
    gameplayFrames = globalCtx->gameplayFrames;
    func_80093D84(globalCtx->state.gfxCtx);

    gSPSegment(POLY_XLU_DISP++, 0x0C,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, -gameplayFrames * 1, gameplayFrames * 1, 32, 32, 1, 0,
                                -gameplayFrames * 1, 32, 32));

    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_mizu_water.c", 749),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gDPSetEnvColor(POLY_XLU_DISP++, 255, 255, 255, 128);

    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, 102);

    gSPDisplayList(POLY_XLU_DISP++, D_06004B20);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_mizu_water.c", 756);
}
