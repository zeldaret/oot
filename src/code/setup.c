#include "global.h"

void Setup_InitImpl(GameState* this) {
    osSyncPrintf("ゼルダ共通データ初期化\n"); // "Zelda common data initalization"
    SaveContext_Init();
    this->running = false;
    SET_NEXT_GAMESTATE(this, Title_Init, TitleContext);
}

void Setup_Destroy(GameState* this) {
}

void Setup_Init(GameState* this) {
    this->destroy = Setup_Destroy;
    Setup_InitImpl(this);
}
