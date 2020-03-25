#include "z_en_zl2.h"

#define ROOM 0x00
#define FLAGS 0x00000010

void EnZl2_Init(EnZl2* this, GlobalContext* globalCtx);
void EnZl2_Destroy(EnZl2* this, GlobalContext* globalCtx);
void EnZl2_Update(EnZl2* this, GlobalContext* globalCtx);
void EnZl2_Draw(EnZl2* this, GlobalContext* globalCtx);

/*
const ActorInit En_Zl2_InitVars = {
    ACTOR_EN_ZL2,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_ZL2,
    sizeof(EnZl2),
    (ActorFunc)EnZl2_Init,
    (ActorFunc)EnZl2_Destroy,
    (ActorFunc)EnZl2_Update,
    (ActorFunc)EnZl2_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/EnZl2_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B4E9B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B4EA40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B4EAF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B4EBB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B4EC48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B4ECE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B4ED04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B4ED18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B4ED2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B4ED74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B4ED94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B4EDB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B4EE38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B4EF64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B4F230.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B4F45C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B4FB74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B4FCCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B4FD00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B4FD90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B4FDD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B4FE10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B4FE48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B4FE6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B4FE90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B4FEB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B4FED8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B4FEFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B4FF84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B4FFF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B5008C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B500E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B501C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B501E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B50260.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B50278.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B50304.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B503DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B5042C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B50488.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B504D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B5053C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B50580.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B505D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B50618.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B50644.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B50670.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B506C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B5073C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B50780.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B507E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B5082C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B50880.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B508C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B50928.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B50970.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B50980.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B509A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B50A04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B50BBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B50BEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B50C40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B50CA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B50CFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B50D50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B50D94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B50DE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B50E3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B50E90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B50EE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B50F38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B50F8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B50FE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B51034.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B51080.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B510CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B51118.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B51164.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B511B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B511FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B51250.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B512B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B51310.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B5135C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B513A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B51418.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B5146C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B5149C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B514F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B5154C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B515C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B515D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B51644.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B51678.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B516D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B51704.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B5175C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B51790.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B517E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B51824.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B5187C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B518C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B51948.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B51A5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B51A8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B51AE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B51B44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B51BA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B51C0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B51C64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B51CA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B51D0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B51D24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B51DA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B51EA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B51EBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B51F38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B51FA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B52068.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B52098.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B52108.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B52114.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B521A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/EnZl2_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/EnZl2_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B52348.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B523BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B523C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B525D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/EnZl2_Draw.s")
