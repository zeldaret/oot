#include "z_en_kusa.h"
#include "overlays/actors/ovl_En_Insect/z_en_insect.h"
#include "overlays/effects/ovl_Effect_Ss_Kakera/z_eff_ss_kakera.h"

#include "libc64/qrand.h"
#include "array_count.h"
#include "ichain.h"
#include "printf.h"
#include "rand.h"
#include "sfx.h"
#include "z_en_item00.h"
#include "z_lib.h"
#include "effect.h"
#include "play_state.h"

#include "assets/objects/gameplay_keep/cuttable_shrub.h"
#include "assets/objects/gameplay_field_keep/gameplay_field_keep.h"
#include "assets/objects/object_kusa/object_kusa.h"

#define FLAGS (ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_THROW_ONLY)

void EnKusa_Init(Actor* thisx, PlayState* play);
void EnKusa_Destroy(Actor* thisx, PlayState* play2);
void EnKusa_Update(Actor* thisx, PlayState* play);

void EnKusa_SetupWaitForObject(EnKusa* this);
void EnKusa_WaitForObject(EnKusa* this, PlayState* play);
void EnKusa_SetupMain(EnKusa* this);
void EnKusa_Main(EnKusa* this, PlayState* play);
void func_80A9BA98(EnKusa* this);
void func_80A9BAD8(EnKusa* this, PlayState* play);
void EnKusa_SetupFall(EnKusa* this);
void EnKusa_Fall(EnKusa* this, PlayState* play);
void EnKusa_SetupCut(EnKusa* this);
void EnKusa_CutWaitRegrow(EnKusa* this, PlayState* play);
void EnKusa_DoNothing(EnKusa* this, PlayState* play);
void EnKusa_SetupUprootedWaitRegrow(EnKusa* this);
void EnKusa_UprootedWaitRegrow(EnKusa* this, PlayState* play);
void EnKusa_SetupRegrow(EnKusa* this);
void EnKusa_Regrow(EnKusa* this, PlayState* play);
void func_80A9C164(Actor* thisx, PlayState* play);

