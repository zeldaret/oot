#include <ultra64.h>
#include <global.h>
#include <vt.h>

typedef struct {
    Vec3f unk_00;
    Vec3f unk_0C;
    CollisionPoly* unk_18;
    char unk_1C[0x8];
    s32 unk_24;
} struct_80043D18;

// names for this struct's values come from a debug function, may want to rename
typedef struct {
    s8 code;
    s8 z;
    u16 T;
    f32 zoom;
    Vec3s pos;
} SplineData; // originally called SplinedatZ

f32 func_800437F0(f32 arg0, f32 arg1) {
    f32 percent = 0.4f;
    f32 ret = fabsf(arg1);

    if (arg0 < ret) {
        ret = 1;
    } else if (ret < (f32)arg0 * (1 - percent)) { //! float cast needed to match
        ret = (SQ(arg1) * (1 - percent)) / SQ((1 - percent) * arg0);
    } else {
        ret = 1 - (0.4f * SQ(arg0 - ret)) / SQ(0.4f * arg0);
    }

    return ret;
}

f32 func_8004389C(f32 arg0, f32 arg1, f32 arg2, f32 arg3) {
    f32 temp1 = arg0 - arg1;
    f32 temp2;
    f32 ret;

    if (fabsf(temp1) >= arg3) {
        temp2 = temp1 * arg2;
        ret = arg1 + temp2;
    } else {
        ret = arg0;
    }

    return ret;
}

f32 func_800438DC(f32 arg0, f32 arg1, f32 arg2, f32 arg3) {
    f32 temp1 = arg0 - arg1;
    f32 temp2;
    f32 ret;

    if (fabsf(temp1) >= arg3) {
        temp2 = temp1 * arg2;
        ret = arg1 + temp2;
    } else {
        ret = arg1;
    }

    return ret;
}

s16 func_8004391C(s16 arg0, s16 arg1, f32 arg2, s16 arg3) {
    s16 temp1 = arg0 - arg1;
    s16 temp2;
    s32 ret;

    if (ABS(temp1) >= arg3) {
        temp2 = temp1 * arg2 + 0.5f;
        ret = arg1 + temp2;
    } else {
        ret = arg0;
    }

    return ret;
}

s16 func_800439AC(s16 arg0, s16 arg1, f32 arg2, s16 arg3) {
    s16 temp1 = arg0 - arg1;
    s16 temp2;
    s32 ret;

    if (ABS(temp1) >= arg3) {
        temp2 = temp1 * arg2 + 0.5f;
        ret = arg1 + temp2;
    } else {
        ret = arg1;
    }

    return ret;
}

void func_80043A3C(Vec3f* arg0, Vec3f* arg1, f32 arg2, f32 arg3, f32 arg4) {
    arg1->x = func_8004389C(arg0->x, arg1->x, arg3, arg4);
    arg1->y = func_8004389C(arg0->y, arg1->y, arg2, arg4);
    arg1->z = func_8004389C(arg0->z, arg1->z, arg3, arg4);
}

void func_80043ABC(Camera* camera) {
    camera->unk_C0.z = 100.0f;
    camera->unk_C0.y = OREG(7);
    camera->unk_C0.x = OREG(6);
    camera->unk_CC.x = OREG(2) * 0.01f;
    camera->unk_CC.y = OREG(3) * 0.01f;
    camera->unk_CC.z = OREG(4) * 0.01f;
}

void func_80043B60(Camera* camera) {
    camera->unk_C0.x = OREG(27);
    camera->unk_C0.z = OREG(27);
    camera->unk_C0.y = OREG(27);
    camera->unk_CC.x = 0.001f;
    camera->unk_CC.y = 0.001f;
    camera->unk_CC.z = 0.001f;
}

Vec3f* func_80043BC4(Vec3f* arg0, Vec3s* arg1) {
    Vec3f sp4;

    sp4.x = arg1->x;
    sp4.y = arg1->y;
    sp4.z = arg1->z;

    *arg0 = sp4;
    return arg0;
}

Vec3f* func_80043C28(Vec3f* arg0, Vec3f* arg1, VecSph* arg2) {
    Vec3f sp24, sp18;
    func_8007C25C(&sp18, arg2);

    sp24.x = arg1->x + sp18.x;
    sp24.y = arg1->y + sp18.y;
    sp24.z = arg1->z + sp18.z;

    *arg0 = sp24;
    return arg0;
}

Vec3f* func_80043CAC(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3) {
    Vec3f sp4;

    sp4.x = arg1->x + (arg2->x * arg3);
    sp4.y = arg1->y + (arg2->y * arg3);
    sp4.z = arg1->z + (arg2->z * arg3);

    *arg0 = sp4;
    return arg0;
}

s32 func_80043D18(Camera* camera, Vec3f* arg1, struct_80043D18* arg2) {
    CollisionContext* colCtx;
    Vec3f sp68, sp5C, sp50;
    f32 temp_ret;
    CollisionPoly* sp48;
    s32 sp44;
    VecSph sp3C;

    colCtx = &camera->globalCtx->colCtx;
    func_8007C490(&sp3C, arg1, &arg2->unk_00);
    sp3C.r += 8.0f;
    func_80043C28(&sp5C, arg1, &sp3C);

    if (func_8003DD6C(colCtx, arg1, &sp5C, &sp68, &arg2->unk_18, 1, 1, 1, -1, &arg2->unk_24) == 0) {
        func_8007C0F8(&sp50, arg1, &arg2->unk_00);

        arg2->unk_0C.x = -sp50.x;
        arg2->unk_0C.y = -sp50.y;
        arg2->unk_0C.z = -sp50.z;

        sp68 = arg2->unk_00;
        sp68.y += 5.0f;
        temp_ret = func_8003CCA4(colCtx, &sp48, &sp44, &sp68);

        if ((arg2->unk_00.y - temp_ret) > 5.0f) {
            arg2->unk_00.x += arg2->unk_0C.x;
            arg2->unk_00.y += arg2->unk_0C.y;
            arg2->unk_00.z += arg2->unk_0C.z;
            return 0;
        }

        arg2->unk_18 = sp48;
        sp68.y = temp_ret + 1.0f;
        arg2->unk_24 = sp44;
    }

    arg2->unk_0C.x = arg2->unk_18->norm.x * (1.f / 32767);
    arg2->unk_0C.y = arg2->unk_18->norm.y * (1.f / 32767);
    arg2->unk_0C.z = arg2->unk_18->norm.z * (1.f / 32767);
    arg2->unk_00.x = arg2->unk_0C.x + sp68.x;
    arg2->unk_00.y = arg2->unk_0C.y + sp68.y;
    arg2->unk_00.z = arg2->unk_0C.z + sp68.z;

    return sp44 + 1;
}

