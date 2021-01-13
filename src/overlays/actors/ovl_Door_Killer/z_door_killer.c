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
void func_80995EC4(Actor* thisx, GlobalContext* globalCtx);
void func_80995F1C(Actor* thisx, GlobalContext* globalCtx);


extern FlexSkeletonHeader D_06001BC8;

extern temp_struct D_80996010[];

extern UNK_TYPE D_80996014;

extern ColliderCylinderInit D_80995FB0;

extern ColliderJntSphInit D_80996000;

extern Vec3f D_80996030;

extern Vec3f D_8099603C;

extern Gfx* D_80996048[];

/*
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
*/

void DoorKiller_Init(Actor *thisx, GlobalContext *globalCtx) {
    GlobalContext *globalCtx2 = globalCtx;
    f32 randF;
    DoorKiller *this = THIS;
    s32 bankIndex;
    s32 i;
    
    for (bankIndex = -1, i = 0; bankIndex < 0 ; i++){
        bankIndex = Object_GetIndex(&globalCtx2->objectCtx, D_80996010[i].objectID);
        this->unk21D = i;
    }

    osSyncPrintf((const char *) "bank_ID = %d\n", bankIndex);
    osSyncPrintf((const char *) "status = %d\n", this->unk21D);
    this->bankIndex = bankIndex;
    this->texture = D_80996010[this->unk21D].texture;
    ActorShape_Init(&this->actor.shape, 0.0f, NULL, 0.0f);
    Actor_SetScale(&this->actor, 0.01f);
    this->unk21A = 0;
    this->unk218 = 0;
    this->unk190 = 0;
    this->unk191 = 0;

    switch ((u8)(this->actor.params & 0xFF)){
        case 0:
            SkelAnime_InitFlex(globalCtx2, &this->skelAnime, &D_06001BC8, NULL, this->unk192, this->unk192, 9);
            this->actionFunc = &func_80995D6C;
            func_80995D6C(&this->actor, globalCtx2);
            this->unk192[1].x = this->unk192[1].z = 0x4000;
            Collider_InitCylinder(globalCtx2, &this->collider);
            Collider_SetCylinder(globalCtx2, &this->collider, &this->actor, &D_80995FB0);
            Collider_InitJntSph(globalCtx2, &this->unk220);
            Collider_SetJntSph(globalCtx2, &this->unk220, &this->actor, &D_80996000, &this->unk240);
            this->unk220.list[0].dim.worldSphere.radius = 80;
            this->unk220.list[0].dim.worldSphere.center.x = (s16)this->actor.posRot.pos.x;
            this->unk220.list[0].dim.worldSphere.center.y = (s16)this->actor.posRot.pos.y + 50;
            this->unk220.list[0].dim.worldSphere.center.z = (s16)this->actor.posRot.pos.z;
            if ((((this->actor.params >> 8) & 0x3F) != 0x3F) && Flags_GetSwitch(globalCtx2, ((this->actor.params >> 8) & 0x3F))) {
                Actor_Kill(&this->actor);
                return;
            }
            break;
        case 1:
        case 2:
        case 3:
        case 4:
            this->actionFunc = &func_80995D6C;
            func_80995D6C(&this->actor, globalCtx2);
            this->actor.gravity = -0.6f;
            this->actor.minVelocityY = -6.0f;

            randF = Rand_CenteredFloat(8.0f);
            this->actor.velocity.z = Rand_ZeroFloat(8.0f);
            this->actor.velocity.x = (Math_CosS(this->actor.posRot.rot.y) * randF) + (Math_SinS(this->actor.posRot.rot.y) * this->actor.velocity.z);
            this->actor.velocity.z = (-Math_SinS(this->actor.posRot.rot.y) * randF) + (Math_CosS(this->actor.posRot.rot.y) * this->actor.velocity.z);
            this->actor.velocity.y = Rand_ZeroFloat(4.0f) + 4.0f;

            this->actor.posRot.rot.x = Rand_CenteredFloat(4096.0f);
            this->actor.posRot.rot.y = Rand_CenteredFloat(4096.0f);
            this->actor.posRot.rot.z = Rand_CenteredFloat(4096.0f);
            this->unk21A = 80;
            break;
    }
}

void DoorKiller_Destroy(Actor *thisx, GlobalContext *globalCtx) {
    DoorKiller *this = THIS;

    if ((thisx->params & 0xFF) == 0) {
        Collider_DestroyCylinder(globalCtx, &this->collider);
        Collider_DestroyJntSph(globalCtx, &this->unk220);
    }
}

