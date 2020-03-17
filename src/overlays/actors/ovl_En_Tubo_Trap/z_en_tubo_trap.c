/*
 * File: z_en_tubo_trap.c
 * Overlay: ovl_En_Tubo_Trap
 * Description: Flying pot enemy
*/

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ActorFunc playfunc;
    /* 0x0150 */ f32 pos_y_seek;
    /* 0x0154 */ Vec3f pos_init;
    /* 0x0160 */ ColliderCylinderMain capsule;
} EnTuboTrap; // size = 0x01AC

void EnTuboTrap_Init(EnTuboTrap* this, GlobalContext* globalCtx);
void EnTuboTrap_Destroy(EnTuboTrap* this, GlobalContext* globalCtx);
void EnTuboTrap_Update(EnTuboTrap* this, GlobalContext* globalCtx);
void EnTuboTrap_Draw(EnTuboTrap* this, GlobalContext* globalCtx);
void EnTuboTrap_TestLevitate(EnTuboTrap* this, GlobalContext* globalCtx);
void EnTuboTrap_InitializeAttack(EnTuboTrap* this, GlobalContext* globalCtx);
void EnTuboTrap_Fly(EnTuboTrap* this, GlobalContext* globalCtx);

#define ROOM  0x00
#define FLAGS 0x00000010

static ColliderCylinderInit cylinderInitData =
{
    0x0A, 0x11, 0x09, 0x00, 0x20, 0x01,
    0x00, 0x00,
    0x00,
    0x00, 0x00, 0x00,
    0xFFCFFFFF,
    0x00, 0x04,
    0x00, 0x00,
    0xFFCFFFFF,
    0x00, 0x00, 0x00, 0x00,
    0x01, 0x01, 0x00,
    0x00,
    0x0009, 0x0017, 0x0000,
    0x0000, 0x0000, 0x0000
};

ActorInit En_Tubo_Trap_InitVars =
{
    ACTOR_EN_TUBO_TRAP,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_DANGEON_KEEP,
    sizeof(EnTuboTrap),
    (ActorFunc)EnTuboTrap_Init,
    (ActorFunc)EnTuboTrap_Destroy,
    (ActorFunc)EnTuboTrap_Update,
    (ActorFunc)EnTuboTrap_Draw,
};

extern u32 DL_SHARD;
extern u32 DL_TUBO;

void EnTuboTrap_Init(EnTuboTrap* this, GlobalContext* globalCtx)
{
    s32 pad;
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 2.0f);
    osSyncPrintf("\n\n");
    osSyncPrintf("\x1b[32m☆☆☆☆☆ 壷トラップ ☆☆☆☆☆ %x\n\x1b[m", this->actor.params);
    ActorCollider_AllocCylinder(globalCtx, &this->capsule);
    ActorCollider_InitCylinder(globalCtx, &this->capsule, &this->actor, &cylinderInitData);
    Actor_SetScale(&this->actor, 0.1f);
    this->playfunc = (ActorFunc*)EnTuboTrap_TestLevitate;
}

void EnTuboTrap_Destroy(EnTuboTrap* this, GlobalContext* globalCtx)
{
    ColliderCylinderMain* capsule = &this->capsule;
    ActorCollider_FreeCylinder(globalCtx, capsule);
}

void EnTuboTrap_DropCollectible(EnTuboTrap* this, GlobalContext* globalCtx)
{
    s16 params = this->actor.params;
    s16 param1 = (params >> 6) & 0x03FF;
    if (param1 >= 0 && param1 < 0x1A)
    {
        Item_DropCollectible(globalCtx, &this->actor.posRot, param1 | ((params & 0x03F) << 8));
    }
}

