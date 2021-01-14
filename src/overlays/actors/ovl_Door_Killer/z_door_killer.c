/*
 * File: z_door_killer.c
 * Overlay: ovl_Door_Killer
 * Description: Fake doors which attack player
 * 
 * Associated switch flags: (params >> 8) & 0x3F
 * ((params >> 8) & 0x3F) == 0x3F means no switch flags are checked / set
 */
#include "z_door_killer.h"

#define FLAGS 0x00000010

#define THIS ((DoorKiller*)thisx)

typedef enum {
    /* 0 */ DOOR_KILLER_DOOR,
    /* 1 */ DOOR_KILLER_RUBBLE_PIECE_1,
    /* 2 */ DOOR_KILLER_RUBBLE_PIECE_2,
    /* 3 */ DOOR_KILLER_RUBBLE_PIECE_3,
    /* 4 */ DOOR_KILLER_RUBBLE_PIECE_4
} DoorKillerBehaviour;

void DoorKiller_Init(Actor* thisx, GlobalContext* globalCtx);
void DoorKiller_Destroy(Actor* thisx, GlobalContext* globalCtx);
void DoorKiller_Update(Actor* thisx, GlobalContext* globalCtx);
void DoorKiller_Wait(DoorKiller* this, GlobalContext* globalCtx);
void DoorKiller_SetProperties(DoorKiller* this, GlobalContext* globalCtx);
void DoorKiller_DrawDoor(Actor* thisx, GlobalContext* globalCtx);
void DoorKiller_DrawRubble(Actor* thisx, GlobalContext* globalCtx);

extern FlexSkeletonHeader D_06001BC8;

const ActorInit Door_Killer_InitVars = {
    ACTOR_DOOR_KILLER,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_DOOR_KILLER,
    sizeof(DoorKiller),
    (ActorFunc)DoorKiller_Init,
    (ActorFunc)DoorKiller_Destroy,
    (ActorFunc)DoorKiller_Update,
    NULL,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_METAL_SHIELD, 0x11, 0x09, 0x00, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x10 }, { 0x0001FFEE, 0x00, 0x00 }, 0x01, 0x01, 0x00 },
    { 20, 100, 0, { 0, 0, 0 } },
};

