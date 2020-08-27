/*
 * File: z_bg_spot11_bakudankabe.c
 * Overlay: ovl_Bg_Spot11_Bakudankabe
 * Description: Destructible Wall (Desert Colossus)
 */

#include "z_bg_spot11_bakudankabe.h"

#define FLAGS 0x00000030

#define THIS ((BgSpot11Bakudankabe*)thisx)

void BgSpot11Bakudankabe_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot11Bakudankabe_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot11Bakudankabe_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot11Bakudankabe_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808B2180(BgSpot11Bakudankabe* this, GlobalContext* globalCtx);
void func_808B2218(BgSpot11Bakudankabe* this, GlobalContext* globalCtx);

const ActorInit Bg_Spot11_Bakudankabe_InitVars = {
    ACTOR_BG_SPOT11_BAKUDANKABE,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_SPOT11_OBJ,
    sizeof(BgSpot11Bakudankabe),
    (ActorFunc)BgSpot11Bakudankabe_Init,
    (ActorFunc)BgSpot11Bakudankabe_Destroy,
    (ActorFunc)BgSpot11Bakudankabe_Update,
    (ActorFunc)BgSpot11Bakudankabe_Draw,
};

static ColliderCylinderInit sCylinderInit =
{
    { COLTYPE_UNK10, 0x00, 0x09, 0x00, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000008, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
    { 40, 80, 0, { 2259, 108, -1580 } },
};

s32 D_808B272C[] = { 0x450D3000, 0x42D80000, 0xC4C1C000 };

Vec3f D_808B2738 = { 2259.0f, 108.0f, -1550.0f };

extern UNK_TYPE D_06001A58;
extern Gfx D_06001980[];

void func_808B2180(BgSpot11Bakudankabe *this, GlobalContext *globalCtx) {
    s32 pad;

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->dyna.actor, &sCylinderInit);
    this->collider.dim.pos.x += ((s16) this->dyna.actor.posRot.pos.x);
    this->collider.dim.pos.y += ((s16) this->dyna.actor.posRot.pos.y);
    this->collider.dim.pos.z += ((s16) this->dyna.actor.posRot.pos.z);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot11_Bakudankabe/func_808B2218.s")

void BgSpot11Bakudankabe_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot11Bakudankabe* this = THIS;
    s32 pad;
    s32 sp24;

    sp24 = 0;
    DynaPolyInfo_SetActorMove(&this->dyna, 0);
    if (Flags_GetSwitch(globalCtx, (this->dyna.actor.params & 0x3F))) {
        Actor_Kill(&this->dyna.actor);
        return;
    }
    func_808B2180(this, globalCtx);
    DynaPolyInfo_Alloc(&D_06001A58, &sp24);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, (Actor*)this, sp24);
    Actor_SetScale(&this->dyna.actor, 1.0f);
    osSyncPrintf("(spot11 爆弾壁)(arg_data 0x%04x)\n", this->dyna.actor.params);
}

void BgSpot11Bakudankabe_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot11Bakudankabe* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void BgSpot11Bakudankabe_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot11Bakudankabe* this = THIS;

    if (this->collider.base.acFlags & 2) {
        func_808B2218(this, globalCtx);
        Flags_SetSwitch(globalCtx, (this->dyna.actor.params & 0x3F));
        Audio_PlaySoundAtPosition(globalCtx, &D_808B2738, 40, NA_SE_EV_WALL_BROKEN);
        func_80078884(NA_SE_SY_CORRECT_CHIME);
        Actor_Kill(&this->dyna.actor);
        return;
    }
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
}

void BgSpot11Bakudankabe_Draw(Actor* thisx, GlobalContext *globalCtx) {
    BgSpot11Bakudankabe* this = THIS;
    
    Gfx_DrawDListOpa(globalCtx, D_06001980);
}