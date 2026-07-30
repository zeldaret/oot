#include "z_en_dekubaba.h"

#include "array_count.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "ichain.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "z_en_item00.h"
#include "z_lib.h"
#include "effect.h"
#include "play_state.h"
#include "player.h"
#include "save.h"

#include "assets/objects/gameplay_keep/shadow_circle.h"
#include "assets/objects/object_dekubaba/object_dekubaba.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_HOSTILE)

void EnDekubaba_Init(Actor* thisx, PlayState* play);
void EnDekubaba_Destroy(Actor* thisx, PlayState* play);
void EnDekubaba_Update(Actor* thisx, PlayState* play);
void EnDekubaba_Draw(Actor* thisx, PlayState* play);

void func_809E5ABC(EnDekubaba* this);
void func_809E64F4(EnDekubaba* this, PlayState* play);
void func_809E65A0(EnDekubaba* this, PlayState* play);
void func_809E6A04(EnDekubaba* this, PlayState* play);
void func_809E6ED4(EnDekubaba* this, PlayState* play);
void func_809E7104(EnDekubaba* this, PlayState* play);
void func_809E738C(EnDekubaba* this, PlayState* play);
void func_809E7458(EnDekubaba* this, PlayState* play);
void func_809E77E4(EnDekubaba* this, PlayState* play);
void func_809E78DC(EnDekubaba* this, PlayState* play);
void func_809E79EC(EnDekubaba* this, PlayState* play);
void func_809E7A88(EnDekubaba* this, PlayState* play);
void func_809E7BB0(EnDekubaba* this, PlayState* play);
void func_809E7F14(EnDekubaba* this, PlayState* play);
void func_809E80D8(EnDekubaba* this, PlayState* play);

static Vec3f D_809E8EA0 = { 0.0f, 0.0f, 0.0f };

ActorProfile En_Dekubaba_Profile = {
    /**/ ACTOR_EN_DEKUBABA,
    /**/ ACTORCAT_ENEMY,
    /**/ FLAGS,
    /**/ OBJECT_DEKUBABA,
    /**/ sizeof(EnDekubaba),
    /**/ EnDekubaba_Init,
    /**/ EnDekubaba_Destroy,
    /**/ EnDekubaba_Update,
    /**/ EnDekubaba_Draw,
};

static ColliderJntSphElementInit D_809E8ECC[7] = {
    {
        {
            ELEM_MATERIAL_UNK0,
            { 0xFFCFFFFF, HIT_SPECIAL_EFFECT_NONE, 0x08 },
            { 0xFFCFFFFF, HIT_BACKLASH_NONE, 0x00 },
            ATELEM_ON | ATELEM_SFX_HARD,
            ACELEM_ON,
            OCELEM_ON,
        },
        { 1, { { 0, 100, 1000 }, 15 }, 100 },
    },
    {
        {
            ELEM_MATERIAL_UNK0,
            { 0x00000000, HIT_SPECIAL_EFFECT_NONE, 0x00 },
            { 0xFFCFFFFF, HIT_BACKLASH_NONE, 0x00 },
            ATELEM_NONE,
            ACELEM_NONE,
            OCELEM_ON,
        },
        { 51, { { 0, 0, 1500 }, 8 }, 100 },
    },
    {
        {
            ELEM_MATERIAL_UNK0,
            { 0x00000000, HIT_SPECIAL_EFFECT_NONE, 0x00 },
            { 0xFFCFFFFF, HIT_BACKLASH_NONE, 0x00 },
            ATELEM_NONE,
            ACELEM_NONE,
            OCELEM_NONE,
        },
        { 52, { { 0, 0, 500 }, 8 }, 100 },
    },
    {
        {
            ELEM_MATERIAL_UNK0,
            { 0x00000000, HIT_SPECIAL_EFFECT_NONE, 0x00 },
            { 0xFFCFFFFF, HIT_BACKLASH_NONE, 0x00 },
            ATELEM_NONE,
            ACELEM_NONE,
            OCELEM_NONE,
        },
        { 53, { { 0, 0, 1500 }, 8 }, 100 },
    },
    {
        {
            ELEM_MATERIAL_UNK0,
            { 0x00000000, HIT_SPECIAL_EFFECT_NONE, 0x00 },
            { 0xFFCFFFFF, HIT_BACKLASH_NONE, 0x00 },
            ATELEM_NONE,
            ACELEM_NONE,
            OCELEM_NONE,
        },
        { 54, { { 0, 0, 500 }, 8 }, 100 },
    },
    {
        {
            ELEM_MATERIAL_UNK0,
            { 0x00000000, HIT_SPECIAL_EFFECT_NONE, 0x00 },
            { 0xFFCFFFFF, HIT_BACKLASH_NONE, 0x00 },
            ATELEM_NONE,
            ACELEM_NONE,
            OCELEM_NONE,
        },
        { 55, { { 0, 0, 1500 }, 8 }, 100 },
    },
    {
        {
            ELEM_MATERIAL_UNK0,
            { 0x00000000, HIT_SPECIAL_EFFECT_NONE, 0x00 },
            { 0xFFCFFFFF, HIT_BACKLASH_NONE, 0x00 },
            ATELEM_NONE,
            ACELEM_NONE,
            OCELEM_NONE,
        },
        { 56, { { 0, 0, 500 }, 8 }, 100 },
    },
};

static ColliderJntSphInit D_809E8FC8 = {
    {
        COL_MATERIAL_HIT6,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_JNTSPH,
    },
    7,
    D_809E8ECC,
};

static CollisionCheckInfoInit D_809E8FD8 = { 2, 0x19, 0x19, 0xFF };
static DamageTable D_809E8FE0 = {
    {
        0x10, 2,    1, 2, 0xE2, 2, 2,    2,    0xF1, 0xF2, 0xF4, 0x24, 2, 2, 2, 2,
        2,    0x24, 0, 0, 0,    0, 0xF1, 0xF4, 0xF2, 0xF2, 0xF8, 0xF4, 0, 0, 4, 0,
    },
};
static DamageTable D_809E9000 = {
    {
        0x10, 2,    1, 2, 0xE2, 2, 2,    0x10, 0xF1, 0xF2, 0xF4, 0x24, 2, 2, 2, 2,
        2,    0x24, 0, 0, 0,    0, 0xF1, 0xF4, 0xF2, 0xF2, 0xF8, 0xF4, 0, 0, 4, 0,
    },
};
static InitChainEntry D_809E9020[] = {
    ICHAIN_F32(lockOnArrowOffset, 1500, ICHAIN_STOP),
};
static Color_RGBA8 D_809E9024 = { 0x69, 0xFF, 0x69, 0xFF };
static Color_RGBA8 D_809E9028 = { 0x96, 0xFA, 0x96, 0 };
static Gfx* D_809E902C[] = {
    object_dekubaba_DL_001330,
    object_dekubaba_DL_001628,
    object_dekubaba_DL_001828,
};

