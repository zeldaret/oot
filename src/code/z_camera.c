#include <ultra64.h>
#include <global.h>
#include <vt.h>

// Non-matchings functions marked with CLOSE are either a matter of regalloc or stack size and can possibly be fixed with the permutator.

typedef struct
{
    Vec3f unk_00;
    Vec3f unk_0C;
    CollisionPoly *unk_18;
    char unk_1C[0x8];
    s32 unk_24;
} struct_80043D18;

// names for this struct's values come from a debug function, may want to rename
typedef struct
{
    s8 code;
    s8 z;
    u16 T;
    f32 zoom;
    Vec3s pos;
} SplineData; // originally called SplinedatZ


// 47 lines
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_800437F0.s")
// had an attempt at this but didn't get very close

f32 func_8004389C(f32 a, f32 b, f32 c, f32 d)
{
  f32 temp1 = a - b;
  f32 temp2;
  f32 ret;
  
  if (fabsf(temp1) >= d)
  {
    temp2 = temp1 * c;
    ret = b + temp2;
  }
  else
    ret = a;

  return ret;
}

f32 func_800438DC(f32 a, f32 b, f32 c, f32 d)
{
  f32 temp1 = a - b;
  f32 temp2;
  f32 ret;
  
  if (fabsf(temp1) >= d)
  {
    temp2 = temp1 * c;
    ret = b + temp2;
  }
  else
    ret = b;

  return ret;
}

s16 func_8004391C(s16 a, s16 b, f32 c, s16 d)
{
  s16 temp1 = a - b;
  s16 temp2;
  s32 ret;
  
  if (ABS(temp1) >= d)
  {
    temp2 = temp1 * c + 0.5f;
    ret = b + temp2;
  }
  else
    ret = a;

  return ret;
}

s16 func_800439AC(s16 a, s16 b, f32 c, s16 d)
{
  s16 temp1 = a - b;
  s16 temp2;
  s32 ret;
  
  if (ABS(temp1) >= d)
  {
    temp2 = temp1 * c + 0.5f;
    ret = b + temp2;
  }
  else
    ret = b;

  return ret;
}

void func_80043A3C(Vec3f *a, Vec3f *b, f32 c, f32 d, f32 e)
{
    b->x = func_8004389C(a->x, b->x, d, e);
    b->y = func_8004389C(a->y, b->y, c, e);
    b->z = func_8004389C(a->z, b->z, d, e);
}

void func_80043ABC(Camera *camera)
{
    camera->unk_C0.z = 100.0f;
    camera->unk_C0.y = OREG(7);
    camera->unk_C0.x = OREG(6);
    camera->unk_CC.x = OREG(2) * 0.01f;
    camera->unk_CC.y = OREG(3) * 0.01f;
    camera->unk_CC.z = OREG(4) * 0.01f;
}

void func_80043B60(Camera *camera)
{
    camera->unk_C0.x = OREG(27);
    camera->unk_C0.z = OREG(27);
    camera->unk_C0.y = OREG(27);
    camera->unk_CC.x = 0.001f;
    camera->unk_CC.y = 0.001f;
    camera->unk_CC.z = 0.001f;
}

Vec3f *func_80043BC4(Vec3f *a, Vec3s *b)
{
    Vec3f sp4;

    sp4.x = b->x;
    sp4.y = b->y;
    sp4.z = b->z;

    *a = sp4;
    return a;
}

Vec3f *func_80043C28(Vec3f *a, Vec3f *b, struct_80045714 *c)
{
    Vec3f sp24, sp18;
    func_8007C25C(&sp18, c);

    sp24.x = b->x + sp18.x;
    sp24.y = b->y + sp18.y;
    sp24.z = b->z + sp18.z;
    
    *a = sp24;
    return a;
}

Vec3f *func_80043CAC(Vec3f *a, Vec3f *b, Vec3f *c, f32 d)
{
    Vec3f sp4;

    sp4.x = b->x + (c->x * d);
    sp4.y = b->y + (c->y * d);
    sp4.z = b->z + (c->z * d);

    *a = sp4;
    return a;
}