static ColliderJntSphItemInit sJntSphItemsInit[1] = {
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000008, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
        { 0, { { 0, 0, 0 }, 100 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x00, 0x00, COLSHAPE_JNTSPH },
    1,
    sJntSphItemsInit,
};

static DoorKillerTextureEntry sDoorTextures[4] = {
    { OBJECT_HIDAN_OBJECTS, 0x0600E5A0 },
    { OBJECT_MIZU_OBJECTS, 0x060035C0 },
    { OBJECT_HAKA_DOOR, 0x06000000 },
    { OBJECT_GAMEPLAY_KEEP, 0x0400EF38 },
};

void DoorKiller_Init(Actor* thisx, GlobalContext* globalCtx) {
    GlobalContext* globalCtx2 = globalCtx;
    f32 randF;
    DoorKiller* this = THIS;
    s32 bankIndex;
    s32 i;

    // Look in the object bank for one of the four objects containing door textures
    bankIndex = -1;
    for (i = 0; bankIndex < 0; i++) {
        bankIndex = Object_GetIndex(&globalCtx2->objectCtx, sDoorTextures[i].objectId);
        this->textureEntryIndex = i;
    }
    osSyncPrintf("bank_ID = %d\n", bankIndex);
    osSyncPrintf("status = %d\n", this->textureEntryIndex);
    this->doorObjBankIndex = bankIndex;
    this->texture = sDoorTextures[this->textureEntryIndex].texture;

    ActorShape_Init(&this->actor.shape, 0.0f, NULL, 0.0f);
    Actor_SetScale(&this->actor, 0.01f);
    this->timer = 0;
    this->hasHitPlayerOrGround = 0;
    this->unused = 0;
    this->queuedWobble = 0;

    switch ((u8)(this->actor.params & 0xFF)) {
        case DOOR_KILLER_DOOR:
            // `jointTable` is used for both the `jointTable` and `morphTable` args here. Because this actor doesn't
            // play any animations it does not cause problems, but it would need to be changed otherwise.
            SkelAnime_InitFlex(globalCtx2, &this->skelAnime, &D_06001BC8, NULL, this->jointTable, this->jointTable, 9);
            this->actionFunc = DoorKiller_SetProperties;
            DoorKiller_SetProperties(this, globalCtx2);

            // manually set the overall rotation of the door
            this->jointTable[1].x = this->jointTable[1].z = 0x4000;

            // Set a cylinder collider to detect link attacks and larger sphere collider to detect explosions
            Collider_InitCylinder(globalCtx2, &this->colliderCylinder);
            Collider_SetCylinder(globalCtx2, &this->colliderCylinder, &this->actor, &sCylinderInit);
            Collider_InitJntSph(globalCtx2, &this->colliderJntSph);
            Collider_SetJntSph(globalCtx2, &this->colliderJntSph, &this->actor, &sJntSphInit,
                               this->colliderJntSphItems);
            this->colliderJntSph.list[0].dim.worldSphere.radius = 80;
            this->colliderJntSph.list[0].dim.worldSphere.center.x = (s16)this->actor.posRot.pos.x;
            this->colliderJntSph.list[0].dim.worldSphere.center.y = (s16)this->actor.posRot.pos.y + 50;
            this->colliderJntSph.list[0].dim.worldSphere.center.z = (s16)this->actor.posRot.pos.z;
            
            // If tied to a switch flag and that switch flag is already set, kill the actor.
            if ((((this->actor.params >> 8) & 0x3F) != 0x3F) &&
                Flags_GetSwitch(globalCtx2, ((this->actor.params >> 8) & 0x3F))) {
                Actor_Kill(&this->actor);
            }
            break;
        case DOOR_KILLER_RUBBLE_PIECE_1:
        case DOOR_KILLER_RUBBLE_PIECE_2:
        case DOOR_KILLER_RUBBLE_PIECE_3:
        case DOOR_KILLER_RUBBLE_PIECE_4:
            this->actionFunc = DoorKiller_SetProperties;
            DoorKiller_SetProperties(this, globalCtx2);

            this->actor.gravity = -0.6f;
            this->actor.minVelocityY = -6.0f;

            // Random trajectories for rubble pieces
            randF = Rand_CenteredFloat(8.0f);
            this->actor.velocity.z = Rand_ZeroFloat(8.0f);
            this->actor.velocity.x = (Math_CosS(this->actor.posRot.rot.y) * randF) +
                                     (Math_SinS(this->actor.posRot.rot.y) * this->actor.velocity.z);
            this->actor.velocity.z = (-Math_SinS(this->actor.posRot.rot.y) * randF) +
                                     (Math_CosS(this->actor.posRot.rot.y) * this->actor.velocity.z);
            this->actor.velocity.y = Rand_ZeroFloat(4.0f) + 4.0f;

            // These are used as the x,y,z rotational velocities in DoorKiller_FallAsRubble
            this->actor.posRot.rot.x = Rand_CenteredFloat(0x1000);
            this->actor.posRot.rot.y = Rand_CenteredFloat(0x1000);
            this->actor.posRot.rot.z = Rand_CenteredFloat(0x1000);
            this->timer = 80;
            break;
    }
}

void DoorKiller_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    DoorKiller* this = THIS;

    if ((thisx->params & 0xFF) == DOOR_KILLER_DOOR) {
        Collider_DestroyCylinder(globalCtx, &this->colliderCylinder);
        Collider_DestroyJntSph(globalCtx, &this->colliderJntSph);
    }
}

void DoorKiller_SpawnRubble(Actor* thisx, GlobalContext* globalCtx) {
    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_DOOR_KILLER, thisx->posRot.pos.x, thisx->posRot.pos.y + 9.0f,
                thisx->posRot.pos.z, thisx->shape.rot.x, thisx->shape.rot.y, thisx->shape.rot.z,
                DOOR_KILLER_RUBBLE_PIECE_1);
    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_DOOR_KILLER, thisx->posRot.pos.x + 7.88f,
                thisx->posRot.pos.y + 39.8f, thisx->posRot.pos.z, thisx->shape.rot.x, thisx->shape.rot.y,
                thisx->shape.rot.z, DOOR_KILLER_RUBBLE_PIECE_2);
    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_DOOR_KILLER, thisx->posRot.pos.x - 15.86f,
                thisx->posRot.pos.y + 61.98f, thisx->posRot.pos.z, thisx->shape.rot.x, thisx->shape.rot.y,
                thisx->shape.rot.z, DOOR_KILLER_RUBBLE_PIECE_3);
    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_DOOR_KILLER, thisx->posRot.pos.x + 3.72f,
                thisx->posRot.pos.y + 85.1f, thisx->posRot.pos.z, thisx->shape.rot.x, thisx->shape.rot.y,
                thisx->shape.rot.z, DOOR_KILLER_RUBBLE_PIECE_4);
}