void EnDekubaba_Init(Actor* thisx, PlayState* play) {
    s32 var_a0;
    EnDekubaba* this = (EnDekubaba*)thisx;

    Actor_ProcessInitChain(&this->actor, D_809E9020);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 22.0f);
    SkelAnime_Init(play, &this->unk17C, &object_dekubaba_Skel_002A40, &object_dekubaba_Anim_0002B8, this->unk1D0,
                   this->unk200, 8);
    Collider_InitJntSph(play, &this->unk238);
    Collider_SetJntSph(play, &this->unk238, &this->actor, &D_809E8FC8, this->unk258);
    if (this->actor.params == 1) {
        this->unk230 = 2.50f;
        for (var_a0 = 0; var_a0 < D_809E8FC8.count; var_a0++) {
            this->unk238.elements[var_a0].dim.worldSphere.radius =
                this->unk238.elements[var_a0].dim.modelSphere.radius = D_809E8ECC[var_a0].dim.modelSphere.radius * 2.5f;
        }
        if (!LINK_IS_ADULT) {
            D_809E9000.table[0x1B] = 4;
        }
        CollisionCheck_SetInfo(&this->actor.colChkInfo, &D_809E9000, &D_809E8FD8);
        this->actor.colChkInfo.health = 4;
        this->actor.naviEnemyId = NAVI_ENEMY_BIG_DEKU_BABA;
        this->actor.attentionRangeType = ATTENTION_RANGE_2;
    } else {
        this->unk230 = 1.0f;
        for (var_a0 = 0; var_a0 < D_809E8FC8.count; var_a0++) {
            this->unk238.elements[var_a0].dim.worldSphere.radius = this->unk238.elements[var_a0].dim.modelSphere.radius;
        }
        if (!LINK_IS_ADULT) {
            D_809E8FE0.table[0x1B] = 4;
        }
        CollisionCheck_SetInfo(&this->actor.colChkInfo, &D_809E8FE0, &D_809E8FD8);
        this->actor.naviEnemyId = NAVI_ENEMY_DEKU_BABA;
        this->actor.attentionRangeType = ATTENTION_RANGE_1;
    }
    func_809E5ABC(this);
    this->unk1C6 = 0;
    this->unk170 = this->actor.home.pos;
    this->unk234 = NULL;
}

void EnDekubaba_Destroy(Actor* thisx, PlayState* play) {
    EnDekubaba* this = (EnDekubaba*)thisx;

    Collider_DestroyJntSph(play, &this->unk238);
}

void func_809E5A38(EnDekubaba* this) {
    s32 i;

    for (i = 1; i < 7; i++) {
        this->unk238.elements[i].base.acElemFlags &= ~ACELEM_ON;
    }
}

void func_809E5ABC(EnDekubaba* this) {
    ColliderJntSphElement* temp_v0_2;
    s16 temp_v0;
    s32 i;

    this->unk1CA_arr[0] = this->unk1CA_arr[1] = this->unk1CA_arr[2] = this->actor.shape.rot.x = -0x4000;
    this->actor.world.pos.x = this->actor.home.pos.x;
    this->actor.world.pos.z = this->actor.home.pos.z;
    this->actor.world.pos.y = this->actor.home.pos.y + (14.0f * this->unk230);
    Actor_SetScale(&this->actor, this->unk230 * 0.01f * 0.5f);
    this->unk238.base.colMaterial = COL_MATERIAL_HARD;
    this->unk238.base.acFlags |= AC_HARD;
    this->unk1C6 = 0x2D;
    for (i = 1; i < 7; i++) {
        temp_v0_2 = &this->unk238.elements[i];
        temp_v0_2->dim.worldSphere.center.x = this->actor.world.pos.x;
        temp_v0_2->dim.worldSphere.center.y = (s16)this->actor.world.pos.y - 7;
        temp_v0_2->dim.worldSphere.center.z = this->actor.world.pos.z;
    }
    this->unk1C0 = func_809E64F4;
}

void func_809E5D28(EnDekubaba* this) {
    s32 i;

    Animation_Change(&this->unk17C, &object_dekubaba_Anim_0002B8,
                     Animation_GetLastFrame(&object_dekubaba_Anim_0002B8) * 0.06666667f, 0.0f,
                     Animation_GetLastFrame(&object_dekubaba_Anim_0002B8), ANIMMODE_ONCE, 0.0f);
    this->unk1C6 = 0xF;
    for (i = 2; i < 7; i++) {
        this->unk238.elements[i].base.ocElemFlags |= 1;
    }
    this->unk238.base.colMaterial = COL_MATERIAL_HIT6;
    this->unk238.base.acFlags &= ~AC_HARD;
    Actor_PlaySfx(&this->actor, NA_SE_EN_DUMMY482);
    this->unk1C0 = func_809E65A0;
}

void func_809E5E58(EnDekubaba* this) {
    s32 i;

    Animation_Change(&this->unk17C, &object_dekubaba_Anim_0002B8, -1.5f,
                     Animation_GetLastFrame(&object_dekubaba_Anim_0002B8), 0.0f, ANIMMODE_ONCE, -3.0f);
    this->unk1C6 = 0xF;
    for (i = 2; i < 7; i++) {
        this->unk238.elements[i].base.ocElemFlags &= ~1;
    }
    this->unk1C0 = func_809E6A04;
}

void func_809E5F44(EnDekubaba* this) {
    this->unk1C6 = Animation_GetLastFrame(&object_dekubaba_Anim_0002B8) * 2;
    Animation_MorphToLoop(&this->unk17C, &object_dekubaba_Anim_0002B8, -3.0f);
    this->unk1C0 = func_809E6ED4;
}

void func_809E5F9C(EnDekubaba* this) {
    this->unk1C6 = 8;
    this->unk1C0 = func_809E738C;
    this->unk17C.playSpeed = 0.0f;
}

void func_809E5FBC(EnDekubaba* this) {
    Animation_PlayOnce(&this->unk17C, &object_dekubaba_Anim_000208);
    this->unk1C6 = 0;
    this->unk1C0 = func_809E7104;
}

void func_809E6000(EnDekubaba* this) {
    Animation_Change(&this->unk17C, &object_dekubaba_Anim_000208, 1.0f, 15.0f,
                     Animation_GetLastFrame(&object_dekubaba_Anim_000208), ANIMMODE_ONCE, -3.0f);
    this->unk1C6 = 0;
    this->unk1C0 = func_809E7458;
}

void func_809E6078(EnDekubaba* this) {
    this->unk1C6 = 9;
    this->unk238.base.acFlags |= AC_ON;
    this->unk1C0 = func_809E77E4;
    this->unk17C.playSpeed = -1.0f;
}

void func_809E60A8(EnDekubaba* this, s32 arg1) {
    Animation_MorphToPlayOnce(&this->unk17C, &object_dekubaba_Anim_000208, -5.0f);
    this->unk1C6 = arg1;
    this->unk238.base.acFlags &= ~AC_ON;
    Actor_SetScale(&this->actor, this->unk230 * 0.01f);
    if (arg1 == 2) {
        Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_BLUE, 155, COLORFILTER_BUFFLAG_OPA, 62);
    } else {
        Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_RED, 255, COLORFILTER_BUFFLAG_OPA, 42);
    }
    this->unk1C0 = func_809E78DC;
}

