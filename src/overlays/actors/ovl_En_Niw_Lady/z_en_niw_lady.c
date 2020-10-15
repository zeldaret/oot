#include "z_en_niw_lady.h"

#define FLAGS 0x00000019

#define THIS ((EnNiwLady*)thisx)

void EnNiwLady_Init(Actor* thisx, GlobalContext* globalCtx);
void EnNiwLady_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnNiwLady_Update(Actor* thisx, GlobalContext* globalCtx);

const ActorInit En_Niw_Lady_InitVars = {
    ACTOR_EN_NIW_LADY,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_ANE,
    sizeof(EnNiwLady),
    (ActorFunc)EnNiwLady_Init,
    (ActorFunc)EnNiwLady_Destroy,
    (ActorFunc)EnNiwLady_Update,
    NULL,
};

s32 D_80ABB3A0[] = {
    0x50365070, 0x50725037, 0x50385039, 0x503A503B, 0x503D503C,
};

s32 D_80ABB3B4[] = {
    0x02000400,
    0x08001000,
    0x20004000,
    0x80000000,
};

s32 D_80ABB3C4[] = {
    0x0A000039, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00010100, 0x000A000A, 0x00000000, 0x00000000,
};

s16 D_80ABB3F0[] = {
    0x503E, 0x503F, 0x5047,
//};

//s16 D_80ABB3F6[] = {
    0x5040,
    0x5042,
//};
//s16 D_80ABB3FA[] = {
    0x5043,
    0x5044,
//}

//s16 D_80ABB3FE[] = {
    0x00CF,
};

s32 D_80ABB400[] = {
    0x50455042,
    0x50270000,
};

s32 D_80ABB408[] ={
    0x060008C8, 0x060010C8, 0x060018C8, 0x00000000, 0x00000000, 0x00000000,
};

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/EnNiwLady_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/EnNiwLady_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80AB9D60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80AB9F24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABA21C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABA244.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABA654.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABA778.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABA878.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABA9B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABAA9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABAB08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABAC00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABAC84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABAD38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABAD7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/EnNiwLady_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABB0A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABB0CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABB228.s")
