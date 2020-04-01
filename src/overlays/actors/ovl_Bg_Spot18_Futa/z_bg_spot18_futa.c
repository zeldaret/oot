/*
 * File: z_bg_spot18_futa.c
 * Overlay: ovl_Bg_Spot18_Futa
 * Description: The lid to a goron jar.
 */

#include <ultra64.h>
#include <global.h>
#include <z64.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ u32 dynaPolyId;
    /* 0x0150 */ u32 unk_150[0x5];
} ActorSpot18Futa; // size = 0x0154

#define ROOM 0x00
#define FLAGS 0x00000000

static void Init(ActorSpot18Futa* this, GlobalContext* globalCtx);
static void Destroy(ActorSpot18Futa* this, GlobalContext* globalCtx);
static void Update(ActorSpot18Futa* this, GlobalContext* globalCtx);
static void Draw(ActorSpot18Futa* this, GlobalContext* globalCtx);

const ActorInit Bg_Spot18_Futa_InitVars = {
    ACTOR_BG_SPOT18_FUTA,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_SPOT18_OBJ,
    sizeof(ActorSpot18Futa),
    (ActorFunc)Init,
    (ActorFunc)Destroy,
    (ActorFunc)Update,
    (ActorFunc)Draw,
};

static InitChainEntry initChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_F4, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_F8, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_FC, 1000, ICHAIN_STOP),
};

extern u32 DL_SPOT18_FUTA;  // 0x6000368
extern u32 DL_SPOT18_FUTA2; // 0x6000150

static void Init(ActorSpot18Futa* this, GlobalContext* globalCtx) {
    s32 pad[2];
    u32 sp1C = 0;

    DynaPolyInfo_SetActorMove(&this->actor, 0);
    DynaPolyInfo_Alloc(&DL_SPOT18_FUTA, &sp1C);
    this->dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->actor, sp1C);
    Actor_ProcessInitChain(&this->actor, initChain);
}

static void Destroy(ActorSpot18Futa* this, GlobalContext* globalCtx) {
    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dynaPolyId);
}

static void Update(ActorSpot18Futa* this, GlobalContext* globalCtx) {
    s32 iVar1;

    if (this->actor.attachedA == NULL) {
        iVar1 = Math_ApproxF(&this->actor.scale.x, 0, 0.005);

        if (iVar1 != 0) {
            Actor_Kill(&this->actor);
        } else {
            this->actor.scale.z = this->actor.scale.x;
            this->actor.scale.y = this->actor.scale.x;
        }
    }
}

static void Draw(ActorSpot18Futa* this, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, &DL_SPOT18_FUTA2);
}