void func_809E6170(EnDekubaba* this) {
    this->unk1C6 = 0;
    this->unk17C.playSpeed = 0.0f;
    this->actor.gravity = -0.8f;
    this->actor.velocity.y = 4.0f;
    this->actor.world.rot.y = this->actor.shape.rot.y + 0x8000;
    this->actor.speed = this->unk230 * 3.0f;
    this->unk238.base.acFlags &= ~AC_ON;
    this->actor.flags |= ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_DRAW_CULLING_DISABLED;
    this->unk1C0 = func_809E7BB0;
}

void func_809E61E0(EnDekubaba* this) {
    Animation_Change(&this->unk17C, &object_dekubaba_Anim_0002B8, -1.5f,
                     Animation_GetLastFrame(&object_dekubaba_Anim_0002B8), 0.0f, ANIMMODE_ONCE, -3.0f);
    this->unk238.base.acFlags &= ~AC_ON;
    this->unk1C0 = func_809E7F14;
}

void func_809E6264(EnDekubaba* this) {
    s32 i;

    for (i = 1; i < 7; i++) {
        this->unk238.elements[i].base.acElemFlags |= ACELEM_ON;
    }
    if (this->unk1C6 == 1) {
        Animation_Change(&this->unk17C, &object_dekubaba_Anim_0002B8, 4.0f, 0.0f,
                         Animation_GetLastFrame(&object_dekubaba_Anim_0002B8), ANIMMODE_LOOP, -3.0f);
        this->unk1C6 = 0x28;
    } else {
        Animation_Change(&this->unk17C, &object_dekubaba_Anim_0002B8, 0.0f, 0.0f,
                         Animation_GetLastFrame(&object_dekubaba_Anim_0002B8), ANIMMODE_LOOP, -3.0f);
        this->unk1C6 = 0x3C;
    }
    this->actor.world.pos.x = this->actor.home.pos.x;
    this->actor.world.pos.y = this->actor.home.pos.y + (60.0f * this->unk230);
    this->actor.world.pos.z = this->actor.home.pos.z;
    this->unk1C0 = func_809E79EC;
}

void func_809E63EC(EnDekubaba* this) {
    this->unk1C8 = -0x6000;
    this->unk1CA_arr[2] = -0x5000;
    this->unk1CA_arr[1] = -0x4800;
    func_809E5A38(this);
    Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_RED, 255, COLORFILTER_BUFFLAG_OPA, 35);
    this->unk238.base.acFlags &= ~AC_ON;
    this->unk1C0 = func_809E7A88;
}

void func_809E645C(EnDekubaba* this, PlayState* arg1) {
    Actor_SetScale(&this->actor, 0.03f);
    this->actor.shape.rot.x -= 0x4000;
    this->actor.shape.yOffset = 1000.0f;
    this->actor.gravity = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.shape.shadowScale = 3.0f;
    Actor_ChangeCategory(arg1, &arg1->actorCtx, &this->actor, ACTORCAT_MISC);
    this->actor.flags &= ~ACTOR_FLAG_DRAW_CULLING_DISABLED;
    this->unk1C6 = 0xC8;
    this->unk1C0 = func_809E80D8;
}

void func_809E64F4(EnDekubaba* this, PlayState* arg1) {
    if (this->unk1C6 != 0) {
        this->unk1C6 -= 1;
    }
    this->actor.world.pos.x = this->actor.home.pos.x;
    this->actor.world.pos.z = this->actor.home.pos.z;
    this->actor.world.pos.y = this->actor.home.pos.y + (14.0f * this->unk230);
    if ((this->unk1C6 == 0) && (this->actor.xzDistToPlayer < (200.0f * this->unk230)) &&
        (fabsf(this->actor.yDistToPlayer) < (30.0f * this->unk230))) {
        func_809E5D28(this);
    }
}

void func_809E65A0(EnDekubaba* this, PlayState* play) {
    Actor* sp64;
    f32 var_fa0;
    f32 sp5C;
    f32 sp58;
    f32 temp_ft5;

    sp64 = play->actorCtx.actorLists[2].head;

    if (this->unk1C6 != 0) {
        this->unk1C6--;
    }
    SkelAnime_Update(&this->unk17C);

    this->actor.scale.x = this->actor.scale.y = this->actor.scale.z =
        this->unk230 * 0.01f * (0.5f + (((0xF - this->unk1C6) * 0.5f) / 15.0f));
    Math_ScaledStepToS(&this->actor.shape.rot.x, 0x1800, 0x800);

    sp5C = (sinf(CLAMP_MAX(((0xF - this->unk1C6)) * 0.06666667014f, 0.7f) * 3.1415927f) * 32.0f) + 14.0f;

    if (this->actor.shape.rot.x < -0x38E3) {
        var_fa0 = 0.0f;
    } else if (this->actor.shape.rot.x < -0x238E) {
        Math_ScaledStepToS(&this->unk1CA_arr[0], -0x5555, 0x38E);
        var_fa0 = 20.0f * Math_CosS(this->unk1CA_arr[0]);
    } else if (this->actor.shape.rot.x < -0xE38) {
        Math_ScaledStepToS(&this->unk1CA_arr[0], -0xAAA, 0x38E);
        Math_ScaledStepToS(&this->unk1CA_arr[1], -0x5555, 0x38E);
        Math_ScaledStepToS(&this->unk1CA_arr[2], -0x5555, 0x222);
        var_fa0 = (20.0f * (Math_CosS(this->unk1CA_arr[0]) + Math_CosS(this->unk1CA_arr[1]))) +
                  (((sp5C - (20.0f * (-Math_SinS(this->unk1CA_arr[0]) - Math_SinS(this->unk1CA_arr[1])))) *
                    Math_CosS(this->unk1CA_arr[2])) /
                   -Math_SinS(this->unk1CA_arr[2]));
    } else {
        Math_ScaledStepToS(&this->unk1CA_arr[0], -0xAAA, 0x38E);
        Math_ScaledStepToS(&this->unk1CA_arr[1], -0x31C7, 0x222);
        Math_ScaledStepToS(&this->unk1CA_arr[2], -0x5555, 0x222);
        var_fa0 = (20.0f * (Math_CosS(this->unk1CA_arr[0]) + Math_CosS(this->unk1CA_arr[1]))) +
                  (((sp5C - (20.0f * (-Math_SinS(this->unk1CA_arr[0]) - Math_SinS(this->unk1CA_arr[1])))) *
                    Math_CosS(this->unk1CA_arr[2])) /
                   -Math_SinS(this->unk1CA_arr[2]));
    }

    if (this->unk1C6 < 0xA) {
        Math_ApproachS(&this->actor.shape.rot.y, Math_Vec3f_Yaw(&this->actor.home.pos, &sp64->world.pos), 2, 0xE38);
    }

    this->actor.world.pos.y = this->actor.home.pos.y + (sp5C * this->unk230);
    sp58 = Math_SinS(this->actor.shape.rot.y) * (var_fa0 * this->unk230);
    temp_ft5 = var_fa0;
    temp_ft5 = Math_CosS(this->actor.shape.rot.y) * (temp_ft5 * this->unk230);
    this->actor.world.pos.x = this->actor.home.pos.x + sp58;
    this->actor.world.pos.z = this->actor.home.pos.z + temp_ft5;
    EffectSsHahen_SpawnBurst(play, &this->actor.home.pos, this->unk230 * 3.0f, 0, this->unk230 * 12.0f,
                             this->unk230 * 5.0f, 1, -1, 10, NULL);
    if (this->unk1C6 == 0) {
        if (Math_Vec3f_DistXZ(&this->actor.home.pos, &sp64->world.pos) < (240.0f * this->unk230)) {
            func_809E5F9C(this);
        } else {
            func_809E5E58(this);
        }
    }
}

