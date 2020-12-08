/*
 * File: z_mir_ray.c
 * Overlay: ovl_Mir_Ray
 * Description: Reflectable Light Beam
 */

#include "z_mir_ray.h"

#define FLAGS 0x00000030

#define THIS ((MirRay*)thisx)

void MirRay_Init(Actor* thisx, GlobalContext* globalCtx);
void MirRay_Destroy(Actor* thisx, GlobalContext* globalCtx);
void MirRay_Update(Actor* thisx, GlobalContext* globalCtx);
void MirRay_Draw(Actor* thisx, GlobalContext* globalCtx);

s32 func_80B8E404(Vec3f* vec1, Vec3f* vec2, f32 arg2, f32 arg3, f32 arg4, s16 arg5, s16 arg6);

const ActorInit Mir_Ray_InitVars = {
    ACTOR_MIR_RAY,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_MIR_RAY,
    sizeof(MirRay),
    (ActorFunc)MirRay_Init,
    (ActorFunc)MirRay_Destroy,
    (ActorFunc)MirRay_Update,
    (ActorFunc)MirRay_Draw,
};

u8 D_80B8E670 = 0;

static ColliderQuadInit sQuadInit = {
    { COLTYPE_UNK10, 0x09, 0x00, 0x00, 0x00, COLSHAPE_QUAD },
    { 0x00, { 0x00200000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x00, 0x00 },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};

static ColliderJntSphItemInit sJntSphItemsInit[1] = {
    {
        { 0x00, { 0x00200000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x01, 0x00, 0x00 },
        { 0, { { 0, 0, 0 }, 50 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    { COLTYPE_UNK10, 0x09, 0x00, 0x00, 0x00, COLSHAPE_JNTSPH },
    1,
    sJntSphItemsInit,
};

static MirRayDataEntry D_80B8E6F8[] = {
    { 0xFB78, 0x02AE, 0xFC90, 0xFC68, 0x01E0, 0xFC87, 0x001E, 0x0032, 1.0f, 0x0032, 0x0096, 0.8f, 255, 255, 255, 0x02 },
    { 0xF8C0, 0x0444, 0xFF42, 0xF959, 0x0349, 0xFF46, 0x001E, 0x0046, 0.88f, 0x0036, 0x0096, 0.8f, 255, 255, 255,
      0x02 },
    { 0x0557, 0x02E2, 0xFCA4, 0x0443, 0x01DC, 0xFCA4, 0x001E, 0x0055, 0.0f, 0x0000, 0x0096, 0.8f, 255, 255, 255, 0x00 },
    { 0x0898, 0x044F, 0xFF24, 0x07F8, 0x034B, 0xFF24, 0x001E, 0x003C, 0.0f, 0x0000, 0x0096, 0.8f, 255, 255, 255, 0x01 },
    { 0xFDD0, 0x0879, 0xFECA, 0xFDD0, 0x06CF, 0xFECA, 0x001E, 0x0046, 0.0f, 0x0000, 0x0096, 0.8f, 255, 255, 255, 0x00 },
    { 0x003C, 0x070A, 0xFBBE, 0x003C, 0x03CD, 0xFBBE, 0x001E, 0x0046, 0.0f, 0x0000, 0x0096, 0.9f, 255, 255, 255, 0x0D },
    { 0x0474, 0x01E0, 0xFCA4, 0x0474, 0x01E0, 0xFCA4, 0x001E, 0x001E, 1.0f, 0x000A, 0x0064, 0.9f, 255, 255, 255, 0x0E },
    { 0xFDD0, 0x06CF, 0xFECA, 0xFDD0, 0x06CF, 0xFECA, 0x001E, 0x001E, 0.0f, 0x0000, 0x0064, 0.94f, 255, 255, 255,
      0x0C },
    { 0x003C, 0x06CF, 0xFECA, 0x003C, 0x06CF, 0xFECA, 0x001E, 0x001E, 0.0f, 0x0000, 0x0064, 0.94f, 255, 255, 255,
      0x0C },
    { 0xFB6A, 0x01C0, 0x04AA, 0xFB6A, 0x0094, 0x04AA, 0x0032, 0x0064, 1.0f, 0x0032, 0x0096, 0.8f, 255, 255, 255, 0x03 }
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 0, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 4000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_STOP),
};

extern Gfx D_060000B0[];
extern Gfx D_06000C50[];

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Mir_Ray/func_80B8D050.s")
void func_80B8D050(MirRay* this) {
    Vec3f temp_vec;
    MirRayDataEntry* temp_DataEntry;

    temp_DataEntry = &D_80B8E6F8[this->actor.params];
    temp_vec.x = (this->unk_288.x - this->unk_27C.x) * temp_DataEntry->unk_10;
    temp_vec.y = (this->unk_288.y - this->unk_27C.y) * temp_DataEntry->unk_10;
    temp_vec.z = (this->unk_288.z - this->unk_27C.z) * temp_DataEntry->unk_10;
    this->colliderSph.list->dim.worldSphere.center.x = temp_vec.x + this->unk_27C.x;
    this->colliderSph.list->dim.worldSphere.center.y = temp_vec.y + this->unk_27C.y;
    this->colliderSph.list->dim.worldSphere.center.z = temp_vec.z + this->unk_27C.z;
    this->colliderSph.list->dim.worldSphere.radius = temp_DataEntry->unk_14 * this->colliderSph.list->dim.scale;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Mir_Ray/func_80B8D110.s")
void func_80B8D110(MirRay* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    MirRayDataEntry* temp_s1;
    Vec3f sp44;
    Vec3s sp3C;

    temp_s1 = &D_80B8E6F8[this->actor.params];
    if (func_80B8E404(&this->unk_27C, &this->unk_288, player->actor.posRot.pos.x, player->actor.posRot.pos.y + 30.0f,
                      player->actor.posRot.pos.z, this->unk_294, this->unk_296) != 0) {
        if ((temp_s1->unk_1F & 8) != 0) {
            Math_Vec3f_Diff(&player->actor.posRot.pos, &this->unk_27C, &sp44);
        } else {
            Math_Vec3f_Diff(&this->unk_288, &this->unk_27C, &sp44);
        }
        sp3C.x = (temp_s1->unk_18 * sp44.x) + this->unk_27C.x;
        sp3C.y = (temp_s1->unk_18 * sp44.y) + this->unk_27C.y;
        sp3C.z = (temp_s1->unk_18 * sp44.z) + this->unk_27C.z;
        Math_ApproxS(&this->unk_298, temp_s1->unk_16, 6);
        Lights_PointNoGlowSetInfo(&this->lightInfo, sp3C.x, sp3C.y, sp3C.z, temp_s1->unk_1C, temp_s1->unk_1D,
                                  temp_s1->unk_1E, this->unk_298);
    } else {
        Math_ApproxS(&this->unk_298, 0, 6);
        Lights_PointSetColorAndRadius(&this->lightInfo, temp_s1->unk_1C, temp_s1->unk_1D, temp_s1->unk_1E,
                                      this->unk_298);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Mir_Ray/MirRay_Init.s")
void MirRay_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    MirRay* this = THIS;

    MirRayDataEntry* temp_s1;

    temp_s1 = &D_80B8E6F8[this->actor.params];
    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, 0.0f, NULL, 0.0f);
    // Generation of reflectable light!
    osSyncPrintf((const char*)"反射用 光の発生!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n");
    LogUtils_LogThreadId((const char*)"../z_mir_ray.c", 0x206);
    osSyncPrintf((const char*)"this->actor.arg_data = %d\n", this->actor.params);

    if (this->actor.params >= 0xA) {
        LogUtils_LogThreadId((const char*)"../z_mir_ray.c", 0x209);
        // Reflected light generation failure
        osSyncPrintf((const char*)"\"反射光 発生失敗\" = %s\n", "反射光 発生失敗");
        Actor_Kill(&this->actor);
    }

    this->unk_27C.x = temp_s1->unk_0;
    this->unk_27C.y = temp_s1->unk_2;
    this->unk_27C.z = temp_s1->unk_4;
    this->unk_294 = temp_s1->unk_C;
    this->unk_288.x = temp_s1->unk_6;
    this->unk_288.y = temp_s1->unk_8;
    this->unk_288.z = temp_s1->unk_A;
    this->unk_296 = temp_s1->unk_E;
    Lights_PointNoGlowSetInfo(&this->lightInfo, this->unk_27C.x, this->unk_27C.y, this->unk_27C.z, 0xFF, 0xFF, 0xFF,
                              0x64);
    this->lightNode = LightContext_InsertLight(globalCtx, &globalCtx->lightCtx, &this->lightInfo);

    this->unk_230[0].x = -536.0f;
    this->unk_230[0].y = -939.0f;

    this->unk_230[1].x = -1690.0f;
    this->unk_230[1].y = 0.0f;

    this->unk_230[2].x = -536.0f;
    this->unk_230[2].y = 938.0f;

    this->unk_230[3].x = 921.0f;
    this->unk_230[3].y = 0.0f;

    this->unk_230[4].x = 758.0f;
    this->unk_230[4].y = 800.0f;

    this->unk_230[5].x = 758.0f;
    this->unk_230[5].y = -800.0f;

    if ((temp_s1->unk_1F & 2) != 0) {
        Collider_InitJntSph(globalCtx, &this->colliderSph);
        Collider_SetJntSph(globalCtx, &this->colliderSph, &this->actor, &sJntSphInit, &this->colliderSphItem);
        if ((temp_s1->unk_1F & 4) == 0) {
            func_80B8D050(this);
        }
    }

    Collider_InitQuad(globalCtx, &this->colliderQuad);
    Collider_SetQuad(globalCtx, &this->colliderQuad, &this->actor, &sQuadInit);

    if ((this->actor.params == 5) || (this->actor.params == 7) || (this->actor.params == 8)) {
        this->actor.room = -1;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Mir_Ray/MirRay_Destroy.s")
void MirRay_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    MirRay* this = THIS;

    LightContext_RemoveLight(globalCtx, &globalCtx->lightCtx, this->lightNode);

    if ((D_80B8E6F8[this->actor.params].unk_1F & 2) != 0) {
        Collider_DestroyJntSph(globalCtx, &this->colliderSph);
    }

    Collider_DestroyQuad(globalCtx, &this->colliderQuad);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Mir_Ray/MirRay_Update.s")
void MirRay_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    MirRay* this = THIS;

    Player* player = PLAYER;

    D_80B8E670 = 0;

    if (this->unk_2AE == 0) {
        if ((D_80B8E6F8[this->actor.params].unk_1F & 2) != 0) {
            if ((D_80B8E6F8[this->actor.params].unk_1F & 4) != 0) {
                func_80B8D050(this);
            }
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->colliderSph.base);
        }
        if (0.0f < this->unk_22C) {
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->colliderQuad.base);
        }
        func_80B8D110(this, globalCtx);

        if (0.0f < this->unk_22C) {
            func_8002F8F0(&player->actor, NA_SE_IT_SHIELD_BEAM - SFX_FLAG);
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Mir_Ray/func_80B8D6F0.s")
void func_80B8D6F0(MirRay* this, GlobalContext* globalCtx) {

    // f32 sp54;
    // f32 sp50;
    // void *sp38;
    // f32 sp30;
    Vec3f sp4C;
    f32 temp_f0;
    f32 temp_f0_2;
    // f32 temp_f12;
    // f32 temp_f14;
    // f32 temp_f2;
    f32 temp_f2_2;
    MtxF* temp_v0;
    // void *temp_v1;
    Player* player = PLAYER;
    f32* new_var;

    // temp_v1 = player;
    this->unk_22C = 0.0f;
    // sp38 = temp_v1;
    temp_v0 = &player->shieldMf;
    if (func_80B8E404(&this->unk_27C, &this->unk_288, temp_v0->wx, temp_v0->wy, temp_v0->wz, this->unk_294,
                      this->unk_296) != 0) {
        // temp_v1->unkA50 , temp_v1->unkA54 , temp_v1->unkA58
        // temp_f2 = temp_v0->zx;
        // temp_f12 = temp_v0->zy;
        // temp_f14 = temp_v0->zz;
        temp_f0 = sqrtf(SQ(temp_v0->zz) + (SQ(temp_v0->zx) + SQ(temp_v0->zy)));

        if (temp_f0 == 0.0f) {
            this->unk_278 = 1.0f;
        } else {
            this->unk_278 = 1.0f / temp_f0;
        }

        if ((D_80B8E6F8[this->actor.params].unk_1F & 1) != 0) {
            this->unk_22C = 1.0f;
        } else {
            new_var = &sp4C.z;
            // sp4C = this->unk_288.x - this->unk_27C.x;
            // sp50 = this->unk_288.y - this->unk_27C.y;
            // sp54 = this->unk_288.z - this->unk_27C.z;
            sp4C.x = this->unk_288.x - this->unk_27C.x;
            sp4C.y = this->unk_288.y - this->unk_27C.y;
            sp4C.z = this->unk_288.z - this->unk_27C.z;
            // sp30 = sp4C;
            temp_f2_2 = ((-temp_v0->zx * sp4C.x) - (temp_v0->zy * sp4C.y)) - (temp_v0->zz * (*new_var));

            if (temp_f2_2 < 0.0f) {
                temp_f0_2 = sqrtf(SQ(sp4C.x) + SQ(sp4C.y) + SQ(*new_var));
                if ((temp_f0 != 0.0f) && (temp_f0_2 != 0.0f)) {
                    this->unk_22C = -temp_f2_2 / (temp_f0 * temp_f0_2);
                }
            }
        }
    }
}
// BgCheck_AnyLineTest1
s32 func_8003E0B8(CollisionContext* colCtx, Vec3f* posA, Vec3f* posB, Vec3f* posResult, CollisionPoly** outPoly,
                  s32 chkOneFace);

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Mir_Ray/func_80B8D8A0.s")
void func_80B8D8A0(MirRay* this, GlobalContext* globalCtx, MirRayImage* arg2) {
    Player* player = PLAYER;
    MtxF* temp_s0;
    s32 i;
    Vec3f sp88;
    Vec3f sp7C;
    Vec3f sp70;
    CollisionPoly* sp6C;
    Vec3f sp60;

    temp_s0 = &player->shieldMf;
    sp60.x = -((*temp_s0).zx * this->unk_278) * this->unk_22C * 400.0f;
    sp60.y = -((*temp_s0).zy * this->unk_278) * this->unk_22C * 400.0f;
    sp60.z = -((*temp_s0).zz * this->unk_278) * this->unk_22C * 400.0f;

    sp60 = sp60; // Need something involving sp60 or the whole thing falls apart

    for (i = 0; i < 6; i++) {
        sp88.x = ((*temp_s0).wx + (this->unk_230[i].x * (*temp_s0).xx)) + (this->unk_230[i].y * (*temp_s0).yx);
        sp88.y = ((*temp_s0).wy + (this->unk_230[i].x * (*temp_s0).xy)) + (this->unk_230[i].y * (*temp_s0).yy);
        sp88.z = ((*temp_s0).wz + (this->unk_230[i].x * (*temp_s0).xz)) + (this->unk_230[i].y * (*temp_s0).yz);
        sp7C.x = sp60.x + sp88.x;
        sp7C.y = sp60.y + sp88.y;
        sp7C.z = sp60.z + sp88.z;
        if (func_8003E0B8(&globalCtx->colCtx, &sp88, &sp7C, &sp70, &sp6C, 1)) {
            arg2[i].unk_4C = sp6C;
        } else {
            arg2[i].unk_4C = NULL;
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Mir_Ray/func_80B8DA78.s")
void func_80B8DA78(MirRayImage* arg0) {
    s32 i;
    s32 j;

    for (i = 0; i < 6; i++) {
        for (j = i + 1; j < 6; j++) {
            if (arg0[i].unk_4C != NULL) {
                if ((arg0[j].unk_4C != NULL) && (ABS(arg0[i].unk_4C->norm.x - arg0[j].unk_4C->norm.x) < 100) &&
                    (ABS(arg0[i].unk_4C->norm.y - arg0[j].unk_4C->norm.y) < 100) &&
                    (ABS(arg0[i].unk_4C->norm.z - arg0[j].unk_4C->norm.z) < 100) &&
                    (arg0[i].unk_4C->dist == arg0[j].unk_4C->dist)) {
                    arg0[j].unk_4C = NULL;
                }
            }
        }
    }
}

void func_80B8DB7C(MirRay* this, GlobalContext* globalCtx, MirRayImage* arg2);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Mir_Ray/func_80B8DB7C.s")
/* void func_80B8DB7C(MirRay* this, GlobalContext* globalCtx, MirRayImage* arg2) {
    Player* player = PLAYER;
    Vec3f sp130;
    Vec3f sp124;
    Vec3f sp118;
    Vec3f sp10C;
    Vec3f sp100;
    Vec3f spF4;
    Vec3f spE8;
    Vec3f normalVec;
    Vec3f spCC;
    Vec3f spC0;
    f32 sp84;
    f32 sp80;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f12_2;
    f32 temp_f14_2;
    f32 temp_f2;
    s32 pad;
    s32 pad2;
    s32 pad3;
    s32 pad4;
    s32 pad5;
    MtxF* temp_s1;
    MirRayImage* phi_s0;
    s32 phi_s2;


    temp_s1 = &player->shieldMf;
    
    spE8.x = -(temp_s1->zx * this->unk_278) * this->unk_22C * 400.0f;
    spE8.y = -(temp_s1->zy * this->unk_278) * this->unk_22C * 400.0f;
    spE8.z = -(temp_s1->zz * this->unk_278) * this->unk_22C * 400.0f;
    sp130.x = temp_s1->wx;
    sp130.y = temp_s1->wy;
    sp130.z = temp_s1->wz;
    sp124.x = sp130.x + spE8.x;
    sp124.y = sp130.y + spE8.y;
    sp124.z = sp130.z + spE8.z;
    spCC.x = sp130.x + (temp_s1->xx * 300.0f);
    spCC.y = sp130.y + (temp_s1->xy * 300.0f);
    spCC.z = sp130.z + (temp_s1->xz * 300.0f);
    spC0.x = sp124.x + (temp_s1->xx * 300.0f);
    spC0.y = sp124.y + (temp_s1->xy * 300.0f);
    spC0.z = sp124.z + (temp_s1->xz * 300.0f);
    func_80062734(&this->colliderQuad, &spCC, &sp130, &spC0, &sp124);
    // temp_s5 = &sp100;
    // temp_s4 = &sp10C;
    for (phi_s0 = arg2, phi_s2 = 0; phi_s2 < 0x1F8; phi_s2 += 0x54, phi_s0 += 0x54) {
        if (phi_s0->unk_4C != NULL) {
            normalVec.x = phi_s0->unk_4C->norm.x * COLPOLY_NORM_FRAC;
            normalVec.y = phi_s0->unk_4C->norm.y * COLPOLY_NORM_FRAC;
            normalVec.z = phi_s0->unk_4C->norm.z * COLPOLY_NORM_FRAC;
            if (Math3D_LineSegVsPlane(normalVec.x, normalVec.y, normalVec.z, phi_s0->unk_4C->dist, &sp130, &sp124,
                                      &phi_s0->unk_0, 1)) {
                temp_s1 = &player->shieldMf;
                sp118 = phi_s0->unk_0;
                // phi_s0->unk_4 = sp118.y;
                // phi_s0->unk_8 = sp118.z;
                // temp_f2 = sp118.x - sp130.x;
                // temp_f12_2 = sp118.y - sp130.y;
                // temp_f14_2 = sp118.z - sp130.z;
                temp_f0 = sqrtf(SQ(phi_s0->unk_0.x - sp130.x) + SQ(phi_s0->unk_0.y - sp130.y) +
                                SQ(phi_s0->unk_0.z - sp130.z));
                if (temp_f0 < (this->unk_22C * 600.0f)) {
                    phi_s0->unk_50 = 200;
                } else {
                    phi_s0->unk_50 = (s8)(s32)(800.0f - temp_f0);
                }
                spE8 = spE8;
                sp10C.x = (temp_s1->xx * 100.0f) + sp130.x;
                sp10C.y = (temp_s1->xy * 100.0f) + sp130.y;
                sp10C.z = (temp_s1->xz * 100.0f) + sp130.z;
                if (1) {}
                sp100.x = (spE8.x * 4.0f) + sp10C.x;
                sp100.y = (spE8.y * 4.0f) + sp10C.y;
                sp100.z = (spE8.z * 4.0f) + sp10C.z;
                normalVec = normalVec;
                phi_s0->mtx.wz = 0.0f;
                temp_f0_2 = phi_s0->mtx.wz;
                phi_s0->mtx.xx = 1.0f;
                phi_s0->mtx.yy = 1.0f;
                phi_s0->mtx.zz = 1.0f;
                phi_s0->mtx.ww = 1.0f;
                phi_s0->mtx.wy = temp_f0_2;
                phi_s0->mtx.wx = temp_f0_2;
                phi_s0->mtx.zw = temp_f0_2;
                phi_s0->mtx.zy = temp_f0_2;
                phi_s0->mtx.zx = temp_f0_2;
                phi_s0->mtx.yw = temp_f0_2;
                phi_s0->mtx.yz = temp_f0_2;
                phi_s0->mtx.yx = temp_f0_2;
                phi_s0->mtx.xw = temp_f0_2;
                phi_s0->mtx.xz = temp_f0_2;
                phi_s0->mtx.xy = temp_f0_2;
                if (Math3D_LineSegVsPlane(normalVec.x, normalVec.y, normalVec.z, phi_s0->unk_4C->dist, &sp10C,
                                          &sp100, &spF4, 1)) {
                    phi_s0->mtx.xx = spF4.x - sp118.x;
                    phi_s0->mtx.xy = spF4.y - sp118.y;
                    phi_s0->mtx.xz = spF4.z - sp118.z;
                }
                sp10C.x = (temp_s1->yx * 100.0f) + sp130.x;
                sp10C.y = (temp_s1->yy * 100.0f) + sp130.y;
                sp10C.z = (temp_s1->yz * 100.0f) + sp130.z;
                sp100.x = (spE8.x * 4.0f) + sp10C.x;
                sp100.y = (spE8.y * 4.0f) + sp10C.y;
                sp100.z = (spE8.z * 4.0f) + sp10C.z;
                if (Math3D_LineSegVsPlane(normalVec.x, normalVec.y, normalVec.z, phi_s0->unk_4C->dist, &sp10C,
                                          &sp100, &spF4, 1)) {
                    phi_s0->mtx.yx = spF4.x - sp118.x;
                    phi_s0->mtx.yy = spF4.y - sp118.y;
                    phi_s0->mtx.yz = spF4.z - sp118.z;
                }
            } else {
                phi_s0->unk_4C = NULL;
            }
        }
    }
} */
/* void func_80B8DB7C(MirRay *this, GlobalContext *globalCtx, MirRayImage *arg2) {
    f32 sp138;
    f32 sp134;
    f32 sp130;
    f32 sp12C;
    f32 sp128;
    f32 sp124;
    f32 sp118;
    f32 sp114;
    f32 sp110;
    f32 sp10C;
    f32 sp108;
    f32 sp104;
    f32 sp100;
    f32 spF4;
    f32 spF0;
    f32 spEC;
    f32 spE8;
    f32 spE4;
    f32 spE0;
    f32 spDC;
    f32 spD4;
    f32 spD0;
    f32 spCC;
    f32 spC8;
    f32 spC4;
    f32 spC0;
    f32 sp84;
    f32 sp80;
    ColliderQuad *temp_a0;
    f32 *temp_a1;
    f32 *temp_a2;
    f32 *temp_a3;
    f32 *temp_fp;
    f32 *temp_s4;
    f32 *temp_s5;
    f32 *temp_t6;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f10;
    f32 temp_f10_2;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f16_3;
    f32 temp_f18;
    f32 temp_f18_2;
    f32 temp_f2;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f4_3;
    f32 temp_f4_4;
    f32 temp_f6;
    f32 temp_f6_2;
    f32 temp_f8;
    s32 temp_s2;
    void *temp_s1;
    void *temp_s3;
    void *temp_v0;
    MirRayImage *phi_s0;
    s32 phi_s2;

    Player *player = PLAYER;

    // player = globalCtx->unk1C44;
    temp_fp = &sp130;
    temp_t6 = &sp124;
    temp_a2 = temp_fp;
    // temp_a0 = &this->colliderQuad;
    temp_a1 = &spCC;
    temp_a3 = &spC0;
    temp_f4 = -(player->shieldMf.zx * this->unk_278) * this->unk_22C * 400.0f;
    spE8 = temp_f4;
    temp_f16 = -(player->shieldMf.zy * this->unk_278) * this->unk_22C * 400.0f;
    spEC = temp_f16;
    temp_f6 = -(player->shieldMf.zz * this->unk_278) * this->unk_22C * 400.0f;
    spF0 = temp_f6;
    temp_f18 = player->shieldMf.wx;
    sp130 = temp_f18;
    sp134 = player->shieldMf.wy;
    temp_f8 = temp_f4 + temp_f18;
    sp80 = temp_f18;
    sp138 = player->shieldMf.wz;
    sp124 = temp_f8;
    temp_f4_2 = temp_f16 + sp134;
    temp_f6_2 = temp_f6 + sp138;
    sp128 = temp_f4_2;
    sp12C = temp_f6_2;
    sp84 = temp_f8;
    spCC = (player->shieldMf.xx * 300.0f) + sp80;
    spD0 = (player->shieldMf.xy * 300.0f) + sp134;
    spD4 = (player->shieldMf.xz * 300.0f) + sp138;
    spC0 = (player->shieldMf.xx * 300.0f) + sp84;
    spC4 = (player->shieldMf.xy * 300.0f) + temp_f4_2;
    spC8 = (player->shieldMf.xz * 300.0f) + temp_f6_2;
    func_80062734(&this->colliderQuad, (Vec3f *) temp_a1, (Vec3f *) temp_a2, (Vec3f *) temp_a3, temp_t6);
    temp_s5 = &sp100;
    temp_s4 = &sp10C;
    phi_s0 = arg2;
    phi_s2 = 0;
loop_1:
    // temp_v0 = phi_s0->unk_4C;
    if (phi_s0->unk_4C != 0) {
        temp_f12 = (f32) phi_s0->unk_4C->norm.x * COLPOLY_NORM_FRAC;
        spDC = temp_f12;
        temp_f14 = (f32) phi_s0->unk_4C->norm.y * COLPOLY_NORM_FRAC;
        spE0 = temp_f14;
        temp_f10 = (f32) phi_s0->unk_4C->norm.z * COLPOLY_NORM_FRAC;
        spE4 = temp_f10;
        if (Math3D_LineSegVsPlane(temp_f12, temp_f14, temp_f10, phi_s0->unk_4C->dist, temp_fp, &sp124, &sp118, 1) != 0) {
            phi_s0->unk_0.x = sp118;
            temp_s1 = player + 0xA20;
            phi_s0->unk_0.y = sp11C;
            phi_s0->unk_0.z = sp120;
            temp_f2 = sp118 - sp130;
            temp_f12_2 = sp11C - sp134;
            temp_f14_2 = sp120 - sp138;
            temp_f0 = sqrtf((temp_f2 * temp_f2) + (temp_f12_2 * temp_f12_2) + (temp_f14_2 * temp_f14_2));
            if (temp_f0 < (this->unk_22C * 600.0f)) {
                phi_s0->unk_50 = 0xC8;
            } else {
                phi_s0->unk_50 = (s8) (s32) (800.0f - temp_f0);
            }
            temp_f16_2 = (temp_s1->unk0 * 100.0f) + sp130;
            sp10C = temp_f16_2;
            temp_f18_2 = (temp_s1->unk4 * 100.0f) + sp134;
            sp110 = temp_f18_2;
            temp_f4_3 = (temp_s1->unk8 * 100.0f) + sp138;
            sp114 = temp_f4_3;
            sp100 = (spE8 * 4.0f) + temp_f16_2;
            sp104 = (spEC * 4.0f) + temp_f18_2;
            sp108 = (spF0 * 4.0f) + temp_f4_3;
            phi_s0->mtx.wz = 0.0f;
            temp_f0_2 = phi_s0->mtx.wz;
            phi_s0->mtx.xx = 1.0f;
            phi_s0->mtx.yy = 1.0f;
            phi_s0->mtx.zz = 1.0f;
            phi_s0->mtx.ww = 1.0f;
            phi_s0->mtx.wy = temp_f0_2;
            phi_s0->mtx.wx = temp_f0_2;
            phi_s0->mtx.zw = temp_f0_2;
            phi_s0->mtx.zy = temp_f0_2;
            phi_s0->mtx.zx = temp_f0_2;
            phi_s0->mtx.yw = temp_f0_2;
            phi_s0->mtx.yz = temp_f0_2;
            phi_s0->mtx.yx = temp_f0_2;
            phi_s0->mtx.xw = temp_f0_2;
            phi_s0->mtx.xz = temp_f0_2;
            phi_s0->mtx.xy = temp_f0_2;
            if (Math3D_LineSegVsPlane(spDC, spE0, (bitwise f32) (bitwise s32) spE4, (f32) phi_s0->unk_4C->dist, temp_s4, temp_s5, &spF4, 1) != 0) {
                phi_s0->mtx.xx = spF4 - sp118;
                phi_s0->mtx.xy = spF8 - sp11C;
                phi_s0->mtx.xz = spFC - sp120;
            }
            temp_f16_3 = (temp_s1->unk10 * 100.0f) + sp130;
            sp10C = temp_f16_3;
            temp_f10_2 = (temp_s1->unk14 * 100.0f) + sp134;
            sp110 = temp_f10_2;
            temp_f4_4 = (temp_s1->unk18 * 100.0f) + sp138;
            sp114 = temp_f4_4;
            sp100 = (spE8 * 4.0f) + temp_f16_3;
            sp104 = (spEC * 4.0f) + temp_f10_2;
            sp108 = (spF0 * 4.0f) + temp_f4_4;
            if (Math3D_LineSegVsPlane(spDC, spE0, (bitwise f32) (bitwise s32) spE4, (f32) phi_s0->unk_4C->dist, temp_s4, temp_s5, &spF4, 1) != 0) {
                phi_s0->mtx.yx = spF4 - sp118;
                phi_s0->mtx.yy = spF8 - sp11C;
                phi_s0->mtx.yz = spFC - sp120;
            }
        } else {
            phi_s0->unk_4C = NULL;
        }
    }
    temp_s2 = phi_s2 + 0x54;
    phi_s0 = phi_s0 + 0x54;
    phi_s2 = temp_s2;
    if (temp_s2 != 0x1F8) {
        goto loop_1;
    }
} */



// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Mir_Ray/MirRay_Draw.s")
void MirRay_Draw(Actor* thisx, GlobalContext* globalCtx) {
    MirRay* this = THIS;

    Player* player = PLAYER;
    s32 i;
    MirRayImage sp7C[6];
    s32 temp;

    this->unk_22C = 0.0f;
    if ((D_80B8E670 == 0) && (this->unk_2AE == 0) && Player_HasMirrorShieldSetToDraw(globalCtx)) {
        Matrix_Mult(&player->shieldMf, 0);
        func_80B8D6F0(this, globalCtx);
        if (!(this->unk_22C <= 0.0f)) {
            OPEN_DISPS(globalCtx->state.gfxCtx, "../z_mir_ray.c", 966);

            func_80093D84(globalCtx->state.gfxCtx);
            Matrix_Scale(1.0f, 1.0f, this->unk_22C * 5.0f, 1);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_mir_ray.c", 972),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 150, (s16)(temp = this->unk_22C * 100.0f));
            gSPDisplayList(POLY_XLU_DISP++, D_06000C50);
            func_80B8D8A0(this, globalCtx, &sp7C[0]);
            func_80B8DA78(&sp7C[0]);
            func_80B8DB7C(this, globalCtx, &sp7C[0]);

            if (sp7C[0].unk_4C == NULL) {
                sp7C[0].unk_50 = 0;
            }
            for (i = 1; i < 6; i++) {
                if (sp7C[i].unk_4C != NULL) {
                    if (sp7C[0].unk_50 < sp7C[i].unk_50) {
                        sp7C[0].unk_50 = sp7C[i].unk_50;
                    }
                }
            }
            for (i = 0; i < 6; i++) {
                if (sp7C[i].unk_4C != NULL) {
                    Matrix_Translate(sp7C[i].unk_0.x, sp7C[i].unk_0.y, sp7C[i].unk_0.z, 0);
                    Matrix_Scale(0.01f, 0.01f, 0.01f, 1);
                    Matrix_Mult(&sp7C[i].mtx, 1);
                    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_mir_ray.c", 1006),
                              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                    gDPSetRenderMode(POLY_XLU_DISP++, G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_DECAL2);
                    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 150, (s16)sp7C[0].unk_50);
                    gSPDisplayList(POLY_XLU_DISP++, D_060000B0);
                }
            }

            D_80B8E670 = (u8)1U;

            CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_mir_ray.c", 1027);
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Mir_Ray/func_80B8E404.s")
s32 func_80B8E404(Vec3f* vec1, Vec3f* vec2, f32 arg2, f32 arg3, f32 arg4, s16 arg5, s16 arg6) {
    f32 temp_f2_2;
    f32 temp_fx;
    f32 temp_fy;
    f32 temp_fz;
    Vec3f temp_f2;
    f32 sp34;
    Vec3f sp5C;
    Vec3f sp50;
    Vec3f sp44;

    temp_f2.x = vec2->x - vec1->x;
    temp_f2.y = vec2->y - vec1->y;
    temp_f2.z = vec2->z - vec1->z;
    if (1) {}
    sp34 = SQ(temp_f2.x) + SQ(temp_f2.y) + SQ(temp_f2.z);

    if (sp34 == 0.0f) {
        return 0;
    }

    sp34 = (((arg2 - vec1->x) * temp_f2.x) + ((arg3 - vec1->y) * temp_f2.y) + ((arg4 - vec1->z) * temp_f2.z)) / sp34;

    temp_fx = (temp_f2.x * sp34) + vec1->x;
    temp_fy = (temp_f2.y * sp34) + vec1->y;
    temp_fz = (temp_f2.z * sp34) + vec1->z;

    temp_f2_2 = ((arg6 - arg5) * sp34) + arg5;

    if (((SQ(temp_fx - arg2) + SQ(temp_fy - arg3)) + SQ(temp_fz - arg4)) <= SQ(temp_f2_2)) {
        if (1) {}

        Math_Vec3f_Diff(vec2, vec1, &sp5C);
        sp50.x = arg2 - vec1->x;
        sp50.y = arg3 - vec1->y;
        sp50.z = arg4 - vec1->z;

        if (Math3D_Cos(&sp5C, &sp50) < 0.0f) {
            return 0;
        }

        sp44.x = arg2 - vec2->x;
        sp44.y = arg3 - vec2->y;
        sp44.z = arg4 - vec2->z;

        if (Math3D_Cos(&sp5C, &sp44) > 0.0f) {
            return 0;
        }
        return 1;
    }
    return 0;
}
