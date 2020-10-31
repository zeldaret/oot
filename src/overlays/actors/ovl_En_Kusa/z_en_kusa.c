/*
 * File: z_en_kusa.c
 * Overlay: ovl_en_kusa
 * Description: Grass Bush.
 */

#include "z_en_kusa.h"

#include "vt.h"

#define FLAGS 0x00800010

#define THIS ((EnKusa*)thisx)

void EnKusa_Init(Actor* thisx, GlobalContext* globalCtx);
void EnKusa_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnKusa_Update(Actor* thisx, GlobalContext* globalCtx);

u16 D_80A9C1D0[] = { 0x00000000 };

u16 D_80A9C1D4[] = { 0x00000000 };

s16 D_80A9C1D8[] = { 0x00000000 };

u16 D_80A9C1DC[] = { 0x00000000 };

const ActorInit En_Kusa_InitVars = {
    ACTOR_EN_KUSA,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnKusa),
    (ActorFunc)EnKusa_Init,
    (ActorFunc)EnKusa_Destroy,
    (ActorFunc)EnKusa_Update,
    (ActorFunc)func_80A9C164
};


s16 D_80A9C200[] = { OBJECT_GAMEPLAY_FIELD_KEEP, OBJECT_KUSA, OBJECT_KUSA };

// sCylinderInit
static ColliderCylinderInit D_80A9C208 = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x29, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x4FC00758, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 12, 44, 0, { 0, 0, 0 } },
};

// Collision Check data
// sColChkInfoInit
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

Gfx* D_80A9C294[] = { 0x0500B9D0, 0x06000140, 0x06000140, 0x60002E0 };

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9AFA0.s")
// void func_80A9AFA0(Actor* thisx) {
//     EnKusa *this = THIS;

//     this->timer = 0;
//     this->actor.unk_14C = arg1;
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9AFAC.s")
// Snap to floor?
// s32 func_80A9AFAC(EnKusa* this, GlobalContext* globalCtx, f32 arg2) {
//     CollisionPoly* sp38;
//     Vec3f sp28;
//     f32 temp_f0;

//     sp28.x = this->actor.posRot.pos.x;
//     sp28.y = this->actor.posRot.pos.y + 30.0f;
//     sp28.z = this->actor.posRot.pos.z;
//     // Where does this padding get added to?
//     temp_f0 = func_8003C9A4(&globalCtx->colCtx + 0x7C0, &sp38, &sp28, &this->actor, &sp28);
//     if (-32000.0f < temp_f0) {
//         this->actor.posRot.pos.y = temp_f0 + arg2;
//         Math_Vec3f_Copy(&this->actor.initPosRot.pos, &this->actor.posRot.pos);
//         return true;
//     }
//     osSyncPrintf(VT_COL(YELLOW, BLACK));
//     // Failure attaching to ground
//     osSyncPrintf("地面に付着失敗(%s %d)\n", "../z_en_kusa.c", 323);
//     osSyncPrintf(VT_RST);
//     return false;
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B07C.s")
// void func_80A9B07C(EnKusa* this, GlobalContext* globalCtx) {
//     s16 temp_v0_2;
//     s16 temp_v1;
//     s32 temp_v0;
//     s32 phi_v0;

