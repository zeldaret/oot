/*
 * File: z_bg_jya_haheniron
 * Overlay: ovl_Bg_Jya_Haheniron
 * Description: Chunks of Iron Knucle Chair and Pillar
 */

#include "z_bg_jya_haheniron.h"
#include "overlays/effects/ovl_Effect_Ss_Kakera/z_eff_ss_kakera.h"

#define FLAGS 0x00000010

#define THIS ((BgJyaHaheniron*)thisx)

void BgJyaHaheniron_Init(Actor* thisx, GlobalContext* globalCtx);
void BgJyaHaheniron_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgJyaHaheniron_Update(Actor* thisx, GlobalContext* globalCtx);
void BgJyaHaheniron_Draw(Actor* thisx, GlobalContext* globalCtx);

void BgJyaHaheniron_SetupChairCrumble(BgJyaHaheniron* this);
void BgJyaHaheniron_ChairCrumble(BgJyaHaheniron* this, GlobalContext* globalCtx);
void BgJyaHaheniron_SetupPillarCrumble(BgJyaHaheniron* this);
void BgJyaHaheniron_PillarCrumble(BgJyaHaheniron* this, GlobalContext* globalCtx);
void BgJyaHaheniron_SetupRubbleCollide(BgJyaHaheniron* this);
void BgJyaHaheniron_RubbleCollide(BgJyaHaheniron* this, GlobalContext* globalCtx);

const ActorInit Bg_Jya_Haheniron_InitVars = {
    ACTOR_BG_JYA_HAHENIRON,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_JYA_IRON,
    sizeof(BgJyaHaheniron),
    (ActorFunc)BgJyaHaheniron_Init,
    (ActorFunc)BgJyaHaheniron_Destroy,
    (ActorFunc)BgJyaHaheniron_Update,
    (ActorFunc)BgJyaHaheniron_Draw,
};

static ColliderJntSphItemInit sJntSphItemsInit[1] = {
    {
        { 0x00, { 0xFFCFFFFF, 0x00, 0x04 }, { 0x00000000, 0x00, 0x00 }, 0x01, 0x00, 0x00 },
        { 0, { { 0, 0, 0 }, 10 }, 100 },
    },
};

static ColliderJntSphInit D_80898764 = {
    { COLTYPE_UNK10, 0x11, 0x01, 0x00, 0x00, COLSHAPE_JNTSPH },
    1,
    sJntSphItemsInit,
};

static s16 sKakeraScales[] = { 5, 8, 11, 14, 17 };

static InitChainEntry sInitChain[] = {
    ICHAIN_F32_DIV1000(gravity, -2000, ICHAIN_CONTINUE),  ICHAIN_F32_DIV1000(minVelocityY, -15000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1000, ICHAIN_CONTINUE), ICHAIN_F32(uncullZoneScale, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_STOP),
};

f32 D_80898794[] = { 0.13f, 0.1f, 0.1f };

Vec3f D_808987A0[] = { 0.0f, 14.0f, 0.0f };

Vec3f D_808987AC[] = { 0.0f, 8.0f, 0.0f };

extern Gfx D_06000880[];

void BgJyaHaheniron_ColliderInit(BgJyaHaheniron* this, GlobalContext* globalCtx) {
    s32 pad;
    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, &this->actor, &D_80898764, this->colliderItems);
}

void BgJyaHaheniron_SpawnFragments(GlobalContext* globalCtx, Vec3f* vec1, Vec3f* vec2) {
    Vec3f vel;
    Vec3f pos;
    s16 arg5;
    s32 angle;
    s32 i;
    f32 rand1;

    for (angle = 0, i = 0; i < ARRAY_COUNT(sKakeraScales); i++) {
        rand1 = Rand_ZeroOne() * 10.0f;
        vel.x = (Math_SinS(angle) * rand1) + vec2->x;
        vel.y = (Rand_ZeroOne() * 10.0f) + vec2->y;
        vel.z = (Math_CosS(angle) * rand1) + vec2->z;

        rand1 = Rand_ZeroOne();
        if (rand1 < 0.2f) {
            arg5 = 96;
        } else if (rand1 < 0.8f) {
            arg5 = 64;
        } else {
            arg5 = 32;
        }

        EffectSsKakera_Spawn(globalCtx, vec1, &vel, vec1, -350, arg5, 40, 4, 0, sKakeraScales[i], 0, 20, 40,
                             KAKERA_COLOR_NONE, OBJECT_JYA_IRON, &D_06000880);
        angle += 0x3333;
    }
    pos.x = vec1->x + (vec2->x * 5.0f);
    pos.y = vec1->y + (vec2->y * 5.0f);
    pos.z = vec1->z + (vec2->z * 5.0f);
    func_80033480(globalCtx, &pos, 100.0f, 4, 100, 160, 1);
}

