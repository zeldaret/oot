/*
 * File: z_en_wood02.c
 * Overlay: ovl_En_Wood02
 * Description: Trees & Bushes
 */

#include "z_en_wood02.h"

#include "libc64/qrand.h"
#include "attributes.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "ichain.h"
#include "rand.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "z_en_item00.h"
#include "z_lib.h"
#include "play_state.h"
#include "player.h"
#include "skin_matrix.h"

#include "assets/objects/object_wood02/object_wood02.h"

#define FLAGS 0

void EnWood02_Init(Actor* thisx, PlayState* play);
void EnWood02_Destroy(Actor* thisx, PlayState* play);
void EnWood02_Update(Actor* thisx, PlayState* play);
void EnWood02_Draw(Actor* thisx, PlayState* play);

s32 EnWood02_IsInUncullZone(EnWood02* this, PlayState* play, Vec3f* pos);
void EnWood02_SpawnUnculledChildren(EnWood02* this, PlayState* play);

extern Gfx D_6000090[];
extern Gfx D_6000340[];
extern Gfx D_6000440[];
extern Gfx D_6000700[];
extern Gfx D_6007E20[];

ActorProfile En_Wood02_Profile = {
    /**/ ACTOR_EN_WOOD02,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_WOOD02,
    /**/ sizeof(EnWood02),
    /**/ EnWood02_Init,
    /**/ EnWood02_Destroy,
    /**/ EnWood02_Update,
    /**/ EnWood02_Draw,
};
static ColliderCylinderInit D_80B3BF00 = {
    { 0xD, 0, 0xD, 0x39, 0x10, 1 },
    { 5, { 0, 0, 0 }, { 0x0FC0074A, 0, 0 }, 0, 1, 1 },
    { 0x12, 0x3C, 0, { 0, 0, 0 } },
};
static f32 sSpawnDistances[] = { 707.0f, 525.0f, 510.0f, 500.0f, 566.0f, 141.0f };
static s16 sSpawnAngles[] = { 0x1FFF, 0x4C9E, 0x77F5, 0xA5C9, -0x293D, 0xA000 };
static InitChainEntry sInitChain[] = {
    ICHAIN_F32(lockOnArrowOffset, 5600, ICHAIN_STOP),
};
static Gfx* D_80B3BF54[7] = {
    object_wood02_DL_0078D0, object_wood02_DL_007CA0, object_wood02_DL_0080D0, object_wood02_DL_000090,
    object_wood02_DL_000340, object_wood02_DL_000340, object_wood02_DL_000700,
};
static Gfx* D_80B3BF70[0xC] = {
    object_wood02_DL_007968,
    object_wood02_DL_007D38,
    object_wood02_DL_0081A8,
    NULL,
    NULL,
    NULL,
    object_wood02_DL_007AD0,
    object_wood02_DL_007E20,
    object_wood02_DL_008350,
    object_wood02_DL_000160,
    object_wood02_DL_000440,
    object_wood02_DL_000700,
};
static f32 sCos;
static f32 sSin;

s32 EnWood02_IsInUncullZone(EnWood02* this, PlayState* play, Vec3f* pos) {
    f32 invW;

    SkinMatrix_Vec3fMtxFMultXYZW(&play->viewProjectionMtxF, pos, &this->actor.projectedPos, &this->actor.projectedW);
    if (this->actor.projectedW == 0.0f) {
        invW = 1000.0f;
    } else {
        invW = fabsf(1.0f / this->actor.projectedW);
    }
    if ((-this->actor.cullingVolumeScale < this->actor.projectedPos.z) &&
        (this->actor.projectedPos.z < (this->actor.cullingVolumeDistance + this->actor.cullingVolumeScale)) &&
        (((fabsf(this->actor.projectedPos.x) - this->actor.cullingVolumeScale) * invW) < 1.0f)) {
        if ((((this->actor.projectedPos.y + this->actor.cullingVolumeDownward) * invW) > -1.0f) &&
            (((this->actor.projectedPos.y - this->actor.cullingVolumeScale) * invW) < 1.0f)) {
            return true;
        }
    }
    return false;
}

