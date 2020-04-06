#include <ultra64.h>
#include <global.h>

#define SS_NULL 0xFFFF

typedef struct {
    u16 short_slist_node_size;
    u16 unk_02; // theory for fixing pointer warnings: perhaps these first two are part of another substruct?
    s32 unk_04;
    s32 unk_08;
} substruct_8003880C;

typedef struct {
    substruct_8003880C **tbl;
    substruct_8003880C **unk_04;
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

s32 T_BGCheck_PosErrorCheck(Vec3f *pos, char fileName[], s32 lineNo)
{
    if ((pos->x >= 32760.f) || (pos->x <= -32760.f) || 
        (pos->y >= 32760.f) || (pos->y <= -32760.f) || 
        (pos->z >= 32760.f) || (pos->z <= -32760.f))
    {
        osSyncPrintf("\x1B[31m");
        osSyncPrintf("T_BGCheck_PosErrorCheck():位置が妥当ではありません。pos (%f,%f,%f) file:%s line:%d\n", pos->x, pos->y, pos->z, fileName, lineNo);
        osSyncPrintf("\x1B[m");
        // "Position is invalid."
        return true;
    }
    return false;
}

void func_80038708(substruct_8003880C *a, s16 *b, u16 c)
{
    a->short_slist_node_size = *b;
    a->unk_02 = c;
}

void func_8003871C(substruct_8003880C *a)
{
    a->short_slist_node_size = SS_NULL;
}

u16 func_8003E4DC(substruct_8003880C *);
u16 func_80038878(substruct_8003880C *);

void func_80038728(struct_8003880C *a, u16* b, s16 *c)
{
    u16 new_node = func_8003E4DC(&a->tbl); // Incorrect pointers
    
    func_80038708(&a->unk_04[new_node], c, *b);
    *b = new_node;
}

void func_80038780(struct_8003880C *a, u16 *b, s16 *c)
{
    u16 new_node = func_80038878(&a->tbl); // Incorrect pointers
    
    if (new_node == SS_NULL)
        __assert("new_node != SS_NULL", "../z_bgcheck.c", 0x6F0);
    
    func_80038708(&a->tbl[new_node], c, *b);
    *b = new_node;
}

void func_800387FC(s32 unused, struct_8003880C *b)
{  
    b->tbl = NULL;
    b->unk_04 = NULL;
}

void func_8003880C(Actor *a, struct_8003880C *psst, s32 c)
{
    psst->tbl = func_800C3B70(&a->wallPoly, c * 4, -2); // this is actually a substruct that begins at wallPoly
    
    if (psst->tbl == NULL)
        __assert("psst->tbl != NULL", "../z_bgcheck.c", 0x713);
    
    psst->unk_08 = c;
    psst->unk_04 = NULL;
}

void func_80038870(struct_8003880C *a)
{
    a->unk_04 = NULL;
}

u16 func_80038878(substruct_8003880C *a)
{
    u16 var = a->unk_04;

    a->unk_04++;
  
    if (a->unk_08 <= var)
        return SS_NULL;

    return var;
}

void T_BGCheck_Vec3sToVec3f(Vec3s *src, Vec3f *dst)
{
    dst->x = src->x;
    dst->y = src->y;
    dst->z = src->z;
}

void T_BGCheck_Vec3fToVec3s(Vec3s *dst, Vec3f *src)
{
    dst->x = src->x;
    dst->y = src->y;
    dst->z = src->z;
}

#ifdef NON_MATCHING
s16 func_80038924(CollisionPoly *arg0, Vec3s arg1[])
{
    Vec3s *temp1, *temp2, *temp3;
    
    if ((arg0->norm.y == 0x7FFF) || (arg0->norm.y == -0x7FFF))
    {
        return arg1[arg0->unk_02 & 0x1FFF].y;
    }

    temp1 = &arg1[arg0->unk_02 & 0x1FFF];
    temp2 = &arg1[arg0->unk_04 & 0x1FFF];
    temp3 = &arg1[arg0->unk_06];
    if (temp1->y > temp2->y)
    {
        temp1->y = temp2->y;
    }
    if (temp1->y < temp3->y)
    {
        return temp1->y;
    }
    return temp3->y;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80038924.s")
#endif

void func_800389D4(CollisionPoly *a, f32 *b, f32 *c, f32 *d)
{
    *b = a->norm.x * (1.f / 32767);
    *c = a->norm.y * (1.f / 32767);
    *d = a->norm.z * (1.f / 32767);
}

// Regalloc
#ifdef NON_MATCHING
void func_80038A28(CollisionPoly *a, f32 b, f32 c, f32 d, Vec3f e[])
{
    f32 sp3C;
    f32 sp38;
    f32 sp34;
    f32 phi_f2;
    f32 phi_f14;
    f32 phi_f12;

    if (a != NULL)
    {
        func_800389D4(a, &sp3C, &sp38, &sp34);
        
        phi_f2 = sqrtf(1.0f - (sp3C * sp3C));
        if (!(fabsf(phi_f2) < 0.008f))
        {
            phi_f14 = sp38 * (1.0f / phi_f2);
            phi_f12 = - (sp34 * (1.0f / phi_f2));
        }
        else
        {
            phi_f14 = sqrtf(1.0f - (sp38 * sp38));
            if (!(fabsf(phi_f14) < 0.008f))
            {
                phi_f12 = sp3C * (1.0f / phi_f14);
                phi_f2 = - (sp34 * (1.0f / phi_f14));
            }
            else
            {
                phi_f12 = 0.0f;
                phi_f2 = 0.0f;
            }
        }
        e[0].x = phi_f2;
        e[0].y = (-sp3C) * phi_f14;
        e[0].z = sp3C * phi_f12;
        e[1].y = sp3C;
        e[1].z = sp38;
        e[2].x = sp34;
        e[3].x = phi_f12;
        e[3].y = phi_f14;
        e[1].x = 0.0f;
        e[2].y = 0.0f;
        e[2].z = 0.0f;
        e[3].z = 0.0f;
        e[4].x = b;
        e[4].y = c;
        e[4].z = d;
        e[5].x = 1.0f;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80038A28.s")
#endif

f32 func_80038B7C(CollisionPoly *a, Vec3f *b)
{
    return ((a->norm.x * b->x) + (a->norm.y * b->y) + (a->norm.z * b->z)) * (1.f / 32767) + a->dist;
}

void func_80038BE0(CollisionPoly *arg0, Vec3s arg1[], Vec3f arg2[])
{
    T_BGCheck_Vec3sToVec3f(&arg1[arg0->unk_02 & 0x1FFF], &arg2[0]);
    T_BGCheck_Vec3sToVec3f(&arg1[arg0->unk_04 & 0x1FFF], &arg2[1]);
    T_BGCheck_Vec3sToVec3f(&arg1[arg0->unk_06],          &arg2[2]);
}

void T_Polygon_GetVertex_bg_ai(CollisionPoly *a, s32 b, s32 c, Vec3f d[])
{
    s32 phi_a1;

    if ((a == NULL) || (b > 50) || (d == NULL))
    {
        osSyncPrintf("\x1B[41;37m");
        osSyncPrintf("T_Polygon_GetVertex_bg_ai(): Error %d %d %d 引数が適切ではありません。処理を終了します。\n", a == NULL, b > 50, d == NULL);
        osSyncPrintf("\x1B[m");
        // "Argument not appropriate. Processing terminated."
        
        if (d != NULL)
        {
            d[2].z = 0.0f;
            d[1].z = 0.0f;
            d[1].y = 0.0f;
            d[1].x = 0.0f;
            d[0].z = 0.0f;
            d[0].y = 0.0f;
            d[0].x = 0.0f;
        }
    }
    else
    {
        if (b == 50)
            phi_a1 = *(s32 *)(*(s32 *)c + 0x10); // unknown struct (c->unk_00->unk_10)
        else
            phi_a1 = *(s32 *)(c+0x1444); // c->unk_1444
        
        func_80038BE0(a, (Vec3s *)phi_a1, d);
    }
}

#ifdef NON_MATCHING
// pretty far off, dunno if it's functionally equivalent
void func_800CCF98(Vec3f *,Vec3f *,Vec3f *,f32,f32,f32,f32,f32,f32,s32,f32);
void func_80038D48(CollisionPoly *a, Vec3s b[], f32 c, f32 d, s32 e, f32 f)
{
    Math_Vec3s_ToVec3f(&D_8015BC30[0], &b[a->unk_02 & 0x1FFF]);
    Math_Vec3s_ToVec3f(&D_8015BC30[1], &b[a->unk_04 & 0x1FFF]);
    Math_Vec3s_ToVec3f(&D_8015BC30[2], &b[a->unk_06]);
    
    func_800CCF98(&D_8015BC30[0], &D_8015BC30[1], &D_8015BC30[2],
        a->norm.x * (1.f / 32767), a->norm.y * (1.f / 32767), a->norm.z * (1.f / 32767),
        a->dist, d, c, e, f);
}
#else
void func_80038D48(CollisionPoly *, Vec3s *, f32, f32, s32, f32);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80038D48.s")
#endif

void func_800CD044(Vec3f *,Vec3f *,Vec3f *,f32,f32,f32,f32,f32,f32,s32,f32);
void func_80038E78(CollisionPoly *a, Vec3s b[], f32 c, f32 d, s32 e, f32 f)
{
    f32 sp44, sp40, sp3C;

    func_80038BE0(a, b, D_8015BC58);
    func_800389D4(a, &sp44, &sp40, &sp3C);
    func_800CD044(&D_8015BC58[0], &D_8015BC58[1], &D_8015BC58[2], sp44, sp40, sp3C, a->dist, d, c, e, f);
}

void func_80038F20(CollisionPoly *a, Vec3s b[], f32 c, f32 d, s32 e)
{
    func_80038D48(a, b, c, d, e, 1.0f);
}

void func_800CD6B0(Vec3f *,Vec3f *,Vec3f *,f32,f32,f32,f32,f32,f32,s32);
void func_80038F60(CollisionPoly *a, Vec3s b[], f32 c, f32 d, s32 e)
{
    f32 sp3C, sp38, sp34;

    func_80038BE0(a, b, D_8015BC80);
    func_800389D4(a, &sp3C, &sp38, &sp34);
    func_800CD6B0(&D_8015BC80[0], &D_8015BC80[1], &D_8015BC80[2], sp3C, sp38, sp34, a->dist, c, d, e);
}

void func_800CDD60(Vec3f *,Vec3f *,Vec3f *,f32,f32,f32,f32,f32,f32,s32);
void func_80039000(CollisionPoly *a, Vec3s b[], f32 c, f32 d, s32 e)
{
    f32 sp3C, sp38, sp34;

    func_80038BE0(a, b, D_8015BCA8);
    func_800389D4(a, &sp3C, &sp38, &sp34);
    func_800CDD60(&D_8015BCA8[0], &D_8015BCA8[1], &D_8015BCA8[2], sp3C, sp38, sp34, a->dist, c, d, e);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_800390A0.s")

#ifdef NON_MATCHING
// ordering, pointer optimization
void func_8003937C(CollisionPoly *a, Vec3s b[], Vec3f *c, f32 d)
{
    Vec3f sp1C;

    func_80038BE0(a, b, D_8015BD10);
    func_800389D4(a, &D_8015BD34[0], &D_8015BD34[1], &D_8015BD34[2]);
    D_8015BD40 = a->dist;
    D_8015BD08[0] = c->x;
    D_8015BD08[1] = c->y;
    D_8015BD08[2] = c->z;
    D_8015BD08[3] = d;
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

// Type of "b" is unknown
void func_8003965C(Vec3s *a, s32 *b, struct_80039448 c[], s32 d, s16 e)
{
    if (c[e].unk_0A >= 0x4000)
        func_80039448(b, &a->x, c, d, e);
    
    else if (c[e].unk_0A <= -0x6666)
        func_80039448(b, &a->z, c, d, e);
    
    else
        func_80039448(b, &a->y, c, d, e);
}

f32 func_800396F0(s32 *, u16, s16 *, s16 *, Vec3f *, f32, f32, s32);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_800396F0.s")

// Type of "b" is unknown
f32 func_8003992C(Vec3s *a, s32 *b, u16 c, s16 *d, Vec3f *e, s32 f, f32 g, f32 h)
{
    s32 temp_v0;
    f32 temp_f2 = h;
    
    if ((f & 4) != 0)
        temp_f2 = func_800396F0(b, c, &a->x, d, e, temp_f2, g, 0);
    
    if (((f & 2) != 0) || ((f & 8) != 0))
    {
        temp_v0 = 0; if ((f & 0x10) != 0) temp_v0 = 1;
        temp_f2 = func_800396F0(b, c, &a->y, d, e, temp_f2, g, temp_v0);
    }
    
    if ((f & 1) != 0)
    {
        temp_v0 = 0; if ((f & 0x10) != 0) temp_v0 = 1;
        temp_f2 = func_800396F0(b, c, &a->z, d, e, temp_f2, g, temp_v0);
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
s32 func_80039A3C(struct_80039A3C ***a, s32 *b, f32 *c, f32 *d, f32 e, f32 f, f32 g, f32 h, f32 i, f32 j, u16 **k)
{
    s32 phi_v0;
    f32 temp_f0 = (j - i) * h;
    
    *c += (temp_f0 * e);
    *d += (temp_f0 * g);
    
    if (*k == NULL)
    {
        *k = b;
        return true;
    }
    
    phi_v0 = 0; if (((*a)[7][**k].unk_04 * 0x10) < 0) phi_v0 = 1;
    if (!phi_v0)
    {
        *k = b;
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
s32 func_8003AB28(u16 a[], u16 b, s32 c, s32 d, f32 e, s32 f, u16 g)
{
    if (a[0] != 0xFFFF && (g & 4) == 0 &&
            func_8003A95C(&(*(s32 **)(c + 0x48))[a[0]], b, c, d, e, f))
        return true;
        
    if (a[1] != 0xFFFF && (g & 2) == 0 &&
            func_8003A95C(&(*(s32 **)(c + 0x48))[a[1]], b, c, d, e, f))
        return true;
        
    if (a[2] != 0xFFFF && (g & 1) == 0 &&
            func_8003A95C(&(*(s32 **)(c + 0x48))[a[2]], b, c, d, e, f))
        return true;
        
    return false;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003AB28.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003AC54.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003AD00.s")

void func_8003ADC8(struct_8003ADC8 *a, Vec3f *b, s32 *c)
{
    c[0] = (b->x - a->unk_04.x) * a->unk_34.x;
    c[1] = (b->y - a->unk_04.y) * a->unk_34.y;
    c[2] = (b->z - a->unk_04.z) * a->unk_34.z;
    
    if (c[0] < 0)
        c[0] = 0;
    else if (c[0] >= a->unk_1C[0])
        c[0] = a->unk_1C[0] - 1;
    
    if (c[1] < 0)
        c[1] = 0;
    else if (c[1] >= a->unk_1C[1])
        c[1] = a->unk_1C[1] - 1;
    
    if (c[2] < 0)
        c[2] = 0;
    else if (c[2] >= a->unk_1C[2])
        c[2] = a->unk_1C[2] - 1;
}

s32 func_8003AEA8(struct_8003ADC8 *a, Vec3f *b, s32 *c, s32 *d, s32 *e)
{
    f32 temp1 = b->x - a->unk_04.x;
    f32 temp2 = b->y - a->unk_04.y;
    f32 temp3 = b->z - a->unk_04.z;
    *c = temp1 * a->unk_34.x;
    *d = temp2 * a->unk_34.y;
    *e = temp3 * a->unk_34.z;

    if (((s32)temp1 % (s32)a->unk_28.x < 50) && (*c > 0))
        *c -= 1;
    
    if (((s32)temp2 % (s32)a->unk_28.y < 50) && (*d > 0))
        *d -= 1;
    
    if (((s32)temp3 % (s32)a->unk_28.z < 50) && (*e > 0))
        *e -= 1;
}

s32 func_8003B04C(struct_8003ADC8 *a, Vec3f *b, s32 *c, s32 *d, s32 *e)
{
    f32 temp1 = b->x - a->unk_04.x;
    f32 temp2 = b->y - a->unk_04.y;
    f32 temp3 = b->z - a->unk_04.z;
    *c = temp1 * a->unk_34.x;
    *d = temp2 * a->unk_34.y;
    *e = temp3 * a->unk_34.z;
    
    if (((s32)a->unk_28.x - 50 < (s32)temp1 % (s32)a->unk_28.x) && (*c < a->unk_1C[0] - 1))
        *c += 1;
    
    if (((s32)a->unk_28.y - 50 < (s32)temp2 % (s32)a->unk_28.y) && (*d < a->unk_1C[1] - 1))
        *d += 1;
    
    if (((s32)a->unk_28.z - 50 < (s32)temp3 % (s32)a->unk_28.z) && (*e < a->unk_1C[2] - 1))
        *e += 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003B218.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003B3C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003BB18.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003BF18.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003BF5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003BFF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003C078.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/T_BGCheck_getBGDataInfo.s")

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

void func_8003E398(substruct_8003880C* this)
{
    this->short_slist_node_size = 0;
    this->unk_02 = 0;
    this->unk_04 = 0;
    this->unk_08 = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E3AC.s")

// regalloc, unwanted u16 cast
#ifdef NON_MATCHING
u16 func_8003E4DC(substruct_8003880C *this)
{
    u16 new_index = (this->unk_02 += 1);

    if (new_index >= this->short_slist_node_size)
    {
        __assert("new_index < this->short_slist_node_size", "../z_bgcheck.c", 0x1785);
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

void func_8003E6C4(u16* puParm1)
{
    *puParm1 = 0;
    func_8003E688();
}


void func_8003E6E4(u16* a0)
{
    *a0 = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E6EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E750.s")

void func_8003E804(int iParm1)
{
    func_8003E5B4(iParm1 + 0x14, iParm1 + 0x34);
}


void func_8003E82C(u32* a0)
{
    *a0 = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E834.s")

void func_8003E888(u32* a0)
{
    *a0 = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E890.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E8EC.s")

/*
NON-MATCHING
void func_8003E8EC(u32 uParm1, u32* iParm2)
{
    iParm2[0x06] = iParm2[0x0E];
    iParm2[0x05] = iParm2[0x0D];
    iParm2[0x07] = iParm2[0x0F];
    iParm2[0x08] = iParm2[0x10];
    iParm2[0x0A] = iParm2[0x12];
    iParm2[0x09] = iParm2[0x11];
    iParm2[0x0B] = iParm2[0x13];
    iParm2[0x0C] = iParm2[0x14];

   
   //int i;
   //for (i = 0; i < 4; i++)
   //{
       //iParm2[0x06 + (i * 2)] = iParm2[0x0E + (i * 2)];
       //iParm2[0x07 + (i * 2)] = iParm2[0x0D + (i * 2)];
   //}
}
*/

s32 func_8003E934(int iParm1)
{
    if (!((-1 < iParm1) && (iParm1 < 0x32)))
        return false;

    return true;
}

void func_8003E954(u32 uParm1, u8* puParm2)
{
    *puParm2 = 1;
    func_8003E82C(puParm2 + 0x13f0);
    func_8003E888(puParm2 + 0x13f4);
    func_800387FC(uParm1, puParm2 + 0x13f8);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E9A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/DynaPolyInfo_setActor.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003EB84.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003ECA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/DynaPolyInfo_delReserve.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003EE6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/DynaPolyInfo_expandSRT.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003F8EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/DynaPolyInfo_setup.s")

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

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041880.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_800418D0.s")

#ifdef NON_MATCHING
void func_80041978(int iParm1, int iParm2)
{
    u8* puVar1;

    puVar1 = *(u8 **)(iParm1 + 8);
    if (puVar1 < puVar1 + iParm2) 
    {
        *puVar1 = 0;
        while (puVar1++ < (u8*)(*(int *)(iParm1 + 8) + iParm2))
        {
            *puVar1 = 0;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041978.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_800419B0.s")

u32 func_80041A28(CollisionContext *a0, u32 a1, u32 a2)
{
    u32 uVar1;
  
    uVar1 = func_800419B0(a0, a1, a2, 0);
    return uVar1 & 0xff;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041A4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041B24.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041B80.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041C10.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041C98.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041D28.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041D4C.s")

u32 func_80041D94(u32 a0, u32 a1, u32 a2)
{
    u32 uVar1;
  
    uVar1 = func_800419B0(a0, a1, a2, 0);
    return uVar1 >> 0x15 & 0x1f;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041DB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041DE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041E18.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041E4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041EC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041EEC.s")

u32 func_80041F10(u32 a0, u32 a1, u32 a2)
{
    u32 uVar1;
  
    uVar1 = func_800419B0(a0, a1, a2, 1);
    return uVar1 & 0xf;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041F34.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041F7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041FA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041FC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8004200C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042048.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042084.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_800420E4.s")

u32 func_80042108(u32 a0, u32 a1, u32 a2)
{
    s32 result;

    if (func_800419B0(a0, a1, a2, 1) << 4 < 0)
        result = true;
    else
        result = false;

    return result;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8004213C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042244.s")

u8 func_80042538(CollisionContext *colCtx, s32 iParm2)
{
    u32 var1 = *(u32*)(iParm2 + 0xc);
    return var1;
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

