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

// Collision Check data
// s32 D_80A9C234[] = { 0x0000000C, 0x001EFF00 };
CollisionCheckInfoInit sColChkInfoInit = { 0, 0xC, 0x1E, 0xFF };

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

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9AFA0.s")
void func_80A9AFA0(void* arg0, u32 arg1) {
    arg0->unk_19C = (u16)0;
    arg0->unk_14C = arg1;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9AFAC.s")
bool func_80A9AFAC(Actor* arg0, s32 arg1, f32 arg2) {
    CollisionPoly* sp38;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp28;
    Actor* temp_a3;
    f32 temp_f0;
    f32 temp_f16;

    sp2C = arg0->posRot.pos.x;
    temp_a3 = arg0;
    sp30 = arg0->posRot.pos.y + 30.0f;
    temp_f16 = arg0->posRot.pos.z;
    arg0 = temp_a3;
    sp34 = temp_f16;
    temp_f0 = func_8003C9A4(arg1 + 0x7C0, &sp38, (void*)&sp28, temp_a3, &sp2C);
    if (-32000.0f < temp_f0) {
        arg0->posRot.pos.y = temp_f0 + arg2;
        Math_Vec3f_Copy((Vec3f*)&arg0->initPosRot, (Vec3f*)&arg0->posRot);
        return 1;
    }
    osSyncPrintf((const char*)"\x1b[43;30m", arg0);
    // Translates to "Failure to adhere to the ground"
    osSyncPrintf((const char*)"地面に付着失敗(%s %d)\n", "../z_en_kusa.c", 0x143);
    osSyncPrintf((const char*)"\x1b[m");
    return 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B07C.s")
// void func_80A9B07C(Vec3f* arg0, GlobalContext* globalCtx) {
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
//         Item_DropCollectibleRandom(globalCtx, NULL, arg0 + 0x24, (s16)((s32)(phi_v0 << 0x14) >> 0x10));
//         return;
//     }
//     if (temp_v0 != 1) {
//         if (temp_v0 == 2) {
//             goto block_3;
//         }
//     } else {
//         if (Math_Rand_ZeroOne() < 0.5f) {
//             Item_DropCollectible(globalCtx, arg0 + 0x24, (u16)0x10);
//             return;
//         }
//         Item_DropCollectible(globalCtx, arg0 + 0x24, (u16)3);
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

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B1FC.s")
f32 func_80A9B1FC(void* arg0) {
    arg0->unk50 = 0.120000005f;
    arg0->unk58 = 0.120000005f;
    arg0->unk54 = 0.16000001f;
    return 0.120000005f;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B21C.s")
// void func_80A9B21C(void* arg0, GlobalContext* globalCtx) {
//     f32 spCC;
//     f32 spC8;
//     f32 spC4;
//     f32 spC0;
//     f32 spBC;
//     f32 spB8;
//     f32* temp_s2;
//     f32* temp_s4;
//     s32* temp_s1;
//     s32* phi_s1;

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
//     (?32) *(D_80A9C26C + (((s32) (Math_Rand_ZeroOne() * 111.1f) & 7) * 2)), 0, 0, 0x50, -1, 1, 0x40355E0); spB8 =
//     arg0->unk24 + (phi_s1->unk0 * arg0->unk50 * 40.0f); spBC = arg0->unk28 + (phi_s1->unk4 * arg0->unk54 * 40.0f)
//     + 10.0f; spC0 = arg0->unk2C + (phi_s1->unk8 * arg0->unk58 * 40.0f); spC4 = (Math_Rand_ZeroOne() - 0.5f) * 6.0f;
//     spC8 = Math_Rand_ZeroOne() * 10.0f;
//     spCC = (Math_Rand_ZeroOne() - 0.5f) * 6.0f;
//     EffectSsKakera_Spawn(globalCtx, (Vec3f *) temp_s2, (Vec3f *) temp_s4, (Vec3f *) temp_s2, -0x64, 0x40, 0x28, 3, 0,
//     (?32) *(D_80A9C26C + (((s32) (Math_Rand_ZeroOne() * 111.1f) % 7) * 2)), 0, 0, 0x50, -1, 1, 0x40356A0); temp_s1 =
//     phi_s1 + 0xC; phi_s1 = temp_s1; if (temp_s1 != D_80A9C26C) {
//         goto loop_1;
//     }
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B574.s")
// void func_80A9B574(void* arg0, GlobalContext* globalCtx) {
//     s32 temp_s0;
//     s32 phi_s0;

//     phi_s0 = 0;
// loop_1:
//     temp_s0 = phi_s0 + 1;
//     if (Actor_Spawn(globalCtx + 0x1C24, globalCtx, (u16)0x20, (bitwise f32)arg0->unk24, arg0->unk28, arg0->unk2C, 0,
//                     (s32)(Math_Rand_ZeroOne() * 65535.0f), 0, 1) != 0) {
//         phi_s0 = temp_s0;
//         if (temp_s0 != 3) {
//             goto loop_1;
//         }
//     }
// }

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B630.s")
// ColliderCylinder Init function from the looks of it
void func_80A9B630(Actor* arg0, GlobalContext* globalCtx) {
    ColliderCylinder* sp18;
    ColliderCylinder* temp_a1;

    // Cylinder is going to be at actor(arg0) + 0x150
    temp_a1 = arg0 + 0x150;
    sp18 = temp_a1;
    arg0 = arg0;
    Collider_InitCylinder(globalCtx, temp_a1);
    Collider_SetCylinder(globalCtx, temp_a1, arg0, &D_80A9C208);
    Collider_CylinderUpdate(arg0, temp_a1);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/EnKusa_Init.s")
void EnKusa_Init(EnKusa* this, GlobalContext* globalCtx) {

    Actor_ProcessInitChain(&this->actor, D_80A9C27C);
    if (globalCtx->csCtx.state != 0) {
        this->actor.uncullZoneForward = this->actor.uncullZoneForward + 1000.0f;
    }
    // Init for the ColliderCylinder
    func_80A9B630(this, globalCtx);

    func_80061ED4(&this->actor.colChkInfo, NULL, &sColChkInfoInit);
    if (this->actor.shape.rot.y == 0) {
        // Random value I think?
        s32 rand = (s32)Math_Rand_ZeroFloat(65536.0f);
        this->actor.posRot.rot.y = (s16)rand;
        this->actor.initPosRot.rot.y = (s16)rand;
        this->actor.shape.rot.y = (s16)rand;
    }
    // This checks to see if the bush is adhered to the ground/picked up I think
    if (func_80A9AFAC(this, globalCtx, 0) == 0) {
        Actor_Kill(&this->actor);
        return;
    }
    // Object_GetIndex(ObjectCtx, objectID)
    // Why is objectID bitwise AND with (0011)3?...
    this->unk19E = Object_GetIndex(&globalCtx->objectCtx, *(D_80A9C200 + ((this->actor.params & 3) * 2)));

    char* filePath = "../z_en_kusa.c";
    if ((s32)this->unk19E < 0) {
        // Prints -> Bank danger!
        osSyncPrintf("Error : バンク危険！(arg_data 0x%04x)(%s %d)\n", this->actor.params, filePath, 0x231);
        Actor_Kill(&this->actor);
        return;
    }
    func_80A9B7EC(this, filePath);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/EnKusa_Destroy.s")
void EnKusa_Destroy(Actor *thisx, GlobalContext *globalCtx) {
    EnKusa* this = THIS;

    //TODO: I am going to need to fix the Collider in the EnKusa struct
    Collider_DestroyCylinder(globalCtx, thisx + 0x150);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B7EC.s")
//Original: func_80A9B7EC(void)
void func_80A9B7EC(EnKusa* this, char* path) {
    func_80A9AFA0(&func_80A9B810);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B810.s")
void func_80A9B810(void* arg0, s32 arg1) {
    if (Object_IsLoaded(arg1 + 0x117A4, (s32)arg0->unk19E) != 0) {
        if ((arg0->unk4 & 0x800) != 0) {
            func_80A9BEAC(arg0);
        } else {
            func_80A9B89C(arg0);
        }
        arg0->unk134 = &func_80A9C164;
        arg0->unk4 = (s32)(arg0->unk4 & -0x11);
        arg0->unk1E = (s8)arg0->unk19E;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B89C.s")
void func_80A9B89C(void* arg0) {
    func_80A9AFA0(arg0, (u32)&func_80A9B8D8);
    arg0->unk4 = (s32)(arg0->unk4 & -0x11);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B8D8.s")
void func_80A9B8D8(Actor* arg0, GlobalContext* globalCtx) {
    ColliderCylinder* sp28;
    CollisionCheckContext* sp24;
    ColliderCylinder* temp_a1;
    CollisionCheckContext* temp_a1_2;
    u8 temp_v0;
    u8 temp_v0_2;

    if (Actor_HasParent(arg0, globalCtx) != 0) {
        func_80A9BA98(arg0);
        Audio_PlaySoundAtPosition(globalCtx, (Vec3f*)&arg0->posRot, 20, NA_SE_PL_PULL_UP_PLANT);
        return;
    }
    temp_v0 = arg0->unk161;
    if ((temp_v0 & 2) != 0) {
        arg0->unk161 = (u8)(temp_v0 & 0xFFFD);
        func_80A9B21C(arg0, globalCtx);
        func_80A9B07C(arg0, globalCtx);
        Audio_PlaySoundAtPosition(globalCtx, (Vec3f*)&arg0->posRot, 20, NA_SE_EV_PLANT_BROKEN);
        if ((((s32)arg0->params >> 4) & 1) != 0) {
            func_80A9B574(arg0, globalCtx);
        }
        if ((arg0->params & 3) != 0) {
            func_80A9BEAC(arg0);
            arg0->flags = arg0->flags | 0x800;
            return;
        }
        Actor_Kill(arg0);
        return;
    }
    temp_v0_2 = arg0->unk162;
    temp_a1 = arg0 + 0x150;
    if (((temp_v0_2 & 8) == 0) && (12.0f < arg0->xzDistFromLink)) {
        arg0->unk162 = (u8)(temp_v0_2 | 8);
    }
    if (arg0->xzDistFromLink < 600.0f) {
        sp28 = temp_a1;
        Collider_CylinderUpdate(arg0, temp_a1);
        temp_a1_2 = &globalCtx->colChkCtx;
        sp24 = temp_a1_2;
        CollisionCheck_SetAC(globalCtx, temp_a1_2, (Collider*)sp28);
        if (arg0->xzDistFromLink < 400.0f) {
            CollisionCheck_SetOC(globalCtx, temp_a1_2, (Collider*)sp28);
            if (arg0->xzDistFromLink < 100.0f) {
                func_8002F580(arg0, globalCtx);
            }
        }
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BA98.s")
// void func_80A9BA98(void *arg0) {
//     func_80A9AFA0(arg0, (u32) &func_80A9BAD8);
//     arg0->unk3 = (u8)-1;
//     arg0->unk4 = (s32) (arg0->unk4 | 0x10);
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BAD8.s")
void func_80A9BAD8(Actor* arg0, GlobalContext* globalCtx) {
    f32 temp_f0;

    if (Actor_HasNoParent(arg0, globalCtx) != 0) {
        arg0->room = globalCtx->roomCtx.curRoom.num;
        func_80A9BBB0(arg0);
        arg0->velocity.x = Math_Sins(arg0->posRot.rot.y) * arg0->speedXZ;
        temp_f0 = Math_Coss(arg0->posRot.rot.y);
        arg0->colChkInfo.mass = 0xF0;
        arg0->velocity.z = temp_f0 * arg0->speedXZ;
        arg0->gravity = -0.1f;
        func_80A9B140(arg0);
        func_80A9B174(&arg0->velocity, 0x3BA3D70A);
        func_8002D7EC(arg0);
        func_8002E4B4(globalCtx, arg0, 7.5f, 35.0f, 0.0f, 0xC5);
        arg0->gravity = -3.2f;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BBB0.s")
// void func_80A9BBB0(void* arg0) {
//     func_80A9AFA0(arg0, (u32)&func_80A9BC1C);
//     *D_80A9C1D0 = (u16)-0xBB8;
//     *D_80A9C1D8 = (s16)(s32)((Math_Rand_ZeroOne() - 0.5f) * 1600.0f);
//     *D_80A9C1D4 = (u16)0;
//     *D_80A9C1DC = (u16)0;
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BC1C.s")
// void func_80A9BC1C(Actor* arg0, GlobalContext* globalCtx) {
//     f32 sp38;
//     f32 sp34;
//     f32 sp30;
//     ColliderCylinder* sp28;
//     ColliderCylinder* temp_a2;
//     s16 temp_v0_2;
//     u16 temp_v0;

//     temp_v0 = arg0->bgCheckFlags;
//     if ((temp_v0 & 0xB) != 0) {
//         if ((temp_v0 & 0x20) == 0) {
//             Audio_PlaySoundAtPosition(globalCtx, arg0 + 0x24, 0x14, (u16)0x284EU);
//         }
//         func_80A9B21C(arg0, globalCtx);
//         func_80A9B07C(arg0, globalCtx);
//         temp_v0_2 = arg0->params & 3;
//         if (temp_v0_2 == 0) {
//         block_6:
//             Actor_Kill(arg0);
//             return;
//         }
//         if (temp_v0_2 == 1) {
//             func_80A9BF3C(arg0);
//             return;
//         }
//         if (temp_v0_2 == 2) {
//             goto block_6;
//         }
//     } else {
//         if ((temp_v0 & 0x40) != 0) {
//             sp30 = arg0->posRot.pos.x;
//             sp34 = arg0->posRot.pos.y + arg0->waterY;
//             sp38 = arg0->posRot.pos.z;
//             EffectSsGSplash_Spawn(globalCtx, (Vec3f*)&sp30, NULL, NULL, 0, 0x190);
//             EffectSsGRipple_Spawn(globalCtx, (Vec3f*)&sp30, (u16)0x96, (u16)0x28A, 0);
//             EffectSsGRipple_Spawn(globalCtx, (Vec3f*)&sp30, (u16)0x190, (u16)0x320, 4);
//             EffectSsGRipple_Spawn(globalCtx, (Vec3f*)&sp30, (u16)0x1F4, (u16)0x44C, 8);
//             arg0->minVelocityY = -3.0f;
//             *D_80A9C1D4 = (s16)((s32)*D_80A9C1D4 >> 1);
//             *D_80A9C1D0 = (s16)((s32)*D_80A9C1D0 >> 1);
//             *D_80A9C1DC = (s16)((s32)*D_80A9C1DC >> 1);
//             *D_80A9C1D8 = (s16)((s32)*D_80A9C1D8 >> 1);
//             arg0->bgCheckFlags = arg0->bgCheckFlags & 0xFFBF;
//             Audio_PlaySoundAtPosition(globalCtx, (Vec3f*)&arg0->posRot, 0x28, (u16)0x28C5U);
//         }
//         func_80A9B140(arg0);
//         Math_ApproxS((s16*)D_80A9C1D4, *D_80A9C1D0, (u16)0x1F4);
//         Math_ApproxS((s16*)D_80A9C1DC, *D_80A9C1D8, (u16)0xAA);
//         arg0->shape.rot.x = arg0->shape.rot.x + *D_80A9C1D4;
//         arg0->shape.rot.y = arg0->shape.rot.y + *D_80A9C1DC;
//         func_80A9B174(&arg0->velocity, 0x3D4CCCCD);
//         func_8002D7EC(arg0);
//         func_8002E4B4(globalCtx, arg0, 7.5f, 35.0f, 0.0f, 0xC5);
//         temp_a2 = arg0 + 0x150;
//         sp28 = temp_a2;
//         Collider_CylinderUpdate(arg0, temp_a2);
//         CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, (Collider*)temp_a2);
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

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BF30.s")
// void func_80A9BF30(s32 arg0, ? arg1) {

// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BF3C.s")
// void func_80A9BF3C(void *arg0) {
//     arg0->unk24 = (f32) arg0->unk8;
//     arg0->unk2C = (f32) arg0->unk10;
//     arg0->unk28 = (f32) (arg0->unkC - 9.0f);
//     func_80A9B1FC(arg0);
//     arg0->unkB4 = (unaligned s32) arg0->unk14;
//     arg0->unkB8 = (u16) arg0->unk18;
//     func_80A9AFA0(arg0, (u32) &func_80A9BFA8);
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BFA8.s")
// void func_80A9BFA8(void *arg0, ? arg1) {
//     f32 *temp_a0;
//     s32 temp_a1;

//     temp_a0 = arg0 + 0x28;
//     if ((s32) arg0->unk19C >= 0x79) {
//         temp_a1 = arg0->unkC;
//         arg0 = arg0;
//         if ((Math_ApproxF(temp_a0, (bitwise f32) temp_a1, 0.6f) != 0) && ((s32) arg0->unk19C >= 0xAA)) {
//             func_80A9C00C(arg0, arg0);
//         }
//     }
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9C00C.s")
// void func_80A9C00C(void *arg0) {
//     func_80A9AFA0(arg0, (u32) &func_80A9C068);
//     func_80A9B1FC(arg0);
//     arg0->unkB4 = (unaligned s32) arg0->unk14;
//     arg0->unk4 = (s32) (arg0->unk4 & -0x801);
//     arg0->unkB8 = (u16) arg0->unk18;
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9C068.s")
// void func_80A9C068(Actor *arg0, ? arg1) {
//     s32 sp24;
//     s32 temp_v1;

//     temp_v1 = Math_ApproxF(arg0 + 0x54, 0.4f, 0.014f) & 1;
//     sp24 = temp_v1;
//     arg0->scale.z = arg0->scale.x;
//     if ((temp_v1 & Math_ApproxF(arg0 + 0x50, 0.4f, 0.011f)) != 0) {
//         Actor_SetScale(arg0, 0.4f);
//         func_80A9B89C(arg0);
//         arg0->unk162 = (u8) (arg0->unk162 & 0xFFF7);
//     }
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/EnKusa_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9C164.s")
// void func_80A9C164(void* arg0, GlobalContext* globalCtx) {
//     if ((arg0->unk4 & 0x800) != 0) {
//         Gfx_DrawDListOpa(globalCtx, (void*)0x60002E0);
//         return;
//     }
//     Gfx_DrawDListOpa(globalCtx, (Gfx*)D_80A9C294[arg0->unk1C & 3]);
// }
