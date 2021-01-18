/*
 * File: z_en_kusa.c
 * Overlay: ovl_en_kusa
 * Description: Bush
 */

#include "z_en_kusa.h"
#include "overlays/effects/ovl_Effect_Ss_Kakera/z_eff_ss_kakera.h"
#include "vt.h"

#define FLAGS 0x00800010

#define THIS ((EnKusa*)thisx)

void EnKusa_Init(Actor* thisx, GlobalContext* globalCtx);
void EnKusa_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnKusa_Update(Actor* thisx, GlobalContext* globalCtx);
void EnKusa_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnKusa_SetupLiftedUp(EnKusa* this);
void func_80A9B7EC(EnKusa* this);
void func_80A9B89C(EnKusa* this);
void func_80A9BBB0(EnKusa* this);
void func_80A9BEAC(EnKusa* this);
void func_80A9BF3C(EnKusa* this);
void func_80A9C00C(EnKusa* this);

void func_80A9BC1C(EnKusa* this, GlobalContext* globalCtx);
void func_80A9B810(EnKusa* this, GlobalContext* globalCtx);
void func_80A9B8D8(EnKusa* this, GlobalContext* globalCtx);
void EnKusa_LiftedUp(EnKusa* this, GlobalContext* globalCtx);
void func_80A9BEFC(EnKusa* this, GlobalContext* globalCtx);
void func_80A9BF30(EnKusa* this, GlobalContext* globalCtx);
void func_80A9BFA8(EnKusa* this, GlobalContext* globalCtx);
void func_80A9C068(EnKusa* this, GlobalContext* globalCtx);

s16 D_80A9C1D0 = 0;
s16 D_80A9C1D4 = 0;
s16 D_80A9C1D8 = 0;
s16 D_80A9C1DC = 0;

const ActorInit En_Kusa_InitVars = {
    ACTOR_EN_KUSA,
    ACTORCAT_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnKusa),
    (ActorFunc)EnKusa_Init,
    (ActorFunc)EnKusa_Destroy,
    (ActorFunc)EnKusa_Update,
    NULL,
};

static s16 sObjectIds[] = { OBJECT_GAMEPLAY_FIELD_KEEP, OBJECT_KUSA, OBJECT_KUSA };

static ColliderCylinderInit sCylinderInit = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_PLAYER | OC1_TYPE_2,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x4FC00758, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_ON,
    },
    { 12, 44, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit sColChkInfoInit = { 0, 12, 30, MASS_IMMOVABLE };

static Vec3f D_80A9C23C[] = {
    { 0.0f, 0.7071f, 0.7071f },
    { 0.7071f, 0.7071f, 0.0f },
    { 0.0f, 0.7071f, -0.7071f },
    { -0.7071f, 0.7071f, 0.0f },
};

s16 D_80A9C26C[] = { 108, 102, 96, 84, 66, 55, 42, 38 };

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 400, ICHAIN_CONTINUE),         ICHAIN_F32_DIV1000(gravity, -3200, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(minVelocityY, -17000, ICHAIN_CONTINUE), ICHAIN_F32(uncullZoneForward, 1200, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 100, ICHAIN_CONTINUE),         ICHAIN_F32(uncullZoneDownward, 120, ICHAIN_STOP),
};

extern Gfx D_060002E0[];
extern Gfx D_040355E0[]; // bush fragments 1
extern Gfx D_040356A0[]; // bush fragments 2

void EnKusa_SetupAction(EnKusa* this, EnKusaActionFunc actionFunc) {
    this->timer = 0;
    this->actionFunc = actionFunc;
}