void func_80995020(Actor *thisx, GlobalContext *globalCtx) {
    Actor_Spawn(&globalCtx->actorCtx, globalCtx, 0x1C1, thisx->posRot.pos.x, thisx->posRot.pos.y + 9.0f, thisx->posRot.pos.z, thisx->shape.rot.x, thisx->shape.rot.y, thisx->shape.rot.z, 1);
    Actor_Spawn(&globalCtx->actorCtx, globalCtx, 0x1C1, thisx->posRot.pos.x + 7.88f, thisx->posRot.pos.y + 39.8f, thisx->posRot.pos.z, thisx->shape.rot.x, thisx->shape.rot.y, thisx->shape.rot.z, 2);
    Actor_Spawn(&globalCtx->actorCtx, globalCtx, 0x1C1, thisx->posRot.pos.x - 15.86f, thisx->posRot.pos.y + 61.98f, thisx->posRot.pos.z, thisx->shape.rot.x, thisx->shape.rot.y, thisx->shape.rot.z, 3);
    Actor_Spawn(&globalCtx->actorCtx, globalCtx, 0x1C1, thisx->posRot.pos.x + 3.72f, thisx->posRot.pos.y + 85.1f, thisx->posRot.pos.z, thisx->shape.rot.x, thisx->shape.rot.y, thisx->shape.rot.z, 4);
}

void func_809951C4(DoorKiller *this, GlobalContext *globalCtx) {
    
    this->actor.velocity.y = this->actor.velocity.y + this->actor.gravity;
    if (this->actor.velocity.y < this->actor.minVelocityY) {
        this->actor.velocity.y = this->actor.minVelocityY;
    }

    this->actor.velocity.x *= 0.98f;
    this->actor.velocity.z *= 0.98f;
    this->actor.shape.rot.x += this->actor.posRot.rot.x;
    this->actor.shape.rot.y += this->actor.posRot.rot.y;
    this->actor.shape.rot.z += this->actor.posRot.rot.z;
    
    if (this->unk21A != 0) {
        this->unk21A--;
    } else {
        Actor_Kill(&this->actor);
    }
    func_8002D7EC(&this->actor);
}

s32 func_80995284(Actor* thisx, GlobalContext* globalCtx){
    DoorKiller* this = THIS;
    if (((this->collider.base.acFlags & 2) != 0) && (this->collider.body.acHitItem != NULL)) {
        return 1;
    }
    return 0;
}

void func_809952B8(DoorKiller *this, GlobalContext *globalCtx) {
    Collider_CylinderUpdate(&this->actor, &this->collider);
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->unk220.base);
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

    if (this->unk21A > 0) {
        this->unk21A--;
    } else {
        this->actionFunc = &func_80995A84;
        this->unk21A = 16;
        func_809952B8(this, globalCtx);
        return;
    }

    this->actor.shape.rot.x  = (this->unk21A >= 8)? (this->unk21A << 0xB) - 0x4000 : 0;

    if (this->unk21A >= 12) {
        phi_a0 = (-this->unk21A * -500) - 0x1F40;
    } else if (this->unk21A >= 8) {
        phi_a0 = -2000;
    } else if (this->unk21A >= 5) {
        phi_a0 = (this->unk21A * -500) + 2000;
    } else{
        phi_a0 = 0;
    }

    for (i = 2; i < 9; i++){
        this->unk192[i].z = -phi_a0;
    }

    if (this->unk21A < 8) {
       phi_a0 = Math_SinS(this->unk21A << 0xD) * this->unk21A * 100.0f;
        for (i = 2; i < 9; i++){
            this->unk192[i].y = phi_a0;
        }
    }
    return;
}

void func_80995518(DoorKiller *this, GlobalContext *globalCtx) {
    s32 i;
    s32 j;
    Vec3f sp84;
    Vec3f sp78;
    Vec3f sp6C;
    s16 phi_v1;
    f32 randF;
    Vec3f sp58;

    if (this->unk21A > 0) {
        this->unk21A--;
    } else {
        this->actionFunc = &func_80995368;
        this->unk21A = 16;
        return;
    }

    this->actor.shape.rot.x = (this->unk21A >= 4) ? (-this->unk21A << 0xC) + 0x8000 : 0x4000;

    if (this->unk21A >= 6) {
        phi_v1 = (-this->unk21A * -500) - 4000;
    } else if (this->unk21A >= 4) {
        phi_v1 = -1000;
    }else if (this->unk21A >= 3) {
        phi_v1 = (this->unk21A * -500) + 1000;
    } else {
        phi_v1 = 0;
    }

    for (i = 2; i < 9; i++){
        this->unk192[i].z = phi_v1;
    }
    
    if (this->unk21A == 4) {
        sp84 = D_80996030;
        sp78 = D_8099603C;
        for (j = 0; j != 20; j++){
            sp6C.y = 0.0f;
            randF = Rand_CenteredFloat(40.0f);
            sp6C.z = Rand_ZeroFloat(100.0f);
            sp6C.x = (Math_CosS(this->actor.posRot.rot.y) * randF) + (Math_SinS(this->actor.posRot.rot.y) * sp6C.z);
            sp6C.z = (-Math_SinS(this->actor.posRot.rot.y) * randF) + (Math_CosS(this->actor.posRot.rot.y) * sp6C.z);
            sp84.x = sp6C.x * 0.2f;
            sp84.z = sp6C.z * 0.2f;
            sp78.x = -(sp84.x) * 0.1f;
            sp78.z = -(sp84.z) * 0.1f;
            sp6C.x += this->actor.posRot.pos.x;
            sp6C.y += this->actor.posRot.pos.y;
            sp6C.z += this->actor.posRot.pos.z;
            func_8002865C(globalCtx, &sp6C, &sp84, &sp78, 300, 30);
        }
    }
    if ((this->unk218 & 1) == 0) {
        Player* player = PLAYER;
        func_8002DBD0(&this->actor, &sp58, &player->actor.posRot.pos);
        if ((fabsf(sp58.y) < 20.0f) && (fabsf(sp58.x) < 20.0f) && (sp58.z < 100.0f) && (sp58.z > 0.0f)) {
            this->unk218 |= 1;
            func_8002F6D4(globalCtx, &this->actor, 6.0f, this->actor.yawTowardsLink, 6.0f, 0x10);
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_KDOOR_HIT);
            func_8002F7DC(&player->actor, 0x83E);
        }
    }
    if (((this->unk218 & 1) == 0) && (this->unk21A == 2)) {
        this->unk218 |= 1;
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_KDOOR_HIT_GND);
    }
}