//     temp_v1 = this->unk1C;
//     temp_v0 = temp_v1 & 3;
//     if (temp_v0 == 0) {
//     block_3:
//         temp_v0_2 = (s16)(((s32)temp_v1 >> 8) & 0xF);
//         phi_v0 = (s32)temp_v0_2;
//         if ((s32)temp_v0_2 >= 0xD) {
//             phi_v0 = 0;
//         }
//         Item_DropCollectibleRandom(globalCtx, NULL, &this->actor.posRot.pos, (s16)((s32)(phi_v0 << 0x14) >> 0x10));
//         return;
//     }
//     if (temp_v0 != 1) {
//         if (temp_v0 == 2) {
//             goto block_3;
//         }
//     } else {
//         if (Math_Rand_ZeroOne() < 0.5f) {
//             Item_DropCollectible(globalCtx, &this->actor.posRot.pos, (u16)0x10);
//             return;
//         }
//         Item_DropCollectible(globalCtx, &this->actor.posRot.pos, (u16)3);
//     }
// }

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
// f32 func_80A9B1FC(Actor* thisx) {
//     thisx->unk50 = 0.120000005f;
//     thisx->unk58 = 0.120000005f;
//     thisx->unk54 = 0.16000001f;
//     return 0.120000005f;
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B21C.s")
// void func_80A9B21C(void *arg0, GlobalContext *globalCtx) {
//     f32 spCC;
//     f32 spC8;
//     f32 spC4;
//     f32 spC0;
//     f32 spBC;
//     f32 spB8;
//     f32 *temp_s2;
//     f32 *temp_s4;
//     s32 *temp_s1;
//     s32 *phi_s1;

//     temp_s2 = &spB8;
//     temp_s4 = &spC4;
//     phi_s1 = D_80A9C23C;
// loop_1:
//     spB8 = arg0->unk24 + (phi_s1->unk0 * arg0->unk50 * 20.0f);
//     spBC = arg0->unk28 + (phi_s1->unk4 * arg0->unk54 * 20.0f) + 10.0f;
//     spC0 = arg0->unk2C + (phi_s1->unk8 * arg0->unk58 * 20.0f);
//     spC4 = (Math_Rand_ZeroOne() - 0.5f) * 8.0f;
//     spC8 = Math_Rand_ZeroOne() * 10.0f;
//     spCC = (Math_Rand_ZeroOne() - 0.5f) * 8.0f;
//     EffectSsKakera_Spawn(globalCtx, (Vec3f *) temp_s2, (Vec3f *) temp_s4, (Vec3f *) temp_s2, -0x64, 0x40, 0x28, 3, 0,
//     (?32) *(D_80A9C26C + (((s32) (Math_Rand_ZeroOne() * 111.1f) & 7) * 2)), 0, 0, 0x50, -1, 1, 0x40355E0);

//     spB8 = arg0->unk24 + (phi_s1->unk0 * arg0->unk50 * 40.0f);
//     spBC = arg0->unk28 + (phi_s1->unk4 * arg0->unk54 * 40.0f) + 10.0f;
//     spC0 = arg0->unk2C + (phi_s1->unk8 * arg0->unk58 * 40.0f);
//     spC4 = (Math_Rand_ZeroOne() - 0.5f) * 6.0f;
//     spC8 = Math_Rand_ZeroOne() * 10.0f;
//     spCC = (Math_Rand_ZeroOne() - 0.5f) * 6.0f;
//     EffectSsKakera_Spawn(globalCtx, (Vec3f *) temp_s2, (Vec3f *) temp_s4, (Vec3f *) temp_s2, -0x64, 0x40, 0x28, 3, 0,
//     (?32) *(D_80A9C26C + (((s32) (Math_Rand_ZeroOne() * 111.1f) % 7) * 2)), 0, 0, 0x50, -1, 1, 0x40356A0);

