#include "z_en_honotrap.h"

#define FLAGS 0x00000010

#define THIS ((EnHonotrap*)thisx)

void EnHonotrap_Init(Actor* thisx, GlobalContext* globalCtx);
void EnHonotrap_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnHonotrap_Update(Actor* thisx, GlobalContext* globalCtx);
void EnHonotrap_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A59C30(EnHonotrap* this, GlobalContext* globalCtx);
void func_80A59CC0(Vec3f* dst, Vec3f* vec);
void func_80A59D70(Actor* thisx, GlobalContext* globalCtx);
void func_80A59F08(Actor* thisx, GlobalContext* globalCtx);

void func_80A5ABFC(Actor* thisx, GlobalContext* globalCtx);
void func_80A5AD28(Actor* thisx, GlobalContext* globalCtx);

void func_80A5A0E4(EnHonotrap* this);
void func_80A5A0FC(EnHonotrap* this, GlobalContext* globalCtx);
void func_80A5A1B4(EnHonotrap* this);
void func_80A5A208(EnHonotrap* this, GlobalContext* globalCtx);
void func_80A5A2D8(EnHonotrap* this);
void func_80A5A2EC(EnHonotrap* this, GlobalContext* globalCtx);
void func_80A5A31C(EnHonotrap* this);
void func_80A5A32C(EnHonotrap* this, GlobalContext* globalCtx);

void func_80A5A378(EnHonotrap* this);
void func_80A5A388(EnHonotrap* this, GlobalContext* globalCtx);
void func_80A5A41C(EnHonotrap* this);
void func_80A5A484(EnHonotrap* this, GlobalContext* globalCtx);

void func_80A5A5C8(EnHonotrap* this);
void func_80A5A658(EnHonotrap* this, GlobalContext* globalCtx);
void func_80A5A824(EnHonotrap* this);
void func_80A5A860(EnHonotrap* this, GlobalContext* globalCtx);
void func_80A5AA14(EnHonotrap* this);
void func_80A5AA24(EnHonotrap* this, GlobalContext* globalCtx);

extern Gfx D_0404D4E0[];
extern Gfx D_05006810[];

const ActorInit En_Honotrap_InitVars = {
    ACTOR_EN_HONOTRAP,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_DANGEON_KEEP,
    sizeof(EnHonotrap),
    (ActorFunc)EnHonotrap_Init,
    (ActorFunc)EnHonotrap_Destroy,
    (ActorFunc)EnHonotrap_Update,
    (ActorFunc)EnHonotrap_Draw,
};

static ColliderTrisItemInit sTrisElementsInit[2] = {
    {
        { 0x04, { 0x00000000, 0x00, 0x00 }, { 0x0001F824, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
        { { { 0.0f, 23.0f, 8.5f }, { -23.0f, 0.0f, 8.5f }, { 0.0f, -23.0f, 8.5f } } },
    },
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x0001F824, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
        { { { 0.0f, 23.0f, 8.5f }, { 0.0f, -23.0f, 8.5f }, { 23.0f, 0.0f, 8.5f } } },
    },
};

static ColliderTrisInit sTrisInit = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x00, 0x00, COLSHAPE_TRIS },
    2,
    sTrisElementsInit,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x11, 0x09, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x01, 0x04 }, { 0x00100000, 0x00, 0x00 }, 0x19, 0x01, 0x01 },
    { 10, 25, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit sColChkInfoInit = { 0, 9, 23, 1 };

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(uncullZoneForward, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_STOP),
};

void func_80A59C30(EnHonotrap* this, GlobalContext* globalCtx) {
    s32 pad[3];

    Collider_CylinderUpdate(&this->actor, &this->collider.cyl);
    CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.cyl.base);
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.cyl.base);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.cyl.base);
    this->unk_240 |= 1;
    this->unk_240 |= 2;
    this->unk_240 |= 4;
}

void func_80A59CC0(Vec3f* norm, Vec3f* vec) {
    f32 dist = Math3D_Vec3fMagnitude(vec);

    if (dist < 0.001f) {
        osSyncPrintf("Warning : vector size zero (%s %d)\n", "../z_en_honotrap.c", 328, norm);

        norm->x = norm->y = 0.0f;
        norm->z = 1.0f;
    } else {
        norm->x = vec->x * (1.0f / dist);
        norm->y = vec->y * (1.0f / dist);
        norm->z = vec->z * (1.0f / dist);
    }
}

void func_80A59D70(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnHonotrap* this = THIS;
    s32 i;
    s32 j;
    Vec3f* temp2;
    Vec3f sp70[3];
    f32 temp_f20;
    f32 temp_f22;

    Actor_SetScale(thisx, 0.1f);
    temp_f22 = Math_SinS(thisx->initPosRot.rot.y);
    temp_f20 = Math_CosS(thisx->initPosRot.rot.y);
    Collider_InitTris(globalCtx, &this->collider.tris);
    Collider_SetTris(globalCtx, &this->collider.tris, thisx, &sTrisInit, this->collider.elements);

    for (i = 0; i < 2; i++) {
        for (j = 0, temp2 = sp70; j < 3; j++, temp2++) {
            Vec3f* temp = &sTrisInit.list[i].dim.vtx[j];

            temp2->x = temp->z * temp_f22 + temp->x * temp_f20;
            temp2->y = temp->y;
            temp2->z = temp->z * temp_f20 - temp->x * temp_f22;
            Math_Vec3f_Sum(temp2, &thisx->posRot.pos, temp2);
        }
        func_800627A0(&this->collider.tris, i, &sp70[0], &sp70[1], &sp70[2]);
    }
    func_80A5A0E4(this);
    Actor_SetHeight(thisx, 0.0f);
}

