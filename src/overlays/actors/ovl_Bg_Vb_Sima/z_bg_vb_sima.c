#include "z_bg_vb_sima.h"

#define FLAGS 0x00000000

void BgVbSima_Init(BgVbSima* this, GlobalContext* globalCtx);
void BgVbSima_Destroy(BgVbSima* this, GlobalContext* globalCtx);
void BgVbSima_Update(BgVbSima* this, GlobalContext* globalCtx);
void BgVbSima_Draw(BgVbSima* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Vb_Sima_InitVars = {
    ACTOR_BG_VB_SIMA,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_FD,
    sizeof(BgVbSima),
    (ActorFunc)BgVbSima_Init,
    (ActorFunc)BgVbSima_Destroy,
    (ActorFunc)BgVbSima_Update,
    (ActorFunc)BgVbSima_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Vb_Sima/BgVbSima_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Vb_Sima/BgVbSima_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Vb_Sima/func_808BDDF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Vb_Sima/BgVbSima_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Vb_Sima/BgVbSima_Draw.s")
