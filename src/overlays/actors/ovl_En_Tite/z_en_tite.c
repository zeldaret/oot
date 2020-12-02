/*
 * File: z_en_tite.c
 * Overlay: ovl_En_Tite
 * Description: Tektite
 */

#include "z_en_tite.h"

#define FLAGS 0x00000015

#define THIS ((EnTite*)thisx)

void EnTite_Init(Actor* thisx, GlobalContext* globalCtx);
void EnTite_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnTite_Update(Actor* thisx, GlobalContext* globalCtx);
void EnTite_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_0600083C;
extern UNK_TYPE D_06000A14;
extern UNK_TYPE D_06000C70;
extern UNK_TYPE D_060012E4;
extern UNK_TYPE D_06001300;
extern UNK_TYPE D_06001700;
extern UNK_TYPE D_06001900;
extern UNK_TYPE D_06001B00;
extern UNK_TYPE D_06001F00;
extern UNK_TYPE D_06002100;
extern UNK_TYPE D_06003A20;

/*
const ActorInit En_Tite_InitVars = {
    ACTOR_EN_TITE,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_TITE,
    sizeof(EnTite),
    (ActorFunc)EnTite_Init,
    (ActorFunc)EnTite_Destroy,
    (ActorFunc)EnTite_Update,
    (ActorFunc)EnTite_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B18A80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/EnTite_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/EnTite_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B18C5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B18CC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B18E08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B18E7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B19524.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B195C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B1985C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B19918.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B19E28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B19E94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B1A1EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B1A2A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B1A63C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B1A670.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B1A6E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B1A76C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B1A888.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B1AA44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B1AA94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B1ABBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/EnTite_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B1B178.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/EnTite_Draw.s")
