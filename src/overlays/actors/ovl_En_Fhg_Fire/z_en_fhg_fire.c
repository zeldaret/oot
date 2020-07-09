/*
 * File: z_en_fhg_fire.c
 * Overlay: ovl_En_Fhg_Fire
 * Description: Phantom Ganon's Lighting Attack
 */

#include "z_en_fhg_fire.h"

#define FLAGS 0x00000030

#define THIS ((EnFhgFire*)thisx)

void EnFhgFire_Init(Actor* thisx, GlobalContext* globalCtx);
void EnFhgFire_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnFhgFire_Update(Actor* thisx, GlobalContext* globalCtx);
void EnFhgFire_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnFhgFire_SetActionFunc(EnFhgFire *this, EnFhgFireActionFunc func);
void func_80A0F6F8(EnFhgFire*);
void func_80A0FA90(EnFhgFire*);
void func_80A0FC48(EnFhgFire*);
void func_80A0FD8C(EnFhgFire*);
void func_80A10008(EnFhgFire*);
void func_80A10220(EnFhgFire*);
void func_80A10F18(EnFhgFire*);

extern ColliderCylinderInit D_80A11790;

/*
const ActorInit En_Fhg_Fire_InitVars = {
    0,
    ACTORTYPE_BOSS,
    FLAGS,
    OBJECT_FHG,
    sizeof(EnFhgFire),
    (ActorFunc)EnFhgFire_Init,
    (ActorFunc)EnFhgFire_Destroy,
    (ActorFunc)EnFhgFire_Update,
    (ActorFunc)EnFhgFire_Draw,
};
*/

void EnFhgFire_SetActionFunc(EnFhgFire *this, EnFhgFireActionFunc func) {
    this->actionFunc = func;
}

void EnFhgFire_Init(Actor *thisx, GlobalContext *globalCtx) {
    f32 tempf0;
    EnFhgFire* this = THIS;
    Player* player = PLAYER;

    f32 tempf1;
    f32 tempf2;
    f32 tempf3;

    ActorShape_Init(&thisx->shape, 0.0f, NULL, 0.0f);
    if (((thisx->params == 0x23) || (thisx->params == 0x24)) || (thisx->params == 0x32)) {
        Collider_InitCylinder(globalCtx, &this->collider);
        Collider_SetCylinder(globalCtx, &this->collider, thisx, &D_80A11790);
    }
    this->unk_160 = 200.0f;
    Actor_SetScale(thisx, 0.0f);

    if (thisx->params == 0x01) {
        EnFhgFire_SetActionFunc(this, func_80A0F6F8);
        Audio_PlayActorSound2(thisx, NA_SE_EN_FANTOM_THUNDER);
    } else if (thisx->params >= 0x64) {
        EnFhgFire_SetActionFunc(this, func_80A0FA90);
        thisx->shape.rot = thisx->posRot.rot;
    }

    if (thisx->params == 0x23) {
        thisx->draw = NULL;
        EnFhgFire_SetActionFunc(this, func_80A0FC48);
        thisx->speedXZ = 30.0f;
        Audio_PlayActorSound2(thisx, NA_SE_EN_FANTOM_SPARK);
        return;
    }

    if (thisx->params == 0x24) {
        EnFhgFire_SetActionFunc(this, func_80A0FD8C);
        this->unk_160 = 255.0f;
        this->unk_150.x = 0x20;
        this->unk_150.y = 0x32;
        this->unk_1FE = 0x0A;

        tempf2 = thisx->posRot.rot.x;
        this->unk_18C = tempf2 / 100.0f;
        tempf1 = tempf2 * 0.13f;

        this->collider.dim.radius = tempf1;
        this->collider.dim.height = tempf1;
        this->collider.dim.yShift = 0;
        return;
    }

    if (thisx->params == 0x26) {
        osSyncPrintf("yari hikari ct 1\n"); // "light spear"
        EnFhgFire_SetActionFunc(this, func_80A10008);
        osSyncPrintf("yari hikari ct 2\n");
        this->unk_150.x = thisx->posRot.rot.x;
        this->unk_158 = thisx->posRot.rot.y;
        return;
    }


    switch (thisx->params) {
    case 0x27:
    case 0x28:
    case 0x29:
        Actor_SetScale(thisx, 7.0f);
        EnFhgFire_SetActionFunc(this, func_80A10F18);
        if (thisx->params == 0x29) {
            this->unk_150.x = 0x1B8;
            thisx->scale.z = 1.0f;
        } else {
            this->unk_150.x = 0x4C;
            Audio_PlayActorSound2(thisx, NA_SE_EV_FANTOM_WARP_S);
            Audio_PlayActorSound2(thisx, NA_SE_EV_FANTOM_WARP_S2);
        }
        return;
    }

    if (thisx->params == 0x32) {
        thisx->speedXZ = (thisx->posRot.rot.x == 0) ? 8.0f : 3.0f;
        EnFhgFire_SetActionFunc(this, func_80A10220);

        this->unk_150.x = 0x46;
        this->unk_150.y = 0x02;

        tempf1 = player->actor.posRot.pos.x - thisx->posRot.pos.x;
        tempf2 = player->actor.posRot.pos.y + 30.0f - thisx->posRot.pos.y;
        tempf3 = player->actor.posRot.pos.z - thisx->posRot.pos.z;
        thisx->posRot.rot.y = Math_atan2f(tempf1, tempf3) * 10430.378f; // 65536/(2*M_PI)
        tempf0 = sqrtf((tempf1 * tempf1) + (tempf3 * tempf3));
        thisx->posRot.rot.x = Math_atan2f(tempf2, tempf0) * 10430.378f; // 65536/(2*M_PI)
        this->collider.dim.radius = 40;
        this->collider.dim.height = 50;
        this->collider.dim.yShift = -25;
        this->light = Lights_Insert(globalCtx, &globalCtx->lightCtx, (void *) (&this->unk_1A0));
        Lights_InitType0PositionalLight(&this->unk_1A0, thisx->posRot.pos.x, thisx->posRot.pos.y, thisx->posRot.pos.z, 0xFF, 0xFF, 0xFF, 0xFF);
    }
}

void EnFhgFire_Destroy(Actor *thisx, GlobalContext *globalCtx) {
    EnFhgFire* this = THIS;

    if (((thisx->params == 0x23) || (thisx->params == 0x24)) || (thisx->params == 0x32)) {
        Collider_DestroyCylinder(globalCtx, &this->collider);
    }

    if (thisx->params == 0x32) {
        Lights_Remove(globalCtx, &globalCtx->lightCtx, this->light);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fhg_Fire/func_80A0F6F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fhg_Fire/func_80A0FA90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fhg_Fire/func_80A0FC48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fhg_Fire/func_80A0FD8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fhg_Fire/func_80A10008.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fhg_Fire/func_80A10220.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fhg_Fire/func_80A10F18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fhg_Fire/EnFhgFire_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fhg_Fire/EnFhgFire_Draw.s")
