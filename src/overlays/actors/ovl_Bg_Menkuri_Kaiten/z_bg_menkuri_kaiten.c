/*
 * File: z_bg_menkuri_kaiten.c
 * Overlay: Bg_Menkuri_Kaiten
 * Description: Large rotating stone ring used in Gerudo Training Grounds and Forest Temple.
 */

#include <ultra64.h>
#include <global.h>

extern u32 D_060038D0;
extern u32 D_060042D8;

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ u32 dynaPolyId;
    /* 0x0150 */ char unk_150[0x14];
} ActorMenkuriKaiten; // size = 0x0164

#define ROOM 0x00
#define FLAGS 0x00000030

static void Init(ActorMenkuriKaiten* this, GlobalContext* globalCtx);
static void Destroy(ActorMenkuriKaiten* this, GlobalContext* globalCtx);
static void Update(ActorMenkuriKaiten* this, GlobalContext* globalCtx);
static void Draw(ActorMenkuriKaiten* this, GlobalContext* globalCtx);

const ActorInit Bg_Menkuri_Kaiten_InitVars = {
    ACTOR_BG_MENKURI_KAITEN,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_MENKURI_OBJECTS,
    sizeof(ActorMenkuriKaiten),
    (ActorFunc)Init,
    (ActorFunc)Destroy,
    (ActorFunc)Update,
    (ActorFunc)Draw,
};

static InitChainEntry initChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

static void Init(ActorMenkuriKaiten* this, GlobalContext* globalCtx) {
    s32 pad[2];
    u32 local_c = 0;

    Actor_ProcessInitChain(&this->actor, initChain);
    DynaPolyInfo_SetActorMove(&this->actor, 3);
    DynaPolyInfo_Alloc(&D_060042D8, &local_c);
    this->dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->actor, local_c);
}

static void Destroy(ActorMenkuriKaiten* this, GlobalContext* globalCtx) {
    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dynaPolyId);
}

static void Update(ActorMenkuriKaiten* this, GlobalContext* globalCtx) {
    if (!Flags_GetSwitch(globalCtx, this->actor.params) && func_80043590(&this->actor)) {
        func_8002F974(&this->actor, 0x2024);
        this->actor.shape.rot.y += 0x80;
    }
}

static void Draw(ActorMenkuriKaiten* this, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, &D_060038D0);
}
