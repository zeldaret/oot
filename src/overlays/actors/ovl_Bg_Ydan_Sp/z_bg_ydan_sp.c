#include "z_bg_ydan_sp.h"

#define FLAGS 0x00000000

#define THIS ((BgYdanSp*)thisx)

//typedef struct {
//    u32 data[2];
//} SurfaceType;

//typedef struct {
//    /* 0x00 */ Vec3s minBounds; // colAbsMin
//    /* 0x06 */ Vec3s maxBounds; // colAbsMax
//    /* 0x0C */ u16 nbVertices;
//    /* 0x10 */ Vec3s* vtxList; // vertexArray
//    /* 0x14 */ u16 nbPolygons;
//    /* 0x18 */ CollisionPoly* polyList; // polygonArray
//    /* 0x1C */ SurfaceType* polygonTypes;
//    /* 0x20 */ CamData* cameraDataList;
//    /* 0x24 */ u16 nbWaterBoxes;
//    /* 0x28 */ WaterBox* waterBoxes;
//} CollisionHeader2; // BGDataInfo

void BgYdanSp_Init(Actor* thisx, GlobalContext* globalCtx);
void BgYdanSp_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgYdanSp_Update(Actor* thisx, GlobalContext* globalCtx);
void BgYdanSp_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808BF97C(BgYdanSp* thisx, GlobalContext* globalCtx);
void func_808BFE50(BgYdanSp* thisx, GlobalContext* globalCtx);
void func_808C012C(BgYdanSp* thisx, GlobalContext* globalCtx);
void func_808C0464(BgYdanSp* thisx, GlobalContext* globalCtx);

extern Gfx D_060061B0[];
extern Gfx D_06003850[];
extern Gfx D_06005F40[];

extern CollisionHeader D_06006050;
extern CollisionHeader D_06006460;

const ActorInit Bg_Ydan_Sp_InitVars = {
    ACTOR_BG_YDAN_SP,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_YDAN_OBJECTS,
    sizeof(BgYdanSp),
    (ActorFunc)BgYdanSp_Init,
    (ActorFunc)BgYdanSp_Destroy,
    (ActorFunc)BgYdanSp_Update,
    (ActorFunc)BgYdanSp_Draw,
};

