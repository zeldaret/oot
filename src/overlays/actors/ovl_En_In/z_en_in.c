#include "z_en_in.h"

#define ROOM 0x00
#define FLAGS 0x00000019

void EnIn_Init(EnIn* this, GlobalContext* globalCtx);
void EnIn_Destroy(EnIn* this, GlobalContext* globalCtx);
void EnIn_Update(EnIn* this, GlobalContext* globalCtx);
void EnIn_Draw(EnIn* this, GlobalContext* globalCtx);

/*
const ActorInit En_In_InitVars = {
    ACTOR_EN_IN,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_IN,
    sizeof(EnIn),
    (ActorFunc)EnIn_Init,
    (ActorFunc)EnIn_Destroy,
    (ActorFunc)EnIn_Update,
    (ActorFunc)EnIn_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/func_80A78FB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/func_80A79010.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/func_80A79168.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/func_80A791CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/func_80A7924C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/func_80A7949C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/func_80A79500.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/func_80A795C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/func_80A79690.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/func_80A796EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/func_80A7975C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/func_80A79830.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/func_80A79A2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/func_80A79AB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/func_80A79BAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/func_80A79C78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/EnIn_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/EnIn_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/func_80A79FB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/func_80A7A304.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/func_80A7A4BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/func_80A7A4C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/func_80A7A568.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/func_80A7A770.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/func_80A7A848.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/func_80A7A940.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/func_80A7AA40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/func_80A7ABD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/func_80A7AE84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/func_80A7AEF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/func_80A7B018.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/func_80A7B024.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/EnIn_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/func_80A7B320.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/func_80A7B570.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_In/EnIn_Draw.s")
