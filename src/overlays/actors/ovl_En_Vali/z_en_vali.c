/*
 * File: z_en_vali.c
 * Overlay: ovl_En_Vali
 * Description: Bari (Big Jellyfish)
 */

#include "z_en_vali.h"

#include "libc64/qrand.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "ichain.h"
#include "rand.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "z_en_item00.h"
#include "z_lib.h"
#include "effect.h"
#include "play_state.h"

#include "assets/objects/object_vali/object_vali.h"

#define FLAGS \
    (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_HOSTILE | ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_IGNORE_QUAKE)

void EnVali_Init(Actor* thisx, PlayState* play);
void EnVali_Destroy(Actor* thisx, PlayState* play);
void EnVali_Update(Actor* thisx, PlayState* play);
void EnVali_Draw(Actor* thisx, PlayState* play);

void func_80B26878(EnVali* this);
void func_80B27098(EnVali* this, PlayState* play);
void func_80B270D8(EnVali* this, PlayState* play);
void func_80B2716C(EnVali* this, PlayState* play);
void func_80B27318(EnVali* this, PlayState* play);
void func_80B273D0(EnVali* this, PlayState* play);
void func_80B2742C(EnVali* this, PlayState* play);
void func_80B27464(EnVali* this, PlayState* play);
void func_80B274A0(EnVali* this, PlayState* play);
void func_80B27654(EnVali* this, PlayState* play);
void func_80B27710(EnVali* this, PlayState* play);
void func_80B278A0(EnVali* this, PlayState* play);

ActorProfile En_Vali_Profile = {
    /**/ ACTOR_EN_VALI,
    /**/ ACTORCAT_ENEMY,
    /**/ FLAGS,
    /**/ OBJECT_VALI,
    /**/ sizeof(EnVali),
    /**/ EnVali_Init,
    /**/ EnVali_Destroy,
    /**/ EnVali_Update,
    /**/ EnVali_Draw,
};

static ColliderQuadInit D_80B288A0 = {
    {
        COL_MATERIAL_NONE,
        AT_ON | AT_TYPE_ENEMY,
        AC_NONE,
        OC1_NONE,
        OC2_TYPE_1,
        COLSHAPE_QUAD,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0xFFCFFFFF, HIT_SPECIAL_EFFECT_7, 0x08 },
        { 0x00000000, HIT_BACKLASH_NONE, 0x00 },
        ATELEM_ON | ATELEM_SFX_NONE,
        ACELEM_NONE,
        OCELEM_NONE,
    },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};

static ColliderCylinderInit D_80B288F0 = {
    {
        COL_MATERIAL_HIT8,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0xFFCFFFFF, HIT_SPECIAL_EFFECT_7, 0x08 },
        { 0xFFCFFFFF, HIT_BACKLASH_ELECTRIC, 0x00 },
        ATELEM_ON | ATELEM_SFX_NORMAL,
        ACELEM_ON,
        OCELEM_ON,
    },
    { 17, 35, -15, { 0, 0, 0 } },
};

static CollisionCheckInfoInit D_80B2891C = { 2, 0x12, 0x20, 0xFE };
static DamageTable D_80B28924 = {
    {
        0x10, 2,    0xE0, 2, 0x10, 2, 2, 2, 0xF1, 0xF2, 0xF4, 0x24, 0x34, 2, 2, 2,
        2,    0x24, 0x34, 0, 0,    0, 1, 4, 2,    2,    8,    4,    0,    0, 4, 0,
    },
};
static InitChainEntry D_80B28944[3] = {
    ICHAIN_S8(naviEnemyId, NAVI_ENEMY_BARI, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 10, ICHAIN_CONTINUE),
    ICHAIN_F32(lockOnArrowOffset, 5000, ICHAIN_STOP),
};
static Color_RGBA8 D_80B28950 = { 255, 255, 255, 255 };
static Color_RGBA8 D_80B28954 = { 200, 255, 255, 255 };