void func_80A59F08(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnHonotrap* this = THIS;

    Actor_SetScale(&this->actor, 0.0001f);
    Collider_InitCylinder(globalCtx, &this->collider.cyl);
    Collider_SetCylinder(globalCtx, &this->collider.cyl, &this->actor, &sCylinderInit);
    Collider_CylinderUpdate(&this->actor, &this->collider.cyl);
    this->actor.minVelocityY = -1.0f;
    func_80061ED4(&this->actor.colChkInfo, NULL, &sColChkInfoInit);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->actor.shape.unk_14 = 0x80;
    this->unk_22C = PLAYER->actor.posRot.pos;
    this->unk_22C.y += 10.0f;
    this->unk_23E = Rand_ZeroOne() * 511.0f;
    func_80A5A378(this);
    Audio_PlayActorSound2(&this->actor, 0x2822);
    if (this->actor.params == 2) {
        this->actor.room = -1;
        this->collider.cyl.dim.radius = 12;
        this->collider.cyl.dim.height = 30;
        this->actor.shape.unk_08 = -1000.0f;
    }
}

void EnHonotrap_Init(Actor* thisx, GlobalContext* globalCtx) {
    Actor_ProcessInitChain(thisx, sInitChain);
    if (thisx->params == 0) {
        func_80A59D70(thisx, globalCtx);
    } else {
        func_80A59F08(thisx, globalCtx);
    }
}

void EnHonotrap_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnHonotrap* this = THIS;

    if (this->actor.params == 0) {
        Collider_DestroyTris(globalCtx, &this->collider.tris);
    } else {
        Collider_DestroyCylinder(globalCtx, &this->collider.cyl);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A5A0E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A5A0FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A5A1B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A5A208.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A5A2D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A5A2EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A5A31C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A5A32C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A5A378.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A5A388.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A5A41C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A5A484.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A5A5C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A5A658.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A5A824.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A5A860.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A5AA14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A5AA24.s")

void EnHonotrap_Update(Actor* thisx, GlobalContext* globalCtx) {
    static Vec3f velocity = { 0.0f, 0.0f, 0.0f };
    static Vec3f accel = { 0.0f, 0.1f, 0.0f };
    s32 pad;
    EnHonotrap* this = THIS;

    if (this->unk_228 > 0) {
        this->unk_228--;
    }
    if (this->actor.params == 0) {
        if ((this->actor.child != NULL) && (this->actor.child->update == NULL)) {
            this->actor.child = NULL;
        }
    } else {
        this->unk_240 = 0;
        this->unk_23C += 0x640;
        this->actor.shape.unk_08 = (Math_SinS(this->unk_23C) * 1000.0f) + 600.0f;
        Actor_SetHeight(&this->actor, 5.0f);
        Audio_PlayActorSound2(&this->actor, 0x205B);
    }
    this->actionFunc(this, globalCtx);
    if (this->actor.params == 0) {
        if (this->collider.tris.base.acFlags & 2) {
            EffectSsBomb2_SpawnLayered(globalCtx, &this->actor.posRot.pos, &velocity, &accel, 15, 8);
            Actor_Kill(&this->actor);
        } else if (this->unk_22A < 3) {
            this->collider.tris.base.acFlags &= ~2;
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.tris.base);
        }
    }
}

void func_80A5ABFC(Actor* thisx, GlobalContext* globalCtx) {
    static Gfx* D_80A5B060[] = { 0x0500B0A0, 0x0500B8A0, 0x0500C0A0, 0x0500C0A0 };
    EnHonotrap* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_honotrap.c", 0x3D6);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_80A5B060[this->unk_22A]));
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_honotrap.c", 0x3DB),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, D_05006810);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_honotrap.c", 0x3DF);
}

void func_80A5AD28(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnHonotrap* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_honotrap.c", 0x3E8);

    func_80093D84(globalCtx->state.gfxCtx);
    this->unk_23E -= 0x14;
    this->unk_23E &= 0x1FF;
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 0x20, 0x40, 1, 0, this->unk_23E, 0x20, 0x80));
    gDPSetPrimColor(POLY_XLU_DISP++, 0x80, 0x80, 255, 200, 0, 255);
    gDPSetEnvColor(POLY_XLU_DISP++, 255, 0, 0, 0);
    Matrix_RotateY((s16)(Camera_GetCamDirYaw(ACTIVE_CAM) - this->actor.shape.rot.y + 0x8000) * 0.0000958738f,
                   MTXMODE_APPLY);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_honotrap.c", 0x400),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_XLU_DISP++, D_0404D4E0);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_honotrap.c", 0x404);
}

void EnHonotrap_Draw(Actor* thisx, GlobalContext* globalCtx) {
    switch (thisx->params) {
        case 0:
            func_80A5ABFC(thisx, globalCtx);
            break;
        case 1:
        case 2:
            func_80A5AD28(thisx, globalCtx);
            break;
    }
}
