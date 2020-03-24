#include "z_en_firefly.h"

#define ROOM 0x00
#define FLAGS 0x00005005

void EnFirefly_Init(EnFirefly* this, GlobalContext* globalCtx);
void EnFirefly_Destroy(EnFirefly* this, GlobalContext* globalCtx);
void EnFirefly_Update(EnFirefly* this, GlobalContext* globalCtx);
void EnFirefly_Draw(EnFirefly* this, GlobalContext* globalCtx);

/*
const ActorInit En_Firefly_InitVars = {
    ACTOR_EN_FIREFLY,
    ACTORTYPE_ENEMY,
    ROOM,
    FLAGS,
    OBJECT_FIREFLY,
    sizeof(EnFirefly),
    (ActorFunc)EnFirefly_Init,
    (ActorFunc)EnFirefly_Destroy,
    (ActorFunc)EnFirefly_Update,
    (ActorFunc)EnFirefly_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13070.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13098.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/EnFirefly_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/EnFirefly_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A132F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A133A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13444.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13464.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A1349C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A1350C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13538.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A135A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13744.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13764.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A1379C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A138B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13A08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13C98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13D68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13DE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13FF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A14088.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A141F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A14294.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A142F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A143B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A1448C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A1450C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/EnFirefly_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A14960.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A149B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/EnFirefly_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A14E28.s")
