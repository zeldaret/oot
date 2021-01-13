#include "z_door_killer.h"

#define FLAGS 0x00000010

#define THIS ((DoorKiller*)thisx)


void DoorKiller_Init(Actor* thisx, GlobalContext* globalCtx);
void DoorKiller_Destroy(Actor* thisx, GlobalContext* globalCtx);
void DoorKiller_Update(Actor* thisx, GlobalContext* globalCtx);

//prototypes
void func_80995D6C();
void func_809958E4();
void func_80995318();
void func_80995A84(DoorKiller *this, GlobalContext *globalCtx);
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

static ColliderCylinderInit sCylinderInit =
{
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

static ColliderJntSphInit sJntSphInit =
{
    { COLTYPE_UNK10, 0x00, 0x09, 0x00, 0x00, COLSHAPE_JNTSPH },
    1, sJntSphItemsInit,
};

static DoorKillerTextureEntry sDoorTextures[4] = {
    {OBJECT_HIDAN_OBJECTS, 0x0600E5A0},
    {OBJECT_MIZU_OBJECTS, 0x060035C0},
    {OBJECT_HAKA_DOOR, 0x06000000},
    {OBJECT_GAMEPLAY_KEEP, 0x0400EF38}
};

static Vec3f D_80996030 = {0.0f, 0.0f, 0.0f};

static Vec3f D_8099603C = {0.0f, 1.0f, 0.0f};

static Gfx* D_80996048[4] = {0x06001250, 0x06001550, 0x060017B8, 0x06001A58};

void DoorKiller_Init(Actor *thisx, GlobalContext *globalCtx) {
    GlobalContext *globalCtx2 = globalCtx;
    f32 randF;
    DoorKiller *this = THIS;
    s32 bankIndex;
    s32 i;
    
    for (bankIndex = -1, i = 0; bankIndex < 0 ; i++){
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
    this->unkFlag = 0;
    this->unused = 0;
    this->unkCond = 0;

    switch ((u8)(this->actor.params & 0xFF)){
        case 0:
            // door
            SkelAnime_InitFlex(globalCtx2, &this->skelAnime, &D_06001BC8, NULL, this->unk192, this->unk192, 9);
            this->actionFunc = &func_80995D6C;
            func_80995D6C(&this->actor, globalCtx2);
            this->unk192[1].x = this->unk192[1].z = 0x4000;
            Collider_InitCylinder(globalCtx2, &this->colliderCylinder);
            Collider_SetCylinder(globalCtx2, &this->colliderCylinder, &this->actor, &sCylinderInit);
            Collider_InitJntSph(globalCtx2, &this->colliderJntSph);
            Collider_SetJntSph(globalCtx2, &this->colliderJntSph, &this->actor, &sJntSphInit, this->colliderJntSphItems);
            this->colliderJntSph.list[0].dim.worldSphere.radius = 80;
            this->colliderJntSph.list[0].dim.worldSphere.center.x = (s16)this->actor.posRot.pos.x;
            this->colliderJntSph.list[0].dim.worldSphere.center.y = (s16)this->actor.posRot.pos.y + 50;
            this->colliderJntSph.list[0].dim.worldSphere.center.z = (s16)this->actor.posRot.pos.z;
            if ((((this->actor.params >> 8) & 0x3F) != 0x3F) && Flags_GetSwitch(globalCtx2, ((this->actor.params >> 8) & 0x3F))) {
                Actor_Kill(&this->actor);
            }
            break;
        case 1: 
        case 2:
        case 3:
        case 4:
            // Rubble pieces
            this->actionFunc = &func_80995D6C;
            func_80995D6C(&this->actor, globalCtx2);
            
            this->actor.gravity = -0.6f;
            this->actor.minVelocityY = -6.0f;

            randF = Rand_CenteredFloat(8.0f);
            this->actor.velocity.z = Rand_ZeroFloat(8.0f);
            this->actor.velocity.x = (Math_CosS(this->actor.posRot.rot.y) * randF) + (Math_SinS(this->actor.posRot.rot.y) * this->actor.velocity.z);
            this->actor.velocity.z = (-Math_SinS(this->actor.posRot.rot.y) * randF) + (Math_CosS(this->actor.posRot.rot.y) * this->actor.velocity.z);
            this->actor.velocity.y = Rand_ZeroFloat(4.0f) + 4.0f;

            // These are used as the x,y,z rotational velocities in the action function
            this->actor.posRot.rot.x = Rand_CenteredFloat(0x1000); 
            this->actor.posRot.rot.y = Rand_CenteredFloat(0x1000);
            this->actor.posRot.rot.z = Rand_CenteredFloat(0x1000);
            this->timer = 80;
            break;
    }
}

void DoorKiller_Destroy(Actor *thisx, GlobalContext *globalCtx) {
    DoorKiller *this = THIS;

    if ((thisx->params & 0xFF) == 0) {
        Collider_DestroyCylinder(globalCtx, &this->colliderCylinder);
        Collider_DestroyJntSph(globalCtx, &this->colliderJntSph);
    }
}

// SpawnRubble broken door particles
void func_80995020(Actor *thisx, GlobalContext *globalCtx) {
    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_DOOR_KILLER, thisx->posRot.pos.x, thisx->posRot.pos.y + 9.0f, thisx->posRot.pos.z, thisx->shape.rot.x, thisx->shape.rot.y, thisx->shape.rot.z, 1);
    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_DOOR_KILLER, thisx->posRot.pos.x + 7.88f, thisx->posRot.pos.y + 39.8f, thisx->posRot.pos.z, thisx->shape.rot.x, thisx->shape.rot.y, thisx->shape.rot.z, 2);
    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_DOOR_KILLER, thisx->posRot.pos.x - 15.86f, thisx->posRot.pos.y + 61.98f, thisx->posRot.pos.z, thisx->shape.rot.x, thisx->shape.rot.y, thisx->shape.rot.z, 3);
    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_DOOR_KILLER, thisx->posRot.pos.x + 3.72f, thisx->posRot.pos.y + 85.1f, thisx->posRot.pos.z, thisx->shape.rot.x, thisx->shape.rot.y, thisx->shape.rot.z, 4);
}

