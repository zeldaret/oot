/*
 *  File: z_bg_jya_goroiwa.c
 *  Overlay: ovl_Bg_Jya_Goroiwa
 *  Description: Rolling Boulder
 *  moves very slowly in some cases
 */

#include "z_bg_jya_goroiwa.h"

#define FLAGS 0x00000010

#define THIS ((BgJyaGoroiwa*)thisx)

void BgJyaGoroiwa_Init(Actor* thisx, GlobalContext* globalCtx);
void BgJyaGoroiwa_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgJyaGoroiwa_Update(Actor* thisx, GlobalContext* globalCtx);
void BgJyaGoroiwa_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80897DF0(BgJyaGoroiwa* this, GlobalContext* globalCtx);
void func_80897B48(BgJyaGoroiwa* this, GlobalContext* globalCtx);

void func_80897DDC(BgJyaGoroiwa* this);
void func_80897B1C(BgJyaGoroiwa* this);
void func_80897A2C(BgJyaGoroiwa* this);
void func_80897970(BgJyaGoroiwa* this);

const ActorInit Bg_Jya_Goroiwa_InitVars = {
    ACTOR_BG_JYA_GOROIWA,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GOROIWA,
    sizeof(BgJyaGoroiwa),
    (ActorFunc)BgJyaGoroiwa_Init,
    (ActorFunc)BgJyaGoroiwa_Destroy,
    (ActorFunc)BgJyaGoroiwa_Update,
    (ActorFunc)BgJyaGoroiwa_Draw,
};
extern Gfx D_060006B0[];

static ColliderJntSphItemInit sJntSphItemsInit[] = {
    {
        { 0x00, { 0x20000000, 0x00, 0x04 }, { 0x00000000, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 0, { { 0, 0, 0 }, 58 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    { COLTYPE_UNK10, 0x11, 0x00, 0x39, 0x20, COLSHAPE_JNTSPH },
    1,
    sJntSphItemsInit,
};

static CollisionCheckInfoInit sColChkInfoInit = { 0x01, 0xF, 0x0, 0xFE };

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_STOP),
};

void func_80897970(BgJyaGoroiwa* this) {
    Sphere16* worldSphere = &this->collider.list->dim.worldSphere;

    worldSphere->center.x = this->actor.posRot.pos.x;
    worldSphere->center.y = (s32)(this->actor.posRot.pos.y + 59.5f);
    worldSphere->center.z = this->actor.posRot.pos.z;
}

void func_808979C0(BgJyaGoroiwa* this, GlobalContext* globalCtx) {
    s32 pad;

    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, &this->actor, &sJntSphInit, &this->colliderItem);
    func_80897970(this);
    this->collider.list->dim.worldSphere.radius = 0x3A;
}

void func_80897A2C(BgJyaGoroiwa* this) {
    Actor* thisx = &this->actor;
    f32 rotFactor = 175.30046f;
    f32 posDiff = thisx->posRot.pos.x - thisx->pos4.x;

    thisx->shape.rot.z -= rotFactor * posDiff;
}

void BgJyaGoroiwa_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaGoroiwa* this = THIS;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    func_808979C0(this, globalCtx);
    this->actor.shape.rot.z = 0;
    this->actor.shape.rot.y = this->actor.shape.rot.z;
    this->actor.shape.rot.x = this->actor.shape.rot.z;
    func_80061ED4(&this->actor.colChkInfo, NULL, &sColChkInfoInit);
    ActorShape_Init(&this->actor.shape, 595.0f, &ActorShadow_DrawFunc_Circle, 9.0f);
    this->actor.shape.unk_14 = 0x80;
    func_80897B1C(this);
}

void BgJyaGoroiwa_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaGoroiwa* this = THIS;

    Collider_DestroyJntSph(globalCtx, &this->collider);
}

void func_80897B1C(BgJyaGoroiwa* this) {
    this->actionFunc = func_80897B48;
    this->collider.base.atFlags = this->collider.base.atFlags | 1;
    this->unk_1B4 = 0;
    this->unk_1B0 = 1.0f;
}