void EnWood02_SpawnUnculledChildren(EnWood02* this, PlayState* play) {
    s32 pad[2];
    Vec3f newEnWood02Pos;
    EnWood02* newEnWood02;
    s16 spawnAngleModifier;
    s16 newEnWood02Params;
    s32 i;

    for (i = 4; i >= 0; i--) {
        if ((this->unk14E[i] & 0x7F) == 0) {
            spawnAngleModifier = 0;
            if (this->actor.params == EN_WOOD_02_TYPE_15) {
                spawnAngleModifier = 0x4000;
            }
            sCos = Math_CosS(sSpawnAngles[i] + this->actor.world.rot.y + spawnAngleModifier);
            sSin = Math_SinS(sSpawnAngles[i] + this->actor.world.rot.y + spawnAngleModifier);
            newEnWood02Pos.x = (sSpawnDistances[i] * sSin) + this->actor.home.pos.x;
            newEnWood02Pos.y = this->actor.home.pos.y;
            newEnWood02Pos.z = (sSpawnDistances[i] * sCos) + this->actor.home.pos.z;
            if (EnWood02_IsInUncullZone(this, play, &newEnWood02Pos)) {
                if (this->unk14E[i] & 0x80) {
                    newEnWood02Params = ((this->actor.params + 1) | 0xFF00);
                } else {
                    newEnWood02Params = (((this->unk154 & 0xF0) * 0x10) | (this->actor.params + 1));
                }
                newEnWood02 = (EnWood02*)Actor_SpawnAsChild(
                    &play->actorCtx, &this->actor, play, ACTOR_EN_WOOD02, newEnWood02Pos.x, newEnWood02Pos.y,
                    newEnWood02Pos.z, this->actor.world.rot.x, sSpawnAngles[i], 0, newEnWood02Params);
                if (newEnWood02 != NULL) {
                    newEnWood02->unk14E[0] = i;
                    this->unk14E[i] |= 1;
                    newEnWood02->actor.projectedPos = this->actor.projectedPos;
                } else {
                    this->unk14E[i] &= 0x80;
                }
            }
        }
    }
}

