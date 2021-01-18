/*
 * File: z_en_yabusame_mark.c
 * Overlay: ovl_En_Yabusame_Mark
 * Description: Horseback Archery Target (arrow hitbox)
 */

#include "z_en_yabusame_mark.h"

#define FLAGS 0x00000000

#define THIS ((EnYabusameMark*)thisx)

void EnYabusameMark_Init(Actor* thisx, GlobalContext* globalCtx);
void EnYabusameMark_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnYabusameMark_Update(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Yabusame_Mark_InitVars = {
    ACTOR_EN_YABUSAME_MARK,
    ACTORCAT_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnYabusameMark),
    (ActorFunc)EnYabusameMark_Init,
    (ActorFunc)EnYabusameMark_Destroy,
    (ActorFunc)EnYabusameMark_Update,
    NULL,
};

static ColliderQuadInit D_80B434F0 = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_TYPE_2,
        COLSHAPE_QUAD,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x0001F824, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_NONE,
    },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Yabusame_Mark/EnYabusameMark_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Yabusame_Mark/EnYabusameMark_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Yabusame_Mark/func_80B42F74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Yabusame_Mark/EnYabusameMark_Update.s")