s32 func_80043D18(Camera *camera, Vec3f *b, struct_80043D18 *c)
{
    CollisionContext *colCtx;
    Vec3f sp68, sp5C, sp50;
    f32 temp_ret;
    CollisionPoly *sp48;
    s32 sp44;
    struct_80045714 sp3C;

    colCtx = &camera->globalCtx->colCtx;
    func_8007C490(&sp3C, b, &c->unk_00);
    sp3C.unk_00 += 8.0f;
    func_80043C28(&sp5C, b, &sp3C);
    
    if (func_8003DD6C(colCtx, b, &sp5C, &sp68, &c->unk_18, 1, 1, 1, -1, &c->unk_24) == 0)
    {
        func_8007C0F8(&sp50, b, &c->unk_00);
        
        c->unk_0C.x = -sp50.x;
        c->unk_0C.y = -sp50.y;
        c->unk_0C.z = -sp50.z;
        
        sp68 = c->unk_00;
        sp68.y += 5.0f;
        temp_ret = func_8003CCA4(colCtx, &sp48, &sp44, &sp68);
        
        if ((c->unk_00.y - temp_ret) > 5.0f)
        {
            c->unk_00.x += c->unk_0C.x;
            c->unk_00.y += c->unk_0C.y;
            c->unk_00.z += c->unk_0C.z;
            return 0;
        }
        
        c->unk_18 = sp48;
        sp68.y = temp_ret + 1.0f;
        c->unk_24 = sp44;
    }
    
    c->unk_0C.x = c->unk_18->norm.x * (1.f / 32767);
    c->unk_0C.y = c->unk_18->norm.y * (1.f / 32767);
    c->unk_0C.z = c->unk_18->norm.z * (1.f / 32767);
    c->unk_00.x = c->unk_0C.x + sp68.x;
    c->unk_00.y = c->unk_0C.y + sp68.y;
    c->unk_00.z = c->unk_0C.z + sp68.z;
    
    return sp44 + 1;
}

void func_80043F34(Camera *camera, Vec3f *b, Vec3f *c)
{
    struct_80043D18 sp20;
    Vec3s unused;
    
    sp20.unk_00 = *c;
    func_80043D18(camera, b, &sp20);
    *c = sp20.unk_00;
}

// 242 lines
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80043F94.s")

void func_80044340(Camera *camera, Vec3f *b, Vec3f *c)
{
    struct_80043D18 sp20;
    Vec3s unused;
    
    sp20.unk_00 = *c;
    func_80043F94(camera, b, &sp20);
    *c = sp20.unk_00;
}

