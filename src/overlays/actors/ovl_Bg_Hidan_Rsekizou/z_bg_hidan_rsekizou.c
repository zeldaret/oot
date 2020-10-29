#include "z_bg_hidan_rsekizou.h"

#define FLAGS 0x00000000

#define THIS ((BgHidanRsekizou*)thisx)

void BgHidanRsekizou_Init(Actor* thisx, GlobalContext* globalCtx);
void BgHidanRsekizou_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHidanRsekizou_Update(Actor* thisx, GlobalContext* globalCtx);
void BgHidanRsekizou_Draw(Actor* thisx, GlobalContext* globalCtx);

const ActorInit Bg_Hidan_Rsekizou_InitVars = {
    ACTOR_BG_HIDAN_RSEKIZOU,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_HIDAN_OBJECTS,
    sizeof(BgHidanRsekizou),
    (ActorFunc)BgHidanRsekizou_Init,
    (ActorFunc)BgHidanRsekizou_Destroy,
    (ActorFunc)BgHidanRsekizou_Update,
    (ActorFunc)BgHidanRsekizou_Draw,
};

static ColliderJntSphItemInit sJntSphItemsInit[6] = {
    {
        { 0x00, { 0x20000000, 0x01, 0x04 }, { 0x00000000, 0x00, 0x00 }, 0x19, 0x00, 0x00 },
        { 1, { { 0, 30, 40 }, 25 }, 100 },
    },
    {
        { 0x00, { 0x20000000, 0x01, 0x04 }, { 0x00000000, 0x00, 0x00 }, 0x19, 0x00, 0x00 },
        { 1, { { -35, 32, 77 }, 32 }, 100 },
    },
    {
        { 0x00, { 0x20000000, 0x01, 0x04 }, { 0x00000000, 0x00, 0x00 }, 0x19, 0x00, 0x00 },
        { 1, { { -80, 35, 130 }, 42 }, 100 },
    },
    {
        { 0x00, { 0x20000000, 0x01, 0x04 }, { 0x00000000, 0x00, 0x00 }, 0x19, 0x00, 0x00 },
        { 1, { { 0, 30, -40 }, 25 }, 100 },
    },
    {
        { 0x00, { 0x20000000, 0x01, 0x04 }, { 0x00000000, 0x00, 0x00 }, 0x19, 0x00, 0x00 },
        { 1, { { 35, 32, -77 }, 32 }, 100 },
    },
    {
        { 0x00, { 0x20000000, 0x01, 0x04 }, { 0x00000000, 0x00, 0x00 }, 0x19, 0x00, 0x00 },
        { 1, { { 80, 35, -130 }, 42 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    { COLTYPE_UNK10, 0x11, 0x00, 0x00, 0x20, COLSHAPE_JNTSPH },
    6,
    sJntSphItemsInit,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 400, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1500, ICHAIN_STOP),
};

static UNK_PTR D_8088CD74[] = { 0x06015D20, 0x06016120, 0x06016520, 0x06016920,
                                0x06016D20, 0x06017120, 0x06017520, 0x06017920 };

extern UNK_TYPE D_0600D5C0; // Dynapoly Data in Object
extern Gfx D_0600AD00[];    // Display List
extern Gfx D_0600DC30[];    // Display List

void BgHidanRsekizou_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanRsekizou* this = THIS;
    s32 i;
    s32 pad;
    s32 polyID;

    polyID = 0;
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    DynaPolyInfo_SetActorMove(&this->dyna, 0);
    DynaPolyInfo_Alloc(&D_0600D5C0, &polyID);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, polyID);
    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, &this->dyna.actor, &sJntSphInit, this->colliderItems);
    for (i = 0; i < ARRAY_COUNT(this->colliderItems); i++) {
        this->collider.list[i].dim.worldSphere.radius = this->collider.list[i].dim.modelSphere.radius;
    }
    this->burnFrame = 0;
    this->blastFrame = 0;
}

void BgHidanRsekizou_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanRsekizou* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
    Collider_DestroyJntSph(globalCtx, &this->collider);
}

