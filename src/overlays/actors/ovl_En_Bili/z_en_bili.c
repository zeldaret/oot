#include "z_en_bili.h"

#include "libc64/qrand.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "ichain.h"
#include "rand.h"
#include "segmented_address.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "versions.h"
#include "z_en_item00.h"
#include "z_lib.h"
#include "effect.h"
#include "play_state.h"

#include "assets/objects/object_bl/object_bl.h"

#define FLAGS \
    (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_HOSTILE | ACTOR_FLAG_IGNORE_QUAKE | ACTOR_FLAG_CAN_ATTACH_TO_ARROW)

void EnBili_Init(Actor* thisx, PlayState* play);
void EnBili_Destroy(Actor* thisx, PlayState* play);
void EnBili_Update(Actor* thisx, PlayState* play2);
void EnBili_Draw(Actor* thisx, PlayState* play);

void func_809BF9BC(EnBili* this);
void func_809BFA14(EnBili* this);
void func_809BFA8C(EnBili* this);
void func_809BFAE8(EnBili* this);
void func_809BFB40(EnBili* this);
void func_809BFB5C(EnBili* this);
void func_809BFBC4(EnBili* this);
void func_809BFC48(EnBili* this);
void func_809BFCE8(EnBili* this);
void func_809BFD18(EnBili* this);
void func_809BFD94(EnBili* this, PlayState* play);
void func_809BFF6C(EnBili* this);
void func_809C008C(EnBili* this);
void func_809C0174(EnBili* this, PlayState* play);
void func_809C0260(EnBili* this, PlayState* play);
void func_809C02B8(EnBili* this, PlayState* play);
void func_809C04B4(EnBili* this, PlayState* play);
void func_809C0570(EnBili* this, PlayState* play);
void func_809C0600(EnBili* this, PlayState* play);
void func_809C067C(EnBili* this, PlayState* play);
void func_809C06E0(EnBili* this, PlayState* play);
void func_809C0754(EnBili* this, PlayState* play);
void func_809C0980(EnBili* this, PlayState* play);
void func_809C09E0(EnBili* this, PlayState* play);
void func_809C0A70(EnBili* this, PlayState* play);
void func_809C0E08(EnBili* this, f32 arg1, Vec3f* arg2);
void func_809C1020(EnBili* this, f32 arg1, Vec3f* arg2);
void func_809C1240(EnBili* this, f32 arg1, Vec3f* arg2);
s32 EnBili_OverrideLimbDraw(PlayState* play, s32 arg1, Gfx** arg2, Vec3f* arg3, Vec3s* arg4, void* thisx, Gfx** gfx);

ActorProfile En_Bili_Profile = {
    /**/ ACTOR_EN_BILI,
    /**/ ACTORCAT_ENEMY,
    /**/ FLAGS,
    /**/ OBJECT_BL,
    /**/ sizeof(EnBili),
    /**/ EnBili_Init,
    /**/ EnBili_Destroy,
    /**/ EnBili_Update,
    /**/ EnBili_Draw,
};

static ColliderCylinderInit D_809C1640 = {
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
        { 0xFFCFFFFF, HIT_SPECIAL_EFFECT_ELECTRIC, 0x08 },
        { 0xFFCFFFFF, HIT_BACKLASH_ELECTRIC, 0x00 },
        ATELEM_ON | ATELEM_SFX_NONE,
        ACELEM_ON,
        OCELEM_ON,
    },
    { 9, 28, -20, { 0, 0, 0 } },
};

static CollisionCheckInfoInit2 D_809C166C = { 1, 9, 0x1C, -0x14, 0x1E };
static DamageTable D_809C1678 = {
    {
        0x10, 2,    0xE0, 2, 1, 2, 2, 2, 0xF1, 0xF2, 0xF4, 0x24, 0x34, 2, 2, 2,
        2,    0x24, 0x34, 0, 0, 0, 1, 4, 2,    2,    8,    4,    0,    0, 4, 0,
    },
};
static InitChainEntry D_809C1698[] = {
    ICHAIN_S8(naviEnemyId, NAVI_ENEMY_BIRI, ICHAIN_CONTINUE),
    ICHAIN_F32(lockOnArrowOffset, 2000, ICHAIN_STOP),
};
static Color_RGBA8 D_809C16A0 = { 0xFF, 0xFF, 0xFF, 0xFF };
static Color_RGBA8 D_809C16A4 = { 0xC8, 0xFF, 0xFF, 0xFF };

