/*
 * File: z_bg_ice_objects.c
 * Overlay: ovl_Bg_Ice_Objects
 * Description: Movable Ice Block.
 */

#include "z_bg_ice_objects.h"

#define FLAGS 0x00000000

#define THIS ((BgIceObjects*)thisx)

void BgIceObjects_Init(Actor* thisx, GlobalContext* globalCtx);
void BgIceObjects_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgIceObjects_Update(Actor* thisx, GlobalContext* globalCtx);
void BgIceObjects_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_8088F8C8(BgIceObjects* this, GlobalContext* globalCtx);
void func_8088FD48(BgIceObjects* this, GlobalContext* globalCtx);

void func_8088FED0(BgIceObjects* this, GlobalContext* globalCtx);
void func_8088FFD0(BgIceObjects* this, GlobalContext* globalCtx);
void func_80890360(BgIceObjects* this, GlobalContext* globalCtx);
void func_808903FC(BgIceObjects* this, GlobalContext* globalCtx);

extern Gfx D_06000190[];
extern ColHeader D_060003F0;

// Color_RGBA8 D_80890490 = {0xFA, 0xFA, 0xFA, 0xFF};
// Color_RGBA8 D_80890494 =  {0xB4, 0xB4, 0xB4, 0xFF};
// Vec3f D_80890498 = {0.0f, 0.0f, 0.0f};

// const ActorInit Bg_Ice_Objects_InitVars = {
//     ACTOR_BG_ICE_OBJECTS,
//     ACTORTYPE_PROP,
//     FLAGS,
//     OBJECT_ICE_OBJECTS,
//     sizeof(BgIceObjects),
//     (ActorFunc)BgIceObjects_Init,
//     (ActorFunc)BgIceObjects_Destroy,
//     (ActorFunc)BgIceObjects_Update,
//     (ActorFunc)BgIceObjects_Draw,
// };

// s32 D_808904C4[] = {0x48500064};

extern Color_RGBA8 D_80890490;
extern Color_RGBA8 D_80890494;
extern Vec3f D_80890498;
extern InitChainEntry D_808904C4[];

void BgIceObjects_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BgIceObjects* this = THIS;
    ColHeader* sp24 = NULL;

    Actor_ProcessInitChain(&this->dyna.actor, D_808904C4);
    DynaPolyInfo_SetActorMove(&this->dyna, 0);
    DynaPolyInfo_Alloc(&D_060003F0, &sp24);
    Math_Vec3f_Copy(&this->unk_168, &this->dyna.actor.initPosRot.pos);
    this->actionFunc = func_8088FED0;
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, sp24);
    this->dyna.actor.params = 0;
}

void BgIceObjects_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BgIceObjects* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Objects/func_8088F8C8.s")

void func_8088FD48(BgIceObjects* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->dyna.actor;

    if ((thisx->velocity.y > 0.0f) ||
        ((thisx->posRot.pos.x <= -1660.0f) && (thisx->posRot.pos.z <= -1060.0f)) ||
        ((thisx->posRot.pos.x <= -1580.0f) && (thisx->posRot.pos.z >= -420.0f)) ||
        ((thisx->posRot.pos.x >= -980.0f) && (thisx->posRot.pos.z <= -1180.0f)) ||
        ((thisx->posRot.pos.x >= -860.0f) && (thisx->posRot.pos.z >= -700.0f))) {
        thisx->velocity.y += 1.0f;
        if (Math_ApproxF(&thisx->posRot.pos.y, -300.0f, thisx->velocity.y) != 0) {
            thisx->velocity.y = 0.0f;
            thisx->posRot.pos.x = thisx->initPosRot.pos.x;
            thisx->posRot.pos.y = thisx->initPosRot.pos.y - 60.0f;
            thisx->posRot.pos.z = thisx->initPosRot.pos.z;
            if (thisx->params != 0) {
                func_8002DF54(globalCtx, thisx, 7);
            }
            this->actionFunc = func_80890360;
        }
    }
}

void func_8088FED0(BgIceObjects* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (this->dyna.unk_150 != 0.0f) {
        player->stateFlags2 &= ~0x10;
        if ((this->dyna.unk_150 > 0.0f) && !Player_InCsMode(globalCtx)) {
            func_8088F8C8(this, globalCtx);
            if (func_8002DBB0(&this->dyna.actor, &this->unk_168) > 1.0f) {
                this->dyna.actor.flags |= 0x10;
                func_8002DF54(globalCtx, &this->dyna.actor, 8);
                this->dyna.actor.params = 1;
                this->actionFunc = func_8088FFD0;
            }
        }
        this->dyna.unk_150 = 0.0f;
    }
    if (this->dyna.actor.velocity.y > 0.0f) {
        func_8088FD48(this, globalCtx);
    }
}