s32 EnKusa_SnapToFloor(EnKusa* this, GlobalContext* globalCtx, f32 yOffset) {
    s32 pad;
    CollisionPoly* poly;
    Vec3f pos;
    s32 bgId;
    f32 floorY;

    pos.x = this->actor.world.pos.x;
    pos.y = this->actor.world.pos.y + 30.0f;
    pos.z = this->actor.world.pos.z;

    floorY = BgCheck_EntityRaycastFloor4(&globalCtx->colCtx, &poly, &bgId, &this->actor, &pos);

    if (floorY > BGCHECK_Y_MIN) {
        this->actor.world.pos.y = floorY + yOffset;
        Math_Vec3f_Copy(&this->actor.home.pos, &this->actor.world.pos);
        return true;
    } else {
        osSyncPrintf(VT_COL(YELLOW, BLACK));
        // Translation: Failure attaching to ground
        osSyncPrintf("地面に付着失敗(%s %d)\n", "../z_en_kusa.c", 323);
        osSyncPrintf(VT_RST);
        return false;
    }
}

void EnKusa_DropCollectible(EnKusa* this, GlobalContext* globalCtx) {
    s16 dropParams;

    switch (this->actor.params & 3) {
        case 0:
        case 2:
            dropParams = (this->actor.params >> 8) & 0xF;

            if (dropParams >= 0xD) {
                dropParams = 0;
            }
            Item_DropCollectibleRandom(globalCtx, NULL, &this->actor.world.pos, dropParams << 4);
            break;
        case 1:
            if (Rand_ZeroOne() < 0.5f) {
                Item_DropCollectible(globalCtx, &this->actor.world.pos, ITEM00_SEEDS);
            } else {
                Item_DropCollectible(globalCtx, &this->actor.world.pos, ITEM00_HEART);
            }
            break;
    }
}

void EnKusa_Fall(EnKusa* this) {
    this->actor.velocity.y += this->actor.gravity;

    if (this->actor.velocity.y < this->actor.minVelocityY) {
        this->actor.velocity.y = this->actor.minVelocityY;
    }
}

void func_80A9B174(Vec3f* vec, f32 arg1) {
    arg1 += ((Rand_ZeroOne() * 0.2f) - 0.1f) * arg1;
    vec->x -= vec->x * arg1;
    vec->y -= vec->y * arg1;
    vec->z -= vec->z * arg1;
}

void EnKusa_SetScale(EnKusa* this) {
    this->actor.scale.y = 0.16000001f;
    this->actor.scale.x = 0.120000005f;
    this->actor.scale.z = 0.120000005f;
}

void EnKusa_SpawnFragments(EnKusa* this, GlobalContext* globalCtx) {
    Vec3f velocity;
    Vec3f pos;
    s32 i;
    s32 index;
    Vec3f* scale;
    s32 pad;

    for (i = 0; i < ARRAY_COUNT(D_80A9C23C); i++) {
        scale = &D_80A9C23C[i];

        pos.x = this->actor.world.pos.x + (scale->x * this->actor.scale.x * 20.0f);
        pos.y = this->actor.world.pos.y + (scale->y * this->actor.scale.y * 20.0f) + 10.0f;
        pos.z = this->actor.world.pos.z + (scale->z * this->actor.scale.z * 20.0f);

        velocity.x = (Rand_ZeroOne() - 0.5f) * 8.0f;
        velocity.y = Rand_ZeroOne() * 10.0f;
        velocity.z = (Rand_ZeroOne() - 0.5f) * 8.0f;

        index = (s32)(Rand_ZeroOne() * 111.1f) & 7;

        EffectSsKakera_Spawn(globalCtx, &pos, &velocity, &pos, -100, 64, 40, 3, 0, D_80A9C26C[index], 0, 0, 80,
                             KAKERA_COLOR_NONE, OBJECT_GAMEPLAY_KEEP, D_040355E0);

        pos.x = this->actor.world.pos.x + (scale->x * this->actor.scale.x * 40.0f);
        pos.y = this->actor.world.pos.y + (scale->y * this->actor.scale.y * 40.0f) + 10.0f;
        pos.z = this->actor.world.pos.z + (scale->z * this->actor.scale.z * 40.0f);

        velocity.x = (Rand_ZeroOne() - 0.5f) * 6.0f;
        velocity.y = Rand_ZeroOne() * 10.0f;
        velocity.z = (Rand_ZeroOne() - 0.5f) * 6.0f;

        index = (s32)(Rand_ZeroOne() * 111.1f) % 7;

        EffectSsKakera_Spawn(globalCtx, &pos, &velocity, &pos, -100, 64, 40, 3, 0, D_80A9C26C[index], 0, 0, 80,
                             KAKERA_COLOR_NONE, OBJECT_GAMEPLAY_KEEP, D_040356A0);
    }
}

