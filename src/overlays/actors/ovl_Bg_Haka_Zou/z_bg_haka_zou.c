/*
 * File: z_bg_haka_zou.c
 * Overlay: ovl_Bg_Haka_Zou
 * Description: Statue and Wall (Shadow Temple)
 */

#include "z_bg_haka_zou.h"

#define FLAGS 0x00000010

#define THIS ((BgHakaZou*)this)

void BgHakaZou_Init(Actor* thisx, GlobalContext* globalCtx);
void BgHakaZou_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHakaZou_Update(Actor* thisx, GlobalContext* globalCtx);

void func_80882A70(BgHakaZou* this, GlobalContext* globalCtx);

extern UNK_TYPE D_06000A10;
extern UNK_TYPE D_06005E30;
extern UNK_TYPE D_06006F70;

u32 D_808835F0[] = {
    0x0A000900, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x00000008,
    0x00000000, 0x00010000, 0x0005003C, 0x00000000, 0x00000000,
};

u32 D_8088361C[] = {
    0x00000000,
    0x00000000,
    0x00000000,
};

const ActorInit Bg_Haka_Zou_InitVars = {
    ACTOR_BG_HAKA_ZOU,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(BgHakaZou),
    (ActorFunc)BgHakaZou_Init,
    (ActorFunc)BgHakaZou_Destroy,
    (ActorFunc)BgHakaZou_Update,
    NULL,
};

static u32 D_80883648[] = {
    0xB86CFC18,
    0x48500064,
};

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Zou/BgHakaZou_Init.s")
// a bit more to do here, issues seem to stem from the very beginning of the function
/*
void BgHakaZou_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgHakaZou* this = THIS;

    Actor_ProcessInitChain(&this->dyna.actor, &D_80883648);
    this->switchFlag = (this->dyna.actor.params >> 8);
    this->dyna.actor.params &= 0xFF;

    if (this->dyna.actor.params == 3) {
        Actor_SetScale(&this->dyna.actor, (Math_Rand_ZeroOne() * 0.005f) + 0.025f);
        this->dyna.actor.speedXZ = Math_Rand_ZeroOne();
        this->dyna.actor.posRot.rot.y =
            (this->dyna.actor.shape.rot.y * ((Math_Rand_ZeroOne() < 0.5f) ? -1 : 1) + Math_Rand_CenteredFloat(4096.0f));
        this->timer = 20;
        this->dyna.actor.posRot.rot.x = Math_Rand_S16Offset(0x100, 0x300) * ((Math_Rand_ZeroOne() < 0.5f) ? -1 : 1);
        this->dyna.actor.posRot.rot.z = Math_Rand_S16Offset(0x400, 0x800) * ((Math_Rand_ZeroOne() < 0.5f) ? -1 : 1);
    } else {
        Collider_InitCylinder(globalCtx, &this->collider);
        Collider_SetCylinder(globalCtx, &this->collider, &this->dyna.actor, &D_808835F0);
        Collider_CylinderUpdate(&this->dyna.actor, &this->collider);
        DynaPolyInfo_SetActorMove(&this->dyna.actor, 0);

        if (this->dyna.actor.params == 0) {
            this->dyna.actor.uncullZoneScale = 3000.0f;
            this->dyna.actor.uncullZoneDownward = 3000.0f;
            this->dyna.actor.uncullZoneForward = 2000.0f;
        }
    }

    this->requiredObjBankIndex =
        ((this->dyna.actor.params == 2) ? Object_GetIndex(&globalCtx->objectCtx, OBJECT_HAKACH_OBJECTS)
                                        : Object_GetIndex(&globalCtx->objectCtx, OBJECT_HAKA_OBJECTS));

    if (this->requiredObjBankIndex < 0) {
        Actor_Kill(&this->dyna.actor);
    } else if ((this->dyna.actor.params != 3) && Flags_GetSwitch(globalCtx, this->switchFlag)) {
        if (this->dyna.actor.params != 0) {
            Actor_Kill(&this->dyna.actor);
        } else {
            this->dyna.actor.shape.rot.x = -0x4000;
            this->dyna.actor.posRot.pos.z -= 80.0f;
            this->dyna.actor.posRot.pos.y -= 54.0f;
        }
    }

    this->actionFunc = func_80882A70;
}
*/

u32 D_80883650[] = {
    0x060064E0,
    0x06005CE0,
    0x06000A10,
    0x06005CE0,
};

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Zou/BgHakaZou_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Zou/func_808828F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Zou/func_80882A70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Zou/func_80882BDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Zou/func_80882CC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Zou/func_80882E54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Zou/func_80883000.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Zou/func_80883104.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Zou/func_80883144.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Zou/func_80883254.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Zou/func_80883328.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Zou/func_808834D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Zou/func_80883568.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Zou/BgHakaZou_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Zou/func_808835B8.s")
