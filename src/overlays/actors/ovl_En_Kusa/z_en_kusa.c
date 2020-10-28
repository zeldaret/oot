/*
 * File: z_en_kusa.c
 * Overlay: ovl_en_kusa
 * Description: Grass Bush.
 */

#include "z_en_kusa.h"

#define FLAGS 0x00800010

#define THIS ((EnKusa*)thisx)

void EnKusa_Init(EnKusa* this, GlobalContext* globalCtx);
void EnKusa_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnKusa_Update(Actor* thisx, GlobalContext* globalCtx);

s32 D_80A9C1D0[] = { 0x00000000 };

s32 D_80A9C1D4[] = { 0x00000000 };

s32 D_80A9C1D8[] = { 0x00000000 };

s32 D_80A9C1DC[] = { 0x00000000 };

const ActorInit En_Kusa_InitVars = {
    ACTOR_EN_KUSA,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnKusa),
    (ActorFunc)EnKusa_Init,
    (ActorFunc)EnKusa_Destroy,
    (ActorFunc)EnKusa_Update,
    NULL,
};

s32 D_80A9C200[] = { 0x0002012B, 0x012B0000 };

// sCylinderInit
static ColliderCylinderInit D_80A9C208 = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x29, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x4FC00758, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 12, 44, 0, { 0, 0, 0 } },
};

// Collision Check data
// sColChkInfoInit
// s32 D_80A9C234[] = { 0x0000000C, 0x001EFF00 };
CollisionCheckInfoInit D_80A9C234 = { 0, 0xC, 0x1E, 0xFF };

s32 D_80A9C23C[] = { 0x00000000, 0x3F350481, 0x3F350481, 0x3F350481, 0x3F350481, 0x00000000,
                     0x00000000, 0x3F350481, 0xBF350481, 0xBF350481, 0x3F350481, 0x00000000 };

s32 D_80A9C26C[] = { 0x006C0066, 0x00600054, 0x00420037, 0x002A0026 };


