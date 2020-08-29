/*
 * File: z_bg_toki_swd.c
 * Overlay: ovl_Bg_Toki_Swd
 * Description: Master Sword (Contains Cutscenes)
 */

#include "z_bg_toki_swd.h"

#define FLAGS 0x00000010

#define THIS ((BgTokiSwd*)thisx)

void BgTokiSwd_Init(Actor* thisx, GlobalContext* globalCtx);
void BgTokiSwd_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgTokiSwd_Update(Actor* thisx, GlobalContext* globalCtx);
void BgTokiSwd_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808BAF40(BgTokiSwd* this, GlobalContext* globalCtx);
void func_808BB0AC(BgTokiSwd* this, GlobalContext* globalCtx);
void func_808BB128(BgTokiSwd* this, GlobalContext* globalCtx);

extern Gfx D_06001BD0[];

extern CutsceneData D_808BB2F0[];
extern CutsceneData D_808BB7A0[];
extern CutsceneData D_808BBD90[];

const ActorInit Bg_Toki_Swd_InitVars = {
    ACTOR_BG_TOKI_SWD,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_TOKI_OBJECTS,
    sizeof(BgTokiSwd),
    (ActorFunc)BgTokiSwd_Init,
    (ActorFunc)BgTokiSwd_Destroy,
    (ActorFunc)BgTokiSwd_Update,
    (ActorFunc)BgTokiSwd_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, 0x12, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 10, 70, 0, { 0 } }
};

static CollisionCheckInfoInit sColChkInfoInit = {
    0x0A,
    0x0023,
    0x0064,
    0xFF,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 0x19, ICHAIN_STOP),
};

void BgTokiSwd_SetupAction(BgTokiSwd* this, BgTokiSwdActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void BgTokiSwd_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgTokiSwd* this = THIS;
    s32 pad;

    Actor_ProcessInitChain(thisx, sInitChain);
    this->actor.shape.unk_08 = 800.0f;
    BgTokiSwd_SetupAction(thisx, func_808BAF40);

    if (LINK_IS_ADULT) {
        thisx->draw = NULL;
    }

    if (gSaveContext.sceneSetupIndex == 5) {
        globalCtx->unk_11D30[0] = 0xFF;
    }

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, thisx, &sCylinderInit);
    Collider_CylinderUpdate(thisx, &this->collider);
    func_80061ED4(&thisx->colChkInfo, 0, &sColChkInfoInit);
}

void BgTokiSwd_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgTokiSwd* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void func_808BAF40(BgTokiSwd* this, GlobalContext* globalCtx) {
    if (((gSaveContext.eventChkInf[4] & 0x8000) == 0) && (gSaveContext.sceneSetupIndex < 4) &&
        (func_8002E12C(&this->actor, 800.0f, 0x7530) != 0) && !Gameplay_InCsMode(globalCtx)) {
        gSaveContext.eventChkInf[4] |= 0x8000;
        globalCtx->csCtx.segment = D_808BBD90;
        gSaveContext.cutsceneTrigger = 1;
    }
    if (LINK_IS_CHILD || ((gSaveContext.eventChkInf[5] & 0x20))) {
        if (Actor_HasParent(&this->actor, globalCtx)) {
            if (LINK_IS_CHILD) {
                Item_Give(globalCtx, ITEM_SWORD_MASTER);
                globalCtx->csCtx.segment = D_808BB2F0;
            } else {
                globalCtx->csCtx.segment = D_808BB7A0;
            }
            Audio_SetBGM(NA_BGM_STOP);
            Audio_SetBGM(0x53);
            gSaveContext.cutsceneTrigger = 1;
            this->actor.parent = NULL;
            BgTokiSwd_SetupAction(this, func_808BB0AC);
        } else {
            if (func_8002E084(&this->actor, 0x2000) != 0) {
                func_8002F580(&this->actor, globalCtx);
            }
        }
    }
    if (gSaveContext.sceneSetupIndex == 5) {
        if (globalCtx->unk_11D30[0] > 0) {
            globalCtx->unk_11D30[0]--;
        } else {
            globalCtx->unk_11D30[0] = 0;
        }
    }
}

void func_808BB0AC(BgTokiSwd* this, GlobalContext* globalCtx) {
    Player* player;

    // if sword has a parent it has been pulled/placed from the pedestal
    if (Actor_HasParent(&this->actor, globalCtx)) {
        if (LINK_IS_CHILD) {
            Audio_PlayActorSound2(&this->actor, NA_SE_IT_SWORD_PUTAWAY_STN);
            this->actor.draw = NULL; // sword has been pulled, dont draw sword
        } else {
            this->actor.draw = BgTokiSwd_Draw; // sword has been placed, draw the master sword
        }
        BgTokiSwd_SetupAction(this, func_808BB128);
    } else {
        player = PLAYER;
        player->interactRangeActor = &this->actor;
    }
}

void func_808BB128(BgTokiSwd* this, GlobalContext* globalCtx) {
    if (Flags_GetEnv(globalCtx, 1) && (globalCtx->unk_11D30[0] < 0xFF)) {
        globalCtx->unk_11D30[0] += 5;
    }
}

void BgTokiSwd_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgTokiSwd* this = THIS;

    this->actionFunc(this, globalCtx);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider);
}

void BgTokiSwd_Draw(Actor* thisx, GlobalContext* globalCtx) {
    GlobalContext* globalCtx2 = globalCtx;
    BgTokiSwd* this = THIS;
    s32 pad[3];

    OPEN_DISPS(globalCtx2->state.gfxCtx, "../z_bg_toki_swd.c", 727);

    func_80093D18(globalCtx2->state.gfxCtx);

    func_8002EBCC(&this->actor, globalCtx2, 0);

    gSPSegment(oGfxCtx->polyOpa.p++, 0x08,
               Gfx_TexScroll(globalCtx2->state.gfxCtx, 0, -(globalCtx2->gameplayFrames % 0x80), 32, 32));
    gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx2->state.gfxCtx, "../z_bg_toki_swd.c", 742),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(oGfxCtx->polyOpa.p++, D_06001BD0);

    CLOSE_DISPS(globalCtx2->state.gfxCtx, "../z_bg_toki_swd.c", 776);
}