void EnBili_Init(Actor* thisx, PlayState* play) {
    EnBili* this = (EnBili*)thisx;

    Actor_ProcessInitChain(&this->actor, D_809C1698);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 17.0f);
    this->actor.shape.shadowAlpha = 155;
    SkelAnime_Init(play, &this->unk14C, &object_bl_005848_Skel, &object_bl_Anim_0000A4, this->unk198, this->unk1B6, 5);
    Collider_InitCylinder(play, &this->unk1D4);
    Collider_SetCylinder(play, &this->unk1D4, &this->actor, &D_809C1640);
    CollisionCheck_SetInfo2(&this->actor.colChkInfo, &D_809C1678, &D_809C166C);
    this->unk195 = 0;
    if (this->actor.params == -1) {
        func_809BF9BC(this);
    } else {
        func_809BFA14(this);
    }
}

void EnBili_Destroy(Actor* thisx, PlayState* play) {
    EnBili* this = (EnBili*)thisx;

    Collider_DestroyCylinder(play, &this->unk1D4);
}

void func_809BF9BC(EnBili* this) {
    this->actor.speed = 0.7f;
    this->unk1D4.elem.acDmgInfo.hitBacklash = HIT_BACKLASH_ELECTRIC;
    this->unk196 = 0x20;
    this->actor.home.pos.y = this->actor.world.pos.y;
    this->actor.gravity = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->unk1D4.base.atFlags |= AT_ON;
    this->unk1D4.base.acFlags |= AC_ON;
    this->unk190 = func_809C0174;
}

void func_809BFA14(EnBili* this) {
    Animation_PlayLoop(&this->unk14C, &object_bl_Anim_0000A4);
    this->unk196 = 0x19;
    this->actor.velocity.y = 6.0f;
    this->actor.gravity = -0.3f;
    this->actor.speed = 3.0f;
    this->unk1D4.base.atFlags &= ~AT_ON;
    this->unk190 = func_809C0260;
}

void func_809BFA8C(EnBili* this) {
    Animation_PlayLoop(&this->unk14C, &object_bl_Anim_000024);
    this->unk196 = 0xA;
    this->unk190 = func_809C02B8;
    this->actor.speed = 0.0f;
    this->actor.velocity.y = -1.0f;
}

void func_809BFAE8(EnBili* this) {
    Animation_PlayOnce(&this->unk14C, &object_bl_Anim_000064);
    this->unk1D4.base.atFlags &= ~AT_ON;
    this->unk190 = func_809C04B4;
    this->actor.speed = 0.0f;
    this->actor.velocity.y = 0.0f;
}

void func_809BFB40(EnBili* this) {
    this->actor.speed = 1.2f;
    this->unk190 = func_809C0570;
}

void func_809BFB5C(EnBili* this) {
    Animation_PlayLoop(&this->unk14C, &object_bl_Anim_0000A4);
    this->unk196 = 0x60;
    this->actor.speed = 0.9f;
    this->actor.home.pos.y = this->actor.world.pos.y;
    this->unk1D4.base.atFlags |= 1;
    this->unk190 = func_809C0600;
}

void func_809BFBC4(EnBili* this) {
    if (this->unk14C.animation != &object_bl_Anim_0000A4) {
        Animation_PlayLoop(&this->unk14C, &object_bl_Anim_0000A4);
    }
    this->actor.world.rot.y = Actor_WorldYawTowardPoint(&this->actor, &this->unk1D4.base.ac->prevPos) + 0x8000;
    this->actor.world.rot.x = Actor_WorldPitchTowardPoint(&this->actor, &this->unk1D4.base.ac->prevPos);
    this->unk190 = func_809C067C;
    this->actor.speed = 5.0f;
}

void func_809BFC48(EnBili* this) {
    if (this->unk190 == func_809C04B4) {
        Animation_PlayLoop(&this->unk14C, &object_bl_Anim_0000A4);
    }
    this->unk196 = 0x14;
    this->unk1D4.base.atFlags &= ~AT_ON;
    this->unk1D4.base.acFlags &= ~AC_ON;
    this->actor.flags |= ACTOR_FLAG_UPDATE_CULLING_DISABLED;
    this->actor.speed = 0.0f;
    Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_RED, 200, COLORFILTER_BUFFLAG_XLU, 20);
    this->unk190 = func_809C06E0;
}

