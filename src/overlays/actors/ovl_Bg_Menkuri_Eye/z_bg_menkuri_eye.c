/*
 * File: z_bg_menkuri_eye.c
 * Overlay: ovl_Bg_Menkuri_Eye
 * Description: Eye platform eye switches
 */

#include "z_bg_menkuri_eye.h"

#define FLAGS 0x00000020

#define THIS ((BgMenkuriEye*)thisx)

void BgMenkuriEye_Init(Actor* thisx, GlobalContext* globalCtx);
void BgMenkuriEye_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgMenkuriEye_Update(Actor* thisx, GlobalContext* globalCtx);
void BgMenkuriEye_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Bg_Menkuri_Eye_InitVars = {
    ACTOR_BG_MENKURI_EYE,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_MENKURI_OBJECTS,
    sizeof(BgMenkuriEye),
    (ActorFunc)BgMenkuriEye_Init,
    (ActorFunc)BgMenkuriEye_Destroy,
    (ActorFunc)BgMenkuriEye_Update,
    (ActorFunc)BgMenkuriEye_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Menkuri_Eye/BgMenkuriEye_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Menkuri_Eye/BgMenkuriEye_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Menkuri_Eye/BgMenkuriEye_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Menkuri_Eye/BgMenkuriEye_Draw.s")
