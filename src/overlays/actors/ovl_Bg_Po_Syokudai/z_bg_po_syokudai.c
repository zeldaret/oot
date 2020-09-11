/*
 * File: z_bg_po_syokudai.c
 * Overlay: ovl_Bg_Po_Syokudai
 * Description: Golden Torch Stand (Poe Sisters)
 */

#include "z_bg_po_syokudai.h"

#define FLAGS 0x00000000

#define THIS ((BgPoSyokudai*)thisx)

#define POE_SISTER_PURPLE 0 // Meg
#define POE_SISTER_RED 1    // Joelle
#define POE_SISTER_BLUE 2   // Beth
#define POE_SISTER_GREEN 3  // Amy

void BgPoSyokudai_Init(Actor* thisx, GlobalContext* globalCtx);
void BgPoSyokudai_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgPoSyokudai_Update(Actor* thisx, GlobalContext* globalCtx);
void BgPoSyokudai_Draw(Actor* thisx, GlobalContext* globalCtx);

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_METAL_SHIELD, 0x00, 0x0D, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 12, 60, 0, { 0, 0, 0 } },
};

s32 D_808A898C[] = { 0xFFAAFFFF, 0xFFC800FF, 0x00AAFFFF, 0xAAFF00FF };

s32 D_808A899C[] = { 0x6400FFFF, 0xFF0000FF, 0x0000FFFF, 0x009600FF };

const ActorInit Bg_Po_Syokudai_InitVars = {
    ACTOR_BG_PO_SYOKUDAI,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_SYOKUDAI,
    sizeof(BgPoSyokudai),
    (ActorFunc)BgPoSyokudai_Init,
    (ActorFunc)BgPoSyokudai_Destroy,
    (ActorFunc)BgPoSyokudai_Update,
    (ActorFunc)BgPoSyokudai_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 1000, ICHAIN_STOP),
};

void BgPoSyokudai_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgPoSyokudai* this = THIS;

    s32 pad;

    Actor_ProcessInitChain(&this->actor, sInitChain);

    this->poeSisterColor = (THIS->actor.params >> 8) & 0xFF;
    this->actor.params &= 0x3F;

    this->actor.colChkInfo.mass = 0xFF;

    this->lightNode = LightContext_InsertLight(globalCtx, &globalCtx->lightCtx, &this->lightInfo);
    Lights_PointGlowSetInfo(&this->lightInfo, this->actor.posRot.pos.x, (s16)this->actor.posRot.pos.y + 65,
                            this->actor.posRot.pos.z, 0, 0, 0, 0);

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);

    this->collider.dim.pos.x = this->actor.posRot.pos.x;
    this->collider.dim.pos.y = this->actor.posRot.pos.y;
    this->collider.dim.pos.z = this->actor.posRot.pos.z;

    if (this->poeSisterColor == POE_SISTER_PURPLE && Flags_GetSwitch(globalCtx, 0x1F) &&
        Flags_GetSwitch(globalCtx, 0x1E) && Flags_GetSwitch(globalCtx, 0x1D) &&
        !Flags_GetSwitch(globalCtx, this->actor.params)) {

        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_PO_SISTERS, 119.0f, 225.0f, -1566.0f, 0, 0, 0,
                    this->actor.params);
        globalCtx->envCtx.unk_BF = 0x4;

    } else if (!Flags_GetSwitch(globalCtx, 0x1C) && !Flags_GetSwitch(globalCtx, 0x1B)) {

        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_PO_SISTERS, this->actor.posRot.pos.x,
                    this->actor.posRot.pos.y + 52.0f, this->actor.posRot.pos.z, 0, 0, 0,
                    (this->poeSisterColor << 8) + this->actor.params + 0x1000);

    } else if (!Flags_GetSwitch(globalCtx, this->actor.params)) {
        if (globalCtx->envCtx.unk_BF == 0xFF) {
            globalCtx->envCtx.unk_BF = 4;
        }
    }

    this->flameTextureScroll = (s16)(Math_Rand_ZeroOne() * 20.0f);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Syokudai/BgPoSyokudai_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Syokudai/BgPoSyokudai_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Syokudai/BgPoSyokudai_Draw.s")
