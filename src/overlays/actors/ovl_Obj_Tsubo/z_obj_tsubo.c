/*
 * File: z_obj_tsubo.c
 * Overlay: ovl_Obj_Tsubo
 * Description: Breakable pot
 */

#include "z_obj_tsubo.h"

#define FLAGS 0x00800010

#define THIS ((ObjTsubo*)thisx)

void ObjTsubo_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjTsubo_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ObjTsubo_Update(Actor* thisx, GlobalContext* globalCtx);

void func_80BA0D60(ObjTsubo* this, GlobalContext* globalCtx);
void func_80BA0DC0(ObjTsubo* this);

void func_80BA0E98(Actor* thisx, GlobalContext* globalCtx);
void func_80BA152C(ObjTsubo* this);
void func_80BA153C(ObjTsubo* this, GlobalContext* globalCtx);

void func_80BA15AC(ObjTsubo* this);
void func_80BA15BC(ObjTsubo* this, GlobalContext* globalCtx);
void func_80BA17C4(ObjTsubo* this);
void func_80BA180C(ObjTsubo* this, GlobalContext* globalCtx);
void func_80BA188C(ObjTsubo* this);
void func_80BA1958(ObjTsubo* this, GlobalContext* globalCtx);
void func_80BA1B0C(ObjTsubo* this, GlobalContext* globalCtx);

s16 D_80BA1B50[] = { 0x00000000 };

s16 D_80BA1B54[] = { 0x00000000 };

s16 D_80BA1B58[] = { 0x00000000 };

s16 D_80BA1B5C[] = { 0x00000000 };

const ActorInit Obj_Tsubo_InitVars = {
    ACTOR_OBJ_TSUBO,
    ACTORCAT_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(ObjTsubo),
    (ActorFunc)ObjTsubo_Init,
    (ActorFunc)ObjTsubo_Destroy,
    (ActorFunc)ObjTsubo_Update,
    NULL,
};

// static ColliderCylinderInit D_80BA1B94 = {
//     {
//         COLTYPE_HARD,
//         AT_ON | AT_TYPE_PLAYER,
//         AC_ON | AC_TYPE_PLAYER,
//         OC1_ON | OC1_TYPE_ALL,
//         OC2_TYPE_2,
//         COLSHAPE_CYLINDER,
//     },
//     {
//         ELEMTYPE_UNK0,
//         { 0x00000002, 0x00, 0x01 },
//         { 0x4FC1FFFE, 0x00, 0x00 },
//         TOUCH_ON | TOUCH_SFX_NORMAL,
//         BUMP_ON,
//         OCELEM_ON,
//     },
//     { 9, 26, 0, { 0, 0, 0 } },
// };

// s32 D_80BA1B80[] = { 0x0003012C };
s16 D_80BA1B80[] = { OBJECT_GAMEPLAY_DANGEON_KEEP, OBJECT_TSUBO };

s32 D_80BA1B84[] = { 0x05017870, 0x060017C0 };

s32 D_80BA1B8C[] = { 0x05017A60, 0x06001960 };

s32 D_80BA1B94[] = { 0x0C090939, 0x20010000, 0x00000000, 0x00000002, 0x00010000, 0x4FC1FFFE,
                     0x00000000, 0x01010100, 0x0009001A, 0x00000000, 0x00000000 };

s32 D_80BA1BC0[] = { 0x0000000C, 0x003CFF00 };