void DoorKiller_FallAsRubble(DoorKiller* this, GlobalContext* globalCtx) {
    this->actor.velocity.y += this->actor.gravity;
    if (this->actor.velocity.y < this->actor.minVelocityY) {
        this->actor.velocity.y = this->actor.minVelocityY;
    }

    this->actor.velocity.x *= 0.98f;
    this->actor.velocity.z *= 0.98f;

    // posRot.rot is repurposed to be the rotation velocity for the rubble pieces
    this->actor.shape.rot.x += this->actor.posRot.rot.x;
    this->actor.shape.rot.y += this->actor.posRot.rot.y;
    this->actor.shape.rot.z += this->actor.posRot.rot.z;

    if (this->timer != 0) {
        this->timer--;
    } else {
        Actor_Kill(&this->actor);
    }
    func_8002D7EC(&this->actor);
}

s32 DoorKiller_IsHit(Actor* thisx, GlobalContext* globalCtx) {
    DoorKiller* this = THIS;
    if ((this->colliderCylinder.base.acFlags & 2) && (this->colliderCylinder.body.acHitItem != NULL)) {
        return 1;
    }
    return 0;
}

void DoorKiller_SetAC(DoorKiller* this, GlobalContext* globalCtx) {
    Collider_CylinderUpdate(&this->actor, &this->colliderCylinder);
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colliderCylinder.base);
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colliderJntSph.base);
}

void DoorKiller_Die(DoorKiller* this, GlobalContext* globalCtx) {
    s32 switchFlags = (this->actor.params >> 8) & 0x3F;

    // Can set a switch flag on death based on params
    if (switchFlags != 0x3F) {
        Flags_SetSwitch(globalCtx, switchFlags);
    }
    Actor_Kill(&this->actor);
}

/**
 * After slamming on the floor, rise back upright
 */
void DoorKiller_RiseBackUp(DoorKiller* this, GlobalContext* globalCtx) {
    s32 i;
    s16 rotation;

    if (this->timer > 0) {
        this->timer--;
    } else {
        this->actionFunc = DoorKiller_Wait;
        this->timer = 16;
        DoorKiller_SetAC(this, globalCtx);
        return;
    }

    this->actor.shape.rot.x = (this->timer >= 8) ? (this->timer << 0xB) - 0x4000 : 0;

    if (this->timer >= 12) {
        rotation = (-this->timer * -500) - 8000;
    } else if (this->timer >= 8) {
        rotation = -2000;
    } else if (this->timer >= 5) {
        rotation = (this->timer * -500) + 2000;
    } else {
        rotation = 0;
    }

    for (i = 2; i < 9; i++) {
        this->jointTable[i].z = -rotation;
    }

    if (this->timer < 8) {
        rotation = Math_SinS(this->timer << 0xD) * this->timer * 100.0f;
        for (i = 2; i < 9; i++) {
            this->jointTable[i].y = rotation;
        }
    }
    return;
}

/**
 * After wobbling, fall over and slam onto the floor, damaging the player if they are in the way.
 */