static s16 rotSpeedXtarget = 0;
static s16 rotSpeedX = 0;
static s16 rotSpeedYtarget = 0;
static s16 rotSpeedY = 0;
ActorProfile En_Kusa_Profile = {
    /**/ ACTOR_EN_KUSA,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_GAMEPLAY_KEEP,
    /**/ sizeof(EnKusa),
    /**/ EnKusa_Init,
    /**/ EnKusa_Destroy,
    /**/ EnKusa_Update,
    /**/ NULL,
};
static s16 D_80A9C200[4] = {
    OBJECT_GAMEPLAY_FIELD_KEEP,
    OBJECT_KUSA,
    OBJECT_KUSA,
};
static ColliderCylinderInit D_80A9C208 = {
    { 0xA, 0, 9, 0x29, 0x20, 1 },
    { 0, { 0, 0, 0 }, { 0x4FC00758, 0, 0 }, 0, 1, 1 },
    { 0xC, 0x2C, 0, { 0, 0, 0 } },
};
static CollisionCheckInfoInit D_80A9C234 = { 0, 0xC, 0x1E, 0xFF };
static Vec3f sUnitDirections[4] = {
    { 0.0f, 0.7071f, 0.7071f },
    { 0.7071f, 0.7071f, 0.0f },
    { 0.0f, 0.7071f, -0.7071f },
    { -0.7071f, 0.7071f, 0.0f },
};
static s16 sFragmentScales[8] = {
    0x6C, 0x66, 0x60, 0x54, 0x42, 0x37, 0x2A, 0x26,
};
static InitChainEntry D_80A9C27C[6] = {
    ICHAIN_VEC3F_DIV1000(scale, 400, ICHAIN_CONTINUE),         ICHAIN_F32_DIV1000(gravity, -3200, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(minVelocityY, -17000, ICHAIN_CONTINUE), ICHAIN_F32(cullingVolumeDistance, 1200, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 100, ICHAIN_CONTINUE),      ICHAIN_F32(cullingVolumeDownward, 120, ICHAIN_STOP),
};
static Gfx* D_80A9C294[3] = {
    gFieldBushDL,
    object_kusa_DL_000140,
    object_kusa_DL_000140,
};

void func_80A9AFA0(EnKusa* this, EnKusaActionFunc actionFunc) {
    this->unk19C = 0;
    this->actionFunc = actionFunc;
}

s32 func_80A9AFAC(EnKusa* this, PlayState* play, f32 arg2) {
    s32 pad;
    CollisionPoly* sp38;
    Vec3f sp2C;
    UNK_TYPE sp28;
    f32 temp_fv0;

    sp2C.x = this->actor.world.pos.x;
    sp2C.y = this->actor.world.pos.y + 30.0f;
    sp2C.z = this->actor.world.pos.z;
    temp_fv0 = BgCheck_EntityRaycastDown4(&play->colCtx, &sp38, &sp28, &this->actor, &sp2C);
    if (temp_fv0 > BGCHECK_Y_MIN) {
        this->actor.world.pos.y = temp_fv0 + arg2;
        Math_Vec3f_Copy(&this->actor.home.pos, &this->actor.world.pos);
        return 1;
    } else {
        PRINTF_COLOR_WARNING();
        PRINTF("地面に付着失敗(%s %d)\n", "../z_en_kusa.c", 323);
        PRINTF_RST();
        return 0;
    }
}

void func_80A9B07C(EnKusa* this, PlayState* play) {
    s16 var_v0;
    s32 temp_v0;

    switch (PARAMS_GET_U(this->actor.params, 0, 2)) {
        case ENKUSA_TYPE_0:
        case ENKUSA_TYPE_2:
            var_v0 = PARAMS_GET_U(this->actor.params, 8, 4);
            if (var_v0 >= 0xD) {
                var_v0 = 0;
            }
            Item_DropCollectibleRandom(play, NULL, &this->actor.world.pos,
                                       COLLECTIBLE_DROP_RANDOM_PARAMS(var_v0, false));
            break;
        case ENKUSA_TYPE_1:
            if (Rand_ZeroOne() < 0.5f) {
                Item_DropCollectible(play, &this->actor.world.pos, 0x10);
            } else {
                Item_DropCollectible(play, &this->actor.world.pos, 3);
            }
            break;
    }
}

void EnKusa_UpdateVelY(EnKusa* this) {
    this->actor.velocity.y += this->actor.gravity;
    if (this->actor.velocity.y < this->actor.minVelocityY) {
        this->actor.velocity.y = this->actor.minVelocityY;
    }
}

void EnKusa_RandScaleVecToZero(Vec3f* arg0, f32 scale) {
    scale += ((Rand_ZeroOne() * 0.2f) - 0.1f) * scale;
    arg0->x -= arg0->x * scale;
    arg0->y -= arg0->y * scale;
    arg0->z -= arg0->z * scale;
}

void EnKusa_SetScaleSmall(EnKusa* this) {
    this->actor.scale.y = 0.16000001f;
    this->actor.scale.x = 0.120000005f;
    this->actor.scale.z = 0.120000005f;
}

void func_80A9B21C(EnKusa* this, PlayState* play) {
    Vec3f spC4;
    Vec3f spB8;
    Vec3f* dir;
    s32 new_var;
    s32 i;
    s32 pad;

    for (i = 0; i < ARRAY_COUNT(sUnitDirections); i++) {
        dir = &sUnitDirections[i];
        spB8.x = this->actor.world.pos.x + (dir->x * this->actor.scale.x * 20.0f);
        spB8.y = this->actor.world.pos.y + (dir->y * this->actor.scale.y * 20.0f) + 10.0f;
        spB8.z = this->actor.world.pos.z + (dir->z * this->actor.scale.z * 20.0f);
        spC4.x = (Rand_ZeroOne() - 0.5f) * 8.0f;
        spC4.y = Rand_ZeroOne() * 10.0f;
        spC4.z = (Rand_ZeroOne() - 0.5f) * 8.0f;
        new_var = (s32)(Rand_ZeroOne() * 111.1f) & 7;
        EffectSsKakera_Spawn(play, &spB8, &spC4, &spB8, -100, 0x40, 0x28, 3, 0, sFragmentScales[new_var], 0, 0, 80, -1,
                             1, gCuttableShrubStalkDL);

        spB8.x = this->actor.world.pos.x + (dir->x * this->actor.scale.x * 40.0f);
        spB8.y = this->actor.world.pos.y + (dir->y * this->actor.scale.y * 40.0f) + 10.0f;
        spB8.z = this->actor.world.pos.z + (dir->z * this->actor.scale.z * 40.0f);
        spC4.x = (Rand_ZeroOne() - 0.5f) * 6.0f;
        spC4.y = Rand_ZeroOne() * 10.0f;
        spC4.z = (Rand_ZeroOne() - 0.5f) * 6.0f;
        new_var = (s32)(Rand_ZeroOne() * 111.1f) % 7;
        EffectSsKakera_Spawn(play, &spB8, &spC4, &spB8, -100, 0x40, 0x28, 3, 0, sFragmentScales[new_var], 0, 0, 80, -1,
                             1, gCuttableShrubTipDL);
    }
}

void func_80A9B574(EnKusa* this, PlayState* play) {
    s32 var_s0;

    for (var_s0 = 0; var_s0 < 3; var_s0++) {
        if (Actor_Spawn(&play->actorCtx, play, ACTOR_EN_INSECT, this->actor.world.pos.x, this->actor.world.pos.y,
                        this->actor.world.pos.z, 0, (s16)(s32)(Rand_ZeroOne() * 65535.0f), 0,
                        INSECT_TYPE_SPAWNED) == NULL) {
            break;
        }
    }
}

void func_80A9B630(Actor* thisx, PlayState* play) {
    EnKusa* this = (EnKusa*)thisx;

    Collider_InitCylinder(play, &this->unk150);
    Collider_SetCylinder(play, &this->unk150, &this->actor, &D_80A9C208);
    Collider_UpdateCylinder(&this->actor, &this->unk150);
}

void EnKusa_Init(Actor* thisx, PlayState* play) {
    EnKusa* this = (EnKusa*)thisx;

    Actor_ProcessInitChain(&this->actor, D_80A9C27C);
    if (play->csCtx.state != CS_STATE_IDLE) {
        this->actor.cullingVolumeDistance += 1000.0f;
    }
    func_80A9B630(&this->actor, play);
    CollisionCheck_SetInfo(&this->actor.colChkInfo, NULL, &D_80A9C234);
    if (this->actor.shape.rot.y == 0) {
        this->actor.shape.rot.y = this->actor.home.rot.y = this->actor.world.rot.y = (s16)(s32)Rand_ZeroFloat(65536.0f);
    }
    if (func_80A9AFAC(this, play, 0.0f) == 0) {
        Actor_Kill(&this->actor);
        return;
    }
    this->requiredObjectSlot = Object_GetSlot(&play->objectCtx, D_80A9C200[PARAMS_GET_U(this->actor.params, 0, 2)]);
    if (this->requiredObjectSlot < 0) {
        PRINTF("Error : バンク危険！ (arg_data 0x%04x)(%s %d)\n", this->actor.params, "../z_en_kusa.c", 0x231);
        Actor_Kill(&this->actor);
        return;
    }
    EnKusa_SetupWaitForObject(this);
}

void EnKusa_Destroy(Actor* thisx, PlayState* play2) {
    PlayState* play = play2;
    EnKusa* this = (EnKusa*)thisx;

    Collider_DestroyCylinder(play, &this->unk150);
}

void EnKusa_SetupWaitForObject(EnKusa* this) {
    func_80A9AFA0(this, EnKusa_WaitForObject);
}

void EnKusa_WaitForObject(EnKusa* this, PlayState* play) {
    if (Object_IsLoaded(&play->objectCtx, this->requiredObjectSlot)) {
        if (this->actor.flags & ACTOR_FLAG_GRASS_DESTROYED) {
            EnKusa_SetupCut(this);
        } else {
            EnKusa_SetupMain(this);
        }
        this->actor.draw = func_80A9C164;
        this->actor.objectSlot = this->requiredObjectSlot;
        this->actor.flags &= ~ACTOR_FLAG_UPDATE_CULLING_DISABLED;
    }
}

void EnKusa_SetupMain(EnKusa* this) {
    func_80A9AFA0(this, EnKusa_Main);
    this->actor.flags &= ~ACTOR_FLAG_UPDATE_CULLING_DISABLED;
}

void EnKusa_Main(EnKusa* this, PlayState* play) {
    s32 pad;

    if (Actor_HasParent(&this->actor, play)) {
        func_80A9BA98(this);
        SfxSource_PlaySfxAtFixedWorldPos(play, &this->actor.world.pos, 20, NA_SE_PL_PULL_UP_PLANT);
    } else if (this->unk150.base.acFlags & AC_HIT) {
        this->unk150.base.acFlags &= ~AC_HIT;
        func_80A9B21C(this, play);
        func_80A9B07C(this, play);
        SfxSource_PlaySfxAtFixedWorldPos(play, &this->actor.world.pos, 20, NA_SE_EV_PLANT_BROKEN);
        if (PARAMS_GET_U(this->actor.params, 4, 1)) {
            func_80A9B574(this, play);
        }
        if (PARAMS_GET_U(this->actor.params, 0, 2) == ENKUSA_TYPE_0) {
            Actor_Kill(&this->actor);
            return;
        }
        EnKusa_SetupCut(this);
        this->actor.flags |= ACTOR_FLAG_GRASS_DESTROYED;
    } else {
        if (!(this->unk150.base.ocFlags1 & OC1_TYPE_PLAYER) && (this->actor.xzDistToPlayer > 12.0f)) {
            this->unk150.base.ocFlags1 |= OC1_TYPE_PLAYER;
        }
        if (this->actor.xzDistToPlayer < 600.0f) {
            Collider_UpdateCylinder(&this->actor, &this->unk150);
            CollisionCheck_SetAC(play, &play->colChkCtx, &this->unk150.base);
            if (this->actor.xzDistToPlayer < 400.0f) {
                CollisionCheck_SetOC(play, &play->colChkCtx, &this->unk150.base);
                if (this->actor.xzDistToPlayer < 100.0f) {
                    Actor_OfferCarry(&this->actor, play);
                }
            }
        }
    }
}

void func_80A9BA98(EnKusa* this) {
    func_80A9AFA0(this, func_80A9BAD8);
    this->actor.room = -1;
    this->actor.flags |= ACTOR_FLAG_UPDATE_CULLING_DISABLED;
}

void func_80A9BAD8(EnKusa* this, PlayState* play) {
    if (Actor_HasNoParent(&this->actor, play)) {
        this->actor.room = play->roomCtx.curRoom.num;
        EnKusa_SetupFall(this);
        this->actor.velocity.x = Math_SinS(this->actor.world.rot.y) * this->actor.speed;
        this->actor.velocity.z = Math_CosS(this->actor.world.rot.y) * this->actor.speed;
        this->actor.colChkInfo.mass = 240;
        this->actor.gravity = -0.1f;
        EnKusa_UpdateVelY(this);
        EnKusa_RandScaleVecToZero(&this->actor.velocity, 0.005f);
        Actor_UpdatePos(&this->actor);
        Actor_UpdateBgCheckInfo(play, &this->actor, 7.5f, 35.0f, 0.0f,
                                UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2 | UPDBGCHECKINFO_FLAG_6 |
                                    UPDBGCHECKINFO_FLAG_7);
        this->actor.gravity = -3.2f;
    }
}

void EnKusa_SetupFall(EnKusa* this) {
    func_80A9AFA0(this, EnKusa_Fall);
    rotSpeedXtarget = -0xBB8;
    rotSpeedYtarget = (s16)(s32)((Rand_ZeroOne() - 0.5f) * 1600.0f);
    rotSpeedX = 0;
    rotSpeedY = 0;
}

void EnKusa_Fall(EnKusa* this, PlayState* play) {
    s32 pad;
    Vec3f sp30;

    if (this->actor.bgCheckFlags & (BGCHECKFLAG_GROUND | BGCHECKFLAG_GROUND_TOUCH | BGCHECKFLAG_WALL)) {
        if (!(this->actor.bgCheckFlags & BGCHECKFLAG_WATER)) {
            SfxSource_PlaySfxAtFixedWorldPos(play, &this->actor.world.pos, 20, NA_SE_EV_PLANT_BROKEN);
        }
        func_80A9B21C(this, play);
        func_80A9B07C(this, play);
        switch (PARAMS_GET_U(this->actor.params, 0, 2)) {
            case ENKUSA_TYPE_0:
            case ENKUSA_TYPE_2:
                Actor_Kill(&this->actor);
                break;
            case ENKUSA_TYPE_1:
                EnKusa_SetupUprootedWaitRegrow(this);
                break;
        }
        return;
    }
    if (this->actor.bgCheckFlags & BGCHECKFLAG_WATER_TOUCH) {
        sp30.x = this->actor.world.pos.x;
        sp30.y = this->actor.world.pos.y + this->actor.depthInWater;
        sp30.z = this->actor.world.pos.z;
        EffectSsGSplash_Spawn(play, &sp30, NULL, NULL, 0, 400);
        EffectSsGRipple_Spawn(play, &sp30, 150, 650, 0);
        EffectSsGRipple_Spawn(play, &sp30, 400, 800, 4);
        EffectSsGRipple_Spawn(play, &sp30, 500, 1100, 8);
        this->actor.minVelocityY = -3.0f;
        rotSpeedX = (s16)((s16)rotSpeedX >> 1);
        rotSpeedXtarget = (s16)((s16)rotSpeedXtarget >> 1);
        rotSpeedY = (s16)((s16)rotSpeedY >> 1);
        rotSpeedYtarget = (s16)((s16)rotSpeedYtarget >> 1);
        this->actor.bgCheckFlags &= ~BGCHECKFLAG_WATER_TOUCH;
        SfxSource_PlaySfxAtFixedWorldPos(play, &this->actor.world.pos, 40, NA_SE_EV_DIVE_INTO_WATER_L);
    }
    EnKusa_UpdateVelY(this);
    Math_StepToS(&rotSpeedX, rotSpeedXtarget, 0x1F4);
    Math_StepToS(&rotSpeedY, rotSpeedYtarget, 0xAA);
    this->actor.shape.rot.x += rotSpeedX;
    this->actor.shape.rot.y += rotSpeedY;
    EnKusa_RandScaleVecToZero(&this->actor.velocity, 0.05f);
    Actor_UpdatePos(&this->actor);
    Actor_UpdateBgCheckInfo(play, &this->actor, 7.5f, 35.0f, 0.0f,
                            UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2 | UPDBGCHECKINFO_FLAG_6 |
                                UPDBGCHECKINFO_FLAG_7);
    Collider_UpdateCylinder(&this->actor, &this->unk150);
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->unk150.base);
}

