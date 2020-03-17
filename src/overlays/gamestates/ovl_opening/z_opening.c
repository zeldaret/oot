/*
 * File: z_opening.c
 * Overlay: ovl_opening
 * Description: Initializes the game into the title screen
*/

#include <ultra64.h>
#include <global.h>

static void Opening_SetNextGameState(OpeningContext* this)
{
    gSaveContext.game_mode = 1;
    this->state.running = false;
    gSaveContext.link_age = 0;
    func_800A82C8();
    gSaveContext.cutscene_index = 0xFFF3;
    gSaveContext.scene_setup_index = 7;
    this->state.init = func_800BCA64; this->state.size = sizeof(GlobalContext);
}

static void func_80803C5C(OpeningContext* this)
{

}

static void Opening_Update(OpeningContext* this)
{
    func_80095248(this->state.gfxCtx, 0, 0, 0);
    Opening_SetNextGameState(this);
    func_80803C5C(this);
}

static void Opening_Destroy(OpeningContext* this)
{

}

void Opening_Init(OpeningContext* this)
{
    R_UPDATE_RATE = 1;
    Matrix_Init(&this->state);
    func_800AA278(&this->view, this->state.gfxCtx);
    this->state.main = Opening_Update;
    this->state.destroy = Opening_Destroy;
}
