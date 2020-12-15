/*
 * File: z_bg_haka_sgami.c
 * Overlay: ovl_Bg_Haka_Sgami
 * Description: Spinning Scythe Trap
 */

#include "z_bg_haka_sgami.h"

#define FLAGS 0x00000011

#define THIS ((BgHakaSgami*)thisx)

typedef enum {
    /* 0 */ SCYTHE_TRAP_SHADOW_TEMPLE,
    /* 1 */ SCYTHE_TRAP_SHADOW_TEMPLE_INVISIBLE,
    /* 2 */ SCYTHE_TRAP_ICE_CAVERN
} SpinningScytheTrapMode;

void BgHakaSgami_Init(Actor* thisx, GlobalContext* globalCtx);
void BgHakaSgami_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHakaSgami_Update(Actor* thisx, GlobalContext* globalCtx);

void func_8087E7E4(BgHakaSgami* this, GlobalContext* globalCtx);
void func_8087E858(BgHakaSgami* this, GlobalContext* globalCtx);
void BgHakaSgami_Draw(BgHakaSgami* this, GlobalContext* globalCtx);

extern Gfx D_0600BF20;
extern Gfx D_060021F0;

const ActorInit Bg_Haka_Sgami_InitVars = {
    ACTOR_BG_HAKA_SGAMI,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(BgHakaSgami),
    (ActorFunc)BgHakaSgami_Init,
    (ActorFunc)BgHakaSgami_Destroy,
    (ActorFunc)BgHakaSgami_Update,
    NULL,
};

static ColliderTrisItemInit sTriItemsInit[] = {
    {
        { 0x02, { 0x20000000, 0x00, 0x04 }, { 0x00000000, 0x00, 0x00 }, 0x01, 0x00, 0x00 },
        { { { 365.0f, 45.0f, 27.0f }, { 130.0f, 45.0f, 150.0f }, { 290.0f, 45.0f, 145.0f } } },
    },
    {
        { 0x02, { 0x20000000, 0x00, 0x04 }, { 0x00000000, 0x00, 0x00 }, 0x01, 0x00, 0x00 },
        { { { 250.0f, 45.0f, 90.0f }, { 50.0f, 45.0f, 80.0f }, { 160.0f, 45.0f, 160.0f } } },
    },
    {
        { 0x02, { 0x20000000, 0x00, 0x04 }, { 0x00000000, 0x00, 0x00 }, 0x01, 0x00, 0x00 },
        { { { -305.0f, 33.0f, -7.0f }, { -220.0f, 33.0f, 40.0f }, { -130.0f, 33.0f, -5.0f } } },
    },
    {
        { 0x02, { 0x20000000, 0x00, 0x04 }, { 0x00000000, 0x00, 0x00 }, 0x01, 0x00, 0x00 },
        { { { -190.0f, 33.0f, 40.0f }, { -30.0f, 33.0f, 15.0f }, { -70.0f, 33.0f, -30.0f } } },
    },
};

