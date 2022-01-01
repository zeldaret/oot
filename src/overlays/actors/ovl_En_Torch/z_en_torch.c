/*
 * File: z_en_torch.c
 * Overlay: ovl_En_Torch
 * Description: Spawns a chest with the appropriate contents then unloads. Used in grottos.
 */

#include "z_en_torch.h"

void EnTorch_Init(Actor* thisx, GlobalContext* globalCtx);

// clang-format off
const ActorInit En_Torch_InitVars = {
    ACTOR_EN_TORCH,
    ACTORCAT_ITEMACTION,
    0,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnTorch),
    (ActorFunc)EnTorch_Init,
    NULL,
    NULL,
    NULL,
};
// clang-format on

static u8 sChestContents[] = {
    GI_RUPEE_BLUE, GI_RUPEE_RED, GI_RUPEE_GOLD, GI_BOMBS_20, GI_BOMBS_1, GI_BOMBS_1, GI_BOMBS_1, GI_BOMBS_1,
};

void EnTorch_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnTorch* this = (EnTorch*)thisx;
    s8 returnData = gSaveContext.respawn[RESPAWN_MODE_RETURN].data;

    /* Spawn chest with desired contents.
       Contents are passed to en_torch from grotto params via Save Context. */
    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_BOX, this->actor.world.pos.x, this->actor.world.pos.y,
                this->actor.world.pos.z, 0, this->actor.shape.rot.y, 0,
                (sChestContents[(returnData >> 0x5) & 0x7] << 0x5) | 0x5000 | (returnData & 0x1F));

    Actor_Kill(&this->actor);
}