void EnKusa_SpawnBugs(EnKusa* this, GlobalContext* globalCtx) {
    s32 i;

    for (i = 0; i < 3; i++) {
        Actor* bug = Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_INSECT, this->actor.world.pos.x,
                                 this->actor.world.pos.y, this->actor.world.pos.z, 0, Rand_ZeroOne() * 0xFFFF, 0, 1);

        if (bug == NULL) {
            break;
        }
    }
}

void EnKusa_InitCollider(Actor* thisx, GlobalContext* globalCtx) {
    EnKusa* this = THIS;

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    Collider_UpdateCylinder(&this->actor, &this->collider);
}

void EnKusa_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnKusa* this = THIS;

    Actor_ProcessInitChain(&this->actor, sInitChain);

    if (globalCtx->csCtx.state != 0) {
        this->actor.uncullZoneForward += 1000.0f;
    }

    EnKusa_InitCollider(thisx, globalCtx);
    CollisionCheck_SetInfo(&this->actor.colChkInfo, NULL, &sColChkInfoInit);

    if (this->actor.shape.rot.y == 0) {
        s16 rand = Rand_ZeroFloat(0x10000);

        this->actor.world.rot.y = rand;
        this->actor.home.rot.y = rand;
        this->actor.shape.rot.y = rand;
    }

    if (!EnKusa_SnapToFloor(this, globalCtx, 0.0f)) {
        Actor_Kill(&this->actor);
        return;
    }

    this->kusaTexObjIndex = Object_GetIndex(&globalCtx->objectCtx, sObjectIds[thisx->params & 3]);

    if (this->kusaTexObjIndex < 0) {
        // Bank danger!
        osSyncPrintf("Error : バンク危険！ (arg_data 0x%04x)(%s %d)\n", thisx->params, "../z_en_kusa.c", 561);
        Actor_Kill(&this->actor);
        return;
    }

    func_80A9B7EC(this);
}

void EnKusa_Destroy(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    EnKusa* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void func_80A9B7EC(EnKusa* this) {
    EnKusa_SetupAction(this, func_80A9B810);
}

void func_80A9B810(EnKusa* this, GlobalContext* globalCtx) {
    if (Object_IsLoaded(&globalCtx->objectCtx, this->kusaTexObjIndex)) {
        if (this->actor.flags & 0x800) {
            func_80A9BEAC(this);
        } else {
            func_80A9B89C(this);
        }

        this->actor.draw = EnKusa_Draw;
        this->actor.objBankIndex = this->kusaTexObjIndex;
        this->actor.flags &= ~0x10;
    }
}

void func_80A9B89C(EnKusa* this) {
    EnKusa_SetupAction(this, func_80A9B8D8);
    this->actor.flags &= ~0x10;
}

void func_80A9B8D8(EnKusa* this, GlobalContext* globalCtx) {
    s32 pad;

    if (Actor_HasParent(&this->actor, globalCtx)) {
        EnKusa_SetupLiftedUp(this);
        Audio_PlaySoundAtPosition(globalCtx, &this->actor.world.pos, 20, NA_SE_PL_PULL_UP_PLANT);
    } else if (this->collider.base.acFlags & AC_HIT) {
        this->collider.base.acFlags &= ~AC_HIT;
        EnKusa_SpawnFragments(this, globalCtx);
        EnKusa_DropCollectible(this, globalCtx);
        Audio_PlaySoundAtPosition(globalCtx, &this->actor.world.pos, 20, NA_SE_EV_PLANT_BROKEN);

        if ((this->actor.params >> 4) & 1) {
            EnKusa_SpawnBugs(this, globalCtx);
        }

        if ((this->actor.params & 3) == 0) {
            Actor_Kill(&this->actor);
            return;
        }

        func_80A9BEAC(this);
        this->actor.flags |= 0x800;
    } else {
        if (!(this->collider.base.ocFlags1 & OC1_TYPE_PLAYER) && (this->actor.xzDistToPlayer > 12.0f)) {
            this->collider.base.ocFlags1 |= OC1_TYPE_PLAYER;
        }

        if (this->actor.xzDistToPlayer < 600.0f) {
            Collider_UpdateCylinder(&this->actor, &this->collider);
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);

            if (this->actor.xzDistToPlayer < 400.0f) {
                CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
                if (this->actor.xzDistToPlayer < 100.0f) {
                    func_8002F580(&this->actor, globalCtx);
                }
            }
        }
    }
}

