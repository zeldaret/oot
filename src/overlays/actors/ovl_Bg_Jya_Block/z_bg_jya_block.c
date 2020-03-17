#include "z_bg_jya_block.h"

#define ROOM  0x00
#define FLAGS 0x00000000

void BgJyaBlock_Init(BgJyaBlock* this, GlobalContext* globalCtx);
void BgJyaBlock_Destroy(BgJyaBlock* this, GlobalContext* globalCtx);
void BgJyaBlock_Update(BgJyaBlock* this, GlobalContext* globalCtx);
void BgJyaBlock_Draw(BgJyaBlock* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Jya_Block_InitVars =
{
    ACTOR_BG_JYA_BLOCK,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_DANGEON_KEEP,
    sizeof(BgJyaBlock),
    (ActorFunc)BgJyaBlock_Init,
    (ActorFunc)BgJyaBlock_Destroy,
    (ActorFunc)BgJyaBlock_Update,
    (ActorFunc)BgJyaBlock_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Block/BgJyaBlock_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Block/BgJyaBlock_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Block/BgJyaBlock_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Block/BgJyaBlock_Draw.s")
