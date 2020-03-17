#include "z_en_goma.h"

#define ROOM  0x00
#define FLAGS 0x00000035

void EnGoma_Init(EnGoma* this, GlobalContext* globalCtx);
void EnGoma_Destroy(EnGoma* this, GlobalContext* globalCtx);
void EnGoma_Update(EnGoma* this, GlobalContext* globalCtx);
void EnGoma_Draw(EnGoma* this, GlobalContext* globalCtx);

/*
const ActorInit En_Goma_InitVars =
{
    ACTOR_BOSS_GOMA,
    ACTORTYPE_ENEMY,
    ROOM,
    FLAGS,
    OBJECT_GOL,
    sizeof(EnGoma),
    (ActorFunc)EnGoma_Init,
    (ActorFunc)EnGoma_Destroy,
    (ActorFunc)EnGoma_Update,
    (ActorFunc)EnGoma_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/EnGoma_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/EnGoma_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A49294.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A49338.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A493D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A49668.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A498A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A49974.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A499BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A49AA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A49B30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A49BF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A49C94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A49D0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A49E80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A49F10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A49F94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A4A010.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A4A0A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A4A120.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A4A18C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A4A234.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A4A2EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A4A368.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A4A470.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A4A50C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A4A608.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A4A6AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A4A8D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A4A964.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/EnGoma_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A4ACC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A4AE60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/EnGoma_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A4B3AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A4B3F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A4B554.s")