// sInitChain
InitChainEntry D_80A9C27C[] = {
    ICHAIN_VEC3F_DIV1000(scale, 400, ICHAIN_CONTINUE),         ICHAIN_F32_DIV1000(gravity, -3200, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(minVelocityY, -17000, ICHAIN_CONTINUE), ICHAIN_F32(uncullZoneForward, 1200, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 100, ICHAIN_CONTINUE),         ICHAIN_F32(uncullZoneDownward, 120, ICHAIN_STOP),
};

s32 D_80A9C294[] = { 0x0500B9D0, 0x06000140, 0x06000140 };

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9AFA0.s")

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9AFAC.s")
// Snap to floor?
s32 func_80A9AFAC(EnKusa* this, GlobalContext* globalCtx, f32 arg2) {
    CollisionPoly* sp38;
    Vec3f sp28;
    f32 temp_f0;

    sp28.x = this->actor.posRot.pos.x;
    sp28.y = this->actor.posRot.pos.y + 30.0f;
    sp28.z = this->actor.posRot.pos.z;
    temp_f0 = func_8003C9A4(&globalCtx->colCtx + 0x7C0, &sp38, &sp28, &this->actor, &sp28);
    if (-32000.0f < temp_f0) {
        this->actor.posRot.pos.y = temp_f0 + arg2;
        Math_Vec3f_Copy(&this->actor.initPosRot.pos, &this->actor.posRot.pos);
        return 1;
    }
    osSyncPrintf("\x1b[43;30m", this);
    //Failure attaching to ground
    osSyncPrintf("地面に付着失敗(%s %d)\n", "../z_en_kusa.c", 323);
    osSyncPrintf("\x1b[m");
    return 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B07C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B140.s")
// f32 func_80A9B140(EnKusa *this) {
//     f32 temp_f0;

//     temp_f0 = this->unk70;
//     this->unk60 = (f32) (this->unk60 + this->unk6C);
//     if (this->unk60 < temp_f0) {
//         this->unk60 = temp_f0;
//     }
//     return temp_f0;
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B174.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B1FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B21C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B574.s")

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B630.s")
// ColliderCylinder Init function from the looks of it
void func_80A9B630(EnKusa* this, GlobalContext* globalCtx) {

    // Cylinder is going to be at actor(arg0) + 0x150
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &D_80A9C208);
    Collider_CylinderUpdate(&this->actor, &this->collider);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/EnKusa_Init.s")
void EnKusa_Init(EnKusa* this, GlobalContext* globalCtx) {

    Actor_ProcessInitChain(&this->actor, D_80A9C27C);
    if (globalCtx->csCtx.state != 0) {
        this->actor.uncullZoneForward += 1000.0f;
    }
    // Init for the ColliderCylinder
    func_80A9B630(this, globalCtx);

    func_80061ED4(&this->actor.colChkInfo, NULL, &D_80A9C234);
    if (this->actor.shape.rot.y == 0) {
        // Random value I think?
        s32 rand = (s32) Math_Rand_ZeroFloat(65536.0f);
        this->actor.posRot.rot.y = (s16)rand;
        this->actor.initPosRot.rot.y = (s16)rand;
        this->actor.shape.rot.y = (s16)rand;
    }

    if (func_80A9AFAC(&this->actor, globalCtx, 0) == 0) {
        Actor_Kill(&this->actor);
        return;
    }
    // Original Line
    // TODO: Something is wrong with this line...
    this->collider.dim.pos.z = Object_GetIndex(&globalCtx->objectCtx, *(D_80A9C200 + ((this->actor.params & 3) * 2)));

    if ((s8)this->collider.dim.pos.z < 0) {
        // Prints -> Bank danger!
        osSyncPrintf((const char *)"Error : バンク危険！(arg_data 0x%04x)(%s %d)\n", this->actor.params, "../z_en_kusa.c", 0x231);
        Actor_Kill(&this->actor);
        return;
    }
    func_80A9B7EC(this);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/EnKusa_Destroy.s")
// void EnKusa_Destroy(Actor *thisx, GlobalContext *globalCtx) {
//     EnKusa* this = THIS;

//     //TODO: I am going to need to fix the Collider in the EnKusa struct
//     Collider_DestroyCylinder(globalCtx, thisx + 0x150);
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B7EC.s")
// void func_80A9B7EC(EnKusa *this, char* pathToFile) {
//     func_80A9AFA0(&func_80A9B810);
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B810.s")
// void func_80A9B810(EnKusa *this, GlobalContext* globalCtx) {
//     if (Object_IsLoaded(&globalCtx->objectCtx + 0x117A4, this->kusaTexObjIndex) != 0) {
//         if ((this->unk4 & 0x800) != 0) {
//             func_80A9BEAC(this);
//         } else {
//             func_80A9B89C(this);
//         }
//         this->unk134 = &func_80A9C164;
//         this->unk4 = (s32) (this->unk4 & -0x11);
//         this->unk1E = (s8) this->unk19E;
//     }
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B89C.s")
// void func_80A9B89C(EnKusa *this) {
//     func_80A9AFA0(&func_80A9B8D8);
//     this->unk4 = (s32) (this->unk4 & -0x11);
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B8D8.s")
// void func_80A9B8D8(EnKusa *this, GlobalContext *globalCtx) {
//     ColliderCylinder *sp28;
//     CollisionCheckContext *sp24;
//     ColliderCylinder *temp_a1;
//     CollisionCheckContext *temp_a1_2;
//     u8 temp_v0;
//     u8 temp_v0_2;

//     if (Actor_HasParent(this, globalCtx) != 0) {
//         func_80A9BA98(this);
//         Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 20, NA_SE_PL_PULL_UP_PLANT);
//         return;
//     }
//     temp_v0 = this->unk161;
//     if ((temp_v0 & 2) != 0) {
//         this->unk161 = (u8) (temp_v0 & 0xFFFD);
//         func_80A9B21C(this, globalCtx);
//         func_80A9B07C(this, globalCtx);
//         Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 20, NA_SE_EV_PLANT_BROKEN);
//         if ((((s32) this->params >> 4) & 1) != 0) {
//             func_80A9B574(this, globalCtx);
//         }
//         if ((this->params & 3) != 0) {
//             func_80A9BEAC(this);
//             this->flags = this->flags | 0x800;
//             return;
//         }
//         Actor_Kill(this);
//         return;
//     }
//     temp_v0_2 = this->unk162;
//     temp_a1 = this + 0x150;
//     if (((temp_v0_2 & 8) == 0) && (12.0f < this->xzDistFromLink)) {
//         this->unk162 = (u8) (temp_v0_2 | 8);
//     }
//     if (this->xzDistFromLink < 600.0f) {
//         sp28 = temp_a1;
//         Collider_CylinderUpdate(this, temp_a1);
//         temp_a1_2 = &globalCtx->colChkCtx;
//         sp24 = temp_a1_2;
//         CollisionCheck_SetAC(globalCtx, temp_a1_2, (Collider *) sp28);
//         if (this->xzDistFromLink < 400.0f) {
//             CollisionCheck_SetOC(globalCtx, temp_a1_2, (Collider *) sp28);
//             if (this->xzDistFromLink < 100.0f) {
//                 func_8002F580(this, globalCtx);
//             }
//         }
//     }
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BA98.s")
// Possibly SetupLiftedUp? -> modeled after EnIshi_SetupLiftedUp
// void func_80A9BA98(EnKusa *this) {
//     func_80A9AFA0(&func_80A9BAD8);
//     this->actor.room = -1;
//     this->actor.flags |= 0x10;
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BAD8.s")
// Possibly LiftedUp?...
// void func_80A9BAD8(EnKusa *this, GlobalContext *globalCtx) {
//     f32 temp_f0;

//     if (Actor_HasNoParent(this, globalCtx) != 0) {
//         this->actor.room = globalCtx->roomCtx.curRoom.num;
//         func_80A9BBB0(this);
//         this->velocity.x = Math_Sins(this->posRot.rot.y) * this->speedXZ;
//         temp_f0 = Math_Coss(this->posRot.rot.y);
//         this->colChkInfo.mass = 0xF0;
//         this->velocity.z = temp_f0 * this->speedXZ;
//         this->gravity = -0.1f;
//         func_80A9B140(this);
//         func_80A9B174(&this->actor.velocity, 0x3BA3D70A);
//         func_8002D7EC(&this->actor);
//         func_8002E4B4(globalCtx, &this->actor, 7.5f, 35.0f, 0.0f, 0xC5);
//         this->gravity = -3.2f;
//     }
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BBB0.s")
// void func_80A9BBB0(EnKusa* this) {
//     func_80A9AFA0(&func_80A9BC1C);
//     *D_80A9C1D0 = (u16)-0xBB8;
//     *D_80A9C1D8 = (s16) (s32) ((Math_Rand_ZeroOne() - 0.5f) * 1600.0f);
//     *D_80A9C1D4 = (u16)0;
//     *D_80A9C1DC = (u16)0;
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BC1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BEAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BEFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BF30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BF3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BFA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9C00C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9C068.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/EnKusa_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9C164.s")
