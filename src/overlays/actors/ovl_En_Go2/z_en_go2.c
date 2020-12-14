#include "z_en_go2.h"
#include "overlays/actors/ovl_En_Bom/z_en_bom.h"

#define FLAGS 0x00000039

#define THIS ((EnGo2*)thisx)

void EnGo2_Init(Actor* thisx, GlobalContext* globalCtx);
void EnGo2_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnGo2_Update(Actor* thisx, GlobalContext* globalCtx);
void EnGo2_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A42D30(EnGo2* this, Vec3f* pos, Vec3f* velocity, Vec3f* accel, u8 unk_arg1, f32 unk_arg2, f32 unk_arg3);
void func_80A42DD4(EnGo2* this);
void func_80A42EE0(EnGo2* this, GlobalContext* globalCtx);
void func_80A4320C(EnGo2* this, u8 unk_arg1, f32 unk_arg2, f32 unk_arg3, s32 unk_arg4, f32 unk_arg5, f32 unk_arg6);
void func_80A43424(EnGo2* this, GlobalContext* globalCtx, s32 getItemID);
s32 func_80A43468(EnGo2* this, GlobalContext* globalCtx);

u16 func_80A434E8(EnGo2* this);

u16 func_80A43564(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A435E8(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A436DC(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A43714(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A43824(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A4387C(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A438B4(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A43950(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A439AC(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A43A2C(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A43A88(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A43B08(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A43B64(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A43C40(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A43C9C(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A43D78(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A43F90(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A44010(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A44224(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A44258(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A442F0(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A4433C(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A44398(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A443A8(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A443E0(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A4444C(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A444A8(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A444FC(GlobalContext* globalCtx, EnGo2* this);

u16 func_80A44534(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A44678(GlobalContext* globalCtx, EnGo2* this);

s32 func_80A44790(EnGo2* this, GlobalContext* globalCtx);
void func_80A4488C(EnGo2* this);
void func_80A448C4(EnGo2* this);

// s32 func_80A44940(EnGo2* this, GlobalContext* globalCtx);
void func_80A44A9C(EnGo2* this);

s32 func_80A44AB0(EnGo2* this, GlobalContext* globalCtx);
s32 EnGo2_UpdateWaypoint(EnGo2* this, GlobalContext* globalCtx);
s32 EnGo2_Orient(EnGo2* this, GlobalContext* globalCtx);

s32 func_80A44D84(EnGo2* this);
s32 func_80A44DC0(EnGo2* this);

void func_80A45B14(EnGo2* this, s32 unk_arg);

void func_80A45B9C(EnGo2* this, GlobalContext* globalCtx);
void func_80A45C50(EnGo2* this, GlobalContext* globalCtx);

void func_80A45D40(EnGo2* this, GlobalContext* globalCtx);
void func_80A45DA4(EnGo2* this, GlobalContext* globalCtx);
void func_80A45E48(EnGo2* this, GlobalContext* globalCtx);

s32 func_80A45F08(EnGo2* this, GlobalContext* globalCtx);

s32 func_80A45F9C(EnGo2* this);

s32 func_80A4601C(EnGo2* this, GlobalContext* globalCtx);
s32 func_80A4607C(EnGo2* this);
s32 func_80A460B8(EnGo2* this);
s32 func_80A46114(EnGo2* this);

void func_80A461A8(EnGo2* this, GlobalContext* globalCtx);
void func_80A462D8(EnGo2* this, GlobalContext* globalCtx);
void func_80A463D8(EnGo2* this, GlobalContext* globalCtx);
void func_80A46418(EnGo2* this);

void func_80A4696C(EnGo2* this, GlobalContext* globalCtx);
void func_80A46B40(EnGo2* this, GlobalContext* globalCtx);
void func_80A46CD8(EnGo2* this, GlobalContext* globalCtx);
void func_80A46D5C(EnGo2* this, GlobalContext* globalCtx);
void func_80A46DBC(EnGo2* this, GlobalContext* globalCtx);
void func_80A46E54(EnGo2* this, GlobalContext* globalCtx);
void func_80A46F88(EnGo2* this, GlobalContext* globalCtx);

void func_80A47024(EnGo2* this, GlobalContext* globalCtx);
void func_80A470E8(EnGo2* this, GlobalContext* globalCtx);
void func_80A47158(EnGo2* this, GlobalContext* globalCtx);
void func_80A4725C(EnGo2* this, GlobalContext* globalCtx);
void func_80A47490(EnGo2* this, GlobalContext* globalCtx);
void func_80A47578(EnGo2* this, GlobalContext* globalCtx);

s32 func_80A479B0(EnGo2* this, GlobalContext* globalCtx);
s32 func_80A47AB0(EnGo2* this, GlobalContext* globalCtx);
s32 func_80A47C20(GlobalContext* globalCtx, s32 limb, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx);
void func_80A47E34(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx);

extern AnimationHeader D_06000750;
extern AnimationHeader D_06000D5C;
extern UNK_TYPE D_06004930;
extern Gfx* D_0600BD80;
extern Gfx* D_0600C140;
extern UNK_TYPE D_0600FD40;
extern UNK_TYPE D_0600FD50;
extern FlexSkeletonHeader D_0600FEF0;

s32 D_80A480D0[] = { 0x040539B0, 0x040535B0, 0x040531B0, 0x04052DB0, 0x040529B0, 0x040525B0, 0x040521B0, 0x04051DB0 };
s32 D_80A480F0[] = { 0x00000000, 0x00000000, 0x00000000 };
s32 D_80A480FC[] = { 0x00000000, 0x00000000, 0x00000000 };
s32 D_80A48108[] = { 0x00000000, 0x3E99999A, 0x00000000 };
s32 D_80A48114[] = { 0x0A000939, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x00000008,
                     0x00000000, 0x00000100, 0x00280041, 0x00000000, 0x00000000 };
s32 D_80A48140[] = { 0x00000000, 0x00000000, 0xFF000000 };

const ActorInit En_Go2_InitVars = {
    ACTOR_EN_GO2,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_OF1D_MAP,
    sizeof(EnGo2),
    (ActorFunc)EnGo2_Init,
    (ActorFunc)EnGo2_Destroy,
    (ActorFunc)EnGo2_Update,
    (ActorFunc)EnGo2_Draw,
};

s8 D_80A4816C[] = { 0x00, 0x00, 0x00, 0x00 };
s32 D_80A48170[] = { 0x00000044 };

s32 D_80A48174[] = { 0x00940000, 0x00000000, 0x00180034, 0x00000140, 0x017C0190, 0x00780000, 0x00000000,
                     0x001E0044, 0x00000000, 0x0000002E, 0x005A0000, 0x00000000, 0x001E0044, 0x00000000,
                     0x0000001E, 0x00440000, 0x00000000, 0x001E0044, 0x00000000, 0x0000001E, 0x00440000,
                     0x00000000, 0x001E0044, 0x00000000, 0x0000001E, 0x00440000, 0x00000000, 0x001E0044,
                     0x00000000, 0x0000001E, 0x00440000, 0x00000000, 0x001E0044 };

s32 D_80A481F8[] = { 0x41F00000, 0x3CD4FDF4, 0x06000000, 0x42700000, 0x41C00000, 0x3C03126F, 0x06000000, 0x41F00000,
                     0x41E00000, 0x3E23D70A, 0x05000000, 0x43BE0000, 0x41E00000, 0x3C23D70A, 0x07000000, 0x42200000,
                     0x41F00000, 0x3C75C28F, 0x06000000, 0x41F00000, 0x41E00000, 0x3C23D70A, 0x06000000, 0x41F00000,
                     0x41E00000, 0x3C23D70A, 0x06000000, 0x41F00000, 0x41E00000, 0x3C23D70A, 0x06000000, 0x41F00000,
                     0x41E00000, 0x3C23D70A, 0x06000000, 0x41F00000, 0x41E00000, 0x3C23D70A, 0x06000000, 0x41F00000,
                     0x41E00000, 0x3C23D70A, 0x06000000, 0x41F00000, 0x41E00000, 0x3C23D70A, 0x06000000, 0x41F00000,
                     0x41E00000, 0x3C23D70A, 0x06000000, 0x41F00000, 0x41E00000, 0x3C23D70A, 0x06000000, 0x41F00000 };

s32 D_80A482D8[] = { 0x42A00000, 0x42A00000, 0xC1200000, 0xC1200000, 0x44480000, 0x44480000, 0x00000000,
                     0x00000000, 0x41A00000, 0x42200000, 0x41A00000, 0x41A00000, 0x41A00000, 0x41A00000,
                     0x41A00000, 0x41A00000, 0x41A00000, 0x41A00000, 0x41A00000, 0x41A00000, 0x41A00000,
                     0x41A00000, 0x41A00000, 0x41A00000, 0x41A00000, 0x41A00000, 0x41A00000, 0x41A00000 };
// sAnimations
struct_80034EC0_Entry D_80A48348[] = {
    { 0x06004930, 0.0f, 0.0f, -1.0f, 0x00, 0.0f },  { 0x06004930, 0.0f, 0.0f, -1.0f, 0x00, -8.0f },
    { 0x060029A8, 1.0f, 0.0f, -1.0f, 0x00, -8.0f }, { 0x06010590, 1.0f, 0.0f, -1.0f, 0x00, -8.0f },
    { 0x06003768, 1.0f, 0.0f, -1.0f, 0x00, -8.0f }, { 0x060038E4, 1.0f, 0.0f, -1.0f, 0x02, -8.0f },
    { 0x06002D80, 1.0f, 0.0f, -1.0f, 0x02, -8.0f }, { 0x0600161C, 1.0f, 0.0f, -1.0f, 0x00, -8.0f },
    { 0x06001A00, 1.0f, 0.0f, -1.0f, 0x00, -8.0f }, { 0x060021D0, 1.0f, 0.0f, -1.0f, 0x00, -8.0f },
    { 0x06004930, 0.0f, 0.0f, -1.0f, 0x01, -8.0f }, { 0x06000750, 1.0f, 0.0f, -1.0f, 0x00, -8.0f },
    { 0x06000D5C, 1.0f, 0.0f, -1.0f, 0x00, -8.0f }
};
s32 D_80A48480[] = { 0x0C000000, 0x3E4CCCCD, 0x3E4CCCCD, 0x00000001, 0x41900000, 0x00000000, 0x0C000000, 0x3DCCCCCD,
                     0x3E4CCCCD, 0x0000000C, 0x41D00000, 0x00000000, 0x0C000000, 0x3DCCCCCD, 0x3E99999A, 0x00000004,
                     0x41200000, 0x00000000, 0x0C000000, 0x3E4CCCCD, 0x3E4CCCCD, 0x00000001, 0x41900000, 0x00000000,
                     0x0C000000, 0x3F000000, 0x3ECCCCCD, 0x00000003, 0x42280000, 0x00000000, 0x0C000000, 0x3F000000,
                     0x3ECCCCCD, 0x00000003, 0x42280000, 0x00000000, 0x0C000000, 0x3F000000, 0x3ECCCCCD, 0x00000003,
                     0x42280000, 0x00000000, 0x0C000000, 0x3F000000, 0x3ECCCCCD, 0x00000003, 0x42280000, 0x00000000,
                     0x00000000, 0x00000000, 0x00000000 };
s32 D_80A4854C[] = { 0x00000000, 0x00000000 };
Vec3f D_80A48554 = { 0.0f, 0.0f, 0.0f };
Vec3f D_80A48560 = { 0.0f, 0.0f, 0.0f };
Vec3f D_80A4856C = { 600.0f, 0.0f, 0.0f };
s32 D_80A48578[] = { 0x0600DA80, 0x0600CE80, 0x0600D280, 0x0600D680 };
s32 D_80A48588[] = { 0x0600DE80, 0x0600E680 };

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A42D30.s")
void func_80A42D30(EnGo2* this, Vec3f* pos, Vec3f* velocity, Vec3f* accel, u8 unk_arg1, f32 unk_arg2, f32 unk_arg3) {
    EnGoUnkStruct* phi_v0;
    s16 i;
    s16 arg1;

    phi_v0 = this->unk_270;

    for (i = 0; i < 10; i++) {
        if (phi_v0->unk_0 != 1) {
            phi_v0->unk_4 = unk_arg2;
            phi_v0->unk_8 = unk_arg3;
            if (1) {}
            arg1 = unk_arg1;
            phi_v0->unk_1 = arg1;
            phi_v0->unk_0 = 1;
            phi_v0->unk_2 = unk_arg1;
            phi_v0->pos = *pos;
            phi_v0->accel = *accel;
            phi_v0->velocity = *velocity;
            return;
        }
        phi_v0++;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A42DD4.s")
void func_80A42DD4(EnGo2* this) {
    EnGoUnkStruct* phi_s0;
    f32 randomNumber;
    s16 temp_s1;
    s16 i;

    phi_s0 = this->unk_270;

    for (i = 0; i < 10; i++) {
        if (phi_s0->unk_0) {
            phi_s0->unk_1--;

            if ((phi_s0->unk_1) == 0) {
                phi_s0->unk_0 = 0;
            }

            phi_s0->accel.x = (Math_Rand_ZeroOne() * 0.4f) - 0.2f;
            randomNumber = Math_Rand_ZeroOne() * 0.4f;
            phi_s0->accel.z = randomNumber - 0.2f;
            phi_s0->pos.x += phi_s0->velocity.x;
            phi_s0->pos.y += phi_s0->velocity.y;
            phi_s0->pos.z += phi_s0->velocity.z;
            phi_s0->velocity.x += phi_s0->accel.x;
            phi_s0->velocity.y += phi_s0->accel.y;
            phi_s0->velocity.z += randomNumber - 0.2f;
            phi_s0->unk_4 += phi_s0->unk_8;
        }
        phi_s0++;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A42EE0.s")
// Just copy from ovl_En_Go/func_80A417B4 when matched
// void func_80A42EE0(EnGo2 *this, GlobalContext *globalCtx) {
//     Gfx *sp88;
//     EnGoUnkStruct *temp_s2;
//     Gfx *temp_v0;
//     Gfx *temp_v0_2;
//     Gfx *temp_v0_3;
//     Gfx *temp_v0_4;
//     Gfx *temp_v0_5;
//     Gfx *temp_v0_6;
//     Gfx *temp_v0_7;
//     GraphicsContext *temp_a1;
//     GraphicsContext *temp_s0;
//     MtxF *temp_s3;
//     f32 temp_f12;
//     f32 temp_f16;
//     f32 temp_f16_2;
//     f32 temp_f6;
//     f32 temp_f8;
//     s16 temp_s4;
//     s32 temp_a0;
//     u8 temp_t1;
//     u8 temp_t2;
//     u8 temp_t2_2;
//     u8 temp_t3;
//     EnGoUnkStruct *phi_s2;
//     s32 phi_s7;
//     f32 phi_f6;
//     f32 phi_f16;
//     f32 phi_f16_2;
//     f32 phi_f8;
//     s16 phi_s4;

//     temp_a1 = globalCtx->state.gfxCtx;
//     temp_s2 = this->unk_270;
//     temp_s0 = temp_a1;
//     Graph_OpenDisps(&sp88, temp_a1, (const char *) "../z_en_go2_eff.c", 0x6F);
//     func_80093D84(globalCtx->state.gfxCtx);
//     phi_s2 = temp_s2;
//     phi_s7 = 0;
//     phi_s4 = (u16)0;
// loop_1:
//     temp_s3 = &globalCtx->mf_11DA0;
//     if (phi_s2->unk_0 != 0) {
//         if (phi_s7 == 0) {
//             temp_v0 = Gfx_CallSetupDL(temp_s0->polyXlu.p, 0U);
//             temp_s0->polyXlu.p = temp_v0;
//             temp_s0->polyXlu.p = temp_v0 + 8;
//             temp_v0->words.w1 = 0x600FD40;
//             temp_v0->words.w0 = 0xDE000000;
//             temp_v0_2 = temp_s0->polyXlu.p;
//             temp_s0->polyXlu.p = temp_v0_2 + 8;
//             temp_v0_2->words.w0 = 0xFB000000;
//             temp_v0_2->words.w1 = 0x643C1400;
//             phi_s7 = 1;
//         }
//         temp_t1 = phi_s2->unk_1;
//         temp_f6 = (f32) temp_t1;
//         phi_f6 = temp_f6;
//         if ((s32) temp_t1 < 0) {
//             phi_f6 = temp_f6 + 4294967296.0f;
//         }
//         temp_t2 = phi_s2->unk_2;
//         temp_f16 = (f32) temp_t2;
//         phi_f16 = temp_f16;
//         if ((s32) temp_t2 < 0) {
//             phi_f16 = temp_f16 + 4294967296.0f;
//         }
//         temp_v0_3 = temp_s0->polyXlu.p;
//         temp_s0->polyXlu.p = temp_v0_3 + 8;
//         temp_v0_3->words.w0 = 0xFA000000;
//         temp_v0_3->words.w1 = ((s16) (s32) (phi_f6 * (255.0f / phi_f16)) & 0xFF) | 0xAA825A00;
//         temp_v0_4 = temp_s0->polyXlu.p;
//         temp_s0->polyXlu.p = temp_v0_4 + 8;
//         temp_v0_4->words.w1 = 0;
//         temp_v0_4->words.w0 = 0xE7000000;
//         Matrix_Translate(phi_s2->pos.x, phi_s2->pos.y, (bitwise f32) phi_s2->pos.z, (u8)0U);
//         func_800D1FD4(temp_s3);
//         temp_f12 = phi_s2->unk_4;
//         Matrix_Scale(temp_f12, temp_f12, 1.0f, (u8)1U);
//         temp_v0_5 = temp_s0->polyXlu.p;
//         temp_s0->polyXlu.p = temp_v0_5 + 8;
//         temp_v0_5->words.w0 = 0xDA380003;
//         temp_v0_5->words.w1 = Matrix_NewMtx(globalCtx->state.gfxCtx, (char *) "../z_en_go2_eff.c", 0x89);
//         temp_t2_2 = phi_s2->unk_1;
//         temp_f16_2 = (f32) temp_t2_2;
//         phi_f16_2 = temp_f16_2;
//         if ((s32) temp_t2_2 < 0) {
//             phi_f16_2 = temp_f16_2 + 4294967296.0f;
//         }
//         temp_t3 = phi_s2->unk_2;
//         temp_f8 = (f32) temp_t3;
//         phi_f8 = temp_f8;
//         if ((s32) temp_t3 < 0) {
//             phi_f8 = temp_f8 + 4294967296.0f;
//         }
//         temp_v0_6 = temp_s0->polyXlu.p;
//         temp_s0->polyXlu.p = temp_v0_6 + 8;
//         temp_v0_6->words.w0 = 0xDB060020;
//         temp_a0 = D_80A480D0[(s16) (s32) (phi_f16_2 * (8.0f / phi_f8))];
//         temp_v0_6->words.w1 = (temp_a0 & 0xFFFFFF) + gSegments[(u32) (temp_a0 * 0x10) >> 0x1C] + 0x80000000;
//         temp_v0_7 = temp_s0->polyXlu.p;
//         temp_s0->polyXlu.p = temp_v0_7 + 8;
//         temp_v0_7->words.w1 = 0x600FD50;
//         temp_v0_7->words.w0 = 0xDE000000;
//     }
//     temp_s4 = phi_s4 + 1;
//     phi_s2 = phi_s2 + 0x38;
//     phi_s4 = temp_s4;
//     if ((s32) temp_s4 < 0xA) {
//         goto loop_1;
//     }
//     Graph_CloseDisps(&sp88, globalCtx->state.gfxCtx, (const char *) "../z_en_go2_eff.c", 0x97);
// }

// Just copy ovl_En_Go/func_80A3F594.s when matching
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A4320C.s")
// void func_80A4320C(EnGo2 *this, u8 unk_arg1, f32 unk_arg2, f32 unk_arg3, s32 unk_arg4, f32 unk_arg5, f32 unk_arg6) {
//     f32 sp9C;
//     f32 sp98;
//     f32 sp94;
//     ? sp88;
//     f32 sp80;
//     ? sp7C;
//     f32 *temp_s4;
//     s32 temp_s2;
//     s16 phi_s0;
//     s32 phi_s2;

//     temp_s4 = &sp94;
//     temp_s4->unk0 = (s32) D_80A480F0->unk0;
//     temp_s4->unk4 = (s32) D_80A480F0[1];
//     temp_s4->unk8 = (s32) D_80A480F0[2];
//     sp88.unk0 = (s32) D_80A480FC->unk0;
//     sp88.unk4 = (s32) D_80A480FC[1];
//     sp88.unk8 = (s32) D_80A480FC[2];
//     sp7C.unk0 = (s32) D_80A48108->unk0;
//     sp7C.unk4 = (s32) D_80A48108[1];
//     sp7C.unk8 = (s32) D_80A48108[2];
//     temp_s4->unk0 = (bitwise s32) this->actor.posRot.pos.x;
//     temp_s4->unk4 = (bitwise s32) this->actor.posRot.pos.y;
//     temp_s4->unk8 = (bitwise s32) this->actor.posRot.pos.z;
//     sp98 = this->actor.groundY;
//     if (unk_arg4 >= 0) {
//         phi_s0 = (s16) (s32) ((Math_Rand_ZeroOne() - 0.5f) * 65536.0f);
//         phi_s2 = unk_arg4;
// loop_2:
//         sp80 = sp80 + (Math_Rand_ZeroOne() * unk_arg6);
//         sp94 = (Math_Sins(phi_s0) * unk_arg5) + this->actor.posRot.pos.x;
//         sp9C = (Math_Coss(phi_s0) * unk_arg5) + this->actor.posRot.pos.z;
//         func_80A42D30(this, (Vec3f *) temp_s4, (Vec3f *) &sp88, (Vec3f *) &sp7C, unk_arg1 & 0xFF, unk_arg2,
//         unk_arg3); temp_s2 = phi_s2 - 1; phi_s0 = (s16) (phi_s0 + (s16) (0x10000 / unk_arg4)); phi_s2 = temp_s2; if
//         (temp_s2 >= 0) {
//             goto loop_2;
//         }
//     }
// }

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A43424.s")
void func_80A43424(EnGo2* this, GlobalContext* globalCtx, s32 getItemID) {
    this->getItemID = getItemID;
    func_8002F434(&this->actor, globalCtx, getItemID, this->actor.xzDistFromLink + 1.0f,
                  fabsf(this->actor.yDistFromLink) + 1.0f);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A43468.s")
s32 func_80A43468(EnGo2* this, GlobalContext* globalCtx) {
    s16 temp_v0;

    temp_v0 = func_8010BDBC(&globalCtx->msgCtx);

    if ((this->unk_20D == 0xA) || (this->unk_20D == 5) || (this->unk_20D == 2) || (this->unk_20D == 1)) {
        if (temp_v0 != this->unk_20D) {
            this->unk_20C++;
        }
    }

    this->unk_20D = temp_v0;
    return temp_v0;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A434E8.s")
u16 func_80A434E8(EnGo2* this) {

    switch ((this->actor.params & 0xFC00) >> 0xA) {
        case 3:
            return 0x3069;
        case 5:
            return 0x306A;
        case 4:
            return 0x306B;
        case 2:
            return 0x306C;
        case 10:
            return 0x306D;
        case 8:
            return 0x306E;
        case 11:
            return 0x306F;
        case 1:
            return 0x3070;
        default:
            return 0x3052;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A43564.s")
u16 func_80A43564(GlobalContext* globalCtx, EnGo2* this) {

    if (gSaveContext.infTable[17] & 0x4000) {
        return 0x3013;
    }
    if (CUR_CAPACITY(UPG_BOMB_BAG) >= 20) {
        if ((this->waypoint >= 8) && (this->waypoint < 0xC)) {
            return 0x3012;
        }
    }
    return 0x3011;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A435E8.s")
// u16 func_80A435E8(GlobalContext *globalCtx, EnGo2 *this) {
//     u8 temp_v0;
//     s32 phi_a2;

//     temp_v0 = func_8010BDBC(&globalCtx->msgCtx);
//     if (temp_v0 == 2) {
//         return 2;
//     }

//     if (temp_v0 == 5) {
//         if(func_80106BC8(globalCtx)) {
//             if (this->actor.textId == 0x3012) {
//                 this->actionFunc = func_80A470E8;
//                 if (CUR_CAPACITY(UPG_BOMB_BAG) == 30) {
//                     phi_a2 = GI_BOMB_BAG_40;
//                 }
//                 else {
//                     phi_a2 = GI_BOMB_BAG_30;
//                 }
//                 func_80A43424(this, globalCtx, phi_a2);
//                 func_80106CCC(globalCtx);
//                 gSaveContext.infTable[17] |= 0x4000;
//                 return 2;
//             }
//             return 2;
//         }
//         else {
//             return 2;
//         }
//     }
//     else {
//         return 2;
//     }
// }

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A436DC.s")
u16 func_80A436DC(GlobalContext* globalCtx, EnGo2* this) {
    s32 phi_v1;

    if (CHECK_QUEST_ITEM(QUEST_GORON_RUBY)) {
        phi_v1 = 0x3027;
    } else {
        phi_v1 = 0x300A;
    }
    return phi_v1;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A43714.s")

// u16 func_80A43714(GlobalContext *globalCtx, EnGo2 *this) {
//     u8 temp_v0;

//     temp_v0 = func_8010BDBC(&globalCtx->msgCtx);
//     if (temp_v0 != 2) {
//         if ((gSaveContext.infTable[14] & 0x800) || (this->actor.textId != 0x300B)) {
//             return 0;
//         }
//         else {
//             gSaveContext.infTable[14] |= 0x800;
//             return 2;
//         }

//     }
//     if (temp_v0 == 4) {
//         if (func_80106BC8(globalCtx)) {
//             if (this->actor.textId == 0x300A) {
//                 if (globalCtx->msgCtx.choiceIndex == 0) {
//                     if (CUR_UPG_VALUE(UPG_STRENGTH)) {
//                         this->actor.textId = 0x300B;
//                     } else {
//                         this->actor.textId = 0x300C;
//                     }
//                 } else {
//                     this->actor.textId = 0x300D;
//                 }
//                 func_8010B720(globalCtx, this->actor.textId);
//             }
//         }
//     }
//     return 1;
// }

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A43824.s")
u16 func_80A43824(GlobalContext* globalCtx, EnGo2* this) {
    s32 phi_v1;

    if (CHECK_QUEST_ITEM(QUEST_GORON_RUBY)) {
        return 0x3027;
    }
    if (gSaveContext.eventChkInf[2] & 8) {
        phi_v1 = 0x3026;
    } else {
        phi_v1 = 0x3009;
    }
    return phi_v1;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A4387C.s")
u16 func_80A4387C(GlobalContext* globalCtx, EnGo2* this) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        return 0;
    } else {
        return 1;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A438B4.s")
u16 func_80A438B4(GlobalContext* globalCtx, EnGo2* this) {
    s32 phi_v1;
    s32 phi_v0;

    // temp_v0 = gSaveContext.inventory.questItems;
    if (CHECK_QUEST_ITEM(QUEST_MEDALLION_FIRE) && LINK_IS_ADULT) {
        return 0x3043;
    }
    if (CHECK_QUEST_ITEM(QUEST_GORON_RUBY)) {
        return 0x3027;
    }
    if (gSaveContext.eventChkInf[2] & 8) {
        phi_v1 = 0x3021;
    } else {
        if (gSaveContext.infTable[14] & 1) {
            phi_v0 = 0x302A;
        } else {
            phi_v0 = 0x3008;
        }
        phi_v1 = phi_v0;
    }
    return phi_v1;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A43950.s")
u16 func_80A43950(GlobalContext* globalCtx, EnGo2* this) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        if (this->actor.textId == 0x3008) {
            gSaveContext.infTable[14] |= 1;
        }
        return 0;
    }
    return 1;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A439AC.s")
u16 func_80A439AC(GlobalContext* globalCtx, EnGo2* this) {
    u32 temp_v0;
    s32 phi_v1;

    temp_v0 = gSaveContext.inventory.questItems;
    if (CHECK_QUEST_ITEM(QUEST_MEDALLION_FIRE) && LINK_IS_ADULT) {
        return 0x3043;
    }
    if (CHECK_QUEST_ITEM(QUEST_GORON_RUBY)) {
        return 0x3027;
    }

    if (gSaveContext.infTable[15] & 1) {
        phi_v1 = 0x3015;
    } else {
        phi_v1 = 0x3014;
    }
    return phi_v1;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A43A2C.s")
u16 func_80A43A2C(GlobalContext* globalCtx, EnGo2* this) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        if (this->actor.textId == 0x3014) {
            gSaveContext.infTable[15] |= 1;
        }
        return 0;
    } else {
        return 1;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A43A88.s")
u16 func_80A43A88(GlobalContext* globalCtx, EnGo2* this) {
    s32 phi_v1;

    if (CHECK_QUEST_ITEM(QUEST_MEDALLION_FIRE) && LINK_IS_ADULT) {
        return 0x3043;
    }
    if (CHECK_QUEST_ITEM(QUEST_GORON_RUBY)) {
        return 0x3067;
    }
    if (gSaveContext.infTable[15] & 0x10) {
        phi_v1 = 0x3017;
    } else {
        phi_v1 = 0x3016;
    }
    return phi_v1;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A43B08.s")
u16 func_80A43B08(GlobalContext* globalCtx, EnGo2* this) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        if (this->actor.textId == 0x3016) {
            gSaveContext.infTable[15] |= 0x10;
        }
        return 0;
    } else {
        return 1;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A43B64.s")
u16 func_80A43B64(GlobalContext* globalCtx, EnGo2* this) {
    u32 temp_v0;
    s32 phi_v1;
    s32 phi_v0;
    s32 phi_v1_2;

    temp_v0 = gSaveContext.inventory.questItems;
    if (CHECK_QUEST_ITEM(QUEST_MEDALLION_FIRE) && LINK_IS_ADULT) {
        return 0x3043;
    }
    if (CHECK_QUEST_ITEM(QUEST_GORON_RUBY)) {
        return 0x3027;
    }
    if (CUR_UPG_VALUE(UPG_STRENGTH)) {
        phi_v1 = 0x302C;
    } else {
        if (Flags_GetSwitch(globalCtx, 0x1B) == 0) {
            phi_v0 = 0x3017;
        } else {
            if (gSaveContext.infTable[15] & 0x100) {
                phi_v1_2 = 0x3019;
            } else {
                phi_v1_2 = 0x3018;
            }
            phi_v0 = phi_v1_2;
        }
        phi_v1 = phi_v0;
    }
    return phi_v1;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A43C40.s")
u16 func_80A43C40(GlobalContext* globalCtx, EnGo2* this) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        if (this->actor.textId == 0x3018) {
            gSaveContext.infTable[15] |= 0x100;
        }
        return 0;
    } else {
        return 1;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A43C9C.s")
u16 func_80A43C9C(GlobalContext* globalCtx, EnGo2* this) {
    s32 phi;

    if (CHECK_QUEST_ITEM(QUEST_MEDALLION_FIRE)) {
        if (gSaveContext.infTable[16] & 0x8000) {
            phi = 0x3042;
        } else {
            phi = 0x3041;
        }
        return phi;
    }
    if (CHECK_OWNED_EQUIP(EQUIP_TUNIC, 1)) {
        if (gSaveContext.infTable[16] & 0x4000) {
            phi = 0x3038;
        } else {
            phi = 0x3037;
        }
        return phi;
    }
    if (gSaveContext.infTable[16] & 0x1000) {
        this->unk_20C = 0;
        this->unk_20D = 0;
        if (gSaveContext.infTable[16] & 0x400) {
            phi = 0x3033;
        } else {
            phi = 0x3032;
        }
        return phi;
    }
    return 0x3030;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A43D78.s")
// u16 func_80A43D78(GlobalContext *globalCtx, EnGo2 *this) {
//     EnGo2 *temp_a0_2;
//     s32 temp_v0;
//     u16 temp_a1;
//     u16 temp_a1_2;
//     u16 temp_v0_2;
//     u16 temp_v0_3;
//     u16 phi_a1;

//     temp_v0 = func_80A43468(this, globalCtx);
//     if (temp_v0 == 2) {
//         temp_v0_3 = this->actor.textId;
//         if (temp_v0_3 == 0x3036) {
//             func_80A43424(this, globalCtx, 0x2C);
//             this->actionFunc = func_80A470E8;
//             return 2;
//         }
//         if (temp_v0_3 == 0x3037) {
//             gSaveContext.infTable[16] |= 0x4000;
//             return 0;
//         }
//         return 0;
//     }
//     if (temp_v0 != 4) {
//         if (temp_v0 != 5) {

//         } else {
//             if (func_80106BC8(globalCtx) != 0) {
//                 temp_v0_2 = this->actor.textId;
//                 if ((temp_v0_2 != 0x3032) && (temp_v0_2 != 0x3033)) {
//                     if (temp_v0_2 != 0x3035) {
//                         return 2;
//                     }
//                     gSaveContext.infTable[16] |= 0x800;
//                 }
//                 this->actor.textId = 0x3034;
//                 func_8010B720(globalCtx, 0x3034); // phi arg?
//             }
//         }
//     } else {
//         if (func_80106BC8(globalCtx)) {
//             if (this->actor.textId == 0x3034) {
//                 if (globalCtx->msgCtx.choiceIndex == 0) {
//                     if (gSaveContext.infTable[16] & 0x800) {
//                         this->actor.textId = 0x3033;
//                     } else {
//                         this->actor.textId = 0x3035;
//                     }
//                     temp_a1 = this->actor.textId;
//                     phi_a1 = temp_a1;
//                     if (temp_a1 == 0x3035) {
//                         func_800F8D04(0x39EB);
//                         block_22:
//                         phi_a1 = this->actor.textId;
//                     }
//                 } else {
//                     if (gSaveContext.infTable[16] & 0x800) {
//                         this->actor.textId = 0x3036;
//                     } else {
//                         this->actor.textId = 0x3033;
//                     }
//                     temp_a1_2 = this->actor.textId;
//                     phi_a1 = temp_a1_2;
//                     if (temp_a1_2 == 0x3036) {
//                         func_800F8D04(0x39EB);
//                         goto block_22;
//                     }
//                 }
//                 func_8010B720(globalCtx, phi_a1);
//                 this->unk_20C = 0;
//             }
//         }
//     }
//     return 1;
// }

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A43F90.s")
u16 func_80A43F90(GlobalContext* globalCtx, EnGo2* this) {
    Player* player;

    player = PLAYER;
    if (gSaveContext.bgsFlag) {
        player->exchangeItemId = EXCH_ITEM_CLAIM_CHECK;
        return 0x305E;
    }

    if (INV_CONTENT(ITEM_POCKET_EGG) >= ITEM_CLAIM_CHECK) {
        player->exchangeItemId = EXCH_ITEM_CLAIM_CHECK;
        return 0x305E;
    }
    if (INV_CONTENT(ITEM_POCKET_EGG) >= ITEM_PRESCRIPTION) {
        player->exchangeItemId = EXCH_ITEM_EYEDROPS;
        return 0x3058;
    }
    player->exchangeItemId = EXCH_ITEM_SWORD_BROKEN;
    return 0x3053;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A44010.s")
// u16 func_80A44010(GlobalContext *globalCtx, EnGo2 *this) {
//     s32 temp_v0;

//     temp_v0 = func_80A43468(this, globalCtx);

//     if (temp_v0 != 3) {
//         if (temp_v0 != 4) {
//             if (temp_v0 != 5) {
//                 if (temp_v0 == 6) {
//                     if (this->actor.textId != 0x305E) {
//                         return 0;
//                     }
//                     if (gSaveContext.bgsFlag) {
//                         return 0;
//                     }
//                     func_80A43424(this, globalCtx, 0x57);
//                     this->actionFunc = func_80A470E8;
//                     return 2;
//                 }
//             } else {
//                 if (func_80106BC8(globalCtx) != 0) {
//                     if (this->actor.textId == 0x3059) {
//                         globalCtx->msgCtx.msgMode = 0x37;
//                         this->actionFunc = func_80A4725C;
//                     }
//                     return 2;
//                 }
//             }
//         } else {
//             if (func_80106BC8(globalCtx)) {
//                 if ((this->actor.textId == 0x3054) || (this->actor.textId == 0x3055)) {
//                     if (globalCtx->msgCtx.choiceIndex == 0) {
//                         func_80A43424(this, globalCtx, 0x23);
//                         this->actionFunc = func_80A470E8;
//                         return 2;
//                     }
//                     this->actor.textId = 0x3056;
//                     func_8010B720(globalCtx, 0x3056); // & 0xFFFF
//                 }
//             }
//         }
//     }

//     else {

//         if (this->actor.textId; != 0x3054) {
//             if (this->actor.textId; != 0x3059) {
//                 if ((this->actor.textId; == 0x305E) && (func_8002F368(globalCtx) == 0xF)) {
//                     block_13:
//                     if (this->unk_20D == 0) {
//                         func_800F4524(&D_801333D4, 0x38FC, 0x3C);
//                     }
//                     block_15:
//                     if (this->unk_20D == 0) {
//                         Audio_PlaySoundGeneral(0x4807, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
//                     }
//                 }
//             } else {
//                 goto block_13;
//             }
//         } else {
//             goto block_15;
//         }
//     }
//     return 1;
// }

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A44224.s")
u16 func_80A44224(GlobalContext* globalCtx, EnGo2* this) {
    if (Flags_GetSwitch(globalCtx, (this->actor.params & 0xFC00) >> 0xA)) {
        return 0x3071;
    } else {
        return 0x3051;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A44258.s")
u16 func_80A44258(GlobalContext* globalCtx, EnGo2* this) {
    u8 temp_v0;

    temp_v0 = func_8010BDBC(&globalCtx->msgCtx);

    if (temp_v0 != 2) {
        if (temp_v0 != 5) {
            return 1;
        }
    } else {
        return 0;
    }

    if (func_80106BC8(globalCtx)) {
        if (this->actor.textId == 0x3071) {
            this->actor.textId = func_80A434E8(this);
            func_8010B720(globalCtx, this->actor.textId);
        }
        return 1;
    }

    return 1;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A442F0.s")
u16 func_80A442F0(GlobalContext* globalCtx, EnGo2* this) {
    s32 phi;
    s32 phi2;

    if (LINK_IS_CHILD) {
        if (gSaveContext.infTable[14] & 8) {
            phi = 0x3022;
        } else {
            phi = 0x300E;
        }
        phi2 = phi;
    } else {
        phi2 = 0x3043;
    }
    return phi2;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A4433C.s")
u16 func_80A4433C(GlobalContext* globalCtx, EnGo2* this) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        if (this->actor.textId == 0x300E) {
            gSaveContext.infTable[14] |= 0x8;
        }
        return 0;
    }
    return 1;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A44398.s")
u16 func_80A44398(GlobalContext* globalCtx, EnGo2* this) {
    return 0x7122;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A443A8.s")
u16 func_80A443A8(GlobalContext* globalCtx, EnGo2* this) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        return 0;
    }
    return 1;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A443E0.s")
u16 func_80A443E0(GlobalContext* globalCtx, EnGo2* this) {
    s32 phi;
    if (LINK_IS_CHILD) {
        if (Flags_GetSwitch(globalCtx, 0x1C)) {
            return 0x302F;
        } else {
            if (gSaveContext.infTable[14] & 0x40) {
                phi = 0x3025;
            } else {
                phi = 0x3024;
            }
            return phi;
        }
    }

    return 0x3043;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A4444C.s")
u16 func_80A4444C(GlobalContext* globalCtx, EnGo2* this) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        if (this->actor.textId == 0x3024) {
            gSaveContext.infTable[14] |= 0x40;
        }
        return 0;
    }
    return 1;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A444A8.s")
u16 func_80A444A8(GlobalContext* globalCtx, EnGo2* this) {
    s32 phi;
    if (LINK_IS_CHILD) {
        if (CHECK_QUEST_ITEM(QUEST_GORON_RUBY)) {
            phi = 0x3065;
        } else {
            phi = 0x3064;
        }
        return phi;
    }
    return 0x3043;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A444FC.s")
u16 func_80A444FC(GlobalContext* globalCtx, EnGo2* this) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        return 0;
    }
    return 1;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A44534.s")
u16 func_80A44534(GlobalContext* globalCtx, EnGo2* this) {
    u16 temp_ret;

    temp_ret = Text_GetFaceReaction(globalCtx, 0x20);

    if (temp_ret) {
        return temp_ret;
    } else {
        switch (this->actor.params & 0x1F) {
            case 0:
                return func_80A43564(globalCtx, this);
            case 1:
                return func_80A43C9C(globalCtx, this);
            case 2:
                return func_80A43F90(globalCtx, this);
            case 3:
                return func_80A44224(globalCtx, this);
            case 4:
                return func_80A436DC(globalCtx, this);
            case 5:
                return func_80A43824(globalCtx, this);
            case 6:
                return func_80A438B4(globalCtx, this);
            case 7:
                return func_80A439AC(globalCtx, this);
            case 8:
                return func_80A43A88(globalCtx, this);
            case 9:
                return func_80A43B64(globalCtx, this);
            case 10:
                return func_80A442F0(globalCtx, this);
            case 11:
                return func_80A443E0(globalCtx, this);
            case 12:
                return func_80A444A8(globalCtx, this);
            case 13:
                return func_80A44398(globalCtx, this);
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A44678.s")
u16 func_80A44678(GlobalContext* globalCtx, EnGo2* this) {

    switch (this->actor.params & 0x1F) {
        case 0:
            return func_80A435E8(globalCtx, this);
        case 1:
            return func_80A43D78(globalCtx, this);
        case 2:
            return func_80A44010(globalCtx, this);
        case 3:
            return func_80A44258(globalCtx, this);
        case 4:
            return func_80A43714(globalCtx, this);
        case 5:
            return func_80A4387C(globalCtx, this);
        case 6:
            return func_80A43950(globalCtx, this);
        case 7:
            return func_80A43A2C(globalCtx, this);
        case 8:
            return func_80A43B08(globalCtx, this);
        case 9:
            return func_80A43C40(globalCtx, this);
        case 10:
            return func_80A4433C(globalCtx, this);
        case 11:
            return func_80A4444C(globalCtx, this);
        case 12:
            return func_80A444FC(globalCtx, this);
        case 13:
            return func_80A443A8(globalCtx, this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A44790.s")
s32 func_80A44790(EnGo2* this, GlobalContext* globalCtx) {

    if (((this->actor.params & 0x1F) != 2) && (this->actor.params & 0x1F)) {
        return func_800343CC(globalCtx, &this->actor, &this->unk_194, this->unk_218, func_80A44534,
                             func_80A44678);
    }
    if (((this->actor.params & 0x1F) == 2) && ((this->collider.base.maskB & 1) == 0)) {
        return 0;
    } else {
        if (func_8002F194(&this->actor, globalCtx)) {
            this->unk_194.unk_00 = 1;
            return 1;
        }
        if (this->unk_194.unk_00) {
            this->unk_194.unk_00 = func_80A44678(globalCtx, this);
            return 0;
        } else if (func_8002F2CC(&this->actor, globalCtx, this->unk_218)) {
            this->actor.textId = func_80A44534(globalCtx, this);
        }
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A4488C.s")
// void func_80A4488C(EnGo2 *this) {
//     s32 temp_v0;
//     void *temp_v1;

//     temp_v0 = this->actor.params & 0x1F & 0xFF;
//     temp_v1 = (temp_v0 * 0xA) + D_80A4816C;
//     this->collider.dim.radius = temp_v1->unk6;
//     this->collider.dim.height = temp_v1->unk8;
//     return temp_v0;
// }


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A448C4.s")
// void func_80A448C4(EnGo2 *this) {
//     void *sp18;
//     void *temp_v0;

//     temp_v0 = ((this->actor.params & 0x1F & 0xFF) * 0x10) + D_80A481F8;
//     this->actor.shape.unk_10 = temp_v0->unk0;
//     sp18 = temp_v0;
//     Actor_SetScale((Actor *) this, (bitwise f32) temp_v0->unk4);
//     this->actor.unk_1F = temp_v0->unk8;
//     this->unk218 = (f32) temp_v0->unkC;
//     this->unk218 = (f32) (this->unk218 + (f32) this->collider.dim.radius);
//     return (s32) temp_v0;
// }


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A44940.s")

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A44A9C.s")
void func_80A44A9C(EnGo2 *this) {
    f32 temp_f0;

    temp_f0 = this->skelAnime.initialFrame;
    this->skelAnime.initialFrame = this->skelAnime.animFrameCount;
    this->skelAnime.animFrameCount = temp_f0;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A44AB0.s")
// s32 func_80A44AB0(EnGo2 *this, GlobalContext *globalCtx) {
//     Player* player;
//     f32 phi_f0;

//     player = PLAYER;
//     if ((this->actor.params & 0x1F) == 2) {
//         return 0;
//     } else {
//         if ((this->actionFunc != func_80A46E54) && (this->actionFunc != func_80A47024) && (this->actionFunc !=
//         func_80A46DBC)) {
//             return 0;
//         } else {
//             if (this->collider.base.acFlags & 2) {
//                 Audio_PlaySoundGeneral(0x4802, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
//                 this->actor.flags &= ~0x1000000;
//                 this->collider.base.acFlags &= ~0x2;
//                 func_80A45E48(this, globalCtx);
//                 return 1;
//             }
//             if (player->invincibilityTimer > 0) {
//                 this->collider.base.maskA |= 8;
//                 if (this->collider.base.maskB & 1) {
//                     this->collider.base.maskB &= ~1;
//                     if (this->actionFunc == func_80A46DBC) {
//                         phi_f0 = 1.5f;
//                     } else {
//                         phi_f0 = this->actor.speedXZ * 1.5f;
//                     }

//                     globalCtx->damagePlayer(globalCtx, -4);
//                     func_8002F71C(globalCtx, &this->actor, phi_f0, this->actor.yawTowardsLink, 6.0f);
//                     Audio_PlayActorSound2(player, 0x083E);
//                     this->collider.base.maskA &= ~0x8;
//                 }
//             }
//         }
//     }
//     return 0;
// }

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A44C68.s")
s32 EnGo2_UpdateWaypoint(EnGo2* this, GlobalContext* globalCtx) {
    s32 change;

    if (this->path == NULL) {
        return 0;
    }

    change = (this->path->count - 1) & 0xFF;
    if (this->reverse) {
        this->waypoint--;
        if (this->waypoint < 0) {
            this->waypoint = change - 1;
        }
    } else {
        this->waypoint++;
        if (this->waypoint >= change) {
            this->waypoint = 0;
        }
    }

    return 1;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/EnGo2_Orient.s")
s32 EnGo2_Orient(EnGo2* this, GlobalContext* globalCtx) {
    s16 targetYaw;
    f32 waypointDistSq;

    waypointDistSq = Path_OrientAndGetDistSq(&this->actor, this->path, this->waypoint, &targetYaw);
    Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, targetYaw, 6, 4000, 1);

    if (waypointDistSq > 0.0f && waypointDistSq < 900.0f) {
        return EnGo2_UpdateWaypoint(this, globalCtx);
    } else {
        return 0;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A44D84.s")
s32 func_80A44D84(EnGo2* this) {
    s16 targetYaw;

    Path_OrientAndGetDistSq(&this->actor, this->path, this->waypoint, &targetYaw);
    this->actor.posRot.rot.y = targetYaw;
    return 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A44DC0.s")

// s32 func_80A44DC0(EnGo2 *this) {
//     f32 temp_f0;
//     s16 temp_v0_2;
//     f32 phi_f0;
//     f32 phi_f2;
//     s32 phi_v1;
//     s32 phi_return;

//     if ((this->actor.params & 0x1F) == 2) {
//         phi_f0 = 800.0f;
//     } else {
//         phi_f0 = 200.0f;
//     }
//     if ((this->actor.params & 0x1F) == 2) {
//         phi_f2 = 400.0f;
//     } else {
//         phi_f2 = 60.0f;
//     }
//     if ((this->actor.params & 0x1F) == 2) {
//         if ((this->collider.base.maskB & 1) == 0) {
//             this->actor.flags &= ~1;
//             return 0;
//         }
//         this->actor.flags |= 1;
//         return 1;
//     }
//     temp_v0_2 = (s16) (s32) ((f32) this->actor.yawTowardsLink - (f32) this->actor.shape.rot.y);
//     if (temp_v0_2 >= 0) {
//         phi_v1 = temp_v0_2 << 0x10;
//     } else {
//         phi_v1 = (0 - temp_v0_2) << 0x10;
//     }

//     phi_return = 0;

//     if (this->actor.xyzDistFromLinkSq <= SQ(phi_f0)) {
//         temp_f0 = fabsf(this->actor.yDistFromLink);
//         phi_return = temp_f0;
//         if (temp_f0 < phi_f2) {
//             phi_return =  temp_f0;
//             if ((phi_v1 >> 0x10) < 0x2AA8) {
//                 return 1;
//             }
//         }
//     }
//     return phi_return;
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A44EF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A45088.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A45288.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A45360.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A4546C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A454CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A45578.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A4561C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A45734.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A4578C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A457F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A45848.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A4592C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A45A00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A45B14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A45B9C.s")

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A45C50.s")
void func_80A45C50(EnGo2* this, GlobalContext* globalCtx) {
    if (this->skelAnime.animPlaybackSpeed == 0.0f) {
        if ((this->actor.params & 0x1F) != 2) {
            Audio_PlayActorSound2(&this->actor, 0x38FC);
        } else {
            func_800F4524(&D_801333D4, 0x38FCU, 0x3C);
        }
    }
    if ((this->actor.params & 0x1F) == 2) {
        func_800800F8(globalCtx, 0x1068, -0x63, &this->actor, 0);
        func_80034EC0(&this->skelAnime, D_80A48348, 0xA);
        this->skelAnime.animPlaybackSpeed = 0.5f;
    } else {
        func_80034EC0(&this->skelAnime, D_80A48348, 1);
        this->skelAnime.animPlaybackSpeed = 1.0f;
    }
    this->actionFunc = func_80A46B40;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A45D40.s")
void func_80A45D40(EnGo2* this, GlobalContext* globalCtx) {
    func_80034EC0(&this->skelAnime, D_80A48348, 1);
    this->unk_211 = 1;
    this->actionFunc = func_80A46B40;
    this->skelAnime.animPlaybackSpeed = 0.0f;
    this->actor.speedXZ = 0.0f;
    this->skelAnime.animCurrentFrame = this->skelAnime.animFrameCount;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A45DA4.s")
void func_80A45DA4(EnGo2* this, GlobalContext* globalCtx) {

    if (((this->actor.params & 0x1F) == 0) || ((this->actor.params & 0x1F) == 1)) {
        this->collider.body.bumperFlags = 1;
        if (gSaveContext.infTable[17] & 0x4000) {
            this->actor.speedXZ = 6.0f;
        } else {
            this->actor.speedXZ = 3.6000001f;
        }
    } else {
        this->actor.speedXZ = 6.0f;
    }
    this->actor.flags |= 0x1000000;
    this->unk_592 = 0xA;
    this->actor.shape.unk_08 = 1800.0f;
    this->actor.speedXZ += this->actor.speedXZ;
    this->actionFunc = func_80A46DBC;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A45E48.s")
void func_80A45E48(EnGo2* this, GlobalContext* globalCtx) {
    EnBom* bomb;

    if (((this->actor.params & 0x1F) != 0) && ((this->actor.params & 0x1F) != 1)) {
        if ((this->actor.params & 0x1F) == 5) {
            bomb = (EnBom*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_BOM, this->actor.posRot.pos.x,
                                       this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0);
            if (bomb != NULL) {
                bomb->timer = 0;
            }
        }
    } else {
        this->collider.body.bumperFlags = 0;
    }

    this->actor.shape.rot = this->actor.posRot.rot;
    this->unk_59C = 0;
    this->unk_590 = 0;
    this->actionFunc = func_80A46F88;
    this->actor.shape.unk_08 = 0.0f;
    this->actor.speedXZ = 0.0f;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A45F08.s")
s32 func_80A45F08(EnGo2* this, GlobalContext* globalCtx) {
    f32 phi_f0;

    if ((this->actor.params & 0x1F) != 3) {
        return 0;
    } else {
        if (globalCtx->state.frames & 1) {
            phi_f0 = 1.0f;
        } else {
            phi_f0 = -1.0f;
        }
        this->actor.posRot.pos.x += phi_f0;
        if (Flags_GetSwitch(globalCtx, (this->actor.params & 0xFC00) >> 0xA)) {
            return 1;
        }
    }
    return 0;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A45F9C.s")
s32 func_80A45F9C(EnGo2* this) {

    if ((this->actor.params & 0x1F) != 4 || this->unk_194.unk_00 != 2) {
        return 0;
    } else {
        func_80034EC0(&this->skelAnime, D_80A48348, 3);
        this->unk_194.unk_00 = 0;
        this->unk_20F = 0;
        this->unk_26E = 1;
        this->actionFunc = func_80A46CD8;
        return 1;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A4601C.s")
s32 func_80A4601C(EnGo2* this, GlobalContext* globalCtx) {
    if ((this->actor.params & 0x1F) || (this->unk_194.unk_00 != 2)) {
        return 0;
    } else {
        this->unk_194.unk_00 = 0;
        func_80A45B9C(this, globalCtx);
        this->actionFunc = func_80A46D5C;
        return 1;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A4607C.s")
s32 func_80A4607C(EnGo2* this) {
    if ((this->actor.params & 0x1F) != 3 || this->unk_194.unk_00 == 0) {
        return 0;
    } else {
        this->actionFunc = func_80A47578;
        return 1;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A460B8.s")
s32 func_80A460B8(EnGo2* this) {
    if ((this->actor.params & 0x1F) != 1 || (this->waypoint >= this->unk_216) || func_80A44DC0(this) == 0) {
        return 0;
    } else {
        return 1;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A46114.s")
s32 func_80A46114(EnGo2* this) {

    if (this->unk_194.unk_00 == 0 || this->actor.speedXZ < 1.0f) {
        return 0;
    } else {
        if (func_80A44EF0(this, 2, 0x40D55555, 0)) {
            if ((this->unk_590 >= 9) && (this->unk_59C == 0)) {
                this->unk_590 = 8;
            }
            func_80A45B14(this, 0);
        }
        return 1;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A461A8.s")
// void func_80A461A8(EnGo2 *this, GlobalContext *globalCtx) {
//     s32 animation;

//     if ((this->actor.params & 0x1F) != 1 || (((this->actor.textId != 0x3035) || (this->unk_20C != 0)) &&
//     (this->actor.textId == 0x3036) && (this->unk_20C == 0))) {
//         if ((this->actor.textId != 0x3035) || (this->unk_20C != 0)) {
//             animation = 0xD;
//             if (this->skelAnime.animation != &D_06000D5C) {
//                 this->unk_213 = 0;
//                 animation = 0xC;
//             }
//         }

//         if ((this->actor.textId != 0x3032) || (this->unk_20C != 0xC)) {
//             if (this->actor.textId != 0x3033) {
//                 if ((this->actor.textId == 0x3035) && (this->unk_20C == 6)) {
//                     block_12:
//                     if (this->skelAnime.animation != &D_06000750) {
//                         this->unk_213 = 1;
//                         animation = 0xB;
//                     }
//                 }
//             } else {
//                 goto block_12;
//             }
//         } else {
//             goto block_12;
//         }

//         if (this->skelAnime.animation == &D_06000750) {
//             if (this->skelAnime.animCurrentFrame == 20.0f) {
//                 Audio_PlayActorSound2(&this->actor, 0x39EB);
//             }
//         }

//         if (animation != 0xD) {
//             func_80034EC0(&this->skelAnime, D_80A48348, animation);
//         }
//     }
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A462D8.s")
// void func_80A462D8(EnGo2 *this, GlobalContext *globalCtx) {
//     f32 temp_f12;
//     f32 temp_f18;
//     f32 temp_f2;
//     s16 temp_v1;

//     this->camID = Gameplay_CreateSubCamera(globalCtx);
//     Gameplay_ChangeCameraStatus(globalCtx, 0, CAM_STAT_WAIT);
//     Gameplay_ChangeCameraStatus(globalCtx, this->camID, CAM_STAT_ACTIVE);
//     Path_CopyLastPoint(this->path, &this->at);
//     temp_v1 = Math_Vec3f_Yaw(&this->actor.posRot, &this->at) + 0xE38;
//     this->eye.x = Math_Sins((s16)(temp_v1 * 100.0f)) + this->actor.posRot.pos.x;
//     temp_f18 = Math_Coss(temp_v1) * 100.0f;
//     temp_f12 = this->actor.posRot.pos.y;
//     this->at.z = this->actor.posRot.pos.z;
//     this->eye.y = temp_f12 + 20.0f;
//     this->at.x = this->actor.posRot.pos.x;
//     this->eye.z = temp_f18 + this->actor.posRot.pos.z;
//     this->at.y = temp_f12 + 40.0f;
//     Gameplay_CameraSetAtEye(globalCtx, this->camID, &this->at, &this->eye);
// }

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A463D8.s")
void func_80A463D8(EnGo2* this, GlobalContext* globalCtx) {
    Gameplay_ChangeCameraStatus(globalCtx, 0, CAM_STAT_ACTIVE);
    Gameplay_ClearCamera(globalCtx, this->camID);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A46418.s")
void func_80A46418(EnGo2* this) {
    s16 phi_v1;

    if (INV_CONTENT(ITEM_POCKET_EGG) >= ITEM_SWORD_BROKEN && INV_CONTENT(ITEM_POCKET_EGG) < ITEM_CLAIM_CHECK &&
        (this->actor.params & 0x1F) == 2 && this->unk_194.unk_00 == 0) {
        if (this->unk_592 == 0) {
            phi_v1 = 0;
        } else {
            this->unk_592--;
            phi_v1 = this->unk_592;
        }
        if (phi_v1 == 0) {
            this->unk_592 = Math_Rand_S16Offset(30, 30);
            func_800F4524(&D_801333D4, 0x391C, 60);
        }
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/EnGo2_Init.s")

// void EnGo2_Init(Actor* thisx, GlobalContext* globalCtx) {

//     EnGo2* this = THIS;

//     ColliderCylinder* sp30;
//     Vec3f* dest1;
//     Vec3f* dest2;
//     s16 temp_v1;
//     u16 temp_v0;
//     u32 temp_a2;
//     u32 temp_t1;
//     u32 temp_t3;
//     u8 temp_v0_3;

//     ActorShape_Init(&this->actor.shape, 0.0f, &ActorShadow_DrawFunc_Circle, 28.0f);
//     SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_0600FEF0, NULL, this + 0x4B8, this + 0x524, 0x12);
//     Collider_InitCylinder(globalCtx, &this->collider);
//     Collider_SetCylinder(globalCtx, &this->collider, &this->actor, (ColliderCylinderInit*)D_80A48114);
//     func_80061EFC(&this->actor.colChkInfo, NULL, (CollisionCheckInfoInit2*)D_80A48140);
//     temp_t1 = (this->actor.params & 0x1F) - 3;

//     if (temp_t1 < 0xBU) {
//         goto**(&jtbl_80A4872C + (temp_t1 * 4)); // switch 1
//         default:                                // switch 1
//             this->actor.flags &= ~0x10;
//             this->actor.flags &= ~0x20;
//     }

//     func_80A4488C(this);
//     func_80A448C4(this);
//     func_80034EC0(&this->skelAnime, D_80A48348, 0);
//     this->actor.shape.unk_14 = 0;
//     this->actor.gravity = -1.0f;
//     this->unk_220 = 0; // (f32) (u32) (0 & 0xFF);
//     this->unk_20F = 0;
//     this->reverse = 0;
//     this->unk_211 = 0;
//     this->unk_212 = 0;
//     this->waypoint = 0;
//     this->unk_26E = 1;
//     this->unk_216 = this->actor.shape.rot.z;
//     this->path = Path_GetByIndex(globalCtx, (this->actor.params & 0x3E0) >> 5, 0x1F);

//     temp_v1 = this->actor.params;
//     temp_a2 = temp_v1 & 0x1F;

//     if (temp_a2 < 0xEU) {
//         goto**(&jtbl_80A48758 + (temp_a2 * 4)); // switch 2

//         default:                                // switch 2
//             if ((CHECK_QUEST_ITEM(QUEST_MEDALLION_FIRE) == 0) && LINK_IS_ADULT) {
//                 Actor_Kill(&this->actor);
//             }
//             goto block_30;

//         case 13: // switch 2
//             if (LINK_IS_ADULT || CHECK_QUEST_ITEM(QUEST_GORON_RUBY) == 0) {
//                 Actor_Kill(&this->actor);
//             }
//             func_80A45D40(this, globalCtx);
//             return;

//         case 1: // switch 2
//             dest1 = &this->actor.posRot.pos;
//             if ((gSaveContext.infTable[16] & 0x200) == 0) {
//                 gSaveContext.infTable[16] &= ~0x1000;
//                 this->collider.dim.height = (s16)(s32)((f32) * (D_80A48174 + ((this->actor.params & 0x1F) * 0xA)) *
//                 0.6f); func_80A45DA4(this, globalCtx, temp_a2); this->unk_20F = 1; return;

//                 case 0: // switch 2
//                 case 5: // switch 2
//                     this->unk_1FE = (s16)(s32)((f32) * (D_80A48174 + (temp_a2 * 0xA)) * 0.6f);
//                     func_80A45DA4(this, globalCtx, temp_a2);
//                     return;

//                 case 3: // switch 2
//                     if (Flags_GetSwitch(globalCtx, (s32)(temp_v1 & 0xFC00) >> 0xA) == 0) {
//                         this->unk_20F = 1;
//                         this->actionFunc = func_80A4696C;
//                         return;

//                         case 2: // switch 2
//                             this->actor.shape.shadowDrawFunc = NULL;
//                             this->actor.flags &= ~1;
//                             temp_v0_3 = gSaveContext.inventory.items[gItemSlots[0x2D]];
//                             if (((s32)temp_v0_3 >= 0x33) && ((s32)temp_v0_3 < 0x37)) {
//                                 this->unk_213 = 1;
//                             }
//                             this->collider.base.acFlags = 0;
//                             this->collider.base.maskA = 0xD;
//                             this->actionFunc = func_80A4696C;
//                             return;

//                         case 4: // switch 2
//                             dest2 = &this->actor.posRot.pos;
//                             if (gSaveContext.infTable[14] & 0x800) {
//                                 Path_CopyLastPoint(this->path, dest2);
//                                 this->actor.initPosRot.pos.x = dest2->x;
//                                 this->actor.initPosRot.pos.y = dest2->y;
//                                 this->actor.initPosRot.pos.z = dest2->z;
//                             }

//                         case 6:  // switch 2
//                         case 12: // switch 2
//                         block_29:
//                         block_30:
//                             this->actionFunc = func_80A4696C;
//                             return;
//                             return;
//                     }

//                     Actor_Kill(&this->actor);
//                     return;
//                     return;
//                     return;
//             }

//             Path_CopyLastPoint(this->path, dest1);
//             this->actor.initPosRot.pos.x = dest1->x;
//             this->actor.initPosRot.pos.y = dest1->y;
//             this->actor.initPosRot.pos.z = dest1->z;

//             if (CHECK_QUEST_ITEM(QUEST_MEDALLION_FIRE)) {

//             block_17:
//                 this->actionFunc = func_80A4696C;
//                 return;
//                 return;
//                 return;
//             }
//             if (CHECK_OWNED_EQUIP(EQUIP_TUNIC,1) == 0) {
//                 goto block_17;
//             }
//             func_80A45D40(this, globalCtx);
//             return;
//     } else {
//         goto block_29;
//     }
//     goto block_30;
// }

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/EnGo2_Destroy.s")
void EnGo2_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A4696C.s")

// void func_80A4696C(EnGo2 *this, GlobalContext *globalCtx) {
//     u8 sp37;
//     f32 temp_f0;
//     s32 temp_a0;
//     s32 quake;

//     sp37 = this->actor.params & 0x1F;

//     if (func_800A56C8(&this->skelAnime, this->skelAnime.animFrameCount)) {
//         if ((this->actor.params & 0x1F) == 2) {
//             quake = Quake_Add(ACTIVE_CAM, 3);
//             Quake_SetSpeed(quake, -0x3CB0);
//             Quake_SetQuakeValues(quake, 8, 0, 0, 0);
//             Quake_SetCountdown(quake, 16);
//         } else {
//             func_80A45B14(this, 1);
//         }
//         this->skelAnime.animPlaybackSpeed = 0.0f;
//     }
//     if (this->skelAnime.animCurrentFrame == 0) {
//         this->collider.dim.height = (s16) (s32) ((f32) *(D_80A48174 + (sp37 * 0xA)) * 0.6f);
//     } else {
//         temp_f0 = (f32) *(D_80A48174 + (sp37 * 0xA));
//         this->collider.dim.height = (s16) (s32) ((temp_f0 * 0.4f * (this->skelAnime.animCurrentFrame /
//         this->skelAnime.initialFrame)) + (temp_f0 * 0.6f));
//     }
//     if (func_80A45F08(this, globalCtx)) {
//         this->unk_20F = 0;
//         func_80A45C50(this, globalCtx);
//     }
//     if (((this->actor.params & 0x1F) != 3) && func_80A44DC0(this)) {
//         func_80A45C50(this, globalCtx);
//     }
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A46B40.s")
// void func_80A46B40(EnGo2 *this, GlobalContext *globalCtx) {
//     u8 sp27;
//     f32 temp_f0;
//     u8 temp_v1;

//     temp_v1 = this->actor.params & 0x1F & 0xFF;
//     if (this->unk_211 == 1) {
//         func_80A46418();
//         func_80A461A8(this, globalCtx);
//         func_80A45848(this);
//         if ((func_80A4601C(this, globalCtx) == 0) && (func_80A4607C(this) == 0)) {
//             if (func_80A45F9C(this) != 0) {
//                 return;
//             }
// block_10:
//             if ((func_80A4561C(this, globalCtx) == 0) && (func_80A44DC0(this) == 0)) {
//                 func_80A45B9C(this, globalCtx);
//             }
//         }
//     } else {
//         sp27 = temp_v1;
//         if (func_800A56C8(&this->skelAnime, (bitwise f32) (bitwise s32) this->skelAnime.animFrameCount) != 0) {
//             if ((this->actor.params & 0x1F) == 2) {
//                 this->actor.flags = this->actor.flags | 1;
//             }
//             sp27 = temp_v1;
//             func_80A454CC(this);
//             this->unk_211 = 1;
//             this->collider.dim.height = *(D_80A48174 + (temp_v1 * 0xA));
//         } else {
//             temp_f0 = (f32) *(D_80A48174 + (temp_v1 * 0xA));
//             this->collider.dim.height = (s16) (s32) ((temp_f0 * 0.4f * (this->skelAnime.animCurrentFrame /
//             this->skelAnime.animFrameCount)) + (temp_f0 * 0.6f));
//         }
//         goto block_10;
//     }
// }

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A46CD8.s")
void func_80A46CD8(EnGo2* this, GlobalContext* globalCtx) {
    f32 float1;
    f32 float2;
    f32 float3;

    float1 = this->skelAnime.animFrameCount;
    float2 = 32768.0f / float1;
    float3 = this->skelAnime.animCurrentFrame * float2;
    this->actor.speedXZ = Math_Sins(float3);
    if ((EnGo2_Orient(this, globalCtx)) && (this->waypoint == 0)) {
        func_80A45D40(this, globalCtx);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A46D5C.s")
void func_80A46D5C(EnGo2* this, GlobalContext* globalCtx) {

    if (func_800A56C8(&this->skelAnime, this->skelAnime.animFrameCount)) {
        func_80A45B14(this, 1);
        this->skelAnime.animPlaybackSpeed = 0.0f;
        func_80A45DA4(this, globalCtx);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A46DBC.s")
// void func_80A46DBC(EnGo2 *this, GlobalContext *globalCtx) {
//     s16 phi_v1;
//     f32 float1;

//     if (((this->actor.params & 0x1F) != 5) || !(this->actor.xyzDistFromLinkSq > SQ(1000.0f))) {
//         if (this->unk_592 == 0) {
//             phi_v1 = 0;
//         } else {
//             this->unk_592--;
//             phi_v1 = this->unk_592;
//         }
//         if (phi_v1 == 0) {
//             this->actionFunc = func_80A46E54;
//             this->actor.speedXZ *= 0.5f;
//         }
//     }
//     func_80A45B14(this, 2);
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A46E54.s")
// void func_80A46E54(EnGo2 *this, GlobalContext *globalCtx) {
//     s32 temp_v0;

//     if (func_80A46114(this) == 0) {
//         if (func_80A44EF0(this, 4, 0x41000000, 1) == 1) {
//             if (func_80A460B8(this)) {
//                 this->actionFunc = func_80A47024;
//                 return;
//             }
//             func_80A45B14(this, 3);
//         }
//         temp_v0 = EnGo2_Orient(this, globalCtx);
//         if ((this->actor.params & 0x1F) != 1) {
//             if (((this->actor.params & 0x1F) == 5) && (temp_v0 == 1) && (this->waypoint == 0)) {
//                 func_80A45E48(this, globalCtx);
//                 return;
//             }
//         } else if ((temp_v0 == 2) && (this->waypoint == 1)) {
//             func_80A45E48(this, globalCtx);
//             return;
//         }
//         Math_SmoothScaleMaxF(&this->actor.speedXZ, func_80A45578(this), 0.4f, 0.6f);
//         this->actor.shape.rot.x = this->actor.posRot.rot.x;
//         this->actor.shape.rot.z = this->actor.posRot.rot.z;
//     }
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A46F88.s")
// void func_80A46F88(EnGo2 *this, GlobalContext *globalCtx) {

//     if (func_80A44EF0(this, 4, 0x41000000, 0)) {
//         func_80A45B14(this, 0);
//         if (this->unk_59C == 0) {
//             if ((this->actor.params & 0x1F) == 1) {
//                 this->unk_212 = 0;
//                 this->actionFunc = func_80A47490;
//             }
//             else if ((this->actor.params & 0x1F) == 0) {
//                 func_80A45C50(this, globalCtx);
//             }
//             else {
//                 this->actionFunc = func_80A4696C;
//             }
//         }
//     }
// }

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A47024.s")
void func_80A47024(EnGo2* this, GlobalContext* globalCtx) {
    if (func_80A46114(this) == 0) {
        Math_SmoothScaleMaxF(&this->actor.speedXZ, 0.0f, 0.6f, 0.8f);
        if (this->actor.speedXZ >= 1.0f) {
            func_80A45B14(this, 3);
        }

        if ((s32)this->actor.speedXZ == 0) {
            this->actor.posRot.rot.y ^= 0x8000;
            this->actor.shape.rot.y = this->actor.posRot.rot.y;
            this->reverse ^= 1;
            EnGo2_UpdateWaypoint(this, globalCtx);
            func_80A45DA4(this, globalCtx);
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A470E8.s")
void func_80A470E8(EnGo2* this, GlobalContext* globalCtx) {
    if (Actor_HasParent(&this->actor, globalCtx)) {
        this->actor.parent = NULL;
        this->actionFunc = func_80A47158;
    } else {
        func_8002F434(&this->actor, globalCtx, this->getItemID, this->actor.xzDistFromLink + 1.0f,
                      fabsf(this->actor.yDistFromLink) + 1.0f);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A47158.s")
void func_80A47158(EnGo2* this, GlobalContext* globalCtx) {

    if ((func_8010BDBC(&globalCtx->msgCtx) == 6) && func_80106BC8(globalCtx)) {
        this->unk_194.unk_00 = 0;
        switch (this->getItemID) {
            case 0x26:
                func_800775D8();
                func_80A45D40(this, globalCtx);
                return;
            case 0x2C:
                gSaveContext.infTable[16] |= 0x200;
                func_80A45D40(this, globalCtx);
                return;
            case 0x57:
                gSaveContext.bgsFlag = 1;
                break;
            case 0x33:
            case 0x34:
                func_80A45B9C(this, globalCtx);
                this->actionFunc = func_80A46D5C;
                return;
        }
        this->actionFunc = func_80A46B40;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A4725C.s")
// void func_80A4725C(EnGo2 *this, GlobalContext *globalCtx) {
//     // SkelAnime *sp28;
//     // SkelAnime *temp_a0;
//     s16 phi_v0;

//     if (this->unk_212 == 0) {
//         func_80034EC0(&this->skelAnime, D_80A48348, 5);
//         this->actor.flags &= ~1;
//         this->actor.shape.rot.y += 0x5B0;
//         this->unk_26E = 1;
//         this->unk_213 = 2;
//         this->unk_20C = 0;
//         this->unk_212++; ;
//         this->unk_592 = (s16) (this->skelAnime.animFrameCount + 60.0f + 60.0f);
//         func_800F483C(0x28, 5);
//         func_800800F8(globalCtx, 0x105E, -0x63, &this->actor, 0);
//     }
//     else if (this->unk_212 != 1) {
//         // temp_a0 = &this->skelAnime;
//         if (this->unk_212 != 2) {
//             return;
//         }
//         // sp28 = temp_a0;
//         if (func_800A56C8(&this->skelAnime, this->skelAnime.animFrameCount)) {
//             this->unk_213 = 0;
//         }
//         if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
//             func_80034EC0(&this->skelAnime, D_80A48348, 1);
//             this->actor.flags |= 1;
//             this->unk_26E = 2;
//             this->skelAnime.animPlaybackSpeed = 0.0f;
//             this->skelAnime.animCurrentFrame = this->skelAnime.animFrameCount;
//             func_80A43424(this, globalCtx, 0x26);
//             this->actionFunc = func_80A470E8;
//             this->unk_212 = 0;
//         }
//     }
//     else {
//         if (this->unk_592 == 0) {
//             phi_v0 = 0;
//         } else {
//             this->unk_592--;
//             phi_v0 = this->unk_592;
//         }
//         if (phi_v0 == 0) {
//             func_800F4524(&D_801333D4, 0x391D, 0x3C);
//             func_80034EC0(&this->skelAnime, D_80A48348, 6);
//             func_8010B720(globalCtx, 0x305A);
//             this->unk_213 = 3;
//             this->unk_212++;
//             func_800F483C(0x7F, 5);
//         }
//         else if (this->unk_592 == 0x3C || this->unk_592 == 0x78) {
//             func_8005B1A4(ACTIVE_CAM, 0x391D);
//             func_800F4524(&D_801333D4, 0x28B5, 0x3C);
//         }
//     }
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A47490.s")
// void func_80A47490(EnGo2 *this, GlobalContext *globalCtx) {
//     Player* player = PLAYER;

//     if (this->unk_212 == 0 || this->unk_212 == 1) {
//         if (this->unk_212 == 0) {
//             if (func_8010BDBC(&globalCtx->msgCtx)) {
//                 return;
//             }
//             else {
//                 func_8010B680(globalCtx, 0x3031, NULL);
//                 player->actor.freezeTimer = 0xA;
//                 this->unk_212++;
//             }
//         }

//         if (func_8010BDBC(&globalCtx->msgCtx) != 2) {
//             player->actor.freezeTimer = 0xA;
//         }
//         else {
//             gSaveContext.infTable[16] |= 0x1000;
//             this->unk_26E = 1;
//             this->unk_211 = 0;
//             this->unk_20F = 0;
//             this->actionFunc = func_80A4696C;
//         }

//     }
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A47578.s")

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/EnGo2_Update.s")
void EnGo2_Update(Actor* thisx, GlobalContext* globalCtx) {

    EnGo2* this = THIS;

    func_80A45360(this, &this->unk_220);
    func_80A45A00(this);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    func_80A4546C(this);
    func_8002E4B4(globalCtx, &this->actor, (f32)this->collider.dim.height * 0.5f, (f32)this->collider.dim.radius * 0.6f,
                  0.0f, 5);
    if (this->unk_194.unk_00 == 0) {
        func_80A44AB0(this, globalCtx);
    }
    this->actionFunc(this, globalCtx);
    if (this->unk_211 == 1) {
        func_80034F54(globalCtx, &this->unk_226, &this->unk_24A, 0x12);
    }
    func_80A45288(this, globalCtx);
    func_80A4592C(this);
    func_80A44940(this, globalCtx);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A479B0.s")
s32 func_80A479B0(EnGo2* this, GlobalContext* globalCtx) {
    Vec3f vec1;

    vec1 = D_80A48554;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_go2.c", 0xB41);
    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_go2.c", 0xB44),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, &D_0600BD80);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_go2.c", 0xB49);

    Matrix_MultVec3f(&vec1, &this->actor.posRot2);

    return 1;
}

// Only needs pad/temp
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A47AB0.s")
// s32 func_80A47AB0(EnGo2 *this, GlobalContext *globalCtx) {
//     Vec3f vec1;
//     f32 phi_f0;
//     // GraphicsContext* pad;

//     vec1 = D_80A48560;

//     OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_go2.c", 0xB62);
//     func_80093D18(globalCtx->state.gfxCtx);

//     if (this->actionFunc == func_80A47024) {
//         phi_f0 = 0.0f;
//     } else {
//         phi_f0 = this->actor.speedXZ;
//     }

//     Matrix_RotateRPY((globalCtx->state.frames * ((s16) phi_f0 * 0x578)), 0, this->actor.shape.rot.z, MTXMODE_APPLY);
//     gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_go2.c", 0xB6E), G_MTX_NOPUSH |
//     G_MTX_LOAD | G_MTX_MODELVIEW); gSPDisplayList(POLY_OPA_DISP++, &D_0600C140); CLOSE_DISPS(globalCtx->state.gfxCtx,
//     "../z_en_go2.c", 0xB72); Matrix_MultVec3f(&vec1, &this->actor.posRot2);

//     return 1;
// }

// EnGo2_OverrideLimbDraw
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A47C20.s")
s32 func_80A47C20(GlobalContext* globalCtx, s32 limb, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    EnGo2* this = THIS;
    Vec3s vec1;
    f32 float1;

    if (limb == 0x11) {
        Matrix_Translate(2800.0f, 0.0f, 0.0f, MTXMODE_APPLY);
        vec1 = this->unk_194.unk_08;
        float1 = (vec1.y / 32768.0f) * M_PI;
        Matrix_RotateX(float1, MTXMODE_APPLY);
        float1 = (vec1.x / 32768.0f) * M_PI;
        Matrix_RotateZ(float1, MTXMODE_APPLY);
        Matrix_Translate(-2800.0f, 0.0f, 0.0f, MTXMODE_APPLY);
    }
    if (limb == 0xA) {
        vec1 = this->unk_194.unk_0E;
        float1 = (vec1.y / 32768.0f) * M_PI;
        Matrix_RotateY(float1, MTXMODE_APPLY);
        float1 = (vec1.x / 32768.0f) * M_PI;
        Matrix_RotateX(float1, MTXMODE_APPLY);
    }
    if ((limb == 0xA) || (limb == 0xB) || (limb == 0xE)) {
        float1 = Math_Sins(this->unk_226[limb]);
        rot->y += float1 * 200.0f;
        float1 = Math_Coss(this->unk_24A[limb]);
        rot->z += float1 * 200.0f;
    }
    return 0;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A47E34.s")
void func_80A47E34(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {

    EnGo2* this = THIS;
    Vec3f vec1;

    vec1 = D_80A4856C;

    if (limbIndex == 0x11) {
        Matrix_MultVec3f(&vec1, &this->actor.posRot2.pos);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/EnGo2_Draw.s")
