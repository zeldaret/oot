#include <global.h>

void (*sPlayerCallInitFunc)(Actor* thisx, GlobalContext* globalCtx);
void (*sPlayerCallDestroyFunc)(Actor* thisx, GlobalContext* globalCtx);
void (*sPlayerCallUpdateFunc)(Actor* thisx, GlobalContext* globalCtx);
void (*sPlayerCallDrawFunc)(Actor* thisx, GlobalContext* globalCtx);

void func_80846CD8(Actor* thisx, GlobalContext* globalCtx);
void func_8084AB54(Actor* thisx, GlobalContext* globalCtx);
void func_80849EA8(Actor* thisx, GlobalContext* globalCtx);
void func_8084A5C4(Actor* thisx, GlobalContext* globalCtx);

void PlayerCall_Init(Actor* thisx, GlobalContext* globalCtx);
void PlayerCall_Destroy(Actor* thisx, GlobalContext* globalCtx);
void PlayerCall_Update(Actor* thisx, GlobalContext* globalCtx);
void PlayerCall_Draw(Actor* thisx, GlobalContext* globalCtx);

const ActorInit Player_InitVars = {
    ACTOR_PLAYER,
    ACTORTYPE_PLAYER,
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

void PlayerCall_Init(Actor* thisx, GlobalContext* globalCtx) {
    KaleidoScopeCall_LoadPlayer();
    PlayerCall_InitFuncPtrs();
    sPlayerCallInitFunc(thisx, globalCtx);
}

void PlayerCall_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    KaleidoScopeCall_LoadPlayer();
    sPlayerCallDestroyFunc(thisx, globalCtx);
}

void PlayerCall_Update(Actor* thisx, GlobalContext* globalCtx) {
    KaleidoScopeCall_LoadPlayer();
    sPlayerCallUpdateFunc(thisx, globalCtx);
}

void PlayerCall_Draw(Actor* thisx, GlobalContext* globalCtx) {
    KaleidoScopeCall_LoadPlayer();
    sPlayerCallDrawFunc(thisx, globalCtx);
}