static ColliderTrisItemInit sTrisItemsInit[2] = {
    {
        { 0x00, { 0xFFCFFFFF, 0x00, 0x00 }, { 0x00020800, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
        { { { 75.0f, -8.0f, 75.0f }, { -75.0f, -8.0f, 75.0f }, { -75.0f, -8.0f, -75.0f } } },
    },
    {
        { 0x00, { 0xFFCFFFFF, 0x00, 0x00 }, { 0x00020800, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
        { { { 140.0f, 288.79998779296875f, 0.0f }, { -140.0f, 288.0f, 0.0f }, { -140.0f, 0.0f, 0.0f } } },
    },
};

static ColliderTrisInit sTrisInit = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x00, 0x20, COLSHAPE_TRIS },
    2,
    sTrisItemsInit,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

void BgYdanSp_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgYdanSp* this = THIS;
    ColliderTrisItemInit* ti0 = &sTrisItemsInit[0];
    Vec3f tri[3];
    s32 i;
    CollisionHeader* colHeader;
    ColliderTrisItemInit* ti1 = &sTrisItemsInit[1];
    f32 cossY;
    f32 sinsY;
    f32 cossX;
    f32 nSinsX;

    colHeader = NULL;
    Actor_ProcessInitChain(thisx, sInitChain);
    this->unk168 = thisx->params & 0x3F;
    this->unk169 = (thisx->params >> 6) & 0x3F;
    thisx->params = (thisx->params >> 0xC) & 0xF;
    DynaPolyActor_Init((DynaPolyActor*)thisx, DPM_PLAYER);
    Collider_InitTris(globalCtx, &this->trisCollider);
    Collider_SetTris(globalCtx, &this->trisCollider, thisx, &sTrisInit, this->trisColliderItems);
    if (thisx->params == 0) {
        CollisionHeader_GetVirtual(&D_06006460, &colHeader);
        this->actionFunc = &func_808BFE50;

        for (i = 0; i < 3; i++) {
            tri[i].x = ti0->dim.vtx[i].x + thisx->posRot.pos.x;
            tri[i].y = ti0->dim.vtx[i].y + thisx->posRot.pos.y;
            tri[i].z = ti0->dim.vtx[i].z + thisx->posRot.pos.z;
        }

        func_800627A0(&this->trisCollider, 0, &tri[0], &tri[1], &tri[2]);
        tri[1].x = tri[0].x;
        tri[1].z = tri[2].z;
        func_800627A0(&this->trisCollider, 1, &tri[0], &tri[2], &tri[1]);
        this->unk16C = 0.0f;
    }
    else {
        CollisionHeader_GetVirtual(&D_06006050, &colHeader);
        this->actionFunc = &func_808C0464;
        Actor_SetHeight(thisx, 30.0f);
        sinsY = Math_SinS(thisx->shape.rot.y);
        cossY = Math_CosS(thisx->shape.rot.y);
        nSinsX = -Math_SinS(thisx->shape.rot.x);
        cossX = Math_CosS(thisx->shape.rot.x);

        for (i = 0; i < 3; i++) {
            tri[i].x = thisx->posRot.pos.x + (cossY * ti1->dim.vtx[i].x) - (sinsY * ti1->dim.vtx[i].y * nSinsX);
            tri[i].y = thisx->posRot.pos.y + (ti1->dim.vtx[i].y * cossX);
            tri[i].z = thisx->posRot.pos.z - (sinsY * ti1->dim.vtx[i].x) + (ti1->dim.vtx[i].y * cossY * nSinsX);
        }

        func_800627A0(&this->trisCollider, 0, &tri[0], &tri[1], &tri[2]);

        tri[1].x = thisx->posRot.pos.x + (cossY * ti1->dim.vtx[0].x) - (ti1->dim.vtx[2].y * sinsY * nSinsX);
        tri[1].y = thisx->posRot.pos.y + (ti1->dim.vtx[2].y * cossX);
        tri[1].z = thisx->posRot.pos.z - (sinsY * ti1->dim.vtx[0].x) + (ti1->dim.vtx[2].y * cossY * nSinsX);
        func_800627A0(&this->trisCollider, 1, &tri[0], &tri[2], &tri[1]);
    }
    this->dyna.bgId = DynaPoly_SetBgActor(globalCtx, &globalCtx->colCtx.dyna, thisx, colHeader);
    this->unk16A = 0;
    if (Flags_GetSwitch(globalCtx, this->unk168)) {
        Actor_Kill(&this->dyna.actor);
    }
}

void BgYdanSp_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgYdanSp* this = THIS;
    DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
    Collider_DestroyTris(globalCtx, &this->trisCollider);
}

void* func_808BF83C(BgYdanSp* thisx) {
    s16 newY;
    CollisionHeader* colHeader;

    colHeader = (CollisionHeader*)SEGMENTED_TO_VIRTUAL(&D_06006460);
    colHeader->vtxList = (Vec3s*)SEGMENTED_TO_VIRTUAL(colHeader->vtxList);
    newY = (s16)((thisx->dyna.actor.initPosRot.pos.y - thisx->dyna.actor.posRot.pos.y) * 10.0f);
    colHeader->vtxList[14].y = newY;
    colHeader->vtxList[12].y = newY;
    colHeader->vtxList[10].y = newY;
    colHeader->vtxList[9].y = newY;
    colHeader->vtxList[6].y = newY;
    colHeader->vtxList[5].y = newY;
    colHeader->vtxList[1].y = newY;
    colHeader->vtxList[0].y = newY;
}

void func_808BF90C(BgYdanSp* thisx, GlobalContext* globalCtx) {
    thisx->unk16A = 30;
    thisx = thisx;
    func_80078884(NA_SE_SY_CORRECT_CHIME);
    Flags_SetSwitch(globalCtx, thisx->unk168);
    if (thisx->dyna.actor.params == 0) {
        thisx->actionFunc = &func_808BF97C;
        return;
    }
    thisx->actionFunc = &func_808C012C;
}

static Vec3f D_808C09BC = { 0 };

// spawn ? particles?
void func_808BF97C(BgYdanSp* thisx, GlobalContext* globalCtx) {
    Vec3f spCC;
    Vec3f spC0;

    f32 distXZ;
    f32 sins;
    f32 coss;
    s16 temp_s0;
    s16 phi_s2;
    s32 i;

    if (thisx->unk16A != 0) {
        thisx->unk16A--;
    }
    if (thisx->unk16A == 0) {
        Actor_Kill(&thisx->dyna.actor);
        return;
    }
    if ((thisx->unk16A % 3) == 0) {
        phi_s2 = (s16)(Rand_ZeroOne() * 10922.0f);
        spCC.y = 0.0f;
        spC0.y = thisx->dyna.actor.posRot.pos.y;

        for (i = 0; i < 6; i++) {
            temp_s0 = (s16)(Rand_CenteredFloat(10240.0f) + phi_s2);
            sins = Math_SinS(temp_s0);
            coss = Math_CosS(temp_s0);
            spC0.x = thisx->dyna.actor.posRot.pos.x + (120.0f * sins);
            spC0.z = thisx->dyna.actor.posRot.pos.z + (120.0f * coss);
            distXZ = Math_Vec3f_DistXZ(&thisx->dyna.actor.initPosRot.pos, &spC0) * (1.0f / 120.0f);
            if (distXZ < 0.7f) {
                sins = Math_SinS((s16)(temp_s0 + 0x8000));
                coss = Math_CosS((s16)(temp_s0 + 0x8000));
                spC0.x = thisx->dyna.actor.posRot.pos.x + (120.0f * sins);
                spC0.z = thisx->dyna.actor.posRot.pos.z + (120.0f * coss);
                distXZ = Math_Vec3f_DistXZ(&thisx->dyna.actor.initPosRot.pos, &spC0) * (1.0f / 120.0f);
            }
            spCC.x = (7.0f * sins) * distXZ;
            spCC.y = 0.0f;
            spCC.z = (7.0f * coss) * distXZ;
            EffectSsDeadDb_Spawn(globalCtx, &thisx->dyna.actor.initPosRot.pos, &spCC, &D_808C09BC, 0x3C, 6, 0xFF, 0xFF, 0x96,
                0xAA, 0xFF, 0, 0, 1, 0xE, 1);
            phi_s2 += 0x2AAA;
        }
    }
}

void func_808BFC50(BgYdanSp* thisx, GlobalContext* globalCtx) {
    if (thisx->unk16A != 0) {
        thisx->unk16A--;
    }
    if (thisx->unk16A == 0) {
        Actor_Kill(&thisx->dyna.actor);
    }
}

static Color_RGBA8 D_808C09C8 = { 250, 250, 250, 255 }; // prim color
static Color_RGBA8 D_808C09CC = { 180, 180, 180, 255 }; // env color
static Vec3f D_808C09D0 = { 0 };

void func_808BFC90(BgYdanSp* thisx, GlobalContext* globalCtx) {
    s32 pad;
    Vec3f sp68; // s4
    s16 phi_s0;
    s32 phi_s1;

    if (thisx->unk16A != 0) {
        thisx->unk16A--;
    }
    thisx->dyna.actor.posRot.pos.y =
        (sinf((f32)thisx->unk16A * (M_PI / 20.0f)) * thisx->unk16C) + thisx->dyna.actor.initPosRot.pos.y;
    if (190.0f < thisx->dyna.actor.initPosRot.pos.y - thisx->dyna.actor.posRot.pos.y) {
        func_8003EBF8(globalCtx, &globalCtx->colCtx.dyna, thisx->dyna.bgId);
        thisx->unk16A = 40;
        func_80078884(NA_SE_SY_CORRECT_CHIME);
        Flags_SetSwitch(globalCtx, thisx->unk168);
        thisx->actionFunc = &func_808BFC50;
        sp68.y = thisx->dyna.actor.posRot.pos.y - 60.0f;
        phi_s0 = 0;
        for (phi_s1 = 0; phi_s1 < 6; phi_s1++) {
            sp68.x = Math_SinS(phi_s0) * 60.0f + thisx->dyna.actor.posRot.pos.x;
            sp68.z = Math_CosS(phi_s0) * 60.0f + thisx->dyna.actor.posRot.pos.z;
            func_8002829C(globalCtx, &sp68, &D_808C09D0, &D_808C09D0, &D_808C09C8, &D_808C09CC, 1000, 10);

            phi_s0 += 0x2AAA;
        }
    }
    func_808BF83C(thisx);
}

void func_808BFE50(BgYdanSp* thisx, GlobalContext* globalCtx) {
    Player* player;
    Vec3f sp30;
    f32 temp_f0;
    f32 temp_f2_2;

    f32 phi_f12;

    player = PLAYER;
    sp30.x = thisx->dyna.actor.posRot.pos.x;
    sp30.y = thisx->dyna.actor.posRot.pos.y - 50.0f;
    sp30.z = thisx->dyna.actor.posRot.pos.z;
    if (Player_IsBurningStickInRange(globalCtx, &sp30, 70.0f, 50.0f) != 0) {
        thisx->dyna.actor.initPosRot.pos.x = player->swordInfo[0].tip.x;
        thisx->dyna.actor.initPosRot.pos.z = player->swordInfo[0].tip.z;
        func_808BF90C(thisx, globalCtx);
        return;
    }
    if ((thisx->trisCollider.base.acFlags & 2) != 0) {
        func_808BF90C(thisx, globalCtx);
        return;
    }
    if (func_8004356C((DynaPolyActor*)thisx) != 0) {
        phi_f12 = CLAMP_MIN(player->fallDistance, 0.0f);
        temp_f0 = sqrtf(phi_f12);
        if (750.0f < player->fallDistance) {
            if (thisx->dyna.actor.xzDistToLink < 80.0f) {
                thisx->unk16C = 200.0f;
                thisx->dyna.actor.room = -1;
                thisx->dyna.actor.flags |= 0x10;
                thisx->unk16A = 40;
                Audio_PlayActorSound2((Actor*)thisx, NA_SE_EV_WEB_BROKEN);
                thisx->actionFunc = func_808BFC90;
                return;
            }
        }
        temp_f2_2 = temp_f0 + temp_f0;
        if (thisx->unk16C < temp_f2_2) {
            if (2.0f < temp_f2_2) {
                thisx->unk16C = temp_f2_2;
                thisx->unk16A = 14;
            }
        }
        if (0.0f != player->actor.speedXZ) {
            if (thisx->unk16C < 0.1f) {
                thisx->unk16A = 14;
            }
            if (thisx->unk16C < 2.0f) {
                thisx->unk16C = 2.0f;
            }
            else {
                thisx->unk16C = thisx->unk16C;
            }
        }
    }
    if (thisx->unk16A != 0) {
        thisx->unk16A--;
    }
    if (thisx->unk16A == 0) {
        thisx->unk16A = 14;
    }
    thisx->dyna.actor.posRot.pos.y =
        (f32)((sinf((f32)thisx->unk16A * (M_PI / 7.0f)) * thisx->unk16C) + thisx->dyna.actor.initPosRot.pos.y);
    Math_ApproachZeroF(&thisx->unk16C, 1.0f, 0.8f);
    if (thisx->unk16A == 13) {
        if (3.0f < thisx->unk16C) {
            Audio_PlayActorSound2((Actor*)thisx, NA_SE_EV_WEB_VIBRATION);
        }
        else {
            func_800F8D04(NA_SE_EV_WEB_VIBRATION);
        }
    }
    func_808BF83C(thisx);
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &thisx->trisCollider.base);
}