void EnVali_Init(Actor* thisx, PlayState* play) {
    s32 pad;
    EnVali* this = (EnVali*)thisx;
    s32 sp34;

    Actor_ProcessInitChain(&this->actor, D_80B28944);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 27.0f);
    this->actor.shape.shadowAlpha = 155;
    SkelAnime_Init(play, &this->unk14C, &object_vali_004848_Skel, &object_vali_Anim_0014AC, this->unk198, this->unk246,
                   29);
    Collider_InitQuad(play, &this->unk2FC);
    Collider_SetQuad(play, &this->unk2FC, &this->actor, &D_80B288A0);
    Collider_InitQuad(play, &this->unk37C);
    Collider_SetQuad(play, &this->unk37C, &this->actor, &D_80B288A0);
    Collider_InitCylinder(play, &this->unk3FC);
    Collider_SetCylinder(play, &this->unk3FC, &this->actor, &D_80B288F0);
    CollisionCheck_SetInfo(&this->actor.colChkInfo, &D_80B28924, &D_80B2891C);
    func_80B26878(this);
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    this->actor.floorHeight =
        BgCheck_EntityRaycastDown4(&play->colCtx, &this->actor.floorPoly, &sp34, &this->actor, &this->actor.world.pos);
    this->actor.params = 0;
    if (this->actor.floorHeight == BGCHECK_Y_MIN) {
        Actor_Kill(&this->actor);
    }
}

void EnVali_Destroy(Actor* thisx, PlayState* play) {
    EnVali* this = (EnVali*)thisx;
    Collider_DestroyQuad(play, &this->unk2FC);
    Collider_DestroyQuad(play, &this->unk37C);
    Collider_DestroyCylinder(play, &this->unk3FC);
}

void func_80B26878(EnVali* this) {
    Animation_PlayLoop(&this->unk14C, &object_vali_Anim_0014AC);
    this->actor.draw = NULL;
    this->unk3FC.base.acFlags &= ~AC_ON;
    this->unk190 = func_80B27098;
}

void func_80B268C8(EnVali* this) {
    this->actor.draw = EnVali_Draw;
    this->actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED;
    this->unk190 = func_80B270D8;
    this->actor.velocity.y = 1.0f;
}

void func_80B268FC(EnVali* this) {
    Vec3f sp84;
    Vec3f sp78;
    Vec3f sp6C;
    Vec3f sp60;
    Vec3f sp54;
    Vec3f sp48;
    Vec3f sp3C;
    f32 temp_fv0;
    f32 temp_fv1;
    s32 pad[6];

    Animation_MorphToLoop(&this->unk14C, &object_vali_Anim_000710, -3.0f);
    sp3C = this->actor.world.pos;
    this->unk37C.dim.quad[1] = sp3C;
    sp48 = sp3C;
    this->unk37C.dim.quad[0] = sp48;
    sp54 = sp48;
    this->unk2FC.dim.quad[1] = sp54;
    sp60 = sp54;
    this->unk2FC.dim.quad[0] = sp60;
    sp6C = sp60;
    this->unk37C.dim.quad[3] = sp6C;
    sp78 = sp6C;
    this->unk37C.dim.quad[2] = sp78;
    sp84 = sp78;
    this->unk2FC.dim.quad[3] = sp84;
    temp_fv1 = this->actor.world.pos.y;
    temp_fv0 = temp_fv1 - 10.0f;
    this->unk2FC.dim.quad[2] = sp84;
    this->unk2FC.dim.quad[2].y = temp_fv0;
    this->unk2FC.dim.quad[3].y = temp_fv0;
    this->unk37C.dim.quad[2].y = temp_fv0;
    this->unk37C.dim.quad[3].y = temp_fv0;
    this->unk2FC.dim.quad[0].y = temp_fv0;
    this->unk2FC.dim.quad[1].y = temp_fv0;
    this->unk37C.dim.quad[0].y = temp_fv0;
    this->unk37C.dim.quad[1].y = temp_fv0;
    this->actor.flags &= ~ACTOR_FLAG_UPDATE_CULLING_DISABLED;
    this->unk3FC.base.acFlags |= AC_ON;
    this->unk195 = 0;
    this->unk190 = func_80B2716C;
    this->unk2F8 = temp_fv1;
}

