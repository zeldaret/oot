#include "z_en_horse_ganon.h"

#define ROOM 0x00
#define FLAGS 0x00000010

void EnHorseGanon_Init(EnHorseGanon* this, GlobalContext* globalCtx);
void EnHorseGanon_Destroy(EnHorseGanon* this, GlobalContext* globalCtx);
void EnHorseGanon_Update(EnHorseGanon* this, GlobalContext* globalCtx);
void EnHorseGanon_Draw(EnHorseGanon* this, GlobalContext* globalCtx);

/*
const ActorInit En_Horse_Ganon_InitVars = {
    ACTOR_EN_HORSE_GANON,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_HORSE_GANON,
    sizeof(EnHorseGanon),
    (ActorFunc)EnHorseGanon_Init,
    (ActorFunc)EnHorseGanon_Destroy,
    (ActorFunc)EnHorseGanon_Update,
    (ActorFunc)EnHorseGanon_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Ganon/func_80A68660.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Ganon/func_80A686A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Ganon/func_80A68870.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Ganon/EnHorseGanon_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Ganon/EnHorseGanon_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Ganon/func_80A68AC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Ganon/func_80A68AF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Ganon/func_80A68B20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Ganon/func_80A68DB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Ganon/func_80A68E14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Ganon/EnHorseGanon_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Ganon/func_80A68FA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Ganon/EnHorseGanon_Draw.s")
