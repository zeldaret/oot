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
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnYabusameMark),
    (ActorFunc)EnYabusameMark_Init,
    (ActorFunc)EnYabusameMark_Destroy,
    (ActorFunc)EnYabusameMark_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Yabusame_Mark/EnYabusameMark_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Yabusame_Mark/EnYabusameMark_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Yabusame_Mark/func_80B42F74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Yabusame_Mark/EnYabusameMark_Update.s")
