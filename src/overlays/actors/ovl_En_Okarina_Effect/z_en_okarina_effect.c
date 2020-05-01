/*
 * File: z_en_okarina_effect.c
 * Overlay: ovl_En_Okarina_Effect
 * Description: Manages the storm created when playing Song of Storms
 */

#include <ultra64.h>
#include <global.h>

#include <vt.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ u16 timer;
    /* 0x0150 */ ActorFunc actionFunc;
} EnOkarinaEffect; // size = 0x0154

#define FLAGS 0x02000010

void EnOkarinaEffect_SetupAction(EnOkarinaEffect* this, ActorFunc* newActionFunc);
void EnOkarinaEffect_Init(EnOkarinaEffect* this, GlobalContext* globalCtx);
void EnOkarinaEffect_Destroy(EnOkarinaEffect* this, GlobalContext* globalCtx);
void EnOkarinaEffect_TriggerStorm(EnOkarinaEffect* this, GlobalContext* globalCtx);
void EnOkarinaEffect_ManageStorm(EnOkarinaEffect* this, GlobalContext* globalCtx);
void EnOkarinaEffect_Update(EnOkarinaEffect* this, GlobalContext* globalCtx);

const ActorInit En_Okarina_Effect_InitVars = {
    ACTOR_EN_OKARINA_EFFECT,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnOkarinaEffect),
    (ActorFunc)EnOkarinaEffect_Init,
    (ActorFunc)EnOkarinaEffect_Destroy,
    (ActorFunc)EnOkarinaEffect_Update,
    NULL,
};

void EnOkarinaEffect_SetupAction(EnOkarinaEffect* this, ActorFunc* newActionFunc) {
    this->actionFunc = newActionFunc;
}

void EnOkarinaEffect_Destroy(EnOkarinaEffect* this, GlobalContext* globalCtx) {
    globalCtx->envCtx.unk_F2[0] = 0;
    if ((D_8011FB30 != 4) && (D_8011FB30 != 5) && (globalCtx->envCtx.gloomySkyEvent == 1)) {
        globalCtx->envCtx.gloomySkyEvent = 2; // end gloomy sky
        func_80077684(globalCtx);
    }
    globalCtx->envCtx.lightning = 2; // end lightning
}

void EnOkarinaEffect_Init(EnOkarinaEffect* this, GlobalContext* globalCtx) {
    osSyncPrintf("\n\n");
    // "Ocarina Storm Effect"
    osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ オカリナあらし効果ビカビカビカ〜 ☆☆☆☆☆ \n" VT_RST);
    osSyncPrintf("\n\n");
    if (globalCtx->envCtx.unk_EE[1] != 0) {
        Actor_Kill(&this->actor); // kill if an instance is already spawned
    }
    EnOkarinaEffect_SetupAction(this, &EnOkarinaEffect_TriggerStorm);
}

void EnOkarinaEffect_TriggerStorm(EnOkarinaEffect* this, GlobalContext* globalCtx) {
    this->timer = 400;                    // 20 seconds
    globalCtx->envCtx.unk_F2[0] = 20;     // rain intensity target
    globalCtx->envCtx.gloomySkyEvent = 1; // start gloomy sky
    if ((D_8011FB30 != 0) || globalCtx->envCtx.gloomySky != 0) {
        globalCtx->envCtx.unk_DE = 1;
    }
    globalCtx->envCtx.lightning = 1; // start lightning
    func_80077624(globalCtx);
    EnOkarinaEffect_SetupAction(this, &EnOkarinaEffect_ManageStorm);
}

void EnOkarinaEffect_ManageStorm(EnOkarinaEffect* this, GlobalContext* globalCtx) {
    Flags_UnsetEnv(globalCtx, 5); // clear storms env flag
    if (((globalCtx->pauseCtx.state == 0) && (globalCtx->unk_10A20 == 0) && (globalCtx->msgCtx.unk_E300 == 0) &&
         (func_800C0D28(globalCtx) == 0) && ((globalCtx->transitionMode == 0) || (gSaveContext.gameMode != 0))) ||
        (this->timer >= 250)) {
        if (globalCtx->envCtx.unk_1E != 0 || globalCtx->envCtx.unk_1F != 1) {
            this->timer--;
        }
        osSyncPrintf("\nthis->timer=[%d]", this->timer);
        if (this->timer == 308) {
            // "Let's grow some beans"
            osSyncPrintf("\n\n\n豆よ のびろ 指定\n\n\n");
            Flags_SetEnv(globalCtx, 5); // set storms env flag
        }
    }

    if (D_8011FB38 != 0) {
        this->timer = 0;
    }

    if (this->timer == 0) {
        globalCtx->envCtx.unk_F2[0] = 0;
        if (globalCtx->csCtx.state == 0) {
            func_80077684(globalCtx);
        } else if (func_800FA0B4(0) == 1) {
            func_800F6D58(0xF, 1, 0);
            func_800F6D58(0xE, 1, 0);
        }
        osSyncPrintf("\n\n\nE_wether_flg=[%d]", D_8011FB30);
        osSyncPrintf("\nrain_evt_trg=[%d]\n\n", globalCtx->envCtx.gloomySkyEvent);
        if (D_8011FB30 == 0 && (globalCtx->envCtx.gloomySkyEvent == 1)) {
            globalCtx->envCtx.gloomySkyEvent = 2; // end gloomy sky
        } else {
            globalCtx->envCtx.gloomySkyEvent = 0;
            globalCtx->envCtx.unk_DE = 0;
        }
        globalCtx->envCtx.lightning = 2; // end lightning
        Actor_Kill(&this->actor);
    }
}

void EnOkarinaEffect_Update(EnOkarinaEffect* this, GlobalContext* globalCtx) {
    this->actionFunc(this, globalCtx);
    if (BREG(0) != 0) {
        DebugDisplay_AddObject(this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z,
                               this->actor.posRot.rot.x, this->actor.posRot.rot.y, this->actor.posRot.rot.z, 1.0f, 1.0f,
                               1.0f, 0xFF, 0, 0xFF, 0xFF, 4, globalCtx->state.gfxCtx);
    }
}
