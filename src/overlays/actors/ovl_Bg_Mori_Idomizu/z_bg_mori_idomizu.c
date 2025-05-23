/*
 * File: z_bg_mori_idomizu.c
 * Overlay: ovl_Bg_Mori_Idomizu
 * Description: Square of water in Forest Temple well
 */

#include "z_bg_mori_idomizu.h"
#include "assets/objects/object_mori_objects/object_mori_objects.h"

#define FLAGS (ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_DRAW_CULLING_DISABLED)

void BgMoriIdomizu_Init(Actor* thisx, PlayState* play);
void BgMoriIdomizu_Destroy(Actor* thisx, PlayState* play);
void BgMoriIdomizu_Update(Actor* thisx, PlayState* play);
void BgMoriIdomizu_Draw(Actor* thisx, PlayState* play);

void BgMoriIdomizu_SetupWaitForMoriTex(BgMoriIdomizu* this);
void BgMoriIdomizu_WaitForMoriTex(BgMoriIdomizu* this, PlayState* play);
void BgMoriIdomizu_SetupMain(BgMoriIdomizu* this);
void BgMoriIdomizu_Main(BgMoriIdomizu* this, PlayState* play);

static s16 sIsSpawned = false;

ActorProfile Bg_Mori_Idomizu_Profile = {
    /**/ ACTOR_BG_MORI_IDOMIZU,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_MORI_OBJECTS,
    /**/ sizeof(BgMoriIdomizu),
    /**/ BgMoriIdomizu_Init,
    /**/ BgMoriIdomizu_Destroy,
    /**/ BgMoriIdomizu_Update,
    /**/ NULL,
};

