/*
 * File: z_bg_mori_idomizu.c
 * Overlay: ovl_Bg_Mori_Idomizu
 * Description: Square of water in Forest Temple well
 */

#include "z_bg_mori_idomizu.h"

#define FLAGS 0x00000030

#define THIS ((BgMoriIdomizu*)thisx)

void BgMoriIdomizu_Init(Actor* thisx, GlobalContext* globalCtx);
void BgMoriIdomizu_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgMoriIdomizu_Update(Actor* thisx, GlobalContext* globalCtx);
void BgMoriIdomizu_Draw(Actor* thisx, GlobalContext* globalCtx);

void BgMoriIdomizu_SetupObjectCheck(BgMoriIdomizu* this);
void BgMoriIdomizu_ObjectCheck(BgMoriIdomizu* this, GlobalContext* globalCtx);
void BgMoriIdomizu_SetupAction(BgMoriIdomizu* this);
void BgMoriIdomizu_Action(BgMoriIdomizu* this, GlobalContext* globalCtx);

extern Gfx D_060049D0[];

s16 alreadyLoaded = 0;

const ActorInit Bg_Mori_Idomizu_InitVars = {
    ACTOR_BG_MORI_IDOMIZU,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_MORI_OBJECTS,
    sizeof(BgMoriIdomizu),
    (ActorFunc)BgMoriIdomizu_Init,
    (ActorFunc)BgMoriIdomizu_Destroy,
    (ActorFunc)BgMoriIdomizu_Update,
    NULL,
};

void BgMoriIdomizu_SetActionFunction(BgMoriIdomizu* this, BgMoriIdomizuActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void BgMoriIdomizu_SetWaterLevel(GlobalContext* globalCtx, s16 waterLevel) {
    WaterBox* waterBox;

    waterBox = globalCtx->colCtx.stat.colHeader->waterBoxes;
    waterBox[2].unk_02 = waterLevel;
    waterBox[3].unk_02 = waterLevel;
    waterBox[4].unk_02 = waterLevel;
}

void BgMoriIdomizu_Init(Actor* thisx, GlobalContext* globalCtx) {
    GlobalContext* globalCtx2 = globalCtx;
    BgMoriIdomizu* this = THIS;

    if (alreadyLoaded != 0) {
        Actor_Kill(&this->actor);
        return;
    }
    this->actor.scale.x = 1.1f;
    this->actor.scale.y = 1.0f;
    this->actor.scale.z = 1.0f;
    this->actor.posRot.pos.x = 119.0f;
    this->actor.posRot.pos.z = -1820.0f;
    this->switchFlag = Flags_GetSwitch(globalCtx2, this->actor.params & 0x3F);
    if (this->switchFlag != 0) {
        this->actor.posRot.pos.y = -282.0f;
        BgMoriIdomizu_SetWaterLevel(globalCtx2, -282);
    } else {
        this->actor.posRot.pos.y = 184.0f;
        BgMoriIdomizu_SetWaterLevel(globalCtx2, 184);
    }
    this->objBankIndex = Object_GetIndex(&globalCtx2->objectCtx, OBJECT_MORI_TEX);
    if (this->objBankIndex < 0) {
        Actor_Kill(&this->actor);
        // Bank danger!
        osSyncPrintf("Error : バンク危険！(arg_data 0x%04x)(%s %d)\n", this->actor.params, "../z_bg_mori_idomizu.c",
                     202);
        return;
    }
    BgMoriIdomizu_SetupObjectCheck(this);
    alreadyLoaded = 1;
    this->isLoaded = 1;
    this->actor.room = -1;
    // Forest Temple well water
    osSyncPrintf("(森の神殿 井戸水)(arg_data 0x%04x)\n", this->actor.params);
}

void BgMoriIdomizu_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    GlobalContext* globalCtx2 = globalCtx;
    BgMoriIdomizu* this = THIS;

    if (this->isLoaded) {
        alreadyLoaded = 0;
    }
}

