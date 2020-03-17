#include "z_en_md.h"

#define ROOM  0x00
#define FLAGS 0x02000019

void EnMd_Init(EnMd* this, GlobalContext* globalCtx);
void EnMd_Destroy(EnMd* this, GlobalContext* globalCtx);
void EnMd_Update(EnMd* this, GlobalContext* globalCtx);
void EnMd_Draw(EnMd* this, GlobalContext* globalCtx);

/*
const ActorInit En_Md_InitVars =
{
    ACTOR_EN_MD,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_MD,
    sizeof(EnMd),
    (ActorFunc)EnMd_Init,
    (ActorFunc)EnMd_Destroy,
    (ActorFunc)EnMd_Update,
    (ActorFunc)EnMd_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Md/func_80AAA250.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Md/func_80AAA274.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Md/func_80AAA308.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Md/func_80AAA39C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Md/func_80AAA474.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Md/func_80AAA508.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Md/func_80AAA5A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Md/func_80AAA638.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Md/func_80AAA6D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Md/func_80AAA768.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Md/func_80AAA7FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Md/func_80AAA890.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Md/func_80AAA92C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Md/func_80AAA93C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Md/func_80AAAA24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Md/func_80AAAC78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Md/func_80AAACF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Md/func_80AAADE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Md/func_80AAAE14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Md/func_80AAAE94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Md/func_80AAAF04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Md/func_80AAB03C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Md/func_80AAB0E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Md/func_80AAB158.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Md/func_80AAB370.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Md/func_80AAB4DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Md/func_80AAB5A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Md/EnMd_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Md/EnMd_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Md/func_80AAB874.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Md/func_80AAB8F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Md/func_80AAB948.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Md/func_80AABC10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Md/func_80AABD0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Md/EnMd_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Md/func_80AABEF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Md/func_80AAC104.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Md/EnMd_Draw.s")
