#include "z_en_fire_rock.h"
#include "overlays/actors/ovl_En_Encount2/z_en_encount2.h"
#include "vt.h"

#define FLAGS 0x00000030

#define THIS ((EnFireRock*)thisx)

void EnFireRock_Init(Actor* thisx, GlobalContext* globalCtx);
void EnFireRock_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnFireRock_Update(Actor* thisx, GlobalContext* globalCtx);
void EnFireRock_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A125B8(EnFireRock* this, GlobalContext* globalCtx);
void func_80A12730(EnFireRock* this, GlobalContext* globalCtx);
void func_80A120CC(EnFireRock* this, GlobalContext* globalCtx);
void func_80A1241C(EnFireRock* this, GlobalContext* globalCtx);

extern UNK_TYPE D_06000DE0;

/*
const ActorInit En_Fire_Rock_InitVars = {
    ACTOR_EN_FIRE_ROCK,
    ACTORCAT_ENEMY,
    FLAGS,
    OBJECT_EFC_STAR_FIELD,
    sizeof(EnFireRock),
    (ActorFunc)EnFireRock_Init,
    (ActorFunc)EnFireRock_Destroy,
    (ActorFunc)EnFireRock_Update,
    (ActorFunc)EnFireRock_Draw,
};

static ColliderCylinderInit D_80A12CA0 = {
    {
        COLTYPE_HARD,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0xFFCFFFFF, 0x09, 0x08 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_NORMAL,
        BUMP_ON,
        OCELEM_NONE,
    },
    { 30, 30, -10, { 0, 0, 0 } },
};

static ColliderCylinderInit D_80A12CCC = {
    {
        COLTYPE_HARD,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0xFFCFFFFF, 0x01, 0x08 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_NORMAL,
        BUMP_ON,
        OCELEM_NONE,
    },
    { 30, 30, -10, { 0, 0, 0 } },
};
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fire_Rock/EnFireRock_Init.s")
// This matches once initvars is in!
/*
void EnFireRock_Init(Actor *thisx, GlobalContext *globalCtx) {
    
    GlobalContext* globalCtx2 = globalCtx;
    Player* player = PLAYER;
    EnFireRock* this = THIS;
    s16 temp;

    this->unk18C = this->actor.params;
    if (this->unk18C != 5){
        ActorShape_Init(&thisx->shape, 0.0f, ActorShadow_DrawCircle, 15.0f);
        if (this->unk18C != 6){
            this->unk14C.x = (Rand_ZeroFloat(10.0f) + 15.0f);
            this->unk14C.y = (Rand_ZeroFloat(10.0f) + 15.0f);
            this->unk14C.z = (Rand_ZeroFloat(10.0f) + 15.0f);
        }
    }
    switch(this->unk18C){
        case 5:
            this->actor.draw = 0;
            osSyncPrintf("\x1b[33m☆☆☆☆☆ 天井待ち岩 ☆☆☆☆☆ \n\x1b[m");
            this->unk168 = &func_80A125B8;
            break;
        case 6:
            Actor_SetScale(&this->actor, 0.03f);
            Collider_InitCylinder(globalCtx, &this->unk194);
            Collider_SetCylinder(globalCtx, &this->unk194, &this->actor, &D_80A12CCC);
            osSyncPrintf("\x1b[33m☆☆☆☆☆ 床岩 ☆☆☆☆☆ \n\x1b[m");
            this->unk194.dim.radius = 0x17;
            this->unk194.dim.height = 0x25;
            this->unk194.dim.yShift = -0xA;
            Actor_ChangeCategory(globalCtx, &globalCtx->actorCtx, &this->actor, (u8)6U);
            this->actor.colChkInfo.mass = 0xFF;
            this->unk168 = &func_80A12730;
            break;
        case 0:
            this->unk17C.x = (f32) (Rand_CenteredFloat(50.0f) + player->actor.world.pos.x);
            this->unk17C.z = (f32) (Rand_CenteredFloat(50.0f) + player->actor.world.pos.z);
        case 3:
            this->unk16C = (Rand_ZeroFloat(2.0f) / 100.0f) + 0.02f;
            Actor_SetScale(&this->actor, this->unk16C);
            Collider_InitCylinder(globalCtx, &this->unk194);
            Collider_SetCylinder(globalCtx, &this->unk194, &this->actor, &D_80A12CA0);
            this->actor.world.rot.y = this->actor.shape.rot.y = Rand_CenteredFloat(65535.0f);
            this->unk168 = &func_80A120CC;
            this->actor.shape.shadowScale = 15.0f;
            break;
        case 1:
            this->actor.velocity.y = Rand_ZeroFloat(3.0f) + 4.0f;
            this->actor.speedXZ = Rand_ZeroFloat(3.0f) + 3.0f;
            this->unk16C = (Rand_ZeroFloat(1.0f) / 100.0f) + 0.02f;
            Actor_SetScale(&this->actor, this->unk16C);
            this->actor.gravity = -1.5f;
            Collider_InitCylinder(globalCtx, &this->unk194);
            Collider_SetCylinder(globalCtx, &this->unk194, &this->actor, &D_80A12CA0);
            this->actor.shape.shadowScale = 10.0f;
            this->actor.world.rot.y = this->actor.shape.rot.y = Rand_CenteredFloat(65535.0f);
            this->unk168 = &func_80A120CC;
            break;
        case 2:
            this->actor.velocity.y = Rand_ZeroFloat(3.0f) + 4.0f;
            this->actor.speedXZ = Rand_ZeroFloat(3.0f) + 2.0f;
            this->unk16C = (Rand_ZeroFloat(1.0f) / 500.0f) + 0.01f;
            Actor_SetScale(&this->actor, this->unk16C);
            this->actor.gravity = -1.2f;
            this->actor.shape.shadowScale = 5.0f;
            this->actor.world.rot.y = this->actor.shape.rot.y = Rand_CenteredFloat(65535.0f);
            this->unk168 = &func_80A120CC;
            break;
        default:
            osSyncPrintf(VT_FGCOL(YELLOW)"☆☆☆☆☆ そんな岩はねぇ！ERR!!!!!! ☆☆☆☆☆ \n" VT_RST);
            Actor_Kill(&this->actor);
            break;
    }
}
*/

