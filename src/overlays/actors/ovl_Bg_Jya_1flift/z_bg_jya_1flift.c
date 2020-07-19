/*
 * File: z_bg_jya_1flift.c
 * Overlay: ovl_Bg_Jya_1flift
 * Description: Shortcut Elevator (Spirit Temple) Unused in Master Quest
 */

#include "z_bg_jya_1flift.h"

#define FLAGS 0x00000010

#define THIS ((BgJya1flift*)thisx)

void BgJya1flift_Init(Actor* thisx, GlobalContext* globalCtx);
void BgJya1flift_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgJya1flift_Update(Actor* thisx, GlobalContext* globalCtx);
void BgJya1flift_Draw(Actor* thisx, GlobalContext* globalCtx);

void BgJya1flift_InitDynapoly(BgJya1flift* this, GlobalContext* globalCtx, void* arg2, s32 arg3);
void BgJya1flift_InitCollision(Actor* thisx, GlobalContext* globalCtx);
void func_80892DB0(BgJya1flift* this);
void func_80892DCC(BgJya1flift* this, GlobalContext* globalCtx);
void BgJya1flift_DoNothing(BgJya1flift* this, GlobalContext* globalCtx);
void BgJya1flift_ChangeDirection(BgJya1flift* this);
void BgJya1flift_Move(BgJya1flift* this, GlobalContext* globalCtx);
void func_80892E0C(BgJya1flift* this);
void BgJya1flift_ResetMoveDelay(BgJya1flift* this);
void BgJya1flift_DelayMove(BgJya1flift* this, GlobalContext* globalCtx);

extern u8 D_808930E0 = 0;

const ActorInit Bg_Jya_1flift_InitVars = {
    ACTOR_BG_JYA_1FLIFT,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_JYA_OBJ,
    sizeof(BgJya1flift),
    (ActorFunc)BgJya1flift_Init,
    (ActorFunc)BgJya1flift_Destroy,
    (ActorFunc)BgJya1flift_Update,
    (ActorFunc)BgJya1flift_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 70, 80, -82, { 0, 0, 0 } },
};

f32 D_80893130[] = { 443.0f, -50.0f };

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1200, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 400, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1200, ICHAIN_STOP),
};

extern UNK_TYPE D_060004A8;
extern Gfx D_060001F0[];

void BgJya1flift_InitDynapoly(BgJya1flift* this, GlobalContext* globalCtx, void* arg2, s32 moveFlag) {
    s32 pad;
    s32 sp30;
    u32 tempDynaID;

    sp30 = 0;
    DynaPolyInfo_SetActorMove(&this->dyna, moveFlag);
    DynaPolyInfo_Alloc(arg2, (void*)&sp30);
    tempDynaID = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, sp30);
    this->dyna.dynaPolyId = tempDynaID;
    if (tempDynaID == 0x32) {
        // Warning : move BG login failed
        osSyncPrintf("Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n", "../z_bg_jya_1flift.c", 0xB3,
                     this->dyna.actor.id, this->dyna.actor.params);
    }
}

void BgJya1flift_InitCollision(Actor* thisx, GlobalContext* globalCtx) {
    BgJya1flift* this = THIS;

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->dyna.actor, &sCylinderInit);
    this->dyna.actor.colChkInfo.mass = 0xFF;
}

void BgJya1flift_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgJya1flift* this = THIS;
    // 1 F lift
    osSyncPrintf("(１Ｆリフト)(flag %d)(room %d)\n", (u8)D_808930E0, globalCtx->roomCtx.curRoom.num);
    this->hasInitialized = 0;
    if (D_808930E0 != 0) {
        Actor_Kill(thisx);
        return;
    }
    BgJya1flift_InitDynapoly(this, globalCtx, &D_060004A8, 0);
    Actor_ProcessInitChain(thisx, sInitChain);
    BgJya1flift_InitCollision(thisx, globalCtx);
    if (Flags_GetSwitch(globalCtx, (thisx->params & 0x3F)) != 0) {
        LINK_AGE_IN_YEARS == YEARS_ADULT ? BgJya1flift_ChangeDirection(this) : func_80892E0C(this);
    } else {
        func_80892DB0(this);
    }
    thisx->room = -1;
    D_808930E0 = 1;
    this->hasInitialized = 1;
}

