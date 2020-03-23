#include "z_en_kakasi.h"

#define ROOM 0x00
#define FLAGS 0x02000009

void EnKakasi_Init(EnKakasi* this, GlobalContext* globalCtx);
void EnKakasi_Destroy(EnKakasi* this, GlobalContext* globalCtx);
void EnKakasi_Update(EnKakasi* this, GlobalContext* globalCtx);
void EnKakasi_Draw(EnKakasi* this, GlobalContext* globalCtx);

/*
const ActorInit En_Kakasi_InitVars =
{
    ACTOR_EN_KAKASI,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_KA,
    sizeof(EnKakasi),
    (ActorFunc)EnKakasi_Init,
    (ActorFunc)EnKakasi_Destroy,
    (ActorFunc)EnKakasi_Update,
    (ActorFunc)EnKakasi_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi/EnKakasi_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi/EnKakasi_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi/func_80A8F28C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi/func_80A8F320.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi/func_80A8F660.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi/func_80A8F75C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi/func_80A8F8D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi/func_80A8F9C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi/func_80A8FAA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi/func_80A8FBB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi/EnKakasi_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi/EnKakasi_Draw.s")