#ifdef NON_MATCHING
void EnTuboTrap_Fragments(EnTuboTrap* this, GlobalContext* globalCtx)
{
    u32 uVar1;
    s32 rando_seed = 0;
    s32 shard_count = 0;

    /* spawn fragments */
    do
    {
        Vec3f burst_depth[2];
        f32 rng;

        /* burst_depth_x */
        burst_depth[0].x = Math_Sins(rando_seed) * 8.0f;
        burst_depth[0].y = (Math_Rand_ZeroOne() * 5.0f) + 2.0f;
        burst_depth[0].z = Math_Coss(rando_seed) * 8.0f;

        /* burst_depth_y */
        burst_depth[1].x = (f32)(burst_depth[0].x * 0.23f);
        burst_depth[1].y = (f32)(Math_Rand_ZeroOne() * 5.0f) + 2.0f;
        burst_depth[1].z = (f32)(burst_depth[0].z * 0.23f);

        VEC3_ADD(burst_depth[0], this->actor.posRot.pos)

        rng = Math_Rand_ZeroOne();

        if (rng < 0.2f)
        {
            uVar1 = 0x60;
        }
        else
        {
            uVar1 = 0x20;

            if (rng < 0.6f)
            {
                uVar1 = 0x40;
            }
        }

        /* The Heavy Lifting */
        Effect_SpawnFragment(globalCtx, &burst_depth[0], &burst_depth[1], &this->actor.posRot.pos, -239, uVar1, 10, 10, 0,
                            (Math_Rand_ZeroOne() * 65.0f) + 15.0f, 0, 0x20, 0x3C, -1, 3, DL_SHARD);

        shard_count++;
        rando_seed = (s32)((rando_seed + 0x4E20) * 0x10000) >> 0x10;
    }
    while(shard_count != 15);

    func_80033480(globalCtx, &this->actor.posRot.pos, 30.0f, 4, 20, 50, 0);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tubo_Trap/EnTuboTrap_Fragments.s")
#endif

#ifdef NON_MATCHING
void EnTuboTrap_FragmentsWater(EnTuboTrap* this, GlobalContext* globalCtx)
{
    u32 uVar1;
    s32 rando_seed = 0;
    s32 shard_count = 0;
    Vec3f burst_depth[2];
    f32 rng;

    Math_Vec3f_Copy(&burst_depth[0], &this->actor.posRot.pos);
    burst_depth[0].y += this->actor.waterSurfaceDist;

    /* spawn a small splash */
    func_8002949C(globalCtx, &burst_depth[0], 0, 0, 0, 0x190);

    /* spawn fragments */
    do
    {
        /* burst_depth_x */
        burst_depth[0].x = Math_Sins(rando_seed) * 8.0f;
        burst_depth[0].y = (Math_Rand_ZeroOne() * 5.0f) + 2.0f;
        burst_depth[0].z = Math_Coss(rando_seed) * 8.0f;

        /* burst_depth_y */
        burst_depth[1].x = (f32)(burst_depth[0].x * 0.23f);
        burst_depth[1].y = (f32)(Math_Rand_ZeroOne() * 5.0f) + 2.0f;
        burst_depth[1].z = (f32)(burst_depth[0].z * 0.23f);

        VEC3_ADD(burst_depth[0], this->actor.posRot.pos)

        rng = Math_Rand_ZeroOne();

        if (rng < 0.2f)
        {
            uVar1 = 0x60;
        }
        else
        {
            uVar1 = 0x20;

            if (rng < 0.6f)
            {
                uVar1 = 0x40;
            }
        }

        /* The Heavy Lifting */
        Effect_SpawnFragment(globalCtx, &burst_depth[0], &burst_depth[1], &this->actor.posRot.pos, -239, uVar1,
                            10, 10, 0, (Math_Rand_ZeroOne() * 65.0f) + 15.0f, 0, 0x20, 0x3C, -1, 3, DL_SHARD);
        shard_count++;
        rando_seed = (s32)((rando_seed + 0x4E20) * 0x10000) >> 0x10;
    }
    while(shard_count != 15);

    func_80033480(globalCtx, &this->actor.posRot.pos, 30.0f, 4, 20, 50, 0);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tubo_Trap/EnTuboTrap_FragmentsWater.s")
#endif

#ifdef NON_MATCHING
void EnTuboTrap_TestCollider(EnTuboTrap* this, GlobalContext* globalCtx)
{
    u8 bVar1, bVar2;
    u16 uVar3;
    Actor* collided_this;
    Player* player = PLAYER;

    if (!(this->actor.bgCheckFlags & 20))
    {
        bVar1 = this->capsule.base.colliderFlags;
    }
    else
    {
        if (this->actor.waterSurfaceDist > 15.0f)
        {
            EnTuboTrap_FragmentsWater(this, globalCtx);
            Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 40, NA_SE_EV_BOMB_DROP_WATER);
            EnTuboTrap_DropCollectible(this, globalCtx);
            Actor_Kill(&this->actor);
            return;
        }

        bVar1 = this->capsule.base.collideFlags;
    }

    if (!(bVar1 & 4))
    {
        bVar2 = this->capsule.base.collideFlags;
        if (!(bVar2 & 2))
        {
            if (!(bVar1 & 2))
            {
                uVar3 = this->actor.bgCheckFlags;
            }
            else
            {
                collided_this = this->capsule.base.actor;
                this->capsule.base.colliderFlags = bVar1 & 0xFD;

                if (collided_this == &player->actor)
                {
                    EnTuboTrap_Fragments(this, globalCtx);
                    Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 0x28, NA_SE_EV_POT_BROKEN);
                    Audio_PlaySoundAtPosition(globalCtx, &player->actor.posRot.pos, 0x28, NA_SE_PL_BODY_HIT);
                    EnTuboTrap_DropCollectible(this, globalCtx);
                    Actor_Kill(&this->actor);
                    return;
                }
                uVar3 = this->actor.bgCheckFlags;
            }

            if ((uVar3 & 8) || (uVar3 & 1))
            {
                EnTuboTrap_Fragments(this, globalCtx);
                Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 0x28, NA_SE_EV_POT_BROKEN);
                EnTuboTrap_DropCollectible(this, globalCtx);
                Actor_Kill(&this->actor);
            }
        }
        else
        {
            this->capsule.base.collideFlags = bVar2 & 0xFD;
            EnTuboTrap_Fragments(this, globalCtx);
            Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 0x28, NA_SE_EV_EXPLOSION);
            Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 0x28, NA_SE_EV_POT_BROKEN);
            EnTuboTrap_DropCollectible(this, globalCtx);
            Actor_Kill(&this->actor);
        }
    }
    else
    {
        this->capsule.base.colliderFlags = bVar1 & 0xFB;
        EnTuboTrap_Fragments(this, globalCtx);
        Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 0x28, NA_SE_IT_SHIELD_REFLECT_SW);
        Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 0x28, NA_SE_EV_POT_BROKEN);
        EnTuboTrap_DropCollectible(this, globalCtx);
        Actor_Kill(&this->actor);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tubo_Trap/EnTuboTrap_TestCollider.s")