void EnKusa_SetupCut(EnKusa* this) {
    switch (PARAMS_GET_U(this->actor.params, 0, 2)) {
        case ENKUSA_TYPE_2:
            func_80A9AFA0(this, EnKusa_DoNothing);
            break;
        case ENKUSA_TYPE_1:
            func_80A9AFA0(this, EnKusa_CutWaitRegrow);
            break;
    }
}

void EnKusa_CutWaitRegrow(EnKusa* this, PlayState* play) {
    if (this->unk19C >= 0x78) {
        EnKusa_SetupRegrow(this);
    }
}

void EnKusa_DoNothing(EnKusa* this, PlayState* play) {
}

void EnKusa_SetupUprootedWaitRegrow(EnKusa* this) {
    this->actor.world.pos.x = this->actor.home.pos.x;
    this->actor.world.pos.y = this->actor.home.pos.y - 9.0f;
    this->actor.world.pos.z = this->actor.home.pos.z;
    EnKusa_SetScaleSmall(this);
    this->actor.shape.rot = this->actor.home.rot;
    func_80A9AFA0(this, EnKusa_UprootedWaitRegrow);
}

void EnKusa_UprootedWaitRegrow(EnKusa* this, PlayState* play) {
    if ((this->unk19C >= 0x79) && Math_StepToF(&this->actor.world.pos.y, this->actor.home.pos.y, 0.6f) &&
        (this->unk19C >= 0xAA)) {
        EnKusa_SetupRegrow(this);
    }
}

