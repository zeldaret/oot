/*
 * File: z_bg_relay_objects.c
 * Overlay: ovl_Bg_Relay_Objects
 * Description: Windmill Setpieces
 */

#include "z_bg_relay_objects.h"

#define FLAGS 0x00000010

#define THIS ((BgRelayObjects*)thisx)

typedef enum {
    WINDMILL_ROTATING_GEAR,
    WINDMILL_DAMPE_STONE_DOOR
} WindmillSetpiecesMode;

void BgRelayObjects_Init(Actor* thisx, GlobalContext* globalCtx);
void BgRelayObjects_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgRelayObjects_Update(Actor* thisx, GlobalContext* globalCtx);
void BgRelayObjects_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808A90F4(BgRelayObjects* this, GlobalContext* globalCtx);
void func_808A91AC(BgRelayObjects* this, GlobalContext* globalCtx);
void func_808A9234(BgRelayObjects* this, GlobalContext* globalCtx);
void BgRelayObjects_Noop(BgRelayObjects* this, GlobalContext* globalCtx);
void func_808A932C(BgRelayObjects* this, GlobalContext* globalCtx);
void func_808A939C(BgRelayObjects* this, GlobalContext* globalCtx);

extern Gfx D_060001A0[];
extern UNK_TYPE D_060003C4;
extern Gfx D_06001AB0[];
extern UNK_TYPE D_060025FC;

const ActorInit Bg_Relay_Objects_InitVars = {
    ACTOR_BG_RELAY_OBJECTS,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_RELAY_OBJECTS,
    sizeof(BgRelayObjects),
    (ActorFunc)BgRelayObjects_Init,
    (ActorFunc)BgRelayObjects_Destroy,
    (ActorFunc)BgRelayObjects_Update,
    (ActorFunc)BgRelayObjects_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(gravity, 5, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

void BgRelayObjects_Init(Actor* thisx, GlobalContext* globalCtx) {
    static u32 D_808A9508 = 0;
    BgRelayObjects* this = THIS;
    s32 pad;
    s32 sp24 = 0;

    Actor_ProcessInitChain(thisx, sInitChain);
    this->switchFlag = thisx->params & 0x3F;
    thisx->params = (thisx->params >> 8) & 0xFF;
    DynaPolyInfo_SetActorMove(&this->dyna, 3);
    if (thisx->params == WINDMILL_ROTATING_GEAR) {
        DynaPolyInfo_Alloc(&D_060025FC, &sp24);
        if (gSaveContext.eventChkInf[6] & 0x20) {
            thisx->posRot.rot.y = 0x400;
        } else {
            thisx->posRot.rot.y = 0x80;
        }
        func_800F5718();
        thisx->room = -1;
        thisx->flags |= 0x20;
        if (D_808A9508 & 2) {
            thisx->params = 0xFF;
            Actor_Kill(thisx);
        } else {
            D_808A9508 |= 2;
            this->actionFunc = func_808A939C;
        }
    } else {
        DynaPolyInfo_Alloc(&D_060003C4, &sp24);
        if (thisx->room == 0) {
            this->unk_169 = this->switchFlag - 0x33;
        } else {
            this->unk_169 = thisx->room + 1;
        }
        thisx->room = -1;
        this->timer = 1;
        if (this->unk_169 >= 6) {
            if (D_808A9508 & 1) {
                Actor_Kill(thisx);
            } else {
                D_808A9508 |= 1;
                this->actionFunc = BgRelayObjects_Noop;
            }
        } else if (this->unk_169 != 5) {
            Flags_UnsetSwitch(globalCtx, this->switchFlag);
            if (D_808A9508 & (1 << this->unk_169)) {
                Actor_Kill(thisx);
            } else {
                D_808A9508 |= (1 << this->unk_169);
                this->actionFunc = func_808A90F4;
            }
        } else {
            Flags_SetSwitch(globalCtx, this->switchFlag);
            this->actionFunc = func_808A91AC;
            thisx->posRot.pos.y += 120.0f;
            D_808A9508 |= 1;
        }
    }
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, thisx, sp24);
}

void BgRelayObjects_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgRelayObjects* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
    if ((this->dyna.actor.params == WINDMILL_ROTATING_GEAR) && (gSaveContext.cutsceneIndex < 0xFFF0)) {
        gSaveContext.eventChkInf[6] &= ~0x20;
    }
}

