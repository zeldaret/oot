#include "z_en_niw.h"

#define FLAGS 0x00800010

#define THIS ((EnNiw*)thisx)

void EnNiw_Init(Actor* thisx, GlobalContext* globalCtx);
void EnNiw_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnNiw_Update(Actor* thisx, GlobalContext* globalCtx);
void EnNiw_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Niw_InitVars = {
    ACTOR_EN_NIW,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_NIW,
    sizeof(EnNiw),
    (ActorFunc)EnNiw_Init,
    (ActorFunc)EnNiw_Destroy,
    (ActorFunc)EnNiw_Update,
    (ActorFunc)EnNiw_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw/EnNiw_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw/EnNiw_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw/func_80AB5BF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw/func_80AB5FA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw/func_80AB6100.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw/func_80AB627C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw/func_80AB6324.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw/func_80AB63A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw/func_80AB6450.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw/func_80AB6570.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw/func_80AB6A38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw/func_80AB6BF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw/func_80AB6D08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw/func_80AB6EB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw/func_80AB6F04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw/func_80AB70A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw/func_80AB70F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw/func_80AB714C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw/func_80AB7204.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw/func_80AB7290.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw/func_80AB7328.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw/func_80AB7420.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw/func_80AB747C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw/EnNiw_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw/func_80AB7F60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw/EnNiw_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw/func_80AB8168.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw/func_80AB8258.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw/func_80AB840C.s")
