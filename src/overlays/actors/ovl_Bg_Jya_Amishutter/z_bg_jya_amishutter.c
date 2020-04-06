/*
 * File: z_bg_jya_amishutter.c
 * Overlay: Bg_Jya_Amishutter
 * Description: Circular Metal Grate (Spirit Temple)
 */

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ u32 dynaPolyId;
    /* 0x0150 */ char unk_150[0x14];
    /* 0x0164 */ void (*updateFunc)(Actor*);
} BgJyaAmishutter; // size = 0x0168

#define ROOM 0x00
#define FLAGS 0x00000000

static void BgJyaAmishutter_Init(BgJyaAmishutter* this, GlobalContext* globalCtx);
static void BgJyaAmishutter_Destroy(BgJyaAmishutter* this, GlobalContext* globalCtx);
static void BgJyaAmishutter_Update(BgJyaAmishutter* this, GlobalContext* globalCtx);
static void BgJyaAmishutter_Draw(BgJyaAmishutter* this, GlobalContext* globalCtx);

static void func_808933BC(BgJyaAmishutter* this);
static void func_808933CC(BgJyaAmishutter* this);
static void func_80893428(BgJyaAmishutter* this);
static void func_80893438(BgJyaAmishutter* this);
static void func_808934B0(BgJyaAmishutter* this);
static void func_808934C0(BgJyaAmishutter* this);
static void func_808934FC(BgJyaAmishutter* this);
static void func_8089350C(BgJyaAmishutter* this);

const ActorInit Bg_Jya_Amishutter_InitVars = {
    ACTOR_BG_JYA_AMISHUTTER,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_JYA_OBJ,
    sizeof(BgJyaAmishutter),
    (ActorFunc)BgJyaAmishutter_Init,
    (ActorFunc)BgJyaAmishutter_Destroy,
    (ActorFunc)BgJyaAmishutter_Update,
    (ActorFunc)BgJyaAmishutter_Draw,
};

static InitChainEntry initChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_F4, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_F8, 200, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_FC, 1000, ICHAIN_STOP),
};

extern UNK_TYPE D_0600C4C8;
extern UNK_TYPE D_0600C0A0;

static void func_808932C0(BgJyaAmishutter* this, GlobalContext* globalCtx, u32 collision, DynaPolyMoveFlag flag) {
    s16 pad1;
    u32 local_c = 0;
    s16 pad2;

    DynaPolyInfo_SetActorMove(&this->actor, flag);
    DynaPolyInfo_Alloc(collision, &local_c);
    this->dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->actor, local_c);
    if (this->dynaPolyId == 0x32) {
        osSyncPrintf("Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n", "../z_bg_jya_amishutter.c", 129,
                     this->actor.id, this->actor.params);
    }
}

static void BgJyaAmishutter_Init(BgJyaAmishutter* this, GlobalContext* globalCtx) {
    func_808932C0(this, globalCtx, &D_0600C4C8, 0);
    Actor_ProcessInitChain(&this->actor, initChain);
    func_808933BC(this);
}

static void BgJyaAmishutter_Destroy(BgJyaAmishutter* this, GlobalContext* globalCtx) {
    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dynaPolyId);
}

static void func_808933BC(BgJyaAmishutter* this) {
    this->updateFunc = func_808933CC;
}

static void func_808933CC(BgJyaAmishutter* this) {
    if (this->actor.xzDistanceFromLink < 60.0f) {
        if (fabsf(this->actor.yDistanceFromLink) < 30.0f) {
            func_80893428(this);
        }
    }
}

static void func_80893428(BgJyaAmishutter* this) {
    this->updateFunc = func_80893438;
}

static void func_80893438(BgJyaAmishutter* this) {
    if (Math_ApproxF(&this->actor.posRot.pos.y, this->actor.initPosRot.pos.y + 100.0f, 3.0f)) {
        func_808934B0(this);
        Audio_PlayActorSound2(&this->actor, NA_SE_EV_METALDOOR_STOP);
    } else {
        func_8002F974(&this->actor, 0x2036);
    }
}

static void func_808934B0(BgJyaAmishutter* this) {
    this->updateFunc = func_808934C0;
}

static void func_808934C0(BgJyaAmishutter* this) {
    if (this->actor.xzDistanceFromLink > 300.0f) {
        func_808934FC(this);
    }
}

static void func_808934FC(BgJyaAmishutter* this) {
    this->updateFunc = func_8089350C;
}

static void func_8089350C(BgJyaAmishutter* this) {
    if (Math_ApproxF(&this->actor.posRot.pos.y, this->actor.initPosRot.pos.y, 3.0f)) {
        func_808933BC(this);
        Audio_PlayActorSound2(&this->actor, NA_SE_EV_METALDOOR_STOP);
    } else {
        func_8002F974(&this->actor, 0x2036);
    }
}

static void BgJyaAmishutter_Update(BgJyaAmishutter* this, GlobalContext* globalCtx) {
    this->updateFunc(this);
}

static void BgJyaAmishutter_Draw(BgJyaAmishutter* this, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, &D_0600C0A0);
}