// s32 D_80BA1BC8[] = { 0xB86CFB50, 0xB870B1E0, 0xC8500096, 0xB0F40384, 0xB0F80064, 0x30FC0320 };
InitChainEntry D_80BA1BC8[] = {
    ICHAIN_F32_DIV1000(gravity, -1200, ICHAIN_CONTINUE), ICHAIN_F32_DIV1000(minVelocityY, -20000, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 150, ICHAIN_CONTINUE),   ICHAIN_F32(uncullZoneForward, 900, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 100, ICHAIN_CONTINUE),   ICHAIN_F32(uncullZoneDownward, 800, ICHAIN_STOP),
};

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Tsubo/func_80BA0D60.s")
void func_80BA0D60(ObjTsubo* this, GlobalContext* globalCtx) {
    s16 dropParams;

    dropParams = this->actor.params & 0x1F;
    if ((dropParams >= 0) && (dropParams < 0x1A)) {
        Item_DropCollectible(globalCtx, &this->actor.world.pos,
                             (dropParams | (((this->actor.params >> 9) & 0x3F) << 8)));
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Tsubo/func_80BA0DC0.s")
void func_80BA0DC0(ObjTsubo* this) {
    this->actor.velocity.y += this->actor.gravity;
    if (this->actor.velocity.y < this->actor.minVelocityY) {
        this->actor.velocity.y = this->actor.minVelocityY;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Tsubo/func_80BA0DF4.s")

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Tsubo/func_80BA0E98.s")
void func_80BA0E98(Actor* thisx, GlobalContext* globalCtx) {
    ObjTsubo* this = THIS;

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &D_80BA1B94);
    Collider_UpdateCylinder(&this->actor, &this->collider);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Tsubo/ObjTsubo_Init.s")
void ObjTsubo_Init(Actor* thisx, GlobalContext* globalCtx) {
    ObjTsubo* this = THIS;

    Actor_ProcessInitChain(&this->actor, D_80BA1BC8);
    func_80BA0E98(&this->actor, globalCtx);
    CollisionCheck_SetInfo(&this->actor.colChkInfo, NULL, D_80BA1BC0);
    if (func_80BA0DF4(this, globalCtx) == 0) {
        Actor_Kill(&this->actor);
        return;
    }
    this->objTsuboBankIndex = Object_GetIndex(&globalCtx->objectCtx, *(D_80BA1B80 + (((this->actor.params >> 8) & 1))));
    if (this->objTsuboBankIndex < 0) {
        osSyncPrintf("Error : バンク危険！ (arg_data 0x%04x)(%s %d)\n", this->actor.params, "../z_obj_tsubo.c", 0x19A);
        Actor_Kill(&this->actor);
    } else {
        func_80BA152C(this);
        osSyncPrintf("(dungeon keep 壷)(arg_data 0x%04x)\n", this->actor.params);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Tsubo/ObjTsubo_Destroy.s")
void ObjTsubo_Destroy(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    ObjTsubo* this = THIS;
    Collider_DestroyCylinder(globalCtx, &this->collider);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Tsubo/func_80BA100C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Tsubo/func_80BA1294.s")

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Tsubo/func_80BA152C.s")
void func_80BA152C(ObjTsubo* this) {
    this->actionFunc = func_80BA153C;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Tsubo/func_80BA153C.s")
void func_80BA153C(ObjTsubo* this, GlobalContext* globalCtx) {
    if (Object_IsLoaded(&globalCtx->objectCtx, this->objTsuboBankIndex)) {
        this->actor.draw = func_80BA1B0C;
        this->actor.objBankIndex = this->objTsuboBankIndex;
        func_80BA15AC(this);
        this->actor.flags &= ~0x10;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Tsubo/func_80BA15AC.s")
void func_80BA15AC(ObjTsubo* this) {
    this->actionFunc = func_80BA15BC;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Tsubo/func_80BA15BC.s")

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Tsubo/func_80BA17C4.s")
void func_80BA17C4(ObjTsubo* this) {
    this->actionFunc = func_80BA180C;
    this->actor.room = -1;
    func_8002F7DC(&this->actor, NA_SE_PL_PULL_UP_POT);
    this->actor.flags |= 0x10;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Tsubo/func_80BA180C.s")
void func_80BA180C(ObjTsubo* this, GlobalContext* globalCtx) {
    if (Actor_HasNoParent(&this->actor, globalCtx) != 0) {
        this->actor.room = globalCtx->roomCtx.curRoom.num;
        func_80BA188C(this);
        func_80BA0DC0(this);
        func_8002D7EC(&this->actor);
        Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 5.0f, 15.0f, 0.0f, 0x85);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Tsubo/func_80BA188C.s")
void func_80BA188C(ObjTsubo* this) {
    this->actor.velocity.x = Math_SinS(this->actor.world.rot.y) * this->actor.speedXZ;
    this->actor.velocity.z = Math_CosS(this->actor.world.rot.y) * this->actor.speedXZ;
    this->actor.colChkInfo.mass = 0xF0;
    *D_80BA1B50 = (Rand_ZeroOne() - 0.7f) * 2800.0f;
    *D_80BA1B58 = (Rand_ZeroOne() - 0.5f) * 2000.0f;
    *D_80BA1B54 = 0;
    *D_80BA1B5C = 0;
    this->actionFunc = func_80BA1958;
}

// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Tsubo/func_80BA1958.s")
void func_80BA1958(ObjTsubo* this, GlobalContext* globalCtx) {
    s32 pad[2];
    if ((this->actor.bgCheckFlags & 0xB) != 0 || (this->collider.base.atFlags & 2) != 0) {
        func_80BA100C(this, globalCtx);
        func_80BA0D60(this, globalCtx);
        Audio_PlaySoundAtPosition(globalCtx, &this->actor.world.pos, 0x14, 0x2887U);
        Actor_Kill(&this->actor);
        return;
    }
    if ((this->actor.bgCheckFlags & 0x40) != 0) {
        func_80BA1294(this, globalCtx);
        func_80BA0D60(this, globalCtx);
        Audio_PlaySoundAtPosition(globalCtx, &this->actor.world.pos, 0x14, 0x2887U);
        Actor_Kill(&this->actor);
        return;
    }
    func_80BA0DC0(this);
    func_8002D7EC(&this->actor);
    Math_StepToS(D_80BA1B54, *D_80BA1B50, 0x64);
    Math_StepToS(D_80BA1B5C, *D_80BA1B58, 0x64);
    this->actor.shape.rot.x += *D_80BA1B54;
    this->actor.shape.rot.y += *D_80BA1B5C;
    Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 5.0f, 15.0f, 0.0f, 0x85);
    Collider_UpdateCylinder(&this->actor, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Tsubo/ObjTsubo_Update.s")
void ObjTsubo_Update(Actor* thisx, GlobalContext* globalCtx) {
    ObjTsubo* this = THIS;
    this->actionFunc(this, globalCtx);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Tsubo/func_80BA1B0C.s")
void func_80BA1B0C(ObjTsubo* this, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, D_80BA1B84[(this->actor.params >> 8) & 1]);
}