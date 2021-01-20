/*
 * File: z_en_bdfire.c
 * Overlay: ovl_En_Bdfire
 * Description: King Dodongo's Fire
 */

#include "z_en_bdfire.h"

#define FLAGS 0x00000030

#define THIS ((EnBdfire*)thisx)

void EnBdfire_Init(Actor* thisx, GlobalContext* globalCtx);
void EnBdfire_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnBdfire_Update(Actor* thisx, GlobalContext* globalCtx);
void EnBdfire_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_0601D950;

/*
const ActorInit En_Bdfire_InitVars = {
    0,
    ACTORCAT_ENEMY,
    FLAGS,
    OBJECT_KINGDODONGO,
    sizeof(EnBdfire),
    (ActorFunc)EnBdfire_Init,
    (ActorFunc)EnBdfire_Destroy,
    (ActorFunc)EnBdfire_Update,
    (ActorFunc)EnBdfire_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bdfire/func_809BC030.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bdfire/func_809BC038.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bdfire/EnBdfire_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bdfire/EnBdfire_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bdfire/func_809BC2A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bdfire/func_809BC598.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bdfire/EnBdfire_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bdfire/func_809BC8C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bdfire/EnBdfire_Draw.s")
