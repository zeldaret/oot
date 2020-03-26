#include "z_en_ssh.h"

#define ROOM 0x00
#define FLAGS 0x00000035

void EnSsh_Init(EnSsh* this, GlobalContext* globalCtx);
void EnSsh_Destroy(EnSsh* this, GlobalContext* globalCtx);
void EnSsh_Update(EnSsh* this, GlobalContext* globalCtx);
void EnSsh_Draw(EnSsh* this, GlobalContext* globalCtx);

/*
const ActorInit En_Ssh_InitVars = {
    ACTOR_EN_SSH,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_SSH,
    sizeof(EnSsh),
    (ActorFunc)EnSsh_Init,
    (ActorFunc)EnSsh_Destroy,
    (ActorFunc)EnSsh_Update,
    (ActorFunc)EnSsh_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B02270.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B02278.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B02300.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B023FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B02490.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B02598.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B025C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B02700.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B02834.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B02854.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B02884.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B028CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B02920.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B0294C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B02AC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B02B9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B02C74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B02D14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B02D50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B02DBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B02EA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B02EDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B02F1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B03060.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B030D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B031DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B03238.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B0330C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B033BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B03400.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B034B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B0368C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/EnSsh_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/EnSsh_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B03968.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B039BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B03A00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B03C8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B03D74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B03E74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B03F48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B03FF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/EnSsh_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B04190.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B04280.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/EnSsh_Draw.s")
