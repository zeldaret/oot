#include "z_en_jsjutan.h"

#define ROOM 0x00
#define FLAGS 0x00000009

void EnJsjutan_Init(EnJsjutan* this, GlobalContext* globalCtx);
void EnJsjutan_Destroy(EnJsjutan* this, GlobalContext* globalCtx);
void EnJsjutan_Update(EnJsjutan* this, GlobalContext* globalCtx);
void EnJsjutan_Draw(EnJsjutan* this, GlobalContext* globalCtx);

/*
const ActorInit En_Jsjutan_InitVars = {
    ACTOR_EN_JSJUTAN,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnJsjutan),
    (ActorFunc)EnJsjutan_Init,
    (ActorFunc)EnJsjutan_Destroy,
    (ActorFunc)EnJsjutan_Update,
    (ActorFunc)EnJsjutan_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Jsjutan/EnJsjutan_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Jsjutan/EnJsjutan_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Jsjutan/func_80A89860.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Jsjutan/func_80A89A6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Jsjutan/EnJsjutan_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Jsjutan/EnJsjutan_Draw.s")
