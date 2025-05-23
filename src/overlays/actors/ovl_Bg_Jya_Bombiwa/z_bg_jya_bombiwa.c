/*
 * File: z_bg_jya_bombiwa.c
 * Overlay: ovl_Bg_Jya_Bombiwa
 * Description: Spirit Temple top room bombable wall
 */

#include "z_bg_jya_bombiwa.h"
#include "overlays/effects/ovl_Effect_Ss_Kakera/z_eff_ss_kakera.h"
#include "assets/objects/object_jya_obj/object_jya_obj.h"
#include "terminal.h"

#define FLAGS 0

void BgJyaBombiwa_Init(Actor* thisx, PlayState* play);
void BgJyaBombiwa_Destroy(Actor* thisx, PlayState* play);
void BgJyaBombiwa_Update(Actor* thisx, PlayState* play);
void BgJyaBombiwa_Draw(Actor* thisx, PlayState* play);

ActorProfile Bg_Jya_Bombiwa_Profile = {
    /**/ ACTOR_BG_JYA_BOMBIWA,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_JYA_OBJ,
    /**/ sizeof(BgJyaBombiwa),
    /**/ BgJyaBombiwa_Init,
    /**/ BgJyaBombiwa_Destroy,
    /**/ BgJyaBombiwa_Update,
    /**/ BgJyaBombiwa_Draw,
};

static ColliderJntSphElementInit sJntSphElementsInit[] = {
    {
        {
            ELEM_MATERIAL_UNK0,
            { 0x00000000, 0x00, 0x00 },
            { 0x00000008, 0x00, 0x00 },
            ATELEM_NONE,
            ACELEM_ON,
            OCELEM_NONE,
        },
        { 0, { { 0, 0, 0 }, 50 }, 100 },
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

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDistance, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 1000, ICHAIN_STOP),
};

void BgJyaBombiwa_SetupDynaPoly(BgJyaBombiwa* this, PlayState* play, CollisionHeader* collision, s32 flag) {
    s32 pad1;
    CollisionHeader* colHeader = NULL;

    DynaPolyActor_Init(&this->dyna, flag);
    CollisionHeader_GetVirtual(collision, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);

#if DEBUG_FEATURES
    if (this->dyna.bgId == BG_ACTOR_MAX) {
        s32 pad2;

        // "Warning: move BG registration failed"
        PRINTF("Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n", "../z_bg_jya_bombiwa.c", 174,
               this->dyna.actor.id, this->dyna.actor.params);
    }
#endif
}

void BgJyaBombiwa_InitCollider(BgJyaBombiwa* this, PlayState* play) {
    s32 pad;

    Collider_InitJntSph(play, &this->collider);
    Collider_SetJntSph(play, &this->collider, &this->dyna.actor, &sJntSphInit, this->colliderItems);
}

void BgJyaBombiwa_Init(Actor* thisx, PlayState* play) {
    BgJyaBombiwa* this = (BgJyaBombiwa*)thisx;

    if (PARAMS_GET_U(this->dyna.actor.params, 0, 6) != 0x29) {
        PRINTF_COLOR_WARNING();

        // "Warning: Switch Number changed (%s %d)(SW %d)"
        PRINTF("Ｗａｒｎｉｎｇ : Switch Number が変更された(%s %d)(SW %d)\n", "../z_bg_jya_bombiwa.c", 218,
               PARAMS_GET_U(this->dyna.actor.params, 0, 6));
        PRINTF_RST();
    }
    BgJyaBombiwa_SetupDynaPoly(this, play, &gBombiwaCol, 0);
    BgJyaBombiwa_InitCollider(this, play);
    if (Flags_GetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 0, 6))) {
        Actor_Kill(&this->dyna.actor);
    } else {
        Actor_ProcessInitChain(&this->dyna.actor, sInitChain);

        // "Rock destroyed by jya bomb"
        PRINTF("(jya 爆弾で破壊岩)(arg_data 0x%04x)\n", this->dyna.actor.params);
    }
}

void BgJyaBombiwa_Destroy(Actor* thisx, PlayState* play) {
    BgJyaBombiwa* this = (BgJyaBombiwa*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
    Collider_DestroyJntSph(play, &this->collider);
}

void BgJyaBombiwa_Break(BgJyaBombiwa* this, PlayState* play) {
    Vec3f pos;
    Vec3f velocity;
    s16 arg5;
    s8 arg6;
    s8 arg7;
    s32 i;
    s16 scale;

    for (i = 0; i < 16; i++) {
        pos.x = ((Rand_ZeroOne() * 80.0f) + this->dyna.actor.world.pos.x) - 40.0f;
        pos.y = (Rand_ZeroOne() * 140.0f) + this->dyna.actor.world.pos.y;
        pos.z = ((Rand_ZeroOne() * 80.0f) + this->dyna.actor.world.pos.z) - 40.0f;
        velocity.x = (Rand_ZeroOne() - 0.5f) * 10.0f;
        velocity.y = Rand_ZeroOne() * 12.0f;
        velocity.z = (Rand_ZeroOne() - 0.5f) * 10.0f;
        scale = (s32)(i * 1.8f) + 3;
        if (scale > 15) {
            arg5 = 5;
        } else {
            arg5 = 1;
        }
        if (Rand_ZeroOne() < 0.4f) {
            arg5 |= 0x40;
            arg6 = 0xC;
            arg7 = 8;
        } else {
            arg5 |= 0x20;
            arg6 = 0xC;
            arg7 = 8;
            if (scale < 10) {
                arg6 = 0x50;
                arg7 = 80;
            }
        }
        EffectSsKakera_Spawn(play, &pos, &velocity, &pos, -400, arg5, arg6, arg7, 0, scale, 1, 20, 80,
                             KAKERA_COLOR_NONE, OBJECT_JYA_OBJ, gBombiwaEffectDL);
    }
    pos.x = this->dyna.actor.world.pos.x;
    pos.y = this->dyna.actor.world.pos.y + 70.0f;
    pos.z = this->dyna.actor.world.pos.z;
    func_80033480(play, &pos, 100.0f, 0xA, 0x64, 0xA0, 1);
}

void BgJyaBombiwa_Update(Actor* thisx, PlayState* play) {
    BgJyaBombiwa* this = (BgJyaBombiwa*)thisx;

    if (this->collider.base.acFlags & AC_HIT) {
        BgJyaBombiwa_Break(this, play);
        Flags_SetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 0, 6));
        SfxSource_PlaySfxAtFixedWorldPos(play, &this->dyna.actor.world.pos, 40, NA_SE_EV_WALL_BROKEN);
        Actor_Kill(&this->dyna.actor);
    } else {
        CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
    }
}

void BgJyaBombiwa_Draw(Actor* thisx, PlayState* play) {
    BgJyaBombiwa* this = (BgJyaBombiwa*)thisx;

    Gfx_DrawDListOpa(play, gBombiwaDL);
    Collider_UpdateSpheres(0, &this->collider);
}
