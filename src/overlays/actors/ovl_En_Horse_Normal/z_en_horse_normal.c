#include "z_en_horse_normal.h"

#define ROOM 0x00
#define FLAGS 0x00000000

void EnHorseNormal_Init(EnHorseNormal* this, GlobalContext* globalCtx);
void EnHorseNormal_Destroy(EnHorseNormal* this, GlobalContext* globalCtx);
void EnHorseNormal_Update(EnHorseNormal* this, GlobalContext* globalCtx);
void EnHorseNormal_Draw(EnHorseNormal* this, GlobalContext* globalCtx);

/*
const ActorInit En_Horse_Normal_InitVars =
{
    ACTOR_EN_HORSE_NORMAL,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_HORSE_NORMAL,
    sizeof(EnHorseNormal),
    (ActorFunc)EnHorseNormal_Init,
    (ActorFunc)EnHorseNormal_Destroy,
    (ActorFunc)EnHorseNormal_Update,
    (ActorFunc)EnHorseNormal_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Normal/func_80A6B250.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Normal/func_80A6B30C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Normal/EnHorseNormal_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Normal/EnHorseNormal_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Normal/func_80A6B91C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Normal/func_80A6B9D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Normal/func_80A6BBAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Normal/func_80A6BC00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Normal/func_80A6BC48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Normal/func_80A6BCEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Normal/func_80A6BD7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Normal/func_80A6BE6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Normal/func_80A6C4CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Normal/func_80A6C570.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Normal/func_80A6C6B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Normal/func_80A6C760.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Normal/func_80A6C8E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Normal/EnHorseNormal_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Normal/func_80A6CAFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Normal/func_80A6CC88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Normal/EnHorseNormal_Draw.s")