void EnKusa_SetupRegrow(EnKusa* this) {
    func_80A9AFA0(this, EnKusa_Regrow);
    EnKusa_SetScaleSmall(this);
    this->actor.shape.rot = this->actor.home.rot;
    this->actor.flags &= ~ACTOR_FLAG_GRASS_DESTROYED;
}

void EnKusa_Regrow(EnKusa* this, PlayState* play) {
    s32 isFullyGrown = true;

    isFullyGrown &= Math_StepToF(&this->actor.scale.y, 0.4f, 0.014f);
    isFullyGrown &= Math_StepToF(&this->actor.scale.x, 0.4f, 0.011f);
    this->actor.scale.z = this->actor.scale.x;
    if (isFullyGrown) {
        Actor_SetScale(&this->actor, 0.4f);
        EnKusa_SetupMain(this);
        this->unk150.base.ocFlags1 &= ~OC1_TYPE_PLAYER;
    }
}

void EnKusa_Update(Actor* thisx, PlayState* play) {
    EnKusa* this = (EnKusa*)thisx;
    this->unk19C += 1;
    this->actionFunc(this, play);
    if (this->actor.flags & ACTOR_FLAG_GRASS_DESTROYED) {
        this->actor.shape.yOffset = -6.25f;
    } else {
        this->actor.shape.yOffset = 0.0f;
    }
}

void func_80A9C164(Actor* thisx, PlayState* play) {
    if (thisx->flags & ACTOR_FLAG_GRASS_DESTROYED) {
        Gfx_DrawDListOpa(play, object_kusa_DL_0002E0);
    } else {
        Gfx_DrawDListOpa(play, D_80A9C294[PARAMS_GET_U(thisx->params, 0, 2)]);
    }
}