void func_809BFCE8(EnBili* this) {
    this->unk196 = 0x12;
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    this->unk190 = func_809C0754;
    this->actor.speed = 0.0f;
}

void func_809BFD18(EnBili* this) {
    this->unk196 = 0x50;
    this->unk1D4.elem.acDmgInfo.hitBacklash = HIT_BACKLASH_NONE;
    this->actor.gravity = -1.0f;
    this->actor.speed = 0.0f;
    Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_BLUE, 150, COLORFILTER_BUFFLAG_XLU, 80);
    Actor_PlaySfx(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
    this->unk1D4.base.atFlags &= ~AT_ON;
    this->unk190 = func_809C0980;
}

void func_809BFD94(EnBili* this, PlayState* play) {
    s32 var_s0;
    Vec3f sp80;

    if (!(this->actor.flags & ACTOR_FLAG_ATTACHED_TO_ARROW)) {
        this->actor.gravity = -1.0f;
    }
    this->actor.velocity.y = 0.0f;
    sp80.y = this->actor.world.pos.y - 15.0f;
    for (var_s0 = 0; var_s0 < 8; var_s0++) {
        sp80.x = ((var_s0 & 1) ? 7.0f : -7.0f) + this->actor.world.pos.x;
        sp80.y += 2.5f;
        sp80.z = ((var_s0 & 4) ? 7.0f : -7.0f) + this->actor.world.pos.z;
        EffectSsEnIce_SpawnFlyingVec3f(play, &this->actor, &sp80, 150, 150, 150, 250, 235, 245, 255,
                                       (Rand_ZeroOne() * 0.2f) + 0.7f);
    }
    this->actor.speed = 0.0f;
    Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_BLUE, 150, COLORFILTER_BUFFLAG_XLU, 10);
    this->unk1D4.base.atFlags &= ~AT_ON;
    this->unk1D4.base.acFlags &= ~AC_ON;
    this->unk196 = 0x12C;
    this->unk190 = func_809C09E0;
}

void func_809BFF6C(EnBili* this) {
    s16 temp_v1_2;
    s16 temp_v1_4;
    s16 temp_ft1;
    s16 temp_v1_3;

    temp_ft1 = this->unk14C.curFrame;
    if (this->unk190 == func_809C02B8) {
        temp_v1_2 = 3 - temp_ft1;
        this->unk194 = (ABS(temp_v1_2) + 5) % 8;
    } else if (this->unk190 == func_809C04B4) {
        temp_v1_3 = temp_ft1 >> 1;
        if (temp_ft1 < 0xA) {
            if (temp_v1_3 >= 4) {
                this->unk194 = 3;
            } else {
                this->unk194 = temp_v1_3;
            }
        } else if (temp_ft1 < 0x13) {
            temp_v1_4 = 0x11 - temp_ft1;
            this->unk194 = CLAMP_MIN(temp_v1_4, 0) >> 1;
        } else if (temp_ft1 < 0x25) {
            this->unk194 = ((0x24 - temp_ft1) / 3) + 2;
        } else {
            this->unk194 = (0x28 - temp_ft1) >> 1;
        }
    } else {
        this->unk194 = temp_ft1 >> 1;
    }
}

void func_809C008C(EnBili* this) {
    f32 temp_fv0;
    f32 temp_fv1;
    f32 var_fa0;
    f32 var_fa1;

    temp_fv0 = this->actor.world.pos.y + this->actor.yDistToPlayer;
    if (this->unk190 == func_809C0600) {
        var_fa1 = 100.0f;
    } else {
        var_fa1 = 40.0f;
    }
    temp_fv1 = this->actor.floorHeight;
    if (temp_fv1 < temp_fv0) {
        var_fa0 = temp_fv0;
    } else {
        var_fa0 = temp_fv1;
    }
    Math_StepToF(&this->actor.home.pos.y, var_fa0 + var_fa1, 1.0f);
    this->actor.world.pos.y = (sinf(this->unk196 * 0.19634955f) * 3.0f) + this->actor.home.pos.y;
    if (this->actor.bgCheckFlags & BGCHECKFLAG_WALL) {
        this->actor.world.rot.y = this->actor.wallYaw;
    }
}

