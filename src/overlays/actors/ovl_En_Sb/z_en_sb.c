#include "z_en_sb.h"

#define ROOM 0x00
#define FLAGS 0x00000005

void EnSb_Init(EnSb* this, GlobalContext* globalCtx);
void EnSb_Destroy(EnSb* this, GlobalContext* globalCtx);
void EnSb_Update(EnSb* this, GlobalContext* globalCtx);
void EnSb_Draw(EnSb* this, GlobalContext* globalCtx);

/*
const ActorInit En_Sb_InitVars = {
    ACTOR_EN_SB,
    ACTORTYPE_ENEMY,
    ROOM,
    FLAGS,
    OBJECT_SB,
    sizeof(EnSb),
    (ActorFunc)EnSb_Init,
    (ActorFunc)EnSb_Destroy,
    (ActorFunc)EnSb_Update,
    (ActorFunc)EnSb_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sb/EnSb_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sb/EnSb_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sb/func_80AF790C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sb/func_80AF79BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sb/func_80AF7A34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sb/func_80AF7AB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sb/func_80AF7B24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sb/func_80AF7BCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sb/func_80AF7C44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sb/func_80AF7D48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sb/func_80AF7DC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sb/func_80AF7E90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sb/func_80AF7F44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sb/func_80AF803C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sb/func_80AF80E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sb/func_80AF8224.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sb/func_80AF828C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sb/func_80AF82F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sb/func_80AF832C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sb/func_80AF8368.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sb/func_80AF8388.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sb/func_80AF83D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sb/EnSb_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sb/func_80AF8828.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sb/EnSb_Draw.s")
