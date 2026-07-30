/*
 * File: z_bg_jya_haheniron
 * Overlay: ovl_Bg_Jya_Haheniron
 * Description: Chunks of Iron Knucle Chair and Pillar
 */

#include "z_bg_jya_haheniron.h"

#include "libc64/qrand.h"
#include "array_count.h"
#include "ichain.h"
#include "sfx.h"
#include "z_lib.h"
#include "effect.h"
#include "play_state.h"

#include "assets/objects/object_jya_iron/object_jya_iron.h"

#define FLAGS ACTOR_FLAG_UPDATE_CULLING_DISABLED

void BgJyaHaheniron_Init(Actor* thisx, PlayState* play);
void BgJyaHaheniron_Destroy(Actor* thisx, PlayState* play);
void BgJyaHaheniron_Update(Actor* thisx, PlayState* play);
void BgJyaHaheniron_Draw(Actor* thisx, PlayState* play);

void func_808980C0(BgJyaHaheniron* this, PlayState* play);
void func_80898114(PlayState* play, Vec3f* arg1, Vec3f* arg2);
void func_8089843C(BgJyaHaheniron* this);
void func_8089844C(BgJyaHaheniron* this, PlayState* play);
void func_80898588(BgJyaHaheniron* this);
void func_80898598(BgJyaHaheniron* this, PlayState* play);
void func_8089861C(BgJyaHaheniron* this);
void func_8089862C(BgJyaHaheniron* this, PlayState* play);

ActorProfile Bg_Jya_Haheniron_Profile = {
    /**/ ACTOR_BG_JYA_HAHENIRON,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_JYA_IRON,
    /**/ sizeof(BgJyaHaheniron),
    /**/ BgJyaHaheniron_Init,
    /**/ BgJyaHaheniron_Destroy,
    /**/ BgJyaHaheniron_Update,
    /**/ BgJyaHaheniron_Draw,
};
static ColliderJntSphElementInit D_80898740[1] = {
    {
        { 0, { 0xFFCFFFFF, 0, 4 }, { 0, 0, 0 }, 1, 0, 0 },
        { 0, { { 0, 0, 0 }, 0xA }, 0x64 },
    },
};
static ColliderJntSphInit D_80898764 = { { 0xA, 0x11, 1, 0, 0, 0 }, 1, D_80898740 };
static s16 D_80898774[5] = { 5, 8, 0xB, 0xE, 0x11 };
static InitChainEntry D_80898780[5] = {
    ICHAIN_F32_DIV1000(gravity, -2000, ICHAIN_CONTINUE),      ICHAIN_F32_DIV1000(minVelocityY, -15000, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDistance, 1000, ICHAIN_CONTINUE), ICHAIN_F32(cullingVolumeScale, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 1000, ICHAIN_STOP),
};
static f32 D_80898794[3] = { 0.13f, 0.1f, 0.1f };
static Vec3f D_808987A0 = { 0.0f, 14.0f, 0.0f };
static Vec3f D_808987AC = { 0.0f, 8.0f, 0.0f };
static Gfx* D_808987B8[] = {
    gObjectJyaIronDL_000880,
    gObjectJyaIronDL_000AE0,
    gObjectJyaIronDL_000600,
};

void func_808980C0(BgJyaHaheniron* this, PlayState* play) {
    s32 pad;

    Collider_InitJntSph(play, &this->unk150);
    Collider_SetJntSph(play, &this->unk150, &this->actor, &D_80898764, this->unk170);
}

void func_80898114(PlayState* play, Vec3f* arg1, Vec3f* arg2) {
    Vec3f spB4;
    Vec3f spA8;
    f32 temp_fv0;
    s32 var_s1;
    s32 var_v0;

    for (var_s1 = 0; var_s1 < ARRAY_COUNT(D_80898774); var_s1++) {
        temp_fv0 = Rand_ZeroOne() * 10.0f;
        spB4.x = (Math_SinS(var_s1 * 0x3333) * temp_fv0) + arg2->x;
        spB4.y = (Rand_ZeroOne() * 10.0f) + arg2->y;
        spB4.z = (Math_CosS(var_s1 * 0x3333) * temp_fv0) + arg2->z;
        temp_fv0 = Rand_ZeroOne();
        if (temp_fv0 < 0.2f) {
            var_v0 = 0x60;
        } else if (temp_fv0 < 0.8f) {
            var_v0 = 0x40;
        } else {
            var_v0 = 0x20;
        }
        EffectSsKakera_Spawn(play, arg1, &spB4, arg1, -350, (s16)var_v0, 0x28, 4, 0, D_80898774[var_s1], 0, 0x14, 40,
                             -1, OBJECT_JYA_IRON, gObjectJyaIronDL_000880);
    }
    spA8.x = arg1->x + (arg2->x * 5.0f);
    spA8.y = arg1->y + (arg2->y * 5.0f);
    spA8.z = arg1->z + (arg2->z * 5.0f);
    func_80033480(play, &spA8, 100.0f, 4, 0x64, 0xA0, 1U);
}