void func_80897B48(BgJyaGoroiwa* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->actor;
    f32 tmpf2;
    s16 tmp16;
    f32 tmpf1 = (-100.0f - thisx->posRot.pos.y) * 2.5f;

    if (tmpf1 < 0.01f) {
        tmpf1 = 0.01f;
    }

    thisx->speedXZ = (sqrtf(tmpf1) * this->unk_1B0);
    thisx->velocity.x = (Math_SinS(thisx->posRot.rot.y) * thisx->speedXZ);

    tmpf2 = Math_CosS(thisx->posRot.rot.y) * thisx->speedXZ;
    thisx->velocity.z = tmpf2;
    thisx->posRot.pos.x = thisx->posRot.pos.x + thisx->velocity.x;
    thisx->posRot.pos.z = thisx->posRot.pos.z + tmpf2;

    if ((1466.0f < thisx->posRot.pos.x) && (thisx->posRot.pos.x < 1673.0f)) {
        thisx->posRot.pos.y = -129.5f;
    } else {
        tmpf2 = 1569.0f - thisx->posRot.pos.x;
        tmpf1 = fabsf(tmpf2) - 103.0f;
        thisx->posRot.pos.y = (0.38043478f * tmpf1) - 129.5f;
    }

    if (this->collider.base.atFlags & 2) {
        this->collider.base.atFlags &= ~3;

        tmp16 = thisx->yawTowardsLink - thisx->posRot.rot.y;
        if ((tmp16 >= -0x3FFF) && (tmp16 < 0x4000)) {
            thisx->posRot.rot.y += 0x8000;
        }

        func_8002F6D4(globalCtx, thisx, 2.0f, thisx->yawTowardsLink, 0.0f, 0);
        func_8002F7DC(&PLAYER->actor, NA_SE_PL_BODY_HIT);

        this->unk_1B8 = 10.0f;
        this->unk_1B0 = 0.5f;
        this->unk_1B4 = 1;
    }

    if (this->unk_1B4) {
        this->unk_1B8 -= 1.5f;
        thisx->shape.unk_08 += this->unk_1B8 * 10.0f;
        if (thisx->shape.unk_08 < 595.0f) {
            thisx->shape.unk_08 = 595.0f;
            func_80897DDC(this);
        }
    } else {
        Math_StepToF(&this->unk_1B0, 1.0f, 0.04f);
    }

    if (thisx->posRot.pos.x > 1745.0f) {
        thisx->posRot.rot.y = -0x4000;
    } else if (thisx->posRot.pos.x < 1393.0f) {
        thisx->posRot.rot.y = 0x4000;
    }

    Audio_PlayActorSound2(thisx, NA_SE_EV_BIGBALL_ROLL - SFX_FLAG);
}

void func_80897DDC(BgJyaGoroiwa* this) {
    this->actionFunc = func_80897DF0;
    this->unk_1B6 = 0;
}

void func_80897DF0(BgJyaGoroiwa* this, GlobalContext* globalCtx) {
    this->unk_1B6++;
    if (this->unk_1B6 >= 0x3D) {
        func_80897B1C(this);
        this->unk_1B0 = 0.1f;
    }
}

void BgJyaGoroiwa_Update(Actor* thisx, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 pad;
    BgJyaGoroiwa* this = THIS;
    UNK_PTR sp38;
    Vec3f pos;

    if (!(player->stateFlags1 & 0x300000C0)) {
        this->actionFunc(this, globalCtx);
        func_80897A2C(this);
        pos.x = this->actor.posRot.pos.x;
        pos.y = this->actor.posRot.pos.y + 59.5f;
        pos.z = this->actor.posRot.pos.z;
        this->actor.groundY =
            BgCheck_EntityRaycastFloor4(&globalCtx->colCtx, &this->actor.floorPoly, &sp38, &this->actor, &pos);
        func_80897970(this);
        if (this->collider.base.atFlags & 1) {
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }
}

void BgJyaGoroiwa_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaGoroiwa* this = THIS;

    Gfx_DrawDListOpa(globalCtx, D_060006B0);
}