void func_80B26B18(EnVali* this) {
    this->unk194 = 0x14;
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    this->unk3FC.base.acFlags &= ~AC_ON;
    this->unk190 = func_80B27318;
}

void func_80B26B4C(EnVali* this) {
    Animation_MorphToPlayOnce(&this->unk14C, &object_vali_Anim_000854, -5.0f);
    Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_RED, 150, COLORFILTER_BUFFLAG_XLU, 30);
    this->actor.params = 0;
    this->unk3FC.base.acFlags &= ~AC_ON;
    this->unk190 = func_80B273D0;
}

void func_80B26BBC(EnVali* this) {
    Animation_PlayOnce(&this->unk14C, &object_vali_Anim_000B34);
    this->unk190 = func_80B2742C;
}

void func_80B26BF8(EnVali* this) {
    this->unk196 = 2;
    this->unk3FC.base.acFlags &= ~AC_ON;
    Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_RED, 150, COLORFILTER_BUFFLAG_XLU, 30);
    this->unk190 = func_80B27464;
}

void func_80B26C50(EnVali* this, PlayState* play) {
    PosRot* temp_s1;
    s32 var_s1;

    for (var_s1 = 0; var_s1 < 3; var_s1++) {
        Actor_Spawn(&play->actorCtx, play, ACTOR_EN_BILI, this->actor.world.pos.x, this->actor.world.pos.y,
                    this->actor.world.pos.z, 0, this->actor.world.rot.y, 0, 0);
        this->actor.world.rot.y += 0x5555;
    }
    temp_s1 = &this->actor.world;
    Item_DropCollectibleRandom(play, &this->actor, &temp_s1->pos,
                               COLLECTIBLE_DROP_RANDOM_PARAMS(COLLECTIBLE_DROP_TABLE_5, false));
    this->unk196 = Rand_S16Offset(0xA, 0xA);
    this->unk3FC.base.acFlags &= ~AC_ON;
    SfxSource_PlaySfxAtFixedWorldPos(play, &temp_s1->pos, 40, NA_SE_EN_BARI_SPLIT);
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    this->actor.draw = NULL;
    this->unk190 = func_80B274A0;
}

void func_80B26D54(EnVali* this) {
    Animation_MorphToPlayOnce(&this->unk14C, &object_vali_Anim_000710, 10.0f);
    this->unk196 = 0x50;
    this->actor.velocity.y = 0.0f;
    Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_BLUE, 255, COLORFILTER_BUFFLAG_XLU, 80);
    this->unk3FC.elem.acDmgInfo.hitBacklash = HIT_BACKLASH_NONE;
    Actor_PlaySfx(&this->actor, 0x389EU);
    this->unk190 = func_80B27654;
    this->actor.velocity.y = 1.0f;
}

void func_80B26DE0(EnVali* this) {
    this->actor.velocity.y = 0.0f;
    Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_BLUE, 255, COLORFILTER_BUFFLAG_XLU, 36);
    this->unk3FC.base.acFlags &= ~AC_ON;
    this->unk196 = 0x24;
    this->unk190 = func_80B27710;
}

void func_80B26E40(EnVali* this) {
    Animation_MorphToPlayOnce(&this->unk14C, &object_vali_Anim_0014AC, 10.0f);
    this->actor.flags |= ACTOR_FLAG_UPDATE_CULLING_DISABLED;
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    this->unk190 = func_80B278A0;
}

