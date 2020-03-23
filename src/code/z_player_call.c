#include <global.h>

void (*sPlayerCallInitFunc)(void*, GlobalContext*);
void (*sPlayerCallDestroyFunc)(void*, GlobalContext*);
void (*sPlayerCallUpdateFunc)(void*, GlobalContext*);
void (*sPlayerCallDrawFunc)(void*, GlobalContext*);

void func_80846CD8(Player*, GlobalContext*);
void func_8084AB54(Player*, GlobalContext*);
void func_80849EA8(Player*, GlobalContext*);
void func_8084A5C4(Player*, GlobalContext*);

void PlayerCall_Init(Player* player, GlobalContext* globalCtx);
void PlayerCall_Destroy(Player* player, GlobalContext* globalCtx);
void PlayerCall_Update(Player* player, GlobalContext* globalCtx);
void PlayerCall_Draw(Player* player, GlobalContext* globalCtx);

const ActorInit Player_InitVars = {
    ACTOR_PLAYER,
    ACTORTYPE_PLAYER,
    0,
    0x6000035,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(Player),
    (ActorFunc)PlayerCall_Init,
    (ActorFunc)PlayerCall_Destroy,
    (ActorFunc)PlayerCall_Update,
    (ActorFunc)PlayerCall_Draw,
};

void PlayerCall_InitFuncPtrs() {
    sPlayerCallInitFunc = KaleidoManager_GetRamAddr(func_80846CD8);
    sPlayerCallDestroyFunc = KaleidoManager_GetRamAddr(func_8084AB54);
    sPlayerCallUpdateFunc = KaleidoManager_GetRamAddr(func_80849EA8);
    sPlayerCallDrawFunc = KaleidoManager_GetRamAddr(func_8084A5C4);
}

void PlayerCall_Init(Player* player, GlobalContext* globalCtx) {
    KaleidoScopeCall_LoadPlayer();
    PlayerCall_InitFuncPtrs();
    sPlayerCallInitFunc(player, globalCtx);
}

void PlayerCall_Destroy(Player* player, GlobalContext* globalCtx) {
    KaleidoScopeCall_LoadPlayer();
    sPlayerCallDestroyFunc(player, globalCtx);
}

void PlayerCall_Update(Player* player, GlobalContext* globalCtx) {
    KaleidoScopeCall_LoadPlayer();
    sPlayerCallUpdateFunc(player, globalCtx);
}

void PlayerCall_Draw(Player* player, GlobalContext* globalCtx) {
    KaleidoScopeCall_LoadPlayer();
    sPlayerCallDrawFunc(player, globalCtx);
}