void func_809E6A04(EnDekubaba* this, PlayState* play) {
    f32 var_fa0;
    f32 sp58;
    f32 sp54;
    f32 temp_ft5;

    if (this->unk1C6 != 0) {
        this->unk1C6 -= 1;
    }
    SkelAnime_Update(&this->unk17C);
    this->actor.scale.x = this->actor.scale.y = this->actor.scale.z =
        this->unk230 * 0.01f * (0.5f + (this->unk1C6 * 0.033333335f));
    Math_ScaledStepToS(&this->actor.shape.rot.x, -0x4000, 0x300);
    sp58 = (sinf(CLAMP_MAX(this->unk1C6 * 0.033f, 0.7f) * 3.1415927f) * 32.0f) + 14.0f;
    if (this->actor.shape.rot.x < -0x38E3) {
        var_fa0 = 0.0f;
    } else if (this->actor.shape.rot.x < -0x238E) {
        Math_ScaledStepToS(&this->unk1CA_arr[0], -0x4000, 0x555);
        var_fa0 = Math_CosS(this->unk1CA_arr[0]) * 20.0f;
    } else if (this->actor.shape.rot.x < -0xE38) {
        Math_ScaledStepToS(&this->unk1CA_arr[0], -0x5555, 0x555);
        Math_ScaledStepToS(&this->unk1CA_arr[1], -0x4000, 0x555);
        Math_ScaledStepToS(&this->unk1CA_arr[2], -0x4000, 0x333);
        var_fa0 = (20.0f * (Math_CosS(this->unk1CA_arr[0]) + Math_CosS(this->unk1CA_arr[1]))) +
                  (((sp58 - (20.0f * (-Math_SinS(this->unk1CA_arr[0]) - Math_SinS(this->unk1CA_arr[1])))) *
                    Math_CosS(this->unk1CA_arr[2])) /
                   -Math_SinS(this->unk1CA_arr[2]));
    } else {
        Math_ScaledStepToS(&this->unk1CA_arr[0], -0x5555, 0x555);
        Math_ScaledStepToS(&this->unk1CA_arr[1], -0x5555, 0x333);
        Math_ScaledStepToS(&this->unk1CA_arr[2], -0x4000, 0x333);
        var_fa0 = (20.0f * (Math_CosS(this->unk1CA_arr[0]) + Math_CosS(this->unk1CA_arr[1]))) +
                  (((sp58 - (20.0f * (-Math_SinS(this->unk1CA_arr[0]) - Math_SinS(this->unk1CA_arr[1])))) *
                    Math_CosS(this->unk1CA_arr[2])) /
                   -Math_SinS(this->unk1CA_arr[2]));
    }
    this->actor.world.pos.y = this->actor.home.pos.y + (sp58 * this->unk230);
    sp54 = Math_SinS(this->actor.shape.rot.y) * (var_fa0 * this->unk230);
    temp_ft5 = Math_CosS(this->actor.shape.rot.y) * (var_fa0 * this->unk230);
    this->actor.world.pos.x = this->actor.home.pos.x + sp54;
    this->actor.world.pos.z = this->actor.home.pos.z + temp_ft5;
    EffectSsHahen_SpawnBurst(play, &this->actor.home.pos, this->unk230 * 3.0f, 0, this->unk230 * 12.0f,
                             this->unk230 * 5.0f, 1, -1, 10, NULL);
    if (this->unk1C6 == 0) {
        func_809E5ABC(this);
    }
}

void func_809E6DCC(EnDekubaba* this) {
    f32 sp2C;
    f32 sp28;
    f32 sp24;

    sp24 = Math_CosS(this->unk1CA_arr[1]);
    sp28 = Math_CosS(this->unk1CA_arr[0]);
    sp2C = (Math_CosS(this->unk1CA_arr[2]) + (sp28 + sp24)) * 20.0f;
    this->actor.world.pos.x = (Math_SinS(this->actor.shape.rot.y) * (sp2C * this->unk230)) + this->actor.home.pos.x;
    sp24 = Math_SinS(this->unk1CA_arr[1]);
    sp28 = Math_SinS(this->unk1CA_arr[0]);
    this->actor.world.pos.y =
        this->actor.home.pos.y - ((Math_SinS(this->unk1CA_arr[2]) + (sp28 + sp24)) * 20.0f * this->unk230);
    this->actor.world.pos.z = (Math_CosS(this->actor.shape.rot.y) * (sp2C * this->unk230)) + this->actor.home.pos.z;
}

void func_809E6ED4(EnDekubaba* this, PlayState* play) {
    Actor* sp34;

    sp34 = play->actorCtx.actorLists[2].head;
    SkelAnime_Update(&this->unk17C);
    if (Animation_OnFrame(&this->unk17C, 0.0f) || Animation_OnFrame(&this->unk17C, 12.0f)) {
        if (this->actor.params == 1) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_DEKU_MOUTH);
        } else {
            Actor_PlaySfx(&this->actor, NA_SE_EN_DEKU_JR_MOUTH);
        }
    }
    if (this->unk1C6 != 0) {
        this->unk1C6 -= 1;
    }
    Math_ApproachS(&this->actor.shape.rot.y, Math_Vec3f_Yaw(&this->actor.home.pos, &sp34->world.pos), 2,
                   (this->unk1C6 % 5) * 0x222);
    if (this->unk1C6 < 0xA) {
        this->unk1CA_arr[0] += 0x16C;
        this->unk1CA_arr[1] += 0x16C;
        this->unk1CA_arr[2] += 0xB6;
        this->actor.shape.rot.x += 0x222;
    } else {
        if (this->unk1C6 < 0x14) {
            this->unk1CA_arr[0] -= 0x16C;
            this->unk1CA_arr[1] += 0x111;
            this->actor.shape.rot.x += 0x16C;
        } else if (this->unk1C6 < 0x1E) {
            this->unk1CA_arr[1] -= 0x111;
            this->actor.shape.rot.x -= 0xB6;
        } else {
            this->unk1CA_arr[1] -= 0xB6;
            this->unk1CA_arr[2] += 0xB6;
            this->actor.shape.rot.x -= 0x16C;
        }
    }
    func_809E6DCC(this);
    if ((240.0f * this->unk230) < Math_Vec3f_DistXZ(&this->actor.home.pos, &sp34->world.pos)) {
        func_809E5E58(this);
    } else if ((this->unk1C6 == 0) || (this->actor.xzDistToPlayer < (80.0f * this->unk230))) {
        func_809E5F9C(this);
    }
}

