/*
 * File: z_bg_menkuri_nisekabe.c
 * Overlay: ovl_Bg_Menkuri_Nisekabe
 * Description: False Stone Walls (Gerudo Training Grounds)
 */

#include "z_bg_menkuri_nisekabe.h"

#define FLAGS 0x00000000

void BgMenkuriNisekabe_Init(BgMenkuriNisekabe* this, GlobalContext* globalCtx);
void BgMenkuriNisekabe_Destroy(BgMenkuriNisekabe* this, GlobalContext* globalCtx);
void BgMenkuriNisekabe_Update(BgMenkuriNisekabe* this, GlobalContext* globalCtx);
void BgMenkuriNisekabe_Draw(BgMenkuriNisekabe* this, GlobalContext* globalCtx);

const ActorInit Bg_Menkuri_Nisekabe_InitVars = {
    ACTOR_BG_MENKURI_NISEKABE,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_MENKURI_OBJECTS,
    sizeof(BgMenkuriNisekabe),
    (ActorFunc)BgMenkuriNisekabe_Init,
    (ActorFunc)BgMenkuriNisekabe_Destroy,
    (ActorFunc)BgMenkuriNisekabe_Update,
    (ActorFunc)BgMenkuriNisekabe_Draw,
};

static u32 segmentAddr[] = { 0x06002280, 0x06002BC0 };

void BgMenkuriNisekabe_Init(BgMenkuriNisekabe* this, GlobalContext* globalCtx) {
    Actor_SetScale(&this->actor, 0.1f);
}

void BgMenkuriNisekabe_Destroy(BgMenkuriNisekabe* this, GlobalContext* globalCtx) {
}

void BgMenkuriNisekabe_Update(BgMenkuriNisekabe* this, GlobalContext* globalCtx) {
    if (globalCtx->actorCtx.unk_03 != 0) {
        this->actor.flags |= 0x80;
    } else {
        this->actor.flags &= ~0x80;
    }
}

void BgMenkuriNisekabe_Draw(BgMenkuriNisekabe* this, GlobalContext* globalCtx) {
    u32 index = this->actor.params & 0xFF;

    if ((this->actor.flags & 0x80) == 0x80) {
        Gfx_DrawDListXlu(globalCtx, segmentAddr[index]);
    } else {
        Gfx_DrawDListOpa(globalCtx, segmentAddr[index]);
    }
}