#endif

#ifdef NON_MATCHING
void EnTuboTrap_TestLevitate(EnTuboTrap* this, GlobalContext* globalCtx)
{
    Player* player = PLAYER;
    f32 seekY;

    if (BREG(2) != 0)
    {
        osSyncPrintf("[32m☆☆☆☆☆ わて     ☆☆☆☆☆ %f\n", globalCtx, this->actor.posRot.pos.y);
        osSyncPrintf("[32m☆☆☆☆☆ おいどん ☆☆☆☆☆ %f\n");
        osSyncPrintf("\n\n");
    }

    if (this->actor.xzDistanceFromLink < 200.00000000 && this->actor.posRot.pos.y <= player->actor.posRot.pos.y)
    {
        Actor_ChangeType(globalCtx, &globalCtx->actorCtx, this, ACTORTYPE_ENEMY);
        this->actor.flags |= 1;
        seekY = (f32)gSaveContext.link_age * -10.00000000 + 40.00000000;
        this->pos_y_seek = player->actor.posRot.pos.y;

        if (this->pos_y_seek < this->actor.posRot.pos.y)
            this->pos_y_seek = this->actor.posRot.pos.y + seekY;

        this->actor.initPosRot.pos = this->actor.posRot.pos;

        Audio_PlayActorSound2(this, NA_SE_EV_POT_MOVE_START);
        this->playfunc = (ActorFunc)EnTuboTrap_InitializeAttack;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tubo_Trap/EnTuboTrap_TestLevitate.s")
#endif

#ifdef NON_MATCHING
void EnTuboTrap_InitializeAttack(EnTuboTrap* this, GlobalContext* globalCtx)
{
    this->actor.posRot.rot.y += 5000;
    Math_SmoothScaleMaxF(&this->actor.posRot.pos.y, this->pos_y_seek, 0.8f, 3.0f); /* Tween levitation */

    if (ABS(this->actor.posRot.pos.y - this->pos_y_seek) < 10.0f)
    {
        this->actor.speedXZ = 10.0f;
        this->actor.posRot.rot.y = this->actor.rotTowardsLinkY;
        this->playfunc = (ActorFunc)EnTuboTrap_Fly;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tubo_Trap/EnTuboTrap_InitializeAttack.s")
#endif

#ifdef NON_MATCHING
void EnTuboTrap_Fly(EnTuboTrap* this, GlobalContext* globalCtx)
{
    Vec3f pos_delta;

    VEC3_SUB(pos_delta, this->pos_init, this->actor.posRot.pos);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_TUBOOCK_FLY);

    if (240.0f < sqrtf(SQ(pos_delta.x) + SQ(pos_delta.y) + SQ(pos_delta.z)))
        Math_SmoothScaleMaxF(&this->actor.gravity, -3.0f, 0.2f, 0.5f); /* Tween to ground */

    this->actor.posRot.rot.y += 5000;
    EnTuboTrap_TestCollider(this, globalCtx);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tubo_Trap/EnTuboTrap_Fly.s")
#endif

#ifdef NON_MATCHING
void EnTuboTrap_Update(EnTuboTrap* this, GlobalContext* globalCtx)
{
    this->playfunc(this, globalCtx);
    Actor_MoveForward(&this->actor); /* Probably to haul ass towards Link */
    func_8002E4B4(globalCtx, &this->actor, 10.0f, 10.0f, 20.0f, 0x1D); /* Necessary for drawing a shadow */
    Actor_SetHeight(&this->actor, 0.0f);
    ActorCollider_Cylinder_Update(&this->actor, &this->capsule);
    Actor_CollisionCheck_SetAC(globalCtx, &globalCtx->sub_11E60, &this->capsule);
    Actor_CollisionCheck_SetAT(globalCtx, &globalCtx->sub_11E60, &this->capsule);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tubo_Trap/EnTuboTrap_Update.s")
#endif

void EnTuboTrap_Draw(EnTuboTrap* this, GlobalContext* globalCtx)
{
    Draw_DListOpa(globalCtx, &DL_TUBO);
}