void EnWood02_Init(Actor* thisx, PlayState* play) {
    s16 var_t0_sp4E;
    f32 scale;
    EnWood02* this = (EnWood02*)thisx;
    f32 floorY;
    CollisionPoly* floorPoly;
    s32 floorBgId;
    s32 pad;
    s16 spawnAngleModifier;

    scale = 1.0f;
    var_t0_sp4E = 0;
    this->unk14C = PARAMS_GET_U(this->actor.params, 8, 8);
    if (this->actor.home.rot.z != 0) {
        this->actor.shape.rot.z = 0;
        this->actor.home.rot.z = (this->actor.home.rot.z << 8) | this->unk14C;
        this->unk14C = -1;
        this->actor.world.rot.z = this->actor.shape.rot.z;
    } else if (this->unk14C & 0x80) {
        this->unk14C = -1;
    }
    this->actor.params = PARAMS_GET_U(this->actor.params, 0, 8);
    Actor_ProcessInitChain(&this->actor, sInitChain);
    if (this->actor.params < EN_WOOD_02_TYPE_11) {
        Collider_InitCylinder(play, &this->unk158);
        Collider_SetCylinder(play, &this->unk158, &this->actor, &D_80B3BF00);
        var_t0_sp4E = 0;
    }
    switch (this->actor.params) {
        case EN_WOOD_02_TYPE_15:
        case EN_WOOD_02_TYPE_21:
            var_t0_sp4E = 1;
            FALLTHROUGH;
        case EN_WOOD_02_TYPE_16:
        case EN_WOOD_02_TYPE_22:
            var_t0_sp4E += 1;
            FALLTHROUGH;
        case EN_WOOD_02_TYPE_0:
        case EN_WOOD_02_TYPE_12:
        case EN_WOOD_02_TYPE_18:
            scale = 1.5f;
            this->actor.cullingVolumeDistance = 4000.0f;
            this->actor.cullingVolumeScale = 2000.0f;
            this->actor.cullingVolumeDownward = 2400.0f;
            break;

        case EN_WOOD_02_TYPE_3:
        case EN_WOOD_02_TYPE_6:
        case EN_WOOD_02_TYPE_8:
        case EN_WOOD_02_TYPE_13:
        case EN_WOOD_02_TYPE_19:
            var_t0_sp4E = 1;
            FALLTHROUGH;
        case EN_WOOD_02_TYPE_4:
        case EN_WOOD_02_TYPE_7:
        case EN_WOOD_02_TYPE_9:
        case EN_WOOD_02_TYPE_14:
        case EN_WOOD_02_TYPE_20:
            var_t0_sp4E += 1;
            FALLTHROUGH;
        case EN_WOOD_02_TYPE_1:
        case EN_WOOD_02_TYPE_5:
        case EN_WOOD_02_TYPE_10:
        case EN_WOOD_02_TYPE_11:
        case EN_WOOD_02_TYPE_17:
            this->actor.cullingVolumeDistance = 4000.0f;
            this->actor.cullingVolumeScale = 800.0f;
            this->actor.cullingVolumeDownward = 1800.0f;
            break;

        case EN_WOOD_02_TYPE_2:
            scale = 0.6f;
            this->actor.cullingVolumeDistance = 4000.0f;
            this->actor.cullingVolumeScale = 400.0f;
            this->actor.cullingVolumeDownward = 1000.0f;
            break;

        case EN_WOOD_02_TYPE_23:
        case EN_WOOD_02_TYPE_24:
            this->unk14E[0] = 0x4B;
            scale = 0.02f;
            this->actor.velocity.x = Rand_CenteredFloat(6.0f);
            this->actor.velocity.z = Rand_CenteredFloat(6.0f);
            var_t0_sp4E = 0;
            this->actor.velocity.y = (Rand_ZeroOne() * 1.25f) + -3.1f;
            break;
    }
    if (this->actor.params <= EN_WOOD_02_TYPE_4) {
        this->unk154 = 0;
    } else if (this->actor.params <= EN_WOOD_02_TYPE_9) {
        this->unk154 = 1;
    } else if (this->actor.params <= EN_WOOD_02_TYPE_10) {
        this->unk154 = 2;
    } else if (this->actor.params <= EN_WOOD_02_TYPE_16) {
        this->unk154 = 3;
    } else if (this->actor.params <= EN_WOOD_02_TYPE_23) {
        this->unk154 = 4;
    } else {
        this->unk154 = 5;
    }
    Actor_SetScale(&this->actor, scale);
    this->unk153 = var_t0_sp4E;
    if (var_t0_sp4E != 0) {
        spawnAngleModifier = 0;
        if (this->actor.params == EN_WOOD_02_TYPE_15) {
            spawnAngleModifier = 0x4000;
        }
        if (var_t0_sp4E == 2) {
            this->unk154 |= this->unk14C * 0x10;
            EnWood02_SpawnUnculledChildren(this, play);
            sCos = Math_CosS(sSpawnAngles[5] + this->actor.world.rot.y + spawnAngleModifier);
            sSin = Math_SinS(sSpawnAngles[5] + this->actor.world.rot.y + spawnAngleModifier);
            this->actor.world.pos.x += sSin * sSpawnDistances[5];
            this->actor.world.pos.z += sCos * sSpawnDistances[5];
        } else {
            this->actor.flags |= ACTOR_FLAG_UPDATE_CULLING_DISABLED;
        }
        this->actor.world.pos.y += 200.0f;
        floorY =
            BgCheck_EntityRaycastDown4(&play->colCtx, &floorPoly, &floorBgId, &this->actor, &this->actor.world.pos);
        if (floorY > BGCHECK_Y_MIN) {
            this->actor.world.pos.y = floorY;
        } else {
            Actor_Kill(&this->actor);
            return;
        }
    }
    ActorShape_Init(&this->actor.shape, 0.0f, NULL, 0.0f);
    this->actor.home.rot.y = 0;
    this->actor.colChkInfo.mass = MASS_IMMOVABLE;
}

