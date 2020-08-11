/*
 * File: z_bg_dodoago.c
 * Overlay: ovl_Bg_Dodoago
 * Description: Dodongo Head Statue in Dodongo's Cavern
 */

#include "z_bg_dodoago.h"

#define FLAGS 0x00000000

#define THIS ((BgDodoago*)thisx)

void BgDodoago_Init(Actor* thisx, GlobalContext* globalCtx);
void BgDodoago_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgDodoago_Update(Actor* thisx, GlobalContext* globalCtx);
void BgDodoago_Draw(Actor* thisx, GlobalContext* globalCtx);
void BgDodoago_SetupAction(BgDodoago* this, BgDodoagoActionFunc actionFunc);

void func_80871A08(Vec3f* vec, GlobalContext* globalCtx);
void func_80871CF4(BgDodoago* this, GlobalContext* globalCtx);
void func_80871FB8(BgDodoago* this, GlobalContext* globalCtx);
void func_8087227C(BgDodoago* this, GlobalContext* globalCtx);
void func_80872288(BgDodoago* this, GlobalContext* globalCtx);

const ActorInit Bg_Dodoago_InitVars = {
    ACTOR_BG_DODOAGO,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_DDAN_OBJECTS,
    sizeof(BgDodoago),
    (ActorFunc)BgDodoago_Init,
    (ActorFunc)BgDodoago_Destroy,
    (ActorFunc)BgDodoago_Update,
    (ActorFunc)BgDodoago_Draw,
};

// s32 D_80872540[] = { 0x0A003900, 0x00010000, 0x02000000, 0x00000000, 0x00000000, 0xFFCFFFFF,
//                      0x00000000, 0x00010000, 0x0050001E, 0x00500000, 0x00000000 };
static ColliderCylinderInit D_80872540 = {
    { COLTYPE_UNK10, 0x00, 0x39, 0x00, 0x00, COLSHAPE_CYLINDER },
    { 0x02, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
    { 80, 30, 80, { 0, 0, 0 } },
};

// s32 D_8087256C[] = { 0x0A00003D, 0x20010000, 0x02000000, 0x00000000, 0x00000000, 0x00000000,
//                      0x00000000, 0x00000100, 0x0032003C, 0x01180000, 0x00000000 };
static ColliderCylinderInit D_8087256C = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x3D, 0x20, COLSHAPE_CYLINDER },
    { 0x02, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 50, 60, 280, { 0, 0, 0 } },
};

s32 D_80872598 = 0x00000000;

Color_RGBA8_n D_8087259C = { 100, 100, 100 };
Color_RGBA8_n D_808725A0 = { 40, 40, 40 };

Vec3f VELOCITY = { 0.0f, -1.5f, 0.0f };
Vec3f ACCELERATION = { 0.0f, -0.20000000298023223876953125f, 0.0f };

// s32 velocity[] = { 0x00000000, 0xBFC00000, 0x00000000 };
// s32 acceleration[] = { 0x00000000, 0xBE4CCCCD, 0x00000000 };

static InitChainEntry D_808725BC[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 5000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 800, ICHAIN_STOP),
};

s32 D_808725CC[] = { 0x00000000, 0xC3480000, 0x43D70000, 0x41A00000, 0xC3480000, 0x43D20000, 0xC1A00000,
                     0xC3480000, 0x43D20000, 0x42200000, 0xC3480000, 0x43BE0000, 0xC2200000, 0xC3480000,
                     0x43BE0000, 0x42480000, 0xC3480000, 0x43AF0000, 0xC2480000, 0xC3480000, 0x43AF0000,
                     0x42700000, 0xC3480000, 0x43A00000, 0xC2700000, 0xC3480000, 0x43A00000, 0x428C0000,
                     0xC3480000, 0x43910000, 0xC28C0000, 0xC3480000, 0x43910000 };

extern Gfx D_60013500[];
extern s32 D_06001DDC;

// this comes from .bss
extern u8 D_808727C0;
extern s32 D_80872824;