void EnFireRock_Destroy(Actor *thisx, GlobalContext *globalCtx) {
    EnFireRock* this = THIS;

    if (this->actor.parent != NULL){
        if (this->actor.parent == this->unk190){
            EnEncount2* spawner = (EnEncount2 *)thisx->parent;
            if (spawner->actor.update != NULL){
                if (spawner->unk158 > 0){
                    spawner->unk158--;
                    osSyncPrintf("\n\n");
                    osSyncPrintf("\x1b[32m☆☆☆☆☆ 発生数回復 ☆☆☆☆☆%d\n\x1b[m", spawner->unk158);
                    osSyncPrintf("\n\n");
                }
            }
        }
    }
    Collider_DestroyCylinder(globalCtx, &this->unk194);
}

void func_80A120CC(EnFireRock* this, GlobalContext* globalCtx) {
    Player* player;
    Vec3f sp58;
    s32 phi_s0;

    player = PLAYER;
    if ((this->actor.floorHeight == -10000.0f) || (this->actor.world.pos.y < (player->actor.world.pos.y - 200.0f))) {
        Actor_Kill(&this->actor);
        return;
    }
    switch (this->unk18C){
        case 0:
            if (player->actor.world.pos.y < this->actor.world.pos.y) {
                if ((player->actor.world.pos.x > -700.0f) || (player->actor.world.pos.x < 100.0f) || (player->actor.world.pos.z > -1290.0f) || (player->actor.world.pos.z < -3880.0f)) {
                    Math_ApproachF(&this->actor.world.pos.x, player->actor.world.pos.x, 1.0f, 10.0f);
                    Math_ApproachF(&this->actor.world.pos.z, player->actor.world.pos.z, 1.0f, 10.0f);
                }
            }
        case 3:
            sp58.x = Rand_CenteredFloat(20.0f) + this->actor.world.pos.x;
            sp58.y = Rand_CenteredFloat(20.0f) + this->actor.world.pos.y;
            sp58.z = Rand_CenteredFloat(20.0f) + this->actor.world.pos.z;
            EffectSsEnFire_SpawnVec3f(globalCtx, &this->actor, &sp58, (u16)0x64, 0, 0, -1);
            break;
        case 1:
            if ((globalCtx->gameplayFrames & 3) == 0) {
                Audio_PlayActorSound2(&this->actor, (u16)0x38D7U);
            }
            break;
    }
    if (((this->actor.bgCheckFlags & 1) != 0) && (this->unk188 == 0)) {
        switch(this->unk18C){   
            case 0:
            case 3:
                func_80033E88(&this->actor, globalCtx, (u16)5, (u16)2);
            case 1:
                func_80033260(globalCtx, &this->actor, &this->actor.world.pos, this->actor.shape.shadowScale, 1, 8.0f, 0x1F4, 0xA, 0);
                for (phi_s0 = 0; phi_s0 < 5; phi_s0++){
                    sp58.x = Rand_CenteredFloat(20.0f) + this->actor.world.pos.x;
                    sp58.y = this->actor.floorHeight;
                    sp58.z = Rand_CenteredFloat(20.0f) + this->actor.world.pos.z;
                    EffectSsEnFire_SpawnVec3f(globalCtx, &this->actor, &sp58, (u16)0x12C, 0, 0, -1);
                }
                this->unk168 = func_80A1241C;
                break;
            default:
                func_80033260(globalCtx, &this->actor, &this->actor.world.pos, this->actor.shape.shadowScale, 3, 8.0f, 0xC8, 0xA, 0);
                Audio_PlaySoundAtPosition(globalCtx, &this->actor.world.pos, 0x28, (u16)0x2802U);
                Actor_Kill(&this->actor);
                break;
        }
    }
}