void BgHidanRsekizou_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanRsekizou* this = THIS;
    s32 i;
    ColliderJntSphItem* sphere;
    s32 pad;
    f32 yawSine;
    f32 yawCosine;

    this->burnFrame = (this->burnFrame + 1) % 8;

    if (this->blastFrame != 0) {
        this->blastFrame--;
    }

    if (this->blastFrame == 0) {
        this->blastFrame = 3;
    }

    this->dyna.actor.shape.rot.y += 0x180; // Approximately 2 Degrees per Frame
    yawSine = Math_Sins(this->dyna.actor.shape.rot.y);
    yawCosine = Math_Coss(this->dyna.actor.shape.rot.y);

    for (i = 0; i < ARRAY_COUNT(this->colliderItems); i++) {
        sphere = &this->collider.list[i];
        sphere->dim.worldSphere.center.x = this->dyna.actor.initPosRot.pos.x +
                                           yawCosine * sphere->dim.modelSphere.center.x +
                                           yawSine * sphere->dim.modelSphere.center.z;
        sphere->dim.worldSphere.center.y = (s16)this->dyna.actor.initPosRot.pos.y + sphere->dim.modelSphere.center.y;
        sphere->dim.worldSphere.center.z =
            (this->dyna.actor.initPosRot.pos.z - yawSine * sphere->dim.modelSphere.center.x) +
            yawCosine * sphere->dim.modelSphere.center.z;
    }

    CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    func_8002F974(&this->dyna.actor, NA_SE_EV_FIRE_PILLAR - SFX_FLAG);
}

Gfx* BgHidanRsekizou_DrawFireball(GlobalContext* globalCtx, BgHidanRsekizou* this, s16 frame, MtxF* mf, s32 a,
                                  Gfx* displayList) {
    f32 coss;
    f32 sins;
    s32 temp;
    f32 fVar6;
    f32 tmpf7;

    temp = (((this->burnFrame + frame) % 8) * 7) * 0.14285715f;
    gSPSegment(displayList++, 0x09, SEGMENTED_TO_VIRTUAL(D_8088CD74[temp]));

    frame++;
    fVar6 = (frame != 4) ? frame + ((3 - this->blastFrame) * 0.33333334f) : frame;

    gDPSetPrimColor(displayList++, 0, 1, 255, 255, 0, 150);
    gDPSetEnvColor(displayList++, 255, 0, 0, 255);

    if (a == 0) {
        sins = -Math_Sins(this->dyna.actor.shape.rot.y - (frame * 1500));
        coss = -Math_Coss(this->dyna.actor.shape.rot.y - (frame * 1500));
    } else {
        sins = Math_Sins(this->dyna.actor.shape.rot.y - (frame * 1500));
        coss = Math_Coss(this->dyna.actor.shape.rot.y - (frame * 1500));
    }

    mf->xx = mf->yy = mf->zz = (0.7f * fVar6) + 0.5f;
    tmpf7 = (((((0.7f * fVar6) + 0.5f) * 10.0f) * fVar6) + 20.0f);

    mf->wx = (tmpf7 * sins) + this->dyna.actor.posRot.pos.x;
    mf->wy = (this->dyna.actor.posRot.pos.y + 30.0f) + (0.699999988079f * fVar6);
    mf->wz = (tmpf7 * coss) + this->dyna.actor.posRot.pos.z;

    gSPMatrix(displayList++,
              Matrix_MtxFToMtx(Matrix_CheckFloats(mf, "../z_bg_hidan_rsekizou.c", 543),
                               Graph_Alloc(globalCtx->state.gfxCtx, sizeof(Mtx))),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(displayList++, D_0600DC30);

    return displayList;
}

void BgHidanRsekizou_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanRsekizou* this = THIS;
    s32 i;
    s32 pad;
    MtxF mf;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_hidan_rsekizou.c", 564);

    func_80093D18(globalCtx->state.gfxCtx);

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_hidan_rsekizou.c", 568),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, D_0600AD00);
    Matrix_MtxFCopy(&mf, &gMtxFClear);

    POLY_XLU_DISP = Gfx_CallSetupDL(POLY_XLU_DISP, 0x14);

    if ((s16)((func_8005A9F4(ACTIVE_CAM) - this->dyna.actor.shape.rot.y) - 0x2E6C) >= 0) {
        for (i = 3; i >= 0; i--) {
            POLY_XLU_DISP = BgHidanRsekizou_DrawFireball(globalCtx, this, i, &mf, 0, POLY_XLU_DISP);
        }

        for (i = 0; i < 4; i++) {
            POLY_XLU_DISP = BgHidanRsekizou_DrawFireball(globalCtx, this, i, &mf, 1, POLY_XLU_DISP);
        }
    } else {
        for (i = 3; i >= 0; i--) {
            POLY_XLU_DISP = BgHidanRsekizou_DrawFireball(globalCtx, this, i, &mf, 1, POLY_XLU_DISP);
        }

        for (i = 0; i < 4; i++) {
            POLY_XLU_DISP = BgHidanRsekizou_DrawFireball(globalCtx, this, i, &mf, 0, POLY_XLU_DISP);
        }
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_hidan_rsekizou.c", 600);
}
