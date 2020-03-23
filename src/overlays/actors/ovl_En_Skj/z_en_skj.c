#include "z_en_skj.h"

#define ROOM 0x00
#define FLAGS 0x02000015

void EnSkj_Init(EnSkj* this, GlobalContext* globalCtx);
void EnSkj_Destroy(EnSkj* this, GlobalContext* globalCtx);
void EnSkj_Update(EnSkj* this, GlobalContext* globalCtx);
void EnSkj_Draw(EnSkj* this, GlobalContext* globalCtx);

/*
const ActorInit En_Skj_InitVars =
{
    ACTOR_EN_SKJ,
    ACTORTYPE_ENEMY,
    ROOM,
    FLAGS,
    OBJECT_SKJ,
    sizeof(EnSkj),
    (ActorFunc)EnSkj_Init,
    (ActorFunc)EnSkj_Destroy,
    (ActorFunc)EnSkj_Update,
    (ActorFunc)EnSkj_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFE2B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFE338.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFE390.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFE428.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/EnSkj_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/EnSkj_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFE8EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFE968.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFE9AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFE9D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFEAEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFEC3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFEDF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFEE84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFEECC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFEF5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFEF98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFF038.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFF07C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFF16C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFF19C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFF1F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFF220.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFF2A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFF2E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFF334.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFF380.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFF3D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFF424.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFF5F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFF620.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFF660.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFF688.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFF7A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFF7D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFF9E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFFA0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFFCE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFFD14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFFD64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFFD84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFFE24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFFE44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFFEB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFFED4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFFF38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFFF58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80AFFFBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B00018.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B00068.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B00098.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B000EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B00130.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B001CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B00210.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B002A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B002D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B00370.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B00390.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B003F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B0042C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B0047C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B0049C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B00514.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B00554.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B00590.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B005E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B00610.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B00638.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B00680.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B006B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B006F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B00740.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/EnSkj_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B00964.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B00A08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B00A54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B00B0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B00BB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B00C38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B00EA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B00EE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B00F2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B00F64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B01004.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B01040.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B010C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B01134.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B011CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B01244.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B01348.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B01360.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B01474.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/func_80B014E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/EnSkj_Draw.s")
