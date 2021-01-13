#include "z_bg_ydan_sp.h"

#define FLAGS 0x00000000

#define THIS ((BgYdanSp*)thisx)

void BgYdanSp_Init(Actor* thisx, GlobalContext* globalCtx);
void BgYdanSp_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgYdanSp_Update(Actor* thisx, GlobalContext* globalCtx);
void BgYdanSp_Draw(Actor* thisx, GlobalContext* globalCtx);

void BgYdanSp_BurnFloorWeb(BgYdanSp* thisx, GlobalContext* globalCtx);
void BgYdanSp_FloorWebIdle(BgYdanSp* thisx, GlobalContext* globalCtx);
void BgYdanSp_BurnWallWeb(BgYdanSp* thisx, GlobalContext* globalCtx);
void BgYdanSp_WallWebIdle(BgYdanSp* thisx, GlobalContext* globalCtx);

extern Gfx D_060061B0[];
extern Gfx D_06003850[];
extern Gfx D_06005F40[];

extern CollisionHeader D_06006050;
extern CollisionHeader D_06006460;

typedef enum {
    WEB_FLOOR,
    WEB_WALL,
} BgYdanSpType;

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
        { { { 140.0f, 288.8f, 0.0f }, { -140.0f, 288.0f, 0.0f }, { -140.0f, 0.0f, 0.0f } } },
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
    this->isDestroyedSwitchFlag = thisx->params & 0x3F;
    this->burnSwitchFlag = (thisx->params >> 6) & 0x3F;
    thisx->params = (thisx->params >> 0xC) & 0xF;
    DynaPolyActor_Init((DynaPolyActor*)thisx, DPM_PLAYER);
    Collider_InitTris(globalCtx, &this->trisCollider);
    Collider_SetTris(globalCtx, &this->trisCollider, thisx, &sTrisInit, this->trisColliderItems);
    if (thisx->params == WEB_FLOOR) {
        CollisionHeader_GetVirtual(&D_06006460, &colHeader);
        this->actionFunc = &BgYdanSp_FloorWebIdle;

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
        this->actionFunc = &BgYdanSp_WallWebIdle;
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
    this->timer = 0;
    if (Flags_GetSwitch(globalCtx, this->isDestroyedSwitchFlag)) {
        Actor_Kill(&this->dyna.actor);
    }
}

void BgYdanSp_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgYdanSp* this = THIS;
    DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
    Collider_DestroyTris(globalCtx, &this->trisCollider);
}