void BgDodoago_SetupAction(BgDodoago* this, BgDodoagoActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void func_80871A08(Vec3f* vec, GlobalContext* globalCtx) {
    Vec3f currentPosition;
    Color_RGBA8_n primColor = D_8087259C;
    Color_RGBA8_n envColor = D_808725A0;
    s32 i;

    for (i = 4; i > 0; i--) {
        currentPosition.x = Math_Rand_CenteredFloat(20.0f) + vec->x;
        currentPosition.y = Math_Rand_CenteredFloat(10.0f) + vec->y;
        currentPosition.z = Math_Rand_CenteredFloat(20.0f) + vec->z;
        func_80028B74(globalCtx, &currentPosition, &VELOCITY, &ACCELERATION, &primColor, &envColor);
    }
}

void BgDodoago_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgDodoago* this = THIS;
    s32 padding;
    s32 localC = 0;

    Actor_ProcessInitChain(&this->dyna.actor, D_808725BC);
    DynaPolyInfo_SetActorMove(&this->dyna, 0);
    DynaPolyInfo_Alloc(&D_06001DDC, &localC);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, localC);
    ActorShape_Init(&this->dyna.actor.shape, 0.0f, NULL, 0.0f);

    if (Flags_GetSwitch(globalCtx, (this->dyna.actor.params & 0x3F)) != 0) {
        BgDodoago_SetupAction(this, func_8087227C);
        this->dyna.actor.shape.rot.x = 0x1333;
        globalCtx->unk_11D30[1] = 0xFF;
        globalCtx->unk_11D30[0] = globalCtx->unk_11D30[1];
        return;
    }

    Collider_InitCylinder(globalCtx, &this->colliders[0]);
    Collider_InitCylinder(globalCtx, &this->colliders[1]);
    Collider_InitCylinder(globalCtx, &this->colliders[2]);
    Collider_SetCylinder(globalCtx, &this->colliders[0], &this->dyna.actor, &D_80872540);
    Collider_SetCylinder(globalCtx, &this->colliders[1], &this->dyna.actor, &D_8087256C);
    Collider_SetCylinder(globalCtx, &this->colliders[2], &this->dyna.actor, &D_8087256C);
    BgDodoago_SetupAction(this, func_80871CF4);
    D_808727C0 = 0;
}

void BgDodoago_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgDodoago* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
    Collider_DestroyCylinder(globalCtx, &this->colliders[0]);
    Collider_DestroyCylinder(globalCtx, &this->colliders[1]);
    Collider_DestroyCylinder(globalCtx, &this->colliders[2]);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/func_80871CF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/func_80871FB8.s")
// void func_80871FB8(BgDodoago *this, GlobalContext *globalCtx) {
//     f32 spE4;
//     f32 spE0;
//     f32 spDC;
//     ? spD0;
//     ? sp58;
//     ? *temp_s0;
//     ? *temp_t6;
//     f32 *temp_s2;
//     f32 *temp_s2_2;
//     s16 temp_v1;
//     s32 *temp_t7;
//     s32 *phi_t7;
//     ? *phi_t6;
//     ? *phi_s0;

//     phi_t7 = D_808725CC;
//     phi_t6 = &sp58;
// loop_1:
//     temp_t7 = phi_t7 + 0xC;
//     temp_t6 = phi_t6 + 0xC;
//     temp_t6->unk-C = (s32) *phi_t7;
//     temp_t6->unk-8 = (s32) temp_t7->unk-8;
//     temp_t6->unk-4 = (s32) temp_t7->unk-4;
//     phi_t7 = temp_t7;
//     phi_t6 = temp_t6;
//     if (temp_t7 != (D_808725CC + 0x84)) {
//         goto loop_1;
//     }
//     temp_v1 = (s16) globalCtx->unk_11D30;
//     if ((s32) temp_v1 < 0xFF) {
//         globalCtx->unk_11D30 = (s16) (temp_v1 + 5);
//     }
//     if ((s32) globalCtx->unk11D32 < 0xFF) {
//         globalCtx->unk11D32 = (s16) (globalCtx->unk11D32 + 5);
//     }
//     if (0xFF != (s16) globalCtx->unk_11D30) {
// block_8:
//         D_80872824 = (s32) (D_80872824 - 1);
//         return;
//     }
//     if (0xFF != globalCtx->unk11D32) {
//         goto block_8;
//     }
//     if (D_80872824 == 0x6C) {
//         temp_s2 = &spDC;
//         phi_s0 = &spD0;
// loop_11:
//         spDC = phi_s0->unk0 + this->dyna.actor.posRot.pos.x;
//         spE0 = phi_s0->unk4 + this->dyna.actor.posRot.pos.y;
//         spE4 = phi_s0->unk8 + this->dyna.actor.posRot.pos.z;
//         func_80033480(globalCtx, (Vec3f *) temp_s2, 2.0f, 3, 0xC8, 0x4B, 1);
//         temp_s0 = phi_s0 - 0xC;
//         phi_s0 = temp_s0;
//         if ((u32) temp_s0 >= (u32) &sp58) {
//             goto loop_11;
//         }
//     }
//     temp_s2_2 = &spDC;
//     spDC = this->dyna.actor.posRot.pos.x + 200.0f;
//     spE0 = this->dyna.actor.posRot.pos.y - 20.0f;
//     spE4 = this->dyna.actor.posRot.pos.z + 100.0f;
//     func_80871A08((Vec3f *) temp_s2_2, globalCtx);
//     spDC = this->dyna.actor.posRot.pos.x - 200.0f;
//     spE0 = this->dyna.actor.posRot.pos.y - 20.0f;
//     spE4 = this->dyna.actor.posRot.pos.z + 100.0f;
//     func_80871A08((Vec3f *) temp_s2_2, globalCtx);
//     Math_ApproxS(&this->unk_164, (u16)0x64, (u16)3);
//     func_800AA000(500.0f, (u8)0x78U, (u8)0x14U, (u8)0xAU);
//     if (Math_SmoothScaleMaxMinS((s16 *) &this->dyna.actor.shape, (u16)0x1333, (s16) ((s32) ((0x6E - this->unk_164) <<
//     0x10) >> 0x10), (u16)0x3E8, 0x32) == 0) {
//         BgDodoago_SetupAction(this, (void (*)(struct BgDodoago *, GlobalContext *)) &func_8087227C);
//         Audio_PlaySoundGeneral((u16)0x281DU, &this->dyna.actor.projectedPos, 4U, &D_801333E0, &D_801333E0,
//         &D_801333E8); return;
//     }
//     Audio_PlaySoundGeneral((u16)0x201EU, &this->dyna.actor.projectedPos, 4U, &D_801333E0, &D_801333E0, &D_801333E8);
// }

