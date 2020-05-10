#include "z_en_ik.h"

#define FLAGS 0x00000010

#define THIS ((EnIk*)thisx)

void EnIk_Init(Actor* thisx, GlobalContext* globalCtx);
void EnIk_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnIk_Update(Actor* thisx, GlobalContext* globalCtx);
void EnIk_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Ik_InitVars = {
    ACTOR_EN_IK,
    ACTORTYPE_BOSS,
    FLAGS,
    OBJECT_IK,
    sizeof(EnIk),
    (ActorFunc)EnIk_Init,
    (ActorFunc)EnIk_Destroy,
    (ActorFunc)EnIk_Update,
    (ActorFunc)EnIk_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/EnIk_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A74390.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A74398.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A745E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A74674.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A74714.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A747C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A7489C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A7492C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A74AAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A74BA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A74E2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A74EBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A7506C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A7510C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A751C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A75260.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A753D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A7545C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A754A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A75530.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A755F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A7567C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A75790.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A758B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A7598C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A75A38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A75C38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A75FA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A761B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A7626C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A76330.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A76798.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A76BF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A76C14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A76DDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A76E2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77034.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A7707C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A7709C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A770C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77140.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77148.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77158.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A771E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77264.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A772A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A772EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A7735C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77434.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77474.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A7748C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A774BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A774F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77530.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A7759C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77844.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A779DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77AEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77B0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77B3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/EnIk_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77BF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77C7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77ED0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77EDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/EnIk_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A780D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A78160.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A781CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/EnIk_Init.s")
