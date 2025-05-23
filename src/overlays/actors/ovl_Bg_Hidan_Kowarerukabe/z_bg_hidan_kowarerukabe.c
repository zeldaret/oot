/*
 * File: z_bg_hidan_kowarerukabe.c
 * Overlay: ovl_Bg_Hidan_Kowarerukabe
 * Description: Fire Temple Bombable Walls and Floors
 */

#include "z_bg_hidan_kowarerukabe.h"
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keep.h"
#include "overlays/effects/ovl_Effect_Ss_Kakera/z_eff_ss_kakera.h"
#include "assets/objects/object_hidan_objects/object_hidan_objects.h"

#define FLAGS 0

typedef enum FireTempleBombableObjectsType {
    /* 0 */ CRACKED_STONE_FLOOR,
    /* 1 */ BOMBABLE_WALL,
    /* 2 */ LARGE_BOMBABLE_WALL
} FireTempleBombableObjectsType;

void BgHidanKowarerukabe_Init(Actor* thisx, PlayState* play);
void BgHidanKowarerukabe_Destroy(Actor* thisx, PlayState* play);
void BgHidanKowarerukabe_Update(Actor* thisx, PlayState* play);
void BgHidanKowarerukabe_Draw(Actor* thisx, PlayState* play);

ActorProfile Bg_Hidan_Kowarerukabe_Profile = {
    /**/ ACTOR_BG_HIDAN_KOWARERUKABE,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_HIDAN_OBJECTS,
    /**/ sizeof(BgHidanKowarerukabe),
    /**/ BgHidanKowarerukabe_Init,
    /**/ BgHidanKowarerukabe_Destroy,
    /**/ BgHidanKowarerukabe_Update,
    /**/ BgHidanKowarerukabe_Draw,
};

static Gfx* sBreakableWallDLists[] = {
    gFireTempleCrackedStoneFloorDL,
    gFireTempleBombableWallDL,
    gFireTempleLargeBombableWallDL,
};

static ColliderJntSphElementInit sJntSphElementsInit[1] = {
    {
        {
            ELEM_MATERIAL_UNK0,
            { 0x00000000, 0x00, 0x00 },
            { 0x00000008, 0x00, 0x00 },
            ATELEM_NONE,
            ACELEM_ON,
            OCELEM_NONE,
        },
        { 0, { { 0, 0, 0 }, 100 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_NONE,
        COLSHAPE_JNTSPH,
    },
    1,
    sJntSphElementsInit,
};

void BgHidanKowarerukabe_InitDynaPoly(BgHidanKowarerukabe* this, PlayState* play) {
    static CollisionHeader* collisionHeaders[] = {
        &gFireTempleCrackedStoneFloorCol,
        &gFireTempleBombableWallCol,
        &gFireTempleLargeBombableWallCol,
    };
    s32 pad;
    CollisionHeader* colHeader = NULL;
    s32 pad2;

    if (collisionHeaders[PARAMS_GET_U(this->dyna.actor.params, 0, 8)] != NULL) {
        DynaPolyActor_Init(&this->dyna, 0);
        CollisionHeader_GetVirtual(collisionHeaders[PARAMS_GET_U(this->dyna.actor.params, 0, 8)], &colHeader);
        this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);
    } else {
        this->dyna.bgId = BGACTOR_NEG_ONE;
    }
}

void BgHidanKowarerukabe_InitColliderSphere(BgHidanKowarerukabe* this, PlayState* play) {
    static s16 sphereRadii[] = { 80, 45, 80 };
    static s16 sphereYPositions[] = { 0, 500, 500 };
    s32 pad;

    Collider_InitJntSph(play, &this->collider);
    Collider_SetJntSph(play, &this->collider, &this->dyna.actor, &sJntSphInit, this->colliderItems);

    this->collider.elements[0].dim.modelSphere.radius = sphereRadii[PARAMS_GET_U(this->dyna.actor.params, 0, 8)];
    this->collider.elements[0].dim.modelSphere.center.y = sphereYPositions[PARAMS_GET_U(this->dyna.actor.params, 0, 8)];
}

void BgHidanKowarerukabe_OffsetActorYPos(BgHidanKowarerukabe* this) {
    static f32 actorYPosOffsets[] = { 0.7f, 0.0f, 0.0f };

    this->dyna.actor.world.pos.y =
        actorYPosOffsets[PARAMS_GET_U(this->dyna.actor.params, 0, 8)] + this->dyna.actor.home.pos.y;
}

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(cullingVolumeDistance, 2000, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 400, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 1000, ICHAIN_STOP),
};