void func_8087227C(BgDodoago* this, GlobalContext* globalCtx) {
}

void func_80872288(BgDodoago* this, GlobalContext* globalCtx) {
    globalCtx->unk_11D30[this->unk_164] = globalCtx->unk_11D30[this->unk_164] + 5;
    if (globalCtx->unk_11D30[this->unk_164] == 0xFF) {
        BgDodoago_SetupAction(this, func_80871CF4);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/BgDodoago_Update.s")
// void BgDodoago_Update(Actor* thisx, GlobalContext* globalCtx) {
//     BgDodoago* this = THIS;
//     s16 temp_a1;
//     s16 temp_a1_2;
//     s32 temp_v0;
//     Actor* phi_v0;

//     if (this->dyna.actor.attachedA == 0) {
//         /// 0x1C6
//         temp_v0 = this->colliders[2].base.maskA & 2;
//         // 0x212 (it's exactly one position from 0x1C6 (so size of a whole collider (4C)))
//         if ((temp_v0 != 0) || ((this->colliders[2].base.maskA & 2) != 0)) {
//             if (temp_v0 != 0) {
//                 // 1C0
//                 phi_v0 = this->colliders[1].base.oc;
//             } else {
//                 // 2C0
//                 phi_v0 = this->colliders[2].base.oc;
//             }
//             this->colliders[1].base.maskA &= 0xFFFD;
//             this->colliders[2].base.maskA &= 0xFFFD;

//             if (phi_v0->type == 3 && phi_v0->id == 0x10 && phi_v0->params == 0) {
//                 this->dyna.actor.attachedA = phi_v0;
//                 // phi_v0->unk1F8 = (u16)0x32;
//                 phi_v0->colChkInfo.unk_14 = 0x32;
//                 phi_v0->speedXZ = 0.0f;
//                 D_80872824 = 0;
//                 this->actionFunc(this, globalCtx);
//                 return;
//             }
//         }
//     } else {
//         D_80872824++;
//         temp_a1 = this->dyna.actor.params;
//         this = this;
//         Flags_GetSwitch(globalCtx, (s32)(temp_a1 & 0x3F));
//         if (D_808727C0 == 0) {
//             if (D_80872824 >= 0x8D) {
//                 temp_a1_2 = this->dyna.actor.params;
//                 this = this;
//                 if (Flags_GetSwitch(globalCtx, (s32)(temp_a1_2 & 0x3F)) != 0) {
//                     D_808727C0 = (u8)(D_808727C0 + 1);
//                     this->actionFunc(this, globalCtx);
//                     return;
//                 }
//                 this->dyna.actor.attachedA = NULL;
//             }
//         }
//     }
//     this->actionFunc(this, globalCtx);
// }

void BgDodoago_Draw(Actor* thisx, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_dodoago.c", 672);
    if (Flags_GetEventChkInf(0xB0) != 0) {
        func_80093D18(globalCtx->state.gfxCtx);
        gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_dodoago.c", 677),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(gfxCtx->polyOpa.p++, D_60013500);
    }
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_dodoago.c", 681);
}