void DoorKiller_FallOver(DoorKiller* this, GlobalContext* globalCtx) {
    s32 i;
    s16 rotation;

    if (this->timer > 0) {
        this->timer--;
    } else {
        this->actionFunc = DoorKiller_RiseBackUp;
        this->timer = 16;
        return;
    }

    this->actor.shape.rot.x = (this->timer >= 4) ? (-this->timer << 0xC) + 0x8000 : 0x4000;

    if (this->timer >= 6) {
        rotation = (-this->timer * -500) - 4000;
    } else if (this->timer >= 4) {
        rotation = -1000;
    } else if (this->timer >= 3) {
        rotation = (this->timer * -500) + 1000;
    } else {
        rotation = 0;
    }

    for (i = 2; i < 9; i++) {
        this->jointTable[i].z = rotation;
    }

    if (this->timer == 4) {
        // spawn 20 dust particles just before slamming down
        Vec3f velocity = { 0.0f, 0.0f, 0.0f };
        Vec3f accel = { 0.0f, 1.0f, 0.0f };
        Vec3f pos;
        s32 j;
        f32 randF;

        for (j = 0; j != 20; j++) {
            pos.y = 0.0f;
            randF = Rand_CenteredFloat(40.0f);
            pos.z = Rand_ZeroFloat(100.0f);
            pos.x = (Math_CosS(this->actor.posRot.rot.y) * randF) + (Math_SinS(this->actor.posRot.rot.y) * pos.z);
            pos.z = (-Math_SinS(this->actor.posRot.rot.y) * randF) + (Math_CosS(this->actor.posRot.rot.y) * pos.z);
            velocity.x = pos.x * 0.2f;
            velocity.z = pos.z * 0.2f;
            accel.x = -(velocity.x) * 0.1f;
            accel.z = -(velocity.z) * 0.1f;
            pos.x += this->actor.posRot.pos.x;
            pos.y += this->actor.posRot.pos.y;
            pos.z += this->actor.posRot.pos.z;
            func_8002865C(globalCtx, &pos, &velocity, &accel, 300, 30);
        }
    }
    if (!(this->hasHitPlayerOrGround & 1)) {
        Vec3f playerPosRelToDoor;
        Player* player = PLAYER;
        func_8002DBD0(&this->actor, &playerPosRelToDoor, &player->actor.posRot.pos);
        if ((fabsf(playerPosRelToDoor.y) < 20.0f) && (fabsf(playerPosRelToDoor.x) < 20.0f) &&
            (playerPosRelToDoor.z < 100.0f) && (playerPosRelToDoor.z > 0.0f)) {
            this->hasHitPlayerOrGround |= 1;
            func_8002F6D4(globalCtx, &this->actor, 6.0f, this->actor.yawTowardsLink, 6.0f, 16);
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_KDOOR_HIT);
            func_8002F7DC(&player->actor, NA_SE_PL_BODY_HIT);
        }
    }
    if (!(this->hasHitPlayerOrGround & 1) && (this->timer == 2)) {
        this->hasHitPlayerOrGround |= 1;
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_KDOOR_HIT_GND);
    }
}

/**
 * Wobble around, signifying the door is about to fall over.
 */
void DoorKiller_Wobble(DoorKiller* this, GlobalContext* globalCtx) {
    s16 rotation;
    s32 i;

    if ((this->timer == 16) || (this->timer == 8)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_KDOOR_WAVE);
    }

    if (this->timer > 0) {
        this->timer--;
    } else {
        this->actionFunc = DoorKiller_FallOver;
        this->timer = 8;
        this->hasHitPlayerOrGround &= ~1;
        return;
    }

    rotation = Math_SinS(this->timer << 0xD) * this->timer * 100.0f;
    for (i = 2; i < 9; i++) {
        this->jointTable[i].y = rotation;
    }
    rotation = (u16)(s16)(-Math_CosS(this->timer << 0xC) * 1000.0f) + 1000;
    for (i = 2; i < 9; i++) {
        this->jointTable[i].z = rotation;
    }
}

/**
 * Unused, idle until timer runs out and then begin to wobble
 */
void DoorKiller_WaitBeforeWobble(DoorKiller* this, GlobalContext* globalCtx) {
    if (this->timer > 0) {
        this->timer--;
    } else {
        this->timer = 16;
        this->actionFunc = DoorKiller_Wobble;
    }
}

