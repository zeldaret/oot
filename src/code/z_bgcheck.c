#include <ultra64.h>
#include <global.h>
#include <vt.h>

#define SS_NULL 0xFFFF

typedef struct {
    u16 unk_00; // original name: short_slist_node_size
    u16 unk_02; // theory for fixing pointer warnings: perhaps these first two are part of another substruct?
    s32 unk_04;
    s32 unk_08;
} substruct_8003880C;

typedef struct {
    substruct_8003880C** unk_00; // original name: tbl
    substruct_8003880C** unk_04;
    s32 unk_08;
} struct_8003880C;

typedef struct {
    char unk_00[4];
    Vec3f unk_04;
    s32 unk_10[3];
    s32 unk_1C[3];
    Vec3f unk_28;
    Vec3f unk_34;
} struct_8003ADC8;

extern Vec3f D_8015BC30[3];
extern Vec3f D_8015BC58[3];
extern Vec3f D_8015BC80[3];
extern Vec3f D_8015BCA8[3];

extern s16 D_8015BD08[4];
extern Vec3f D_8015BD10[3];
extern Vec3f D_8015BD34[3];

// original name: T_BGCheck_PosErrorCheck
s32 func_80038600(Vec3f* pos, char* file, s32 line) {
    if ((pos->x >= 32760.0f) || (pos->x <= -32760.0f) || (pos->y >= 32760.0f) || (pos->y <= -32760.0f) ||
        (pos->z >= 32760.0f) || (pos->z <= -32760.0f)) {
        osSyncPrintf(VT_FGCOL(RED));
        // "Translates to: Position is invalid."
        osSyncPrintf("T_BGCheck_PosErrorCheck():位置が妥当ではありません。pos (%f,%f,%f) file:%s line:%d\n", pos->x,
                     pos->y, pos->z, file, line);
        osSyncPrintf(VT_RST);
        return true;
    }
    return false;
}

void func_80038708(substruct_8003880C* arg0, s16* arg1, u16 arg2) {
    arg0->unk_00 = *arg1;
    arg0->unk_02 = arg2;
}

void func_8003871C(substruct_8003880C* arg0) {
    arg0->unk_00 = SS_NULL;
}

u16 func_8003E4DC(substruct_8003880C*);
u16 func_80038878(substruct_8003880C*);

void func_80038728(struct_8003880C* arg0, u16* arg1, s16* arg2) {
    u16 newNode = func_8003E4DC(&arg0->unk_00); // Incorrect pointers

    func_80038708(&arg0->unk_04[newNode], arg2, *arg1);
    *arg1 = newNode;
}

void func_80038780(struct_8003880C* arg0, u16* arg1, s16* arg2) {
    u16 newNode = func_80038878(&arg0->unk_00); // Incorrect pointers

    if (newNode == SS_NULL) {
        __assert("new_node != SS_NULL", "../z_bgcheck.c", 1776);
    }

    func_80038708(&arg0->unk_00[newNode], arg2, *arg1);
    *arg1 = newNode;
}

void func_800387FC(s32 unused, struct_8003880C* arg1) {
    arg1->unk_00 = NULL;
    arg1->unk_04 = NULL;
}

void func_8003880C(Actor* arg0, struct_8003880C* arg1, s32 arg2) {
    // Todo: tidy up types here (the arg is arg0 struct that begins at wallpoly)
    arg1->unk_00 = (substruct_8003880C**)THA_AllocEndAlign((TwoHeadArena*)(&arg0->wallPoly), arg2 * 4, -2);

    if (arg1->unk_00 == NULL) {
        __assert("psst->tbl != NULL", "../z_bgcheck.c", 1811);
    }

    arg1->unk_08 = arg2;
    arg1->unk_04 = NULL;
}

void func_80038870(struct_8003880C* arg0) {
    arg0->unk_04 = NULL;
}

u16 func_80038878(substruct_8003880C* arg0) {
    u16 var = arg0->unk_04;

    arg0->unk_04++;

    if (arg0->unk_08 <= var) {
        return SS_NULL;
    }

    return var;
}

// original name: T_BGCheck_Vec3sToVec3f
void func_800388A8(Vec3s* src, Vec3f* dst) {
    dst->x = src->x;
    dst->y = src->y;
    dst->z = src->z;
}