void* BgYdanSp_UpdateFloorWebCollision(BgYdanSp* thisx) {
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

void BgYdanSp_BurnWeb(BgYdanSp* thisx, GlobalContext* globalCtx) {
    thisx->timer = 30;
    thisx = thisx;
    func_80078884(NA_SE_SY_CORRECT_CHIME);
    Flags_SetSwitch(globalCtx, thisx->isDestroyedSwitchFlag);
    if (thisx->dyna.actor.params == WEB_FLOOR) {
        thisx->actionFunc = &BgYdanSp_BurnFloorWeb;
        return;
    }
    thisx->actionFunc = &BgYdanSp_BurnWallWeb;
}


void BgYdanSp_BurnFloorWeb(BgYdanSp* thisx, GlobalContext* globalCtx) {
    static Vec3f accel = { 0 };
    Vec3f velocity;
    Vec3f pos2;
    f32 distXZ;
    f32 sins;
    f32 coss;
    s16 rot;
    s16 rot2;
    s32 i;

    DECR(thisx->timer);

    if (thisx->timer == 0) {
        Actor_Kill(&thisx->dyna.actor);
        return;
    }
    if ((thisx->timer % 3) == 0) {
        rot2 = (s16)(Rand_ZeroOne() * 0x2AAA);
        velocity.y = 0.0f;
        pos2.y = thisx->dyna.actor.posRot.pos.y;

        for (i = 0; i < 6; i++) {
            rot = (s16)(Rand_CenteredFloat(0x2800) + rot2);
            sins = Math_SinS(rot);
            coss = Math_CosS(rot);
            pos2.x = thisx->dyna.actor.posRot.pos.x + (120.0f * sins);
            pos2.z = thisx->dyna.actor.posRot.pos.z + (120.0f * coss);
            distXZ = Math_Vec3f_DistXZ(&thisx->dyna.actor.initPosRot.pos, &pos2) * (1.0f / 120.0f);
            if (distXZ < 0.7f) {
                sins = Math_SinS((s16)(rot + 0x8000));
                coss = Math_CosS((s16)(rot + 0x8000));
                pos2.x = thisx->dyna.actor.posRot.pos.x + (120.0f * sins);
                pos2.z = thisx->dyna.actor.posRot.pos.z + (120.0f * coss);
                distXZ = Math_Vec3f_DistXZ(&thisx->dyna.actor.initPosRot.pos, &pos2) * (1.0f / 120.0f);
            }
            velocity.x = (7.0f * sins) * distXZ;
            velocity.y = 0.0f;
            velocity.z = (7.0f * coss) * distXZ;
            EffectSsDeadDb_Spawn(globalCtx, &thisx->dyna.actor.initPosRot.pos, &velocity, &accel, 60, 6, 255, 255, 150,
                170, 255, 0, 0, 1, 0xE, 1);
            rot2 += 0x2AAA;
        }
    }
}

void BgYdanSp_FloorWebBroken(BgYdanSp* thisx, GlobalContext* globalCtx) {
    DECR(thisx->timer);

    if (thisx->timer == 0) {
        Actor_Kill(&thisx->dyna.actor);
    }
}


void BgYdanSp_FloorWebBreaking(BgYdanSp* thisx, GlobalContext* globalCtx) {
    static Color_RGBA8 primColor = { 250, 250, 250, 255 }; // prim color
    static Color_RGBA8 envColor = { 180, 180, 180, 255 }; // env color
    static Vec3f zeroVec = { 0 };
    s32 i;
    Vec3f pos;
    s16 rot;

    DECR(thisx->timer);
    thisx->dyna.actor.posRot.pos.y =
        (sinf((f32)thisx->timer * (M_PI / 20.0f)) * thisx->unk16C) + thisx->dyna.actor.initPosRot.pos.y;
    if ( thisx->dyna.actor.initPosRot.pos.y - thisx->dyna.actor.posRot.pos.y > 190.0f) {
        func_8003EBF8(globalCtx, &globalCtx->colCtx.dyna, thisx->dyna.bgId);
        thisx->timer = 40;
        func_80078884(NA_SE_SY_CORRECT_CHIME);
        Flags_SetSwitch(globalCtx, thisx->isDestroyedSwitchFlag);
        thisx->actionFunc = &BgYdanSp_FloorWebBroken;
        pos.y = thisx->dyna.actor.posRot.pos.y - 60.0f;
        rot = 0;
        for (i = 0; i < 6; i++) {
            pos.x = Math_SinS(rot) * 60.0f + thisx->dyna.actor.posRot.pos.x;
            pos.z = Math_CosS(rot) * 60.0f + thisx->dyna.actor.posRot.pos.z;
            func_8002829C(globalCtx, &pos, &zeroVec, &zeroVec, &primColor, &envColor, 1000, 10);

            rot += 0x2AAA;
        }
    }
    BgYdanSp_UpdateFloorWebCollision(thisx);
}

void BgYdanSp_FloorWebIdle(BgYdanSp* thisx, GlobalContext* globalCtx) {
    Player* player;
    Vec3f webPos;
    f32 sqrtFallDistance;
    f32 unk;

    player = PLAYER;
    webPos.x = thisx->dyna.actor.posRot.pos.x;
    webPos.y = thisx->dyna.actor.posRot.pos.y - 50.0f;
    webPos.z = thisx->dyna.actor.posRot.pos.z;
    if (Player_IsBurningStickInRange(globalCtx, &webPos, 70.0f, 50.0f) != 0) {
        thisx->dyna.actor.initPosRot.pos.x = player->swordInfo[0].tip.x;
        thisx->dyna.actor.initPosRot.pos.z = player->swordInfo[0].tip.z;
        BgYdanSp_BurnWeb(thisx, globalCtx);
        return;
    }
    if ((thisx->trisCollider.base.acFlags & 2) != 0) {
        BgYdanSp_BurnWeb(thisx, globalCtx);
        return;
    }
    if (func_8004356C((DynaPolyActor*)thisx)) {
        sqrtFallDistance = sqrtf(CLAMP_MIN(player->fallDistance, 0.0f));
        if (player->fallDistance > 750.0f) {
            if (thisx->dyna.actor.xzDistToLink < 80.0f) {
                thisx->unk16C = 200.0f;
                thisx->dyna.actor.room = -1;
                thisx->dyna.actor.flags |= 0x10;
                thisx->timer = 40;
                Audio_PlayActorSound2((Actor*)thisx, NA_SE_EV_WEB_BROKEN);
                thisx->actionFunc = BgYdanSp_FloorWebBreaking;
                return;
            }
        }
        unk = sqrtFallDistance + sqrtFallDistance;
        if (thisx->unk16C < unk) {
            if (unk > 2.0f) {
                thisx->unk16C = unk;
                thisx->timer = 14;
            }
        }
        if (player->actor.speedXZ != 0.0f) {
            if (thisx->unk16C < 0.1f) {
                thisx->timer = 14;
            }
            if (thisx->unk16C < 2.0f) {
                thisx->unk16C = 2.0f;
            }
            else {
                thisx->unk16C = thisx->unk16C;
            }
        }
    }

    DECR(thisx->timer);
    if (thisx->timer == 0) {
        thisx->timer = 14;
    }
    thisx->dyna.actor.posRot.pos.y =
        (f32)((sinf((f32)thisx->timer * (M_PI / 7.0f)) * thisx->unk16C) + thisx->dyna.actor.initPosRot.pos.y);
    Math_ApproachZeroF(&thisx->unk16C, 1.0f, 0.8f);
    if (thisx->timer == 13) {
        if (thisx->unk16C > 3.0f) {
            Audio_PlayActorSound2((Actor*)thisx, NA_SE_EV_WEB_VIBRATION);
        }
        else {
            func_800F8D04(NA_SE_EV_WEB_VIBRATION);
        }
    }
    BgYdanSp_UpdateFloorWebCollision(thisx);
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &thisx->trisCollider.base);
}

