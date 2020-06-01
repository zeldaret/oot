/*
 * File: z_bg_menkuri_kaiten.c
 * Overlay: Bg_Menkuri_Kaiten
 * Description: Large rotating stone ring used in Gerudo Training Grounds and Forest Temple.
 */

#include "z_bg_menkuri_kaiten.h"

#define FLAGS 0x00000030

#define THIS ((BgMenkuriKaiten*)thisx)

void BgMenkuriKaiten_Init(Actor* thisx, GlobalContext* globalCtx);
void BgMenkuriKaiten_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgMenkuriKaiten_Update(Actor* thisx, GlobalContext* globalCtx);
void BgMenkuriKaiten_Draw(Actor* thisx, GlobalContext* globalCtx);

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

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

extern Gfx D_060038D0[];
extern UNK_TYPE D_060042D8;

void BgMenkuriKaiten_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgMenkuriKaiten* this = THIS;
    s32 pad;
    u32 local_c = 0;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    DynaPolyInfo_SetActorMove(&this->actor, 3);
    DynaPolyInfo_Alloc(&D_060042D8, &local_c);
    this->dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->actor, local_c);
}

void BgMenkuriKaiten_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgMenkuriKaiten* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dynaPolyId);
}

void BgMenkuriKaiten_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgMenkuriKaiten* this = THIS;

    if (!Flags_GetSwitch(globalCtx, this->actor.params) && func_80043590(&this->actor)) {
        func_8002F974(&this->actor, 0x2024);
        this->actor.shape.rot.y += 0x80;
    }
}

void BgMenkuriKaiten_Draw(Actor* thisx, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, D_060038D0);
}