void BgJya1flift_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgJya1flift* this = THIS;

    if (this->hasInitialized != 0) {
        D_808930E0 = 0;
        Collider_DestroyCylinder(globalCtx, &this->collider);
        DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
    }
}

void func_80892DB0(BgJya1flift* this) {
    this->actionFunc = func_80892DCC;
    this->dyna.actor.posRot.pos.y = D_80893130[0];
}

void func_80892DCC(BgJya1flift* this, GlobalContext* globalCtx) {
    if (Flags_GetSwitch(globalCtx, (this->dyna.actor.params & 0x3F)) != 0) {
        BgJya1flift_ChangeDirection(this);
    }
}

void func_80892E0C(BgJya1flift* this) {
    this->actionFunc = BgJya1flift_DoNothing;
    this->dyna.actor.posRot.pos.y = D_80893130[0];
}

void BgJya1flift_DoNothing(BgJya1flift* this, GlobalContext* globalCtx) {
}

void BgJya1flift_ChangeDirection(BgJya1flift* this) {
    this->actionFunc = BgJya1flift_Move;
    this->direction = (this->direction ^ 1);
    this->dyna.actor.velocity.y = 0.0f;
}

void BgJya1flift_Move(BgJya1flift* this, GlobalContext* globalCtx) {
    f32 tempVelocity;

    Math_ApproxF(&this->dyna.actor.velocity.y, 6.0f, 0.4f);
    this->dyna.actor.velocity.y < 1.0f ? (tempVelocity = 1.0f) : (tempVelocity = this->dyna.actor.velocity.y);
    if (fabsf(Math_SmoothScaleMaxMinF(&this->dyna.actor.posRot.pos.y, (D_80893130[this->direction]), 0.5f, tempVelocity,
                                      1.0f)) < 0.001f) {
        this->dyna.actor.posRot.pos.y = D_80893130[this->direction];
        BgJya1flift_ResetMoveDelay(this);
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_BLOCK_BOUND);
        return;
    }
    func_8002F974(&this->dyna.actor, 0x20B9U);
}

void BgJya1flift_ResetMoveDelay(BgJya1flift* this) {
    this->actionFunc = BgJya1flift_DelayMove;
    this->moveDelay = 0;
}

void BgJya1flift_DelayMove(BgJya1flift* this, GlobalContext* globalCtx) {
    this->moveDelay++;
    if (this->moveDelay >= 21) {
        BgJya1flift_ChangeDirection(this);
    }
}

void BgJya1flift_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgJya1flift* this = THIS;
    ColliderCylinder* collider;
    s32 tempIsRiding;

    // Room 0 is the first room and 6 is the room that the lift starts on
    if (globalCtx->roomCtx.curRoom.num == 6 || globalCtx->roomCtx.curRoom.num == 0) {
        this->actionFunc(this, globalCtx);
        if (globalCtx) {}
        tempIsRiding = (func_8004356C(&this->dyna) != 0) ? 1 : 0;
        if ((this->actionFunc == BgJya1flift_Move) || (this->actionFunc == BgJya1flift_DelayMove)) {
            if (tempIsRiding != 0) {
                func_8005A77C(globalCtx->cameraPtrs[0], 0x30);
            } else {
                if ((tempIsRiding == 0) && (this->isLinkRiding != 0)) {
                    func_8005A77C(globalCtx->cameraPtrs[0], 3);
                }
            }
        }
        this->isLinkRiding = tempIsRiding;
        collider = &this->collider;
        Collider_CylinderUpdate(thisx, collider);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, collider);
        return;
    }
    Actor_Kill(thisx);
}

void BgJya1flift_Draw(Actor* thisx, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, D_060001F0);
}
