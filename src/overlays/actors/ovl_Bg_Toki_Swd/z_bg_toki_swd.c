/*
 * File: z_bg_toki_swd.c
 * Overlay: ovl_Bg_Toki_Swd
 * Description: Master Sword (Contains Cutscenes)
 */

#include "z_bg_toki_swd.h"

#define ROOM 0x00
#define FLAGS 0x00000010

static void BgTokiSwd_Init(BgTokiSwd* this, GlobalContext* globalCtx);
static void BgTokiSwd_Destroy(BgTokiSwd* this, GlobalContext* globalCtx);
static void BgTokiSwd_Update(BgTokiSwd* this, GlobalContext* globalCtx);
static void BgTokiSwd_Draw(BgTokiSwd* this, GlobalContext* globalCtx);
static void BgTokiSwd_SetupAction(BgTokiSwd* this, ActorFunc actionFunc);
static void func_808BAF40(BgTokiSwd* this, GlobalContext* globalCtx);
static void func_808BB0AC(BgTokiSwd* this, GlobalContext* globalCtx);
static void func_808BB128(BgTokiSwd* this, GlobalContext* globalCtx);

extern u32 D_06001BD0;

#include "z_bg_toki_swd_cutscene_data.c"

const ActorInit Bg_Toki_Swd_InitVars = {
    ACTOR_BG_TOKI_SWD,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_TOKI_OBJECTS,
    sizeof(BgTokiSwd),
    (ActorFunc)BgTokiSwd_Init,
    (ActorFunc)BgTokiSwd_Destroy,
    (ActorFunc)BgTokiSwd_Update,
    (ActorFunc)BgTokiSwd_Draw,
};

static ColliderCylinderInit colliderInit = {
    0x0A, 0x00, 0x00,       0x39, 0x12, 0x01, 0x00, 0x00, 0x00,   0x00,   0x00,   0x00,   0xFFCFFFFF, 0x00,   0x00,
    0x00, 0x00, 0xFFCFFFFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0000, 0x0001, 0x0000, 0x000A, 0x0046,     0x0000,
};

static Sub98Init4 sub98Init = {
    0x0A,
    0x0023,
    0x0064,
    0xFF,
};

static InitChainEntry initChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 0x19, ICHAIN_STOP),
};

static void BgTokiSwd_SetupAction(BgTokiSwd* this, ActorFunc actionFunc) {
    this->actionFunc = actionFunc;
}

static void BgTokiSwd_Init(BgTokiSwd* this, GlobalContext* globalCtx) {
    ColliderCylinderMain* collision;
    Actor* thisx = &this->actor;

    Actor_ProcessInitChain(thisx, initChain);
    this->actor.shape.unk_08 = 800.0f;
    BgTokiSwd_SetupAction(thisx, func_808BAF40);
    collision = &this->collider;
    if (LINK_IS_ADULT) {
        thisx->draw = NULL;
    }

    if (gSaveContext.scene_setup_index == 5) {
        globalCtx->unk_11D30[0] = 0xFF;
    }

    ActorCollider_AllocCylinder(globalCtx, collision);
    ActorCollider_InitCylinder(globalCtx, collision, thisx, &colliderInit);
    ActorCollider_Cylinder_Update(thisx, collision);
    func_80061ED4(&thisx->sub_98, 0, &sub98Init);
}

static void BgTokiSwd_Destroy(BgTokiSwd* this, GlobalContext* globalCtx) {
    ColliderCylinderMain* collider = &this->collider;
    ActorCollider_FreeCylinder(globalCtx, collider);
}

static void func_808BAF40(BgTokiSwd* this, GlobalContext* globalCtx) {
    if (((gSaveContext.event_chk_inf[4] & 0x8000) == 0) && (gSaveContext.scene_setup_index < 4) &&
        (func_8002E12C(&this->actor, 800.0f, 0x7530) != 0) && (func_800BFC84(globalCtx) == 0)) {
        gSaveContext.event_chk_inf[4] |= 0x8000;
        globalCtx->csCtx.segment = D_808BBD90;
        gSaveContext.cutscene_trigger = 1;
    }
    if (LINK_IS_CHILD || ((gSaveContext.event_chk_inf[5] & 0x20) != 0)) {
        if (func_8002F410(&this->actor, globalCtx) != 0) {
            if (LINK_IS_CHILD) {
                Item_Give(globalCtx, ITEM_SWORD_MASTER);
                globalCtx->csCtx.segment = D_808BB2F0;
            } else {
                globalCtx->csCtx.segment = D_808BB7A0;
            }
            Audio_SetBGM(NA_BGM_STOP);
            Audio_SetBGM(NA_SE_PL_BOUND_DIRT);
            gSaveContext.cutscene_trigger = 1;
            this->actor.attachedA = 0;
            BgTokiSwd_SetupAction(this, func_808BB0AC);
        } else {
            if (func_8002E084(&this->actor, 0x2000) != 0) {
                func_8002F580(&this->actor, globalCtx);
            }
        }
    }
    if (gSaveContext.scene_setup_index == 5) {
        if (globalCtx->unk_11D30[0] > 0) {
            globalCtx->unk_11D30[0]--;
        } else {
            globalCtx->unk_11D30[0] = 0;
        }
    }
}

static void func_808BB0AC(BgTokiSwd* this, GlobalContext* globalCtx) {
    Player* player;

    // if attached is set, sword has been pulled/placed from the pedestal
    if (func_8002F410(&this->actor, globalCtx) != 0) {
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

static void func_808BB128(BgTokiSwd* this, GlobalContext* globalCtx) {
    if ((func_8006C4A4(globalCtx, 1) != 0) && (globalCtx->unk_11D30[0] < 0xFF)) {
        globalCtx->unk_11D30[0] += 5;
    }
}

static void BgTokiSwd_Update(BgTokiSwd* this, GlobalContext* globalCtx) {
    this->actionFunc(&this->actor, globalCtx);
    Actor_CollisionCheck_SetOT(globalCtx, &globalCtx->sub_11E60, &this->collider);
}

static void BgTokiSwd_Draw(BgTokiSwd* this, GlobalContext* globalCtx) {
    s32 pad[4];
    GameState* state;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];
    state = &globalCtx->state;
    gfxCtx = globalCtx->state.gfxCtx;

    Graph_OpenDisps(dispRefs, state->gfxCtx, "../z_bg_toki_swd.c", 727);
    func_80093D18(globalCtx->state.gfxCtx);

    func_8002EBCC(&this->actor, globalCtx, 0);

    gSPSegment(gfxCtx->polyOpa.p++, 0x08,
               Gfx_TexScroll(globalCtx->state.gfxCtx, 0, -(globalCtx->gameplayFrames % 0x80), 32, 32));
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_toki_swd.c", 742),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gfxCtx->polyOpa.p++, &D_06001BD0);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_toki_swd.c", 776);
}
