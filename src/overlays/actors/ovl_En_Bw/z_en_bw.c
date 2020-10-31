#include "z_en_bw.h"

#define FLAGS 0x00000015

#define THIS ((EnBw*)thisx)

void EnBw_Init(Actor* thisx, GlobalContext* globalCtx);
void EnBw_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnBw_Update(Actor* thisx, GlobalContext* globalCtx);
void EnBw_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Bw_InitVars = {
    ACTOR_EN_BW,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_BW,
    sizeof(EnBw),
    (ActorFunc)EnBw_Init,
    (ActorFunc)EnBw_Destroy,
    (ActorFunc)EnBw_Update,
    (ActorFunc)EnBw_Draw,
};

static ColliderCylinderInit D_809D1450 = {
    { COLTYPE_NONE, AT_ENEMY | AT_ON, AC_OFF, OC_OFF, OT_NONE, COLSHAPE_CYLINDER },
    { ELEMTYPE_UNK0, { 0xFFCFFFFF, 0x01, 0x08 }, { 0x00000000, 0x00, 0x00 }, TOUCH_SFX_NORMAL | TOUCH_ON, BUMP_OFF,
OCELEM_OFF }, { 30, 65, 0, { 0, 0, 0 } },
};

static ColliderCylinderInit D_809D147C = {
    { COLTYPE_UNK0, AT_OFF, AC_PLAYER | AC_ON, OC_PLAYER | OC_ON, OT_TYPE1, COLSHAPE_CYLINDER },
    { ELEMTYPE_UNK0, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, TOUCH_OFF, BUMP_ON, OCELEM_ON },
    { 30, 35, 0, { 0, 0, 0 } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bw/func_809CE6E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bw/EnBw_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bw/EnBw_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bw/func_809CE884.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bw/func_809CE9A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bw/func_809CEA24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bw/func_809CF72C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bw/func_809CF7AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bw/func_809CF8F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bw/func_809CF984.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bw/func_809CFBA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bw/func_809CFC4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bw/func_809CFF10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bw/func_809CFF98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bw/func_809D00F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bw/func_809D014C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bw/func_809D01CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bw/func_809D0268.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bw/func_809D03CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bw/func_809D0424.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bw/func_809D0584.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bw/EnBw_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bw/func_809D0D18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bw/EnBw_Draw.s")
