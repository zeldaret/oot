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

extern CollisionHeader D_06001438;
extern Gfx D_06001220[];

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

void BgUmaJump_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgUmaJump* this = THIS;
    s32 pad;
    CollisionHeader* colHeader = NULL;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    DynaPolyActor_Init(&this->actor, DPM_UNK);
    CollisionHeader_GetVirtual(&D_06001438, &colHeader);
    this->bgId = DynaPoly_SetBgActor(globalCtx, &globalCtx->colCtx.dyna, &this->actor, colHeader);

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

    DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->bgId);
}

void BgUmaJump_Update(Actor* thisx, GlobalContext* globalCtx) {
}

void BgUmaJump_Draw(Actor* thisx, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, D_06001220);
}
