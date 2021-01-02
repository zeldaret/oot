/*
 * File: z_door_ana.c
 * Overlay: ovl_Door_Ana
 * Description: Grottos Entrances/Exits
 */

#include "z_door_ana.h"

#define FLAGS 0x02000000

#define THIS ((DoorAna*)thisx)

void DoorAna_Init(Actor* thisx, GlobalContext* globalCtx);
void DoorAna_Destroy(Actor* thisx, GlobalContext* globalCtx);
void DoorAna_Update(Actor* thisx, GlobalContext* globalCtx);
void DoorAna_Draw(Actor* thisx, GlobalContext* globalCtx);

void DoorAna_WaitClosed(DoorAna* this, GlobalContext* globalCtx);
void DoorAna_WaitOpen(DoorAna* this, GlobalContext* globalCtx);
void DoorAna_GrabLink(DoorAna* this, GlobalContext* globalCtx);

const ActorInit Door_Ana_InitVars = {
    ACTOR_DOOR_ANA,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_FIELD_KEEP,
    sizeof(DoorAna),
    (ActorFunc)DoorAna_Init,
    (ActorFunc)DoorAna_Destroy,
    (ActorFunc)DoorAna_Update,
    (ActorFunc)DoorAna_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x00, 0x00, COLSHAPE_CYLINDER },
    { 0x02, { 0x00000000, 0x00, 0x00 }, { 0x00000048, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
    { 50, 10, 0, { 0 } },
};

// array of entrance table entries to grotto destinations
static s16 entrances[] = {
    0x036D, 0x003F, 0x0598, 0x059C, 0x05A0, 0x05A4, 0x05A8, 0x05AC,
    0x05B0, 0x05B4, 0x05B8, 0x05BC, 0x05C0, 0x05C4, 0x05FC,
};

extern Gfx D_05001390[];

void DoorAna_SetupAction(DoorAna* this, DoorAnaActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void DoorAna_Init(Actor* thisx, GlobalContext* globalCtx) {
    DoorAna* this = THIS;

    this->actor.shape.rot.z = 0;
    this->actor.shape.rot.y = this->actor.shape.rot.z;
    // init block for grottos that are initially "hidden" (require explosives/hammer/song of storms to open)
    if ((this->actor.params & 0x300) != 0) {
        // only allocate collider for grottos that need bombing/hammering open
        if ((this->actor.params & 0x200) != 0) {
            Collider_InitCylinder(globalCtx, &this->collider);
            Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
        } else {
            this->actor.flags |= 0x10;
        }
        Actor_SetScale(&this->actor, 0);
        DoorAna_SetupAction(this, DoorAna_WaitClosed);
    } else {
        DoorAna_SetupAction(this, DoorAna_WaitOpen);
    }
    this->actor.unk_1F = 0;
}

void DoorAna_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    DoorAna* this = THIS;

    // free collider if it has one
    if ((this->actor.params & 0x200) != 0) {
        Collider_DestroyCylinder(globalCtx, &this->collider);
    }
}

// update routine for grottos that are currently "hidden"/unopened
void DoorAna_WaitClosed(DoorAna* this, GlobalContext* globalCtx) {
    u32 openGrotto = false;
    if ((this->actor.params & 0x200) == 0) {
        // opening with song of storms
        if (this->actor.xyzDistToLinkSq < 40000.0f && Flags_GetEnv(globalCtx, 5)) {
            openGrotto = true;
            this->actor.flags &= ~0x10;
        }
    } else {
        // bombing/hammering open a grotto
        if ((this->collider.base.acFlags & 2) != 0) {
            openGrotto = true;
            Collider_DestroyCylinder(globalCtx, &this->collider);
        } else {
            Collider_CylinderUpdate(&this->actor, &this->collider);
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider);
        }
    }
    // open the grotto
    if (openGrotto) {
        this->actor.params &= ~0x0300;
        DoorAna_SetupAction(this, DoorAna_WaitOpen);
        Audio_PlaySoundGeneral(NA_SE_SY_CORRECT_CHIME, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    }
    func_8002F5F0(&this->actor, globalCtx);
}

// update routine for grottos that are open
void DoorAna_WaitOpen(DoorAna* this, GlobalContext* globalCtx) {
    Player* player;
    s32 destinationIdx;

    player = PLAYER;
    if (Math_StepToF(&this->actor.scale.x, 0.01f, 0.001f) != 0) {
        if ((this->actor.unk_1F != 0) && (globalCtx->sceneLoadFlag == 0) && (player->stateFlags1 & 0x80000000) &&
            (player->unk_84F == 0)) {
            destinationIdx = ((this->actor.params >> 0xC) & 7) - 1;
            Gameplay_SetupRespawnPoint(globalCtx, RESPAWN_MODE_RETURN, 0x4FF);
            gSaveContext.respawn[RESPAWN_MODE_RETURN].pos.y = this->actor.posRot.pos.y;
            gSaveContext.respawn[RESPAWN_MODE_RETURN].yaw = this->actor.initPosRot.rot.y;
            gSaveContext.respawn[RESPAWN_MODE_RETURN].data = this->actor.params & 0xFFFF;
            if (destinationIdx < 0) {
                destinationIdx = this->actor.initPosRot.rot.z + 1;
            }
            globalCtx->nextEntranceIndex = entrances[destinationIdx];
            DoorAna_SetupAction(this, DoorAna_GrabLink);
        } else {
            if (!Player_InCsMode(globalCtx) && !(player->stateFlags1 & 0x8800000) &&
                this->actor.xzDistToLink <= 15.0f && -50.0f <= this->actor.yDistToLink &&
                this->actor.yDistToLink <= 15.0f) {
                player->stateFlags1 |= 0x80000000;
                this->actor.unk_1F = 1;
            } else {
                this->actor.unk_1F = 0;
            }
        }
    }
    Actor_SetScale(&this->actor, this->actor.scale.x);
}

// update function for after the player has triggered the grotto
void DoorAna_GrabLink(DoorAna* this, GlobalContext* globalCtx) {
    Player* player;

    if (this->actor.yDistToLink <= 0.0f && 15.0f < this->actor.xzDistToLink) {
        player = PLAYER;
        player->actor.posRot.pos.x = Math_SinS(this->actor.yawTowardsLink) * 15.0f + this->actor.posRot.pos.x;
        player->actor.posRot.pos.z = Math_CosS(this->actor.yawTowardsLink) * 15.0f + this->actor.posRot.pos.z;
    }
}

void DoorAna_Update(Actor* thisx, GlobalContext* globalCtx) {
    DoorAna* this = THIS;

    this->actionFunc(this, globalCtx);
    // changes the grottos facing angle based on camera angle
    this->actor.shape.rot.y = Camera_GetCamDirYaw(ACTIVE_CAM) + 0x8000;
}

void DoorAna_Draw(Actor* thisx, GlobalContext* globalCtx) {
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_door_ana.c", 440);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_door_ana.c", 446),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_XLU_DISP++, D_05001390);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_door_ana.c", 449);
}
