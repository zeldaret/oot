#include <global.h>

void TitleSetup_InitImpl(GameState* gameState)
{
    //Zelda common data initalization
    osSyncPrintf("ゼルダ共通データ初期化\n");
    SaveContext_Init();
    gameState->running = false;
    gameState->init = func_80800878; gameState->size = sizeof(TitleContext);
}

void TitleSetup_Destroy(GameState* gameState)
{

}

void TitleSetup_Init(GameState* gameState)
{
    gameState->destroy = TitleSetup_Destroy;
    TitleSetup_InitImpl(gameState);
}