// sTrisInit
ColliderTrisInit D_8087EF50 = {
    { COLTYPE_UNK10, 0x11, 0x00, 0x00, 0x20, COLSHAPE_TRIS },
    4,
    sTriItemsInit,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 80, 130, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit sColChkInfoInit = { 0x00, 0x0050, 0x0082, 0xFF };

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(uncullZoneScale, 1000, ICHAIN_CONTINUE),
    ICHAIN_U8(unk_1F, 4, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

void BgHakaSgami_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgHakaSgami* this = THIS;
    static u8 sP1StartColor[] = { 250, 250, 250, 200 };
    static u8 sP2StartColor[] = { 200, 200, 200, 130 };
    static u8 sP1EndColor[] = { 200, 200, 200, 60 };
    static u8 sP2EndColor[] = { 150, 150, 150, 20 };
    EffectBlureInit1 blureInit;
    s32 i;
    ColliderTris* colliderScythe = &this->colliderScythe;

    Actor_ProcessInitChain(thisx, sInitChain);

    this->unk_151 = thisx->params & 0xFF;
    thisx->params = (thisx->params >> 8) & 0xFF;

    if (this->unk_151 != 0) {
        thisx->flags |= 0x80;
    }

    Collider_InitTris(globalCtx, colliderScythe);
    Collider_SetTris(globalCtx, colliderScythe, thisx, &D_8087EF50, this->colliderScytheItems);
    Collider_InitCylinder(globalCtx, &this->colliderScytheCenter);
    Collider_SetCylinder(globalCtx, &this->colliderScytheCenter, thisx, &sCylinderInit);

    this->colliderScytheCenter.dim.pos.x = thisx->posRot.pos.x;
    this->colliderScytheCenter.dim.pos.y = thisx->posRot.pos.y;
    this->colliderScytheCenter.dim.pos.z = thisx->posRot.pos.z;

    func_80061ED4(&thisx->colChkInfo, NULL, &sColChkInfoInit);

    for (i = 0; i < 4; i++) {
        blureInit.p1StartColor[i] = sP1StartColor[i];
        blureInit.p2StartColor[i] = sP2StartColor[i];
        blureInit.p1EndColor[i] = sP1EndColor[i];
        blureInit.p2EndColor[i] = sP2EndColor[i];
    }
    blureInit.elemDuration = 10;
    blureInit.unkFlag = false;
    blureInit.calcMode = 2;
    Effect_Add(globalCtx, &this->blureEffectIndex[0], EFFECT_BLURE1, 0, 0, &blureInit);
    Effect_Add(globalCtx, &this->blureEffectIndex[1], EFFECT_BLURE1, 0, 0, &blureInit);

    if (thisx->params == SCYTHE_TRAP_SHADOW_TEMPLE) {
        this->requiredObjBankIndex = Object_GetIndex(&globalCtx->objectCtx, OBJECT_HAKA_OBJECTS);
        thisx->flags &= ~1;
    } else {
        this->requiredObjBankIndex = Object_GetIndex(&globalCtx->objectCtx, OBJECT_ICE_OBJECTS);
        this->colliderScytheCenter.dim.radius = 30;
        this->colliderScytheCenter.dim.height = 70;
        Actor_SetHeight(thisx, 40.0f);
    }

    if (this->requiredObjBankIndex < 0) {
        Actor_Kill(thisx);
        return;
    }

    this->actionFunc = func_8087E7E4;
}

void BgHakaSgami_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgHakaSgami* this = THIS;

    Effect_Delete(globalCtx, this->blureEffectIndex[0]);
    Effect_Delete(globalCtx, this->blureEffectIndex[1]);
    Collider_DestroyTris(globalCtx, &this->colliderScythe);
    Collider_DestroyCylinder(globalCtx, &this->colliderScytheCenter);
}

void func_8087E7E4(BgHakaSgami* this, GlobalContext* globalCtx) {
    if (Object_IsLoaded(&globalCtx->objectCtx, this->requiredObjBankIndex)) {
        this->actor.objBankIndex = this->requiredObjBankIndex;
        this->actor.draw = BgHakaSgami_Draw;
        this->timer = 32;
        this->actor.flags &= ~0x10;
        this->actionFunc = func_8087E858;
    }
}

Vec3f D_8087EFB0[] = {
    { -20.0f, 50.0f, 130.0f },
    { -50.0f, 33.0f, 20.0f },
};

Vec3f D_8087EFC8[] = {
    { 380.0f, 50.0f, 50.0f },
    { 310.0f, 33.0f, 0.0f },
};