void BgJyaHaheniron_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaHaheniron* this = THIS;
    Actor_ProcessInitChain(thisx, sInitChain);
    Actor_SetScale(&this->actor, D_80898794[this->actor.params]);
    if (thisx->params == 0) {
        BgJyaHaheniron_ColliderInit(this, globalCtx);
        thisx->shape.rot.z = (Rand_ZeroOne() * 65535.0f);
        BgJyaHaheniron_SetupChairCrumble(this);
    } else if (thisx->params == 1) {
        BgJyaHaheniron_SetupPillarCrumble(this);
    } else if (thisx->params == 2) {
        BgJyaHaheniron_SetupRubbleCollide(this);
    }
}

void BgJyaHaheniron_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    if (thisx->params == 0) {
        Collider_DestroyJntSph(globalCtx, &THIS->collider);
    }
}

void BgJyaHaheniron_SetupChairCrumble(BgJyaHaheniron* this) {
    this->actionFunc = BgJyaHaheniron_ChairCrumble;
}

void BgJyaHaheniron_ChairCrumble(BgJyaHaheniron* this, GlobalContext* globalCtx) {
    Vec3f vec;

    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx, &this->actor, 5.0f, 8.0f, 0.0f, 0x85);
    if ((this->actor.bgCheckFlags & 9) ||
        ((this->collider.base.atFlags & 2) && (this->collider.base.at) && (this->collider.base.at->type == 2))) {
        vec.x = -Rand_ZeroOne() * this->actor.velocity.x;
        vec.y = -Rand_ZeroOne() * this->actor.velocity.y;
        vec.z = -Rand_ZeroOne() * this->actor.velocity.z;
        BgJyaHaheniron_SpawnFragments(globalCtx, &this->actor.posRot, &vec);
        Actor_Kill(&this->actor);
    } else if (this->timer >= 61) {
        Actor_Kill(&this->actor);
    } else {
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider);
    }
    this->actor.shape.rot.y += 0x4B0;
    this->actor.shape.rot.x += 0xFA0;
}

void BgJyaHaheniron_SetupPillarCrumble(BgJyaHaheniron* this) {
    this->actionFunc = BgJyaHaheniron_PillarCrumble;
}

void BgJyaHaheniron_PillarCrumble(BgJyaHaheniron* this, GlobalContext* globalCtx) {
    if (this->timer >= 8) {
        Actor_MoveForward(&this->actor);
    } else if (this->timer >= 17) {
        BgJyaHaheniron_SpawnFragments(globalCtx, &this->actor.posRot, D_808987A0);
        Actor_Kill(&this->actor);
    }
    this->actor.shape.rot.y += 0x258;
    this->actor.shape.rot.x += 0x3E8;
}

void BgJyaHaheniron_SetupRubbleCollide(BgJyaHaheniron* this) {
    this->actionFunc = BgJyaHaheniron_RubbleCollide;
}

void BgJyaHaheniron_RubbleCollide(BgJyaHaheniron* this, GlobalContext* globalCtx) {
    if (this->timer >= 17) {
        BgJyaHaheniron_SpawnFragments(globalCtx, &this->actor.posRot, D_808987AC);
        Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot, 80, NA_SE_EN_IRONNACK_BREAK_PILLAR2);
        Actor_Kill(&this->actor);
    }
}

void BgJyaHaheniron_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaHaheniron* this = THIS;
    this->timer++;
    this->actionFunc(this, globalCtx);
}

void BgJyaHaheniron_Draw(Actor* thisx, GlobalContext* globalCtx) {
    static Gfx* dLists[] = { 0x06000880, 0x06000AE0, 0x06000600 };
    BgJyaHaheniron* this = THIS;

    if (thisx->params == 0) {
        func_800628A4(0, &this->collider);
    }
    Gfx_DrawDListOpa(globalCtx, dLists[thisx->params]);
}