void func_80043F34(Camera* camera, Vec3f* arg1, Vec3f* arg2) {
    struct_80043D18 sp20;
    Vec3s unused;

    sp20.unk_00 = *arg2;
    func_80043D18(camera, arg1, &sp20);
    *arg2 = sp20.unk_00;
}

// 242 lines
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80043F94.s")

void func_80044340(Camera* camera, Vec3f* arg1, Vec3f* arg2) {
    struct_80043D18 sp20;
    Vec3s unused;

    sp20.unk_00 = *arg2;
    func_80043F94(camera, arg1, &sp20);
    *arg2 = sp20.unk_00;
}

#ifdef NON_MATCHING
// ordering
s32 func_800443A0(Camera* camera, Vec3f* arg1, Vec3f* arg2) {
    s32 sp4C;
    Vec3f sp40;
    s32 sp3C;
    s32 sp38;
    CollisionPoly* sp34;

    sp34 = NULL; // this is moved to the top when it should be done in the middle of the function args being loaded
    if (func_8003DD6C(&camera->globalCtx->colCtx, arg1, arg2, &sp40, &sp34, 1, 1, 1, 0, &sp38) != 0) {
        if (func_80038B7C(sp34, arg1) < 0.0f) {
            return 1;
        }
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_800443A0.s")
#endif

f32 func_80044434(Camera* camera, Vec3f* arg1, Vec3f* arg2, s32* arg3) {
    s32 sp2C; // unused
    CollisionPoly* sp28;
    f32 temp_ret = func_8003C940(&camera->globalCtx->colCtx, &sp28, arg3, arg2);

    if (temp_ret == -32000.0f) {
        arg1->x = 0.0f;
        arg1->z = 0.0f;
        arg1->y = 1.0f;
    } else {
        arg1->x = sp28->norm.x * (1.f / 32767);
        arg1->y = sp28->norm.y * (1.f / 32767);
        arg1->z = sp28->norm.z * (1.f / 32767);
    }

    return temp_ret;
}

void func_80044510(Camera* camera, Vec3f* arg1) {
    Vec3f sp2C, sp20;
    s32 sp1C;

    sp2C = *arg1;
    sp2C.y += 80.0f;

    func_80044434(camera, &sp20, &sp2C, &sp1C);
}

// 125 lines (loop)
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80044568.s")

s16 func_80044740(Camera* camera, s32 arg1) {
    return func_80041A4C(&camera->globalCtx->colCtx, arg1, 50);
}

s32 func_8004476C(Camera* camera) {
    return func_80041C10(&camera->globalCtx->colCtx, camera->unk_148, 50);
}

s32 func_8004479C(Camera* camera, s32* arg1, Vec3f* arg2) {
    s32 temp_ret;
    PosRot sp20;
    s32 ret;

    func_8002EF44(&sp20, &camera->player->actor);
    temp_ret = func_80041A28(&camera->globalCtx->colCtx, arg2, *arg1);

    if (func_80041A4C(&camera->globalCtx->colCtx, temp_ret, *arg1) == 0) {
        ret = -1;
    } else {
        ret = temp_ret;
    }
    return ret;
}

s32 func_8004481C(Camera* camera, s16* arg1) {
    CollisionPoly* sp44;
    s32 sp40; // unused
    s32 sp3C;
    PosRot sp28;

    func_8002EF44(&sp28, &camera->player->actor);
    sp28.pos.y += Player_GetCameraYOffset(camera->player);
    if (func_8003C940(&camera->globalCtx->colCtx, &sp44, &sp3C, &sp28.pos) == -32000.0f) {
        return 0;
    }
    *arg1 = func_80041B80(&camera->globalCtx->colCtx, sp44, sp3C);
    return func_80041C98(&camera->globalCtx->colCtx, sp44, sp3C);
}

s32 func_800448CC(Camera* camera, f32* arg1) {
    PosRot sp34;
    s32 sp30;
    s32 temp_ret;

    func_8002EF44(&sp34, &camera->player->actor);
    *arg1 = sp34.pos.y;

    if (func_8004213C(camera->globalCtx, &camera->globalCtx->colCtx, sp34.pos.x, sp34.pos.z, arg1, &sp30) == 0) {
        *arg1 = -32000.0f;
        return -1;
    }
    if (!(camera->player->stateFlags1 & 0x8000000)) {
        *arg1 = -32000.0f;
        return -1;
    }

    temp_ret = func_80042538(&camera->globalCtx->colCtx, sp30);
    if ((temp_ret <= 0) || (func_80042548(&camera->globalCtx->colCtx, sp30) <= 0)) {
        return -2;
    }

    return temp_ret;
}

f32 func_800449AC(Camera* camera, Vec3f* arg1, s32* arg2) {
    PosRot sp2C;
    f32 sp28;
    s32 sp24;

    func_8002EF44(&sp2C, &camera->player->actor);
    sp28 = sp2C.pos.y;

    if (func_8004213C(camera->globalCtx, &camera->globalCtx->colCtx, arg1->x, arg1->z, &sp28, &sp24) == 0) {
        return -32000.f;
    }
    if (sp28 < arg1->y) {
        return -32000.f;
    }

    *arg2 = func_8004259C(&camera->globalCtx->colCtx, sp24);
    return sp28;
}

s16 func_80044A74(Vec3f* arg0, Vec3f* arg1) {
    return Math_atan2f(arg1->x - arg0->x, arg1->z - arg0->z) * (180.0f / M_PI) * (32767.5f / 180.0f) + 0.5f;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80044ADC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80044E68.s")

f32 func_800450A4(Camera* camera, f32 arg1) {
    f32 ret;

    if (camera->unk_100 < (OREG(41) * 0.01f)) {
        ret = OREG(41) * 0.01f;
    } else if (arg1 <= camera->unk_100) {
        ret = arg1;
    } else {
        ret = OREG(42) * 0.01f * camera->unk_100;
    }

    return ret;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80045128.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80045254.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80045350.s")

void* func_8004545C(Vec3f* arg0, s32 arg1, s32 arg2, struct_80043D18* arg3, struct_80043D18* arg4) {
    Vec3f sp24;

    if (func_800427B4(arg3->unk_18, arg4->unk_18, arg1, arg2, &sp24) == 0) {
        osSyncPrintf(VT_COL(YELLOW, BLACK) "camera: corner check no cross point %x %x\n" VT_RST, arg3, arg4);
        *arg0 = arg3->unk_00;
        return arg0;
    }

    *arg0 = sp24;
    return arg0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80045508.s")

#ifdef NON_MATCHING
// CLOSE: stack is 4 bytes too big
f32 func_80045714(Vec3f* a, s16 b, s16 c, f32 arg3) {
    VecSph sp1C;
    f32 sp18;

    func_8007C3F4(&sp1C, a);
    sp18 = Math_Coss(sp1C.phi);
    sp18 = fabsf(Math_Coss(b - sp1C.theta) * sp18);
    return Math_Coss(b - c) * (sp18 * arg3);
}
#else
f32 func_80045714(Vec3f* a, s16 b, s16 c, f32 arg3);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80045714.s")
#endif

f32 func_8007C0A8(f32, f32);

s32 func_800457A8(Camera* camera, VecSph* arg1, f32 arg2, s16 arg3) {
    f32 unused;
    Vec3f sp50;
    Vec3f sp44;
    s32 unused2;
    PosRot* sp2C;
    f32 temp_ret;

    temp_ret = Player_GetCameraYOffset(camera->player);

    sp50.x = 0.f;
    sp50.z = 0.f;
    sp50.y = temp_ret + arg2;

    sp2C = &camera->unk_94;
    if (arg3 != 0) {
        sp50.y -= func_8007C0A8(func_80045714(&camera->unk_108, sp2C->rot.y, arg1->theta, OREG(9)), temp_ret);
    }
    func_80043A3C(&sp50, &camera->unk_E4, camera->unk_CC.y, camera->unk_CC.x, 0.1f);

    sp44.x = sp2C->pos.x + camera->unk_E4.x;
    sp44.y = sp2C->pos.y + camera->unk_E4.y;
    sp44.z = sp2C->pos.z + camera->unk_E4.z;
    func_80043A3C(&sp44, &camera->at, camera->unk_100, camera->unk_100, 0.2f);

    return 1;
}

#ifdef NON_MATCHING
// CLOSE: regalloc
s32 func_800458D4(Camera* camera, VecSph* arg1, f32 arg2, f32* arg3, s16 arg4) {
    f32 phi_f2;
    Vec3f sp60;
    Vec3f sp54;
    f32 temp_ret;
    PosRot* temp_s1;
    f32 sp48;
    s32 pad[2];

    sp60.y = Player_GetCameraYOffset(camera->player) + arg2;
    sp60.x = 0.0f;
    sp60.z = 0.0f;

    temp_s1 = &camera->unk_94;
    if (arg4 != 0) {
        sp60.y -= func_80045714(&camera->unk_108, temp_s1->rot.y, arg1->theta, OREG(9));
    }

    sp48 = temp_s1->pos.y - *arg3;
    temp_ret = Math_atan2f(sp48, func_8007C028(&camera->at, &camera->eye)); // f2 and f14 are swapped

    if (OREG(32) * (M_PI / 180) < temp_ret) {
        phi_f2 = 1.0f - sinf(temp_ret - OREG(32) * (M_PI / 180));
    } else if (OREG(33) * (M_PI / 180) > temp_ret) {
        phi_f2 = 1.0f - sinf(OREG(33) * (M_PI / 180) - temp_ret);
    } else {
        phi_f2 = 1.0f;
    }

    sp60.y -= sp48 * phi_f2;
    func_80043A3C(&sp60, &camera->unk_E4, OREG(29) * 0.01f, OREG(30) * 0.01f, 0.1f);

    sp54.x = temp_s1->pos.x + camera->unk_E4.x;
    sp54.y = temp_s1->pos.y + camera->unk_E4.y;
    sp54.z = temp_s1->pos.z + camera->unk_E4.z;
    func_80043A3C(&sp54, &camera->at, camera->unk_100, camera->unk_100, 0.2f);

    return 1;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_800458D4.s")
#endif

s32 func_80045B08(Camera* camera, VecSph* arg1, f32 arg2, s16 arg3) {
    f32 phi_f2;
    Vec3f sp48;
    Vec3f sp3C;
    f32 sp38; // unused
    f32 temp_ret;
    PosRot* temp_s1;

    sp48.y = Player_GetCameraYOffset(camera->player) + arg2;
    sp48.x = 0.0f;
    sp48.z = 0.0f;

    temp_ret = Math_Sins(arg3);
    temp_s1 = &camera->unk_94;

    if (temp_ret < 0.0f) {
        phi_f2 = Math_Coss(temp_s1->rot.y - arg1->theta);
    } else {
        phi_f2 = -Math_Coss(temp_s1->rot.y - arg1->theta);
    }

    sp48.y -= temp_ret * phi_f2 * OREG(9);
    func_80043A3C(&sp48, &camera->unk_E4, camera->unk_CC.y, camera->unk_CC.x, 0.1f);

    sp3C.x = temp_s1->pos.x + camera->unk_E4.x;
    sp3C.y = temp_s1->pos.y + camera->unk_E4.y;
    sp3C.z = temp_s1->pos.z + camera->unk_E4.z;
    func_80043A3C(&sp3C, &camera->at, camera->unk_100, camera->unk_100, 0.2f);

    return 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80045C74.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_800460A8.s")

s32 func_800466F8(Camera* camera, VecSph* arg1, f32 arg2, f32* arg3, s16 arg4) {
    s32 phi_v0;
    Vec3f sp60;
    Vec3f sp54;
    f32 sp50; // unused
    f32 sp4C; // unused
    f32 sp48; // I doubt this is a Vec3f
    Player* sp44;
    PosRot sp30;

    sp48 = Player_GetCameraYOffset(camera->player);
    sp44 = camera->player;
    func_8002EF44(&sp30, sp44->rideActor);

    if ((*(s32*)((s32)(sp44->rideActor) + 0x1F0) & 4) != 0) { // actors aren't this big, is rideActor a different type?
        phi_v0 = 1;
    } else {
        phi_v0 = 0;
    }

    if (phi_v0 != 0) {
        sp30.pos.y -= 49.f;
        *arg3 = func_8004389C(sp30.pos.y, *arg3, 0.1f, 0.2f);
        camera->unk_100 = func_8004389C(0.4f, camera->unk_100, 0.2f, 0.02f);
    } else {
        *arg3 = func_8004389C(sp30.pos.y, *arg3, 0.5f, 0.2f);
    }

    sp60.x = 0.0f;
    sp60.z = 0.0f;
    sp60.y = sp48 + arg2;

    if (arg4 != 0) {
        sp60.y -= func_80045714(&camera->unk_108, camera->unk_94.rot.y, arg1->theta, OREG(9));
    }

    func_80043A3C(&sp60, &camera->unk_E4, camera->unk_CC.y, camera->unk_CC.x, 0.1f);

    sp54.x = camera->unk_E4.x + sp30.pos.x;
    sp54.y = camera->unk_E4.y + sp30.pos.y;
    sp54.z = camera->unk_E4.z + sp30.pos.z;
    func_80043A3C(&sp54, &camera->at, camera->unk_100, camera->unk_100, 0.2f);

    return 1;
}

void func_800468CC(Camera* camera, f32 arg1, f32 arg2, f32 arg3) {
    f32 sp1C;
    f32 phi_f12;

    if (arg1 < arg2) {
        sp1C = arg2;
        phi_f12 = OREG(6);
    } else if (arg3 < arg1) {
        sp1C = arg3;
        phi_f12 = OREG(6);
    } else {
        sp1C = arg1;
        phi_f12 = 1.0f;
    }

    camera->unk_C0.x = func_8004389C(phi_f12, camera->unk_C0.x, OREG(25) * 0.01f, 0.1f);
    func_8004389C(sp1C, camera->unk_DC, 1.f / camera->unk_C0.x, 0.2f);
}

void func_800469C0(Camera* camera, f32 arg1, f32 arg2, f32 arg3, s16 arg4) {
    f32 sp1C;
    f32 phi_f12;

    if (arg1 < arg2) {
        sp1C = arg2;

        if (arg4 != 0) {
            phi_f12 = OREG(6) * 0.5f;
        } else {
            phi_f12 = OREG(6);
        }
    } else if (arg3 < arg1) {
        sp1C = arg3;

        if (arg4 != 0) {
            phi_f12 = OREG(6) * 0.5f;
        } else {
            phi_f12 = OREG(6);
        }
    } else {
        sp1C = arg1;

        if (arg4 != 0) {
            phi_f12 = OREG(6);
        } else {
            phi_f12 = 1.0f;
        }
    }

    camera->unk_C0.x = func_8004389C(phi_f12, camera->unk_C0.x, OREG(25) * 0.01f, 0.1f);
    func_8004389C(sp1C, camera->unk_DC, 1.f / camera->unk_C0.x, 0.2f);
}

#ifdef NON_MATCHING
// lots of regalloc and stack issues, but that's it
void func_80046B44(Camera* camera, s16 arg1, s16 arg2, s16 arg3) {
    s16 sp1C;
    s16 phi_v1;
    s16 phi_v0;
    f32 phi_a2;

    phi_v1 = ABS(arg1);
    if (arg3 > 0) {
        phi_v0 = Math_Coss(arg3) * arg3;
    } else {
        phi_v0 = arg3;
    }
    sp1C = arg2 - phi_v0;
    if (ABS(sp1C) < phi_v1) {
        phi_a2 = (1.0f / camera->unk_C0.y) * 3.0f;
    } else {
        phi_a2 = (1.0f / camera->unk_C0.y) * func_800437F0(0.8f, 1.0f - phi_v0 * (1.0f / OREG(5)));
    }
    func_8004391C(sp1C, arg1, phi_a2, 0xa);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80046B44.s")
#endif

#ifdef NON_MATCHING
// stack, regalloc, tiny bit of ordering
s16 func_80046CB4(Camera* camera, s16 arg1, s16 arg2, f32 arg3, f32 arg4) {
    f32 sp34;
    s16 sp1C;
    f32 temp_ret;
    f32 phi_f14;
    s16 temp;

    if (camera->unk_D8 > 0.001f) {
        temp = arg1 - 0x7fff; // this is probably some kind of cast that I'm too stupid to know
        sp1C = arg2 - temp;
        phi_f14 = (s16)(sp1C - 0x7fff) * (1.0f / 32767.0f);
    } else {
        temp = arg1 - 0x7fff;
        sp1C = arg2 - temp;
        phi_f14 = OREG(48) * 0.01f;
    }
    temp_ret = func_800437F0(arg3, phi_f14);
    sp34 = ((1.0f - temp_ret) * arg4) + temp_ret;
    if (sp34 < 0.0f) {
        sp34 = 0.0f;
    }
    // ordering stuff here
    return (s16)((sp1C * sp34) * (1.0f / camera->unk_C0.z) * func_800437F0(0.5f, camera->unk_E0)) + arg1;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80046CB4.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80046E20.s")

s32 func_80047394(Camera* camera) {
    return 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_800473A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80047F64.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80048804.s")

s32 func_80048FCC(Camera* camera) {
    return func_80047394(camera);
}

s32 func_80048FEC(Camera* camera) {
    return func_80047394(camera);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_8004900C.s")

s32 func_80049984(Camera* camera) {
    return func_80047394(camera);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_800499A4.s")

s32 func_80049A08(Camera* camera) {
    return func_80047394(camera);
}

s32 func_80049A28(Camera* camera) {
    return func_80047394(camera);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80049A48.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_8004A250.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_8004ACE0.s")

s32 func_8004B560(Camera* camera) {
    return func_80047394(camera);
}

s32 func_8004B580(Camera* camera) {
    return func_80047394(camera);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_8004B5A0.s")

s32 func_8004C5F4(Camera* camera) {
    return func_80047394(camera);
}

s32 func_8004C614(Camera* camera) {
    func_80047394(camera);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_8004C634.s")

s32 func_8004CA4C(Camera* camera) {
    return func_80047394(camera);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_8004CA6C.s")

s32 func_8004D9C4(Camera* camera) {
    return func_80047394(camera);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_8004D9E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_8004E460.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_8004F3A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_8004F6A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_8004F9D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_8004FDE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80050068.s")

s32 func_8005043C(Camera* camera) {
    return func_80047394(camera);
}

s32 func_8005045C(Camera* camera) {
    return func_80047394(camera);
}

s32 func_8005047C(Camera* camera) {
    return func_80047394(camera);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_8005049C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80050B24.s")

s32 func_800511A0(Camera* camera) {
    return func_80047394(camera);
}

s32 func_800511C0(Camera* camera) {
    return func_80047394(camera);
}

s32 func_800511E0(Camera* camera) {
    osSyncPrintf("chau!chau!\n");
    return func_800473A0(camera);
}

s32 func_80051210(Camera* camera) {
    return func_80047394(camera);
}

s32 func_80051230(Camera* camera) {
    return func_80047394(camera);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80051250.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_800515A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80051B3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80051F58.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80052460.s")

s32 func_800529D8(Camera* camera) {
    return func_80047394(camera);
}

s32 func_800529F8(Camera* camera) {
    return func_80047394(camera);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80052A18.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80052B90.s")

s32 func_80052DEC(Camera* camera) {
    return func_80047394(camera);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80052E0C.s")

void Camera_DebugPrintSplineArray(char* name, s16 length, SplineData splines[]) {
    s32 i;

    osSyncPrintf("static SplinedatZ  %s[] = {\n", name);
    for (i = 0; i < length; i++) {
        osSyncPrintf("    /* key frame %2d */ {\n", i);
        osSyncPrintf("    /*     code     */ %d,\n", splines[i].code);
        osSyncPrintf("    /*     z        */ %d,\n", splines[i].z);
        osSyncPrintf("    /*     T        */ %d,\n", splines[i].T);
        osSyncPrintf("    /*     zoom     */ %f,\n", splines[i].zoom);
        osSyncPrintf("    /*     pos      */ { %d, %d, %d }\n", splines[i].pos.x, splines[i].pos.y, splines[i].pos.z);
        osSyncPrintf("    },\n");
    }
    osSyncPrintf("};\n\n");
}

void Camera_Vec3fCopy(Vec3f* src, Vec3f* dst) {
    dst->x = src->x;
    dst->y = src->y;
    dst->z = src->z;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80054478.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_800544D0.s")

s32 func_80054774(Camera* camera) {
    return func_80047394(camera);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80054794.s")

s32 func_8005527C(Camera* camera) {
    return func_80047394(camera);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_8005529C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80055C78.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80055F64.s")

s32 func_80055F98(Camera* camera) {
    return func_80047394(camera);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80055FB8.s")

s32 func_80056430(Camera* camera) {
    return func_80047394(camera);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80056450.s")

s32 func_800565F4(Camera* camera) {
    return func_80047394(camera);
}

s32 func_80056614(Camera* camera) {
    return func_80051B3C(camera);
}

s32 func_80056634(Camera* camera) {
    return func_80047394(camera);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80056654.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_800567F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80056C20.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80056F6C.s")

s32 func_80057428(Camera* camera) {
    return func_80047394(camera);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80057448.s")

Camera* func_80057B98(View* view, CollisionContext* colCtx, GlobalContext* globalCtx) {
    Camera* newCamera = ZeldaArena_MallocDebug(sizeof(*newCamera), "../z_camera.c", 9370);
    if (newCamera != NULL) {
        osSyncPrintf(VT_FGCOL(BLUE) "camera: create --- allocate %d byte" VT_RST "\n", sizeof(*newCamera) * 4);
        func_80057C6C(newCamera, view, colCtx, globalCtx);
    } else {
        osSyncPrintf(VT_COL(RED, WHITE) "camera: create: not enough memory\n" VT_RST);
    }
    return newCamera;
}

void func_80057C14(Camera* camera) {
    if (camera != NULL) {
        osSyncPrintf(VT_FGCOL(BLUE) "camera: destroy ---" VT_RST "\n");
        ZeldaArena_FreeDebug(camera, "../z_camera.c", 9391);
    } else {
        osSyncPrintf(VT_COL(YELLOW, BLACK) "camera: destroy: already cleared\n" VT_RST);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80057C6C.s")

s32 func_8005AD40(Camera* camera, s32 arg1, s16 arg2, f32 arg3, s16 arg4, s16 arg5, s16 arg6);

void func_80057FC4(Camera* camera) {
    if (camera != &camera->globalCtx->cameras[0]) {
        camera->unk_154 = camera->unk_142 = 33;
        camera->unk_14C &= ~0x4;
    } else if (camera->globalCtx->roomCtx.curRoom.mesh->polygon.type != 1) {
        switch (camera->globalCtx->roomCtx.curRoom.unk_03) {
            case 1:
                func_8005AD40(camera, 0, -99, 0, 0, 18, 10);
                camera->unk_154 = camera->unk_142 = 3;
                break;
            case 0:
                osSyncPrintf("camera: room type: default set field\n");
                func_8005AD40(camera, 0, -99, 0, 0, 18, 10);
                camera->unk_154 = camera->unk_142 = 1;
                break;
            default:
                osSyncPrintf("camera: room type: default set etc (%d)\n", camera->globalCtx->roomCtx.curRoom.unk_03);
                func_8005AD40(camera, 0, -99, 0, 0, 18, 10);
                camera->unk_154 = camera->unk_142 = 1;
                camera->unk_14C |= 4;
                break;
        }
    } else {
        osSyncPrintf("camera: room type: prerender\n");
        camera->unk_154 = camera->unk_142 = 33;
        camera->unk_14C &= ~0x4;
    }
}

void Camera_Stub80058140(Camera* camera) {
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80058148.s")

typedef struct {
    s16 val;
    s16 preg;
} PRegSet;
typedef struct {
    s16 unk_00;
    s16 unk_02;
    PRegSet* unk_04;
} unk_D_8011D064_unk4;
typedef struct {
    s32 unk_00;
    unk_D_8011D064_unk4* unk_04;
} unk_D_8011D064;
extern unk_D_8011D064 D_8011D064[];

#ifdef NON_MATCHING
void Camera_ChangeStatus(Camera* camera, s16 status) {
    s32 temp_s1;
    unk_D_8011D064_unk4* temp_v0;
    s32 phi_a1;
    s32 phi_a2;
    s16 phi_v0;
    PRegSet* phi_s0;
    s32 phi_s1;

    if (PREG(82)) {
        phi_a1 = status == 7 ? 0x6F : 0x78;
        phi_a2 = camera->status != 7 ? 0x6F : 0x78;
        osSyncPrintf("camera: change camera status: cond %c%c\n", phi_a1, phi_a2);
    }
    if (PREG(82)) {
        osSyncPrintf("camera: res: stat (%d/%d/%d)\n", camera->unk_164, camera->unk_142, camera->unk_144);
    }
    if (status == 7 && camera->status != 7) {
        temp_v0 = &D_8011D064[camera->unk_142].unk_04[camera->unk_144];
        if (temp_v0->unk_02 > 0) {
            phi_s0 = temp_v0->unk_04;
            phi_s1 = 0;
        loop_12:
            PREG(phi_s0->preg) = phi_s0->val;
            if (PREG(82) != 0) {
                osSyncPrintf("camera: change camera status: PREG(%02d) = %d\n", phi_s0->preg, phi_s0->val);
            }
            temp_s1 = phi_s1 + 1;
            phi_s0 = phi_s0 + 4;
            phi_s1 = temp_s1;
            if (temp_s1 < D_8011D064[camera->unk_142].unk_04[camera->unk_144].unk_02) {
                goto loop_12;
            }
        }
    }
    camera->status = status;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_ChangeStatus.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_800584E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_800588B4.s")

s32 func_80058CF8(Camera* camera) {
    camera->unk_152 &= ~1;

    if (camera->globalCtx->roomCtx.curRoom.unk_02 == 3) {
        camera->unk_152 |= 1;
    }

    return 1;
}

extern s16 D_8011DAFC[];
extern char D_80119F8C[][12];
#if 0
char D_80119F8C[][12] = {
    "NONE      ",
    "NORMAL0    ",
    "NORMAL1    ",
    "DUNGEON0   ",
    "DUNGEON1   ",
    "NORMAL3    ",
    "HORSE0     ",
    "BOSS_GOMA  ",
    "BOSS_DODO  ",
    "BOSS_BARI  ",
    "BOSS_FGANON",
    "BOSS_BAL   ",
    "BOSS_SHADES",
    "BOSS_MOFA  ",
    "BOSS_TWIN0 ",
    "BOSS_TWIN1 ",
    "BOSS_GANON1",
    "BOSS_GANON2",
    "TOWER0     ",
    "TOWER1     ",
    "FIXED0     ",
    "FIXED1     ",
    "CIRCLE0    ",
    "CIRCLE2    ",
    "CIRCLE3    ",
    "PREREND0   ",
    "PREREND1   ",
    "PREREND3   ",
    "DOOR0      ",
    "DOORC      ",
    "RAIL3      ",
    "START0     ",
    "START1     ",
    "FREE0      ",
    "FREE2      ",
    "CIRCLE4    ",
    "CIRCLE5    ",
    "DEMO0      ",
    "DEMO1      ",
    "MORI1      ",
    "ITEM0      ",
    "ITEM1      ",
    "DEMO3      ",
    "DEMO4      ",
    "UFOBEAN    ",
    "LIFTBEAN   ",
    "SCENE0     ",
    "SCENE1     ",
    "HIDAN1     ",
    "HIDAN2     ",
    "MORI2      ",
    "MORI3      ",
    "TAKO       ",
    "SPOT05A    ",
    "SPOT05B    ",
    "HIDAN3     ",
    "ITEM2      ",
    "CIRCLE6    ",
    "NORMAL2    ",
    "FISHING    ",
    "DEMOC      ",
    "UO_FIBER   ",
    "DUNGEON2   ",
    "TEPPEN     ",
    "CIRCLE7    ",
    "NORMAL4    ",
};
#endif
extern GlobalContext* D_8015BD7C;
extern s32 D_8011D398;
s32 func_80058D34(Camera* camera) {
    s32 phi_a2 = 0;

    if (D_8011D394 == 0) {
        if (camera->globalCtx->activeCamera == 0) {
            if (~(D_8015BD7C->state.input[2].press.in.button | ~U_CBUTTONS) == 0) {
                osSyncPrintf("attention sound URGENCY\n");
                func_80078884(NA_SE_SY_ATTENTION_URGENCY);
            }
            if (~(D_8015BD7C->state.input[2].press.in.button | ~D_CBUTTONS) == 0) {
                osSyncPrintf("attention sound NORMAL\n");
                func_80078884(NA_SE_SY_ATTENTION_ON);
            }

            if (~(D_8015BD7C->state.input[2].press.in.button | ~R_CBUTTONS) == 0) {
                phi_a2 = 1;
            }
            if (~(D_8015BD7C->state.input[2].press.in.button | ~L_CBUTTONS) == 0) {
                phi_a2 = -1;
            }
            if (phi_a2 != 0) {
                D_8011D398 = (D_8011D398 + phi_a2) % 6;
                if (func_8005A77C(camera, D_8011DAFC[D_8011D398]) > 0) {
                    osSyncPrintf("camera: force change SET to %s!\n", D_80119F8C[D_8011DAFC[D_8011D398]]);
                }
            }
        }
    }
    return 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80058E8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_800591EC.s")

void func_80059EC8(Camera* camera) {
    Camera* sp24 = camera->globalCtx->cameraPtrs[0];
    Player* player = (Player*)camera->globalCtx->actorCtx.actorList[2].first;

    if (camera->unk_160 == 0) {
        Gameplay_ChangeCameraStatus(camera->globalCtx, camera->unk_162, 7);

        if ((camera->unk_162 == 0) && (camera->unk_168 != 0)) {
            player->actor.freeze = 0;
            player->stateFlags1 &= ~0x20000000;

            if (player->action != 0) {
                func_8002DF54(camera->globalCtx, &player->actor, 7);
                osSyncPrintf("camera: player demo end!!\n");
            }

            sp24->unk_14C |= 8;
        }

        if (camera->globalCtx->cameraPtrs[camera->unk_14E]->unk_162 == camera->unk_164) {
            camera->globalCtx->cameraPtrs[camera->unk_14E]->unk_162 = camera->unk_162;
        }

        if (camera->globalCtx->cameraPtrs[camera->unk_162]->unk_14E == camera->unk_164) {
            camera->globalCtx->cameraPtrs[camera->unk_162]->unk_14E = camera->unk_14E;
        }

        if (camera->globalCtx->cameraPtrs[camera->unk_162]->unk_164 == 0) {
            camera->globalCtx->cameraPtrs[camera->unk_162]->unk_15E = 0;
        }

        camera->unk_162 = 0;
        camera->unk_14E = camera->unk_162;
        camera->unk_160 = -1;
        camera->globalCtx->envCtx.unk_E1 = 0;

        Gameplay_ClearCamera(camera->globalCtx, camera->unk_164);
    }
}

s32 func_8005A02C(Camera* camera) {
    camera->unk_14C |= 0xC;
    camera->unk_14C &= ~(0x1000 | 0x8);
    return 1;
}

#ifdef NON_MATCHING
extern char D_8011A2A4[21][12];
extern char D_80119F8C[66][12];
extern s32 D_8011DB14;
s32 func_8005A04C(Camera* camera, s16 type, u8 arg2) {
    s32 phi_v0;
    u32 temp_t8;
    s32 phi_at;

    if (QREG(89)) {
        osSyncPrintf("+=+(%d)+=+ recive request -> %s\n", camera->globalCtx->state.frames, D_8011A2A4[type]);
    }

    if ((camera->unk_14C & 0x20) && (arg2 == 0)) {
        camera->unk_14A |= 0x20;
        return -1;
    } else if (!((D_8011D064[camera->unk_142].unk_00 & 0x3FFFFFFF) & (1 << type))) {
        if (type == 6) {
            camera = camera;
            osSyncPrintf("camera: error sound\n", camera);
            func_80078884(NA_SE_SY_ERROR);
        }
        if (camera->unk_144 != 0) {
            osSyncPrintf("\x1b[43;30mcamera: change camera mode: force NORMAL: %s %s refused\n\x1b[m",
                         D_80119F8C[camera->unk_142], D_8011A2A4[type]);
            camera->unk_144 = 0;
            func_80045128(camera, camera->unk_144);
            func_8005A02C(camera);
            phi_at = 0xC0000000;
        } else {
            camera->unk_14A = (s16)(camera->unk_14A | 0x20);
            camera->unk_14A = (s16)(camera->unk_14A | 2);
            return 0;
        }
    } else if ((type == camera->unk_144) && (arg2 == 0)) {
        camera->unk_14A |= 0x20;
        camera->unk_14A |= 2;
        return -1;
    } else {
        camera->unk_14A |= 0x20;
        camera->unk_14A |= 2;
        camera = camera;
        func_80045128(camera, type);
        temp_t8 = type - 1;
        phi_v0 = 0;
        switch (type) {
            default:
                break;
            case 5: // switch 1
                phi_v0 = 0x20;
                break;
            case 3: // switch 1
                phi_v0 = 4;
                break;
            case 1: // switch 1
                phi_v0 = 0;
                if (camera->unk_A8 != NULL) {
                    phi_v0 = 0;
                    if (camera->unk_A8->x != 0x32) {
                        phi_v0 = 8;
                    }
                }
                break;
            case 0:  // switch 1
            case 2:  // switch 1
            case 7:  // switch 1
            case 14: // switch 1
            case 18: // switch 1
                phi_v0 = 2;
                break;
        }

        switch (camera->unk_144) {
            default:
                break;
            case 6: // switch 2
                if ((phi_v0 & 0x20) != 0) {
                    camera->unk_15E = (u16)0xAU;
                }
                break;
            case 1: // switch 2
                if ((phi_v0 & 0x10) != 0) {
                    camera->unk_15E = (u16)0xAU;
                }
                phi_v0 |= 1;
                break;
            case 17: // switch 2
                phi_v0 |= 1;
                break;
            case 2: // switch 2
                if ((phi_v0 & 8) != 0) {
                    camera->unk_15E = (u16)0xAU;
                }
                phi_v0 |= 1;
                break;
            case 4: // switch 2
                if ((phi_v0 & 4) != 0) {
                    camera->unk_15E = (u16)0xAU;
                }
                phi_v0 |= 1;
                break;
            case 8:  // switch 2
            case 15: // switch 2
            case 19: // switch 2
                phi_v0 |= 1;
                break;
            case 0: // switch 2
                if ((phi_v0 & 0x10) != 0) {
                    camera->unk_15E = (u16)0xAU;
                }
                break;
        }
        phi_v0 &= ~0x10;
        D_8011DB14 = phi_v0;
        if (camera->status == 7) {
            switch (phi_v0) {
                case 1:
                    func_80078884(NA_SE_PL_WALK_GROUND);
                    break;
                case 2:
                    if (1 == camera->globalCtx->roomCtx.curRoom.unk_03) {
                        func_80078884(NA_SE_SY_ATTENTION_URGENCY);
                    } else {
                        func_80078884(NA_SE_SY_ATTENTION_ON);
                    }
                    break;
                case 4:
                    func_80078884(NA_SE_SY_ATTENTION_URGENCY);
                    break;
                case 8:
                    func_80078884(NA_SE_SY_ATTENTION_ON);
                    break;
            }
        }
        func_8005A02C(camera);
        camera->unk_144 = type;
        phi_at = 0x80000000;
    }
    return type | phi_at;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_8005A04C.s")
#endif

void func_8005A444(Camera* camera, s16 arg1) {
    func_8005A04C(camera, arg1, 0);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_8005A470.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_8005A548.s")

s32 func_8005A77C(Camera* camera, s16 arg1) {
    return func_8005A548(camera, arg1, 0);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_8005A7A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_8005A8C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_8005A948.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_8005A970.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_8005A9CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_8005AA1C.s")

#ifdef NON_MATCHING
// Ordering
s32 func_8005AA90(Camera* arg0, s32 arg1, Vec3f* arg2) {
    Vec3f sp4;

    if (arg2 != NULL) {
        switch (arg1) {
            case 1:
                arg0->unk_15C &= ~0x19;
                arg0->at = *arg2;
                break;
            case 16:
                arg0->unk_15C &= ~0x19;
                arg0->unk_AC = *arg2;
                break;
            case 8:
                if (arg0->unk_142 == 0x3C || arg0->unk_142 == 0x2B) {
                    break;
                }
                arg0->unk_A8 = arg2;
                arg0->unk_15C &= ~0x19;
                break;
            case 2:
                sp4 = *arg2;
                arg0->eye = arg0->unk_74 = sp4;
                break;
            case 4:
                arg0->unk_68 = *arg2;
                break;
            case 32:
                arg0->unk_FC = arg2->x;
                break;
            case 0x40:
                arg0->unk_15A = arg2->x * (M_PI / 180.0f) + 0.5f;
                break;
            default:
                return 0;
        }
        arg0->unk_15C |= arg1;
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_8005AA90.s")
#endif

s32 func_8005AC48(Camera* camera, s16 arg1) {
    camera->unk_14C = arg1;
    return 1;
}

s32 func_8005AC60(Camera* camera) {
    camera->unk_15E = 0;
    return 1;
}

s32 func_8005AC6C(Camera* camera, s32 arg1, s32 arg2, Player* player, s16 arg4) {
    PosRot sp24;

    camera->unk_124 = arg1;
    camera->unk_128 = arg2;
    camera->unk_12C = arg4;

    if (camera->unk_12C != 0) {
        camera->player = player;
        func_8002EF44(&sp24, &player->actor);
        camera->unk_94 = sp24;

        camera->unk_156 = -1;
        camera->unk_D8 = 0.0f;
        camera->unk_E0 = 0.0f;
    }

    return 1;
}

s16 func_8005ACFC(Camera* camera, s16 arg1) {
    camera->unk_14C |= arg1;
    return camera->unk_14C;
}

s16 func_8005AD1C(Camera* camera, s16 arg1) {
    camera->unk_14C &= ~arg1;
    return camera->unk_14C;
}

s32 func_8005AD40(Camera* camera, s32 arg1, s16 arg2, f32 arg3, s16 arg4, s16 arg5, s16 arg6) {
    if ((camera->unk_142 == 43) || (camera->unk_142 == 29)) {
        return 0;
    }

    camera->unk_00 = arg1;
    camera->unk_06 = arg4;
    camera->unk_08 = arg5;
    camera->unk_0A = arg6;
    camera->unk_04 = arg2;

    if (arg2 == -99) {
        func_80045128(camera, camera->unk_144);
        return -99;
    }

    if (arg2 == -1) {
        func_8005A77C(camera, 29);
        osSyncPrintf(".... change default door camera (set %d)\n", 29);
    } else {
        s32 ret = func_80044740(camera, arg2);
        camera->unk_14A |= 0x40;

        if (func_8005A77C(camera, ret) >= 0) {
            camera->unk_148 = arg2;
            camera->unk_14A |= 4;
        }

        // this is likely important for labelling unk_148 and unk_142
        osSyncPrintf("....change door camera ID %d (set %d)\n", camera->unk_148, camera->unk_142);
    }

    func_80045128(camera, camera->unk_144);
    return -1;
}

s32 func_8005AE64(Camera* camera, Camera* otherCamera) {
    s32 unused;
    Vec3f sp30;

    camera->unk_E4.x = 0.0f;
    camera->unk_E4.y = 0.0f;
    camera->unk_E4.z = 0.0f;
    camera->unk_100 = 0.1f;
    camera->at = otherCamera->at;

    sp30 = otherCamera->eye;
    camera->unk_74 = sp30;
    camera->eye = sp30;

    camera->unk_DC = func_8007BF90(&camera->at, &camera->eye);
    camera->unk_FC = otherCamera->unk_FC;
    camera->unk_15A = otherCamera->unk_15A;
    func_80043B60(camera);

    if (camera->player != NULL) {
        func_8002EF14(&camera->unk_94, &camera->player->actor);
        camera->unk_E4.x = camera->at.x - camera->unk_94.pos.x;
        camera->unk_E4.y = camera->at.y - camera->unk_94.pos.y;
        camera->unk_E4.z = camera->at.z - camera->unk_94.pos.z;
        camera->unk_DC = func_8007BF90(&camera->unk_94.pos, &camera->eye);
        camera->unk_CC.x = 1.0f;
        camera->unk_CC.y = 1.0f;
    }
    return 1;
}

s32 func_8005AFA8() {
    return D_8011D394;
}

Vec3f* func_8005AFB4(Vec3f* dst, Camera* camera) {
    *dst = camera->unk_80;
    return dst;
}

void Camera_SetCameraData(Camera* camera, s16 arg1, s32 arg2, s32 arg3, s16 arg4, s16 arg5) {
    if (arg1 & 0x1) {
        camera->unk_124 = arg2;
    }

    if (arg1 & 0x2) {
        camera->unk_128 = arg3;
    }

    if (arg1 & 0x4) {
        camera->unk_12C = arg4;
    }

    if (arg1 & 0x8) {
        camera->unk_12E = arg5;
    }

    if (arg1 & 0x10) {
        osSyncPrintf(VT_COL(RED, WHITE) "camera: setCameraData: last argument not alive!\n" VT_RST);
    }
}

s32 func_8005B044() {
    if (QREG(0) == 0) {
        QREG(2) = 1;
        QREG(10) = -1;
        QREG(11) = 100;
        QREG(12) = 80;
        QREG(20) = 90;
        QREG(21) = 10;
        QREG(22) = 10;
        QREG(23) = 50;
        QREG(24) = 6000;
        QREG(25) = 240;
        QREG(26) = 40;
        QREG(27) = 85;
        QREG(28) = 55;
        QREG(29) = 87;
        QREG(30) = 23;
        QREG(31) = 20;
        QREG(32) = 4;
        QREG(33) = 5;
        QREG(50) = 1;
        QREG(51) = 20;
        QREG(52) = 200;
        QREG(53) = 1;
        QREG(54) = 15;
        QREG(55) = 60;
        QREG(56) = 15;
        QREG(57) = 30;
        QREG(58) = 0;
    }

    QREG(65) = 50;
    return 1;
}

s32 func_8005B198() {
    return D_8011D3AC;
}

s16 func_8005B1A4(Camera* camera) {
    camera->unk_14C |= 0x8;

    if ((camera->unk_164 == 0) && (camera->globalCtx->activeCamera != 0)) {
        camera->globalCtx->cameraPtrs[camera->globalCtx->activeCamera]->unk_14C |= 0x8;
        return camera->globalCtx->activeCamera;
    }

    return camera->unk_164;
}
