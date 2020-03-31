/*
 * File: z_en_vase.c
 * Overlay: ovl_En_Vase
 * Description: An unused, orange pot based on ALTTP. Lacks collision.
 */

#include <ultra64.h>
#include <global.h>
#include <z64.h>

typedef struct {
    /* 0x0000 */ Actor actor;
} ActorEnVase; // size = 0x014C

#define ROOM 0x00
#define FLAGS 0x00000010

static void Init(ActorEnVase* this, GlobalContext* globalCtx);
static void Destroy(ActorEnVase* this, GlobalContext* globalCtx);
static void Draw(ActorEnVase* this, GlobalContext* globalCtx);

const ActorInit En_Vase_InitVars = {
    ACTOR_EN_VASE,   ACTORTYPE_PROP,     ROOM,
    FLAGS,           OBJECT_VASE,        sizeof(ActorEnVase),
    (ActorFunc)Init, (ActorFunc)Destroy, (ActorFunc)Actor_Noop,
    (ActorFunc)Draw,
};

extern u32 DL_VASE;

static void Init(ActorEnVase* this, GlobalContext* globalCtx) {
    Actor_SetScale(&this->actor, 0.01f);
    this->actor.posRot2.pos = this->actor.posRot.pos;
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 6.0f);
}

static void Destroy(ActorEnVase* this, GlobalContext* globalCtx) {
}

static void Draw(ActorEnVase* this, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, &DL_VASE);
}