void func_80B26E9C(EnVali* this, PlayState* play) {
    Vec3f sp8C;
    f32 temp_fs1;
    f32 temp_fs2;
    s32 var_s1;
    s16 temp_v0;

    for (var_s1 = 0; var_s1 < 4; var_s1++) {
        temp_fs1 = -Math_CosS(Camera_GetCamDirYaw(GET_ACTIVE_CAM(play)));
        temp_fs2 = Math_SinS(Camera_GetCamDirYaw(GET_ACTIVE_CAM(play)));
        if (!((this->unk194 + (var_s1 << 1)) % 4)) {
            temp_v0 = (s16)Rand_CenteredFloat(12288.0f) + (var_s1 * 0x4000) + 0x2000;
            sp8C.x = this->actor.world.pos.x + (Math_SinS(temp_v0) * 12.0f * temp_fs1);
            sp8C.y = this->actor.world.pos.y - (Math_CosS(temp_v0) * 12.0f) + 10.0f;
            sp8C.z = this->actor.world.pos.z + (Math_SinS(temp_v0) * 12.0f * temp_fs2);
            EffectSsLightning_Spawn(play, &sp8C, &D_80B28950, &D_80B28954, 17, temp_v0, 6, 2);
        }
    }
    Actor_PlaySfx_Flagged(&this->actor, NA_SE_EN_BIRI_SPARK - SFX_FLAG);
}

void func_80B27098(EnVali* this, PlayState* play) {
    if (this->actor.xzDistToPlayer < 150.0f) {
        func_80B268C8(this);
    }
}

void func_80B270D8(EnVali* this, PlayState* play) {
    SkelAnime_Update(&this->unk14C);
    this->actor.velocity.y *= 1.5f;
    this->actor.velocity.y = CLAMP_MAX(this->actor.velocity.y, 40.0f);
    if (Math_StepToF(&this->actor.world.pos.y, this->actor.floorHeight, this->actor.velocity.y)) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_DODO_M_GND);
        func_80B268FC(this);
    }
}

void func_80B2716C(EnVali* this, PlayState* play) {
    s32 var_v1;

    SkelAnime_Update(&this->unk14C);
    if (this->unk195 != 0) {
        this->unk195 -= 1;
    }
    var_v1 = (s32)this->unk14C.curFrame;
    Math_StepToF(&this->unk2F8, this->actor.floorHeight + 40.0f, 1.2f);
    this->actor.world.pos.y = this->unk2F8 - (sinf(var_v1 * 3.1415927f * 0.0125f) * 8.0f);
    if (this->unk195 != 0) {
        this->actor.shape.rot.y += 0x800;
        if (((this->unk195 % 6) == 0) && (var_v1 >= 0x10) && (var_v1 < 0x38)) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_BARI_ROLL);
        }
    } else if ((var_v1 == 0x10) || (var_v1 == 0x1E) || (var_v1 == 0x2A) || (var_v1 == 0x37)) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_BARI_ROLL);
    }
    if (var_v1 >= 0x29) {
        var_v1 = 0x50 - var_v1;
    }
    this->actor.shape.rot.y += DEG_TO_BINANG((var_v1 + 4) * 0.4f);
    if (this->actor.xzDistToPlayer > 250.0f) {
        func_80B26E40(this);
    }
}

void func_80B27318(EnVali* this, PlayState* play) {
    if (this->unk194 != 0) {
        this->unk194 -= 1;
    }
    func_80B26E9C(this, play);
    if (this->unk194 == 0) {
        this->actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED;
        this->unk3FC.base.acFlags |= AC_ON;
        if (this->actor.params == 1) {
            func_80B26B4C(this);
        } else {
            this->unk190 = func_80B2716C;
        }
    } else {
        if (this->unk194 & 1) {
            this->actor.world.pos.y += 1.0f;
        } else {
            this->actor.world.pos.y -= 1.0f;
        }
    }
}

void func_80B273D0(EnVali* this, PlayState* play) {
    if (SkelAnime_Update(&this->unk14C)) {
        if (this->actor.colChkInfo.health != 0) {
            func_80B26BBC(this);
        } else {
            func_80B26C50(this, play);
        }
    }
}

void func_80B2742C(EnVali* this, PlayState* play) {
    if (SkelAnime_Update(&this->unk14C)) {
        func_80B268FC(this);
    }
}

void func_80B27464(EnVali* this, PlayState* play) {
    if (this->unk196 != 0) {
        this->unk196 -= 1;
    }
    if (this->unk196 == 0) {
        func_80B26C50(this, play);
    }
}