void EnWood02_Destroy(Actor* thisx, PlayState* play) {
    EnWood02* this = (EnWood02*)thisx;

    if (this->actor.params < EN_WOOD_02_TYPE_11) {
        Collider_DestroyCylinder(play, &this->unk158);
    }
}

void EnWood02_Update(Actor* thisx, PlayState* play) {
    s32 pad2;
    EnWood02* this = (EnWood02*)thisx;
    f32 sp6C;
    u8 v;
    u8 var_v0;
    s32 pad;

    if ((this->unk153 == 1) && (this->actor.parent != NULL)) {
        if (!(this->actor.flags & ACTOR_FLAG_INSIDE_CULLING_VOLUME)) {
            v = this->unk14E[0];
            var_v0 = 0;
            if (this->unk14C < 0) {
                var_v0 = 0x80;
            }
            ((EnWood02*)this->actor.parent)->unk14E[v] = var_v0;
            Actor_Kill(&this->actor);
            return;
        }
    } else if (this->unk153 == 2) {
        EnWood02_SpawnUnculledChildren(this, play);
    }
    if (thisx->params < EN_WOOD_02_TYPE_11) {
        if (this->unk158.base.acFlags & AC_HIT) {
            this->unk158.base.acFlags &= ~AC_HIT;
            Actor_PlaySfx(&this->actor, NA_SE_IT_REFLECTION_WOOD);
        }
        if (this->actor.home.rot.y != 0) {
            Vec3f sp58;
            s32 var_s0;
            s32 var_v1_sp44_or_sp50;

            sp58 = this->actor.world.pos;
            sp58.y += 200.0f;
            if ((this->unk14C >= 0) && (this->unk14C < 0x64)) {
                Item_DropCollectibleRandom(play, &this->actor, &sp58,
                                           COLLECTIBLE_DROP_RANDOM_PARAMS(this->unk14C, false));
            } else if (this->actor.home.rot.z != 0) {
                this->actor.home.rot.z &= 0x1FFF;
                this->actor.home.rot.z |= 0xE000;
                Actor_Spawn(&play->actorCtx, play, ACTOR_EN_SW, sp58.x, sp58.y, sp58.z, 0, this->actor.world.rot.y, 0,
                            this->actor.home.rot.z);
                this->actor.home.rot.z = 0;
            }
            var_v1_sp44_or_sp50 = EN_WOOD_02_TYPE_23;
            if (this->unk14C >= -1) {
                if ((this->actor.params == EN_WOOD_02_TYPE_6) || (this->actor.params == EN_WOOD_02_TYPE_7)) {
                    var_v1_sp44_or_sp50 = EN_WOOD_02_TYPE_24;
                }
                Actor_PlaySfx(&this->actor, NA_SE_EV_TREE_SWING);
                for (var_s0 = 3; var_s0 >= 0; var_s0--) {
                    Actor_Spawn(&play->actorCtx, play, ACTOR_EN_WOOD02, sp58.x, sp58.y, sp58.z, 0,
                                (s16)(s32)Rand_CenteredFloat(65535.0f), 0, var_v1_sp44_or_sp50);
                }
            }
            this->unk14C = -21;
            this->actor.home.rot.y = 0;
        }
        if (this->actor.xzDistToPlayer < 600.0f) {
            Collider_UpdateCylinder(&this->actor, &this->unk158);
            CollisionCheck_SetAC(play, &play->colChkCtx, &this->unk158.base);
            CollisionCheck_SetOC(play, &play->colChkCtx, &this->unk158.base);
        }
    } else if (this->actor.params < EN_WOOD_02_TYPE_23) {
        Player* player;

        player = GET_PLAYER(play);
        if ((this->unk14C >= (-1)) &&
            (((((player->rideActor == NULL)) && (sqrt(this->actor.xyzDistToPlayerSq) < 20.0)) &&
              (player->speedXZ != 0.0f)) ||
             (((player->rideActor != NULL) && (sqrt(this->actor.xyzDistToPlayerSq) < 60.0)) &&
              (player->rideActor->speed != 0.0f)))) {
            if ((this->unk14C >= 0) && (this->unk14C < 0x64)) {
                Item_DropCollectibleRandom(play, &this->actor, &this->actor.world.pos,
                                           COLLECTIBLE_DROP_RANDOM_PARAMS(this->unk14C, true));
            }
            this->unk14C = -21;
            Actor_PlaySfx(&this->actor, NA_SE_EV_TREE_SWING);
        }
    } else {
        this->unk14C += 1;
        Math_ApproachF(&this->actor.velocity.x, 0.0f, 1.0f, 0.049999997f);
        Math_ApproachF(&this->actor.velocity.z, 0.0f, 1.0f, 0.049999997f);
        Actor_UpdatePos(&this->actor);
        this->actor.shape.rot.z = (s16)(s32)(Math_SinS((s16)(this->unk14C * 0xBB8)) * 16384.0f);
        this->unk14E[0] -= 1;
        if (this->unk14E[0] == 0) {
            Actor_Kill(&this->actor);
        }
    }
    if (this->unk14C < -1) {
        this->unk14C += 1;
        sp6C = Math_SinS((this->unk14C ^ 0xFFFF) * 0x3332) * 250.0f;
        this->actor.shape.rot.x = Math_CosS(this->actor.yawTowardsPlayer - this->actor.shape.rot.y) * sp6C;
        this->actor.shape.rot.z = Math_SinS(this->actor.yawTowardsPlayer - this->actor.shape.rot.y) * sp6C;
    }
}

