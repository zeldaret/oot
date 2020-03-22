/*
 * File: z_en_eg.c
 * Overlay: ovl_En_Eg
 * Description: Zelda's Path in Ganon Castle Escape?
 */

#include <ultra64.h>
#include <global.h>
#include <z64.h>
#include <vt.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ s32 funcIndex;
} ActorEg; // size = 0x0154

#define ROOM 0x00
#define FLAGS 0x00000010

static void PlayVoidOutSFX();
static void Init(ActorEg* this, GlobalContext* globalCtx);
static void Destroy(ActorEg* this, GlobalContext* globalCtx);
static void func_809FFDC8(ActorEg* this, GlobalContext* globalCtx);
static void Update(ActorEg* this, GlobalContext* globalCtx);
static void Draw(ActorEg* this, GlobalContext* globalCtx);

static bool hasVoidedOut = false;
static const ActorFunc funcTbl[] = {
    (ActorFunc)func_809FFDC8,
};

const ActorInit En_Eg_InitVars = {
    ACTOR_EN_EG,     ACTORTYPE_ITEMACTION, ROOM,
    FLAGS,           OBJECT_ZL2,           sizeof(ActorEg),
    (ActorFunc)Init, (ActorFunc)Destroy,   (ActorFunc)Update,
    (ActorFunc)Draw,
};

static void PlayVoidOutSFX() {
    func_800788CC(NA_SE_OC_ABYSS);
}

static void Destroy(ActorEg* this, GlobalContext* globalCtx) {
}

static void Init(ActorEg* this, GlobalContext* globalCtx) {
    this->funcIndex = 0;
}

static void func_809FFDC8(ActorEg* this, GlobalContext* globalCtx) {
    if (!hasVoidedOut && (gSaveContext.timer_2_value < 1) && Flags_GetSwitch(globalCtx, 0x36) && (kREG(0) == 0)) {
        // Void the player out
        func_800C0C88(globalCtx);
        gSaveContext.respawn_flag = -2;
        Audio_SetBGM(NA_BGM_STOP);
        globalCtx->fadeOutTransition = 2;
        PlayVoidOutSFX();
        hasVoidedOut = true;
    }
}

static void Update(ActorEg* this, GlobalContext* globalCtx) {
    s32 funcIndex = this->funcIndex;

    if (((funcIndex < 0) || (0 < funcIndex)) || (funcTbl[funcIndex] == NULL)) {
        // Translates to: "Main Mode is wrong!!!!!!!!!!!!!!!!!!!!!!!!!"
        osSyncPrintf(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
    } else {
        funcTbl[funcIndex](this, globalCtx);
    }
}

static void Draw(ActorEg* this, GlobalContext* globalCtx) {
}