void func_809C0174(EnBili* this, PlayState* play) {
    SkelAnime_Update(&this->unk14C);
    if (this->unk196 != 0) {
        this->unk196--;
    }
    if (!(this->unk196 % 4)) {
        this->actor.world.rot.y += Rand_CenteredFloat(1820.0f);
    }
    func_809C008C(this);
    if (this->unk196 == 0) {
        this->unk196 = 0x20;
    }
    if ((this->actor.xzDistToPlayer < 160.0f) && (fabsf(this->actor.yDistToPlayer) < 45.0f)) {
        func_809BFB40(this);
    }
}

void func_809C0260(EnBili* this, PlayState* play) {
    SkelAnime_Update(&this->unk14C);
    if (this->unk196 != 0) {
        this->unk196--;
    }
    if (this->unk196 == 0) {
        func_809BF9BC(this);
    }
}

void func_809C02B8(EnBili* this, PlayState* play) {
    s16 temp_s1;
    Vec3f sp78;
    s32 var_s0;

    for (var_s0 = 0; var_s0 < 4; var_s0++) {
        if (!((s32)(this->unk196 + (var_s0 << 1)) % 4)) {
            temp_s1 = (s16)Rand_CenteredFloat(12288.0f) + (var_s0 * 0x4000) + 0x2000;
            sp78.x = Rand_CenteredFloat(5.0f) + this->actor.world.pos.x;
            sp78.y = (Rand_ZeroOne() * 5.0f) + this->actor.world.pos.y + 2.5f;
            sp78.z = Rand_CenteredFloat(5.0f) + this->actor.world.pos.z;
            EffectSsLightning_Spawn(play, (Vec3f*)&sp78, &D_809C16A0, &D_809C16A4, 0xF, (s16)(s32)temp_s1, 6, 2);
        }
    }
    SkelAnime_Update(&this->unk14C);
    Actor_PlaySfx_Flagged(&this->actor, NA_SE_EN_BIRI_SPARK - SFX_FLAG);
    if (this->unk196 != 0) {
        this->unk196--;
    }
    this->actor.velocity.y *= -1.0f;
    if ((this->unk196 == 0) && Animation_OnFrame(&this->unk14C, 0.0f)) {
        if (this->actor.params == 1) {
            func_809BFCE8(this);
        } else {
            func_809BFAE8(this);
        }
    }
}

void func_809C04B4(EnBili* this, PlayState* play) {
    s32 animFinished;
    f32 sp28;

    animFinished = SkelAnime_Update(&this->unk14C);
    sp28 = this->unk14C.curFrame;
    if (Animation_OnFrame(&this->unk14C, 9.0f)) {
        Actor_PlaySfx(&this->actor, 0x3899U);
    }
    if (sp28 > 9.0f) {
        Math_ApproachF(&this->actor.world.pos.y, this->actor.world.pos.y + this->actor.yDistToPlayer + 100.0f, 0.5f,
                       5.0f);
    }
    if (animFinished) {
        func_809BFB5C(this);
    }
}

void func_809C0570(EnBili* this, PlayState* play) {
    SkelAnime_Update(&this->unk14C);
    Math_ApproachS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer, 2, 0x71C);
    if (this->unk196 != 0) {
        this->unk196--;
    }
    func_809C008C(this);
    if (this->unk196 == 0) {
        this->unk196 = 0x20;
    }
    if (this->actor.xzDistToPlayer > 200.0f) {
        func_809BF9BC(this);
    }
}

void func_809C0600(EnBili* this, PlayState* play) {
    SkelAnime_Update(&this->unk14C);
    if (this->unk196 != 0) {
        this->unk196--;
    }
    Math_ScaledStepToS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer + 0x8000, 0x38E);
    func_809C008C(this);
    if (this->unk196 == 0) {
        func_809BF9BC(this);
    }
}

void func_809C067C(EnBili* this, PlayState* play) {
    SkelAnime_Update(&this->unk14C);
    if (Math_StepToF(&this->actor.speed, 0.0f, 0.3f) != 0) {
        this->actor.world.rot.y += 0x8000;
        func_809BF9BC(this);
    }
}

void func_809C06E0(EnBili* this, PlayState* play) {
    SkelAnime_Update(&this->unk14C);
    if (this->actor.flags & ACTOR_FLAG_ATTACHED_TO_ARROW) {
        this->actor.colorFilterTimer = 0x14;
    } else {
        if (this->unk196 != 0) {
            this->unk196--;
        }
        if (this->unk196 == 0) {
            func_809BFCE8(this);
        }
    }
}

