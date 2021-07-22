/*
 * File: z_bg_menkuri_nisekabe.c
 * Overlay: ovl_Bg_Menkuri_Nisekabe
 * Description: False Stone Walls (Gerudo Training Grounds)
 */

#include "z_bg_menkuri_nisekabe.h"

#define FLAGS ACTOR_FLAG_NONE

#define THIS ((BgMenkuriNisekabe*)thisx)

void BgMenkuriNisekabe_Init(Actor* thisx, GlobalContext* globalCtx);
void BgMenkuriNisekabe_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgMenkuriNisekabe_Update(Actor* thisx, GlobalContext* globalCtx);
void BgMenkuriNisekabe_Draw(Actor* thisx, GlobalContext* globalCtx);

const ActorInit Bg_Menkuri_Nisekabe_InitVars = {
    ACTOR_BG_MENKURI_NISEKABE,
    ACTORCAT_PROP,
    FLAGS,
    OBJECT_MENKURI_OBJECTS,
    sizeof(BgMenkuriNisekabe),
    (ActorFunc)BgMenkuriNisekabe_Init,
    (ActorFunc)BgMenkuriNisekabe_Destroy,
    (ActorFunc)BgMenkuriNisekabe_Update,
    (ActorFunc)BgMenkuriNisekabe_Draw,
};

static u32 segmentAddr[] = { 0x06002280, 0x06002BC0 };

void BgMenkuriNisekabe_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgMenkuriNisekabe* this = THIS;

    Actor_SetScale(&this->actor, 0.1f);
}

void BgMenkuriNisekabe_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void BgMenkuriNisekabe_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgMenkuriNisekabe* this = THIS;

    if (globalCtx->actorCtx.unk_03 != 0) {
        this->actor.flags |= ACTOR_FLAG_7;
    } else {
        this->actor.flags &= ~ACTOR_FLAG_7;
    }
}

void BgMenkuriNisekabe_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BgMenkuriNisekabe* this = THIS;
    u32 index = this->actor.params & 0xFF;

    if (ACTOR_FLAGS_ALL(this->actor.flags, ACTOR_FLAG_7)) {
        Gfx_DrawDListXlu(globalCtx, segmentAddr[index]);
    } else {
        Gfx_DrawDListOpa(globalCtx, segmentAddr[index]);
    }
}
