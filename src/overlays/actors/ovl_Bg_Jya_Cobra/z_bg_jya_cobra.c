#include "z_bg_jya_cobra.h"
#include "overlays/actors/ovl_Bg_Jya_Bigmirror/z_bg_jya_bigmirror.h"
#include "overlays/actors/ovl_Mir_Ray/z_mir_ray.h"
#include "vt.h"

#define FLAGS 0x00000010

#define THIS ((BgJyaCobra*)thisx)

void BgJyaCobra_Init(Actor* thisx, GlobalContext* globalCtx);
void BgJyaCobra_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgJyaCobra_Update(Actor* thisx, GlobalContext* globalCtx);
void BgJyaCobra_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80896918(BgJyaCobra* this, GlobalContext* globalCtx);
void func_80896950(BgJyaCobra* this, GlobalContext* globalCtx);
void func_808969F8(BgJyaCobra* this, GlobalContext* globalCtx);
void func_80896ABC(BgJyaCobra* this, GlobalContext* globalCtx);

extern Gfx D_06010790;
extern Gfx D_06010C20[];
extern UNK_TYPE D_0601167C;
extern Gfx D_060117D0[];

Vtx D_80897270[] = {
    VTX(-800, 0, -800, 0, 2048, 0xFF, 0xFF, 0xFF, 0xFF),
    VTX(800, 0, -800, 2048, 2048, 0xFF, 0xFF, 0xFF, 0xFF),
    VTX(800, 0, 800, 2048, 0, 0xFF, 0xFF, 0xFF, 0xFF),
    VTX(-800, 0, 800, 0, 0, 0xFF, 0xFF, 0xFF, 0xFF),
};

