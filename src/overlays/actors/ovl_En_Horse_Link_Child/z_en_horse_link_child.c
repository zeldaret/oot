#include "z_en_horse_link_child.h"

#define ROOM 0x00
#define FLAGS 0x02000010

void EnHorseLinkChild_Init(EnHorseLinkChild* this, GlobalContext* globalCtx);
void EnHorseLinkChild_Destroy(EnHorseLinkChild* this, GlobalContext* globalCtx);
void EnHorseLinkChild_Update(EnHorseLinkChild* this, GlobalContext* globalCtx);
void EnHorseLinkChild_Draw(EnHorseLinkChild* this, GlobalContext* globalCtx);

/*
const ActorInit En_Horse_Link_Child_InitVars =
{
    ACTOR_EN_HORSE_LINK_CHILD,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_HORSE_LINK_CHILD,
    sizeof(EnHorseLinkChild),
    (ActorFunc)EnHorseLinkChild_Init,
    (ActorFunc)EnHorseLinkChild_Destroy,
    (ActorFunc)EnHorseLinkChild_Update,
    (ActorFunc)EnHorseLinkChild_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Link_Child/func_80A693D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Link_Child/func_80A6948C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Link_Child/func_80A695A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Link_Child/EnHorseLinkChild_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Link_Child/EnHorseLinkChild_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Link_Child/func_80A6988C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Link_Child/func_80A698F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Link_Child/func_80A6993C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Link_Child/func_80A699FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Link_Child/func_80A69B7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Link_Child/func_80A69C18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Link_Child/func_80A69EC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Link_Child/func_80A69F5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Link_Child/func_80A6A068.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Link_Child/func_80A6A4DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Link_Child/func_80A6A5A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Link_Child/func_80A6A724.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Link_Child/func_80A6A7D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Link_Child/EnHorseLinkChild_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Link_Child/func_80A6ABF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Link_Child/func_80A6AD84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Link_Child/EnHorseLinkChild_Draw.s")
