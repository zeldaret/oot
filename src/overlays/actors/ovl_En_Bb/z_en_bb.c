/*
 * File: z_en_bb.c
 * Overlay: ovl_En_Bb
 * Description: Bubble (Flying Skull Enemy)
 */

#include "z_en_bb.h"

#define FLAGS 0x01000015

void EnBb_Init(EnBb* this, GlobalContext* globalCtx);
void EnBb_Destroy(EnBb* this, GlobalContext* globalCtx);
void EnBb_Update(EnBb* this, GlobalContext* globalCtx);
void EnBb_Draw(EnBb* this, GlobalContext* globalCtx);

/*
const ActorInit En_Bb_InitVars = {
    ACTOR_EN_BB,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_BB,
    sizeof(EnBb),
    (ActorFunc)EnBb_Init,
    (ActorFunc)EnBb_Destroy,
    (ActorFunc)EnBb_Update,
    (ActorFunc)EnBb_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bb/func_809B82E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bb/func_809B82E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bb/func_809B837C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bb/func_809B8518.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bb/EnBb_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bb/EnBb_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bb/func_809B8930.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bb/func_809B8984.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bb/func_809B8B00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bb/func_809B8B94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bb/func_809B8D10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bb/func_809B8DCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bb/func_809B8E34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bb/func_809B8EF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bb/func_809B96EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bb/func_809B977C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bb/func_809B9A54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bb/func_809B9B64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bb/func_809B9F28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bb/func_809B9F60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bb/func_809BA028.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bb/func_809BA0D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bb/func_809BA458.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bb/func_809BA590.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bb/func_809BA628.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bb/func_809BAC90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bb/func_809BADA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bb/func_809BAF44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bb/EnBb_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bb/func_809BB4F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bb/EnBb_Draw.s")