// Generally fall and slowly decelerate in x,z (possibly for the broken pieces)
void DoorKiller_RubbleFall(DoorKiller *this, GlobalContext *globalCtx) {
    
    this->actor.velocity.y += this->actor.gravity;
    if (this->actor.velocity.y < this->actor.minVelocityY) {
        this->actor.velocity.y = this->actor.minVelocityY;
    }

    this->actor.velocity.x *= 0.98f;
    this->actor.velocity.z *= 0.98f;
    this->actor.shape.rot.x += this->actor.posRot.rot.x; // spinning based on actor posrot
    this->actor.shape.rot.y += this->actor.posRot.rot.y;
    this->actor.shape.rot.z += this->actor.posRot.rot.z;
    
    if (this->timer != 0) {
        this->timer--;
    } else {
        Actor_Kill(&this->actor);
    }
    func_8002D7EC(&this->actor);
}

s32 func_80995284(Actor* thisx, GlobalContext* globalCtx){
    DoorKiller* this = THIS;
    if (((this->colliderCylinder.base.acFlags & 2) != 0) && (this->colliderCylinder.body.acHitItem != NULL)) {
        return 1;
    }
    return 0;
}

void func_809952B8(DoorKiller *this, GlobalContext *globalCtx) {
    Collider_CylinderUpdate(&this->actor, &this->colliderCylinder);
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colliderCylinder.base);
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colliderJntSph.base);
}

void func_80995318(DoorKiller *this, GlobalContext *globalCtx) {
    s32 flags = (this->actor.params >> 8) & 0x3F;
    
    if (flags != 0x3F) {
        Flags_SetSwitch(globalCtx, flags);
    }
    Actor_Kill(&this->actor);
}