void func_80B274A0(EnVali* this, PlayState* play) {
    static Vec3f D_80B28958 = { 0.0f, 0.0f, 0.0f };
    static Vec3f D_80B28964 = { 0.0f, 0.0f, 0.0f };
    s16 temp_s0;
    Vec3f sp70;
    s32 var_s1;

    if (this->unk196 != 0) {
        this->unk196 -= 1;
    }
    for (var_s1 = 0; var_s1 < 2; var_s1++) {
        sp70.x = Rand_CenteredFloat(20.0f) + this->actor.world.pos.x;
        sp70.y = Rand_CenteredFloat(8.0f) + this->actor.world.pos.y;
        sp70.z = Rand_CenteredFloat(20.0f) + this->actor.world.pos.z;
        D_80B28958.y = Rand_ZeroOne() + 1.0f;
        temp_s0 = Rand_S16Offset(40, 40);
        if (Rand_ZeroOne() < 0.7f) {
            EffectSsDtBubble_SpawnColorProfile(play, &sp70, &D_80B28958, &D_80B28964, temp_s0, 25, 2, 1);
        } else {
            EffectSsDtBubble_SpawnColorProfile(play, &sp70, &D_80B28958, &D_80B28964, temp_s0, 25, 0, 1);
        }
    }
    if (this->unk196 == 0) {
        Actor_Kill(&this->actor);
    }
}

static Vec3f D_80B28970 = { 3000.0f, 0.0f, 0.0f };
static Vec3f D_80B2897C = { -1000.0f, 0.0f, 0.0f };
static Vec3f D_80B28988 = { 1.0f, 1.0f, 1.0f };
static Gfx D_80B28998[] = {
    gsDPSetCombineLERP(1, TEXEL0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsSPEndDisplayList(),
};
static Gfx D_80B289A8[] = {
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsSPEndDisplayList(),
};

void func_80B27654(EnVali* this, PlayState* play) {
    SkelAnime_Update(&this->unk14C);
    if (this->unk196 != 0) {
        this->unk196 -= 1;
    }
    if (this->actor.velocity.y != 0.0f) {
        if (Math_StepToF(&this->actor.world.pos.y, this->actor.floorHeight, this->actor.velocity.y)) {
            this->actor.velocity.y = 0.0f;
            Actor_PlaySfx(&this->actor, NA_SE_EN_DODO_M_GND);
        } else {
            this->actor.velocity.y += 1.0f;
        }
    }
    if (this->unk196 == 0) {
        this->unk3FC.elem.acDmgInfo.hitBacklash = HIT_BACKLASH_ELECTRIC;
        func_80B268FC(this);
    }
}

void func_80B27710(EnVali* this, PlayState* play) {
    Vec3f sp54;
    s32 temp_v0_2;
    s32 temp_v1;

    if (this->unk196 != 0) {
        this->unk196 -= 1;
    }
    temp_v1 = this->unk196 - 0x14;
    this->actor.colorFilterTimer = 36;
    if (temp_v1 > 0) {
        temp_v0_2 = temp_v1 >> 1;
        if (this->unk196 & 1) {
            sp54.y = (this->actor.world.pos.y - 20.0f) + ((-temp_v0_2 * 5) + 40);
            sp54.x = this->actor.world.pos.x + ((temp_v0_2 & 2) ? 12.0f : -12.0f);
            sp54.z = this->actor.world.pos.z + ((temp_v0_2 & 1) ? 12.0f : -12.0f);
            EffectSsEnIce_SpawnFlyingVec3f(play, &this->actor, &sp54, 150, 150, 150, 250, 235, 245, 255,
                                           (Rand_ZeroOne() * 0.2f) + 1.3f);
        }
    } else if (this->unk196 == 0) {
        this->actor.velocity.y += 1.0f;
        if (Math_StepToF(&this->actor.world.pos.y, this->actor.floorHeight, this->actor.velocity.y)) {
            func_80B26C50(this, play);
            this->actor.colorFilterTimer = 0;
        }
    }
}

void func_80B278A0(EnVali* this, PlayState* play) {
    SkelAnime_Update(&this->unk14C);
    if (Math_SmoothStepToF(&this->actor.world.pos.y, this->actor.home.pos.y, 0.5f, 15.0f, 0.1f) < 0.01f) {
        func_80B26878(this);
    }
}

void func_80B2790C(EnVali* this, PlayState* play) {
    if ((this->unk3FC.base.acFlags & AC_HIT)) {
        this->unk3FC.base.acFlags &= ~AC_HIT;
        if (((Actor_SetDropFlag(&this->actor, &this->unk3FC.elem, true),
              (this->actor.colChkInfo.damageReaction != 0)) ||
             (this->actor.colChkInfo.damage != 0))) {
            if (Actor_ApplyDamage(&this->actor) == 0) {
                Actor_PlaySfx(&this->actor, NA_SE_EN_BARI_DEAD);
                Enemy_StartFinishingBlow(play, &this->actor);
                this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
            } else {
                if ((this->actor.colChkInfo.damageReaction != 1) && (this->actor.colChkInfo.damageReaction != 0xE)) {
                    Actor_PlaySfx(&this->actor, NA_SE_EN_BARI_DAMAGE);
                }
            }
            if (this->actor.colChkInfo.damageReaction == 1) {
                if (this->unk190 != func_80B27654) {
                    func_80B26D54(this);
                }
            } else {
                if (this->actor.colChkInfo.damageReaction == 0xF) {
                    if (this->unk190 != func_80B27654) {
                        Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_RED, 150, COLORFILTER_BUFFLAG_XLU, 30);
                        this->actor.params = 1;
                        func_80B26B18(this);
                    } else {
                        func_80B26B4C(this);
                    }
                } else if (this->actor.colChkInfo.damageReaction == 2) {
                    func_80B26BF8(this);
                } else if (this->actor.colChkInfo.damageReaction == 3) {
                    func_80B26DE0(this);
                } else if (this->actor.colChkInfo.damageReaction == 0xE) {
                    if (this->unk195 == 0) {
                        this->unk195 = 0x14;
                    }
                } else {
                    func_80B26B4C(this);
                }
            }
        }
    }
}