void DoorKiller_Wait(DoorKiller* this, GlobalContext* globalCtx) {
    Player* player;
    Vec3f playerPosRelToDoor;
    s16 angleToFacingPlayer;

    player = PLAYER;
    func_8002DBD0(&this->actor, &playerPosRelToDoor, &player->actor.posRot.pos);
    // queuedWobble is initialised to 0 and never set so the action function here goes unused. Setting this condition
    // in init would make the door auotmatically wobble and fall over after 10 frames of spawning
    if (this->queuedWobble != 0) {
        this->actionFunc = DoorKiller_WaitBeforeWobble;
        this->timer = 10;
        this->queuedWobble = 0;
        return;
    }
    if (DoorKiller_IsHit(&this->actor, globalCtx)) {
        if ((this->colliderCylinder.body.acHitItem->toucher.flags & 0x1FFA6) != 0) {
            this->timer = 16;
            this->actionFunc = DoorKiller_Wobble;
        } else if ((this->colliderCylinder.body.acHitItem->toucher.flags & 0x48) != 0) {
            DoorKiller_SpawnRubble(&this->actor, globalCtx);
            this->actionFunc = DoorKiller_Die;
            Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 20, NA_SE_EN_KDOOR_BREAK);
        }
    } else if (Actor_GetCollidedExplosive(globalCtx, &this->colliderJntSph.base) != NULL) {
            DoorKiller_SpawnRubble(&this->actor, globalCtx);
            this->actionFunc = DoorKiller_Die;
            Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 20, NA_SE_EN_KDOOR_BREAK);
    } else if (!Player_InCsMode(globalCtx) && (fabsf(playerPosRelToDoor.y) < 20.0f) &&
            (fabsf(playerPosRelToDoor.x) < 20.0f) && (playerPosRelToDoor.z < 50.0f) &&
            (playerPosRelToDoor.z > 0.0f)) {
        angleToFacingPlayer = player->actor.shape.rot.y - this->actor.shape.rot.y;
        if (playerPosRelToDoor.z > 0.0f) {
            angleToFacingPlayer = 0x8000 - angleToFacingPlayer;
        }
        if (ABS(angleToFacingPlayer) < 0x3000) {
            player->doorType = 3;
            player->doorDirection = (playerPosRelToDoor.z >= 0.0f) ? 1.0f : -1.0f;
            player->doorActor = &this->actor;
        }
    }
    DoorKiller_SetAC(this, globalCtx);
}

/**
 * Grabs the virtual address of the texture from the relevant door object
 */
void DoorKiller_UpdateTexture(Actor* thisx, GlobalContext* globalCtx) {
    DoorKiller* this = THIS;

    gSegments[6] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.status[this->doorObjBankIndex].segment);
    this->texture = SEGMENTED_TO_VIRTUAL(this->texture);
    gSegments[6] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.status[thisx->objBankIndex].segment);
}

/**
 * Gets the correct door texture, defines the appropriate draw fucntion and action function based on type behaviour
 * (door or rubble).
 */
void DoorKiller_SetProperties(DoorKiller* this, GlobalContext* globalCtx) {
    if (Object_IsLoaded(&globalCtx->objectCtx, this->doorObjBankIndex)) {
        DoorKiller_UpdateTexture(&this->actor, globalCtx);
        switch (this->actor.params & 0xFF) {
            case DOOR_KILLER_DOOR:
                this->actionFunc = DoorKiller_Wait;
                this->actor.draw = DoorKiller_DrawDoor;
                break;
            case DOOR_KILLER_RUBBLE_PIECE_1:
            case DOOR_KILLER_RUBBLE_PIECE_2:
            case DOOR_KILLER_RUBBLE_PIECE_3:
            case DOOR_KILLER_RUBBLE_PIECE_4:
                this->actionFunc = DoorKiller_FallAsRubble;
                this->actor.draw = DoorKiller_DrawRubble;
                break;
        }
    }
}

void DoorKiller_Update(Actor* thisx, GlobalContext* globalCtx) {
    DoorKiller* this = THIS;

    this->actionFunc(this, globalCtx);
}

void DoorKiller_SetTexture(Actor* thisx, GlobalContext* globalCtx) {
    DoorKiller* this = THIS;
    s32 doorTexture = this->texture;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_door_killer.c", 883);
    gSPSegment(POLY_OPA_DISP++, 0x08, doorTexture);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_door_killer.c", 885);
}

void DoorKiller_DrawDoor(Actor* thisx, GlobalContext* globalCtx) {
    DoorKiller* this = THIS;

    func_800943C8(globalCtx->state.gfxCtx);
    DoorKiller_SetTexture(thisx, globalCtx);
    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          NULL, NULL, NULL);
}

void DoorKiller_DrawRubble(Actor* thisx, GlobalContext* globalCtx) {
    static Gfx* dLists[] = { 0x06001250, 0x06001550, 0x060017B8, 0x06001A58 };
    s32 rubblePieceIndex = (thisx->params & 0xFF) - 1;
    DoorKiller* this = THIS;

    if ((this->timer >= 20) || ((this->timer & 1) == 0)) {
        DoorKiller_SetTexture(thisx, globalCtx);
        Gfx_DrawDListOpa(globalCtx, dLists[rubblePieceIndex]);
    }
}