#ifdef NON_MATCHING
f32 func_80038B7C();
// ordering
s32 func_800443A0(Camera *camera, Vec3f *b, Vec3f *c)
{
    s32 sp4C;
    Vec3f sp40;
    s32 sp3C;
    s32 sp38;
    CollisionPoly *sp34;
    
    sp34 = NULL; // this is moved to the top when it should be done in the middle of the function args being loaded
    if (func_8003DD6C(&camera->globalCtx->colCtx, b, c, &sp40, &sp34, 1, 1, 1, 0, &sp38) != 0)
    {
        if (func_80038B7C(sp34, b) < 0.0f)
            return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_800443A0.s")
#endif

f32 func_8003C940(CollisionContext *, CollisionPoly **, s32 *, Vec3f *);
f32 func_80044434(Camera *camera, Vec3f *b, Vec3f *c, s32 *d)
{
    s32 sp2C; // unused
    CollisionPoly *sp28;
    f32 temp_ret = func_8003C940(&camera->globalCtx->colCtx, &sp28, d, c);
    
    if (temp_ret == -32000.0f)
    {
        b->x = 0.0f;
        b->z = 0.0f;
        b->y = 1.0f;
    }
    else
    {
        b->x = sp28->norm.x * (1.f / 32767);
        b->y = sp28->norm.y * (1.f / 32767);
        b->z = sp28->norm.z * (1.f / 32767);
    }

    return temp_ret;
}

void func_80044510(Camera *camera, Vec3f *b)
{
    Vec3f sp2C, sp20;
    s32 sp1C;

    sp2C = *b;
    sp2C.y += 80.0f;
    
    func_80044434(camera, &sp20, &sp2C, &sp1C);
}

// 125 lines (loop)
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80044568.s")

s16 func_80044740(Camera *camera, s32 b)
{
    return func_80041A4C(&camera->globalCtx->colCtx, b, 50);
}

void func_8004476C(Camera *camera)
{
    func_80041C10(&camera->globalCtx->colCtx, camera->unk_148, 50);
}

s32 func_8004479C(Camera *camera, s32 *b, Vec3f *c)
{
    s32 temp_ret;
    PosRot sp20;
    s32 ret;

    func_8002EF44(&sp20, &camera->player->actor);
    temp_ret = func_80041A28(&camera->globalCtx->colCtx, c, *b);

    if (func_80041A4C(&camera->globalCtx->colCtx, temp_ret, *b) == 0)
        ret = -1;
    else
        ret = temp_ret;
    return ret;
}

s32 func_8004481C(Camera *camera, s16 *arg1)
{
    CollisionPoly *sp44;
    s32 sp40; // unused
    s32 sp3C;
    PosRot sp28;

    func_8002EF44(&sp28, &camera->player->actor);
    sp28.pos.y += func_8002DC84(camera->player);
    if (func_8003C940(&camera->globalCtx->colCtx, &sp44, &sp3C, &sp28.pos) == -32000.0f)
    {
        return 0;
    }
    *arg1 = func_80041B80(&camera->globalCtx->colCtx, sp44, sp3C);
    return func_80041C98(&camera->globalCtx->colCtx, sp44, sp3C);
}

s32 func_800448CC(Camera *camera, f32 *b)
{
    PosRot sp34;
    s32 sp30;
    s32 temp_ret;

    func_8002EF44(&sp34, &camera->player->actor);
    *b = sp34.pos.y;
    
    if (func_8004213C(camera->globalCtx, &camera->globalCtx->colCtx, sp34.pos.x, sp34.pos.z, b, &sp30) == 0)
    {
        *b = -32000.0f;
        return -1;
    }
    if (!(camera->player->stateFlags1 & 0x8000000))
    {
        *b = -32000.0f;
        return -1;
    }
    
    temp_ret = func_80042538(&camera->globalCtx->colCtx, sp30);
    if ((temp_ret <= 0) || (func_80042548(&camera->globalCtx->colCtx, sp30) <= 0))
        return -2;
    
    return temp_ret;
}

f32 func_800449AC(Camera *camera, Vec3f *b, s32 *arg2)
{
    PosRot sp2C;
    f32 sp28;
    s32 sp24;

    func_8002EF44(&sp2C, &camera->player->actor);
    sp28 = sp2C.pos.y;
    
    if (func_8004213C(camera->globalCtx, &camera->globalCtx->colCtx, b->x, b->z, &sp28, &sp24) == 0)
        return -32000.f;
    if (sp28 < b->y)
        return -32000.f;

    *arg2 = func_8004259C(&camera->globalCtx->colCtx, sp24);
    return sp28;
}

s16 func_80044A74(Vec3f *a, Vec3f *b)
{
    return func_800FD250(b->x - a->x, b->z - a->z) * (180 / M_PI) * (32767.5f / 180) + 0.5f;
}

// 234 lines
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80044ADC.s")

// 143 lines (extremely confusing)
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80044E68.s")

f32 func_800450A4(Camera *camera, f32 b)
{
    f32 ret;
    
    if (camera->unk_100 < (OREG(41) * 0.01f))
        ret = OREG(41) * 0.01f;
    else if (b <= camera->unk_100)
        ret = b;
    else
        ret = OREG(42) * 0.01f * camera->unk_100;
    
    return ret;
}

// 79 lines (unknown arrays)
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80045128.s")

// 66 lines (unknown arrays)
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80045254.s")

// 76 lines (unknown types)
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80045350.s")

void *func_8004545C(Vec3f *a, s32 b, s32 c, struct_80043D18 *d, struct_80043D18 *e)
{
    Vec3f sp24;

    if (func_800427B4(d->unk_18, e->unk_18, b, c, &sp24) == 0)
    {
        osSyncPrintf(VT_COL(YELLOW, BLACK) "camera: corner check no cross point %x %x\n" VT_RST, d, e);
        *a = d->unk_00;
        return a;
    }
    
    *a = sp24;
    return a;
}

// 141 lines
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80045508.s")

#ifdef NON_MATCHING
// CLOSE: stack is 4 bytes too big
f32 func_80045714(Vec3f *a, s16 b, s16 c, f32 arg3)
{
    struct_80045714 sp1C;
    f32 sp18;

    func_8007C3F4(&sp1C, a);
    sp18 = Math_Coss(sp1C.unk_04);
    sp18 = fabsf(Math_Coss(b - sp1C.unk_06) * sp18);
    return Math_Coss(b - c) * (sp18 * arg3);
}
#else
f32 func_80045714(Vec3f *a, s16 b, s16 c, f32 arg3);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80045714.s")
#endif

#ifdef NON_MATCHING
f32 func_8007C0A8(f32, f32);
// CLOSE: stack is slightly off, probably a temp var
s32 func_800457A8(Camera *camera, struct_80045714 *b, f32 c, s16 d)
{
    f32 unused;
    Vec3f sp50;
    Vec3f sp44;
    s32 unused2;
    f32 temp_ret;
    PosRot *sp2C;
    
    temp_ret = func_8002DC84(camera->player);

    sp50.x = 0.f;
    sp50.z = 0.f;
    sp50.y = temp_ret + c;
    
    sp2C = &camera->unk_94;
    if (d != 0)
    {
        sp50.y -= func_8007C0A8(func_80045714(&camera->unk_108, sp2C->rot.y, b->unk_06, OREG(9)), temp_ret);
    }
    func_80043A3C(&sp50, &camera->unk_E4, camera->unk_CC.y, camera->unk_CC.x, 0.1f);
    
    sp44.x = sp2C->pos.x + camera->unk_E4.x;
    sp44.y = sp2C->pos.y + camera->unk_E4.y;
    sp44.z = sp2C->pos.z + camera->unk_E4.z;
    func_80043A3C(&sp44, &camera->unk_50, camera->unk_100, camera->unk_100, 0.2f);
    
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_800457A8.s")
#endif

#ifdef NON_MATCHING
f32 func_8007C028(Vec3f *, Vec3f *);
// CLOSE: regalloc, plus stack is slightly off, probably a temp var
s32 func_800458D4(Camera *camera, struct_80045714 *b, f32 c, f32 *d, s16 e)
{
    f32 phi_f2;
    Vec3f sp60;
    Vec3f sp54;
    f32 temp_ret;
    PosRot *temp_s1;
    f32 sp48;
    Vec3f sp3C; // unused

    sp60.y = func_8002DC84(camera->player) + c;
    sp60.x = 0.0f;
    sp60.z = 0.0f;
    
    temp_s1 = &camera->unk_94;
    if (e != 0)
        sp60.y -= func_80045714(&camera->unk_108, temp_s1->rot.y, b->unk_06, OREG(9));
    
    sp48 = temp_s1->pos.y - *d;
    temp_ret = func_800FD250(sp48, func_8007C028(&camera->unk_50, &camera->unk_5C)); // f2 and f14 are swapped
    
    if (OREG(32) * (M_PI / 180) < temp_ret)
        phi_f2 = 1.0f - sinf(temp_ret - OREG(32) * (M_PI / 180));
    else if (OREG(33) * (M_PI / 180) > temp_ret)
        phi_f2 = 1.0f - sinf(OREG(33) * (M_PI / 180) - temp_ret);
    else
        phi_f2 = 1.0f;
    
    sp60.y -= sp48 * phi_f2;
    func_80043A3C(&sp60, &camera->unk_E4, OREG(29) * 0.01f, OREG(30) * 0.01f, 0.1f);
    
    sp54.x = temp_s1->pos.x + camera->unk_E4.x;
    sp54.y = temp_s1->pos.y + camera->unk_E4.y;
    sp54.z = temp_s1->pos.z + camera->unk_E4.z;
    func_80043A3C(&sp54, &camera->unk_50, camera->unk_100, camera->unk_100, 0.2f);
    
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_800458D4.s")
#endif

s32 func_80045B08(Camera *camera, struct_80045714 *b, f32 c, s16 d)
{
    f32 phi_f2;
    Vec3f sp48;
    Vec3f sp3C;
    f32 sp38; // unused
    f32 temp_ret;
    PosRot *temp_s1;

    sp48.y = func_8002DC84(camera->player) + c;
    sp48.x = 0.0f;
    sp48.z = 0.0f;
    
    temp_ret = Math_Sins((s32) d);
    temp_s1 = &camera->unk_94;
    
    if (temp_ret < 0.0f)
        phi_f2 = Math_Coss(temp_s1->rot.y - b->unk_06);
    else
        phi_f2 = -Math_Coss(temp_s1->rot.y - b->unk_06);
    
    sp48.y -= temp_ret * phi_f2 * OREG(9);
    func_80043A3C(&sp48, &camera->unk_E4, camera->unk_CC.y, camera->unk_CC.x, 0.1f);
    
    sp3C.x = temp_s1->pos.x + camera->unk_E4.x;
    sp3C.y = temp_s1->pos.y + camera->unk_E4.y;
    sp3C.z = temp_s1->pos.z + camera->unk_E4.z;
    func_80043A3C(&sp3C, &camera->unk_50, camera->unk_100, camera->unk_100, 0.2f);
    
    return 1;
}

#ifdef NON_MATCHING
// someone who's not me can have fun with this function
s32 func_80045C74(Camera *camera, struct_80045714 *b, f32 c, f32 *d, s16 arg4)
{
    Vec3f sp70;
    Vec3f sp64;
    f32 sp54;
    PosRot *sp3C;
    f32 temp;
    f32 temp_f2;
    f32 temp_ret_3;
    f32 phi_f16;
    f32 phi_f20;

    sp70.y = func_8002DC84(camera->player) + c;
    sp70.x = 0.0f;
    sp70.z = 0.0f;
    
    if (PREG(76) != 0)
    {
        if (arg4 != 0)
        {
            sp70.y -= func_80045714(&camera->unk_108, sp3C->rot.y, b->unk_06, OREG(9));
        }
    }
    
    sp3C = &camera->unk_94;
    
    if ((sp3C->pos.y == camera->unk_104) || (camera->player->actor.gravity > -0.1f) || (camera->player->stateFlags1 & 0x200000))
    {
        *d = func_8004389C(sp3C->pos.y, *d, OREG(43) * 0.01f, 0.1f);
        sp70.y -= sp3C->pos.y - *d;
        func_80043A3C(&sp70, &camera->unk_E4, camera->unk_CC.y, camera->unk_CC.x, 0.1f);
    }
    else
    {
        temp = sp3C->pos.y - *d;
        if (PREG(75) == 0)
        {
            sp54 = func_8007C028(&camera->unk_50, &camera->unk_5C);
            func_800FD250(temp, sp54);
            temp_f2 = func_800FCE80(camera->unk_FC * 0.4f * (M_PI / 180)) * sp54;
            
            if (temp > temp_f2)
            {
                *d += temp - temp_f2;
                phi_f20 = temp_f2;
            }
            else
            {
                phi_f20 = temp;
                if (temp < -temp_f2)
                {
                    *d += temp + temp_f2;
                    phi_f20 = -temp_f2;
                }
            }
            sp70.y -= phi_f20;
        }
        else
        {
            temp_ret_3 = func_800FD250(temp, func_8007C028(&camera->unk_50, &camera->unk_5C));
            
            if (OREG(32) * (M_PI / 180) < temp_ret_3)
                phi_f16 = 1.0f - sinf(temp_ret_3 - OREG(32) * (M_PI / 180));
            else if (temp_ret_3 < OREG(33) * (M_PI / 180))
                phi_f16 = 1.0f - sinf(OREG(33) * (M_PI / 180) - temp_ret_3);
            else
                phi_f16 = 1.0f;
            }
            
            sp70.y -= temp * phi_f16;
        }
        
        func_80043A3C(&sp70, &camera->unk_E4, OREG(29) * 0.01f, OREG(30) * 0.01f, 0.1f);
        camera->unk_CC.y = OREG(29) * 0.01f;
        camera->unk_CC.x = OREG(30) * 0.01f;
    }
    
    sp64.x = sp3C->pos.x + camera->unk_E4.x;
    sp64.y = sp3C->pos.y + camera->unk_E4.y;
    sp64.z = sp3C->pos.z + camera->unk_E4.z;
    func_80043A3C(&sp64, &camera->unk_50, camera->unk_100, camera->unk_100, 0.2f);
    
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80045C74.s")
#endif

// 421 lines
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_800460A8.s")

s32 func_800466F8(Camera *camera, struct_80045714 *b, f32 c, f32 *d, s16 e)
{
    s32 phi_v0;
    Vec3f sp60;
    Vec3f sp54;
    f32 sp50; // unused
    f32 sp4C; // unused
    f32 sp48; // I doubt this is a Vec3f
    Player *sp44;
    PosRot sp30;

    sp48 = func_8002DC84(camera->player);
    sp44 = camera->player;
    func_8002EF44(&sp30, sp44->rideActor);
    
    if ((*(s32 *)((s32)(sp44->rideActor) + 0x1F0) & 4) != 0) // actors aren't this big, is rideActor a different type?
        phi_v0 = 1;
    else
        phi_v0 = 0;
    
    if (phi_v0 != 0)
    {
        sp30.pos.y -= 49.f;
        *d = func_8004389C(sp30.pos.y, *d, 0.1f, 0.2f);
        camera->unk_100 = func_8004389C(0.4f, camera->unk_100, 0.2f, 0.02f);
    }
    else
    {
        *d = func_8004389C(sp30.pos.y, *d, 0.5f, 0.2f);
    }
    
    sp60.x = 0.0f;
    sp60.z = 0.0f;
    sp60.y = sp48 + c;
    
    if (e != 0)
        sp60.y -= func_80045714(&camera->unk_108, camera->unk_94.rot.y, b->unk_06, OREG(9));
    
    func_80043A3C(&sp60, &camera->unk_E4, camera->unk_CC.y, camera->unk_CC.x, 0.1f);
    
    sp54.x = camera->unk_E4.x + sp30.pos.x;
    sp54.y = camera->unk_E4.y + sp30.pos.y;
    sp54.z = camera->unk_E4.z + sp30.pos.z;
    func_80043A3C(&sp54, &camera->unk_50, camera->unk_100, camera->unk_100, 0.2f);
    
    return 1;
}

void func_800468CC(Camera *camera, f32 b, f32 c, f32 d)
{
    f32 sp1C;
    f32 phi_f12;

    if (b < c)
    {
        sp1C = c;
        phi_f12 = OREG(6);
    }
    else if (d < b)
    {
        sp1C = d;
        phi_f12 = OREG(6);
    }
    else
    {
        sp1C = b;
        phi_f12 = 1.0f;
    }
    
    camera->unk_C0.x = func_8004389C(phi_f12, camera->unk_C0.x, OREG(25) * 0.01f, 0.1f);
    func_8004389C(sp1C, camera->unk_DC, 1.f / camera->unk_C0.x, 0.2f);
}

void func_800469C0(Camera *camera, f32 b, f32 c, f32 d, s16 e)
{
    f32 sp1C;
    f32 phi_f12;

    if (b < c)
    {
        sp1C = c;
        
        if (e != 0)
            phi_f12 = OREG(6) * 0.5f;
        else
            phi_f12 = OREG(6);
    }
    else if (d < b)
    {
        sp1C = d;
        
        if (e != 0)
            phi_f12 = OREG(6) * 0.5f;
        else
            phi_f12 = OREG(6);
    }
    else
    {
        sp1C = b;
        
        if (e != 0)
            phi_f12 = OREG(6);
        else
            phi_f12 = 1.0f;
    }
    
    camera->unk_C0.x = func_8004389C(phi_f12, camera->unk_C0.x, OREG(25) * 0.01f, 0.1f);
    func_8004389C(sp1C, camera->unk_DC, 1.f / camera->unk_C0.x, 0.2f);
}

#ifdef NON_MATCHING
// lots of regalloc and stack issues, but that's it
void func_80046B44(Camera *camera, s16 b, s16 c, s16 d)
{
    s16 sp1C;
    s16 phi_v1;
    s16 phi_v0;
    f32 phi_a2;

    phi_v1 = ABS(b);
    if (d > 0)
    {
        phi_v0 = Math_Coss(d) * d;
    }
    else
    {
        phi_v0 = d;
    }
    sp1C = c - phi_v0;
    if (ABS(sp1C) < phi_v1)
    {
        phi_a2 = (1.0f / camera->unk_C0.y) * 3.0f;
    }
    else
    {
        phi_a2 = (1.0f / camera->unk_C0.y) * func_800437F0(0.8f, 1.0f - phi_v0 * (1.0f / OREG(5)));
    }
    func_8004391C(sp1C, b, phi_a2, 0xa);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80046B44.s")
#endif

#ifdef NON_MATCHING
// stack, regalloc, tiny bit of ordering
s16 func_80046CB4(Camera *camera, s16 b, s16 c, f32 d, f32 e)
{
    f32 sp34;
    s16 sp1C;
    f32 temp_ret;
    f32 phi_f14;
	s16 temp;

    if (camera->unk_D8 > 0.001f)
    {
		temp = b - 0x7fff; // this is probably some kind of cast that I'm too stupid to know
        sp1C = c - temp;
        phi_f14 = (s16)(sp1C - 0x7fff) * 0.00003051851f;
    }
    else
    {
		temp = b - 0x7fff;
        sp1C = c - temp;
        phi_f14 = OREG(48) * 0.01f;
    }
    temp_ret = func_800437F0(d, phi_f14);
    sp34 = ((1.0f - temp_ret) * e) + temp_ret;
    if (sp34 < 0.0f)
    {
        sp34 = 0.0f;
    }
	// ordering stuff here
    return (s16)((sp1C * sp34) * (1.0f / camera->unk_C0.z) * func_800437F0(0.5f, camera->unk_E0)) + b;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80046CB4.s")
#endif

// 364 lines
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80046E20.s")

s32 func_80047394(Camera *camera)
{
    return 1;
}

// Needs splitting
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_800473A0.s")

// Needs splitting
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80051B3C.s")

// Very long function (1,444 lines), 1 jtbl
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80052E0C.s")

void Camera_DebugPrintSplineArray(char* name, s16 length, SplineData splines[])
{
    s32 i;
    
    osSyncPrintf("static SplinedatZ  %s[] = {\n", name);
    for (i = 0; i < length; i++)
    {
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

void Camera_Vec3fCopy(Vec3f *src, Vec3f *dst)
{
    dst->x = src->x;
    dst->y = src->y;
    dst->z = src->z;
}

// Needs splitting
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80054478.s")

// 225 lines
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80057C6C.s")

#ifdef NON_MATCHING
// still needs a bit of work, but should be functionally equivalent
void func_80057FC4(Camera *camera)
{
    if (camera != &camera->globalCtx->cameraCtx.activeCameras[0])
    {
        camera->unk_142 = 33;
        camera->unk_14C &= ~0x4;
        camera->unk_154 = camera->unk_142; // compiler uses the same temp reg, but it should load from 142 right after being saved to
        // maybe try camera->unk_154 = camera->unk_142 = 33 and make them have differing signs?
        return;
    }
    // try putting these in a bunch of if else statements
    if (*camera->globalCtx->roomCtx.curRoom.unk_08 != 1)
    {
        if (camera->globalCtx->roomCtx.curRoom.unk_03 != 0)
        {
            if (camera->globalCtx->roomCtx.curRoom.unk_03 == 1)
            {
                func_8005AD40(camera, 0, -99, 0, 0, 18, 10);
                camera->unk_142 = 3;
                camera->unk_154 = camera->unk_142;
                return;
            }
            osSyncPrintf("camera: room type: default set etc (%d)\n", camera->globalCtx->roomCtx.curRoom.unk_03);
            func_8005AD40(camera, 0, -99, 0, 0, 18, 10);
            camera->unk_142 = 1;
            camera->unk_154 = camera->unk_142;
            return;
        }
        osSyncPrintf("camera: room type: default set field\n");
        func_8005AD40(camera, 0, -99, 0, 0, 18, 10);
        camera->unk_142 = 1;
        camera->unk_14C |= 4;
        camera->unk_154 = camera->unk_142;
        return;
    }
    osSyncPrintf("camera: room type: prerender\n");
    camera->unk_142 = 0x21;
    camera->unk_14C &= 0xfffb;
    camera->unk_154 = camera->unk_142;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80057FC4.s")
#endif

void Camera_Stub80058140(Camera *camera)
{
}

// 135 lines (has lwl/lwr)
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80058148.s")

// 109 lines (unknown arrays)
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80058354.s")

// 261 lines
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_800584E8.s")

// 296 lines
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_800588B4.s")

s32 func_80058CF8(Camera *camera)
{
    camera->unk_152 &= ~1;
    
    if (camera->globalCtx->roomCtx.curRoom.unk_02 == 3)
        camera->unk_152 |= 1;
    
    return 1;
}

// 92 lines (unknown arrays)
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80058D34.s")

// 224 lines
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80058E8C.s")

// Long function, 866 lines (lots of debug symbols)
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_800591EC.s")

void func_80059EC8(Camera *camera)
{
    Camera *sp24 = camera->globalCtx->cameraCtx.activeCameraPtrs[0];
    Player *player = (Player *)camera->globalCtx->actorCtx.actorList[2].first;
    
    if (camera->unk_160 == 0)
    {
        func_800C0314(camera->globalCtx, camera->unk_162, 7);
        
        if ((camera->unk_162 == 0) && (camera->unk_168 != 0))
        {
            player->actor.freeze = 0;
            player->stateFlags1 &= ~0x20000000;
            
            if (player->action != 0)
            {
                func_8002DF54(camera->globalCtx, &player->actor, 7);
                osSyncPrintf("camera: player demo end!!\n");
            }
            
            sp24->unk_14C |= 8;
        }

        if (camera->globalCtx->cameraCtx.activeCameraPtrs[camera->unk_14E]->unk_162 == camera->unk_164)
            camera->globalCtx->cameraCtx.activeCameraPtrs[camera->unk_14E]->unk_162 = camera->unk_162;
        
        if (camera->globalCtx->cameraCtx.activeCameraPtrs[camera->unk_162]->unk_14E == camera->unk_164)
            camera->globalCtx->cameraCtx.activeCameraPtrs[camera->unk_162]->unk_14E = camera->unk_14E;

        if (camera->globalCtx->cameraCtx.activeCameraPtrs[camera->unk_162]->unk_164 == 0)
            camera->globalCtx->cameraCtx.activeCameraPtrs[camera->unk_162]->unk_15E = 0;
        
        camera->unk_162 = 0;
        camera->unk_14E = camera->unk_162;
        camera->unk_160 = -1;
        camera->globalCtx->unk_10B05 = 0;
        
        func_800C0384(camera->globalCtx, camera->unk_164);
    }
}

s32 func_8005A02C(Camera *camera)
{
    camera->unk_14C |= 0xC;
    camera->unk_14C &= ~(0x1000 | 0x8);
    return 1;
}

// 275 lines (has 2 jtbls)
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_8005A04C.s")

void func_8005A444(Camera *camera, s16 b)
{
    func_8005A04C(camera, b, 0);
}

// 57 lines (unknown arrays)
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_8005A470.s")

// 154 lines (unknown arrays)
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_8005A548.s")

s32 func_8005A77C(Camera *camera, s16 b)
{
    return func_8005A548(camera, b, 0);
}

// 79 lines (unknown arrays)
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_8005A7A8.s")

// 47 lines (has lwl/lwr)
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_8005A8C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_8005A948.s")

// 80 lines (has lwl/lwr)
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_8005A970.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_8005A9CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_8005AA1C.s")

// 118 lines (has 1 jtbl)
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_8005AA90.s")

s32 func_8005AC48(Camera *camera, s16 b)
{
    camera->unk_14C = b;
    return 1;
}

s32 func_8005AC60(Camera *camera)
{
    camera->unk_15E = 0;
    return 1;
}

s32 func_8005AC6C(Camera *camera, s32 b, s32 c, Player *d, s16 e)
{
    PosRot sp24;

    camera->unk_124 = b;
    camera->unk_128 = c;
    camera->unk_12C = e;
    
    if (camera->unk_12C != 0)
    {
        camera->player = d;
        func_8002EF44(&sp24, &d->actor);
        camera->unk_94 = sp24;
        
        camera->unk_156 = -1;
        camera->unk_D8 = 0.0f;
        camera->unk_E0 = 0.0f;
    }
    
    return 1;
}

s16 func_8005ACFC(Camera *camera, s16 b)
{
    camera->unk_14C |= b;
    return camera->unk_14C;
}

s16 func_8005AD1C(Camera *camera, s16 b)
{
    camera->unk_14C &= ~b;
    return camera->unk_14C;
}

s32 func_8005AD40(Camera *camera, s32 a, s16 b, s16 c, s16 d, s16 e, s16 f)
{
    if ((camera->unk_142 == 43) || (camera->unk_142 == 29))
        return 0;
    
    camera->unk_00 = a;
    camera->unk_06 = d;
    camera->unk_08 = e;
    camera->unk_0A = f;
    camera->unk_04 = b;
    
    if (b == -99)
    {
        func_80045128(camera, camera->unk_144);
        return -99;
    }
    
    if (b == -1)
    {
        func_8005A77C(camera, 29);
        osSyncPrintf(".... change default door camera (set %d)\n", 29);
    }
    else
    {
        s32 ret = func_80044740(camera, b);
        camera->unk_14A |= 0x40;
        
        if (func_8005A77C(camera, ret) >= 0)
        {
            camera->unk_148 = b;
            camera->unk_14A |= 4;
        }
        
        // this is likely important for labelling unk_148 and unk_142
        osSyncPrintf("....change door camera ID %d (set %d)\n", camera->unk_148, camera->unk_142);
    }
    
    func_80045128(camera, camera->unk_144);
    return -1;
}

s32 func_8005AE64(Camera *camera, Camera *otherCamera)
{
    s32 unused;
    Vec3f sp30;

    camera->unk_E4.x = 0.0f;
    camera->unk_E4.y = 0.0f;
    camera->unk_E4.z = 0.0f;
    camera->unk_100 = 0.1f;
    camera->unk_50 = otherCamera->unk_50;
    
    sp30 = otherCamera->unk_5C;
    camera->unk_74 = sp30;
    camera->unk_5C = sp30;

    camera->unk_DC = func_8007BF90(&camera->unk_50, &camera->unk_5C);
    camera->unk_FC = otherCamera->unk_FC;
    camera->unk_15A = otherCamera->unk_15A;
    func_80043B60(camera);
    
    if (camera->player != NULL)
    {
        func_8002EF14(&camera->unk_94, &camera->player->actor);
        camera->unk_E4.x = camera->unk_50.x - camera->unk_94.pos.x;
        camera->unk_E4.y = camera->unk_50.y - camera->unk_94.pos.y;
        camera->unk_E4.z = camera->unk_50.z - camera->unk_94.pos.z;
        camera->unk_DC = func_8007BF90(&camera->unk_94.pos, &camera->unk_5C);
        camera->unk_CC.x = 1.0f;
        camera->unk_CC.y = 1.0f;
    }
    return 1;
}

s32 func_8005AFA8()
{
    return D_8011D394;
}

Vec3f *func_8005AFB4(Vec3f *dst, Camera *camera)
{
    *dst = camera->unk_80;
    return dst;
}

void Camera_SetCameraData(Camera *camera, s16 b, s32 c, s32 d, s16 e, s16 f) // Unused
{
    if (b & 0x1)
        camera->unk_124 = c;
    
    if (b & 0x2)
        camera->unk_128 = d;
    
    if (b & 0x4)
        camera->unk_12C = e;
    
    if (b & 0x8)
        camera->unk_12E = f;
    
    if (b & 0x10)
        osSyncPrintf(VT_COL(RED, WHITE) "camera: setCameraData: last argument not alive!\n" VT_RST, b);
}

s32 func_8005B044()
{
    if (QREG(0) == 0)
    {
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

s32 func_8005B198()
{
    return D_8011D3AC;
}

s16 func_8005B1A4(Camera *camera)
{
    camera->unk_14C |= 0x8;
    
    if ((camera->unk_164 == 0) && (camera->globalCtx->cameraCtx.unk_5C0 != 0))
    {
        camera->globalCtx->cameraCtx.activeCameraPtrs[camera->globalCtx->cameraCtx.unk_5C0]->unk_14C |= 0x8;
        return camera->globalCtx->cameraCtx.unk_5C0;
    }
    
    return camera->unk_164;
}
