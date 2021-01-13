#include "z_door_killer.h"

#define FLAGS 0x00000010

#define THIS ((DoorKiller*)thisx)



void DoorKiller_Init(Actor* thisx, GlobalContext* globalCtx);
void DoorKiller_Destroy(Actor* thisx, GlobalContext* globalCtx);
void DoorKiller_Update(Actor* thisx, GlobalContext* globalCtx);

//prototypes
void func_80995D6C();
void func_80995A50();
void func_809958E4();
void func_80995318();
void func_80995A84(Actor *thisx, GlobalContext *globalCtx);
void func_80995EC4(Actor* thisx, GlobalContext* globalCtx);
void func_80995F1C(Actor* thisx, GlobalContext* globalCtx);
void func_80995518(Actor* thisx, GlobalContext* globalCtx);


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
    DoorKiller *this = THIS;
    f32 sp50;
    temp_struct *phi_s1;
    s32 phi_s0;
    s32 temp_v0;
    f32 sp40;
    GlobalContext *globalCtx2 = globalCtx;
    
    for (temp_v0 = -1, phi_s0 = 0; temp_v0 < 0 ; phi_s0++){
        temp_v0 = Object_GetIndex(&globalCtx2->objectCtx, D_80996010[phi_s0].objectID);
        this->unk21D = phi_s0;
    }

    osSyncPrintf((const char *) "bank_ID = %d\n", temp_v0);
    osSyncPrintf((const char *) "status = %d\n", this->unk21D);
    this->unk21C = temp_v0;
    this->unk214 = D_80996010[this->unk21D].seg_address;
    ActorShape_Init(&thisx->shape, 0.0f, NULL, 0.0f);
    Actor_SetScale(thisx, 0.01f);

    this->unk191 = this->unk190 = this->unk218 = this->unk21A = 0;

    switch ((u16)(thisx->params & 0xFF)){
        case 0:
            SkelAnime_InitFlex(globalCtx2, &this->unk14C, &D_06001BC8, NULL, this->unk192, this->unk192, 9);
            this->unk280 = &func_80995D6C;
            func_80995D6C(thisx, globalCtx2);
            this->unk192[1].x = this->unk192[1].z = 0x4000;
            Collider_InitCylinder(globalCtx, &this->collider);
            Collider_SetCylinder(globalCtx, &this->collider, thisx, &D_80995FB0);
            Collider_InitJntSph(globalCtx, &this->unk220);
            Collider_SetJntSph(globalCtx, &this->unk220, thisx, &D_80996000, &this->unk240);
            this->unk220.list[0].dim.worldSphere.radius = 80;
            this->unk220.list[0].dim.worldSphere.center.x = (s16)thisx->posRot.pos.x;
            this->unk220.list[0].dim.worldSphere.center.y = (s16)thisx->posRot.pos.y + 50;
            this->unk220.list[0].dim.worldSphere.center.z = (s16)thisx->posRot.pos.z;
            if ((((thisx->params >> 8) & 0x3F) != 0x3F) && Flags_GetSwitch(globalCtx, ((thisx->params >> 8) & 0x3F))) {
                Actor_Kill(thisx);
                return;
            }
            break;
        case 1:
        case 2:
        case 3:
        case 4:
            this->unk280 = &func_80995D6C;
            func_80995D6C(thisx, globalCtx);
            thisx->gravity = -0.6f;
            thisx->minVelocityY = -6.0f;
            sp50 = Rand_CenteredFloat(8.0f);
            thisx->velocity.z = Rand_ZeroFloat(8.0f);
            sp40 = Math_CosS(thisx->posRot.rot.y);
            thisx->velocity.x = (Math_SinS(thisx->posRot.rot.y) * thisx->velocity.z) + (sp40 * sp50);
            sp40 = Math_SinS(thisx->posRot.rot.y);
            thisx->velocity.z = (Math_CosS(thisx->posRot.rot.y) * thisx->velocity.z) + (-sp40 * sp50);
            thisx->velocity.y = Rand_ZeroFloat(4.0f) + 4.0f;
            thisx->posRot.rot.x = Rand_CenteredFloat(4096.0f);
            thisx->posRot.rot.y = Rand_CenteredFloat(4096.0f);
            thisx->posRot.rot.z = Rand_CenteredFloat(4096.0f);
            this->unk21A = (u16)80;
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

void func_809951C4(Actor *thisx, GlobalContext *globalCtx) {
    DoorKiller *this = THIS;
    
    thisx->velocity.y = thisx->velocity.y + thisx->gravity;
    if (thisx->velocity.y < thisx->minVelocityY) {
        thisx->velocity.y = thisx->minVelocityY;
    }

    thisx->velocity.x *= 0.98f;
    thisx->velocity.z *= 0.98f;
    thisx->shape.rot.x += thisx->posRot.rot.x;
    thisx->shape.rot.y += thisx->posRot.rot.y;
    thisx->shape.rot.z += thisx->posRot.rot.z;
    
    if (this->unk21A != 0) {
        this->unk21A--;
    } else {
        Actor_Kill(thisx);
    }
    func_8002D7EC(thisx);
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

void func_80995318(Actor *thisx, GlobalContext *globalCtx) {
    s32 flag = (thisx->params >> 8) & 0x3F;
    
    if (flag != 0x3F) {
        Flags_SetSwitch(globalCtx, flag);
    }
    Actor_Kill(thisx);
}

void func_80995368(DoorKiller *this, GlobalContext *globalCtx) {
    s32 i;
    s16 phi_a0;

    if (this->unk21A > 0) {
        this->unk21A--;
    } else {
        this->unk280 = &func_80995A84;
        this->unk21A = 16;
        func_809952B8(this, globalCtx);
        return;
    }

    if (this->unk21A >= 8){
        this->actor.shape.rot.x = (this->unk21A << 0xB) - 0x4000;
    }else{
        this->actor.shape.rot.x = 0;
    }

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

/*
void func_80995518(DoorKiller *this, GlobalContext *globalCtx) {
    s32 i;
    s32 j;
    Vec3f sp84;
    Vec3f sp78;
    Vec3f sp6C;
    Vec3f sp58;
    f32 randF;
    s16 phi_v1;

    if (this->unk21A > 0) {
        this->unk21A--;
    } else {
        if (this);
        this->unk280 = &func_80995368;
        this->unk21A = 16;
        return;
    }

    this->actor.shape.rot.x = (this->unk21A >= 4) ? (-this->unk21A << 0xC) + 0x8000 : 0x4000;

    if (this->unk21A >= 6) {
        phi_v1 = (-this->unk21A * -0x1F4) - 0xFA0;
    } else if (this->unk21A >= 4) {
        phi_v1 = -0x3E8;
    }else if (this->unk21A >= 3) {
        phi_v1 = (this->unk21A * -0x1F4) + 0x3E8;
    } else {
        phi_v1 = 0;
    }

    for (i = 5; i < 9; i++){
        this->unk192[i].z = phi_v1;
    }
    
    if ((this->unk21A & 0xFFFFu) == 4) {
        sp84 = D_80996030;
        sp78 = D_8099603C;

        for (j = 0; j != 20; j++){
            sp6C.y = 0.0f;
            randF = Rand_CenteredFloat(40.0f);
            sp6C.z = Rand_ZeroFloat(100.0f);
            sp6C.x = (Math_CosS(this->actor.posRot.rot.y) * randF) + (Math_SinS(this->actor.posRot.rot.y) * sp6C.z);
            sp6C.z = (Math_CosS(this->actor.posRot.rot.y) * sp6C.z) - (Math_SinS(this->actor.posRot.rot.y) * randF);
            sp84.x = sp6C.x * 0.2f;
            sp84.z = sp6C.z * 0.2f;
            sp78.x = -(sp6C.x * 0.2f) * 0.1f;
            sp78.z = -(sp6C.z * 0.2f) * 0.1f;
            sp6C.x = sp6C.x * 0.2f + this->actor.posRot.pos.x;
            sp6C.y = sp6C.y + this->actor.posRot.pos.y;
            sp6C.z = sp6C.z + this->actor.posRot.pos.z;
            func_8002865C(globalCtx, &sp6C, &sp84, &sp78, 0x12C, 0x1E);
        }
    }
    if ((this->unk218 & 1) == 0) {
        Player* player = PLAYER;
        func_8002DBD0(&this->actor, &sp58, &player->actor.posRot.pos);
        if ((fabsf(sp58.y) < 20.0f) && (fabsf(sp58.x) < 20.0f) && (sp58.z < 100.0f) && (sp58.z > 0.0f)) {
            this->unk218 |= 1;
            func_8002F6D4(globalCtx, &this->actor, 6.0f, &this->actor.yawTowardsLink, 6.0f, 0x10);
            Audio_PlayActorSound2(&this->actor, 0x39DC);
            func_8002F7DC(&player->actor, 0x83E);
        }
    }
    if (((this->unk218 & 1) == 0) && (this->unk21A == 2)) {
        this->unk218 |= 1;
        Audio_PlayActorSound2(&this->actor, 0x39DE);
    }
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Killer/func_80995518.s")

void func_809958E4(DoorKiller *this, GlobalContext *globalCtx) {
    s16 temp1;
    s16 temp2;
    s32 i;

    if ((this->unk21A == 0x10) || (this->unk21A == 8)) {
        Audio_PlayActorSound2(this, 0x39DB);
    }

    if (this->unk21A > 0) {
        this->unk21A--;
    } else {
        this->unk280 = &func_80995518;
        this->unk21A = 8;
        this->unk218 &= ~1;
        return;
    }

    temp1 = Math_SinS(this->unk21A << 0xD) * this->unk21A * 100.0f;
    for (i = 2; i < 9; i++){
        this->unk192[i].y = temp1;
    }
    temp1 =  (u16)(s16)(-Math_CosS(this->unk21A << 0xC) * 1000.0f) + 1000;
    for (i = 2; i < 9; i++){
        this->unk192[i].z = temp1;
    }
}
//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Killer/func_809958E4.s")

void func_80995A50(Actor *thisx, GlobalContext *globalCtx) {
    DoorKiller* this = THIS;

    if (this->unk21A > 0) {
        this->unk21A--;
    }else{
        this->unk21A = 16;
        this->unk280 = &func_809958E4;
    }
}

void func_80995A84(Actor *thisx, GlobalContext *globalCtx) {
    Player *player;
    Vec3f sp30;
    s32 temp_v0;
    s16 angleToFacingPlayer;
    DoorKiller *this = THIS;

    player = PLAYER;
    func_8002DBD0(thisx, &sp30, &player->actor.posRot.pos);
    if (this->unk191 != 0) {
        this->unk280 = &func_80995A50;
        this->unk21A = 10;
        this->unk191 = 0;
        return;
    }
    if (func_80995284(thisx, globalCtx) != 0) {
        temp_v0 = this->collider.body.acHitItem->toucher.flags;
        if ((temp_v0 & 0x1FFA6) != 0) {
            this->unk21A = (u16)0x10;
            this->unk280 = &func_809958E4;
        } else if ((temp_v0 & 0x48) != 0) {
            func_80995020(thisx, globalCtx);
            this->unk280 = &func_80995318;
            Audio_PlaySoundAtPosition(globalCtx, &thisx->posRot.pos, 0x14, (u16)0x39DDU);
        }
    } else {
        if (Actor_GetCollidedExplosive(globalCtx, &this->unk220.base) != 0) {
            func_80995020(thisx, globalCtx);
            this->unk280 = &func_80995318;
            Audio_PlaySoundAtPosition(globalCtx, &thisx->posRot.pos, 0x14, (u16)0x39DDU);
        } else {
            if ((Player_InCsMode(globalCtx) == 0) && (fabsf(sp30.y) < 20.0f) && (fabsf(sp30.x) < 20.0f) && (sp30.z < 50.0f) && (sp30.z > 0.0f)) {
                angleToFacingPlayer = player->actor.shape.rot.y - thisx->shape.rot.y;
                if (sp30.z > 0.0f) {
                    angleToFacingPlayer = 0x8000 - angleToFacingPlayer;
                }
                if (ABS(angleToFacingPlayer) < 0x3000) {
                    player->doorType = 3;
                    player->doorDirection = (sp30.z >= 0.0f) ? 1.0f : -1.0f;
                    player->doorActor = thisx;
                }
            }
        }
    }
    func_809952B8(this, globalCtx);
}

void func_80995CDC(Actor *thisx, GlobalContext* globalCtx) {
    DoorKiller *this = THIS;

    gSegments[6] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.status[this->unk21C].segment);
    this->unk214 = SEGMENTED_TO_VIRTUAL(this->unk214);
    gSegments[6] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.status[thisx->objBankIndex].segment);
}

void func_80995D6C(Actor *thisx, GlobalContext* globalCtx) {
    DoorKiller* this = THIS;

    if (Object_IsLoaded(&globalCtx->objectCtx, this->unk21C)) {
        func_80995CDC(thisx, globalCtx);
        switch(thisx->params & 0xFF){
            case 0:
                this->unk280 = &func_80995A84;
                thisx->draw = &func_80995EC4;
                break;
            case 1:
            case 2:
            case 3:
            case 4:
                this->unk280 = &func_809951C4;
                thisx->draw = &func_80995F1C;
        }
    }
}

void DoorKiller_Update(Actor *thisx, GlobalContext *globalCtx) {
    DoorKiller* this = THIS;
    
    this->unk280(thisx, globalCtx);
}

void func_80995E40(Actor *thisx, GlobalContext *globalCtx) {
    DoorKiller* this = THIS;
    s32 temp = this->unk214;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_door_killer.c", 883);
    gSPSegment(POLY_OPA_DISP++, 0x08, temp);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_door_killer.c", 885);
}

void func_80995EC4(Actor *thisx, GlobalContext *globalCtx) {
    DoorKiller* this = THIS;

    func_800943C8(globalCtx->state.gfxCtx);
    func_80995E40(thisx, globalCtx);
    SkelAnime_DrawFlexOpa(globalCtx, this->unk14C.skeleton, this->unk14C.jointTable, this->unk14C.dListCount, NULL, NULL, NULL);
}

void func_80995F1C(Actor *thisx, GlobalContext *globalCtx) {
    s32 dlistIndex = (thisx->params & 0xFF) - 1;
    DoorKiller* this = THIS;

    if ((this->unk21A >= 0x14) || ((this->unk21A & 1) == 0)) {
        func_80995E40(thisx, globalCtx);
        Gfx_DrawDListOpa(globalCtx, D_80996048[dlistIndex]);
    }
}