void func_8088FFD0(BgIceObjects *this, GlobalContext *globalCtx) {
    s32 sp64;
    Vec3f sp58;
    Vec3f sp4C;
    f32 sp48;
    s32 pad;

    Math_ApproxF(&this->dyna.actor.speedXZ, 10.0f, 0.5f);
    sp64 = Math_ApproxF(&this->dyna.actor.posRot.pos.x, this->unk_168.x, this->dyna.actor.speedXZ);
    sp64 &= Math_ApproxF(&this->dyna.actor.posRot.pos.z, this->unk_168.z, this->dyna.actor.speedXZ);
    if (sp64) {
        this->dyna.actor.speedXZ = 0.0f;
        this->unk_168.x = this->dyna.actor.posRot.pos.x;
        this->unk_168.z = this->dyna.actor.posRot.pos.z;
        if (this->dyna.actor.velocity.y <= 0.0f) {
            this->dyna.actor.flags &= ~0x10;
        }
        this->dyna.actor.params = 0;
        func_8002DF54(globalCtx, &this->dyna.actor, 7);
        Audio_PlayActorSound2(&this->dyna.actor, 0x2835);
        if ((fabsf(this->dyna.actor.posRot.pos.x + 1387.0f) < 1.0f) && (fabsf(this->dyna.actor.posRot.pos.z + 260.0f) < 1.0f)) {
            this->actionFunc = func_808903FC;
        } else {
            this->actionFunc = func_8088FED0;
        }
    } else if ((this->dyna.actor.speedXZ > 6.0f) && (this->dyna.actor.posRot.pos.y >= 0.0f)) {
        sp48 = Math_Rand_CenteredFloat(120.0f);
        sp4C.x = -(1.5f + Math_Rand_ZeroOne()) * Math_Sins(this->dyna.unk_158);
        sp4C.y = Math_Rand_ZeroOne() + 1.0f;
        sp4C.z = -(1.5f + Math_Rand_ZeroOne()) * Math_Coss(this->dyna.unk_158);
        sp58.x = this->dyna.actor.posRot.pos.x - (60.0f * Math_Sins(this->dyna.unk_158)) - (Math_Coss(this->dyna.unk_158) * sp48);
        sp58.z = this->dyna.actor.posRot.pos.z - (60.0f * Math_Coss(this->dyna.unk_158)) + (Math_Sins(this->dyna.unk_158) * sp48);
        sp58.y = this->dyna.actor.posRot.pos.y;
        func_8002829C(globalCtx, &sp58, &sp4C, &D_80890498, &D_80890490, &D_80890494, 250, Math_Rand_S16Offset(40, 15));
        sp48 = Math_Rand_CenteredFloat(120.0f);
        sp58.x = this->dyna.actor.posRot.pos.x - (60.0f * Math_Sins(this->dyna.unk_158)) + (Math_Coss(this->dyna.unk_158) * sp48);
        sp58.z = this->dyna.actor.posRot.pos.z - (60.0f * Math_Coss(this->dyna.unk_158)) - (Math_Sins(this->dyna.unk_158) * sp48);
        func_8002829C(globalCtx, &sp58, &sp4C, &D_80890498, &D_80890490, &D_80890494, 250, Math_Rand_S16Offset(40, 15));
        func_8002F974(&this->dyna.actor, 0xDF);
    }
    func_8088FD48(this, globalCtx);
}

void func_80890360(BgIceObjects *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;

    if (this->dyna.unk_150 != 0.0f) {
        player->stateFlags2 &= ~0x10;
        this->dyna.unk_150 = 0.0f;
    }
    if (Math_ApproxF(&this->dyna.actor.posRot.pos.y, this->dyna.actor.initPosRot.pos.y, 1.0f)) {
        this->dyna.actor.flags &= ~0x10;
        Math_Vec3f_Copy(&this->unk_168, &this->dyna.actor.initPosRot.pos);
        this->actionFunc = func_8088FED0;
        this->dyna.actor.speedXZ = 0.0f;
    }
}

void func_808903FC(BgIceObjects *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;

    if (this->dyna.unk_150 != 0.0f) {
        player->stateFlags2 &= ~0x10;
        this->dyna.unk_150 = 0.0f;
    }
}

void BgIceObjects_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BgIceObjects* this = THIS;

    this->actionFunc(this, globalCtx);
}

void BgIceObjects_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BgIceObjects* this = THIS;

    Gfx_DrawDListOpa(globalCtx, D_06000190);
}
