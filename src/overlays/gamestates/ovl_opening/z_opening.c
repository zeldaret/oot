/*
 * File: z_opening.c
 * Overlay: ovl_opening
 * Description: Initializes the game into the title screen
 */

#include <ultra64.h>
#include <global.h>

void Opening_SetupTitleScreen(OpeningContext* this) {
    gSaveContext.gameMode = 1;
    this->state.running = false;
    gSaveContext.linkAge = 0;
    func_800A82C8();
    gSaveContext.cutsceneIndex = 0xFFF3;
    gSaveContext.sceneSetupIndex = 7;
    SET_NEXT_GAMESTATE(&this->state, Gameplay_Init, GlobalContext);
}

void func_80803C5C(OpeningContext* this) {
}

void Opening_Main(OpeningContext* this) {
    func_80095248(this->state.gfxCtx, 0, 0, 0);
    Opening_SetupTitleScreen(this);
    func_80803C5C(this);
}

void Opening_Destroy(OpeningContext* this) {
}

void Opening_Init(OpeningContext* this) {
    R_UPDATE_RATE = 1;
    Matrix_Init(&this->state);
    View_Init(&this->view, this->state.gfxCtx);
    this->state.main = Opening_Main;
    this->state.destroy = Opening_Destroy;
}
