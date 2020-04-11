/*
 * File: z_bg_menkuri_eye.c
 * Overlay: ovl_Bg_Menkuri_Eye
 * Description: Eye platform eye switches
 */

#include "z_bg_menkuri_eye.h"

#define FLAGS 0x00000020

void BgMenkuriEye_Init(BgMenkuriEye* this, GlobalContext* globalCtx);
void BgMenkuriEye_Destroy(BgMenkuriEye* this, GlobalContext* globalCtx);
void BgMenkuriEye_Update(BgMenkuriEye* this, GlobalContext* globalCtx);
void BgMenkuriEye_Draw(BgMenkuriEye* this, GlobalContext* globalCtx);

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
