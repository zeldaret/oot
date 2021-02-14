/*
 * File: z_obj_tsubo.c
 * Overlay: ovl_Obj_Tsubo
 * Description: Breakable pot
 */

#include "z_obj_tsubo.h"
#include "overlays/effects/ovl_Effect_Ss_Kakera/z_eff_ss_kakera.h"

#define FLAGS 0x00800010

#define THIS ((ObjTsubo*)thisx)

void ObjTsubo_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjTsubo_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ObjTsubo_Update(Actor* thisx, GlobalContext* globalCtx);

void func_80BA0D60(ObjTsubo* this, GlobalContext* globalCtx);
void func_80BA0DC0(ObjTsubo* this);
s32 func_80BA0DF4(ObjTsubo* this, GlobalContext* globalCtx);
void func_80BA0E98(Actor* thisx, GlobalContext* globalCtx);
void func_80BA100C(ObjTsubo* this, GlobalContext* globalCtx);
void func_80BA1294(ObjTsubo* this, GlobalContext* globalCtx);
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

Gfx* D_80BA1B8C[] = { 0x05017A60, 0x06001960 };

s32 D_80BA1B94[] = { 0x0C090939, 0x20010000, 0x00000000, 0x00000002, 0x00010000, 0x4FC1FFFE,
                     0x00000000, 0x01010100, 0x0009001A, 0x00000000, 0x00000000 };

// s32 D_80BA1BC0[] = { 0x0000000C, 0x003CFF00 };

// sColChkInfoInit
static CollisionCheckInfoInit D_80BA1BC0[] = { 0, 12, 60, 0xFF };

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

// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Tsubo/func_80BA0DF4.s")
s32 func_80BA0DF4(ObjTsubo* this, GlobalContext* globalCtx) {
    CollisionPoly* floorPoly;
    Vec3f pos;
    s32 bgID;
    f32 floorY;

    pos.x = this->actor.world.pos.x;
    pos.y = this->actor.world.pos.y + 20.0f;
    pos.z = this->actor.world.pos.z;
    floorY = BgCheck_EntityRaycastFloor4(&globalCtx->colCtx, &floorPoly, &bgID, &this->actor, &pos);
    if (floorY > BGCHECK_Y_MIN) {
        this->actor.world.pos.y = floorY;
        Math_Vec3f_Copy(&this->actor.home.pos, &this->actor.world.pos);
        return true;
    } else {
        osSyncPrintf("地面に付着失敗\n");
        return false;
    }
}

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
    CollisionCheck_SetInfo(&this->actor.colChkInfo, NULL, &D_80BA1BC0);
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

// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Tsubo/func_80BA100C.s")
void func_80BA100C(ObjTsubo* this, GlobalContext* globalCtx) {
    s32 pad;
    f32 rand;
    s16 angle;
    Vec3f pos;
    Vec3f velocity;
    f32 sins;
    f32 coss;
    s32 arg5;
    s32 i;

    for (i = 0, angle = 0; i < 15; i++, angle += 0x4E20) {
        sins = Math_SinS(angle);
        coss = Math_CosS(angle);

        pos.x = sins * 8.0f;
        pos.y = (Rand_ZeroOne() * 5.0f) + 2.0f;
        pos.z = coss * 8.0f;

        velocity.x = pos.x * 0.23f;
        velocity.y = (Rand_ZeroOne() * 5.0f) + 2.0f;
        velocity.z = pos.z * 0.23f;

        Math_Vec3f_Sum(&pos, &this->actor.world.pos, &pos);

        rand = Rand_ZeroOne();
        if (rand < 0.2f) {
            arg5 = 96;
        } else if (rand < 0.6f) {
            arg5 = 64;
        } else {
            arg5 = 32;
        }
        EffectSsKakera_Spawn(globalCtx, &pos, &velocity, &this->actor.world.pos, -240, arg5, 10, 10, 0,
                             (Rand_ZeroOne() * 95.0f) + 15.0f, 0, 32, 60, KAKERA_COLOR_NONE,
                             D_80BA1B80[(this->actor.params >> 8) & 1], D_80BA1B8C[(this->actor.params >> 8) & 1]);
    }

    func_80033480(globalCtx, &this->actor.world.pos, 30.0f, 4, 0x14, 0x32, 1);
}

// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Tsubo/func_80BA1294.s")
void func_80BA1294(ObjTsubo* this, GlobalContext* globalCtx) {
    s32 pad[2];
    s16 angle;
    Vec3f pos = this->actor.world.pos;
    Vec3f velocity;
    s32 phi_s0;
    s32 i;

    pos.y += this->actor.yDistToWater;
    EffectSsGSplash_Spawn(globalCtx, &pos, NULL, NULL, 0, 400);

    for (i = 0, angle = 0; i < 15; i++, angle += 0x4E20) {
        f32 sins = Math_SinS(angle);
        f32 coss = Math_CosS(angle);

        pos.x = sins * 8.0f;
        pos.y = (Rand_ZeroOne() * 5.0f) + 2.0f;
        pos.z = coss * 8.0f;

        velocity.x = pos.x * 0.2f;
        velocity.y = (Rand_ZeroOne() * 4.0f) + 2.0f;
        velocity.z = pos.z * 0.2f;

        Math_Vec3f_Sum(&pos, &this->actor.world.pos, &pos);
        phi_s0 = (Rand_ZeroOne() < .2f) ? 64 : 32;

        EffectSsKakera_Spawn(globalCtx, &pos, &velocity, &this->actor.world.pos, -180, phi_s0, 30, 30, 0,
                             (Rand_ZeroOne() * 95.0f) + 15.0f, 0, 32, 70, KAKERA_COLOR_NONE,
                             D_80BA1B80[(this->actor.params >> 8) & 1], D_80BA1B8C[(this->actor.params >> 8) & 1]);
    }
}

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
// void func_80BA15BC(ObjTsubo* this, GlobalContext* globalCtx) {
//     s16 temp_v0;
//     s32 phi_v1;

//     if (Actor_HasParent(&this->actor, globalCtx) != 0) {
//         func_80BA17C4(this);
//         return;
//     }
//     if ((this->actor.bgCheckFlags & 0x20) != 0) {
//         if (this->actor.yDistToWater > 15.0f) {
//             func_80BA1294(this, globalCtx);
//             Audio_PlaySoundAtPosition(globalCtx, &this->actor.world.pos, 20, NA_SE_EV_POT_BROKEN);
//             func_80BA0D60(this, globalCtx);
//             Actor_Kill(&this->actor);
//             return;
//         }
//     }
//     if ((this->collider.base.acFlags & 2) != 0) {
//         if ((this->collider.info.acHitInfo->toucher.dmgFlags & 0x4FC1FFFC) != 0) {
//             func_80BA100C(this, globalCtx);
//             func_80BA0D60(this, globalCtx);
//             Audio_PlaySoundAtPosition(globalCtx, &this->actor.world.pos, 20, NA_SE_EV_POT_BROKEN);
//             Actor_Kill(&this->actor);
//             return;
//         }
//     }
//     if (this->actor.xzDistToPlayer < 600.0f) {
//         Collider_UpdateCylinder(&this->actor, &this->collider);
//         this->collider.base.acFlags = this->collider.base.acFlags & 0xFFFD;

//         CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
//         if (this->actor.xzDistToPlayer < 150.0f) {
//             CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
//         }
//     }
//     if (this->actor.xzDistToPlayer < 100.0f) {
//         temp_v0 = this->actor.yawTowardsPlayer - globalCtx->actorCtx.actorLists[2].head->world.rot.y;
//         phi_v1 = 0 - temp_v0;
//         if (temp_v0 >= 0) {
//             phi_v1 = temp_v0;
//         }
//         if (phi_v1 >= 0x5556) {
//             func_8002F434(&this->actor, globalCtx, 0, 30.0f, 30.0f);
//         }
//     }
// }

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