/*
 * File: z_bg_jya_haheniron
 * Overlay: ovl_Bg_Jya_Haheniron
 * Description: Chunks of Iron Knucle Chair and Pillar
 */

#include "z_bg_jya_haheniron.h"

#define FLAGS 0x00000010

#define THIS ((BgJyaHaheniron*)thisx)

void BgJyaHaheniron_Init(Actor* thisx, GlobalContext* globalCtx);
void BgJyaHaheniron_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgJyaHaheniron_Update(Actor* thisx, GlobalContext* globalCtx);
void BgJyaHaheniron_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_06000880;

/*
const ActorInit Bg_Jya_Haheniron_InitVars = {
    ACTOR_BG_JYA_HAHENIRON,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_JYA_IRON,
    sizeof(BgJyaHaheniron),
    (ActorFunc)BgJyaHaheniron_Init,
    (ActorFunc)BgJyaHaheniron_Destroy,
    (ActorFunc)BgJyaHaheniron_Update,
    (ActorFunc)BgJyaHaheniron_Draw,
};

static ColliderJntSphElementInit D_80898740[1] = {
    {
        { ELEMTYPE_UNK0,
          { 0xFFCFFFFF, 0x00, 0x04 },
          { 0x00000000, 0x00, 0x00 },
          TOUCH_ON | TOUCH_SFX_NORMAL,
          BUMP_OFF,
          OCELEM_OFF },
        { 0, { { 0, 0, 0 }, 10 }, 100 },
    },
};

static ColliderJntSphInit D_80898764 = {
    { COLTYPE_NONE, AT_ON | AT_ENEMY, AC_ON, OC_OFF, OT_NONE, COLSHAPE_JNTSPH },
    1,
    D_80898740,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Haheniron/func_808980C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Haheniron/func_80898114.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Haheniron/BgJyaHaheniron_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Haheniron/BgJyaHaheniron_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Haheniron/func_8089843C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Haheniron/func_8089844C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Haheniron/func_80898588.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Haheniron/func_80898598.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Haheniron/func_8089861C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Haheniron/func_8089862C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Haheniron/BgJyaHaheniron_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Haheniron/BgJyaHaheniron_Draw.s")