void EnKusa_SetupLiftedUp(EnKusa* this) {
    EnKusa_SetupAction(this, EnKusa_LiftedUp);
    this->actor.room = -1;
    this->actor.flags |= 0x10;
}

void EnKusa_LiftedUp(EnKusa* this, GlobalContext* globalCtx) {
    if (Actor_HasNoParent(&this->actor, globalCtx)) {
        this->actor.room = globalCtx->roomCtx.curRoom.num;
        func_80A9BBB0(this);
        this->actor.velocity.x = this->actor.speedXZ * Math_SinS(this->actor.world.rot.y);
        this->actor.velocity.z = this->actor.speedXZ * Math_CosS(this->actor.world.rot.y);
        this->actor.colChkInfo.mass = 240;
        this->actor.gravity = -0.1f;
        EnKusa_Fall(this);
        func_80A9B174(&this->actor.velocity, 0.005f);
        func_8002D7EC(&this->actor);
        Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 7.5f, 35.0f, 0.0f, 0xC5);
        this->actor.gravity = -3.2f;
    }
}

void func_80A9BBB0(EnKusa* this) {
    EnKusa_SetupAction(this, func_80A9BC1C);
    D_80A9C1D0 = -0xBB8;
    D_80A9C1D8 = ((Rand_ZeroOne() - 0.5f) * 1600.0f);
    D_80A9C1D4 = 0;
    D_80A9C1DC = 0;
}

void func_80A9BC1C(EnKusa* this, GlobalContext* globalCtx) {
    s32 pad;
    Vec3f contactPos;

    if (this->actor.bgCheckFlags & 11) {
        if (!(this->actor.bgCheckFlags & 32)) {
            Audio_PlaySoundAtPosition(globalCtx, &this->actor.world.pos, 20, NA_SE_EV_PLANT_BROKEN);
        }
        EnKusa_SpawnFragments(this, globalCtx);
        EnKusa_DropCollectible(this, globalCtx);
        switch (this->actor.params & 3) {
            case 0:
            case 2:
                Actor_Kill(&this->actor);
                break;

            case 1:
                func_80A9BF3C(this);
                break;
        }
    } else {
        if (this->actor.bgCheckFlags & 0x40) {
            contactPos.x = this->actor.world.pos.x;
            contactPos.y = this->actor.world.pos.y + this->actor.yDistToWater;
            contactPos.z = this->actor.world.pos.z;
            EffectSsGSplash_Spawn(globalCtx, &contactPos, NULL, NULL, 0, 400);
            EffectSsGRipple_Spawn(globalCtx, &contactPos, 150, 650, 0);
            EffectSsGRipple_Spawn(globalCtx, &contactPos, 400, 800, 4);
            EffectSsGRipple_Spawn(globalCtx, &contactPos, 500, 1100, 8);
            this->actor.minVelocityY = -3.0f;
            D_80A9C1D4 >>= 1;
            D_80A9C1D0 >>= 1;
            D_80A9C1DC >>= 1;
            D_80A9C1D8 >>= 1;
            this->actor.bgCheckFlags &= ~0x40;
            Audio_PlaySoundAtPosition(globalCtx, &this->actor.world.pos, 40, NA_SE_EV_DIVE_INTO_WATER_L);
        }
        EnKusa_Fall(this);
        Math_StepToS(&D_80A9C1D4, D_80A9C1D0, 0x1F4);
        Math_StepToS(&D_80A9C1DC, D_80A9C1D8, 0xAA);
        this->actor.shape.rot.x += D_80A9C1D4;
        this->actor.shape.rot.y += D_80A9C1DC;
        func_80A9B174(&this->actor.velocity, 0.05f);
        func_8002D7EC(&this->actor);
        Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 7.5f, 35.0f, 0.0f, 0xC5);
        Collider_UpdateCylinder(&this->actor, &this->collider);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }
}