void BgHidanKowarerukabe_Init(Actor* thisx, PlayState* play) {
    BgHidanKowarerukabe* this = (BgHidanKowarerukabe*)thisx;

    BgHidanKowarerukabe_InitDynaPoly(this, play);

    if (PARAMS_GET_U(this->dyna.actor.params, 0, 8) < CRACKED_STONE_FLOOR ||
        PARAMS_GET_U(this->dyna.actor.params, 0, 8) > LARGE_BOMBABLE_WALL) {
        // "Error: Fire Temple Breakable Walls. arg_data I can't determine the (%s %d)(arg_data 0x%04x)"
        PRINTF("Error : 炎の神殿 壊れる壁 の arg_data が判別出来ない(%s %d)(arg_data 0x%04x)\n",
               "../z_bg_hidan_kowarerukabe.c", 254, this->dyna.actor.params);
        Actor_Kill(&this->dyna.actor);
        return;
    }

    if (Flags_GetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 8, 6))) {
        Actor_Kill(&this->dyna.actor);
        return;
    }

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    Actor_SetScale(&this->dyna.actor, 0.1f);
    BgHidanKowarerukabe_InitColliderSphere(this, play);
    BgHidanKowarerukabe_OffsetActorYPos(this);
    // "(fire walls, floors, destroyed by bombs)(arg_data 0x%04x)"
    PRINTF("(hidan 爆弾で壊れる 壁 床)(arg_data 0x%04x)\n", this->dyna.actor.params);
}

