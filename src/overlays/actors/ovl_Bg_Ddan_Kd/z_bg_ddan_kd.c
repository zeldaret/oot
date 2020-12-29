/*
 * File: z_bg_ddan_kd.c
 * Overlay: ovl_Bg_Ddan_Kd
 * Description: Falling stairs in Dodongo's Cavern
 */

#include "z_bg_ddan_kd.h"

#define FLAGS 0x00000010

#define THIS ((BgDdanKd*)thisx)

void BgDdanKd_Init(Actor* thisx, GlobalContext* globalCtx);
void BgDdanKd_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgDdanKd_Update(Actor* thisx, GlobalContext* globalCtx);
void BgDdanKd_Draw(Actor* thisx, GlobalContext* globalCtx);

void BgDdanKd_CheckForExplosions(BgDdanKd* this, GlobalContext* globalCtx);
void BgDdanKd_LowerStairs(BgDdanKd* this, GlobalContext* globalCtx);
void func_80871838(BgDdanKd* this, GlobalContext* globalCtx);

const ActorInit Bg_Ddan_Kd_InitVars = {
    ACTOR_BG_DDAN_KD,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_DDAN_OBJECTS,
    sizeof(BgDdanKd),
    (ActorFunc)BgDdanKd_Init,
    (ActorFunc)BgDdanKd_Destroy,
    (ActorFunc)BgDdanKd_Update,
    (ActorFunc)BgDdanKd_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x39, 0x00, 0x00, COLSHAPE_CYLINDER },
    { 0x02, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
    { 245, 180, -400, { 0, 0, 0 } },
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 32767, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 32767, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 32767, ICHAIN_STOP),
};

static f32 D_808718FC[] = { 0.0f, 5.0f };
static f32 D_80871904[] = { 0.0f };
static f32 D_80871908[] = { 0.0f, -0.45f, 0.0f, 0.0f, 0.0f, 0.0f };

extern UNK_TYPE D_06004F30;
extern Gfx D_060048A8[];

void BgDdanKd_SetupAction(BgDdanKd* this, BgDdanKdActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void BgDdanKd_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgDdanKd* this = THIS;
    s32 pad;
    s32 sp24 = 0;

    this->prevExplosive = NULL;

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    DynaPolyInfo_SetActorMove(&this->dyna.actor, 1);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->dyna.actor, &sCylinderInit);
    DynaPolyInfo_Alloc(&D_06004F30, &sp24);

    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, sp24);

    if (Flags_GetSwitch(globalCtx, this->dyna.actor.params) == 0) {
        BgDdanKd_SetupAction(this, BgDdanKd_CheckForExplosions);
    } else {
        this->dyna.actor.posRot.pos.y = this->dyna.actor.initPosRot.pos.y - 200.0f - 20.0f;
        BgDdanKd_SetupAction(this, func_80871838);
    }
}

void BgDdanKd_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgDdanKd* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void BgDdanKd_CheckForExplosions(BgDdanKd* this, GlobalContext* globalCtx) {
    Actor* explosive;

    explosive = Actor_GetCollidedExplosive(globalCtx, &this->collider);
    if (explosive != NULL) {
        osSyncPrintf("dam    %d\n", this->dyna.actor.colChkInfo.damage);
        explosive->params = 2;
    }
    if ((explosive != NULL) && (this->prevExplosive != NULL) && (explosive != this->prevExplosive) &&
        (Math_Vec3f_DistXZ(&this->prevExplosivePos, &explosive->posRot.pos) > 80.0f)) {
        BgDdanKd_SetupAction(this, BgDdanKd_LowerStairs);
        func_800800F8(globalCtx, 0xBEA, 0x3E7, this, 0);
    } else {
        if (this->timer != 0) {
            this->timer -= 1;
        } else {
            this->prevExplosive = explosive;
            if (explosive != NULL) {
                this->timer = 13;
                this->prevExplosivePos = explosive->posRot.pos;
            }
        }
        Collider_CylinderUpdate(&this->dyna.actor, &this->collider);
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider);
    }
}

void BgDdanKd_LowerStairs(BgDdanKd* this, GlobalContext* globalCtx) {
    Vec3f sp5C;
    Vec3f sp50;
    f32 sp4C;

    Math_SmoothStepToF(&this->dyna.actor.speedXZ, 4.0f, 0.5f, 0.025f, 0.0f);
    func_800AA000(500.0f, 0x78, 0x14, 0xA);

    if (Math_SmoothStepToF(&this->dyna.actor.posRot.pos.y, (this->dyna.actor.initPosRot.pos.y - 200.0f) - 20.0f, 0.075f,
                           this->dyna.actor.speedXZ, 0.0075f) == 0.0f) {
        Flags_SetSwitch(globalCtx, this->dyna.actor.params);
        BgDdanKd_SetupAction(this, func_80871838);
    } else {
        sp4C = (this->dyna.actor.pos4.y - this->dyna.actor.posRot.pos.y) + (this->dyna.actor.speedXZ * 0.25f);

        if (globalCtx->state.frames & 1) {
            sp5C = sp50 = this->dyna.actor.posRot.pos;

            if (globalCtx->state.frames & 2) {
                sp5C.z += 210.0f + Rand_ZeroOne() * 230.0f;
                sp50.z += 210.0f + Rand_ZeroOne() * 230.0f;
            } else {
                sp5C.z += 330.0f + Rand_ZeroOne() * 240.0f;
                sp50.z += 330.0f + Rand_ZeroOne() * 240.0f;
            }
            sp5C.x += 80.0f + Rand_ZeroOne() * 10.0f;
            sp50.x -= 80.0f + Rand_ZeroOne() * 10.0f;
            sp5C.y = this->dyna.actor.groundY + 20.0f + Rand_ZeroOne();
            sp50.y = this->dyna.actor.groundY + 20.0f + Rand_ZeroOne();

            func_80033480(globalCtx, &sp5C, 20.0f, 1, sp4C * 135.0f, 60, 1);
            func_80033480(globalCtx, &sp50, 20.0f, 1, sp4C * 135.0f, 60, 1);

            D_808718FC[0] = Rand_CenteredFloat(3.0f);
            D_80871904[0] = Rand_CenteredFloat(3.0f);

            func_8003555C(globalCtx, &sp5C, &D_808718FC, &D_80871908);
            func_8003555C(globalCtx, &sp50, &D_808718FC, &D_80871908);

            sp5C = this->dyna.actor.posRot.pos;
            sp5C.z += 560.0f + Rand_ZeroOne() * 5.0f;
            sp5C.x += (Rand_ZeroOne() - 0.5f) * 160.0f;
            sp5C.y = Rand_ZeroOne() * 3.0f + (this->dyna.actor.groundY + 20.0f);

            func_80033480(globalCtx, &sp5C, 20.0f, 1, sp4C * 135.0f, 60, 1);
            func_8003555C(globalCtx, &sp5C, &D_808718FC, &D_80871908);
        }
        Camera_AddQuake(&globalCtx->mainCamera, 0, sp4C * 0.6f, 3);
        Audio_PlaySoundGeneral(NA_SE_EV_PILLAR_SINK - SFX_FLAG, &this->dyna.actor.projectedPos, 4, &D_801333E0,
                               &D_801333E0, &D_801333E8);
    }
}

void func_80871838(BgDdanKd* this, GlobalContext* globalCtx) {
}

void BgDdanKd_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgDdanKd* this = THIS;

    this->actionFunc(this, globalCtx);
}

void BgDdanKd_Draw(Actor* thisx, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, &D_060048A8);
}
