/*
 * File: z_bg_umajump.c
 * Overlay: ovl_Bg_Umajump
 * Description: Hoppable horse fence
 */

#include <ultra64.h>
#include <global.h>
#include <z64.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ u32 dynaPolyId;
    /* 0x0150 */ char unk_150[0x14];
} ActorBgUmajump; // size = 0x0164

#define ROOM 0x00
#define FLAGS 0x00000000

static void Init(ActorBgUmajump* this, GlobalContext* globalCtx);
static void Destroy(ActorBgUmajump* this, GlobalContext* globalCtx);
static void Update(ActorBgUmajump* this, GlobalContext* globalCtx);
static void Draw(ActorBgUmajump* this, GlobalContext* globalCtx);

const ActorInit Bg_Umajump_InitVars = {
    ACTOR_BG_UMAJUMP,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_UMAJUMP,
    sizeof(ActorBgUmajump),
    (ActorFunc)Init,
    (ActorFunc)Destroy,
    (ActorFunc)Update,
    (ActorFunc)Draw,
};

extern D_06001438; // segmented address: 0x06001438
extern D_06001220; // segmented address: 0x06001220

static InitChainEntry initChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

static void Init(ActorBgUmajump* this, GlobalContext* globalCtx) {
    s32 pad[2];
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

static void Destroy(ActorBgUmajump* this, GlobalContext* globalCtx) {
    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dynaPolyId);
}

static void Update(ActorBgUmajump* this, GlobalContext* globalCtx) {
}

static void Draw(ActorBgUmajump* this, GlobalContext* globalCtx) {
    Draw_DListOpa(globalCtx, &D_06001220);
}
