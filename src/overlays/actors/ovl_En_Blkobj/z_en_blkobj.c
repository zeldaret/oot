/*
 * File: z_en_blkobj.c
 * Overlay: ovl_En_Blkobj
 * Description: Dark Link's Illusion Room
 */

#include "z_en_blkobj.h"

#define FLAGS 0x00000030

#define THIS ((EnBlkobj*)thisx)

void EnBlkobj_Init(Actor* thisx, GlobalContext* globalCtx);
void EnBlkobj_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnBlkobj_Update(Actor* thisx, GlobalContext* globalCtx);
void EnBlkobj_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Blkobj_InitVars = {
    ACTOR_EN_BLKOBJ,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_BLKOBJ,
    sizeof(EnBlkobj),
    (ActorFunc)EnBlkobj_Init,
    (ActorFunc)EnBlkobj_Destroy,
    (ActorFunc)EnBlkobj_Update,
    (ActorFunc)EnBlkobj_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Blkobj/func_809C2060.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Blkobj/EnBlkobj_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Blkobj/EnBlkobj_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Blkobj/func_809C2148.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Blkobj/func_809C21A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Blkobj/func_809C2218.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Blkobj/func_809C22F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Blkobj/EnBlkobj_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Blkobj/func_809C2324.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Blkobj/EnBlkobj_Draw.s")