void func_80A1241C(EnFireRock *this, GlobalContext *globalCtx) {
    EnFireRock *spawnedFireRock;
    s32 phi_v1;
    s32 phi_s0;
    s32 temp;

    phi_v1 = 0;
    switch(this->unk18C){
        case 0:
        case 3:
            phi_v1  = 1;
            break;
        case 1:
            phi_v1 = 2;
    }

    if (phi_v1 != 0) {
        for (phi_s0 = 0; phi_s0 < 2; phi_s0++){
            spawnedFireRock = (EnFireRock*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_FIRE_ROCK, Rand_CenteredFloat(3.0f) + this->actor.world.pos.x, Rand_CenteredFloat(3.0f) + (this->actor.world.pos.y + 10.0f), Rand_CenteredFloat(3.0f) + this->actor.world.pos.z, 0, 0, 0, phi_v1);
            if (spawnedFireRock != NULL) {
                spawnedFireRock->actor.world.rot.y = this->actor.world.rot.y;
                if (phi_s0 == 0) {
                    spawnedFireRock->actor.shape.rot.y = this->actor.shape.rot.y;
                }
                spawnedFireRock->unk16C = this->unk16C - 0.01f;
            } else {
                osSyncPrintf("\x1b[33m☆☆☆☆☆ イッパイデッス ☆☆☆☆☆ \n\x1b[m");
            }
        }
        Audio_PlayActorSound2(this, (u16)0x38D7U);
    }
    Actor_Kill(this);
}


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fire_Rock/func_80A125B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fire_Rock/func_80A12730.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fire_Rock/EnFireRock_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fire_Rock/EnFireRock_Draw.s")
