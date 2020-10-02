/*
 * File: z_bg_gnd_soulmeiro.c
 * Overlay: ovl_Bg_Gnd_Soulmeiro
 * Description: Web-Blocked Ceiling Hole (Inside Ganon's Castle)
 */

#include "z_bg_gnd_soulmeiro.h"

#define FLAGS 0x00000000

#define THIS ((BgGndSoulmeiro*)thisx)

void BgGndSoulmeiro_Init(Actor* thisx, GlobalContext* globalCtx);
void BgGndSoulmeiro_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgGndSoulmeiro_Update(Actor* thisx, GlobalContext* globalCtx);
void BgGndSoulmeiro_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_8087AF38(BgGndSoulmeiro* this, GlobalContext* globalCtx);
void func_8087B284(BgGndSoulmeiro* this, GlobalContext* globalCtx);
void func_8087B350(BgGndSoulmeiro* this, GlobalContext* globalCtx);

const ActorInit Bg_Gnd_Soulmeiro_InitVars = {
    ACTOR_BG_GND_SOULMEIRO,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_DEMO_KEKKAI,
    sizeof(BgGndSoulmeiro),
    (ActorFunc)BgGndSoulmeiro_Init,
    (ActorFunc)BgGndSoulmeiro_Destroy,
    (ActorFunc)BgGndSoulmeiro_Update,
    (ActorFunc)BgGndSoulmeiro_Draw,
};

ColliderCylinderInit D_8087B530 = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x00, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x00 }, { 0x00020800, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
    { 50, 20, 20, { 0, 0, 0 } },
};

InitChainEntry D_8087B55C[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_STOP),
};

s32 D_8087B56C[] = { 0x00000000, 0x00000000, 0x00000000 };
s32 D_8087B578[] = { 0x06007C00, 0x06002320, 0x060035A0, 0x00000000, 0x00000000, 0x00000000 };

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Soulmeiro/BgGndSoulmeiro_Init.s")
void BgGndSoulmeiro_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgGndSoulmeiro* this = THIS;
    s32 pad;

    Actor_ProcessInitChain(&this->actor, D_8087B55C);
    this->actionFunc = NULL;

    switch (this->actor.params & 0xFF) {
        case 0:
            Collider_InitCylinder(globalCtx, &this->collider);
            Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &D_8087B530);
            this->actionFunc = func_8087B284;
            if (Flags_GetSwitch(globalCtx, (this->actor.params >> 8) & 0x3F)) {

                Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_MIR_RAY, this->actor.posRot.pos.x, this->actor.posRot.pos.y,
                            this->actor.posRot.pos.z, 0, 0, 0, 9);
                this->actor.draw = NULL;
                Actor_Kill(&this->actor);
            } else {
                this->actor.draw = BgGndSoulmeiro_Draw;
            }
            break;
        case 1:
        case 2:
            if (Flags_GetSwitch(globalCtx, (this->actor.params >> 8) & 0x3F)) {
                this->actor.draw = BgGndSoulmeiro_Draw;
            } else {
                this->actor.draw = NULL;
            }
            this->actionFunc = func_8087B350;
            break;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Soulmeiro/BgGndSoulmeiro_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Soulmeiro/func_8087AF38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Soulmeiro/func_8087B284.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Soulmeiro/func_8087B350.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Soulmeiro/BgGndSoulmeiro_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Soulmeiro/BgGndSoulmeiro_Draw.s")