void func_809C0754(EnBili* this, PlayState* play) {
    static Vec3f D_809C16A8 = { 0.0f, 0.0f, 0.0f };
    static Vec3f D_809C16B4 = { 0.0f, 0.0f, 0.0f };
    s16 temp_s0;
    Vec3f sp78;
    s32 var_s1;

    if (this->actor.draw != NULL) {
        if (!(this->actor.flags & ACTOR_FLAG_ATTACHED_TO_ARROW)) {
            this->actor.draw = NULL;
            Item_DropCollectibleRandom(play, &this->actor, &this->actor.world.pos,
                                       COLLECTIBLE_DROP_RANDOM_PARAMS(COLLECTIBLE_DROP_TABLE_5, false));
        } else {
            return;
        }
    }
    if (this->unk196 != 0) {
        this->unk196--;
    }
    if (this->unk196 != 0) {
        for (var_s1 = 0; var_s1 < 2; var_s1++) {
            sp78.x = (Rand_ZeroOne() * 10.0f) + this->actor.world.pos.x - 5.0f;
            sp78.y = (Rand_ZeroOne() * 5.0f) + this->actor.world.pos.y - 2.5f;
            sp78.z = (Rand_ZeroOne() * 10.0f) + this->actor.world.pos.z - 5.0f;
            D_809C16A8.y = Rand_ZeroOne() + 1.0f;
            temp_s0 = Rand_S16Offset(0x28, 0x28);
            if (Rand_ZeroOne() < 0.7f) {
                EffectSsDtBubble_SpawnColorProfile(play, (Vec3f*)&sp78, &D_809C16A8, &D_809C16B4, temp_s0, 0x19, 2, 1);
            } else {
                EffectSsDtBubble_SpawnColorProfile(play, (Vec3f*)&sp78, &D_809C16A8, &D_809C16B4, temp_s0, 0x19, 0, 1);
            }
        }
    } else {
        Actor_Kill(&this->actor);
    }
    if (this->unk196 == 0xE) {
        SfxSource_PlaySfxAtFixedWorldPos(play, &this->actor.world.pos, 0x28, NA_SE_EN_BIRI_BUBLE);
    }
}

static Vec3f D_809C16C0 = { 1.0f, 1.0f, 1.0f };
static s32 D_809C16CC[9] = {
    0x06000E08, 0x06001708, 0x06002008, 0x06002908, 0x06003208, 0x06003B08, 0x06004408, 0x06004D08, 0,
};
#include "assets/overlays/ovl_En_Bili/ovl_En_Bili.c"

void func_809C0980(EnBili* this, PlayState* play) {
    if (this->unk196 != 0) {
        this->unk196--;
    }
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND_TOUCH) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_DODO_M_GND);
    }
    if (this->unk196 == 0) {
        func_809BF9BC(this);
    }
}

void func_809C09E0(EnBili* this, PlayState* play) {
    if (this->unk196 != 0) {
        this->unk196--;
    }
    if (!(this->actor.flags & ACTOR_FLAG_ATTACHED_TO_ARROW)) {
        this->actor.gravity = -1.0f;
    }
#if OOT_VERSION < NTSC_1_1
    if ((this->actor.bgCheckFlags & BGCHECKFLAG_GROUND_TOUCH) || (this->actor.floorHeight == BGCHECK_Y_MIN)) {
#else
    if ((this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) || (this->actor.floorHeight == BGCHECK_Y_MIN)) {
#endif
        this->actor.colorFilterTimer = 0;
        func_809BFCE8(this);
    } else {
        this->actor.colorFilterTimer = 0xA;
    }
}

void func_809C0A70(EnBili* this, PlayState* play) {
    if ((this->actor.colChkInfo.health != 0) && (this->unk1D4.base.acFlags & AC_HIT)) {
        this->unk1D4.base.acFlags &= ~AC_HIT;
        Actor_SetDropFlag(&this->actor, &this->unk1D4.elem, true);
        if ((((this->actor.colChkInfo.damageReaction != 0)) || (this->actor.colChkInfo.damage != 0))) {
            if (Actor_ApplyDamage(&this->actor) == 0) {
                Actor_PlaySfx(&this->actor, NA_SE_EN_BIRI_DEAD);
                Enemy_StartFinishingBlow(play, &this->actor);
                this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
            }
            if (this->actor.colChkInfo.damageReaction == 1) {
                if (this->unk190 != func_809C0980) {
                    func_809BFD18(this);
                }
            } else if (this->actor.colChkInfo.damageReaction == 0xF) {
                if (this->unk190 != func_809C0980) {
                    Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_RED, 200, COLORFILTER_BUFFLAG_XLU, 10);
                    if (this->actor.colChkInfo.health == 0) {
                        this->actor.params = 1;
                    }
                    func_809BFA8C(this);
                } else {
                    func_809BFC48(this);
                }
            } else if (this->actor.colChkInfo.damageReaction == 2) {
                func_809BFC48(this);
                this->unk196 = 2;
            } else if (this->actor.colChkInfo.damageReaction == 3) {
                func_809BFD94(this, play);
            } else if (this->actor.colChkInfo.damageReaction == 0xE) {
                func_809BFBC4(this);
            } else {
                func_809BFC48(this);
            }
            if (this->unk1D4.elem.acHitElem->atDmgInfo.dmgFlags & DMG_ARROW) {
                this->actor.flags |= ACTOR_FLAG_UPDATE_CULLING_DISABLED;
            }
        }
    }
}

