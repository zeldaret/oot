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
    ACTORCAT_PROP,
    FLAGS,
    OBJECT_GOROIWA,
    sizeof(BgJyaGoroiwa),
    (ActorFunc)BgJyaGoroiwa_Init,
    (ActorFunc)BgJyaGoroiwa_Destroy,
    (ActorFunc)BgJyaGoroiwa_Update,
    (ActorFunc)BgJyaGoroiwa_Draw,
};
extern Gfx D_060006B0[];

static ColliderJntSphElementInit sJntSphElementsInit[] = {
    {
        {
            ELEMTYPE_UNK0,
            { 0x20000000, 0x00, 0x04 },
            { 0x00000000, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_NONE,
            OCELEM_ON,
        },
        { 0, { { 0, 0, 0 }, 58 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    {
        COLTYPE_NONE,
        AT_ON | AT_TYPE_ENEMY,
        AC_NONE,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_2,
        COLSHAPE_JNTSPH,
    },
    1,
    sJntSphElementsInit,
};

static CollisionCheckInfoInit sColChkInfoInit = { 1, 15, 0, MASS_HEAVY };

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_STOP),
};

void func_80897970(BgJyaGoroiwa* this) {
    Sphere16* worldSphere = &this->collider.elements[0].dim.worldSphere;

    worldSphere->center.x = this->actor.world.pos.x;
    worldSphere->center.y = (s32)(this->actor.world.pos.y + 59.5f);
    worldSphere->center.z = this->actor.world.pos.z;
}

void func_808979C0(BgJyaGoroiwa* this, GlobalContext* globalCtx) {
    s32 pad;

    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, &this->actor, &sJntSphInit, &this->colliderItem);
    func_80897970(this);
    this->collider.elements[0].dim.worldSphere.radius = 58;
}

void func_80897A2C(BgJyaGoroiwa* this) {
    f32 posDiff = this->actor.world.pos.x - this->actor.prevPos.x;

    this->actor.shape.rot.z -= 0x10000 / (119 * M_PI) * posDiff;
}

void BgJyaGoroiwa_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaGoroiwa* this = THIS;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    func_808979C0(this, globalCtx);
    this->actor.shape.rot.x = this->actor.shape.rot.y = this->actor.shape.rot.z = 0;
    CollisionCheck_SetInfo(&this->actor.colChkInfo, NULL, &sColChkInfoInit);
    ActorShape_Init(&this->actor.shape, 595.0f, ActorShadow_DrawCircle, 9.0f);
    this->actor.shape.shadowAlpha = 128;
    func_80897B1C(this);
}

void BgJyaGoroiwa_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaGoroiwa* this = THIS;

    Collider_DestroyJntSph(globalCtx, &this->collider);
}

void func_80897B1C(BgJyaGoroiwa* this) {
    this->actionFunc = func_80897B48;
    this->collider.base.atFlags |= AT_ON;
    this->unk_1B4 = 0;
    this->unk_1B0 = 1.0f;
}

void func_80897B48(BgJyaGoroiwa* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->actor;
    f32 tmpf2;
    s16 tmp16;
    f32 tmpf1 = (-100.0f - thisx->world.pos.y) * 2.5f;

    if (tmpf1 < 0.01f) {
        tmpf1 = 0.01f;
    }

    thisx->speedXZ = (sqrtf(tmpf1) * this->unk_1B0);
    thisx->velocity.x = (Math_SinS(thisx->world.rot.y) * thisx->speedXZ);

    tmpf2 = Math_CosS(thisx->world.rot.y) * thisx->speedXZ;
    thisx->velocity.z = tmpf2;
    thisx->world.pos.x = thisx->world.pos.x + thisx->velocity.x;
    thisx->world.pos.z = thisx->world.pos.z + tmpf2;

    if ((1466.0f < thisx->world.pos.x) && (thisx->world.pos.x < 1673.0f)) {
        thisx->world.pos.y = -129.5f;
    } else {
        tmpf2 = 1569.0f - thisx->world.pos.x;
        tmpf1 = fabsf(tmpf2) - 103.0f;
        thisx->world.pos.y = (0.38043478f * tmpf1) - 129.5f;
    }

    if (this->collider.base.atFlags & AT_HIT) {
        this->collider.base.atFlags &= ~AT_HIT & ~AT_ON;

        tmp16 = thisx->yawTowardsPlayer - thisx->world.rot.y;
        if ((tmp16 >= -0x3FFF) && (tmp16 < 0x4000)) {
            thisx->world.rot.y += 0x8000;
        }

        func_8002F6D4(globalCtx, thisx, 2.0f, thisx->yawTowardsPlayer, 0.0f, 0);
        func_8002F7DC(&PLAYER->actor, NA_SE_PL_BODY_HIT);

        this->unk_1B8 = 10.0f;
        this->unk_1B0 = 0.5f;
        this->unk_1B4 = 1;
    }

    if (this->unk_1B4) {
        this->unk_1B8 -= 1.5f;
        thisx->shape.yOffset += this->unk_1B8 * 10.0f;
        if (thisx->shape.yOffset < 595.0f) {
            thisx->shape.yOffset = 595.0f;
            func_80897DDC(this);
        }
    } else {
        Math_StepToF(&this->unk_1B0, 1.0f, 0.04f);
    }

    if (thisx->world.pos.x > 1745.0f) {
        thisx->world.rot.y = -0x4000;
    } else if (thisx->world.pos.x < 1393.0f) {
        thisx->world.rot.y = 0x4000;
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
        pos.x = this->actor.world.pos.x;
        pos.y = this->actor.world.pos.y + 59.5f;
        pos.z = this->actor.world.pos.z;
        this->actor.floorHeight =
            BgCheck_EntityRaycastFloor4(&globalCtx->colCtx, &this->actor.floorPoly, &sp38, &this->actor, &pos);
        func_80897970(this);
        if (this->collider.base.atFlags & AT_ON) {
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }
}

void BgJyaGoroiwa_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaGoroiwa* this = THIS;

    Gfx_DrawDListOpa(globalCtx, D_060006B0);
}
