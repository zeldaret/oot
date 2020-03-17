#include "z_en_karebaba.h"

#define ROOM  0x00
#define FLAGS 0x00000005

void EnKarebaba_Init(EnKarebaba* this, GlobalContext* globalCtx);
void EnKarebaba_Destroy(EnKarebaba* this, GlobalContext* globalCtx);
void EnKarebaba_Update(EnKarebaba* this, GlobalContext* globalCtx);
void EnKarebaba_Draw(EnKarebaba* this, GlobalContext* globalCtx);

/*
const ActorInit En_Karebaba_InitVars =
{
    ACTOR_EN_KAREBABA,
    ACTORTYPE_ENEMY,
    ROOM,
    FLAGS,
    OBJECT_DEKUBABA,
    sizeof(EnKarebaba),
    (ActorFunc)EnKarebaba_Init,
    (ActorFunc)EnKarebaba_Destroy,
    (ActorFunc)EnKarebaba_Update,
    (ActorFunc)EnKarebaba_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/EnKarebaba_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/EnKarebaba_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A954C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A954F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A95548.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A9559C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A95618.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A956B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A956D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A95748.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A957E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A95860.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A958EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A95940.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A959D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A95A38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A95B0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A95BFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A95D90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A96048.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A960B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A96184.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A961DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/EnKarebaba_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A9644C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/EnKarebaba_Draw.s")