//     temp_s1 = phi_s1 + 0xC;
//     phi_s1 = temp_s1;
//     if (temp_s1 != D_80A9C26C) {
//         goto loop_1;
//     }
// }

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B574.s")
// Spawn Bugs
void func_80A9B574(EnKusa* this, GlobalContext* globalCtx) {
    s32 i;

    for (i = 0; i < 3; i++) {
        Actor* bug =
            Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_INSECT, this->actor.posRot.pos.x,
                        this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, Math_Rand_ZeroOne() * 0xFFFF, 0, 1);

        if (bug == NULL) {
            break;
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B630.s")
// EnKusa_InitCollision
void func_80A9B630(Actor* thisx, GlobalContext* globalCtx) {
    EnKusa* this = THIS;

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, this, &D_80A9C208);
    Collider_CylinderUpdate(this, &this->collider);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/EnKusa_Init.s")
void EnKusa_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnKusa* this = THIS;

    Actor_ProcessInitChain(&this->actor, D_80A9C27C);
    if (globalCtx->csCtx.state != 0) {
        this->actor.uncullZoneForward += 1000.0f;
    }
    // Init for the ColliderCylinder
    func_80A9B630(this, globalCtx);

    func_80061ED4(&this->actor.colChkInfo, NULL, &D_80A9C234);
    if (this->actor.shape.rot.y == 0) {
        // Random value I think?
        s32 rand = (s32)Math_Rand_ZeroFloat(65536.0f);
        this->actor.posRot.rot.y = (s16)rand;
        this->actor.initPosRot.rot.y = (s16)rand;
        this->actor.shape.rot.y = (s16)rand;
    }

    if (func_80A9AFAC(&this->actor, globalCtx, (f32)0) == 0) {
        Actor_Kill(&this->actor);
        return;
    }
    this->kusaTexObjIndex = Object_GetIndex(&globalCtx->objectCtx, D_80A9C200[this->actor.params & 3]);

    if (this->kusaTexObjIndex < 0) {
        // Prints -> Bank danger!
        osSyncPrintf("Error : バンク危険！(arg_data 0x%04x)(%s %d)\n", this->actor.params, "../z_en_kusa.c", 561);
        Actor_Kill(&this->actor);
        return;
    }
    // Maybe this is SetupWait?
    func_80A9B7EC(this);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/EnKusa_Destroy.s")
void EnKusa_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnKusa* this = THIS;

    // TODO: I am going to need to fix the Collider in the EnKusa struct
    Collider_DestroyCylinder(globalCtx, &THIS->collider);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B7EC.s")
// Is this SetupWait?
// void func_80A9B7EC(EnKusa *this) {
//     func_80A9AFA0(&func_80A9B810);
//      this->actionFunc = func_80A9B810;
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B810.s")
// void func_80A9B810(EnKusa *this, GlobalContext* globalCtx) {
//     if (Object_IsLoaded(&globalCtx->objectCtx + 0x117A4, this->kusaTexObjIndex) != 0) {
//         if ((this->unk4 & 0x800) != 0) {
//             func_80A9BEAC(this);
//         } else {
//             func_80A9B89C(this);
//         }
//         this->dyna.actor.draw = &func_80A9C164;
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
//     ColliderCylinder* collider = &this->collider;
//     u8 temp_v0;
//     u8 temp_v0_2;

//     if (Actor_HasParent(this, globalCtx) != 0) {
           // SetupLiftedUp
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
//         if (((this->params >> 4) & 1) != 0) {
                // Spawn Bugs
//             func_80A9B574(this, globalCtx);
//         }
//         if ((this->params & 3) != 0) {
//             func_80A9BEAC(this);
//             this->flags = this->flags | 0x800;
//             return;
//         }
//         Actor_Kill(&this->actor);
//         return;
//     }
//     temp_v0_2 = this->unk162;
//     if (((temp_v0_2 & 8) == 0) && (12.0f < this->actor.xzDistFromLink)) {
//         this->unk162 = (u8) (temp_v0_2 | 8);
//     }
//     if (this->actor.xzDistFromLink < 600.0f) {
//         Collider_CylinderUpdate(this, &this->collider);
//         CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
//         if (this->actor.xzDistFromLink < 400.0f) {
//             CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base;
//             if (this->actor.xzDistFromLink < 100.0f) {
//                 func_8002F580(this, globalCtx);
//             }
//         }
//     }
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BA98.s")
// Possibly SetupLiftedUp? -> modeled after EnIshi_SetupLiftedUp
// void func_80A9BA98(Actor *thisx) {
//     // this is proably action function --> See en_ishi for similarity
//     EnKusa* this = THIS;

//     this->actionFunc = func_80A9BAD8;
//     this->actor.room = -1;
//     this->actor.flags |= 0x10;
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BAD8.s")
// Possibly LiftedUp?...
// TODO: has a register mismatch somewhere
// void func_80A9BAD8(EnKusa* this, GlobalContext* globalCtx) {
//     f32 temp_f0;

//     if (Actor_HasNoParent(this, globalCtx)) {
//         this->actor.room = globalCtx->roomCtx.curRoom.num;
//         func_80A9BBB0(this);
//         this->actor.velocity.x = Math_Sins(this->actor.posRot.rot.y) * this->actor.speedXZ;
//         temp_f0 = Math_Coss(this->actor.posRot.rot.y);
//         this->actor.colChkInfo.mass = 240;
//         this->actor.velocity.z = temp_f0 * this->actor.speedXZ;
//         this->actor.gravity = -0.1f;
//         func_80A9B140(this);
//         func_80A9B174(&this->actor.velocity, 0x3BA3D70A);
//         func_8002D7EC(&this->actor);
//         func_8002E4B4(globalCtx, &this->actor, 7.5f, 35.0f, 0.0f, 0xC5);
//         this->actor.gravity = -3.2f;
//     }
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BBB0.s")
// void func_80A9BBB0(EnKusa* this) {
// func_80A9AFA0 is set wait?
//     func_80A9AFA0(&func_80A9BC1C);
//     *D_80A9C1D0 = (u16)-0xBB8;
//     *D_80A9C1D8 = (s16) (s32) ((Math_Rand_ZeroOne() - 0.5f) * 1600.0f);
//     *D_80A9C1D4 = (u16)0;
//     *D_80A9C1DC = (u16)0;
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BC1C.s")
// void func_80A9BC1C(Actor* thisx, GlobalContext* globalCtx) {
//     EnKusa* this = THIS;

//     ColliderCylinder* collider = &this->collider;
//     Vec3f pos;
//     s16 temp_v0_2;
//     u16 temp_v0;

//     temp_v0 = thisx->bgCheckFlags;
//     if ((temp_v0 & 0xB) != 0) {
//         if ((temp_v0 & 0x20) == 0) {
//             Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 20, NA_SE_EV_PLANT_BROKEN);
//         }
//         func_80A9B21C(thisx, globalCtx);
//         func_80A9B07C(thisx, globalCtx);
//         temp_v0_2 = thisx->params & 3;
//         if (temp_v0_2 == 0) {
//         block_6:
//             Actor_Kill(&this->actor);
//             return;
//         }
//         if (temp_v0_2 == 1) {
//             func_80A9BF3C(thisx);
//             return;
//         }
//         if (temp_v0_2 == 2) {
//             goto block_6;
//         }
//     } else {
//         if ((temp_v0 & 0x40) != 0) {
//             pos.x = thisx->posRot.pos.x;
//             pos.y = thisx->posRot.pos.y + thisx->waterY;
//             pos.z = thisx->posRot.pos.z;
//             EffectSsGSplash_Spawn(globalCtx, &pos, NULL, NULL, 0, 0x190);
//             EffectSsGRipple_Spawn(globalCtx, &pos, 0x96, 0x28A, 0);
//             EffectSsGRipple_Spawn(globalCtx, &pos, 0x190, 0x320, 4);
//             EffectSsGRipple_Spawn(globalCtx, &pos, 0x1F4, 0x44C, 8);
//             thisx->minVelocityY = -3.0f;
//             *D_80A9C1D4 = (*D_80A9C1D4 >> 1);
//             *D_80A9C1D0 = (*D_80A9C1D0 >> 1);
//             *D_80A9C1DC = (*D_80A9C1DC >> 1);
//             *D_80A9C1D8 = (*D_80A9C1D8 >> 1);
//             thisx->bgCheckFlags = thisx->bgCheckFlags & 0xFFBF;
//             Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 0x28, NA_SE_EV_DIVE_INTO_WATER_L);
//         }
//         func_80A9B140(this);
//         Math_ApproxS(D_80A9C1D4, *D_80A9C1D0, 0x1F4);
//         Math_ApproxS(D_80A9C1DC, *D_80A9C1D8, 0xAA);
//         thisx->shape.rot.x = thisx->shape.rot.x + *D_80A9C1D4;
//         thisx->shape.rot.y = thisx->shape.rot.y + *D_80A9C1DC;
//         func_80A9B174(&thisx->velocity, 0x3D4CCCCD);
//         func_8002D7EC(thisx);
//         func_8002E4B4(globalCtx, this, 7.5f, 35.0f, 0.0f, 0xC5);
//         Collider_CylinderUpdate(thisx, collider);
//         CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &collider->base);
//     }
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BEAC.s")
// s16 func_80A9BEAC(void *arg0) {
//     s16 temp_v0;
//     s16 phi_return;

//     temp_v0 = arg0->unk1C & 3;
//     if (temp_v0 != 1) {
//         phi_return = temp_v0;
//         if (temp_v0 == 2) {
//             return func_80A9AFA0(&func_80A9BF30);
//         }
//     } else {
//         phi_return = func_80A9AFA0(&func_80A9BEFC);
//     }
//     return phi_return;
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BEFC.s")
// void func_80A9BEFC(void *arg0, ? arg1) {
//     if ((s32) arg0->unk19C >= 0x78) {
//         func_80A9C00C();
//     }
// }

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BF30.s")
// Done, its just...blank....
void func_80A9BF30(s32 arg0, s32 arg1) {
    // Function was intentionally left blank
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BF3C.s")
// void func_80A9BF3C(Actor *this) {
//     this->unk24 = (f32) this->unk8;
//     this->unk2C = (f32) this->unk10;
//     this->unk28 = (f32) (this->unkC - 9.0f);
//     func_80A9B1FC();
//     this->unkB4 = (unaligned s32) this->unk14;
//     this->unkB8 = (u16) this->unk18;
//     func_80A9AFA0(this, &func_80A9BFA8);
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BFA8.s")
// void func_80A9BFA8(Actor *this) {
//     f32 *temp_a0;
//     s32 temp_a1;

//     temp_a0 = this + 0x28;
//     if ((s32) this->unk19C >= 0x79) {
//         temp_a1 = this->unkC;
//         this = this;
//         if ((Math_ApproxF(temp_a0, temp_a1, 0.6f) != 0) && ((s32) this->unk19C >= 0xAA)) {
//             func_80A9C00C(this);
//         }
//     }
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9C00C.s")
// void func_80A9C00C(Actor* this) {
//     func_80A9AFA0(&func_80A9C068);
//     func_80A9B1FC(this);
//     this->unkB4 = (unaligned s32) arg0->unk14;
//     this->unk4 = (s32) (this->unk4 & -0x801);
//     this->unkB8 = (u16) this->unk18;
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9C068.s")
// void func_80A9C068(Actor *thisx, s16 arg1) {
//     EnKusa* this = THIS;

//     s32 sp24;
//     s32 temp_v1;

//     temp_v1 = Math_ApproxF(&this->actor + 0x54, 0.4f, 0.014f) & 1;
//     sp24 = temp_v1;
//     this->actor.scale.z = this->actor.scale.x;
//     if ((temp_v1 & Math_ApproxF(&this->actor + 0x50, 0.4f, 0.011f)) != 0) {
//         Actor_SetScale(&this->actor, 0.4f);
//         func_80A9B89C(&this->actor);
//         this->actor->unk162 = (u8) (this->actor->unk162 & 0xFFF7);
//     }
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/EnKusa_Update.s")
// void EnKusa_Update(Actor *thisx, GlobalContext *globalCtx) {
//     thisx->unk19C = (s16) (thisx->unk19C + 1);
//     thisx->unk14C();
//     if ((thisx->flags & 0x800) != 0) {
//         thisx->shape.unk_08 = -6.25f;
//         return;
//     }
//     thisx->shape.unk_08 = 0.0f;
// }

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9C164.s")
void func_80A9C164(Actor* thisx, GlobalContext* globalCtx) {
    if ((thisx->flags & 0x800) != 0) {
        Gfx_DrawDListOpa(globalCtx, 0x60002E0);
        return;
    }
    Gfx_DrawDListOpa(globalCtx, D_80A9C294[thisx->params & 3]);
}
