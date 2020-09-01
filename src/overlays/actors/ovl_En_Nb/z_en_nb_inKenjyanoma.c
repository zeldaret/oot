/*
 * File: z_en_nb_inKenjyanoma.c
 * Description: Functions for Chamber of Sages Nabooru
 */

#include "z_en_nb.h"

extern AnimationHeader* D_06009694; // hands on hips standing
extern AnimationHeader* D_0600274C; // raising both arms up transition (giving medallion to link ?)
extern AnimationHeader* D_06002B4C; // raising both arms up stable (giving medallion to link ?)
extern CutsceneData D_80AB431C[];

void EnNb_SetCurrentAnim(EnNb* this, AnimationHeader* animation, u8 mode, f32 transitionRate, s32 arg4);

void EnNb_SetChamberAnim(EnNb* this, GlobalContext* globalCtx) {
    EnNb_SetCurrentAnim(this, &D_06009694, 0, 0, 0);
    this->actor.shape.unk_08 = -10000.0f;
}

void EnNb_SpawnBlueWarp(EnNb* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->actor;
    f32 posX = thisx->posRot.pos.x;
    f32 posY = thisx->posRot.pos.y;
    f32 posZ = thisx->posRot.pos.z;

    Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DOOR_WARP1, posX, posY, posZ, 0, 0, 0, 2);
}

void EnNb_GiveMedallion(EnNb* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    f32 posX = player->actor.posRot.pos.x;
    f32 posY = player->actor.posRot.pos.y + 50.0f;
    f32 posZ = player->actor.posRot.pos.z;

    Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DEMO_EFFECT, posX, posY, posZ, 0, 0, 0,
                        12);
    Item_Give(globalCtx, ITEM_MEDALLION_SPIRIT);
}

void EnNb_ComeUpImpl(EnNb* this, GlobalContext* globalCtx) {
    this->actor.shape.unk_08 += 83.333336f;
}

void EnNb_SetupChamberCsImpl(EnNb* this, GlobalContext* globalCtx) {
    s32 pad[2];
    Player* player;
    s16 temp;

    if ((gSaveContext.chamberCutsceneNum == 3) && (gSaveContext.sceneSetupIndex < 4)) {
        player = PLAYER;
        this->action = NB_CHAMBER_UNDERGROUND;
        globalCtx->csCtx.segment = &D_80AB431C;
        gSaveContext.cutsceneTrigger = 2;
        Item_Give(globalCtx, ITEM_MEDALLION_SPIRIT);
        temp = this->actor.posRot.rot.y + 0x8000;
        player->actor.shape.rot.y = temp;
        player->actor.posRot.rot.y = temp;
    }
}

void EnNb_SetupChamberWarpImpl(EnNb* this, GlobalContext* globalCtx) {
    CutsceneContext* csCtx = &globalCtx->csCtx;
    CsCmdActorAction* csCmdNPCAction;

    if (csCtx->state != 0) {
        csCmdNPCAction = csCtx->npcActions[1];
        if (csCmdNPCAction != NULL && csCmdNPCAction->action == 2) {
            this->action = NB_CHAMBER_APPEAR;
            this->drawMode = NB_DRAW_DEFAULT;
            EnNb_SpawnBlueWarp(this, globalCtx);
        }
    }
}

void EnNb_SetupDefaultChamberIdle(EnNb* this) {
    if (this->actor.shape.unk_08 >= 0.0f) {
        this->action = NB_CHAMBER_IDLE;
        this->actor.shape.unk_08 = 0.0f;
    }
}

void EnNb_SetupArmRaise(EnNb* this, GlobalContext* globalCtx) {
    AnimationHeader* animation = &D_0600274C;
    CsCmdActorAction* csCmdNPCAction;

    if (globalCtx->csCtx.state != 0) {
        csCmdNPCAction = globalCtx->csCtx.npcActions[1];
        if (csCmdNPCAction != NULL && csCmdNPCAction->action == 3) {
            SkelAnime_ChangeAnim(&this->skelAnime, animation, 1.0f, 0.0f,
                                 SkelAnime_GetFrameCount(&animation->genericHeader), 2, 0.0f);
            this->action = NB_CHAMBER_RAISE_ARM;
        }
    }
}

void EnNb_SetupRaisedArmTransition(EnNb* this, UNK_TYPE arg1) {
    AnimationHeader* animation = &D_06002B4C;
    if (arg1 != 0) {
        SkelAnime_ChangeAnim(&this->skelAnime, animation, 1.0f, 0.0f,
                             SkelAnime_GetFrameCount(&animation->genericHeader), 0, 0.0f);
        this->action = NB_CHAMBER_RAISE_ARM_TRANSITION;
    }
}

void EnNb_SetupMedallion(EnNb* this, GlobalContext* globalCtx) {
    CsCmdActorAction* csCmdNPCAction;

    if (globalCtx->csCtx.state != 0) {
        csCmdNPCAction = globalCtx->csCtx.npcActions[6];
        if (csCmdNPCAction != NULL && csCmdNPCAction->action == 2) {
            this->action = NB_GIVE_MEDALLION;
            EnNb_GiveMedallion(this, globalCtx);
        }
    }
}

// Action func is never explicitly set to this, but it runs when the memory gets zero cleared
void EnNb_SetupChamberCs(EnNb* this, GlobalContext* globalCtx) {
    EnNb_SetupChamberCsImpl(this, globalCtx);
}

void EnNb_SetupChamberWarp(EnNb* this, GlobalContext* globalCtx) {
    EnNb_SetupChamberWarpImpl(this, globalCtx);
}

void EnNb_ComeUp(EnNb* this, GlobalContext* globalCtx) {
    EnNb_ComeUpImpl(this, globalCtx);
    EnNb_FrameUpdateMatrix(this);
    EnNb_UpdateEyes(this);
    EnNb_SetupDefaultChamberIdle(this);
}

void func_80AB193C(EnNb* this, GlobalContext* globalCtx) {
    func_80AB1284(this, globalCtx);
    EnNb_FrameUpdateMatrix(this);
    EnNb_UpdateEyes(this);
    EnNb_SetupArmRaise(this, globalCtx);
}

void EnNb_RaiseArm(EnNb* this, GlobalContext* globalCtx) {
    s32 unk;
    func_80AB1284(this, globalCtx);
    unk = EnNb_FrameUpdateMatrix(this);
    EnNb_UpdateEyes(this);
    EnNb_SetupRaisedArmTransition(this, unk);
}

void func_80AB19BC(EnNb* this, GlobalContext* globalCtx) {
    func_80AB1284(this, globalCtx);
    EnNb_FrameUpdateMatrix(this);
    EnNb_UpdateEyes(this);
    EnNb_SetupMedallion(this, globalCtx);
}

void func_80AB19FC(EnNb* this, GlobalContext* globalCtx) {
    func_80AB1284(this, globalCtx);
    EnNb_FrameUpdateMatrix(this);
    EnNb_UpdateEyes(this);
}