void func_809E7104(EnDekubaba* this, PlayState* play) {
    s32 sp4C;
    s16 sp4A;
    Vec3f sp3C;

    SkelAnime_Update(&this->unk17C);
    if (this->unk1C6 == 0) {
        if (Animation_OnFrame(&this->unk17C, 1.0f)) {
            if (this->actor.params == 1) {
                Actor_PlaySfx(&this->actor, NA_SE_EN_DEKU_ATTACK);
            } else {
                Actor_PlaySfx(&this->actor, NA_SE_EN_DEKU_JR_ATTACK);
            }
        }
        Math_ScaledStepToS(&this->actor.shape.rot.x, 0, 0x222);
        sp4A = this->unk17C.curFrame * 10.0f;
        sp4C = true;
        sp4C &= Math_ScaledStepToS(&this->unk1CA_arr[0], -0xE38, sp4A + 0x38E);
        sp4C &= Math_ScaledStepToS(&this->unk1CA_arr[1], -0xE38, sp4A + 0x71C);
        sp4C &= Math_ScaledStepToS(&this->unk1CA_arr[2], -0xE38, sp4A + 0xE38);
        if (sp4C) {
            Animation_PlayLoopSetSpeed(&this->unk17C, &object_dekubaba_Anim_0002B8, 4.0f);
            sp3C.x = Math_SinS(this->actor.shape.rot.y) * 5.0f;
            sp3C.y = 0.0f;
            sp3C.z = Math_CosS(this->actor.shape.rot.y) * 5.0f;
            func_8002829C(play, &this->actor.world.pos, &sp3C, &D_809E8EA0, &D_809E9024, &D_809E9028, 1,
                          this->unk230 * 100.0f);
            this->unk1C6 = 1;
            this->unk238.base.acFlags |= AC_ON;
        }
    } else if (this->unk1C6 >= 0xB) {
        func_809E6000(this);
    } else {
        this->unk1C6 += 1;
        if ((this->unk1C6 >= 4) && !Actor_IsFacingPlayer(&this->actor, 0x16C)) {
            Math_ApproachS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 15, 0x71C);
        }
        if (Animation_OnFrame(&this->unk17C, 0.0f) || Animation_OnFrame(&this->unk17C, 12.0f)) {
            if (this->actor.params == 1) {
                Actor_PlaySfx(&this->actor, NA_SE_EN_DEKU_MOUTH);
            } else {
                Actor_PlaySfx(&this->actor, NA_SE_EN_DEKU_JR_MOUTH);
            }
        }
    }
    func_809E6DCC(this);
}

void func_809E738C(EnDekubaba* this, PlayState* play) {
    Player* player;

    player = GET_PLAYER(play);
    if (this->unk1C6 != 0) {
        this->unk1C6 -= 1;
    }
    Math_SmoothStepToS(&this->actor.shape.rot.x, 0x1800, 2, 0xE38, 0x71C);
    Math_ApproachS(&this->actor.shape.rot.y, Math_Vec3f_Yaw(&this->actor.home.pos, &player->actor.world.pos), 2, 0xE38);
    Math_ScaledStepToS(&this->unk1CA_arr[0], 0xAAA, 0x444);
    Math_ScaledStepToS(&this->unk1CA_arr[1], -0x4718, 0x888);
    Math_ScaledStepToS(&this->unk1CA_arr[2], -0x6AA4, 0x888);
    if (this->unk1C6 == 0) {
        func_809E5FBC(this);
    }
    func_809E6DCC(this);
}

void func_809E7458(EnDekubaba* this, PlayState* play) {
    Vec3f sp3C;
    f32 sp38;
    f32 var_fv1;
    s32 var_v0;

    SkelAnime_Update(&this->unk17C);
    if (this->unk1C6 == 0) {
        Math_ScaledStepToS(&this->actor.shape.rot.x, -0x93E, 0x38E);
        Math_ScaledStepToS(&this->unk1CA_arr[0], -0x888, 0x16C);
        Math_ScaledStepToS(&this->unk1CA_arr[1], -0x888, 0x16C);
        if (Math_ScaledStepToS(&this->unk1CA_arr[2], -0x888, 0x16C) != 0) {
            sp38 = Math_SinS(this->actor.shape.rot.y) * 30.0f * this->unk230;
            var_fv1 = Math_CosS(this->actor.shape.rot.y) * 30.0f * this->unk230;
            sp3C = this->actor.home.pos;
            for (var_v0 = 0; var_v0 < 3; var_v0++) {
                func_800286CC(play, &sp3C, &D_809E8EA0, &D_809E8EA0, this->unk230 * 500.0f, this->unk230 * 50.0f);
                sp3C.x += sp38;
                sp3C.z += var_fv1;
            }
            this->unk1C6 = 1;
        }
    } else if (this->unk1C6 == 0xB) {
        Math_ScaledStepToS(&this->actor.shape.rot.x, -0x93E, 0x200);
        Math_ScaledStepToS(&this->unk1CA_arr[0], -0xAAA, 0x200);
        Math_ScaledStepToS(&this->unk1CA_arr[2], -0x5C71, 0x200);
        if (Math_ScaledStepToS(&this->unk1CA_arr[1], 0x238C, 0x200)) {
            this->unk1C6 = 0xC;
        }
    } else if (this->unk1C6 == 0x12) {
        Math_ScaledStepToS(&this->actor.shape.rot.x, 0x2AA8, 0xAAA);
        if (Math_ScaledStepToS(&this->unk1CA_arr[0], 0x1554, 0x5B0)) {
            this->unk1C6 = 0x19;
        }
        Math_ScaledStepToS(&this->unk1CA_arr[1], -0x38E3, 0xAAA);
        Math_ScaledStepToS(&this->unk1CA_arr[2], -0x5C71, 0x2D8);
    } else if (this->unk1C6 == 0x19) {
        Math_ScaledStepToS(&this->actor.shape.rot.x, -0x5550, 0xAAA);
        if (Math_ScaledStepToS(&this->unk1CA_arr[0], -0x6388, 0x93E)) {
            this->unk1C6 = 0x1A;
        }
        Math_ScaledStepToS(&this->unk1CA_arr[1], -0x3FFC, 0x4FA);
        Math_ScaledStepToS(&this->unk1CA_arr[2], -0x238C, 0x444);
    } else if (this->unk1C6 == 0x1A) {
        Math_ScaledStepToS(&this->actor.shape.rot.x, 0x1800, 0x93E);
        if (Math_ScaledStepToS(&this->unk1CA_arr[0], -0x1555, 0x71C)) {
            this->unk1C6 = 0x1B;
        }
        Math_ScaledStepToS(&this->unk1CA_arr[1], -0x38E3, 0x2D8);
        Math_ScaledStepToS(&this->unk1CA_arr[2], -0x5C71, 0x5B0);
    } else if (this->unk1C6 >= 0x1B) {
        this->unk1C6 += 1;
        if (this->unk1C6 >= 0x1F) {
            if (this->actor.xzDistToPlayer < (80.0f * this->unk230)) {
                func_809E5F9C(this);
            } else {
                func_809E5F44(this);
            }
        }
    } else {
        this->unk1C6 += 1;
        if (this->unk1C6 == 0xA) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_DEKU_SCRAPE);
        }
        if (this->unk1C6 >= 0xC) {
            Math_ScaledStepToS(&this->unk1CA_arr[2], -0x5C71, 0x88);
        }
    }
    func_809E6DCC(this);
}