void EnVali_Update(Actor* thisx, PlayState* play) {
    EnVali* this = (EnVali*)thisx;
    s32 pad;

    if ((this->unk3FC.base.atFlags & AT_HIT) || (this->unk2FC.base.atFlags & AT_HIT) ||
        (this->unk37C.base.atFlags & AT_HIT)) {
        this->unk2FC.base.atFlags &= ~AT_HIT;
        this->unk37C.base.atFlags &= ~AT_HIT;
        this->unk3FC.base.atFlags &= ~AT_HIT;
        func_80B26B18(this);
    }
    func_80B2790C(this, play);
    this->unk190(this, play);
    if ((this->unk190 != func_80B274A0) && (this->unk190 != func_80B27098)) {
        Collider_UpdateCylinder(&this->actor, &this->unk3FC);
        if (this->unk190 == func_80B2716C) {
            CollisionCheck_SetAT(play, &play->colChkCtx, &this->unk2FC.base);
            CollisionCheck_SetAT(play, &play->colChkCtx, &this->unk37C.base);
            CollisionCheck_SetAT(play, &play->colChkCtx, &this->unk3FC.base);
        }
        if (this->unk3FC.base.acFlags & AC_ON) {
            CollisionCheck_SetAC(play, &play->colChkCtx, &this->unk3FC.base);
        }
        CollisionCheck_SetOC(play, &play->colChkCtx, &this->unk3FC.base);
        Actor_SetFocus(&this->actor, 0.0f);
    }
}

