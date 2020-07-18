#include "z_bg_hidan_rsekizou.h"

#define FLAGS 0x00000000

#define THIS ((BgHidanRsekizou*)thisx)

void BgHidanRsekizou_Init(Actor* thisx, GlobalContext* globalCtx);
void BgHidanRsekizou_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHidanRsekizou_Update(Actor* thisx, GlobalContext* globalCtx);
void BgHidanRsekizou_Draw(Actor* thisx, GlobalContext* globalCtx);

Gfx* func_8088C70C(GlobalContext* globalCtx, Actor* thisx, s16 frame, MtxF* mf, s32 a, Gfx* dest);

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

//sJntSphItemsInit
ColliderJntSphItemInit D_8088CC80[6] = {
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

//sJntSphInit
ColliderJntSphInit D_8088CD58 =
{
    { COLTYPE_UNK10, 0x11, 0x00, 0x00, 0x20, COLSHAPE_JNTSPH },
    6, D_8088CC80,
};

// sInitChain
InitChainEntry D_8088CD68[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 400, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1500, ICHAIN_STOP),
};

s32 D_8088CD74[] = {
    0x06015D20
    , 0x06016120
    , 0x06016520
    , 0x06016920
    , 0x06016D20
    , 0x06017120
    , 0x06017520
    , 0x06017920
    , 0x00000000
    , 0x00000000
    , 0x00000000
};

extern UNK_TYPE D_0600D5C0;
extern Gfx* D_0600AD00;
extern Gfx* D_0600DC30;

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Rsekizou/BgHidanRsekizou_Init.s")
void BgHidanRsekizou_Init(Actor *thisx, GlobalContext *globalCtx)
{
    BgHidanRsekizou* this = THIS;
    s32 i; // Collider Iterator
    s32 pad;
    s32 polyID;

    polyID = 0;
    Actor_ProcessInitChain(&this->dyna.actor, D_8088CD68);
    DynaPolyInfo_SetActorMove(&this->dyna, 0);
    DynaPolyInfo_Alloc(&D_0600D5C0, &polyID);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, polyID);
    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, &this->dyna.actor, &D_8088CD58, this->spheres);
    for (i = 0; i < ARRAY_COUNT(this->spheres); i++)
    {
        this->collider.list[i].dim.worldSphere.radius = this->collider.list[i].dim.modelSphere.radius;
    }
    this->burnFrame = 0;
    this->blastFrame = 0;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Rsekizou/BgHidanRsekizou_Destroy.s")
void BgHidanRsekizou_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanRsekizou* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
    Collider_DestroyJntSph(globalCtx, &this->collider);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Rsekizou/BgHidanRsekizou_Update.s")
