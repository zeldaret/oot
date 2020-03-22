#include "z_en_river_sound.h"

#define ROOM 0x00
#define FLAGS 0x00000030

void EnRiverSound_Init(EnRiverSound* this, GlobalContext* globalCtx);
void EnRiverSound_Destroy(EnRiverSound* this, GlobalContext* globalCtx);
void EnRiverSound_Update(EnRiverSound* this, GlobalContext* globalCtx);
void EnRiverSound_Draw(EnRiverSound* this, GlobalContext* globalCtx);

/*
const ActorInit En_River_Sound_InitVars =
{
    ACTOR_EN_RIVER_SOUND,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnRiverSound),
    (ActorFunc)EnRiverSound_Init,
    (ActorFunc)EnRiverSound_Destroy,
    (ActorFunc)EnRiverSound_Update,
    (ActorFunc)EnRiverSound_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_River_Sound/EnRiverSound_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_River_Sound/EnRiverSound_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_River_Sound/func_80AE6A54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_River_Sound/func_80AE6BC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_River_Sound/EnRiverSound_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_River_Sound/EnRiverSound_Draw.s")