void func_80B27C1C(EnVali* this, f32 arg1, Vec3f* arg2) {
    f32 temp_fv0;
    f32 temp_fv0_2;
    f32 temp_fv1;
    s32 var_v0;

    if (this->unk190 == func_80B27318) {
        var_v0 = 0x14 - (this->unk194 % 20);
        if (var_v0 >= 0xA) {
            var_v0 -= 0xA;
        }
        arg2->y -= 0.2f * sinf(var_v0 * 0.31415927f);
    } else if (this->unk190 == func_80B273D0) {
        temp_fv0 = sinf(0.31415927f * arg1);
        arg2->y -= 0.24f * temp_fv0;
        arg2->x -= 0.13f * temp_fv0;
        arg2->z = arg2->x;
    } else if (this->unk190 == func_80B2742C) {
        temp_fv0_2 = cosf(0.06283186f * arg1);
        arg2->y -= 0.24f * temp_fv0_2;
        arg2->x -= 0.13f * temp_fv0_2;
        arg2->z = arg2->x;
    } else if (this->unk190 == func_80B27654) {
        temp_fv1 = sinf(this->unk196 * 0.31415927f) * 0.08f;
        arg2->x += temp_fv1;
        arg2->y -= temp_fv1;
        arg2->z += temp_fv1;
    } else {
        if (arg1 >= 40.0f) {
            arg1 -= 40.0f;
        }
        arg2->y -= 0.2f * sinf(0.07853982f * arg1);
    }
}

void func_80B27E38(EnVali* this, f32 arg1, Vec3f* arg2) {
    f32 temp_fv0;
    f32 temp_fv0_2;
    f32 temp_fv1;
    s32 var_v0;

    if (this->unk190 == func_80B27318) {
        var_v0 = 0x14 - (this->unk194 % 20);
        if (var_v0 >= 0xA) {
            var_v0 -= 0xA;
        }
        arg2->y -= 0.13f * sinf(var_v0 * 0.31415927f);
    } else if (this->unk190 == func_80B273D0) {
        temp_fv0 = sinf(0.31415927f * arg1);
        arg2->y -= 0.18f * temp_fv0;
        arg2->x -= 0.1f * temp_fv0;
        arg2->z = arg2->x;
    } else if (this->unk190 == func_80B2742C) {
        temp_fv0_2 = cosf(0.06283186f * arg1);
        arg2->y -= 0.18f * temp_fv0_2;
        arg2->x -= 0.1f * temp_fv0_2;
        arg2->z = arg2->x;
    } else if (this->unk190 == func_80B27654) {
        temp_fv1 = sinf(this->unk196 * 0.31415927f) * 0.08f;
        arg2->x -= temp_fv1;
        arg2->y += temp_fv1;
        arg2->z -= temp_fv1;
    } else {
        if (arg1 >= 40.0f) {
            arg1 -= 40.0f;
        }
        arg2->y -= 0.13f * sinf(0.07853982f * arg1);
    }
}

s32 func_80B28054(EnVali* this, f32 arg1) {
    f32 var_fv1;

    if (this->unk190 == func_80B2716C) {
        if (arg1 <= 10.0f) {
            var_fv1 = (arg1 * 0.05f) + 1.0f;
        } else if (arg1 > 70.0f) {
            var_fv1 = ((80.0f - arg1) * 0.05f) + 1.0f;
        } else {
            var_fv1 = 1.5f;
        }
    } else if (this->unk190 == func_80B273D0) {
        var_fv1 = 1.0f - (sinf(0.31415927f * arg1) * 0.35f);
    } else if (this->unk190 == func_80B2742C) {
        var_fv1 = 1.0f - (cosf(0.06283186f * arg1) * 0.35f);
    } else if ((this->unk190 == func_80B27318) || (this->unk190 == func_80B27710)) {
        var_fv1 = this->unk2F4;
    } else {
        var_fv1 = 1.0f;
    }
    Math_StepToF(&this->unk2F4, var_fv1, 0.1f);
    if (this->unk2F4 == 1.0f) {
        return 0;
    } else {
        return 1;
    }
}

s32 func_80B281F0(PlayState* play, s32 arg1, Gfx** arg2, Vec3f* arg3, Vec3s* arg4, void* thisx, Gfx** gfx) {
    EnVali* this = thisx;
    f32 new_var;

    if ((arg1 == 2) || (arg1 == 0x1C) || (arg1 == 0x1B)) {
        *arg2 = NULL;
        return 0;
    } else {
        new_var = this->unk14C.curFrame;
        if (((arg1 == 9) || (arg1 == 0x12)) && (func_80B28054(this, new_var) != 0)) {
            Matrix_Scale(this->unk2F4, 1.0f, 1.0f, MTXMODE_APPLY);
        }
        return 0;
    }
}

