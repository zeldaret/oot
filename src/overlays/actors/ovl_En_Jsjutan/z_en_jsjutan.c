/*
 * File: z_en_jsjutan.c
 * Overlay: ovl_En_Jsjutan
 * Description: Magic carpet man carpet
 */

#include "z_en_jsjutan.h"

#define FLAGS 0x00000009

#define THIS ((EnJsjutan*)thisx)

void EnJsjutan_Init(Actor* thisx, GlobalContext* globalCtx);
void EnJsjutan_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnJsjutan_Update(Actor* thisx, GlobalContext* globalCtx);
void EnJsjutan_Draw(Actor* thisx, GlobalContext* globalCtx);

extern CollisionHeader D_80A8E400;

/*
const ActorInit En_Jsjutan_InitVars = {
    ACTOR_EN_JSJUTAN,
    ACTORCAT_NPC,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnJsjutan),
    (ActorFunc)EnJsjutan_Init,
    (ActorFunc)EnJsjutan_Destroy,
    (ActorFunc)EnJsjutan_Update,
    (ActorFunc)EnJsjutan_Draw,
};
*/

void EnJsjutan_Init(Actor *thisx, GlobalContext *globalCtx) {
    EnJsjutan* this = THIS;
    s32 pad;
    CollisionHeader* header = NULL;

    this->dyna.actor.flags = this->dyna.actor.flags & ~1;
    DynaPolyActor_Init(&this->dyna, DPM_UNK);
    CollisionHeader_GetVirtual(&D_80A8E400, &header);
    this->dyna.bgId = DynaPoly_SetBgActor(globalCtx, &globalCtx->colCtx.dyna, thisx, header);
    Actor_SetScale(thisx, 0.02f);
    this->unk_164 = 1;
    this->unk_16C = 100.0f;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Jsjutan/EnJsjutan_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Jsjutan/func_80A89860.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Jsjutan/func_80A89A6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Jsjutan/EnJsjutan_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Jsjutan/EnJsjutan_Draw.s")