// original name: T_BGCheck_Vec3fToVec3s
void func_800388E8(Vec3s* dst, Vec3f* src) {
    dst->x = src->x;
    dst->y = src->y;
    dst->z = src->z;
}

#ifdef NON_MATCHING
s16 func_80038924(CollisionPoly* arg0, Vec3s arg1[]) {
    Vec3s *temp1, *temp2, *temp3;

    if ((arg0->norm.y == 0x7FFF) || (arg0->norm.y == -0x7FFF)) {
        return arg1[arg0->unk_02 & 0x1FFF].y;
    }

    temp1 = &arg1[arg0->unk_02 & 0x1FFF];
    temp2 = &arg1[arg0->unk_04 & 0x1FFF];
    temp3 = &arg1[arg0->unk_06];
    if (temp1->y > temp2->y) {
        temp1->y = temp2->y;
    }
    if (temp1->y < temp3->y) {
        return temp1->y;
    }
    return temp3->y;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80038924.s")
#endif

void func_800389D4(CollisionPoly* arg0, f32* arg1, f32* arg2, f32* arg3) {
    *arg1 = arg0->norm.x * (1.0f / 32767);
    *arg2 = arg0->norm.y * (1.0f / 32767);
    *arg3 = arg0->norm.z * (1.0f / 32767);
}

// Regalloc, stack
#ifdef NON_MATCHING
void func_80038A28(CollisionPoly* arg0, f32 arg1, f32 arg2, f32 arg3, MtxF* arg4) {
    f32 sp3C;
    f32 sp38;
    f32 sp34;
    f32 phi_f2;
    f32 phi_f14;
    f32 phi_f12;

    if (arg0 != NULL) {
        func_800389D4(arg0, &sp3C, &sp38, &sp34);

        phi_f2 = sqrtf(1.0f - (sp3C * sp3C));
        if (!(fabsf(phi_f2) < 0.008f)) {
            phi_f14 = sp38 * (1.0f / phi_f2);
            phi_f12 = -(sp34 * (1.0f / phi_f2));
        } else {
            phi_f14 = sqrtf(1.0f - (sp38 * sp38));
            if (!(fabsf(phi_f14) < 0.008f)) {
                phi_f12 = sp3C * (1.0f / phi_f14);
                phi_f2 = -(sp34 * (1.0f / phi_f14));
            } else {
                phi_f12 = 0.0f;
                phi_f2 = 0.0f;
            }
        }
        arg4->xx = phi_f2;
        arg4->xy = (-sp3C) * phi_f14;
        arg4->xz = sp3C * phi_f12;
        arg4->yx = sp3C;
        arg4->yy = sp38;
        arg4->yz = sp34;
        arg4->zx = 0.0f;
        arg4->zy = phi_f12;
        arg4->zz = phi_f14;
        arg4->xw = 0.0f;
        arg4->yw = 0.0f;
        arg4->zw = 0.0f;
        arg4->wx = arg1;
        arg4->wy = arg2;
        arg4->wz = arg3;
        arg4->ww = 1.0f;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80038A28.s")
#endif

f32 func_80038B7C(CollisionPoly* arg0, Vec3f* arg1) {
    return ((arg0->norm.x * arg1->x) + (arg0->norm.y * arg1->y) + (arg0->norm.z * arg1->z)) * (1.0f / 32767) + arg0->dist;
}

void func_80038BE0(CollisionPoly* arg0, Vec3s arg1[], Vec3f arg2[]) {
    func_800388A8(&arg1[arg0->unk_02 & 0x1FFF], &arg2[0]);
    func_800388A8(&arg1[arg0->unk_04 & 0x1FFF], &arg2[1]);
    func_800388A8(&arg1[arg0->unk_06], &arg2[2]);
}

// original name: T_Polygon_GetVertex_bg_ai
void func_80038C78(CollisionPoly* arg0, s32 arg1, s32 arg2, Vec3f arg3[]) {
    s32 phi_a1;

    if ((arg0 == NULL) || (arg1 > 50) || (arg3 == NULL)) {
        osSyncPrintf(VT_COL(RED, WHITE));
        // translates to: "Argument not appropriate. Processing terminated."
        osSyncPrintf("T_Polygon_GetVertex_bg_ai(): Error %d %d %d 引数が適切ではありません。処理を終了します。\n",
                     arg0 == NULL, arg1 > 50, arg3 == NULL);
        osSyncPrintf(VT_RST);

        if (arg3 != NULL) {
            arg3[2].z = 0.0f;
            arg3[1].z = 0.0f;
            arg3[1].y = 0.0f;
            arg3[1].x = 0.0f;
            arg3[0].z = 0.0f;
            arg3[0].y = 0.0f;
            arg3[0].x = 0.0f;
        }
    } else {
        if (arg1 == 50) {
            phi_a1 = *(s32*)(*(s32*)arg2 + 0x10); // unknown struct (arg2->unk_00->unk_10)
        } else {
            phi_a1 = *(s32*)(arg2 + 0x1444); // arg2->unk_1444
        }

        func_80038BE0(arg0, (Vec3s*)phi_a1, arg3);
    }
}

#ifdef NON_MATCHING
// pretty far off, dunno if it's functionally equivalent
void func_800CCF98(Vec3f*, Vec3f*, Vec3f*, f32, f32, f32, f32, f32, f32, s32, f32);
void func_80038D48(CollisionPoly* arg0, Vec3s arg1[], f32 arg2, f32 arg3, s32 arg4, f32 arg5) {
    Math_Vec3s_ToVec3f(&D_8015BC30[0], &arg1[arg0->unk_02 & 0x1FFF]);
    Math_Vec3s_ToVec3f(&D_8015BC30[1], &arg1[arg0->unk_04 & 0x1FFF]);
    Math_Vec3s_ToVec3f(&D_8015BC30[2], &arg1[arg0->unk_06]);

    func_800CCF98(&D_8015BC30[0], &D_8015BC30[1], &D_8015BC30[2], arg0->norm.x * (1.0f / 32767), arg0->norm.y * (1.0f / 32767),
                  arg0->norm.z * (1.0f / 32767), arg0->dist, arg3, arg2, arg4, arg5);
}
#else
void func_80038D48(CollisionPoly*, Vec3s*, f32, f32, s32, f32);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80038D48.s")
#endif

void func_800CD044(Vec3f*, Vec3f*, Vec3f*, f32, f32, f32, f32, f32, f32, s32, f32);
void func_80038E78(CollisionPoly* arg0, Vec3s arg1[], f32 arg2, f32 arg3, s32 arg4, f32 arg5) {
    f32 sp44, sp40, sp3C;

    func_80038BE0(arg0, arg1, D_8015BC58);
    func_800389D4(arg0, &sp44, &sp40, &sp3C);
    func_800CD044(&D_8015BC58[0], &D_8015BC58[1], &D_8015BC58[2], sp44, sp40, sp3C, arg0->dist, arg3, arg2, arg4, arg5);
}

void func_80038F20(CollisionPoly* arg0, Vec3s arg1[], f32 arg2, f32 arg3, s32 arg4) {
    func_80038D48(arg0, arg1, arg2, arg3, arg4, 1.0f);
}

void func_800CD6B0(Vec3f*, Vec3f*, Vec3f*, f32, f32, f32, f32, f32, f32, s32);
void func_80038F60(CollisionPoly* arg0, Vec3s arg1[], f32 arg2, f32 arg3, s32 arg4) {
    f32 sp3C, sp38, sp34;

    func_80038BE0(arg0, arg1, D_8015BC80);
    func_800389D4(arg0, &sp3C, &sp38, &sp34);
    func_800CD6B0(&D_8015BC80[0], &D_8015BC80[1], &D_8015BC80[2], sp3C, sp38, sp34, arg0->dist, arg2, arg3, arg4);
}

void func_800CDD60(Vec3f*, Vec3f*, Vec3f*, f32, f32, f32, f32, f32, f32, s32);
void func_80039000(CollisionPoly* arg0, Vec3s arg1[], f32 arg2, f32 arg3, s32 arg4) {
    f32 sp3C, sp38, sp34;

    func_80038BE0(arg0, arg1, D_8015BCA8);
    func_800389D4(arg0, &sp3C, &sp38, &sp34);
    func_800CDD60(&D_8015BCA8[0], &D_8015BCA8[1], &D_8015BCA8[2], sp3C, sp38, sp34, arg0->dist, arg2, arg3, arg4);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_800390A0.s")

#ifdef NON_MATCHING
// ordering, pointer optimization
void func_8003937C(CollisionPoly* arg0, Vec3s arg1[], Vec3f* arg2, f32 arg3) {
    Vec3f sp1C;

    func_80038BE0(arg0, arg1, D_8015BD10);
    func_800389D4(arg0, &D_8015BD34[0], &D_8015BD34[1], &D_8015BD34[2]);
    D_8015BD34[1].x = arg0->dist;
    D_8015BD08[0] = arg2->x;
    D_8015BD08[1] = arg2->y;
    D_8015BD08[2] = arg2->z;
    D_8015BD08[3] = arg3;
    func_800CE934(&D_8015BD08, D_8015BD10, &sp1C);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003937C.s")
#endif

typedef struct {
    char unk_00[0xA];
    s16 unk_0A;
    char unk_0C[4];
} struct_80039448; // unknown struct of length 0x10

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80039448.s")

// Type of "arg1" is unknown
void func_8003965C(Vec3s* arg0, s32* arg1, struct_80039448 arg2[], s32 arg3, s16 arg4) {
    if (arg2[arg4].unk_0A >= 0x4000) {
        func_80039448(arg1, &arg0->x, arg2, arg3, arg4);

    } else if (arg2[arg4].unk_0A <= -0x6666) {
        func_80039448(arg1, &arg0->z, arg2, arg3, arg4);

    } else {
        func_80039448(arg1, &arg0->y, arg2, arg3, arg4);
    }
}

f32 func_800396F0(s32*, u16, s16*, s16*, Vec3f*, f32, f32, s32);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_800396F0.s")

// Type of "arg1" is unknown
f32 func_8003992C(Vec3s* arg0, s32* arg1, u16 arg2, s16* arg3, Vec3f* arg4, s32 arg5, f32 arg6, f32 arg7) {
    s32 temp_v0;
    f32 temp_f2 = arg7;

    if ((arg5 & 4) != 0) {
        temp_f2 = func_800396F0(arg1, arg2, &arg0->x, arg3, arg4, temp_f2, arg6, 0);
    }

    if (((arg5 & 2) != 0) || ((arg5 & 8) != 0)) {
        temp_v0 = 0;
        if ((arg5 & 0x10) != 0) {
            temp_v0 = 1;
        }
        temp_f2 = func_800396F0(arg1, arg2, &arg0->y, arg3, arg4, temp_f2, arg6, temp_v0);
    }

    if ((arg5 & 1) != 0) {
        temp_v0 = 0;
        if ((arg5 & 0x10) != 0) {
            temp_v0 = 1;
        }
        temp_f2 = func_800396F0(arg1, arg2, &arg0->z, arg3, arg4, temp_f2, arg6, temp_v0);
    }

    return temp_f2;
}

// Slightly off at the end, pretty close
#ifdef NON_MATCHING
typedef struct {
    char unk_00[4];
    s32 unk_04;
} struct_80039A3C; // unknown struct of length 8

// arg5 unused
s32 func_80039A3C(struct_80039A3C*** arg0, s32* arg1, f32* arg2, f32* arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8, f32 arg9, u16** arg10) {
    s32 phi_v0;
    f32 temp_f0 = (arg9 - arg8) * arg7;

    *arg2 += (temp_f0 * arg4);
    *arg3 += (temp_f0 * arg6);

    if (*arg10 == NULL) {
        *arg10 = arg1;
        return true;
    }

    phi_v0 = 0;
    if (((*arg0)[7][**arg10].unk_04 * 0x10) < 0) {
        phi_v0 = 1;
    }
    if (!phi_v0) {
        *arg10 = arg1;
        return true;
    }
    return false;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80039A3C.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80039AEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003A3E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003A5B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003A7D8.s")

s32 func_8003A95C(s32*, u16, s32, s32, f32, s32);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003A95C.s")

// Very small register swap, probably from hacky struct access
#ifdef NON_MATCHING
s32 func_8003AB28(u16 arg0[], u16 arg1, s32 arg2, s32 arg3, f32 arg4, s32 arg5, u16 arg6) {
    if (arg0[0] != 0xFFFF && (arg6 & 4) == 0 && func_8003A95C(&(*(s32**)(arg2 + 0x48))[arg0[0]], arg1, arg2, arg3, arg4, arg5)) {
        return true;
    }

    if (arg0[1] != 0xFFFF && (arg6 & 2) == 0 && func_8003A95C(&(*(s32**)(arg2 + 0x48))[arg0[1]], arg1, arg2, arg3, arg4, arg5)) {
        return true;
    }

    if (arg0[2] != 0xFFFF && (arg6 & 1) == 0 && func_8003A95C(&(*(s32**)(arg2 + 0x48))[arg0[2]], arg1, arg2, arg3, arg4, arg5)) {
        return true;
    }

    return false;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003AB28.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003AC54.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003AD00.s")

void func_8003ADC8(struct_8003ADC8* arg0, Vec3f* arg1, s32* arg2) {
    arg2[0] = (arg1->x - arg0->unk_04.x) * arg0->unk_34.x;
    arg2[1] = (arg1->y - arg0->unk_04.y) * arg0->unk_34.y;
    arg2[2] = (arg1->z - arg0->unk_04.z) * arg0->unk_34.z;

    if (arg2[0] < 0) {
        arg2[0] = 0;
    } else if (arg2[0] >= arg0->unk_1C[0]) {
        arg2[0] = arg0->unk_1C[0] - 1;
    }

    if (arg2[1] < 0) {
        arg2[1] = 0;
    } else if (arg2[1] >= arg0->unk_1C[1]) {
        arg2[1] = arg0->unk_1C[1] - 1;
    }

    if (arg2[2] < 0) {
        arg2[2] = 0;
    } else if (arg2[2] >= arg0->unk_1C[2]) {
        arg2[2] = arg0->unk_1C[2] - 1;
    }
}

s32 func_8003AEA8(struct_8003ADC8* arg0, Vec3f* arg1, s32* arg2, s32* arg3, s32* arg4) {
    f32 temp1 = arg1->x - arg0->unk_04.x;
    f32 temp2 = arg1->y - arg0->unk_04.y;
    f32 temp3 = arg1->z - arg0->unk_04.z;
    *arg2 = temp1 * arg0->unk_34.x;
    *arg3 = temp2 * arg0->unk_34.y;
    *arg4 = temp3 * arg0->unk_34.z;

    if (((s32)temp1 % (s32)arg0->unk_28.x < 50) && (*arg2 > 0)) {
        *arg2 -= 1;
    }

    if (((s32)temp2 % (s32)arg0->unk_28.y < 50) && (*arg3 > 0)) {
        *arg3 -= 1;
    }

    if (((s32)temp3 % (s32)arg0->unk_28.z < 50) && (*arg4 > 0)) {
        *arg4 -= 1;
    }
}

s32 func_8003B04C(struct_8003ADC8* arg0, Vec3f* arg1, s32* arg2, s32* arg3, s32* arg4) {
    f32 temp1 = arg1->x - arg0->unk_04.x;
    f32 temp2 = arg1->y - arg0->unk_04.y;
    f32 temp3 = arg1->z - arg0->unk_04.z;
    *arg2 = temp1 * arg0->unk_34.x;
    *arg3 = temp2 * arg0->unk_34.y;
    *arg4 = temp3 * arg0->unk_34.z;

    if (((s32)arg0->unk_28.x - 50 < (s32)temp1 % (s32)arg0->unk_28.x) && (*arg2 < arg0->unk_1C[0] - 1)) {
        *arg2 += 1;
    }

    if (((s32)arg0->unk_28.y - 50 < (s32)temp2 % (s32)arg0->unk_28.y) && (*arg3 < arg0->unk_1C[1] - 1)) {
        *arg3 += 1;
    }

    if (((s32)arg0->unk_28.z - 50 < (s32)temp3 % (s32)arg0->unk_28.z) && (*arg4 < arg0->unk_1C[2] - 1)) {
        *arg4 += 1;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003B218.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003B3C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003BB18.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003BF18.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003BF5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003BFF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003C078.s")

//original name: T_BGCheck_getBGDataInfo
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003C4C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003C55C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003C614.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003C890.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003C8EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003C940.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003C9A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003CA0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003CA64.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003CB30.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003CCA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003CDD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003D464.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003D52C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003D594.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003D600.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003D7A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003D7F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003DD28.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003DD6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003DFA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E02C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E0B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E0FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E188.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E214.s")

void func_8003E398(substruct_8003880C* this) {
    this->unk_00 = 0;
    this->unk_02 = 0;
    this->unk_04 = 0;
    this->unk_08 = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E3AC.s")

// regalloc, unwanted u16 cast
#ifdef NON_MATCHING
u16 func_8003E4DC(substruct_8003880C* this) {
    u16 new_index = (this->unk_02 += 1);

    if (new_index >= this->unk_00) {
        __assert("new_index < this->short_slist_node_size", "../z_bgcheck.c", 6021);
    }
    return new_index;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E4DC.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E530.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E568.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E5B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E688.s")

void func_8003E6C4(u16* arg0) {
    *arg0 = 0;
    func_8003E688();
}

void func_8003E6E4(u16* arg0) {
    *arg0 = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E6EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E750.s")

void func_8003E804(int arg0) {
    func_8003E5B4(arg0 + 0x14, arg0 + 0x34);
}

void func_8003E82C(u32* arg0) {
    *arg0 = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E834.s")

void func_8003E888(u32* arg0) {
    *arg0 = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E890.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E8EC.s")

/*
NON-MATCHING
void func_8003E8EC(u32 uParm1, u32* arg1)
{
    arg1[0x06] = arg1[0x0E];
    arg1[0x05] = arg1[0x0D];
    arg1[0x07] = arg1[0x0F];
    arg1[0x08] = arg1[0x10];
    arg1[0x0A] = arg1[0x12];
    arg1[0x09] = arg1[0x11];
    arg1[0x0B] = arg1[0x13];
    arg1[0x0C] = arg1[0x14];

   //int i;
   //for (i = 0; i < 4; i++)
   //{
       //arg1[0x06 + (i * 2)] = arg1[0x0E + (i * 2)];
       //arg1[0x07 + (i * 2)] = arg1[0x0D + (i * 2)];
   //}

}
*/

s32 func_8003E934(int arg0) {
    if (!((-1 < arg0) && (arg0 < 0x32))) {
        return false;
    }

    return true;
}

void func_8003E954(u32 arg0, u8* arg1) {
    *arg1 = 1;
    func_8003E82C(arg1 + 0x13f0);
    func_8003E888(arg1 + 0x13f4);
    func_800387FC(arg0, arg1 + 0x13f8);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E9A0.s")

// original name: DynaPolyInfo_setActor
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003EA74.s")

// we previously had this named as DynaPolyInfo_GetActor
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003EB84.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003ECA8.s")

// original name: DynaPolyInfo_delReserve
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003ED58.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003EE6C.s")

// original name: DynaPolyInfo_expandSRT
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003EE80.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003F8EC.s")

// original name: DynaPolyInfo_setup
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003F984.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003FB64.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003FBF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003FDDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80040284.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_800409A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80040BE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80040E40.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80040FA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041128.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041240.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_800413F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041510.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041648.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_800417A0.s")

// we previously had this named as DynaPolyInfo_Alloc
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041880.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_800418D0.s")

#ifdef NON_MATCHING
void func_80041978(int arg0, int arg1) {
    u8* temp;

    temp = *(u8**)(arg0 + 8);
    if (temp < temp + arg1) {
        *temp = 0;
        while (temp++ < (u8*)(*(int*)(arg0 + 8) + arg1)) {
            *temp = 0;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041978.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_800419B0.s")

u32 func_80041A28(CollisionContext* arg0, u32 arg1, u32 arg2) {
    u32 ret;

    ret = func_800419B0(arg0, arg1, arg2, 0);
    return ret & 0xff;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041A4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041B24.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041B80.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041C10.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041C98.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041D28.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041D4C.s")

u32 func_80041D94(u32 arg0, u32 arg1, u32 arg2) {
    u32 ret;

    ret = func_800419B0(arg0, arg1, arg2, 0);
    return ret >> 0x15 & 0x1f;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041DB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041DE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041E18.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041E4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041EC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041EEC.s")

u32 func_80041F10(u32 arg0, u32 arg1, u32 arg2) {
    u32 ret;

    ret = func_800419B0(arg0, arg1, arg2, 1);
    return ret & 0xf;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041F34.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041F7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041FA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041FC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8004200C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042048.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042084.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_800420E4.s")

u32 func_80042108(u32 arg0, u32 arg1, u32 arg2) {
    s32 result;

    if (func_800419B0(arg0, arg1, arg2, 1) << 4 < 0) {
        result = true;
    } else {
        result = false;
    }

    return result;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8004213C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042244.s")

u8 func_80042538(CollisionContext* colCtx, s32 arg1) {
    u32 ret = *(u32*)(arg1 + 0xc);
    return ret;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042548.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8004259C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_800427B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042868.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042B2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042C3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042CB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042EF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042FC4.s")
