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

extern UNK_TYPE D_06000DE0;
extern ColliderCylinderInit D_80A12CA0[];
extern ColliderCylinderInit D_80A12CCC[];

const ActorInit En_Fire_Rock_InitVars = {
    ACTOR_EN_FIRE_ROCK,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_EFC_STAR_FIELD,
    sizeof(EnFireRock),
    (ActorFunc)EnFireRock_Init,
    (ActorFunc)EnFireRock_Destroy,
    (ActorFunc)EnFireRock_Update,
    (ActorFunc)EnFireRock_Draw,
};

void EnFireRock_Init(Actor *thisx, GlobalContext *globalCtx) {
    
    GlobalContext* globalCtx2 = globalCtx;
    Player* player = PLAYER;
    EnFireRock* this = THIS;
    s16 temp;

    this->unk18C = this->actor.params;
    if (this->unk18C != 5){
        ActorShape_Init(&thisx->shape, 0.0f, ActorShadow_DrawFunc_Circle, 15.0f);
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
            Collider_SetCylinder(globalCtx, &this->unk194, &this->actor, D_80A12CCC);
            osSyncPrintf("\x1b[33m☆☆☆☆☆ 床岩 ☆☆☆☆☆ \n\x1b[m");
            this->unk194.dim.radius = 0x17;
            this->unk194.dim.height = 0x25;
            this->unk194.dim.yShift = -0xA;
            Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, (u8)6U);
            this->actor.colChkInfo.mass = 0xFF;
            this->unk168 = &func_80A12730;
            break;
        case 0:
            this->unk17C.x = (f32) (Rand_CenteredFloat(50.0f) + player->actor.posRot.pos.x);
            this->unk17C.z = (f32) (Rand_CenteredFloat(50.0f) + player->actor.posRot.pos.z);
        case 3:
            this->unk16C = (Rand_ZeroFloat(2.0f) / 100.0f) + 0.02f;
            Actor_SetScale(&this->actor, this->unk16C);
            Collider_InitCylinder(globalCtx, &this->unk194);
            Collider_SetCylinder(globalCtx, &this->unk194, &this->actor, D_80A12CA0);
            this->actor.posRot.rot.y = this->actor.shape.rot.y = Rand_CenteredFloat(65535.0f);
            this->unk168 = &func_80A120CC;
            this->actor.shape.unk_10 = 15.0f;
            break;
        case 1:
            this->actor.velocity.y = Rand_ZeroFloat(3.0f) + 4.0f;
            this->actor.speedXZ = Rand_ZeroFloat(3.0f) + 3.0f;
            this->unk16C = (Rand_ZeroFloat(1.0f) / 100.0f) + 0.02f;
            Actor_SetScale(&this->actor, this->unk16C);
            this->actor.gravity = -1.5f;
            Collider_InitCylinder(globalCtx, &this->unk194);
            Collider_SetCylinder(globalCtx, &this->unk194, &this->actor, D_80A12CA0);
            this->actor.shape.unk_10 = 10.0f;
            this->actor.posRot.rot.y = this->actor.shape.rot.y = Rand_CenteredFloat(65535.0f);
            this->unk168 = &func_80A120CC;
            break;
        case 2:
            this->actor.velocity.y = Rand_ZeroFloat(3.0f) + 4.0f;
            this->actor.speedXZ = Rand_ZeroFloat(3.0f) + 2.0f;
            this->unk16C = (Rand_ZeroFloat(1.0f) / 500.0f) + 0.01f;
            Actor_SetScale(&this->actor, this->unk16C);
            this->actor.gravity = -1.2f;
            this->actor.shape.unk_10 = 5.0f;
            this->actor.posRot.rot.y = this->actor.shape.rot.y = Rand_CenteredFloat(65535.0f);
            this->unk168 = &func_80A120CC;
            break;
        default:
            osSyncPrintf(VT_FGCOL(YELLOW)"☆☆☆☆☆ そんな岩はねぇ！ERR!!!!!! ☆☆☆☆☆ \n" VT_RST);
            Actor_Kill(&this->actor);
            break;
    }
}

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

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fire_Rock/func_80A120CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fire_Rock/func_80A1241C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fire_Rock/func_80A125B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fire_Rock/func_80A12730.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fire_Rock/EnFireRock_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fire_Rock/EnFireRock_Draw.s")