void EnWood02_Draw(Actor* thisx, PlayState* play) {
    GraphicsContext* gfxCtx;
    s16 type;
    EnWood02* this = (EnWood02*)thisx;
    u8 r;
    u8 g;
    u8 b;

    gfxCtx = play->state.gfxCtx;
    OPEN_DISPS(gfxCtx, "../z_en_wood02.c", 775);
    type = this->actor.params;
    if ((type == EN_WOOD_02_TYPE_8) || (type == EN_WOOD_02_TYPE_9) || (type == EN_WOOD_02_TYPE_5) ||
        (type == EN_WOOD_02_TYPE_23)) {
        r = 50;
        g = 170;
        b = 70;
    } else if ((type == EN_WOOD_02_TYPE_6) || (type == EN_WOOD_02_TYPE_7) || ((type == EN_WOOD_02_TYPE_24))) {
        r = 180;
        g = 155;
        b = 0;
    } else {
        r = g = b = 255;
    }
    Gfx_SetupDL_25Xlu(gfxCtx);
    if ((this->actor.params == EN_WOOD_02_TYPE_23) || (this->actor.params == EN_WOOD_02_TYPE_24)) {
        Gfx_SetupDL_25Opa(gfxCtx);
        gDPSetPrimColor(POLY_OPA_DISP++, 0x00, 0x00, r, g, b, 127);
        Gfx_DrawDListOpa(play, object_wood02_DL_000700);
    } else {
        if (D_80B3BF70[this->unk154 & 0xF] != NULL) {
            Gfx_DrawDListOpa(play, D_80B3BF54[this->unk154 & 0xF]);
            gDPSetEnvColor(POLY_XLU_DISP++, r, g, b, 0);
            MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, gfxCtx, "../z_en_wood02.c", 808);
            gSPDisplayList(POLY_XLU_DISP++, D_80B3BF70[this->unk154 & 0xF]);
        } else {
            Gfx_SetupDL_25Xlu(gfxCtx);
            MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, gfxCtx, "../z_en_wood02.c", 814);
            gSPDisplayList(POLY_XLU_DISP++, D_80B3BF54[this->unk154 & 0xF]);
        }
    }
    CLOSE_DISPS(gfxCtx, "../z_en_wood02.c", 840);
}
