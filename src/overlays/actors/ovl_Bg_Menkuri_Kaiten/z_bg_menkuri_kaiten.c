/*
 * File: z_bg_menkuri_kaiten.c
 * Overlay: Bg_Menkuri_Kaiten
 * Description: Large rotating stone ring used in Gerudo Training Grounds and Forest Temple.
 */

#include "z_bg_menkuri_kaiten.h"

extern u32 D_060038D0;
extern u32 D_060042D8;

#define FLAGS 0x00000030

void BgMenkuriKaiten_Init(BgMenkuriKaiten* this, GlobalContext* globalCtx);
void BgMenkuriKaiten_Destroy(BgMenkuriKaiten* this, GlobalContext* globalCtx);
void BgMenkuriKaiten_Update(BgMenkuriKaiten* this, GlobalContext* globalCtx);
void BgMenkuriKaiten_Draw(BgMenkuriKaiten* this, GlobalContext* globalCtx);

const ActorInit Bg_Menkuri_Kaiten_InitVars = {
    ACTOR_BG_MENKURI_KAITEN,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_MENKURI_OBJECTS,
    sizeof(BgMenkuriKaiten),
    (ActorFunc)BgMenkuriKaiten_Init,
    (ActorFunc)BgMenkuriKaiten_Destroy,
    (ActorFunc)BgMenkuriKaiten_Update,
    (ActorFunc)BgMenkuriKaiten_Draw,
};

static InitChainEntry initChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

void BgMenkuriKaiten_Init(BgMenkuriKaiten* this, GlobalContext* globalCtx) {
    s32 pad[2];
    u32 local_c = 0;

    Actor_ProcessInitChain(&this->actor, initChain);
    DynaPolyInfo_SetActorMove(&this->actor, 3);
    DynaPolyInfo_Alloc(&D_060042D8, &local_c);
    this->dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->actor, local_c);
}

void BgMenkuriKaiten_Destroy(BgMenkuriKaiten* this, GlobalContext* globalCtx) {
    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dynaPolyId);
}

void BgMenkuriKaiten_Update(BgMenkuriKaiten* this, GlobalContext* globalCtx) {
    if (!Flags_GetSwitch(globalCtx, this->actor.params) && func_80043590(&this->actor)) {
        func_8002F974(&this->actor, 0x2024);
        this->actor.shape.rot.y += 0x80;
    }
}

void BgMenkuriKaiten_Draw(BgMenkuriKaiten* this, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, &D_060038D0);
}
