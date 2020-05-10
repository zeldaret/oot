/*
 * File: z_bg_umajump.c
 * Overlay: ovl_Bg_Umajump
 * Description: Hoppable horse fence
 */

#include "z_bg_umajump.h"

#define FLAGS 0x00000000

#define THIS ((BgUmaJump*)thisx)

void BgUmaJump_Init(Actor* thisx, GlobalContext* globalCtx);
void BgUmaJump_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgUmaJump_Update(Actor* thisx, GlobalContext* globalCtx);
void BgUmaJump_Draw(Actor* thisx, GlobalContext* globalCtx);

const ActorInit Bg_Umajump_InitVars = {
    ACTOR_BG_UMAJUMP,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_UMAJUMP,
    sizeof(BgUmaJump),
    (ActorFunc)BgUmaJump_Init,
    (ActorFunc)BgUmaJump_Destroy,
    (ActorFunc)BgUmaJump_Update,
    (ActorFunc)BgUmaJump_Draw,
};

extern D_06001438; // segmented address: 0x06001438
extern D_06001220; // segmented address: 0x06001220

static InitChainEntry initChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

void BgUmaJump_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgUmaJump* this = THIS;
    s32 pad;
    u32 sp24 = 0;

    Actor_ProcessInitChain(&this->actor, initChain);
    DynaPolyInfo_SetActorMove(&this->actor, DPM_UNK);
    DynaPolyInfo_Alloc(&D_06001438, &sp24);
    this->dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->actor, sp24);

    if (this->actor.params == 1) {
        if ((!Flags_GetEventChkInf(0x18)) && (DREG(1) == 0)) {
            Actor_Kill(&this->actor);
            return;
        }
        this->actor.flags |= 0x30;
    }
}

void BgUmaJump_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgUmaJump* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dynaPolyId);
}

void BgUmaJump_Update(Actor* thisx, GlobalContext* globalCtx) {
}

void BgUmaJump_Draw(Actor* thisx, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, &D_06001220);
}