void func_80B28280(PlayState* play, s32 arg1, Gfx** arg2, Vec3s* arg3, void* thisx, Gfx** gfx) {
    Vec3f sp3C;
    Vec3f sp30;
    EnVali* this = thisx;

    if (this->unk190 == func_80B2716C) {
        switch (arg1) {
            case 0xB:
            case 0x14:
                Matrix_MultVec3f(&D_80B28970, &sp3C);
                Matrix_MultVec3f(&D_80B2897C, &sp30);
                if (arg1 == 0xB) {
                    Collider_SetQuadVertices(&this->unk2FC, &sp30, &sp3C, this->unk2FC.dim.quad,
                                             &this->unk2FC.dim.quad[1]);
                } else {
                    Collider_SetQuadVertices(&this->unk37C, &sp30, &sp3C, this->unk37C.dim.quad,
                                             &this->unk37C.dim.quad[1]);
                }
                break;
        }
    }
}

void func_80B28344(EnVali* this, PlayState* play) {
    MtxF sp80;
    f32 sp7C;
    f32 sp78;
    f32 sp74;
    Vec3f sp68;

    sp68 = D_80B28988;
    OPEN_DISPS(play->state.gfxCtx, "../z_en_vali.c", 1428);
    Matrix_Get(&sp80);
    sp74 = this->unk14C.curFrame;
    func_80B27E38(this, sp74, &sp68);
    Matrix_Scale(sp68.x, sp68.y, sp68.z, 1U);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_en_vali.c", 1436);
    gSPDisplayList(POLY_XLU_DISP++, object_vali_DL_002610);
    Matrix_Put(&sp80);
    Matrix_RotateY(BINANG_TO_RAD(-this->actor.shape.rot.y), MTXMODE_APPLY);
    sp7C = Math_CosS(this->actor.shape.rot.y);
    sp78 = Math_SinS(this->actor.shape.rot.y);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_en_vali.c", 1446);
    gSPDisplayList(POLY_XLU_DISP++, object_vali_DL_002740);
    Matrix_Translate((506.0f * sp7C) + (372.0f * sp78), 1114.0f, (372.0f * sp7C) - (506.0f * sp78), MTXMODE_APPLY);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_en_vali.c", 1455);
    gSPDisplayList(POLY_XLU_DISP++, object_vali_DL_002740);
    Matrix_Translate((-964.0f * sp7C) - (804.0f * sp78), -108.0f, (-804.0f * sp7C) + (964.0f * sp78), MTXMODE_APPLY);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_en_vali.c", 1463);
    gSPDisplayList(POLY_XLU_DISP++, object_vali_DL_002740);
    Matrix_Put(&sp80);
    sp68.z = 1.0f;
    sp68.y = 1.0f;
    sp68.x = 1.0f;
    func_80B27C1C(this, sp74, &sp68);
    Matrix_Scale(sp68.x, sp68.y, sp68.z, MTXMODE_APPLY);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_en_vali.c", 1471);
    gSPDisplayList(POLY_XLU_DISP++, object_vali_DL_0027D8);
    Matrix_Put(&sp80);
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_vali.c", 1477);
}

void EnVali_Draw(Actor* thisx, PlayState* play) {
    EnVali* this = (EnVali*)thisx;
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_vali.c", 1505);
    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    gSPSegment(POLY_XLU_DISP++, 8,
               Gfx_TexScroll(play->state.gfxCtx, 0U, (0x7F - (play->gameplayFrames * 0xC)) & 0x7F, 32, 32));
    if (this->unk194 & 1) {
        gSPSegment(POLY_XLU_DISP++, 9, D_80B28998);
    } else {
        gSPSegment(POLY_XLU_DISP++, 9, D_80B289A8);
    }
    func_80B28344(this, play);
    POLY_XLU_DISP = SkelAnime_Draw(play, this->unk14C.skeleton, this->unk14C.jointTable, func_80B281F0, func_80B28280,
                                   this, POLY_XLU_DISP);
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_vali.c", 1538);
}
