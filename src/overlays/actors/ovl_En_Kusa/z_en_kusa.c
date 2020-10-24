#include "z_en_kusa.h"

#define FLAGS 0x00800010

#define THIS ((EnKusa*)thisx)

void EnKusa_Init(Actor* thisx, GlobalContext* globalCtx);
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

s32 D_80A9C234[] = { 0x0000000C, 0x001EFF00 };

s32 D_80A9C23C[] = { 0x00000000, 0x3F350481, 0x3F350481, 0x3F350481, 0x3F350481, 0x00000000,
                     0x00000000, 0x3F350481, 0xBF350481, 0xBF350481, 0x3F350481, 0x00000000 };

s32 D_80A9C26C[] = { 0x006C0066, 0x00600054, 0x00420037, 0x002A0026 };

// s32 D_80A9C27C[] = { 0xC8500190, 0xB86CF380, 0xB870BD98, 0xB0F404B0, 0xB0F80064, 0x30FC0078 };

// sInitChain
InitChainEntry D_80A9C27C[] = {
    ICHAIN_VEC3F_DIV1000(scale, 400, ICHAIN_CONTINUE),         ICHAIN_F32_DIV1000(gravity, -3200, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(minVelocityY, -17000, ICHAIN_CONTINUE), ICHAIN_F32(uncullZoneForward, 1200, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 100, ICHAIN_CONTINUE),         ICHAIN_F32(uncullZoneDownward, 120, ICHAIN_STOP),
};

s32 D_80A9C294[] = { 0x0500B9D0, 0x06000140, 0x06000140 };

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9AFA0.s")
void func_80A9AFA0(void* arg0, u32 arg1) {
    arg0->unk_19C = (u16)0;
    arg0->unk_14C = arg1;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9AFAC.s")
// ? func_80A9AFAC(Actor *arg0, s32 arg1, f32 arg2) {
//     CollisionPoly *sp38;
//     f32 sp34;
//     f32 sp30;
//     f32 sp2C;
//     ? sp28;
//     Actor *temp_a3;
//     f32 temp_f0;
//     f32 temp_f16;

//     sp2C = arg0->posRot.pos.x;
//     temp_a3 = arg0;
//     sp30 = arg0->posRot.pos.y + 30.0f;
//     temp_f16 = arg0->posRot.pos.z;
//     arg0 = temp_a3;
//     sp34 = temp_f16;
//     temp_f0 = func_8003C9A4(arg1 + 0x7C0, &sp38, (void *) &sp28, temp_a3, &sp2C);
//     if (-32000.0f < temp_f0) {
//         arg0->posRot.pos.y = temp_f0 + arg2;
//         Math_Vec3f_Copy((Vec3f *) &arg0->initPosRot, (Vec3f *) &arg0->posRot);
//         return 1;
//     }
//     osSyncPrintf((const char *) "\x1b[43;30m", arg0);
//     osSyncPrintf((const char *) "地面に付着失敗(%s %d)\n", "../z_en_kusa.c", 0x143);
//     osSyncPrintf((const char *) "\x1b[m");
//     return 0;
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B07C.s")
// void func_80A9B07C(Vec3f* arg0, GlobalContext* arg1) {
//     s16 temp_v0_2;
//     s16 temp_v1;
//     s32 temp_v0;
//     s32 phi_v0;

//     temp_v1 = arg0->unk1C;
//     temp_v0 = temp_v1 & 3;
//     if (temp_v0 == 0) {
//     block_3:
//         temp_v0_2 = (s16)(((s32)temp_v1 >> 8) & 0xF);
//         phi_v0 = (s32)temp_v0_2;
//         if ((s32)temp_v0_2 >= 0xD) {
//             phi_v0 = 0;
//         }
//         Item_DropCollectibleRandom(arg1, NULL, arg0 + 0x24, (s16)((s32)(phi_v0 << 0x14) >> 0x10));
//         return;
//     }
//     if (temp_v0 != 1) {
//         if (temp_v0 == 2) {
//             goto block_3;
//         }
//     } else {
//         if (Math_Rand_ZeroOne() < 0.5f) {
//             Item_DropCollectible(arg1, arg0 + 0x24, (u16)0x10);
//             return;
//         }
//         Item_DropCollectible(arg1, arg0 + 0x24, (u16)3);
//     }
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B140.s")
// f32 func_80A9B140(void *arg0) {
//     f32 temp_f0;

//     temp_f0 = arg0->unk70;
//     arg0->unk60 = (f32) (arg0->unk60 + arg0->unk6C);
//     if (arg0->unk60 < temp_f0) {
//         arg0->unk60 = temp_f0;
//     }
//     return temp_f0;
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B174.s")
// void func_80A9B174(void *arg0, f32 arg1) {
//     f32 temp_f10;
//     f32 temp_f12;
//     f32 temp_f14;
//     f32 temp_f16;
//     f32 temp_f18;
//     f32 temp_f2;

//     arg1 = arg1;
//     temp_f2 = arg0->unk0;
//     temp_f14 = arg0->unk4;
//     temp_f16 = arg0->unk8;
//     temp_f12 = arg1 + (((Math_Rand_ZeroOne() * 0.2f) - 0.1f) * arg1);
//     temp_f18 = temp_f16 * temp_f12;
//     temp_f10 = temp_f14 - (temp_f14 * temp_f12);
//     arg0->unk0 = (f32) (temp_f2 - (temp_f2 * temp_f12));
//     arg0->unk4 = temp_f10;
//     arg0->unk8 = (f32) (temp_f16 - temp_f18);
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B1FC.s")
// f32 func_80A9B1FC(void *arg0) {
//     arg0->unk50 = 0.120000005f;
//     arg0->unk58 = 0.120000005f;
//     arg0->unk54 = 0.16000001f;
//     return 0.120000005f;
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B21C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B574.s")
// void func_80A9B574(void* arg0, GlobalContext* arg1) {
//     s32 temp_s0;
//     s32 phi_s0;

//     phi_s0 = 0;
// loop_1:
//     temp_s0 = phi_s0 + 1;
//     if (Actor_Spawn(arg1 + 0x1C24, arg1, (u16)0x20, (bitwise f32)arg0->unk24, arg0->unk28, arg0->unk2C, 0,
//                     (s32)(Math_Rand_ZeroOne() * 65535.0f), 0, 1) != 0) {
//         phi_s0 = temp_s0;
//         if (temp_s0 != 3) {
//             goto loop_1;
//         }
//     }
// }

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B630.s")
// ColliderCylinder Init function from the looks of it
void func_80A9B630(Actor* arg0, GlobalContext* arg1) {
    ColliderCylinder* sp18;
    ColliderCylinder* temp_a1;

    // Cylinder is going to be at actor(arg0) + 0x150
    temp_a1 = arg0 + 0x150;
    sp18 = temp_a1;
    arg0 = arg0; // this is just a garbage value right? It's just reassigning itself...?
    Collider_InitCylinder(arg1, temp_a1);
    Collider_SetCylinder(arg1, temp_a1, arg0, &D_80A9C208);
    Collider_CylinderUpdate(arg0, temp_a1);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/EnKusa_Init.s")
void EnKusa_Init(EnKusa *this, GlobalContext *globalCtx) {
    s32 temp_v0;
    char* temp_a2;

    Actor_ProcessInitChain(&this->actor, D_80A9C27C);
    if (globalCtx->csCtx.state != 0) {
        this->actor.uncullZoneForward = this->actor.uncullZoneForward + 1000.0f;
    }
    func_80A9B630(this, globalCtx); // Init for the ColliderCylinder
    func_80061ED4(&this->actor.colChkInfo, NULL, (CollisionCheckInfoInit*)D_80A9C234);
    if (this->actor.shape.rot.y == 0) {
        temp_v0 = (s32)Math_Rand_ZeroFloat(65536.0f);
        this->actor.posRot.rot.y = (s16)temp_v0;
        this->actor.initPosRot.rot.y = (s16)temp_v0;
        this->actor.shape.rot.y = (s16)temp_v0;
    }
    if (func_80A9AFAC(this, globalCtx, 0) == 0) {
        Actor_Kill(&this->actor);
        return;
    }
    this->unk19E = Object_GetIndex(&globalCtx->objectCtx, *(D_80A9C200 + ((this->actor.params & 3) * 2)));
    temp_a2 = "../z_en_kusa.c";
    if ((s32)this->unk19E < 0) {
        osSyncPrintf((const char*)"Error : バンク危険！ (arg_data 0x%04x)(%s %d)\n", this->actor.params, temp_a2,
                     0x231);
        Actor_Kill(&this->actor);
        return;
    }
    func_80A9B7EC(this, temp_a2);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/EnKusa_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B7EC.s")
void func_80A9B7EC(void) {
    func_80A9AFA0(&func_80A9B810);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B810.s")
void func_80A9B810(void *arg0, s32 arg1) {
    if (Object_IsLoaded(arg1 + 0x117A4, (s32) arg0->unk19E) != 0) {
        if ((arg0->unk4 & 0x800) != 0) {
            func_80A9BEAC(arg0);
        } else {
            func_80A9B89C(arg0);
        }
        arg0->unk134 = &func_80A9C164;
        arg0->unk4 = (s32) (arg0->unk4 & -0x11);
        arg0->unk1E = (s8) arg0->unk19E;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B89C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B8D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BA98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BAD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BBB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BC1C.s")

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

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BF30.s")
// void func_80A9BF30(s32 arg0, ? arg1) {

// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BF3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BFA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9C00C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9C068.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/EnKusa_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9C164.s")
void func_80A9C164(void *arg0, GlobalContext *arg1) {
    if ((arg0->unk4 & 0x800) != 0) {
        Gfx_DrawDListOpa(arg1, (void *)0x60002E0);
        return;
    }
    Gfx_DrawDListOpa(arg1, (Gfx *) D_80A9C294[arg0->unk1C & 3]);
}

