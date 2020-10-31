/*
 * File: z_en_horse_zelda.c
 * Overlay: ovl_En_Horse_Zelda
 * Description: Zelda's Horse
 */

#include "z_en_horse_zelda.h"

#define FLAGS 0x00000010

#define THIS ((EnHorseZelda*)thisx)

void EnHorseZelda_Init(Actor* thisx, GlobalContext* globalCtx);
void EnHorseZelda_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnHorseZelda_Update(Actor* thisx, GlobalContext* globalCtx);
void EnHorseZelda_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Horse_Zelda_InitVars = {
    ACTOR_EN_HORSE_ZELDA,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_HORSE_ZELDA,
    sizeof(EnHorseZelda),
    (ActorFunc)EnHorseZelda_Init,
    (ActorFunc)EnHorseZelda_Destroy,
    (ActorFunc)EnHorseZelda_Update,
    (ActorFunc)EnHorseZelda_Draw,
};

static ColliderCylinderInit_Set3 sCylinderInit = {
    { COLTYPE_NONE, AT_OFF, AC_OFF, OC_ALL | OC_ON, COLSHAPE_CYLINDER },
    { ELEMTYPE_UNK0, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, TOUCH_OFF, BUMP_OFF, OCELEM_ON },
    { 40, 100, 0, { 0, 0, 0 } },
};

static ColliderJntSphElementInit  D_80A6E204[1] = {
    {
        { ELEMTYPE_UNK0, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, TOUCH_OFF, BUMP_OFF, OCELEM_ON },
        { 13, { { 0, 0, 0 }, 20 }, 100 },
    },
};

static ColliderJntSphInit D_80A6E228 = {
    { COLTYPE_NONE, AT_OFF, AC_PLAYER | AC_ON, OC_ALL | OC_ON, OT_TYPE1 | OT_UNK1, COLSHAPE_JNTSPH },
    1, D_80A6E204,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Zelda/func_80A6D8D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Zelda/func_80A6D918.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Zelda/EnHorseZelda_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Zelda/EnHorseZelda_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Zelda/func_80A6DC7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Zelda/func_80A6DCCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Zelda/func_80A6DD14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Zelda/func_80A6DDFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Zelda/func_80A6DE38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Zelda/EnHorseZelda_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Zelda/func_80A6DFD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Zelda/EnHorseZelda_Draw.s")
