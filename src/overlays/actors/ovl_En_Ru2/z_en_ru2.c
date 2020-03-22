#include "z_en_ru2.h"

#define ROOM 0x00
#define FLAGS 0x00000010

void EnRu2_Init(EnRu2* this, GlobalContext* globalCtx);
void EnRu2_Destroy(EnRu2* this, GlobalContext* globalCtx);
void EnRu2_Update(EnRu2* this, GlobalContext* globalCtx);
void EnRu2_Draw(EnRu2* this, GlobalContext* globalCtx);

/*
const ActorInit En_Ru2_InitVars =
{
    ACTOR_EN_RU2,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_RU2,
    sizeof(EnRu2),
    (ActorFunc)EnRu2_Init,
    (ActorFunc)EnRu2_Destroy,
    (ActorFunc)EnRu2_Update,
    (ActorFunc)EnRu2_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF2550.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF259C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/EnRu2_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF2608.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF2690.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF26A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF26AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF26D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF2744.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF278C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF27AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF27D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF281C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF2868.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF28E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF2978.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF2994.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF29DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF2A38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF2AB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF2B44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF2B94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF2BC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF2C54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF2C68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF2CB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF2CD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF2CF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF2D2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF2D6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF2DAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF2DEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF2E1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF2E64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF2E84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF2F04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF2F58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF30AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF3144.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF3174.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF31C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF321C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF3394.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF33E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF346C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF34A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF34F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF3530.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF3564.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF3604.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF3624.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF366C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF36AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF36EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF3718.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF3744.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF37AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF37CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF383C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF3878.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF38D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF390C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF39DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF3ADC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF3B74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF3BC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF3C04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF3C64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF3CB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF3D0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF3D60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/EnRu2_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/EnRu2_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF3F14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/func_80AF3F20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru2/EnRu2_Draw.s")