Gfx D_808972B0[] = {
    gsDPPipeSync(),
    gsDPSetCombineLERP(PRIMITIVE, 0, TEXEL0, 0, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(AA_EN | Z_CMP | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_DEC | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_0, G_BL_CLR_IN, G_BL_1),
                      G_RM_AA_ZB_XLU_DECAL2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(D_80897270, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

const ActorInit Bg_Jya_Cobra_InitVars = {
    ACTOR_BG_JYA_COBRA,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_JYA_OBJ,
    sizeof(BgJyaCobra),
    (ActorFunc)BgJyaCobra_Init,
    (ActorFunc)BgJyaCobra_Destroy,
    (ActorFunc)BgJyaCobra_Update,
    (ActorFunc)BgJyaCobra_Draw,
};

s16 D_80897308[] = { 0, 0, 0, 0 };

u8 D_80897310[] = { 1, 0, 1, 0 };

s16 D_80897314[] = { -0x4000, 0000, 0x4000, 0000 };

u8 D_8089731C[] = { 0x00, 0x00, 0x20, 0x80, 0x80, 0x80, 0x80, 0x80, 0x20, 0x00, 0x00, 0x00, 0x20, 0x80, 0xA0, 0xA3,
                    0xA3, 0xA3, 0xA0, 0x80, 0x20, 0x00, 0x20, 0x80, 0xA0, 0xA5, 0xA6, 0xA6, 0xA6, 0xA5, 0xA0, 0x80,
                    0x20, 0x80, 0xA0, 0xA5, 0xA6, 0xA6, 0xA6, 0xA6, 0xA6, 0xA5, 0xA0, 0x80, 0x80, 0xA3, 0xA6, 0xA6,
                    0xA6, 0xA6, 0xA6, 0xA6, 0xA6, 0xA3, 0x80, 0x80, 0xA3, 0xA6, 0xA6, 0xA6, 0xA6, 0xA6, 0xA6, 0xA6,
                    0xA3, 0x80, 0x80, 0xA3, 0xA6, 0xA6, 0xA6, 0xA6, 0xA6, 0xA6, 0xA6, 0xA3, 0x80, 0x80, 0xA0, 0xA5,
                    0xA6, 0xA6, 0xA6, 0xA6, 0xA6, 0xA5, 0xA0, 0x80, 0x20, 0x80, 0xA0, 0xA5, 0xA6, 0xA6, 0xA6, 0xA5,
                    0xA0, 0x80, 0x20, 0x00, 0x20, 0x80, 0xA0, 0xA3, 0xA3, 0xA3, 0xA0, 0x80, 0x20, 0x00, 0x00, 0x00,
                    0x20, 0x80, 0x80, 0x80, 0x80, 0x80, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00 };

u8 D_80897398[] = { 0x20, 0x80, 0x20, 0x80, 0xA0, 0x80, 0x20, 0x80, 0x20, 0x00, 0x00, 0x00 };

Vec3f D_808973A4 = { -6.0f, 100.0f, 7.6f };

Vec3f D_808973B0[] = {
    { -12.6f, 69.200005f, -10.0f }, { -9.0f, 43.0f, -1.0f }, { -3.0f, 15.0f, 8.6f },
    { -8.6f, 15.0f, 13.5f },        { -6.6f, 26.0f, 11.6f }, { -12.5f, 43.0f, 8.0f },
    { -17.2f, 70.0f, 0.6f },        { -8.0f, 100.0f, 7.6f }, { 6.0f, 100.0f, 7.6f },
    { 12.6f, 69.200005f, -10.0f },  { 9.0f, 43.0f, -1.0f },  { 3.0f, 15.0f, 8.6f },
    { 8.6f, 15.0f, 13.5f },         { 6.6f, 26.0f, 11.6f },  { 12.5f, 43.0f, 8.0f },
    { 17.2f, 70.0f, 0.6f },         { 8.0f, 100.0f, 7.6f },  { 0.0f, 70.0f, -11.3f },
    { 0.0f, 44.6000023f, -2.0f },   { 0.0f, 15.0f, 10.6f },  { 0.0f, 15.0f, 0.3f },
    { 0.0f, 26.0f, 11.6f },         { 0.0f, 88.4f, -1.4f },  { 0.0f, 95.700005f, 14.900001f },
    { 0.0f, 101.4f, 5.0f },
};

Vec3f D_808974DC = { 12.0f, 21.3000011f, -2.5f };

Vec3f D_808974E8[] = {
    { 30.0f, 21.3000011f, -2.5f },
    { -15.0f, 21.3000011f, -2.5f },
    { -30.0f, 21.3000011f, -2.5f },
    { 12.0f, 21.3000011f, -2.5f },
};

UNK_TYPE D_80897518[] = { 0x00000080, 0x000000A0, 0x000000A0, 0x00000080 };

extern InitChainEntry D_80897528[];
// D_80897528
InitChainEntry D_80897528[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 800, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_STOP),
};

s32 D_80897538[] = { 0x0000C000, 0 };

s32 D_80897540[] = { 0x00004000, 0 };

Vec3f D_80897548[] = {
    { 0.1f, 0.1f, 0.1f },
    { 0.072f, 0.072f, 0.072f },
    { 0.1f, 0.1f, 0.132f },
};

void func_808958F0(Vec3f* arg0, Vec3f* arg1, f32 arg2, f32 arg3) {
    arg0->x = (arg1->z * arg2) + (arg1->x * arg3);
    arg0->y = arg1->y;
    arg0->z = (arg1->z * arg3) - (arg1->x * arg2);
}

void func_8089593C(BgJyaCobra* this, GlobalContext* globalCtx, void* arg2, DynaPolyMoveFlag flags) {
    s32 padding;
    s32 sp30;
    s32 padding2;

    sp30 = 0;
    DynaPolyInfo_SetActorMove(&this->dyna, flags);
    DynaPolyInfo_Alloc(arg2, &sp30);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, sp30);
    if (this->dyna.dynaPolyId == 50) {
        // Warning : move BG Registration Failure(%s %d)(name %d)(arg_data 0x%04x)
        osSyncPrintf("Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n", "../z_bg_jya_cobra.c", 247,
                     this->dyna.actor.id, this->dyna.actor.params);
    }
}

void func_808959C4(BgJyaCobra* this, GlobalContext* globalCtx) {
    Actor_SpawnAsChild(&globalCtx->actorCtx, &this->dyna.actor, globalCtx, ACTOR_MIR_RAY, this->dyna.actor.posRot.pos.x,
                       this->dyna.actor.posRot.pos.y + 57.0f, this->dyna.actor.posRot.pos.z, 0, 0, 0, 6);
    if (this->dyna.actor.child == NULL) {
        osSyncPrintf(VT_FGCOL(RED));
        //  	Ｅｒｒｏｒ : Mir Ray occurrence failure (%s %d)
        osSyncPrintf("Ｅｒｒｏｒ : Mir Ray 発生失敗 (%s %d)\n", "../z_bg_jya_cobra.c", 270);
        osSyncPrintf(VT_RST);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Cobra/func_80895A70.s")
// minor register and stack diffs
// void func_80895A70(BgJyaCobra *this) {
//     s32 temp_v0;
//     BgJyaBigmirror* temp_v1;
//     MirRay* phi_v0;
//     Vec3f sp28;
//     MirRay* temp;

//     temp_v1 = (BgJyaBigmirror*)this->dyna.actor.parent;
//     temp_v0 = this->dyna.actor.params & 3;

//     switch (temp_v0) {
//         case 0:
//             temp = (MirRay*)this->dyna.actor.child;
//             if (this->dyna.actor.child != NULL) {
//                 phi_v0 = temp;
//                 if (phi_v0->actor.update == NULL) {
//                     this->dyna.actor.child = NULL;
//                     return;
//                 }
//             } else {
//                 return;
//             }
//             break;
//         case 1:
//             phi_v0 = temp_v1->unk_164;
//             if (phi_v0 == NULL) {
//                 return;
//             }
//             break;
//         case 2:
//             phi_v0 = temp_v1->unk_168;
//             if (phi_v0 == NULL) {
//                 return;
//             }
//             break;
//     }

//     if (this->unk_18C <= 0.0f) {
//         phi_v0->unLit = 1;
//         return;
//     }
//     phi_v0->unLit = 0;
//     Math_Vec3f_Copy(&phi_v0->sourcePt, &this->unk_180);
//     Matrix_RotateY(this->dyna.actor.shape.rot.y * 0.0000958738f, MTXMODE_NEW);
//     Matrix_RotateX(D_80897308[this->dyna.actor.params & 3] * 0.0000958738f, MTXMODE_APPLY);
//     sp28.x = 0.0f;
//     sp28.y = 0.0;
//     sp28.z = this->unk_190 * 2800.0f;
//     Matrix_MultVec3f(&sp28, &phi_v0->poolPt);
//     Math_Vec3f_Sum(&phi_v0->sourcePt, &phi_v0->poolPt, &phi_v0->poolPt);
// }

void func_80895BEC(BgJyaCobra* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 padding;
    Vec3f sp2C;

    func_808958F0(&sp2C, &this->unk_174, Math_SinS(this->unk_170), Math_CosS(this->unk_170));
    player->actor.posRot.pos.x = this->dyna.actor.posRot.pos.x + sp2C.x;
    player->actor.posRot.pos.y = this->dyna.actor.posRot.pos.y + sp2C.y;
    player->actor.posRot.pos.z = this->dyna.actor.posRot.pos.z + sp2C.z;
}

void func_80895C74(BgJyaCobra* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Cobra/func_80895C74.s")
// Small stack diffs
// void func_80895C74(BgJyaCobra* this, GlobalContext* globalCtx) {
//     s16 phi_v0;
//     s32 temp_v0 = this->dyna.actor.params;
//     BgJyaBigmirror* parent = (BgJyaBigmirror*)this->dyna.actor.parent;
//     f32 phi_f0;

//     if ((temp_v0 & 3) == 2 && parent != NULL && (!(parent->unk_15C & 4) || !(parent->unk_15C & 1))) {
//         Math_ApproxF(&this->unk_18C, 0.0f, 0.05f);
//     } else {
//         this->unk_18C = 1.0f;
//         if (D_80897310[(temp_v0 & 3)] != 0) {
//             phi_v0 = this->dyna.actor.shape.rot.y - D_80897314[(temp_v0 & 3)];
//             phi_v0 = ABS(phi_v0);
//             if (phi_v0 < 0x2000 && phi_v0 != -0x8000) {
//                 this->unk_18C += ((phi_v0 - 0x2000) * 0.00018310547f);
//                 if (this->unk_18C < 0.0f) {
//                     this->unk_18C = 0.0f;
//                 }
//             }
//         }
//     }

//     this->unk_180.x = this->dyna.actor.posRot.pos.x;
//     this->unk_180.y = this->dyna.actor.posRot.pos.y + 57.0f;
//     this->unk_180.z = this->dyna.actor.posRot.pos.z;

//     if (!(temp_v0 & 3)) {
//         this->unk_190 = 0.1f;
//     } else if ((temp_v0 & 3) == 1) {
//         phi_f0 = 0.1f;
//         phi_v0 = this->dyna.actor.shape.rot.y - 0x8000;
//         if (phi_v0 < 0x500 && phi_v0 >= -0x4FF) {
//             phi_f0 = 0.34f;
//         } else {
//             phi_v0 = this->dyna.actor.shape.rot.y - 0x4000;
//             if (phi_v0 < 0x500 && phi_v0 >= -0x4FF && parent != NULL &&
//                 (parent->unk_15C & 4)) {
//                 phi_f0 = 0.34f;
//             }
//         }
//         Math_ApproxF(&this->unk_190, phi_f0, 0.04f);
//     } else if ((temp_v0 & 3) == 2) {
//         phi_f0 = 0.1f;
//         phi_v0 = this->dyna.actor.shape.rot.y - 0x8000;
//         if (phi_v0 < 0x500 && phi_v0 >= -0x4FF) {
//             phi_f0 = 0.34f;
//         } else {
//             phi_v0 = this->dyna.actor.shape.rot.y + 0xFFFF4000;
//             if (phi_v0 < 0x500 && phi_v0 >= -0x4FF) {
//                 phi_f0 = 0.34f;
//             }
//         }
//         Math_ApproxF(&this->unk_190, phi_f0, 0.04f);
//     }
// }

void func_80895EF0(BgJyaCobra* this);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Cobra/func_80895EF0.s")
// void func_80895EF0(BgJyaCobra *this) {
//     Vec3f spD4;
//     Vec3f spC8;
//     Vec3f spBC;
//     Vec3f *temp_s4;
//     Vec3f *temp_s7;
//     Vec3f *temp_a0;
//     f32 *temp_fp;
//     f32 temp_f0;
//     f32 temp_f0_2;
//     s32 temp_a0_2;
//     s32 temp_a0_3;
//     s32 temp_a0_4;
//     s32 temp_a1;
//     s32 temp_f18;
//     u8* temp_s2;
//     s32 temp_s6;
//     s32 temp_s6_2;
//     s32 temp_t0;
//     s32 temp_t1;
//     s32 temp_t1_2;
//     s32 temp_v0_4;
//     s32 temp_v1;
//     u8 *temp_v0;
//     u8 *temp_v1_2;
//     s32 phi_v0;
//     Vec3f *phi_s7;
//     Vec3f *phi_s4;
//     s32 phi_s6;
//     s32 phi_t3;
//     s32 phi_t1;
//     s32 phi_v1;
//     s32 phi_a0;
//     s32 phi_a1;
//     s32 phi_a2;
//     s32 phi_a3;
//     Vec3f *phi_s5;
//     s32 phi_s6_2;
//     s32 phi_a1_2;
//     s32 phi_v1_2;
//     s32 phi_t1_2;
//     s32 phi_a0_2;
//     s32 phi_v0_2;
//     s32 phi_v1_3;

//     temp_s2 = (u8*)ALIGN16((s32) &this->unk_194);
//     Lib_MemSet(temp_s2, 0x1000, 0);
//     Matrix_RotateX(0.7853982f, (u8)0U);
//     if ((this->dyna.actor.params & 3) == 0) {
//         phi_v0 = (s32) ((this->dyna.actor.shape.rot.y + 0x4000) << 0x10);
//     } else {
//         phi_v0 = (s32) ((this->dyna.actor.shape.rot.y - 0x4000) << 0x10);
//     }
//     Matrix_RotateY((f32) (phi_v0 >> 0x10) * 0.0000958738f, (u8)1U);
//     Matrix_Scale(0.9f, 0.9f, 0.9f, (u8)1U);
//     temp_fp = &spC8;
//     phi_s7 = &D_808973B0;
//     phi_s4 = &D_808973A4;
//     do {
//         Math_Vec3f_Diff(phi_s7, phi_s4, &spD4);
//         spD4.x = spD4.x * 0.5f;
//         spD4.y = spD4.y * 0.5f;
//         spD4.z = spD4.z * 0.5f;
//         phi_s6 = 0;
//         do {
//             temp_f0 = (f32) phi_s6;
//             temp_a0 = temp_fp;
//             spC8.x = phi_s4->x + (spD4.x * temp_f0);
//             spC8.y = phi_s4->y + (spD4.y * temp_f0);
//             spC8.z = phi_s4->z + (spD4.z * temp_f0);
//             Matrix_MultVec3f(temp_a0, &spBC);
//             temp_s6 = phi_s6 + 1;
//             temp_f18 = (s32) (((spBC.x + 50.0f) * 0.64f) + 0.5f);
//             phi_t3 = (s32) (((88.0f - spBC.z) * 0.64f) + 0.5f) - 5;
//             phi_t1 = 0;
//             do {
//                 temp_t0 = phi_t3 << 6;
//                 if ((phi_t3 & ~0x3F) == 0) {
//                     temp_v1 = temp_f18 - 5;
//                     temp_a0_2 = temp_f18 - 3;
//                     temp_a1 = temp_f18 - 4;
//                     if ((temp_v1 & ~0x3F) == 0) {
//                         temp_v0 = (temp_t0 + temp_v1) + temp_s2;
//                         *temp_v0 = (u8) (*temp_v0 | *(D_8089731C + ((((phi_t1 * 4) - phi_t1) * 4) - phi_t1)));
//                     }
//                     if ((temp_a1 & ~0x3F) == 0) {
//                         temp_v0 = (temp_t0 + temp_a1) + temp_s2;
//                         *temp_v0 = (u8) (*temp_v0 | *(&(*(D_8089731C + ((((phi_t1 * 4) - phi_t1) * 4) - phi_t1))) +
//                         1));
//                     }
//                     if ((temp_a0_2 & ~0x3F) == 0) {
//                         temp_v0 = (temp_t0 + temp_a0_2) + temp_s2;
//                         *temp_v0 = (u8) (*temp_v0 | *(&(*(D_8089731C + ((((phi_t1 * 4) - phi_t1) * 4) - phi_t1))) +
//                         2));
//                     }
//                     temp_v0_4 = temp_f18 + 3;
//                     phi_v1 = temp_v0_4 - 5;
//                     phi_a0 = 3;
//                     phi_a1 = temp_v0_4 - 4;
//                     phi_a2 = temp_v0_4 - 3;
//                     phi_a3 = temp_v0_4 - 2;
//                     do {
//                         if ((phi_v1 & ~0x3F) == 0) {
//                             temp_v0 = (temp_t0 + phi_v1) + temp_s2;
//                             *temp_v0 = (u8) (*temp_v0 | *((D_8089731C + ((((phi_t1 * 4) - phi_t1) * 4) - phi_t1)) +
//                             phi_a0));
//                         }
//                         if ((phi_a1 & ~0x3F) == 0) {
//                             temp_v0 = (temp_t0 + phi_a1) + temp_s2;
//                             *temp_v0 = (u8) (*temp_v0 | *(&(*((D_8089731C + ((((phi_t1 * 4) - phi_t1) * 4) - phi_t1))
//                             + phi_a0)) + 1));
//                         }
//                         if ((phi_a2 & ~0x3F) == 0) {
//                             temp_v0 = (temp_t0 + phi_a2) + temp_s2;
//                             *temp_v0 = (u8) (*temp_v0 | *(&(*((D_8089731C + ((((phi_t1 * 4) - phi_t1) * 4) - phi_t1))
//                             + phi_a0)) + 2));
//                         }
//                         if ((phi_a3 & ~0x3F) == 0) {
//                             temp_v0 = (temp_t0 + phi_a3) + temp_s2;
//                             *temp_v0 = (u8) (*temp_v0 | *(&(*((D_8089731C + ((((phi_t1 * 4) - phi_t1) * 4) - phi_t1))
//                             + phi_a0)) + 3));
//                         }
//                         temp_a0_3 = phi_a0 + 4;
//                         phi_v1 = phi_v1 + 4;
//                         phi_a0 = temp_a0_3;
//                         phi_a1 = phi_a1 + 4;
//                         phi_a2 = phi_a2 + 4;
//                         phi_a3 = phi_a3 + 4;
//                     } while (temp_a0_3 != 0xB);
//                 }
//                 temp_t1 = phi_t1 + 1;
//                 phi_t3 = phi_t3 + 1;
//                 phi_t1 = temp_t1;
//             } while (temp_t1 != 0xB);
//             phi_s6 = temp_s6;
//         } while (temp_s6 != 2);
//         temp_s7 = phi_s7 + 0xC;
//         phi_s7 = temp_s7;
//         phi_s4 = phi_s4 + 0xC;
//     } while ((u32) temp_s7 < (u32) &D_808974DC);

//     temp_s4 = &D_808974E8;
//     phi_s5 = &D_808974DC;
//     do {
//         Math_Vec3f_Diff(temp_s4, phi_s5, (Vec3f *) &spD4);
//         spD4.x = spD4.x * 0.2f;
//         spD4.y = spD4.y * 0.2f;
//         spD4.z = spD4.z * 0.2f;
//         phi_s6_2 = 0;
//         do {
//             temp_f0_2 = (f32) phi_s6_2;
//             spC8.x = phi_s5->x + (spD4.x * temp_f0_2);
//             spC8.y = phi_s5->y + (spD4.y * temp_f0_2);
//             spC8.z = phi_s5->z + (spD4.z * temp_f0_2);
//             Matrix_MultVec3f((Vec3f *) temp_fp, (Vec3f *) &spBC);
//             temp_s6_2 = phi_s6_2 + 1;
//             phi_a1_2 = (s32) (((88.0f - spBC.z) * 0.64f) + 0.5f) - 1;
//             phi_t1_2 = 0;
//             do {
//                 if ((phi_a1_2 & ~0x3F) == 0) {
//                     phi_v1_2 = (s32) (((spBC.x + 50.0f) * 0.64f) + 0.5f) - 1;
//                     phi_a0_2 = 0;
//                     do {
//                         if ((phi_v1_2 & ~0x3F) == 0) {
//                             temp_v0 = ((phi_a1_2 << 6) + phi_v1_2) + temp_s2;
//                             *temp_v0 = (u8) (*temp_v0 | *((D_80897398 + ((phi_t1_2 * 4) - phi_t1_2)) + phi_a0_2));
//                         }
//                         temp_a0_4 = phi_a0_2 + 1;
//                         phi_v1_2 = phi_v1_2 + 1;
//                         phi_a0_2 = temp_a0_4;
//                     } while (temp_a0_4 != 3);
//                 }
//                 temp_t1_2 = phi_t1_2 + 1;
//                 phi_a1_2 = phi_a1_2 + 1;
//                 phi_t1_2 = temp_t1_2;
//             } while (temp_t1_2 < 3);
//             phi_s6_2 = temp_s6_2;
//         } while (temp_s6_2 < 5);

//         temp_s4++;
//         phi_s5++;
//     } while (temp_s4 < &(D_808974E8[4]));

//     phi_v0_2 = 0;
//     do {
//         temp_v1_2 = temp_s2 + phi_v0_2;
//         phi_v0_2 += 4;
//         *(temp_v1_2+ 0x1) = (u8)0;
//         *(temp_v1_2+ 0xFC1) = (u8)0;
//         *(temp_v1_2+ 0x2) = (u8)0;
//         *(temp_v1_2+ 0xFC2) = (u8)0;
//         *(temp_v1_2+ 0x3) = (u8)0;
//         *(temp_v1_2+ 0xFC3) = (u8)0;
//         *(temp_v1_2+ 0x0) = (u8)0;
//         *(temp_v1_2+ 0xFC0) = (u8)0;
//     } while (phi_v0_2 != 0x40);

//     temp_v0 = temp_s2 + 0x40;
//     *(temp_v0+ 0x0) = (u8)0;
//     *(temp_v0+ 0x3F) = (u8)0;
//     *(temp_v0+ 0x40) = (u8)0;
//     *(temp_v0+ 0x7F) = (u8)0;

//     phi_v1_3 = 0xC0;
//     do {
//         temp_v0 = temp_s2 + phi_v1_3;
//         phi_v1_3 += 0x100;
//         *(temp_v0+ 0x40) = (u8)0;
//         *(temp_v0+ 0x7F) = (u8)0;
//         *(temp_v0+ 0x80) = (u8)0;
//         *(temp_v0+ 0xBF) = (u8)0;
//         *(temp_v0+ 0xC0) = (u8)0;
//         *(temp_v0+ 0xFF) = (u8)0;
//         *(temp_v0+ 0x0) = (u8)0;
//         *(temp_v0+ 0x3F) = (u8)0;
//     } while (phi_v1_3 != 0xFC0);
// }

void func_80896518(BgJyaCobra* this);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Cobra/func_80896518.s")

void BgJyaCobra_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaCobra* this = THIS;

    func_8089593C(this, globalCtx, &D_0601167C, DPM_UNK);
    Actor_ProcessInitChain(&this->dyna.actor, D_80897528);
    if (!(this->dyna.actor.params & 3) && Flags_GetSwitch(globalCtx, ((s32)this->dyna.actor.params >> 8) & 0x3F)) {
        this->dyna.actor.shape.rot.y = 0;
        this->dyna.actor.initPosRot.rot.y = this->dyna.actor.shape.rot.y;
        this->dyna.actor.posRot.rot.y = this->dyna.actor.shape.rot.y;
    }

    if (!(this->dyna.actor.params & 3)) {
        func_808959C4(this, globalCtx);
    }

    func_80896918(this, globalCtx);

    if (this->dyna.actor.params) {}

    if ((this->dyna.actor.params & 3) == 1 || (this->dyna.actor.params & 3) == 2) {
        this->dyna.actor.room = -1;
    }

    if ((this->dyna.actor.params & 3) == 1) {
        func_80896518(this);
    }

    // (jya cobra)(arg_data 0x%04x)(act %x)(txt %x)(txt16 %x)
    osSyncPrintf((const char*)"(jya コブラ)(arg_data 0x%04x)(act %x)(txt %x)(txt16 %x)\n", this->dyna.actor.params,
                 this, ((s8*)this) + 0x194, (s32)((((s8*)this) + 0x1A3)) & ~0xF);
}

void BgJyaCobra_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaCobra* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

void func_80896918(BgJyaCobra* this, GlobalContext* globalCtx) {
    this->actionFunc = &func_80896950;
    this->unk_168 = 0;
    this->dyna.actor.posRot.rot.y = (((this->unk_16C << 0xD) + this->dyna.actor.initPosRot.rot.y) << 0x10) >> 0x10;
    this->dyna.actor.shape.rot.y = (((this->unk_16C << 0xD) + this->dyna.actor.initPosRot.rot.y) << 0x10) >> 0x10;
}

void func_80896950(BgJyaCobra* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (0.001f < this->dyna.unk_150) {
        this->unk_168 += 1;
        if (this->unk_168 >= 15) {
            func_808969F8(this, globalCtx);
        }
    } else {
        this->unk_168 = 0;
    }

    if (0.001f < fabsf(this->dyna.unk_150)) {
        this->dyna.unk_150 = 0.0f;
        player->stateFlags2 &= ~0x10;
    }
}

void func_808969F8(BgJyaCobra* this, GlobalContext* globalCtx) {
    Player* player;
    s32 phi_a3;
    s16 temp2;

    player = PLAYER;
    this->actionFunc = func_80896ABC;
    temp2 = this->dyna.actor.yawTowardsLink - this->dyna.actor.shape.rot.y;
    phi_a3 = ((this->dyna.actor.shape.rot.y - this->dyna.unk_158) << 0x10) >> 0x10;
    if ((phi_a3) < 0) {
        phi_a3 = 0 - (phi_a3);
    }

    if (temp2 > 0) {
        if (phi_a3 >= 0x4001) {
            this->unk_16A = 1;
        } else {
            this->unk_16A = -1;
        }
    } else {
        if (phi_a3 >= 0x4001) {
            this->unk_16A = -1;
        } else {
            this->unk_16A = 1;
        }
    }

    this->unk_174.x = player->actor.posRot.pos.x - this->dyna.actor.posRot.pos.x;
    this->unk_174.y = player->actor.posRot.pos.y - this->dyna.actor.posRot.pos.y;
    this->unk_174.z = player->actor.posRot.pos.z - this->dyna.actor.posRot.pos.z;
    this->unk_170 = this->unk_16E = 0;
    this->unk_172 = 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Cobra/func_80896ABC.s")
// regalloc
// void func_80896ABC(BgJyaCobra *this, GlobalContext *globalCtx) {
//     s32 temp_v0;
//     Player* player;

//     player = PLAYER;
//     temp_v0 = ((((this->unk_16C << 0xD) + this->dyna.actor.initPosRot.rot.y) - this->dyna.actor.posRot.rot.y) <<
//     0x10) >> 0x10; if (ABS(temp_v0) < 7424) {
//         Math_ApproxS(&this->unk_16E, 106, 4);
//     } else {
//         Math_ApproxS(&this->unk_16E, 21, 10);
//     }

//     if (Math_ApproxUpdateScaledS(&this->unk_170, this->unk_16A << 0xd, this->unk_16E) != 0) {
//         this->unk_16C = (this->unk_16C + this->unk_16A) & 7;
//         player->stateFlags2 &= ~0x10;
//         this->dyna.unk_150 = 0.0f;
//         func_80896918(this, globalCtx);
//     } else {
//         temp_v0 = ((((this->unk_16C << 0xD) + this->dyna.actor.initPosRot.rot.y) + this->unk_170) << 0x10) >> 0x10;
//         this->dyna.actor.posRot.rot.y = temp_v0;
//         this->dyna.actor.shape.rot.y = temp_v0;
//     }

//     if (player->stateFlags2 & 0x10) {
//         if (this->unk_172 != 0) {
//             func_80895BEC(this, globalCtx);
//         }
//     } else if (fabsf(this->dyna.unk_150) < 0.001f) {
//         this->unk_172 = 0;
//     }
//     this->dyna.unk_150 = 0.0f;
//     func_8002F974(&this->dyna.actor, 0x200A);
// }

void BgJyaCobra_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaCobra* this = THIS;
    s32 temp_v0;

    this->actionFunc(this, globalCtx);
    func_80895C74(this, globalCtx);
    func_80895A70(this);
    temp_v0 = this->dyna.actor.params & 3;
    if (temp_v0 == 0 || temp_v0 == 2) {
        func_80895EF0(this);
    }
}

void func_80896CB4(GlobalContext* globalCtx) {
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_jya_cobra.c", 864);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_jya_cobra.c", 867),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_XLU_DISP++, D_06010C20);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_jya_cobra.c", 872);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Cobra/func_80896D78.s")
// regalloc
// void func_80896D78(BgJyaCobra *this, GlobalContext *globalCtx) {
//     s32 pad;
//     Vec3s sp44;

//     OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_jya_cobra.c", 924);
//     func_80093D84(globalCtx->state.gfxCtx);

//     sp44.x = D_80897308[this->dyna.actor.params & 3] + this->dyna.actor.shape.rot.x;
//     sp44.y = this->dyna.actor.shape.rot.y;
//     sp44.z = this->dyna.actor.shape.rot.z;
//     func_800D1694(this->unk_180.x, this->unk_180.y, this->unk_180.z, &sp44);

//     Matrix_Scale(0.1f, 0.1f, this->unk_190, MTXMODE_APPLY);
//     gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_jya_cobra.c", 939),
//               G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
//     gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, (s8)(this->unk_18C * 140.0f));
//     gSPDisplayList(POLY_XLU_DISP++, D_060117D0);

//     CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_jya_cobra.c", 947);
// }

void func_80896EE4(BgJyaCobra* this, GlobalContext* globalCtx) {
    u32 temp;
    s16 sp72;
    Vec3f sp64;
    Vec3s* phi_a3;

    sp72 = this->dyna.actor.params & 3;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_jya_cobra.c", 966);

    func_80094044(globalCtx->state.gfxCtx);

    if (sp72 == 0) {
        sp64.x = this->dyna.actor.posRot.pos.x - 50.0f;
        sp64.y = this->dyna.actor.posRot.pos.y;
        sp64.z = this->dyna.actor.posRot.pos.z;
        phi_a3 = &D_80897538;
    } else {
        phi_a3 = &this->dyna.actor.shape.rot;
        if (sp72 == 2) {
            sp64.x = this->dyna.actor.posRot.pos.x + 70.0f;
            sp64.y = this->dyna.actor.posRot.pos.y;
            sp64.z = this->dyna.actor.posRot.pos.z;
            phi_a3 = &D_80897540;
        } else {
            Math_Vec3f_Copy(&sp64, &this->dyna.actor.posRot.pos);
        }
    }
    func_800D1694(sp64.x, sp64.y, sp64.z, phi_a3);

    Matrix_Scale(D_80897548[sp72].x, D_80897548[sp72].y, D_80897548[sp72].z, (u8)1U);
    Matrix_Translate(0.0f, 0.0f, 40.0f, 1);

    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 0, 0, 0, 120);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_jya_cobra.c", 994),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gDPSetTextureImage(POLY_XLU_DISP++, G_IM_FMT_I, G_IM_SIZ_16b, 1, ALIGN16((s32)&this->unk_194));
    gDPSetTile(POLY_XLU_DISP++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP,
               G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
    gDPLoadSync(POLY_XLU_DISP++);
    temp = sp72;
    gDPLoadBlock(POLY_XLU_DISP++, G_TX_LOADTILE, 0, 0, 2047, 256);
    if (!temp) {}
    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetTile(POLY_XLU_DISP++, G_IM_FMT_I, G_IM_SIZ_8b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP,
               G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
    gDPSetTileSize(POLY_XLU_DISP++, G_TX_RENDERTILE, 0, 0, 0x00FC, 0x00FC);
    gSPDisplayList(POLY_XLU_DISP++, D_808972B0);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_jya_cobra.c", 1006);
}

void BgJyaCobra_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaCobra* this = THIS;

    func_80896CB4(globalCtx);
    Gfx_DrawDListOpa(globalCtx, &D_06010790);

    if (0.0f < this->unk_18C) {
        func_80896D78(this, globalCtx);
    }

    if ((this->dyna.actor.params & 3) == 2) {
        BgJyaBigmirror* parent = (BgJyaBigmirror*)this->dyna.actor.parent;
        if (parent != NULL && (parent->unk_15C & 4) && (parent->unk_15C & 1)) {
            func_80896EE4(this, globalCtx);
        }
    } else {
        func_80896EE4(this, globalCtx);
    }
}