void func_809958E4(DoorKiller *this, GlobalContext *globalCtx) {
    s16 temp;
    s32 i;

    if ((this->unk21A == 0x10) || (this->unk21A == 8)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_KDOOR_WAVE);
    }

    if (this->unk21A > 0) {
        this->unk21A--;
    } else {
        this->actionFunc = &func_80995518;
        this->unk21A = 8;
        this->unk218 &= ~1;
        return;
    }

    temp = Math_SinS(this->unk21A << 0xD) * this->unk21A * 100.0f;
    for (i = 2; i < 9; i++){
        this->unk192[i].y = temp;
    }
    temp = (u16)(s16)(-Math_CosS(this->unk21A << 0xC) * 1000.0f) + 1000;
    for (i = 2; i < 9; i++){
        this->unk192[i].z = temp;
    }
}

void func_80995A50(DoorKiller *this, GlobalContext *globalCtx) {
    if (this->unk21A > 0) {
        this->unk21A--;
    }else{
        this->unk21A = 16;
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
    if (this->unk191 != 0) {
        this->actionFunc = &func_80995A50;
        this->unk21A = 10;
        this->unk191 = 0;
        return;
    }
    if (func_80995284(&this->actor, globalCtx) != 0) {
        temp_v0 = this->collider.body.acHitItem->toucher.flags;
        if ((temp_v0 & 0x1FFA6) != 0) {
            this->unk21A = (u16)0x10;
            this->actionFunc = &func_809958E4;
        } else if ((temp_v0 & 0x48) != 0) {
            func_80995020(&this->actor, globalCtx);
            this->actionFunc = &func_80995318;
            Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 0x14, (u16)0x39DDU);
        }
    } else {
        if (Actor_GetCollidedExplosive(globalCtx, &this->unk220.base) != 0) {
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

void func_80995CDC(Actor *thisx, GlobalContext* globalCtx) {
    DoorKiller *this = THIS;

    gSegments[6] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.status[this->bankIndex].segment);
    this->texture = SEGMENTED_TO_VIRTUAL(this->texture);
    gSegments[6] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.status[thisx->objBankIndex].segment);
}

void func_80995D6C(DoorKiller *this, GlobalContext* globalCtx) {
    if (Object_IsLoaded(&globalCtx->objectCtx, this->bankIndex)) {
        func_80995CDC(&this->actor, globalCtx);
        switch(this->actor.params & 0xFF){
            case 0:
                this->actionFunc = &func_80995A84;
                this->actor.draw = &func_80995EC4;
                break;
            case 1:
            case 2:
            case 3:
            case 4:
                this->actionFunc = &func_809951C4;
                this->actor.draw = &func_80995F1C;
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
    s32 temp = this->texture;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_door_killer.c", 883);
    gSPSegment(POLY_OPA_DISP++, 0x08, temp);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_door_killer.c", 885);
}

void func_80995EC4(Actor *thisx, GlobalContext *globalCtx) {
    DoorKiller* this = THIS;

    func_800943C8(globalCtx->state.gfxCtx);
    func_80995E40(thisx, globalCtx);
    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount, NULL, NULL, NULL);
}

void func_80995F1C(Actor *thisx, GlobalContext *globalCtx) {
    s32 textureIndex = (thisx->params & 0xFF) - 1;
    DoorKiller* this = THIS;

    if ((this->unk21A >= 0x14) || ((this->unk21A & 1) == 0)) {
        func_80995E40(thisx, globalCtx);
        Gfx_DrawDListOpa(globalCtx, D_80996048[textureIndex]);
    }
}