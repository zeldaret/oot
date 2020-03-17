#include "z_en_vb_ball.h"

#define ROOM  0x00
#define FLAGS 0x00000030

void EnVbBall_Init(EnVbBall* this, GlobalContext* globalCtx);
void EnVbBall_Destroy(EnVbBall* this, GlobalContext* globalCtx);
void EnVbBall_Update(EnVbBall* this, GlobalContext* globalCtx);
void EnVbBall_Draw(EnVbBall* this, GlobalContext* globalCtx);

/*
const ActorInit En_Vb_Ball_InitVars =
{
    ACTOR_PLAYER,
    ACTORTYPE_BOSS,
    ROOM,
    FLAGS,
    OBJECT_FD,
    sizeof(EnVbBall),
    (ActorFunc)EnVbBall_Init,
    (ActorFunc)EnVbBall_Destroy,
    (ActorFunc)EnVbBall_Update,
    (ActorFunc)EnVbBall_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vb_Ball/EnVbBall_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vb_Ball/EnVbBall_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vb_Ball/func_80B29158.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vb_Ball/func_80B29230.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vb_Ball/func_80B292D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vb_Ball/EnVbBall_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vb_Ball/EnVbBall_Draw.s")
