#include "z_en_trap.h"

#define ROOM 0x00
#define FLAGS 0x00000010

void EnTrap_Init(EnTrap* this, GlobalContext* globalCtx);
void EnTrap_Destroy(EnTrap* this, GlobalContext* globalCtx);
void EnTrap_Update(EnTrap* this, GlobalContext* globalCtx);
void EnTrap_Draw(EnTrap* this, GlobalContext* globalCtx);

/*
const ActorInit En_Trap_InitVars = {
    ACTOR_EN_TRAP,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_TRAP,
    sizeof(EnTrap),
    (ActorFunc)EnTrap_Init,
    (ActorFunc)EnTrap_Destroy,
    (ActorFunc)EnTrap_Update,
    (ActorFunc)EnTrap_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Trap/EnTrap_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Trap/EnTrap_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Trap/EnTrap_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Trap/EnTrap_Draw.s")