void func_80A9BEAC(EnKusa* this) {

    if ((this->actor.params & 3) != 1) {
        if ((this->actor.params & 3) == 2) {
            EnKusa_SetupAction(this, func_80A9BF30);
        }
    } else {
        EnKusa_SetupAction(this, func_80A9BEFC);
    }
}

void func_80A9BEFC(EnKusa* this, GlobalContext* globalCtx) {
    if (this->timer >= 120) {
        func_80A9C00C(this);
    }
}

void func_80A9BF30(EnKusa* this, GlobalContext* globalCtx) {
}

void func_80A9BF3C(EnKusa* this) {
    this->actor.world.pos.x = this->actor.home.pos.x;
    this->actor.world.pos.y = this->actor.home.pos.y - 9.0f;
    this->actor.world.pos.z = this->actor.home.pos.z;
    EnKusa_SetScale(this);
    this->actor.shape.rot = this->actor.home.rot;
    EnKusa_SetupAction(this, func_80A9BFA8);
}

void func_80A9BFA8(EnKusa* this, GlobalContext* globalCtx) {
    if (this->timer > 120) {
        if ((Math_StepToF(&this->actor.world.pos.y, this->actor.home.pos.y, 0.6f)) && (this->timer >= 170)) {
            func_80A9C00C(this);
        }
    }
}

void func_80A9C00C(EnKusa* this) {
    EnKusa_SetupAction(this, func_80A9C068);
    EnKusa_SetScale(this);
    this->actor.shape.rot = this->actor.home.rot;
    this->actor.flags &= ~0x800;
}

void func_80A9C068(EnKusa* this, GlobalContext* globalCtx) {
    s32 sp24;

    sp24 = Math_StepToF(&this->actor.scale.y, 0.4f, 0.014f) & 1;
    sp24 &= Math_StepToF(&this->actor.scale.x, 0.4f, 0.011f);
    this->actor.scale.z = this->actor.scale.x;

    if (sp24) {
        Actor_SetScale(&this->actor, 0.4f);
        func_80A9B89C(this);
        this->collider.base.ocFlags1 &= ~OC1_TYPE_PLAYER;
    }
}

void EnKusa_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnKusa* this = THIS;

    this->timer++;

    this->actionFunc(this, globalCtx);

    if (this->actor.flags & 0x800) {
        this->actor.shape.yOffset = -6.25f;
    } else {
        this->actor.shape.yOffset = 0.0f;
    }
}

void EnKusa_Draw(Actor* thisx, GlobalContext* globalCtx) {
    static Gfx* dLists[] = { 0x0500B9D0, 0x06000140, 0x06000140 };
    EnKusa* this = THIS;

    if (this->actor.flags & 0x800) {
        Gfx_DrawDListOpa(globalCtx, D_060002E0);
    } else {
        Gfx_DrawDListOpa(globalCtx, dLists[thisx->params & 3]);
    }
}
