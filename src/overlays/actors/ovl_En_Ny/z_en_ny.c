#include "z_en_ny.h"

#define ROOM 0x00
#define FLAGS 0x00000005

void EnNy_Init(EnNy* this, GlobalContext* globalCtx);
void EnNy_Destroy(EnNy* this, GlobalContext* globalCtx);
void EnNy_Update(EnNy* this, GlobalContext* globalCtx);
void EnNy_Draw(EnNy* this, GlobalContext* globalCtx);

/*
const ActorInit En_Ny_InitVars = {
    ACTOR_EN_NY,
    ACTORTYPE_ENEMY,
    ROOM,
    FLAGS,
    OBJECT_NY,
    sizeof(EnNy),
    (ActorFunc)EnNy_Init,
    (ActorFunc)EnNy_Destroy,
    (ActorFunc)EnNy_Update,
    (ActorFunc)EnNy_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/EnNy_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/EnNy_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCD40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCD84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCD94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCDAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCDBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCDFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCE38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCE50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCE90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCEEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCF4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABD05C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABD11C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABD190.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABD3B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/EnNy_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABD728.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABD9AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABDBB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABDBF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/EnNy_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABE040.s")