#ifdef NON_EQUIVALENT
void func_8087E858(BgHakaSgami* this, GlobalContext* globalCtx) {
    ? spB0;            // Seems to be the end of the vec array?
    Vec3f vec_sp8C[3]; // REAL!!!!!!!!!!
    s32 sp80;          // SEEMS REAL!!!!!!
    ColliderTris* temp_s6;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f16_3;
    f32 temp_f16_4;
    f32 temp_f18;
    f32 temp_f18_2;
    f32 actorRotYSin; // REAL!!!!!!!
    f32 actorRotYCos; // REAL!!!!!!!
    s16 temp_v0;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_s3;
    s32 temp_v0_2;
    u32 temp_v0_4;
    void* temp_v0_3;
    void* temp_v0_5;
    void* temp_v0_6;
    void* temp_v1;
    void* temp_v1_2;
    void* temp_v1_3;
    f32 phi_f14;
    f32 phi_f16;
    u32 phi_v0;
    void* phi_v1;
    f32 phi_f14_2;
    f32 phi_f16_2;
    void* phi_v0_2;
    void* phi_v1_2;
    s32 phi_s3;
    f32 phi_f18;
    f32 phi_f16_3;
    void* phi_v0_3;
    f32 phi_f18_2;
    f32 phi_f16_4;
    void* phi_v0_4;
    s32 phi_a1;
    f32 phi_f24;
    f32 phi_f22;
    s32 phi_s4;
    s32 i;

    if (this->timer != 0) {
        this->timer--;
    }
    this->actor.shape.rot.y += (s16)(((512.0f * sinf(this->timer * (M_PI / 16.0f))) + 0x400) / 2);
    if (this->timer == 0) {
        this->timer = 32;
    }
    actorRotYSin = Math_Sins(this->actor.shape.rot.y);
    actorRotYCos = Math_Coss(this->actor.shape.rot.y);
    if (this->actor.params != 0) {
        sp80 = 4;
    } else {
        sp80 = 2;
    }

    /* NEEDS WORK START */
    // temp_s6 = &this->colliderScythe;
    temp_v0_2 = sp80 - 2;
    if (temp_v0_2 < sp80) {
        phi_s3 = temp_v0_2;
        phi_s4 = temp_v0_2 * 0x3C;
    loop_9:
        temp_v1 = phi_s4 + D_8087EF50.list;
        // temp_v0_3 = &vec_sp8C[1];
        temp_f16 = temp_v1->unk20 * actorRotYSin;
        temp_f14 = temp_v1->unk18;
        phi_f14 = temp_f14;
        phi_f16 = temp_f16;
        // phi_v0 = temp_v0_3;
        phi_v1 = temp_v1;
        phi_f14_2 = temp_f14;
        phi_f16_2 = temp_f16;
        // phi_v0_2 = temp_v0_3;
        phi_v1_2 = temp_v1;
        if (&vec_sp8C[1] < &spB0) {
        loop_10:
            temp_v0_4 = &vec_sp8C[2];
            temp_v1_2 = phi_v1 + 0xC;
            temp_v0_4->unk - 18 = (phi_f14 * actorRotYCos) + (this->actor.posRot.pos.x + phi_f16);
            temp_v0_4->unk - 14 = temp_v1_2->unk10 + this->actor.posRot.pos.y;
            temp_v0_4->unk - 10 =
                (this->actor.posRot.pos.z + (temp_v1_2->unk14 * actorRotYCos)) - (temp_v1_2->unkC * actorRotYSin);
            temp_f14_2 = temp_v1_2->unk18;
            temp_f16_2 = temp_v1_2->unk20 * actorRotYSin;
            phi_f14 = temp_f14_2;
            phi_f16 = temp_f16_2;
            &vec_sp8C[1] = temp_v0_4;
            phi_v1 = temp_v1_2;
            phi_f14_2 = temp_f14_2;
            phi_f16_2 = temp_f16_2;
            &vec_sp8C[1] = temp_v0_4;
            phi_v1_2 = temp_v1_2;
            if (temp_v0_4 < &spB0) {
                goto loop_10;
            }
        }
        temp_v1_3 = phi_v1_2 + 0xC;
        &vec_sp8C[1]->unk - C = (phi_f14_2 * actorRotYCos) + (this->actor.posRot.pos.x + phi_f16_2);
        &vec_sp8C[1]->unk - 8 = temp_v1_3->unk10 + this->actor.posRot.pos.y;
        &vec_sp8C[1]->unk - 4 =
            (this->actor.posRot.pos.z + (temp_v1_3->unk14 * actorRotYCos)) - (temp_v1_3->unkC * actorRotYSin);
        func_800627A0(&this->colliderScythe, phi_s3, &vec_sp8C[0], &vec_sp8C[1], &vec_sp8C[2]);
        temp_v0_5 = &vec_sp8C[1];
        temp_f16_3 = temp_v0_5->unk - C;
        temp_f18 = 2.0f * this->actor.posRot.pos.x;
        phi_f18 = temp_f18;
        phi_f16_3 = temp_f16_3;
        phi_v0_3 = temp_v0_5;
        phi_f18_2 = temp_f18;
        phi_f16_4 = temp_f16_3;
        phi_v0_4 = temp_v0_5;
        if (temp_v0_5 != &spB0) {
        loop_12:
            temp_f16_4 = phi_v0_3->unk0;
            temp_v0_6 = phi_v0_3 + 0xC;
            temp_v0_6->unk - 18 = phi_f18 - phi_f16_3;
            temp_v0_6->unk - 10 = (2.0f * this->actor.posRot.pos.z) - phi_v0_3->unk - 4;
            temp_f18_2 = 2.0f * this->actor.posRot.pos.x;
            phi_f18 = temp_f18_2;
            phi_f16_3 = temp_f16_4;
            phi_v0_3 = temp_v0_6;
            phi_f18_2 = temp_f18_2;
            phi_f16_4 = temp_f16_4;
            phi_v0_4 = temp_v0_6;
            if (temp_v0_6 != &spB0) {
                goto loop_12;
            }
        }
        phi_v0_4->unk - C = phi_f18_2 - phi_f16_4;
        phi_v0_4->unk - 4 = (2.0f * this->actor.posRot.pos.z) - phi_v0_4->unk - 4;
        temp_a1 = phi_s3 + 2;
        temp_a1_2 = temp_a1 & 3;
        phi_a1 = temp_a1_2;
        if (temp_a1 < 0) {
            phi_a1 = temp_a1_2;
            if (temp_a1_2 != 0) {
                phi_a1 = temp_a1_2 - 4;
            }
        }
        func_800627A0(&this->colliderScythe, phi_a1, &vec_sp8C[0], &vec_sp8C[1], &vec_sp8C[2]);
        temp_s3 = phi_s3 + 1;
        phi_s3 = temp_s3;
        phi_s4 = phi_s4 + 0x3C;
        if (temp_s3 != sp80) {
            goto loop_9;
        }
    }

    if ((this->unk_151 == 0) || (globalCtx->actorCtx.unk_03 != 0)) {
        vec_sp8C[0].x = (D_8087EFC8[this->actor.params].x * actorRotYCos) +
                        (this->actor.posRot.pos.x + (D_8087EFC8[this->actor.params].z * actorRotYSin));
        vec_sp8C[0].y = D_8087EFC8[this->actor.params].y + this->actor.posRot.pos.y;
        vec_sp8C[0].z = (this->actor.posRot.pos.z + (D_8087EFC8[this->actor.params].z * actorRotYCos)) -
                        (D_8087EFC8[this->actor.params].x * actorRotYSin);
        vec_sp8C[1].x = (D_8087EFB0[this->actor.params].x * actorRotYCos) +
                        (this->actor.posRot.pos.x + (D_8087EFB0[this->actor.params].z * actorRotYSin));
        vec_sp8C[1].y = D_8087EFB0[this->actor.params].y + this->actor.posRot.pos.y;
        vec_sp8C[1].z = (this->actor.posRot.pos.z + (D_8087EFB0[this->actor.params].z * actorRotYCos)) -
                        (D_8087EFB0[this->actor.params].x * actorRotYSin);
        EffectBlure_AddVertex(Effect_GetByIndex(this->blureEffectIndex[0]), &vec_sp8C[0].x, &vec_sp8C[1].x);

        for (i = 0; i != 2; i++) {
            vec_sp8C[i].x = (2.0f * this->actor.posRot.pos.x) - vec_sp8C[0].x;
            vec_sp8C[i].z = (2.0f * this->actor.posRot.pos.z) - vec_sp8C[0].z;
        }

        vec_sp8C[1].x = (2.0f * this->actor.posRot.pos.x) - vec_sp8C[1].x;
        vec_sp8C[1].z = (2.0f * this->actor.posRot.pos.z) - vec_sp8C[1].z;

        EffectBlure_AddVertex(Effect_GetByIndex(this->blureEffectIndex[1]), &vec_sp8C[0], &vec_sp8C[1]);
    }

    CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->colliderScythe.base);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->colliderScytheCenter.base);
    func_8002F974(&this->actor, NA_SE_EV_ROLLCUTTER_MOTOR - SFX_FLAG);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Sgami/func_8087E858.s")
#endif

void BgHakaSgami_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgHakaSgami* this = THIS;
    Player* player = PLAYER;

    if (!(player->stateFlags1 & 0x300000C0) || (this->actionFunc == func_8087E7E4)) {
        this->actionFunc(this, globalCtx);
    }
}

void BgHakaSgami_Draw(BgHakaSgami* this, GlobalContext* globalCtx) {
    if (this->unk_151 != 0) {
        Gfx_DrawDListXlu(globalCtx, &D_0600BF20);
    } else if (this->actor.params == SCYTHE_TRAP_SHADOW_TEMPLE) {
        Gfx_DrawDListOpa(globalCtx, &D_0600BF20);
    } else {
        Gfx_DrawDListOpa(globalCtx, &D_060021F0);
    }
}