void BgMoriIdomizu_SetupAction(BgMoriIdomizu* this, BgMoriIdomizuActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void BgMoriIdomizu_SetWaterLevel(PlayState* play, s16 waterLevel) {
    WaterBox* waterBox = play->colCtx.colHeader->waterBoxes;

    waterBox[2].ySurface = waterLevel;
    waterBox[3].ySurface = waterLevel;
    waterBox[4].ySurface = waterLevel;
}

void BgMoriIdomizu_Init(Actor* thisx, PlayState* play) {
    s32 pad;
    BgMoriIdomizu* this = (BgMoriIdomizu*)thisx;

    if (sIsSpawned) {
        Actor_Kill(&this->actor);
        return;
    }
    this->actor.scale.x = 1.1f;
    this->actor.scale.y = 1.0f;
    this->actor.scale.z = 1.0f;
    this->actor.world.pos.x = 119.0f;
    this->actor.world.pos.z = -1820.0f;
    this->prevSwitchFlagSet = Flags_GetSwitch(play, PARAMS_GET_U(this->actor.params, 0, 6));
    if (this->prevSwitchFlagSet != 0) {
        this->actor.world.pos.y = -282.0f;
        BgMoriIdomizu_SetWaterLevel(play, -282);
    } else {
        this->actor.world.pos.y = 184.0f;
        BgMoriIdomizu_SetWaterLevel(play, 184);
    }
    this->moriTexObjectSlot = Object_GetSlot(&play->objectCtx, OBJECT_MORI_TEX);
    if (this->moriTexObjectSlot < 0) {
        Actor_Kill(&this->actor);
        // "Bank danger!"
        PRINTF("Error : バンク危険！(arg_data 0x%04x)(%s %d)\n", this->actor.params, "../z_bg_mori_idomizu.c", 202);
        return;
    }
    BgMoriIdomizu_SetupWaitForMoriTex(this);
    sIsSpawned = true;
    this->isLoaded = true;
    this->actor.room = -1;
    // "Forest Temple well water"
    PRINTF("(森の神殿 井戸水)(arg_data 0x%04x)\n", this->actor.params);
}

void BgMoriIdomizu_Destroy(Actor* thisx, PlayState* play) {
    s32 pad;
    BgMoriIdomizu* this = (BgMoriIdomizu*)thisx;

    if (this->isLoaded) {
        sIsSpawned = false;
    }
}

void BgMoriIdomizu_SetupWaitForMoriTex(BgMoriIdomizu* this) {
    BgMoriIdomizu_SetupAction(this, BgMoriIdomizu_WaitForMoriTex);
}

void BgMoriIdomizu_WaitForMoriTex(BgMoriIdomizu* this, PlayState* play) {
    if (Object_IsLoaded(&play->objectCtx, this->moriTexObjectSlot)) {
        BgMoriIdomizu_SetupMain(this);
        this->actor.draw = BgMoriIdomizu_Draw;
    }
}

void BgMoriIdomizu_SetupMain(BgMoriIdomizu* this) {
    BgMoriIdomizu_SetupAction(this, BgMoriIdomizu_Main);
}

void BgMoriIdomizu_Main(BgMoriIdomizu* this, PlayState* play) {
    s8 roomNum;
    Actor* thisx = &this->actor;
    s32 switchFlagSet;

    roomNum = play->roomCtx.curRoom.num;
    switchFlagSet = Flags_GetSwitch(play, PARAMS_GET_U(thisx->params, 0, 6));
    if (switchFlagSet) {
        this->targetWaterLevel = -282.0f;
    } else {
        this->targetWaterLevel = 184.0f;
    }
    if (switchFlagSet && !this->prevSwitchFlagSet) {
        OnePointCutscene_Init(play, 3240, 70, thisx, CAM_ID_MAIN);
        this->drainTimer = 90;
    } else if (!switchFlagSet && this->prevSwitchFlagSet) {
        OnePointCutscene_Init(play, 3240, 70, thisx, CAM_ID_MAIN);
        this->drainTimer = 90;
        thisx->world.pos.y = 0.0f;
    }
    this->drainTimer--;
    if ((roomNum == 7) || (roomNum == 8) || (roomNum == 9)) {
        if (this->drainTimer < 70) {
            Math_StepToF(&thisx->world.pos.y, this->targetWaterLevel, 3.5f);
            BgMoriIdomizu_SetWaterLevel(play, thisx->world.pos.y);
            if (this->drainTimer > 0) {
                if (switchFlagSet) {
                    Sfx_PlaySfxCentered2(NA_SE_EV_WATER_LEVEL_DOWN - SFX_FLAG);
                } else {
                    Sfx_PlaySfxCentered2(NA_SE_EV_WATER_LEVEL_DOWN - SFX_FLAG);
                }
            }
        }
    } else {
        thisx->world.pos.y = this->targetWaterLevel;
        BgMoriIdomizu_SetWaterLevel(play, thisx->world.pos.y);
        Actor_Kill(thisx);
        return;
    }
    this->prevSwitchFlagSet = switchFlagSet;
}

void BgMoriIdomizu_Update(Actor* thisx, PlayState* play) {
    s32 pad;
    BgMoriIdomizu* this = (BgMoriIdomizu*)thisx;

    if (this->actionFunc != NULL) {
        this->actionFunc(this, play);
    }
}

void BgMoriIdomizu_Draw(Actor* thisx, PlayState* play) {
    s32 pad;
    BgMoriIdomizu* this = (BgMoriIdomizu*)thisx;
    u32 gameplayFrames = play->gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_mori_idomizu.c", 356);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);

    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_bg_mori_idomizu.c", 360);

    gSPSegment(POLY_XLU_DISP++, 0x08, play->objectCtx.slots[this->moriTexObjectSlot].segment);

    gDPSetEnvColor(POLY_XLU_DISP++, 0, 0, 0, 128);

    gSPSegment(POLY_XLU_DISP++, 0x09,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0x7F - (gameplayFrames & 0x7F),
                                gameplayFrames % 0x80, 0x20, 0x20, 1, gameplayFrames & 0x7F, gameplayFrames % 0x80,
                                0x20, 0x20));

    gSPDisplayList(POLY_XLU_DISP++, gMoriIdomizuWaterDL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_mori_idomizu.c", 382);
}