void func_80995368(DoorKiller *this, GlobalContext *globalCtx) {
    s32 i;
    s16 phi_a0;

    if (this->timer > 0) {
        this->timer--;
    } else {
        this->actionFunc = &func_80995A84;
        this->timer = 16;
        func_809952B8(this, globalCtx);
        return;
    }

    this->actor.shape.rot.x  = (this->timer >= 8)? (this->timer << 0xB) - 0x4000 : 0;

    if (this->timer >= 12) {
        phi_a0 = (-this->timer * -500) - 0x1F40;
    } else if (this->timer >= 8) {
        phi_a0 = -2000;
    } else if (this->timer >= 5) {
        phi_a0 = (this->timer * -500) + 2000;
    } else{
        phi_a0 = 0;
    }

    for (i = 2; i < 9; i++){
        this->unk192[i].z = -phi_a0;
    }

    if (this->timer < 8) {
       phi_a0 = Math_SinS(this->timer << 0xD) * this->timer * 100.0f;
        for (i = 2; i < 9; i++){
            this->unk192[i].y = phi_a0;
        }
    }
    return;
}

void func_80995518(DoorKiller *this, GlobalContext *globalCtx) {
    s32 i;
    s32 j;
    Vec3f velocity;
    Vec3f accel;
    Vec3f pos;
    s16 phi_v1;
    f32 randF;
    Vec3f playerPosRelToDoor;

    if (this->timer > 0) {
        this->timer--;
    } else {
        this->actionFunc = &func_80995368;
        this->timer = 16;
        return;
    }

    this->actor.shape.rot.x = (this->timer >= 4) ? (-this->timer << 0xC) + 0x8000 : 0x4000;

    if (this->timer >= 6) {
        phi_v1 = (-this->timer * -500) - 4000;
    } else if (this->timer >= 4) {
        phi_v1 = -1000;
    }else if (this->timer >= 3) {
        phi_v1 = (this->timer * -500) + 1000;
    } else {
        phi_v1 = 0;
    }

    for (i = 2; i < 9; i++){
        this->unk192[i].z = phi_v1;
    }
    
    if (this->timer == 4) {
        velocity = D_80996030;
        accel = D_8099603C;
        for (j = 0; j != 20; j++){
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
    if (!(this->unkFlag & 1)) {
        Player* player = PLAYER;
        func_8002DBD0(&this->actor, &playerPosRelToDoor, &player->actor.posRot.pos);
        if ((fabsf(playerPosRelToDoor.y) < 20.0f) && (fabsf(playerPosRelToDoor.x) < 20.0f) && (playerPosRelToDoor.z < 100.0f) && (playerPosRelToDoor.z > 0.0f)) {
            this->unkFlag |= 1;
            func_8002F6D4(globalCtx, &this->actor, 6.0f, this->actor.yawTowardsLink, 6.0f, 0x10);
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_KDOOR_HIT);
            func_8002F7DC(&player->actor, NA_SE_PL_BODY_HIT);
        }
    }
    if ((!(this->unkFlag & 1)) && (this->timer == 2)) {
        this->unkFlag |= 1;
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_KDOOR_HIT_GND);
    }
}

// DoorKiller MakeNoise?
void func_809958E4(DoorKiller *this, GlobalContext *globalCtx) {
    s16 temp;
    s32 i;

    if ((this->timer == 0x10) || (this->timer == 8)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_KDOOR_WAVE);
    }

    if (this->timer > 0) {
        this->timer--;
    } else {
        this->actionFunc = &func_80995518;
        this->timer = 8;
        this->unkFlag &= ~1;
        return;
    }

    temp = Math_SinS(this->timer << 0xD) * this->timer * 100.0f;
    for (i = 2; i < 9; i++){
        this->unk192[i].y = temp;
    }
    temp = (u16)(s16)(-Math_CosS(this->timer << 0xC) * 1000.0f) + 1000;
    for (i = 2; i < 9; i++){
        this->unk192[i].z = temp;
    }
}

void func_80995A50(DoorKiller *this, GlobalContext *globalCtx) {
    if (this->timer > 0) {
        this->timer--;
    }else{
        this->timer = 16;
        this->actionFunc = &func_809958E4;
    }
}