void BgHidanKowarerukabe_Destroy(Actor* thisx, PlayState* play) {
    BgHidanKowarerukabe* this = (BgHidanKowarerukabe*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
    Collider_DestroyJntSph(play, &this->collider);
}

void BgHidanKowarerukabe_SpawnDust(BgHidanKowarerukabe* this, PlayState* play) {
    s32 pad;
    Vec3f pos;

    pos = this->dyna.actor.world.pos;
    pos.y += 10.0f;

    func_80033480(play, &pos, 0.0f, 0, 600, 300, 1);

    pos.x = ((Rand_ZeroOne() - 0.5f) * 80.0f) + this->dyna.actor.world.pos.x;
    pos.y = (Rand_ZeroOne() * 100.0f) + this->dyna.actor.world.pos.y;
    pos.z = ((Rand_ZeroOne() - 0.5f) * 80.0f) + this->dyna.actor.world.pos.z;

    func_80033480(play, &pos, 100.0f, 4, 200, 250, 1);
}

void BgHidanKowarerukabe_FloorBreak(BgHidanKowarerukabe* this, PlayState* play) {
    s32 i;
    s32 j;
    Vec3f velocity;
    Vec3f pos;
    s16 arg5;
    Actor* thisx = &this->dyna.actor;
    f32 sin = Math_SinS(thisx->shape.rot.y);
    f32 cos = Math_CosS(thisx->shape.rot.y);
    f32 tmp1;
    f32 tmp2;
    s16 arg9;

    pos.y = thisx->world.pos.y + 10.0f;

    for (i = 0; i < 5; i++) {
        for (j = 0; j < 5; j++) {
            tmp1 = 24 * (i - 2);
            tmp2 = 24 * (j - 2);

            pos.x = (tmp2 * sin) + (tmp1 * cos) + thisx->world.pos.x;
            pos.z = (tmp2 * cos) - (tmp1 * sin) + thisx->world.pos.z;

            tmp1 = 8.0f * Rand_ZeroOne() * (i - 2);
            tmp2 = 8.0f * Rand_ZeroOne() * (j - 2);

            velocity.x = (tmp2 * sin) + (tmp1 * cos);
            velocity.y = 30.0f * Rand_ZeroOne();
            velocity.z = (tmp2 * cos) - (tmp1 * sin);

            arg9 = ((Rand_ZeroOne() - 0.5f) * 11.0f * 1.4f) + 11.0f;

            arg5 = (((i == 0) || (i == 4)) && ((j == 0) || (j == 4))) ? 65 : 64;

            EffectSsKakera_Spawn(play, &pos, &velocity, &thisx->world.pos, -550, arg5, 15, 15, 0, arg9, 2, 16, 100,
                                 KAKERA_COLOR_NONE, OBJECT_GAMEPLAY_DANGEON_KEEP, gBrownFragmentDL);
        }
    }
}

void func_8088A67C(BgHidanKowarerukabe* this, PlayState* play) {
    s32 i;
    s32 j;
    Vec3f velocity;
    Vec3f pos;
    s16 arg5;
    Actor* thisx = &this->dyna.actor;
    f32 sin = Math_SinS(thisx->shape.rot.y);
    f32 cos = Math_CosS(thisx->shape.rot.y);
    f32 tmp1;
    f32 tmp2;
    s16 arg9;

    for (i = 0; i < 5; i++) {
        pos.y = (20 * i) + thisx->world.pos.y;
        for (j = 0; j < 5; j++) {
            tmp1 = 16 * (j - 2);

            pos.x = (tmp1 * cos) + thisx->world.pos.x;
            pos.z = -(tmp1 * sin) + thisx->world.pos.z;

            tmp1 = 3.0f * Rand_ZeroOne() * (j - 2);
            tmp2 = 6.0f * Rand_ZeroOne();

            velocity.x = (tmp2 * sin) + (tmp1 * cos);
            velocity.y = 18.0f * Rand_ZeroOne();
            velocity.z = (tmp2 * cos) - (tmp1 * sin);

            arg9 = ((Rand_ZeroOne() - 0.5f) * 11.0f * 1.4f) + 11.0f;
            arg5 = (arg9 >= 15) ? 32 : 64;

            if (Rand_ZeroOne() < 5.0f) {
                arg5 |= 1;
            }

            EffectSsKakera_Spawn(play, &pos, &velocity, &thisx->world.pos, -540, arg5, 20, 20, 0, arg9, 2, 32, 100,
                                 KAKERA_COLOR_NONE, OBJECT_GAMEPLAY_DANGEON_KEEP, gBrownFragmentDL);
        }
    }
}

void BgHidanKowarerukabe_LargeWallBreak(BgHidanKowarerukabe* this, PlayState* play) {
    s32 i;
    s32 j;
    Vec3f velocity;
    Vec3f pos;
    s16 arg5;
    Actor* thisx = &this->dyna.actor;
    f32 sin = Math_SinS(thisx->shape.rot.y);
    f32 cos = Math_CosS(thisx->shape.rot.y);
    f32 tmp1;
    f32 tmp2;
    s16 arg9;

    for (i = 0; i < 5; i++) {
        pos.y = (24 * i) + thisx->world.pos.y;
        for (j = 0; j < 5; j++) {
            tmp1 = 28 * (j - 2);

            pos.x = (tmp1 * cos) + thisx->world.pos.x;
            pos.z = -(tmp1 * sin) + thisx->world.pos.z;

            tmp1 = 6.0f * Rand_ZeroOne() * (j - 2);
            tmp2 = 6.0f * Rand_ZeroOne();

            velocity.x = (tmp2 * sin) + (tmp1 * cos);
            velocity.y = 34.0f * Rand_ZeroOne();
            velocity.z = (tmp2 * cos) - (tmp1 * sin);

            arg9 = ((Rand_ZeroOne() - 0.5f) * 14.0f * 1.6f) + 14.0f;
            arg5 = (arg9 > 20) ? 32 : 64;

            if (Rand_ZeroOne() < 5.0f) {
                arg5 |= 1;
            }

            EffectSsKakera_Spawn(play, &pos, &velocity, &thisx->world.pos, -650, arg5, 20, 20, 0, arg9, 2, 32, 100,
                                 KAKERA_COLOR_NONE, OBJECT_GAMEPLAY_DANGEON_KEEP, gBrownFragmentDL);
        }
    }
}

void BgHidanKowarerukabe_Break(BgHidanKowarerukabe* this, PlayState* play) {
    switch (PARAMS_GET_U(this->dyna.actor.params, 0, 8)) {
        case CRACKED_STONE_FLOOR:
            BgHidanKowarerukabe_FloorBreak(this, play);
            break;
        case BOMBABLE_WALL:
            func_8088A67C(this, play);
            break;
        case LARGE_BOMBABLE_WALL:
            BgHidanKowarerukabe_LargeWallBreak(this, play);
            break;
    }

    BgHidanKowarerukabe_SpawnDust(this, play);
}

void BgHidanKowarerukabe_Update(Actor* thisx, PlayState* play) {
    BgHidanKowarerukabe* this = (BgHidanKowarerukabe*)thisx;
    s32 pad;

    if (Actor_GetCollidedExplosive(play, &this->collider.base) != NULL) {
        BgHidanKowarerukabe_Break(this, play);
        Flags_SetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 8, 6));

        if (PARAMS_GET_U(this->dyna.actor.params, 0, 8) == 0) {
            SfxSource_PlaySfxAtFixedWorldPos(play, &this->dyna.actor.world.pos, 40, NA_SE_EV_EXPLOSION);
        } else {
            SfxSource_PlaySfxAtFixedWorldPos(play, &this->dyna.actor.world.pos, 40, NA_SE_EV_WALL_BROKEN);
        }

        Sfx_PlaySfxCentered(NA_SE_SY_CORRECT_CHIME);
        Actor_Kill(&this->dyna.actor);
        return;
    }

    CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
}

void BgHidanKowarerukabe_Draw(Actor* thisx, PlayState* play) {
    BgHidanKowarerukabe* this = (BgHidanKowarerukabe*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_hidan_kowarerukabe.c", 565);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);

    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_bg_hidan_kowarerukabe.c", 568);
    gSPDisplayList(POLY_OPA_DISP++, sBreakableWallDLists[PARAMS_GET_U(this->dyna.actor.params, 0, 8)]);

    Collider_UpdateSpheres(0, &this->collider);

    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_hidan_kowarerukabe.c", 573);
}