void func_809E77E4(EnDekubaba* this, PlayState* play) {
    s32 temp_s0;

    SkelAnime_Update(&this->unk17C);
    if (this->unk1C6 >= 9) {
        temp_s0 = 0;
        temp_s0 |= Math_SmoothStepToS(&this->actor.shape.rot.x, 0x1800, 1, 0x11C6, 0x71C);
        temp_s0 |= Math_SmoothStepToS(&this->unk1CA_arr[0], -0x1555, 1, 0xAAA, 0x71C);
        temp_s0 |= Math_SmoothStepToS(&this->unk1CA_arr[1], -0x38E3, 1, 0xE38, 0x71C);
        temp_s0 |= Math_SmoothStepToS(&this->unk1CA_arr[2], -0x5C71, 1, 0x11C6, 0x71C);
        if (temp_s0 == 0) {
            this->unk1C6 = 8;
        }
    } else {
        if (this->unk1C6 != 0) {
            this->unk1C6 -= 1;
        }
        if (this->unk1C6 == 0) {
            func_809E5F44(this);
        }
    }
    func_809E6DCC(this);
}

void func_809E78DC(EnDekubaba* this, PlayState* play) {
    s32 temp_s0;

    SkelAnime_Update(&this->unk17C);
    temp_s0 = true;
    temp_s0 &= Math_ScaledStepToS(&this->actor.shape.rot.x, -0x4000, 0xE38);
    temp_s0 &= Math_ScaledStepToS(&this->unk1CA_arr[0], -0x4000, 0xE38);
    temp_s0 &= Math_ScaledStepToS(&this->unk1CA_arr[1], -0x4000, 0xE38);
    temp_s0 &= Math_ScaledStepToS(&this->unk1CA_arr[2], -0x4000, 0xE38);
    if (temp_s0) {
        if (this->actor.colChkInfo.health == 0) {
            func_809E61E0(this);
        } else {
            this->unk238.base.acFlags |= AC_ON;
            if (this->unk1C6 == 0) {
                if (this->actor.xzDistToPlayer < (80.0f * this->unk230)) {
                    func_809E5F9C(this);
                } else {
                    func_809E6078(this);
                }
            } else {
                func_809E6264(this);
            }
        }
    }
    func_809E6DCC(this);
}

void func_809E79EC(EnDekubaba* this, PlayState* play) {
    SkelAnime_Update(&this->unk17C);
    if (this->unk1C6 != 0) {
        this->unk1C6 -= 1;
    }
    if (this->unk1C6 == 0) {
        func_809E5A38(this);
        if (this->actor.xzDistToPlayer < (80.0f * this->unk230)) {
            func_809E5F9C(this);
        } else {
            func_809E6078(this);
        }
    }
}

void func_809E7A88(EnDekubaba* this, PlayState* play) {
    s16 temp_v0;

    SkelAnime_Update(&this->unk17C);
    Math_ScaledStepToS(&this->actor.shape.rot.x, this->unk1CA_arr[0], 0x71C);
    Math_ScaledStepToS(&this->unk1CA_arr[0], this->unk1CA_arr[1], 0x71C);
    Math_ScaledStepToS(&this->unk1CA_arr[1], this->unk1CA_arr[2], 0x71C);
    if (Math_ScaledStepToS(&this->unk1CA_arr[2], this->unk1C8, 0x71C)) {
        this->unk1C8 = (s16)(s32)(-16384.0f - ((this->unk1C8 + 0x4000) * 0.8f));
    }
    temp_v0 = this->unk1C8 + 0x4000;
    if (ABS(temp_v0) < 0x100) {
        this->unk238.base.acFlags |= AC_ON;
        if (this->actor.xzDistToPlayer < (80.0f * this->unk230)) {
            func_809E5F9C(this);
        } else {
            func_809E6078(this);
        }
    }
    func_809E6DCC(this);
}

void func_809E7BB0(EnDekubaba* this, PlayState* play) {
    s32 var_s0;
    Vec3f sp78;
    f32 temp_fs0;
    f32 temp_fs1;
    f32 temp_fs2;

    Math_StepToF(&this->actor.speed, 0.0f, this->unk230 * 0.1f);
    if (this->unk1C6 == 0) {
        Math_ScaledStepToS(&this->actor.shape.rot.x, 0x4800, 0x71C);
        Math_ScaledStepToS(&this->unk1CA_arr[0], 0x4800, 0x71C);
        Math_ScaledStepToS(&this->unk1CA_arr[1], 0x4800, 0x71C);
        EffectSsHahen_SpawnBurst(play, &this->actor.world.pos, this->unk230 * 3.0f, 0, this->unk230 * 12.0f,
                                 this->unk230 * 5.0f, 1, -1, 10, NULL);
        if ((this->actor.scale.x > 0.005f) && ((((this->actor.bgCheckFlags & BGCHECKFLAG_GROUND_TOUCH) != 0)) ||
                                               (this->actor.bgCheckFlags & BGCHECKFLAG_WALL))) {
            this->actor.scale.x = this->actor.scale.y = this->actor.scale.z = 0.0f;
            this->actor.speed = 0.0f;
            this->actor.flags &= ~(ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_HOSTILE);
            EffectSsHahen_SpawnBurst(play, &this->actor.world.pos, this->unk230 * 3.0f, 0, this->unk230 * 12.0f,
                                     this->unk230 * 5.0f, 15, -1, 10, NULL);
        }
        if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND_TOUCH) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_DODO_M_GND);
            this->unk1C6 = 1;
        }
    } else if (this->unk1C6 == 1) {
        sp78 = this->actor.world.pos;
        temp_fs2 = Math_SinS(this->actor.shape.rot.x) * 20.0f;
        temp_fs0 = (-20.0f * Math_CosS(this->actor.shape.rot.x)) * Math_SinS(this->actor.shape.rot.y);
        temp_fs1 = (-20.0f * Math_CosS(this->actor.shape.rot.x)) * Math_CosS(this->actor.shape.rot.y);
        for (var_s0 = 0; var_s0 < 4; var_s0++) {
            func_800286CC(play, &sp78, &D_809E8EA0, &D_809E8EA0, 500, 50);
            sp78.x += temp_fs0;
            sp78.y += temp_fs2;
            sp78.z += temp_fs1;
        }
        func_800286CC(play, &this->actor.home.pos, &D_809E8EA0, &D_809E8EA0, this->unk230 * 500.0f,
                      this->unk230 * 100.0f);
        func_809E645C(this, play);
    }
}