void func_80995A84(DoorKiller *this, GlobalContext *globalCtx) {
    Player *player;
    Vec3f sp30;
    s32 temp_v0;
    s16 angleToFacingPlayer;

    player = PLAYER;
    func_8002DBD0(&this->actor, &sp30, &player->actor.posRot.pos);
    if (this->unkCond != 0) {
        this->actionFunc = &func_80995A50;
        this->timer = 10;
        this->unkCond = 0;
        return;
    }
    if (func_80995284(&this->actor, globalCtx) != 0) {
        temp_v0 = this->colliderCylinder.body.acHitItem->toucher.flags;
        if ((temp_v0 & 0x1FFA6) != 0) {
            this->timer = (u16)0x10;
            this->actionFunc = &func_809958E4;
        } else if ((temp_v0 & 0x48) != 0) {
            func_80995020(&this->actor, globalCtx);
            this->actionFunc = &func_80995318;
            Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 0x14, (u16)0x39DDU);
        }
    } else {
        if (Actor_GetCollidedExplosive(globalCtx, &this->colliderJntSph.base) != 0) {
            func_80995020(&this->actor, globalCtx);
            this->actionFunc = &func_80995318;
            Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 0x14, (u16)0x39DDU);
        } else {
            if ((Player_InCsMode(globalCtx) == 0) && (fabsf(sp30.y) < 20.0f) && (fabsf(sp30.x) < 20.0f) && (sp30.z < 50.0f) && (sp30.z > 0.0f)) {
                angleToFacingPlayer = player->actor.shape.rot.y - this->actor.shape.rot.y;
                if (sp30.z > 0.0f) {
                    angleToFacingPlayer = 0x8000 - angleToFacingPlayer;
                }
                if (ABS(angleToFacingPlayer) < 0x3000) {
                    player->doorType = 3;
                    player->doorDirection = (sp30.z >= 0.0f) ? 1.0f : -1.0f;
                    player->doorActor = &this->actor;
                }
            }
        }
    }
    func_809952B8(this, globalCtx);
}

/**
 * Grabs the virtual address of the texture from the relevant door object
 */
// updateDoorTexture? getDoorTexture?
void func_80995CDC(Actor *thisx, GlobalContext* globalCtx) {
    DoorKiller *this = THIS;
    
    gSegments[6] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.status[this->doorObjBankIndex].segment);
    this->texture = SEGMENTED_TO_VIRTUAL(this->texture);
    gSegments[6] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.status[thisx->objBankIndex].segment);
}

// update/get the door texture and 
void func_80995D6C(DoorKiller *this, GlobalContext* globalCtx) {
    if (Object_IsLoaded(&globalCtx->objectCtx, this->doorObjBankIndex)) {
        func_80995CDC(&this->actor, globalCtx);
        switch(this->actor.params & 0xFF){
            case 0:
                this->actionFunc = &func_80995A84;
                this->actor.draw = &DoorKiller_DrawDoor;
                break;
            case 1:
            case 2:
            case 3:
            case 4:
                this->actionFunc = &DoorKiller_RubbleFall;
                this->actor.draw = &DoorKiller_DrawRubble;
                break;
        }
    }
}

void DoorKiller_Update(Actor *thisx, GlobalContext *globalCtx) {
    DoorKiller* this = THIS;
    
    this->actionFunc(this, globalCtx);
}

void func_80995E40(Actor *thisx, GlobalContext *globalCtx) {
    DoorKiller* this = THIS;
    s32 doorTexture = this->texture;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_door_killer.c", 883);
    gSPSegment(POLY_OPA_DISP++, 0x08, doorTexture);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_door_killer.c", 885);
}

void DoorKiller_DrawDoor(Actor *thisx, GlobalContext *globalCtx) {
    DoorKiller* this = THIS;

    func_800943C8(globalCtx->state.gfxCtx);
    func_80995E40(thisx, globalCtx);
    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount, NULL, NULL, NULL);
}

void DoorKiller_DrawRubble(Actor *thisx, GlobalContext *globalCtx) {
    s32 texturesIndex = (thisx->params & 0xFF) - 1;
    DoorKiller* this = THIS;

    if ((this->timer >= 0x14) || ((this->timer & 1) == 0)) {
        func_80995E40(thisx, globalCtx);
        Gfx_DrawDListOpa(globalCtx, D_80996048[texturesIndex]);
    }
}