void BgJyaHaheniron_Init(Actor* thisx, PlayState* play) {
    BgJyaHaheniron* this = (BgJyaHaheniron*)thisx;

    Actor_ProcessInitChain(&this->actor, D_80898780);
    Actor_SetScale(&this->actor, D_80898794[this->actor.params]);
    if (this->actor.params == 0) {
        func_808980C0(this, play);
        this->actor.shape.rot.z = (s16)(s32)(Rand_ZeroOne() * 65535.0f);
        func_8089843C(this);
    } else if (this->actor.params == 1) {
        func_80898588(this);
    } else if (this->actor.params == 2) {
        func_8089861C(this);
    }
}

void BgJyaHaheniron_Destroy(Actor* thisx, PlayState* play) {
    BgJyaHaheniron* this = (BgJyaHaheniron*)thisx;

    if (this->actor.params == 0) {
        Collider_DestroyJntSph(play, &this->unk150);
    }
}

void func_8089843C(BgJyaHaheniron* this) {
    this->unk14C = func_8089844C;
}

void func_8089844C(BgJyaHaheniron* this, PlayState* play) {
    Vec3f sp2C;

    Actor_MoveXZGravity(&this->actor);
    Actor_UpdateBgCheckInfo(play, &this->actor, 5.0f, 8.0f, 0.0f,
                            UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2 | UPDBGCHECKINFO_FLAG_7);
    if ((this->actor.bgCheckFlags & (BGCHECKFLAG_GROUND | BGCHECKFLAG_WALL)) ||
        ((this->unk150.base.atFlags & AT_HIT) && (this->unk150.base.at != NULL) &&
         (this->unk150.base.at->category == 2))) {
        sp2C.x = -Rand_ZeroOne() * this->actor.velocity.x;
        sp2C.y = -Rand_ZeroOne() * this->actor.velocity.y;
        sp2C.z = -Rand_ZeroOne() * this->actor.velocity.z;
        func_80898114(play, &this->actor.world.pos, &sp2C);
        Actor_Kill(&this->actor);
    } else if (this->unk1B0 >= 0x3D) {
        Actor_Kill(&this->actor);
    } else {
        CollisionCheck_SetAT(play, &play->colChkCtx, &this->unk150.base);
    }
    this->actor.shape.rot.y += 0x4B0;
    this->actor.shape.rot.x += 0xFA0;
}

void func_80898588(BgJyaHaheniron* this) {
    this->unk14C = func_80898598;
}

void func_80898598(BgJyaHaheniron* this, PlayState* play) {
    if (this->unk1B0 >= 8) {
        Actor_MoveXZGravity(&this->actor);
    } else if (this->unk1B0 >= 0x11) {
        func_80898114(play, &this->actor.world.pos, &D_808987A0);
        Actor_Kill(&this->actor);
    }
    this->actor.shape.rot.y += 0x258;
    this->actor.shape.rot.x += 0x3E8;
}

void func_8089861C(BgJyaHaheniron* this) {
    this->unk14C = func_8089862C;
}

void func_8089862C(BgJyaHaheniron* this, PlayState* play) {
    if (this->unk1B0 >= 0x11) {
        func_80898114(play, &this->actor.world.pos, &D_808987AC);
        SfxSource_PlaySfxAtFixedWorldPos(play, &this->actor.world.pos, 80, NA_SE_EN_IRONNACK_BREAK_PILLAR2);
        Actor_Kill(&this->actor);
    }
}

void BgJyaHaheniron_Update(Actor* thisx, PlayState* play) {
    BgJyaHaheniron* this = (BgJyaHaheniron*)thisx;

    this->unk1B0 += 1;
    this->unk14C(this, play);
}

void BgJyaHaheniron_Draw(Actor* thisx, PlayState* play) {
    BgJyaHaheniron* this = (BgJyaHaheniron*)thisx;

    if (this->actor.params == 0) {
        Collider_UpdateSpheres(0, &this->unk150);
    }
    Gfx_DrawDListOpa(play, D_808987B8[this->actor.params]);
}
