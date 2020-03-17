#include "z_en_dog.h"

#define ROOM  0x00
#define FLAGS 0x00000000

void EnDog_Init(EnDog* this, GlobalContext* globalCtx);
void EnDog_Destroy(EnDog* this, GlobalContext* globalCtx);
void EnDog_Update(EnDog* this, GlobalContext* globalCtx);
void EnDog_Draw(EnDog* this, GlobalContext* globalCtx);

/*
const ActorInit En_Dog_InitVars =
{
    ACTOR_EN_DOG,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_DOG,
    sizeof(EnDog),
    (ActorFunc)EnDog_Init,
    (ActorFunc)EnDog_Destroy,
    (ActorFunc)EnDog_Update,
    (ActorFunc)EnDog_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dog/func_809FAFD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dog/func_809FB038.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dog/func_809FB0A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dog/func_809FB108.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dog/func_809FB29C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dog/func_809FB320.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dog/func_809FB3AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dog/EnDog_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dog/EnDog_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dog/func_809FB6C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dog/func_809FB858.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dog/func_809FB940.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dog/func_809FBABC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dog/func_809FBB64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dog/func_809FBC6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dog/EnDog_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dog/func_809FBD8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dog/func_809FBDA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dog/EnDog_Draw.s")