void BgHidanRsekizou_Update(Actor *thisx, GlobalContext *globalCtx)
{
    BgHidanRsekizou* this = THIS;
    s32 i;
    ColliderJntSphItem* sphere;
    s32 pad;
    f32 yawSine;
    f32 yawCosine;

    this->burnFrame = (this->burnFrame + 1) % 8;

    if (this->blastFrame != 0)
        this->blastFrame--;
    
    if (this->blastFrame == 0)
        this->blastFrame = 3;
        

    this->dyna.actor.shape.rot.y += 0x180; /* Approximately 2 Degrees per Frame */
    yawSine = Math_Sins(this->dyna.actor.shape.rot.y);
    yawCosine = Math_Coss(this->dyna.actor.shape.rot.y);

    for (i = 0; i < ARRAY_COUNT(this->spheres); i++)
    {
        sphere = this->collider.list + i;
        sphere->dim.worldSphere.center.x = this->dyna.actor.initPosRot.pos.x + yawCosine * sphere->dim.modelSphere.center.x + yawSine * sphere->dim.modelSphere.center.z;
        sphere->dim.worldSphere.center.y = (s16)this->dyna.actor.initPosRot.pos.y + sphere->dim.modelSphere.center.y;
        sphere->dim.worldSphere.center.z = (this->dyna.actor.initPosRot.pos.z - yawSine * sphere->dim.modelSphere.center.x) + yawCosine * sphere->dim.modelSphere.center.z;
    }

    CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    func_8002F974(&this->dyna.actor, NA_SE_EV_FIRE_PILLAR - SFX_FLAG);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Rsekizou/func_8088C70C.s")
Gfx* func_8088C70C(GlobalContext* globalCtx, Actor* thisx, s16 frame, MtxF* mf, s32 a, Gfx* dest)
{
    BgHidanRsekizou* this = THIS;
    f32 local_8;
    MtxF* sp28;
    f32 fVar5;
    f32 fVar6;
    f32 fVar4;

    gSPSegment(dest++, 9, SEGMENTED_TO_VIRTUAL(D_8088CD74[(s32)(((((this->burnFrame + frame) % 8) * 8) - ((this->burnFrame + frame) % 8)) * 0.14285715f)]));

    if ((frame + 1) == 4)
    {
        fVar6 = 4.0f;
    }
    else
    {
        fVar6 = (f32)(frame + 1) + (f32)((3 - this->blastFrame) * 0.33333334f);
    }

    gDPSetPrimColor(dest++, 0, 0x01, 0xFF, 0xFF, 0x00, 0x96);
    gDPSetEnvColor(dest++, 0xFF, 0x00, 0x00, 0xFF);

    if (a == 0)
    {
        local_8 = -Math_Sins(this->dyna.actor.shape.rot.y - ((frame + 1) * 0x5DC));
        fVar4 = -Math_Coss(this->dyna.actor.shape.rot.y - ((frame + 1) * 0x5DC));
    }
    else
    {
        local_8 = Math_Sins(this->dyna.actor.shape.rot.y - ((frame + 1) * 0x5DC));
        fVar4 = Math_Coss(this->dyna.actor.shape.rot.y - ((frame + 1) * 0x5DC));
    }

    fVar5 = (0.7f * fVar6) + 0.5f;
    mf->xx = fVar5; /* [0][0] */
    mf->yy = fVar5; /* [1][1] */
    mf->zz = fVar5; /* [2][2] */

    fVar5 *=  10.0f * fVar6 + 20.0f;
    mf->wx = fVar5 * local_8 + this->dyna.actor.posRot.pos.x; /* [3][0] */
    mf->wy = this->dyna.actor.posRot.pos.y + 30.0f + 0.7f * fVar6; /* [3][1] */
    mf->wz = fVar5 * fVar4 + this->dyna.actor.posRot.pos.z; /* [3][2] */

    gSPMatrix(
        dest++
        , Matrix_MtxFToMtx(Matrix_CheckFloats(mf, "../z_bg_hidan_rsekizou.c", 543), Graph_Alloc(globalCtx->state.gfxCtx, 0x40))
        , G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW
    );
    gSPDisplayList(dest++, D_0600DC30);

    return dest;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Rsekizou/BgHidanRsekizou_Draw.s")
void BgHidanRsekizou_Draw(Actor *thisx, GlobalContext *globalCtx)
{
    BgHidanRsekizou* this = THIS;
    s32 i;
    s32 pad;
    MtxF mf;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_hidan_rsekizou.c", 564);
    func_80093D18(globalCtx->state.gfxCtx);

    gSPMatrix(
        gfxCtx->polyOpa.p++
        , Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_hidan_rsekizou.c", 568)
        , G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW
    );
    gSPDisplayList(gfxCtx->polyOpa.p++, &D_0600AD00);
    Matrix_MtxFCopy(&mf, &gMtxFClear); /* Set an Identity Matrix */

    gfxCtx->polyXlu.p = Gfx_CallSetupDL(gfxCtx->polyXlu.p, 0x14);

    if ((s16)((func_8005A9F4(globalCtx->cameraPtrs[globalCtx->activeCamera]) - this->dyna.actor.shape.rot.y) - 0x2E6C) >= 0)
    {
        for (i = 3; i >= 0; i--)
        {
            gfxCtx->polyXlu.p = func_8088C70C(globalCtx, &this->dyna.actor, i, &mf, 0, gfxCtx->polyXlu.p);
        }

        for (i = 0; i < 4; i++)
        {
            gfxCtx->polyXlu.p = func_8088C70C(globalCtx, &this->dyna.actor, i, &mf, 1, gfxCtx->polyXlu.p);
        }
    }
    else
    {
        for (i = 3; i >= 0; i--)
        {
            gfxCtx->polyXlu.p = func_8088C70C(globalCtx, &this->dyna.actor, i, &mf, 1, gfxCtx->polyXlu.p);
        }

        for (i = 0; i < 4; i++)
        {
            gfxCtx->polyXlu.p = func_8088C70C(globalCtx, &this->dyna.actor, i, &mf, 0, gfxCtx->polyXlu.p);
        }
    }
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_hidan_rsekizou.c", 600);
}