static Vec3f D_808C09DC = { 0 };
void func_808C012C(BgYdanSp* thisx, GlobalContext* globalCtx) {
    Vec3f spD4;
    Vec3f spC8;
    f32 temp_f12;
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f24;
    s16 temp_s2;
    s16 phi_s3;
    s32 i;

    if (thisx->unk16A != 0) {
        thisx->unk16A--;
    }
    if (thisx->unk16A == 0) {
        Actor_Kill(&thisx->dyna.actor);
        return;
    }
    if ((thisx->unk16A % 3) == 0) {
        phi_s3 = (s16)(Rand_ZeroOne() * 10922.0f);

        for (i = 0; i < 6; i++) {
            temp_s2 = (s16)(Rand_CenteredFloat(10240.0f) + phi_s3);
            temp_f20 = Math_SinS(temp_s2);
            temp_f22 = Math_CosS(temp_s2);
            temp_f24 = Math_CosS(thisx->dyna.actor.shape.rot.y) * temp_f20;
            temp_f20 *= Math_SinS(thisx->dyna.actor.shape.rot.y);

            spC8.x = thisx->dyna.actor.posRot.pos.x + (140.0f * temp_f24);
            spC8.y = thisx->dyna.actor.posRot.pos.y + (140.0f * (1.0f + temp_f22));
            spC8.z = thisx->dyna.actor.posRot.pos.z - (140.0f * temp_f20);
            temp_f12 = Math_Vec3f_DistXYZ(&thisx->dyna.actor.initPosRot.pos, &spC8) * (1.0f / 140.0f);
            if (temp_f12 < 0.65f) {
                temp_f20 = Math_SinS((s16)(temp_s2 + 0x8000));
                temp_f22 = Math_CosS((s16)(temp_s2 + 0x8000));
                temp_f24 = Math_CosS(thisx->dyna.actor.shape.rot.y) * temp_f20;
                temp_f20 *= Math_SinS(thisx->dyna.actor.shape.rot.y);
                spC8.x = thisx->dyna.actor.posRot.pos.x + (140.0f * temp_f24);
                spC8.y = thisx->dyna.actor.posRot.pos.y + (140.0f * (1.0f + temp_f22));
                spC8.z = thisx->dyna.actor.posRot.pos.z - (140.0f * temp_f20);
                temp_f12 = Math_Vec3f_DistXYZ(&thisx->dyna.actor.initPosRot.pos, &spC8) * (1.0f / 140.0f);
            }
            spD4.x = (6.5f * temp_f24) * temp_f12;
            spD4.y = (6.5f * temp_f22) * temp_f12;
            spD4.z = (-6.5f * temp_f20) * temp_f12;
            EffectSsDeadDb_Spawn(globalCtx, &thisx->dyna.actor.initPosRot.pos, &spD4, &D_808C09DC, 0x50, 6, 0xFF, 0xFF, 0x96,
                0xAA, 0xFF, 0, 0, 1, 0xE, 1);
            phi_s3 += 0x2AAA;
        }
    }
}