void EnBili_Update(Actor* thisx, PlayState* play2) {
    EnBili* this = (EnBili*)thisx;
    PlayState* play = play2;

    if (this->unk1D4.base.atFlags & AT_HIT) {
        this->unk1D4.base.atFlags &= ~AT_HIT;
        func_809BFA8C(this);
    }
    func_809C0A70(this, play);
    this->unk190(this, play);
    if (this->unk190 != func_809C0754) {
        func_809BFF6C(this);
        if (Animation_OnFrame(&this->unk14C, 9.0f) &&
            (((this->unk190 == func_809C0174)) || (this->unk190 == func_809C0600) || (this->unk190 == func_809C0570) ||
             (this->unk190 == func_809C067C))) {
            if (this->unk195 != 0) {
                Actor_PlaySfx(&this->actor, 0x3898U);
                this->unk195 = 0;
            } else {
                this->unk195 = 1;
            }
        }
        if (this->unk190 == func_809C067C) {
            Actor_MoveXYZ(&this->actor);
        } else {
            Actor_MoveXZGravity(&this->actor);
        }
        Actor_UpdateBgCheckInfo(play, &this->actor, 5.0f, this->unk1D4.dim.radius, this->unk1D4.dim.height,
                                UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_1 | UPDBGCHECKINFO_FLAG_2);
        Collider_UpdateCylinder(&this->actor, &this->unk1D4);
        if (this->unk1D4.base.atFlags & 1) {
            CollisionCheck_SetAT(play, &play->colChkCtx, &this->unk1D4.base);
        }
        if (this->unk1D4.base.acFlags & 1) {
            CollisionCheck_SetAC(play, &play->colChkCtx, &this->unk1D4.base);
        }
        CollisionCheck_SetOC(play, &play->colChkCtx, &this->unk1D4.base);
        Actor_SetFocus(&this->actor, 0.0f);
    }
}

void func_809C0E08(EnBili* this, f32 arg1, Vec3f* arg2) {
    f32 temp_fv0;
    f32 temp_fv0_2;
    f32 temp_fv1;

    if (this->unk190 == func_809C02B8) {
        arg2->y = 1.0f - (sinf(0.5236092f * arg1) * 0.26f);
    } else if (this->unk190 == func_809C04B4) {
        if (arg1 <= 8.0f) {
            arg2->y = (cosf(0.3926991f * arg1) * 0.15f) + 0.85f;
        } else if (arg1 <= 18.0f) {
            temp_fv0 = cosf((arg1 - 8.0f) * 0.31415927f);
            arg2->y = 1.0f - (0.3f * temp_fv0);
            arg2->x = (0.2f * temp_fv0) + 0.8f;
        } else {
            temp_fv0_2 = cosf((arg1 - 18.0f) * 0.071314156f);
            arg2->y = (0.31f * temp_fv0_2) + 1.0f;
            arg2->x = 1.0f - (0.4f * temp_fv0_2);
        }
        arg2->z = arg2->x;
    } else if (this->unk190 == func_809C0980) {
        temp_fv1 = sinf(this->unk196 * 0.31415927f) * 0.08f;
        arg2->x -= temp_fv1;
        arg2->y += temp_fv1;
        arg2->z -= temp_fv1;
    } else {
        arg2->y = (cosf(0.3926991f * arg1) * 0.13f) + 0.87f;
    }
}

