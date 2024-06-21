#include "z_title.h"
#include "z_opening.h"
#include "z_title_setup.h"
#include "z64save.h"
#include "macros.h"

void Setup_InitImpl(SetupState* this) {
    PRINTF("ゼルダ共通データ初期化\n"); // "Zelda common data initalization"
    SaveContext_Init();
    this->state.running = false;
    SET_NEXT_GAMESTATE(&this->state, ConsoleLogo_Init, ConsoleLogoState);
}

void Setup_Destroy(GameState* thisx) {
}

void Setup_Init(GameState* thisx) {
    SetupState* this = (SetupState*)thisx;

    this->state.destroy = Setup_Destroy;
    Setup_InitImpl(this);
}
