#include "z_bg_ddan_jd.h"

#define ROOM 0x00
#define FLAGS 0x00000030

void BgDdanJd_Init(BgDdanJd* this, GlobalContext* globalCtx);
void BgDdanJd_Destroy(BgDdanJd* this, GlobalContext* globalCtx);
void BgDdanJd_Update(BgDdanJd* this, GlobalContext* globalCtx);
void BgDdanJd_Draw(BgDdanJd* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Ddan_Jd_InitVars = {
    ACTOR_BG_DDAN_JD,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_DDAN_OBJECTS,
    sizeof(BgDdanJd),
    (ActorFunc)BgDdanJd_Init,
    (ActorFunc)BgDdanJd_Destroy,
    (ActorFunc)BgDdanJd_Update,
    (ActorFunc)BgDdanJd_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ddan_Jd/BgDdanJd_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ddan_Jd/BgDdanJd_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ddan_Jd/func_80870B88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ddan_Jd/func_80870D2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ddan_Jd/func_80870F00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ddan_Jd/BgDdanJd_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ddan_Jd/BgDdanJd_Draw.s")
