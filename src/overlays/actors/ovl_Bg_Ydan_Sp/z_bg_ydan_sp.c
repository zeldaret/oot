#include "z_bg_ydan_sp.h"

#define ROOM 0x00
#define FLAGS 0x00000000

void BgYdanSp_Init(BgYdanSp* this, GlobalContext* globalCtx);
void BgYdanSp_Destroy(BgYdanSp* this, GlobalContext* globalCtx);
void BgYdanSp_Update(BgYdanSp* this, GlobalContext* globalCtx);
void BgYdanSp_Draw(BgYdanSp* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Ydan_Sp_InitVars = {
    ACTOR_BG_YDAN_SP,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_YDAN_OBJECTS,
    sizeof(BgYdanSp),
    (ActorFunc)BgYdanSp_Init,
    (ActorFunc)BgYdanSp_Destroy,
    (ActorFunc)BgYdanSp_Update,
    (ActorFunc)BgYdanSp_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Sp/BgYdanSp_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Sp/BgYdanSp_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Sp/func_808BF83C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Sp/func_808BF90C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Sp/func_808BF97C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Sp/func_808BFC50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Sp/func_808BFC90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Sp/func_808BFE50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Sp/func_808C012C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Sp/func_808C0464.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Sp/BgYdanSp_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Sp/BgYdanSp_Draw.s")
