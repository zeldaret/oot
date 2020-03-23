#include "z_en_poh.h"

#define ROOM 0x00
#define FLAGS 0x00001015

void EnPoh_Init(EnPoh* this, GlobalContext* globalCtx);
void EnPoh_Destroy(EnPoh* this, GlobalContext* globalCtx);
void EnPoh_Update(EnPoh* this, GlobalContext* globalCtx);

/*
const ActorInit En_Poh_InitVars =
{
    ACTOR_EN_POH,
    ACTORTYPE_ENEMY,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnPoh),
    (ActorFunc)EnPoh_Init,
    (ActorFunc)EnPoh_Destroy,
    (ActorFunc)EnPoh_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/EnPoh_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/EnPoh_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADE114.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADE16C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADE1BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADE20C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADE28C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADE368.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADE3DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADE48C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADE4C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADE514.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADE56C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADE5C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADE610.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADE6D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADE7C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADE950.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADE998.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADE9BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADE9CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADEA5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADEAC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADEB80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADEC9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADEDFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADEECC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADEF38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADF0B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADF15C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADF574.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADF5E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADF660.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADF77C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADF894.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADF994.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADFA90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADFE28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80ADFE80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80AE009C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80AE00DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80AE0204.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80AE032C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80AE03C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/EnPoh_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80AE067C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80AE089C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80AE0A1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80AE0BF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80AE0CE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80AE0EE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80AE1148.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80AE1600.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Poh/func_80AE1654.s")