void func_809E7F14(EnDekubaba* this, PlayState* play) {
    Math_StepToF(&this->actor.world.pos.y, this->actor.home.pos.y, this->unk230 * 5.0f);
    if (Math_StepToF(&this->actor.scale.x, this->unk230 * 0.1f * 0.01f, this->unk230 * 0.1f * 0.01f) != 0) {
        func_800286CC(play, &this->actor.home.pos, &D_809E8EA0, &D_809E8EA0, this->unk230 * 500.0f,
                      this->unk230 * 100.0f);
        if (this->actor.dropFlag == 0) {
            Item_DropCollectible(play, &this->actor.world.pos, 0xC);
            if (this->actor.params == 1) {
                Item_DropCollectible(play, &this->actor.world.pos, 0xC);
                Item_DropCollectible(play, &this->actor.world.pos, 0xC);
            }
        } else {
            Item_DropCollectibleRandom(play, &this->actor, &this->actor.world.pos,
                                       COLLECTIBLE_DROP_RANDOM_PARAMS(COLLECTIBLE_DROP_TABLE_3, false));
        }
        Actor_Kill(&this->actor);
    }
    this->actor.scale.y = this->actor.scale.z = this->actor.scale.x;
    this->actor.shape.rot.z += 0x1C70;
    EffectSsHahen_SpawnBurst(play, &this->actor.home.pos, this->unk230 * 3.0f, 0, this->unk230 * 12.0f,
                             this->unk230 * 5.0f, 1, -1, 10, NULL);
}

void func_809E80D8(EnDekubaba* this, PlayState* play) {
    if (this->unk1C6 != 0) {
        this->unk1C6 -= 1;
    }
    if (Actor_HasParent(&this->actor, play) || (this->unk1C6 == 0)) {
        Actor_Kill(&this->actor);
    } else {
        Actor_OfferGetItemNearby(&this->actor, play, GI_DEKU_STICKS_1);
    }
}

void func_809E8140(EnDekubaba* this, PlayState* play) {
    float new_var2;
    s32 var_s0;
    s32 i;

    if (this->unk238.base.acFlags & AC_HIT) {
        this->unk238.base.acFlags &= ~AC_HIT;
        Actor_SetDropFlagJntSph(&this->actor, &this->unk238, true);
        if ((this->unk238.base.colMaterial != COL_MATERIAL_HARD) &&
            (((this->actor.colChkInfo.damageReaction != 0)) || (this->actor.colChkInfo.damage != 0))) {
            var_s0 = this->actor.colChkInfo.health - this->actor.colChkInfo.damage;
            if (this->unk1C0 != func_809E79EC) {
                if ((this->actor.colChkInfo.damageReaction == 0xE) || (this->actor.colChkInfo.damageReaction == 1)) {
                    if (this->actor.colChkInfo.damageReaction == 0xE) {
                        var_s0 = this->actor.colChkInfo.health;
                    }
                    func_809E60A8(this, 2);
                } else if (this->unk1C0 == func_809E7458) {
                    if (var_s0 <= 0) {
                        var_s0 = 1;
                    }
                    func_809E60A8(this, 1);
                } else {
                    func_809E60A8(this, 0);
                }
            } else if ((this->actor.colChkInfo.damageReaction == 0xE) ||
                       (this->actor.colChkInfo.damageReaction == 0xF)) {
                if (var_s0 > 0) {
                    func_809E63EC(this);
                } else {
                    func_809E6170(this);
                }
            } else if (this->actor.colChkInfo.damageReaction != 1) {
                func_809E60A8(this, 0);
            } else {
                return;
            }
            if (var_s0 < 0) {
                this->actor.colChkInfo.health = 0;
            } else {
                this->actor.colChkInfo.health = var_s0;
            }
            if (this->actor.colChkInfo.damageReaction == 2) {
                new_var2 = this->unk230 * 70.0f;
                for (i = 0; i < 4; i++) {
                    EffectSsEnFire_SpawnVec3f(play, &this->actor, &this->actor.world.pos, new_var2, 0, 0, i);
                }
            }
        } else {
            return;
        }
    } else if ((play->actorCtx.unk_02 != 0) && (this->unk238.base.colMaterial != COL_MATERIAL_HARD) &&
               (this->unk1C0 != func_809E79EC) && (this->unk1C0 != func_809E78DC) &&
               (this->actor.colChkInfo.health != 0)) {
        this->actor.colChkInfo.health--;
        this->actor.dropFlag = 0;
        func_809E60A8(this, 1);
    } else {
        return;
    }
    if (this->actor.colChkInfo.health != 0) {
        if (this->unk1C6 == 2) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
        } else {
            Actor_PlaySfx(&this->actor, NA_SE_EN_DEKU_DAMAGE);
        }
    } else {
        Enemy_StartFinishingBlow(play, &this->actor);
        if (this->actor.params == 1) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_DEKU_DEAD);
        } else {
            Actor_PlaySfx(&this->actor, NA_SE_EN_DEKU_JR_DEAD);
        }
    }
}

void EnDekubaba_Update(Actor* thisx, PlayState* play) {
    EnDekubaba* this = (EnDekubaba*)thisx;
    s32 pad;

    if (this->unk238.base.atFlags & AT_HIT) {
        this->unk238.base.atFlags &= ~AT_HIT;
        func_809E6078(this);
    }
    func_809E8140(this, play);
    this->unk1C0(this, play);
    if (this->unk1C0 == func_809E7BB0) {
        Actor_MoveXZGravity(&this->actor);
        Actor_UpdateBgCheckInfo(play, &this->actor, 10.0f, this->unk230 * 15.0f, 10.0f,
                                UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2);
    } else {
        if (this->unk1C0 != func_809E80D8) {
            Actor_UpdateBgCheckInfo(play, &this->actor, 0.0f, 0.0f, 0.0f, UPDBGCHECKINFO_FLAG_2);
            if (this->unk234 == NULL) {
                this->unk234 = this->actor.floorPoly;
            }
        }
    }
    if (this->unk1C0 == func_809E7104) {
        CollisionCheck_SetAT(play, &play->colChkCtx, &this->unk238.base);
        this->actor.flags |= ACTOR_FLAG_SFX_FOR_PLAYER_BODY_HIT;
    }
    if (this->unk238.base.acFlags & 1) {
        CollisionCheck_SetAC(play, &play->colChkCtx, &this->unk238.base);
    }
    if (this->unk1C0 != func_809E80D8) {
        CollisionCheck_SetOC(play, &play->colChkCtx, &this->unk238.base);
    }
}