void func_808A90F4(BgRelayObjects* this, GlobalContext* globalCtx) {
    if (Flags_GetSwitch(globalCtx, this->switchFlag)) {
        if (this->timer != 0) {
            Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_SLIDE_DOOR_OPEN);
            if (INV_CONTENT(ITEM_HOOKSHOT) != ITEM_NONE) {
                this->timer = 120;
            } else {
                this->timer = 160;
            }
        }
        if (Math_ApproxF(&this->dyna.actor.posRot.pos.y, this->dyna.actor.initPosRot.pos.y + 120.0f, 12.0f)) {
            this->actionFunc = func_808A91AC;
        }
    }
}

void func_808A91AC(BgRelayObjects* this, GlobalContext* globalCtx) {
    if (this->unk_169 != 5) {
        if (this->timer != 0) {
            this->timer--;
        }
        func_8002F994(&this->dyna.actor, this->timer);
    }
    if ((this->timer == 0) || (this->unk_169 == globalCtx->roomCtx.curRoom.num)) {
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_SLIDE_DOOR_CLOSE);
        this->actionFunc = func_808A9234;
    }
}

void func_808A9234(BgRelayObjects* this, GlobalContext* globalCtx) {
    this->dyna.actor.velocity.y += this->dyna.actor.gravity;
    if (Math_ApproxF(&this->dyna.actor.posRot.pos.y, this->dyna.actor.initPosRot.pos.y, this->dyna.actor.velocity.y)) {
        func_800AA000(this->dyna.actor.xyzDistFromLinkSq, 180, 20, 100);
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_STONE_BOUND);
        if (this->unk_169 != globalCtx->roomCtx.curRoom.num) {
            func_800788CC(NA_SE_EN_PO_LAUGH);
            this->timer = 5;
            this->actionFunc = func_808A932C;
            return;
        }
        Flags_UnsetSwitch(globalCtx, this->switchFlag);
        this->dyna.actor.flags &= ~0x10;
        if (globalCtx->roomCtx.curRoom.num == 4) {
            gSaveContext.timer1State = 0xF;
        }
        this->actionFunc = BgRelayObjects_Noop;
    }
}

void BgRelayObjects_Noop(BgRelayObjects* this, GlobalContext* globalCtx) {
}

void func_808A932C(BgRelayObjects* this, GlobalContext* globalCtx) {
    if (this->timer != 0) {
        this->timer--;
    }
    if (this->timer == 0) {
        if (Player_InCsMode(globalCtx) == 0) {
            func_80078884(NA_SE_OC_ABYSS);
            Gameplay_TriggerRespawn(globalCtx);
            this->actionFunc = BgRelayObjects_Noop;
        }
    }
}

void func_808A939C(BgRelayObjects* this, GlobalContext* globalCtx) {
    if (Flags_GetEnv(globalCtx, 5) != 0) {
        gSaveContext.eventChkInf[6] = gSaveContext.eventChkInf[6] | 0x20;
    }
    if ((gSaveContext.eventChkInf[6] & 0x20) != 0) {
        Math_ApproxUpdateScaledS(&this->dyna.actor.posRot.rot.y, 0x400, 8);
    } else {
        Math_ApproxUpdateScaledS(&this->dyna.actor.posRot.rot.y, 0x80, 8);
    }
    this->dyna.actor.shape.rot.y += this->dyna.actor.posRot.rot.y;
    func_800F436C(&this->dyna.actor.projectedPos, NA_SE_EV_WOOD_GEAR - SFX_FLAG,
                  ((this->dyna.actor.posRot.rot.y - 0x80) * (1.0f / 0x380)) + 1.0f);
}

void BgRelayObjects_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgRelayObjects* this = THIS;

    this->actionFunc(this, globalCtx);
}

void BgRelayObjects_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BgRelayObjects* this = THIS;

    if (this->dyna.actor.params == WINDMILL_ROTATING_GEAR) {
        Gfx_DrawDListOpa(globalCtx, &D_06001AB0);
    } else {
        Gfx_DrawDListOpa(globalCtx, &D_060001A0);
    }
}