void func_809C1020(EnBili* this, f32 arg1, Vec3f* arg2) {
    f32 temp_fv0;
    f32 temp_fv0_2;
    f32 temp_fv1;

    if (this->unk190 == func_809C02B8) {
        arg2->y = (sinf(0.5236092f * arg1) * 0.2f) + 1.0f;
    } else if (this->unk190 == func_809C04B4) {
        if (arg1 <= 8.0f) {
            arg2->x = 1.125f - (cosf(0.3926991f * arg1) * 0.125f);
        } else if (arg1 <= 18.0f) {
            temp_fv0 = cosf((arg1 - 8.0f) * 0.31415927f);
            arg2->x = (0.275f * temp_fv0) + 0.975f;
            arg2->y = 1.25f - (0.25f * temp_fv0);
        } else {
            temp_fv0_2 = cosf((arg1 - 18.0f) * 0.071314156f);
            arg2->x = 1.0f - (0.3f * temp_fv0_2);
            arg2->y = (0.48f * temp_fv0_2) + 1.0f;
        }
        arg2->z = arg2->x;
    } else if (this->unk190 == func_809C0980) {
        temp_fv1 = sinf(this->unk196 * 0.31415927f) * 0.08f;
        arg2->x += temp_fv1;
        arg2->y -= temp_fv1;
        arg2->z += temp_fv1;
    } else {
        arg2->y = 1.1f - (cosf(0.3926991f * arg1) * 0.1f);
    }
}

void func_809C1240(EnBili* this, f32 arg1, Vec3f* arg2) {
    f32 temp_fv0;

    if (this->unk190 == func_809C04B4) {
        if (arg1 <= 8.0f) {
            temp_fv0 = cosf(0.3926991f * arg1);
            arg2->x = 1.125f - (0.125f * temp_fv0);
            arg2->y = (0.3f * temp_fv0) + 0.7f;
        } else if (arg1 <= 18.0f) {
            temp_fv0 = cosf((arg1 - 8.0f) * 0.31415927f);
            arg2->x = (0.325f * temp_fv0) + 0.925f;
            arg2->y = 0.95f - (0.55f * temp_fv0);
        } else {
            temp_fv0 = cosf((arg1 - 18.0f) * 0.071314156f);
            arg2->x = 1.0f - (0.4f * temp_fv0);
            arg2->y = (0.52f * temp_fv0) + 1.0f;
        }
        arg2->z = arg2->x;
    }
}

s32 EnBili_OverrideLimbDraw(PlayState* play, s32 arg1, Gfx** arg2, Vec3f* arg3, Vec3s* arg4, void* thisx, Gfx** gfx) {
    EnBili* this = thisx;
    Vec3f sp20;
    f32 temp_fv0;

    sp20 = D_809C16C0;
    temp_fv0 = this->unk14C.curFrame;
    if (arg1 == 3) {
        func_809C0E08(this, temp_fv0, &sp20);
    } else if (arg1 == 2) {
        func_809C1020(this, temp_fv0, &sp20);
    } else if (arg1 == 4) {
        func_809C1240(this, temp_fv0, &sp20);
        arg4->y = Camera_GetCamDirYaw(GET_ACTIVE_CAM(play)) - this->actor.shape.rot.y + 0x8000;
    }
    Matrix_Scale(sp20.x, sp20.y, sp20.z, MTXMODE_APPLY);
    return 0;
}

void EnBili_Draw(Actor* thisx, PlayState* play) {
    EnBili* this = (EnBili*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_bili.c", 1521);
    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    this->unk194 = CLAMP_MAX(this->unk194, 7);
    gSPSegment(POLY_XLU_DISP++, 8, SEGMENTED_TO_VIRTUAL(D_809C16CC[this->unk194]));
    if ((this->unk190 == func_809C02B8) && (this->unk196 & 1)) {
        gSPSegment(POLY_XLU_DISP++, 9, D_809C16F0);
    } else {
        gSPSegment(POLY_XLU_DISP++, 9, D_809C1700);
    }
    POLY_XLU_DISP = SkelAnime_Draw(play, this->unk14C.skeleton, this->unk14C.jointTable, EnBili_OverrideLimbDraw, NULL,
                                   this, POLY_XLU_DISP);
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_bili.c", 1552);
}