void func_809E858C(EnDekubaba* this, PlayState* play) {
    f32 sp44;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_dekubaba.c", 2445);
    sp44 = this->unk230 * 0.01f;
    Matrix_Translate(this->actor.home.pos.x, this->actor.home.pos.y + (-6.0f * this->unk230), this->actor.home.pos.z,
                     MTXMODE_NEW);
    Matrix_RotateZYX(this->unk1CA_arr[0], this->actor.shape.rot.y, 0, MTXMODE_APPLY);
    Matrix_Scale(sp44, sp44, sp44, MTXMODE_APPLY);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_en_dekubaba.c", 2461);
    gSPDisplayList(POLY_OPA_DISP++, object_dekubaba_DL_001330);
    Actor_SetFocus(&this->actor, 0.0f);
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_dekubaba.c", 2468);
}

void func_809E86B8(EnDekubaba* this, PlayState* play) {
    MtxF spB0;
    f32 temp_fs0;
    f32 temp_fs0_2;
    f32 spA4;
    s32 i__var_s2;
    s32 sp9C;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_dekubaba.c", 2487);
    if (this->unk1C0 == func_809E7BB0) {
        sp9C = 2;
    } else {
        sp9C = 3;
    }
    temp_fs0 = this->unk230 * 0.01f;
    Matrix_Translate(this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z, MTXMODE_NEW);
    Matrix_Scale(temp_fs0, temp_fs0, temp_fs0, MTXMODE_APPLY);
    Matrix_Get(&spB0);
    if (this->actor.colorFilterTimer != 0) {
        spA4 = this->unk230 * 20.0f;
        this->unk164.x = this->actor.world.pos.x;
        this->unk164.y = this->actor.world.pos.y - spA4;
        this->unk164.z = this->actor.world.pos.z;
    }
    for (i__var_s2 = 0; i__var_s2 < sp9C; i__var_s2++) {
        spB0.mf[3][1] += 20.0f * Math_SinS(this->unk1CA_arr[i__var_s2]) * this->unk230;
        temp_fs0_2 = Math_CosS(this->unk1CA_arr[i__var_s2]) * 20.0f * this->unk230;
        spB0.mf[3][0] -= temp_fs0_2 * Math_SinS(this->actor.shape.rot.y);
        spB0.mf[3][2] -= temp_fs0_2 * Math_CosS(this->actor.shape.rot.y);
        Matrix_Put(&spB0);
        Matrix_RotateZYX(this->unk1CA_arr[i__var_s2], this->actor.shape.rot.y, 0, MTXMODE_APPLY);
        MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_en_dekubaba.c", 2533);
        gSPDisplayList(POLY_OPA_DISP++, D_809E902C[i__var_s2]);
        Collider_UpdateSpheres(0x33 + (i__var_s2 * 2), &this->unk238);
        Collider_UpdateSpheres(0x34 + (i__var_s2 * 2), &this->unk238);
        if (i__var_s2 == 0) {
            if (this->unk1C0 != func_809E7A88) {
                this->actor.focus.pos.x = spB0.mf[3][0];
                this->actor.focus.pos.y = spB0.mf[3][1];
                this->actor.focus.pos.z = spB0.mf[3][2];
            } else {
                this->actor.focus.pos.x = this->actor.home.pos.x;
                this->actor.focus.pos.y = this->actor.home.pos.y + (40.0f * this->unk230);
                this->actor.focus.pos.z = this->actor.home.pos.z;
            }
        }
        if ((i__var_s2 < 2) && (this->actor.colorFilterTimer != 0)) {
            this->unk14C[i__var_s2].x = spB0.mf[3][0];
            this->unk14C[i__var_s2].y = spB0.mf[3][1] - spA4;
            this->unk14C[i__var_s2].z = spB0.mf[3][2];
        }
    }
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_dekubaba.c", 2569);
}

void func_809E89E4(EnDekubaba* this, PlayState* play) {
    OPEN_DISPS(play->state.gfxCtx, "../z_en_dekubaba.c", 2579);
    Matrix_RotateZYX(this->unk1CA_arr[2], this->actor.shape.rot.y, 0, MTXMODE_APPLY);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_en_dekubaba.c", 2586);
    gSPDisplayList(POLY_OPA_DISP++, object_dekubaba_DL_001828);
    Collider_UpdateSpheres(0x37, &this->unk238);
    Collider_UpdateSpheres(0x38, &this->unk238);
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_dekubaba.c", 2596);
}

void func_809E8AD8(EnDekubaba* this, PlayState* play) {
    MtxF sp50;
    f32 temp_fa0;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_dekubaba.c", 2692);
    Gfx_SetupDL_44Xlu(play->state.gfxCtx);
    gDPSetPrimColor(POLY_XLU_DISP++, 0x00, 0x00, 0, 0, 0, 255);
    func_80038A28(this->unk234, this->actor.home.pos.x, this->actor.home.pos.y, this->actor.home.pos.z, &sp50);
    Matrix_Mult(&sp50, MTXMODE_NEW);
    temp_fa0 = this->unk230 * 0.15f;
    Matrix_Scale(temp_fa0, 1.0f, temp_fa0, MTXMODE_APPLY);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_en_dekubaba.c", 2710);
    gSPDisplayList(POLY_XLU_DISP++, gCircleShadowDL);
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_dekubaba.c", 2715);
}

void func_809E8C0C(PlayState* play, s32 arg1, Gfx** arg2, Vec3s* arg3, void* thisx) {
    EnDekubaba* this = thisx;

    if (arg1 == 1) {
        Collider_UpdateSpheres(arg1, &this->unk238);
    }
}

void EnDekubaba_Draw(Actor* thisx, PlayState* play) {
    EnDekubaba* this = (EnDekubaba*)thisx;
    f32 sp50;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_dekubaba.c", 2752);
    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    if (this->unk1C0 != func_809E80D8) {
        SkelAnime_DrawOpa(play, this->unk17C.skeleton, this->unk17C.jointTable, NULL, func_809E8C0C, this);
        if (this->unk1C0 == func_809E64F4) {
            func_809E858C(this, play);
        } else {
            func_809E86B8(this, play);
        }
        sp50 = this->unk230 * 0.01f;
        Matrix_Translate(this->actor.home.pos.x, this->actor.home.pos.y, this->actor.home.pos.z, MTXMODE_NEW);
        Matrix_RotateY(BINANG_TO_RAD(this->actor.home.rot.y), MTXMODE_APPLY);
        Matrix_Scale(sp50, sp50, sp50, MTXMODE_APPLY);
        MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_en_dekubaba.c", 2780);
        gSPDisplayList(POLY_OPA_DISP++, object_dekubaba_DL_0010F0);
        if (this->unk1C0 == func_809E7BB0) {
            func_809E89E4(this, play);
        }
        if (this->unk234 != NULL) {
            func_809E8AD8(this, play);
        }
    } else {
        if ((this->unk1C6 >= 0x29) || (this->unk1C6 & 1)) {
            Matrix_Translate(0.0f, 0.0f, 200.0f, MTXMODE_APPLY);
            MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_en_dekubaba.c", 2797);
            gSPDisplayList(POLY_OPA_DISP++, object_dekubaba_DL_003070);
        }
    }
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_dekubaba.c", 2804);
}