void func_808C0464(BgYdanSp* thisx, GlobalContext* globalCtx) {
    Player* player;
    Vec3f sp30;

    player = PLAYER;
    if (Flags_GetSwitch(globalCtx, thisx->unk169) || (thisx->trisCollider.base.acFlags & 2)) {
        thisx->dyna.actor.initPosRot.pos.y = thisx->dyna.actor.posRot.pos.y + 80.0f;
        func_808BF90C(thisx, globalCtx);
    }
    else if (player->heldItemActionParam == 6 && player->unk_860 != 0) {
        func_8002DBD0((Actor*)thisx, &sp30, &player->swordInfo[0].tip);
        if (fabsf(sp30.x) < 100.0f && sp30.z < 1.0f && sp30.y < 200.0f) {
            func_800800F8(globalCtx, 0xBCC, 0x28, &thisx->dyna.actor, 0);
            Math_Vec3f_Copy(&thisx->dyna.actor.initPosRot.pos, &player->swordInfo[0].tip);
            func_808BF90C(thisx, globalCtx);
        }
    }
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &thisx->trisCollider.base);
}

void BgYdanSp_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgYdanSp* this = THIS;
    this->actionFunc(this, globalCtx);
}

void BgYdanSp_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BgYdanSp* this = THIS;
    s32 i;
    MtxF mtxF;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_ydan_sp.c", 781);
    func_80093D84(globalCtx->state.gfxCtx);
    if (thisx->params == 1) {
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_ydan_sp.c", 787),
            G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, D_06005F40);
    }
    else if (this->actionFunc == &func_808BFC50) {
        Matrix_Get(&mtxF);
        if (this->unk16A == 0x28) {
            Matrix_Translate(0.0f, (thisx->initPosRot.pos.y - thisx->posRot.pos.y) * 10.0f, 0.0f, MTXMODE_APPLY);
            Matrix_Scale(1.0f, ((thisx->initPosRot.pos.y - thisx->posRot.pos.y) + 10.0f) * 0.1f, 1.0f, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_ydan_sp.c", 808),
                G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, D_060061B0);
        }
        for (i = 0; i < 8; i++) {
            Matrix_Put(&mtxF);
            Matrix_RotateRPY(-0x5A0, i * 0x2000, 0, MTXMODE_APPLY);
            Matrix_Translate(0.0f, 700.0f, -900.0f, MTXMODE_APPLY);
            Matrix_Scale(3.5f, 5.0f, 1.0f, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_ydan_sp.c", 830),
                G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, D_06003850);
        }
    }
    else {
        Matrix_Translate(0.0f, (thisx->initPosRot.pos.y - thisx->posRot.pos.y) * 10.0f, 0.0f, MTXMODE_APPLY);
        Matrix_Scale(1.0f, ((thisx->initPosRot.pos.y - thisx->posRot.pos.y) + 10.0f) * 0.1f, 1.0f, MTXMODE_APPLY);
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_ydan_sp.c", 849),
            G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, D_060061B0);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_ydan_sp.c", 856);
}