void BgMoriIdomizu_SetupObjectCheck(BgMoriIdomizu* this) {
    BgMoriIdomizu_SetActionFunction(this, BgMoriIdomizu_ObjectCheck);
}

void BgMoriIdomizu_ObjectCheck(BgMoriIdomizu* this, GlobalContext* globalCtx) {
    if (Object_IsLoaded(&globalCtx->objectCtx, this->objBankIndex)) {
        BgMoriIdomizu_SetupAction(this);
        this->actor.draw = BgMoriIdomizu_Draw;
    }
}

void BgMoriIdomizu_SetupAction(BgMoriIdomizu* this) {
    BgMoriIdomizu_SetActionFunction(this, &BgMoriIdomizu_Action);
}

void BgMoriIdomizu_Action(BgMoriIdomizu* this, GlobalContext* globalCtx) {
    s8 roomNum;
    Actor* thisx = &this->actor;
    s32 newSwitchFlag;

    roomNum = globalCtx->roomCtx.curRoom.num;
    newSwitchFlag = Flags_GetSwitch(globalCtx, thisx->params & 0x3F);
    if (newSwitchFlag != 0) {
        this->waterLevel = -282.0f;
    } else {
        this->waterLevel = 184.0f;
    }
    if (newSwitchFlag && !this->switchFlag) {
        func_800800F8(globalCtx, 0xCA8, 0x46, thisx, 0);
        this->drainTimer = 90;
    } else if (!newSwitchFlag && this->switchFlag) {
        func_800800F8(globalCtx, 0xCA8, 0x46, thisx, 0);
        this->drainTimer = 90;
        thisx->posRot.pos.y = 0.0f;
    }
    this->drainTimer--;
    if ((roomNum == 7) || (roomNum == 8) || (roomNum == 9)) {
        if (this->drainTimer < 70) {
            Math_ApproxF(&thisx->posRot.pos.y, this->waterLevel, 3.5f);
            BgMoriIdomizu_SetWaterLevel(globalCtx, thisx->posRot.pos.y);
            if (this->drainTimer > 0) {
                if (newSwitchFlag) {
                    func_800788CC(NA_SE_EV_WATER_LEVEL_DOWN - SFX_FLAG);
                } else {
                    func_800788CC(NA_SE_EV_WATER_LEVEL_DOWN - SFX_FLAG);
                }
            }
        }
    } else {
        thisx->posRot.pos.y = this->waterLevel;
        BgMoriIdomizu_SetWaterLevel(globalCtx, thisx->posRot.pos.y);
        Actor_Kill(thisx);
        return;
    }
    this->switchFlag = newSwitchFlag;
}

void BgMoriIdomizu_Update(Actor* thisx, GlobalContext* globalCtx) {
    GlobalContext* globalCtx2 = globalCtx;
    BgMoriIdomizu* this = THIS;

    if (this->actionFunc != NULL) {
        this->actionFunc(this, globalCtx2);
    }
}

void BgMoriIdomizu_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BgMoriIdomizu* this = THIS;
    s32 temp2y;
    u32 gFrames = globalCtx->gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_mori_idomizu.c", 356);

    func_80093D84(globalCtx->state.gfxCtx);

    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_mori_idomizu.c", 360),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gSPSegment(oGfxCtx->polyXlu.p++, 0x08, globalCtx->objectCtx.status[this->objBankIndex].segment);

    gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0, 0, 0, 128);

    temp2y = gFrames;
    temp2y &= 0x7F;

    gSPSegment(oGfxCtx->polyXlu.p++, 0x09,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0x7F - (gFrames & 0x7F), temp2y, 0x20, 0x20, 1,
                                gFrames & 0x7F, temp2y, 0x20, 0x20));
                                
    gSPDisplayList(oGfxCtx->polyXlu.p++, D_060049D0);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_mori_idomizu.c", 382);
}