void BgYdanSp_BurnWallWeb(BgYdanSp* thisx, GlobalContext* globalCtx) {
    static Vec3f accel = { 0 };
    Vec3f velocity;
    Vec3f spC8;
    f32 distXYZ;
    f32 sins;
    f32 coss;
    f32 coss2;
    s16 rot;
    s16 rot2;
    s32 i;

    DECR(thisx->timer);
    if (thisx->timer == 0) {
        Actor_Kill(&thisx->dyna.actor);
        return;
    }
    if ((thisx->timer % 3) == 0) {
        rot2 = (s16)(Rand_ZeroOne() * 0x2AAA);

        for (i = 0; i < 6; i++) {
            rot = (s16)(Rand_CenteredFloat(0x2800) + rot2);
            sins = Math_SinS(rot);
            coss = Math_CosS(rot);
            coss2 = Math_CosS(thisx->dyna.actor.shape.rot.y) * sins;
            sins *= Math_SinS(thisx->dyna.actor.shape.rot.y);

            spC8.x = thisx->dyna.actor.posRot.pos.x + (140.0f * coss2);
            spC8.y = thisx->dyna.actor.posRot.pos.y + (140.0f * (1.0f + coss));
            spC8.z = thisx->dyna.actor.posRot.pos.z - (140.0f * sins);
            distXYZ = Math_Vec3f_DistXYZ(&thisx->dyna.actor.initPosRot.pos, &spC8) * (1.0f / 140.0f);
            if (distXYZ < 0.65f) {
                sins = Math_SinS((s16)(rot + 0x8000));
                coss = Math_CosS((s16)(rot + 0x8000));
                coss2 = Math_CosS(thisx->dyna.actor.shape.rot.y) * sins;
                sins *= Math_SinS(thisx->dyna.actor.shape.rot.y);
                spC8.x = thisx->dyna.actor.posRot.pos.x + (140.0f * coss2);
                spC8.y = thisx->dyna.actor.posRot.pos.y + (140.0f * (1.0f + coss));
                spC8.z = thisx->dyna.actor.posRot.pos.z - (140.0f * sins);
                distXYZ = Math_Vec3f_DistXYZ(&thisx->dyna.actor.initPosRot.pos, &spC8) * (1.0f / 140.0f);
            }
            velocity.x = (6.5f * coss2) * distXYZ;
            velocity.y = (6.5f * coss) * distXYZ;
            velocity.z = (-6.5f * sins) * distXYZ;
            EffectSsDeadDb_Spawn(globalCtx, &thisx->dyna.actor.initPosRot.pos, &velocity, &accel, 80, 6, 255, 255, 150,
                170, 255, 0, 0, 1, 0xE, 1);
            rot2 += 0x2AAA;
        }
    }
}

void BgYdanSp_WallWebIdle(BgYdanSp* thisx, GlobalContext* globalCtx) {
    Player* player;
    Vec3f sp30;

    player = PLAYER;
    if (Flags_GetSwitch(globalCtx, thisx->burnSwitchFlag) || (thisx->trisCollider.base.acFlags & 2)) {
        thisx->dyna.actor.initPosRot.pos.y = thisx->dyna.actor.posRot.pos.y + 80.0f;
        BgYdanSp_BurnWeb(thisx, globalCtx);
    }
    else if (player->heldItemActionParam == PLAYER_AP_STICK && player->unk_860 != 0) {
        func_8002DBD0((Actor*)thisx, &sp30, &player->swordInfo[0].tip);
        if (fabsf(sp30.x) < 100.0f && sp30.z < 1.0f && sp30.y < 200.0f) {
            func_800800F8(globalCtx, 0xBCC, 0x28, &thisx->dyna.actor, 0);
            Math_Vec3f_Copy(&thisx->dyna.actor.initPosRot.pos, &player->swordInfo[0].tip);
            BgYdanSp_BurnWeb(thisx, globalCtx);
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
    if (thisx->params == WEB_WALL) {
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_ydan_sp.c", 787),
            G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, D_06005F40);
    }
    else if (this->actionFunc == &BgYdanSp_FloorWebBroken) {
        Matrix_Get(&mtxF);
        if (this->timer == 40) {
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
