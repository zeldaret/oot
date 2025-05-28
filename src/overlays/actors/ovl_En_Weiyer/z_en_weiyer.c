/*
 * File: z_en_weiyer.c
 * Overlay: ovl_En_Weiyer
 * Description: Stinger (Water)
 */

#include "z_en_weiyer.h"

#include "libc64/qrand.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "ichain.h"
#include "sfx.h"
#include "z_en_item00.h"
#include "z_lib.h"
#include "z64effect.h"
#include "z64play.h"
#include "z64player.h"

#include "assets/objects/object_ei/object_ei.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_HOSTILE)

void EnWeiyer_Init(Actor* thisx, PlayState* play);
void EnWeiyer_Destroy(Actor* thisx, PlayState* play);
void EnWeiyer_Update(Actor* thisx, PlayState* play);
void EnWeiyer_Draw(Actor* thisx, PlayState* play);

void func_80B32804(EnWeiyer* this, PlayState* play);
void func_80B328E8(EnWeiyer* this, PlayState* play);
void func_80B32C2C(EnWeiyer* this, PlayState* play);
void func_80B32D30(EnWeiyer* this, PlayState* play);
void func_80B32E34(EnWeiyer* this, PlayState* play);
void func_80B33018(EnWeiyer* this, PlayState* play);
void func_80B331CC(EnWeiyer* this, PlayState* play);
void func_80B333B8(EnWeiyer* this, PlayState* play);
void func_80B332B4(EnWeiyer* this, PlayState* play);
void func_80B33338(EnWeiyer* this, PlayState* play);
void func_80B3349C(EnWeiyer* this, PlayState* play);

ActorProfile En_Weiyer_Profile = {
    /**/ ACTOR_EN_WEIYER,
    /**/ ACTORCAT_ENEMY,
    /**/ FLAGS,
    /**/ OBJECT_EI,
    /**/ sizeof(EnWeiyer),
    /**/ EnWeiyer_Init,
    /**/ EnWeiyer_Destroy,
    /**/ EnWeiyer_Update,
    /**/ EnWeiyer_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COL_MATERIAL_HIT0,
        AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0xFFCFFFFF, 0x00, 0x08 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        ATELEM_ON | ATELEM_SFX_HARD,
        ACELEM_ON,
        OCELEM_ON,
    },
    { 16, 10, -6, { 0, 0, 0 } },
};

static CollisionCheckInfoInit sColChkInfoInit = { 2, 45, 15, 100 };

static DamageTable sDamageTable = {
    /* Deku nut      */ DMG_ENTRY(0, 0x1),
    /* Deku stick    */ DMG_ENTRY(2, 0x0),
    /* Slingshot     */ DMG_ENTRY(1, 0x0),
    /* Explosive     */ DMG_ENTRY(2, 0x0),
    /* Boomerang     */ DMG_ENTRY(0, 0x1),
    /* Normal arrow  */ DMG_ENTRY(2, 0x0),
    /* Hammer swing  */ DMG_ENTRY(2, 0x0),
    /* Hookshot      */ DMG_ENTRY(2, 0x0),
    /* Kokiri sword  */ DMG_ENTRY(1, 0x0),
    /* Master sword  */ DMG_ENTRY(2, 0x0),
    /* Giant's Knife */ DMG_ENTRY(4, 0x0),
    /* Fire arrow    */ DMG_ENTRY(2, 0x0),
    /* Ice arrow     */ DMG_ENTRY(2, 0x0),
    /* Light arrow   */ DMG_ENTRY(2, 0x0),
    /* Unk arrow 1   */ DMG_ENTRY(2, 0x0),
    /* Unk arrow 2   */ DMG_ENTRY(0, 0x0),
    /* Unk arrow 3   */ DMG_ENTRY(0, 0x0),
    /* Fire magic    */ DMG_ENTRY(0, 0x0),
    /* Ice magic     */ DMG_ENTRY(0, 0x0),
    /* Light magic   */ DMG_ENTRY(0, 0x0),
    /* Shield        */ DMG_ENTRY(0, 0x0),
    /* Mirror Ray    */ DMG_ENTRY(0, 0x0),
    /* Kokiri spin   */ DMG_ENTRY(1, 0x0),
    /* Giant spin    */ DMG_ENTRY(4, 0x0),
    /* Master spin   */ DMG_ENTRY(2, 0x0),
    /* Kokiri jump   */ DMG_ENTRY(2, 0x0),
    /* Giant jump    */ DMG_ENTRY(8, 0x0),
    /* Master jump   */ DMG_ENTRY(4, 0x0),
    /* Unknown 1     */ DMG_ENTRY(0, 0x0),
    /* Unblockable   */ DMG_ENTRY(0, 0x0),
    /* Hammer jump   */ DMG_ENTRY(4, 0x0),
    /* Unknown 2     */ DMG_ENTRY(0, 0x0),
};

static InitChainEntry sInitChain[] = {
    ICHAIN_S8(naviEnemyId, NAVI_ENEMY_STINGER, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 3, ICHAIN_CONTINUE),
    ICHAIN_F32(lockOnArrowOffset, 2500, ICHAIN_STOP),
};

void EnWeiyer_Init(Actor* thisx, PlayState* play) {
    EnWeiyer* this = (EnWeiyer*)thisx;

    Actor_ProcessInitChain(thisx, sInitChain);
    ActorShape_Init(&this->actor.shape, 1000.0f, ActorShadow_DrawCircle, 65.0f);
    SkelAnime_Init(play, &this->skelAnime, &gStingerSkel, &gStingerIdleAnim, this->jointTable, this->morphTable, 19);
    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
    CollisionCheck_SetInfo(&this->actor.colChkInfo, &sDamageTable, &sColChkInfoInit);
    this->actionFunc = func_80B32804;
}

void EnWeiyer_Destroy(Actor* thisx, PlayState* play) {
    EnWeiyer* this = (EnWeiyer*)thisx;

    Collider_DestroyCylinder(play, &this->collider);
}

void func_80B32384(EnWeiyer* this) {
    this->unk_196 = this->actor.shape.rot.y;
    this->unk_27C = (cosf(-M_PI / 8) * 3.0f) + this->actor.world.pos.y;
    Animation_MorphToLoop(&this->skelAnime, &gStingerHitAnim, -5.0f);
    this->unk_194 = 30;
    this->actor.speed = CLAMP_MAX(this->actor.speed, 2.5f);
    this->collider.base.atFlags &= ~AT_ON;
    this->unk_280 = this->actor.floorHeight;
    this->actionFunc = func_80B328E8;
}

void func_80B32434(EnWeiyer* this) {
    Animation_MorphToLoop(&this->skelAnime, &gStingerHitAnim, -5.0f);
    this->collider.base.atFlags |= AT_ON;
    this->unk_194 = 0;
    this->actor.speed = 5.0f;
    this->actionFunc = func_80B32C2C;
}

void func_80B32494(EnWeiyer* this) {
    Animation_Change(&this->skelAnime, &gStingerPopOutAnim, 2.0f, 0.0f, 0.0f, ANIMMODE_LOOP, -8.0f);
    this->unk_194 = 40;
    this->collider.base.atFlags |= AT_ON;
    this->actionFunc = func_80B32D30;
}

void func_80B32508(EnWeiyer* this) {
    this->unk_194 = 200;
    this->collider.base.atFlags |= AT_ON;
    this->skelAnime.playSpeed = 3.0f;
    this->actionFunc = func_80B32E34;
}

void func_80B32538(EnWeiyer* this) {
    this->unk_194 = 200;
    this->unk_196 = this->actor.yawTowardsPlayer + 0x8000;
    this->unk_27C = this->actor.world.pos.y;
    this->actor.speed = CLAMP_MAX(this->actor.speed, 4.0f);
    this->collider.base.atFlags &= ~AT_ON;
    this->skelAnime.playSpeed = 1.0f;
    this->actionFunc = func_80B33018;
}

void func_80B325A0(EnWeiyer* this) {
    Animation_Change(&this->skelAnime, &gStingerHitAnim, 2.0f, 0.0f, 0.0f, ANIMMODE_LOOP, -3.0f);
    this->unk_194 = 40;
    this->collider.base.atFlags &= ~AT_ON;
    this->collider.base.acFlags &= ~AC_ON;
    this->actor.gravity = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.speed = 3.0f;
    Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_RED, 200, COLORFILTER_BUFFLAG_OPA, 40);
    this->collider.dim.height = sCylinderInit.dim.height;
    this->actionFunc = func_80B331CC;
}

void func_80B32660(EnWeiyer* this) {
    Animation_Change(&this->skelAnime, &gStingerPopOutAnim, 2.0f, 0.0f, 0.0f, ANIMMODE_LOOP, -8.0f);
    this->unk_194 = 80;
    this->actor.speed = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.gravity = -1.0f;
    this->collider.dim.height = sCylinderInit.dim.height + 15;
    Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_BLUE, 200, COLORFILTER_BUFFLAG_OPA, 80);
    this->collider.base.atFlags &= ~AT_ON;
    Actor_PlaySfx(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
    this->actionFunc = func_80B333B8;
}

void func_80B32724(EnWeiyer* this) {
    Animation_MorphToLoop(&this->skelAnime, &gStingerHitAnim, -5.0f);
    this->unk_194 = 20;
    Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_RED, 200, COLORFILTER_BUFFLAG_OPA, 40);
    this->collider.base.atFlags &= ~AT_ON;
    this->collider.base.acFlags &= ~AC_ON;
    this->actor.speed = 3.0f;
    this->actionFunc = func_80B332B4;
}

void func_80B327B0(EnWeiyer* this) {
    this->actor.speed = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.colorFilterParams |= 0x2000;
    this->actionFunc = func_80B33338;
}

void func_80B327D8(EnWeiyer* this) {
    this->actor.shape.rot.x = -0x2000;
    this->unk_194 = -1;
    this->actor.speed = 5.0f;
    this->actionFunc = func_80B3349C;
}

void func_80B32804(EnWeiyer* this, PlayState* play) {
    WaterBox* waterBox;
    s32 bgId;

    this->actor.world.pos.y += 0.5f;
    this->actor.floorHeight =
        BgCheck_EntityRaycastDown4(&play->colCtx, &this->actor.floorPoly, &bgId, &this->actor, &this->actor.world.pos);

    if (!WaterBox_GetSurfaceImpl(play, &play->colCtx, this->actor.world.pos.x, this->actor.world.pos.z,
                                 &this->actor.home.pos.y, &waterBox) ||
        ((this->actor.home.pos.y - 5.0f) <= this->actor.floorHeight)) {
        Actor_Kill(&this->actor);
    } else {
        this->actor.home.pos.y -= 5.0f;
        this->actor.world.pos.y = (this->actor.home.pos.y + this->actor.floorHeight) / 2.0f;
        func_80B32384(this);
    }
}

void func_80B328E8(EnWeiyer* this, PlayState* play) {
    s32 sp34;
    f32 curFrame;

    SkelAnime_Update(&this->skelAnime);
    Math_ScaledStepToS(&this->actor.shape.rot.x, 0, 0x800);
    sp34 = Animation_OnFrame(&this->skelAnime, 0.0f);
    curFrame = this->skelAnime.curFrame;
    Math_StepToF(&this->unk_27C, this->unk_280, 0.5f);
    this->actor.world.pos.y = this->unk_27C - cosf((curFrame - 5.0f) * (M_PI / 40)) * 3.0f;

    if (curFrame <= 45.0f) {
        Math_StepToF(&this->actor.speed, 1.0f, 0.03f);
    } else {
        Math_StepToF(&this->actor.speed, 1.3f, 0.03f);
    }

    if (this->actor.bgCheckFlags & BGCHECKFLAG_WALL) {
        this->unk_196 = this->actor.wallYaw;
        this->unk_194 = 30;
    }

    if (Math_ScaledStepToS(&this->actor.shape.rot.y, this->unk_196, 182)) {
        if (this->unk_194 != 0) {
            this->unk_194--;
        }

        if (this->unk_194 == 0) {
            this->unk_196 =
                Rand_S16Offset(0x2000, 0x2000) * ((Rand_ZeroOne() < 0.5f) ? -1 : 1) + this->actor.shape.rot.y;
            this->unk_194 = 30;

            if (Rand_ZeroOne() < 0.3333f) {
                Actor_PlaySfx(&this->actor, NA_SE_EN_EIER_CRY);
            }
        }
    }

    if (this->actor.home.pos.y < this->actor.world.pos.y) {
        if (this->actor.home.pos.y < this->actor.floorHeight) {
            func_80B32434(this);
        } else {
            this->actor.world.pos.y = this->actor.home.pos.y;
            this->unk_280 =
                Rand_ZeroOne() * ((this->actor.home.pos.y - this->actor.floorHeight) / 2.0f) + this->actor.floorHeight;
        }
    } else {
        Player* player = GET_PLAYER(play);

        if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
            this->unk_280 =
                this->actor.home.pos.y - Rand_ZeroOne() * ((this->actor.home.pos.y - this->actor.floorHeight) / 2.0f);
        } else if (sp34 && (Rand_ZeroOne() < 0.1f)) {
            this->unk_280 =
                Rand_ZeroOne() * (this->actor.home.pos.y - this->actor.floorHeight) + this->actor.floorHeight;
        }

        if ((this->actor.xzDistToPlayer < 400.0f) && (fabsf(this->actor.yDistToPlayer) < 250.0f) &&
            (player->actor.world.pos.y < (this->actor.home.pos.y + 20.0f))) {
            func_80B32508(this);
        }
    }
}

void func_80B32C2C(EnWeiyer* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);

    if (this->unk_194 == 0) {
        if (Math_ScaledStepToS(&this->actor.shape.rot.x, -0x4000, 0x800)) {
            this->actor.shape.rot.z = 0;
            this->actor.shape.rot.y += 0x8000;
            this->unk_194 = 1;
        } else {
            this->actor.shape.rot.z = this->actor.shape.rot.x * 2;
        }
    } else {
        Math_ScaledStepToS(&this->actor.shape.rot.x, 0x1800, 0x800);

        if (this->actor.world.pos.y < this->actor.home.pos.y) {
            if (this->actor.shape.rot.x > 0) {
                EffectSsGSplash_Spawn(play, &this->actor.world.pos, NULL, NULL, 1, 400);
                Actor_PlaySfx(&this->actor, NA_SE_EN_OCTAROCK_SINK);
            }

            func_80B32538(this);
        } else if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
            func_80B32494(this);
        }
    }
}

void func_80B32D30(EnWeiyer* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);

    if (Animation_OnFrame(&this->skelAnime, 0.0f)) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_EIER_FLUTTER);
    }

    Math_ScaledStepToS(&this->actor.shape.rot.x, 0, 0x800);
    Math_StepToF(&this->actor.speed, 0.0f, 1.0f);

    if (this->unk_194 != 0) {
        this->unk_194--;
    }

    if (this->unk_194 == 0) {
        func_80B32434(this);
    } else if (this->actor.world.pos.y < this->actor.home.pos.y) {
        func_80B32384(this);
    }
}

s16 func_80B32DEC(EnWeiyer* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    Vec3f vec;

    vec.x = player->actor.world.pos.x;
    vec.y = player->actor.world.pos.y + 20.0f;
    vec.z = player->actor.world.pos.z;

    return Actor_WorldPitchTowardPoint(&this->actor, &vec);
}

void func_80B32E34(EnWeiyer* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    SkelAnime_Update(&this->skelAnime);

    if (this->unk_194 != 0) {
        this->unk_194--;
    }

    if ((this->unk_194 == 0) || ((this->actor.home.pos.y + 20.0f) <= player->actor.world.pos.y) ||
        (this->collider.base.atFlags & AT_HIT)) {
        func_80B32538(this);
    } else {
        if (Actor_IsFacingPlayer(&this->actor, 0x2800)) {
            Math_StepToF(&this->actor.speed, 4.0f, 0.2f);
        } else {
            Math_StepToF(&this->actor.speed, 1.3f, 0.2f);
        }

        if (this->actor.home.pos.y < this->actor.world.pos.y) {
            if (this->actor.home.pos.y < this->actor.floorHeight) {
                this->actor.shape.rot.x = 0;
                func_80B32434(this);
                return;
            }

            this->actor.world.pos.y = this->actor.home.pos.y;
            Math_SmoothStepToS(&this->actor.shape.rot.x, 0x1000, 2, 0x100, 0x40);
        } else {
            Math_SmoothStepToS(&this->actor.shape.rot.x, func_80B32DEC(this, play), 2, 0x100, 0x40);
        }

        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 2, 0x200, 0x80);

        if ((player->actor.depthInWater < 50.0f) && (this->actor.depthInWater < 20.0f) &&
            Actor_IsFacingPlayer(&this->actor, 0x2000)) {
            func_80B327D8(this);
        }
    }
}

void func_80B33018(EnWeiyer* this, PlayState* play) {
    f32 curFrame;

    SkelAnime_Update(&this->skelAnime);
    Math_ScaledStepToS(&this->actor.shape.rot.x, 0, 0x800);
    curFrame = this->skelAnime.curFrame;
    Math_StepToF(&this->unk_27C, (this->actor.home.pos.y - this->actor.floorHeight) / 4.0f + this->actor.floorHeight,
                 1.0f);
    this->actor.world.pos.y = this->unk_27C - cosf((curFrame - 5.0f) * (M_PI / 40)) * 3.0f;

    if (curFrame <= 45.0f) {
        Math_StepToF(&this->actor.speed, 1.0f, 0.03f);
    } else {
        Math_StepToF(&this->actor.speed, 1.3f, 0.03f);
    }

    if (this->unk_194 != 0) {
        this->unk_194--;
    }

    if (this->actor.bgCheckFlags & BGCHECKFLAG_WALL) {
        this->unk_196 = this->actor.wallYaw;
    }

    if (Math_SmoothStepToS(&this->actor.shape.rot.y, this->unk_196, 2, 0x200, 0x80) == 0) {
        this->unk_196 = this->actor.yawTowardsPlayer + 0x8000;
    }

    if (this->actor.home.pos.y < this->actor.world.pos.y) {
        if (this->actor.home.pos.y < this->actor.floorHeight) {
            func_80B32434(this);
        } else {
            this->actor.world.pos.y = this->actor.home.pos.y;
        }
    }

    if (this->unk_194 == 0) {
        func_80B32384(this);
    }
}

void func_80B331CC(EnWeiyer* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);

    if (this->unk_194 != 0) {
        this->unk_194--;
    }

    if (this->actor.bgCheckFlags & BGCHECKFLAG_WALL) {
        this->unk_196 = this->actor.wallYaw;
    } else {
        this->unk_196 = this->actor.yawTowardsPlayer + 0x8000;
    }

    Math_ScaledStepToS(&this->actor.world.rot.y, this->unk_196, 0x38E);
    Math_ScaledStepToS(&this->actor.shape.rot.x, 0, 0x200);
    this->actor.shape.rot.z = sinf(this->unk_194 * (M_PI / 5)) * 5120.0f;

    if (this->unk_194 == 0) {
        this->actor.shape.rot.z = 0;
        this->collider.base.acFlags |= AC_ON;
        func_80B32384(this);
    }
}

void func_80B332B4(EnWeiyer* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    Math_ScaledStepToS(&this->actor.shape.rot.x, -0x4000, 0x400);
    this->actor.shape.rot.z += 0x1000;

    if (this->unk_194 != 0) {
        this->unk_194--;
    }

    if ((this->unk_194 == 0) || (this->actor.bgCheckFlags & BGCHECKFLAG_CEILING)) {
        func_80B327B0(this);
    }
}

void func_80B33338(EnWeiyer* this, PlayState* play) {
    this->actor.shape.shadowAlpha = CLAMP_MIN((s16)(this->actor.shape.shadowAlpha - 5), 0);
    this->actor.world.pos.y -= 2.0f;

    if (this->actor.shape.shadowAlpha == 0) {
        Item_DropCollectibleRandom(play, &this->actor, &this->actor.world.pos, 0xE0);
        Actor_Kill(&this->actor);
    }
}

void func_80B333B8(EnWeiyer* this, PlayState* play) {
    if (this->unk_194 != 0) {
        this->unk_194--;
    }

    Math_ScaledStepToS(&this->actor.shape.rot.x, 0, 0x200);
    Math_ScaledStepToS(&this->actor.shape.rot.z, 0, 0x200);
    SkelAnime_Update(&this->skelAnime);

    if (this->actor.home.pos.y < this->actor.floorHeight) {
        if (Animation_OnFrame(&this->skelAnime, 0.0f)) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_EIER_FLUTTER);
        }

        if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND_TOUCH) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_DODO_M_GND);
        }
    }

    if (this->unk_194 == 0) {
        this->actor.gravity = 0.0f;
        this->actor.velocity.y = 0.0f;
        this->collider.dim.height = sCylinderInit.dim.height;
        func_80B32384(this);
    }
}

void func_80B3349C(EnWeiyer* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s16 phi_a1;
    s32 phi_a0;

    SkelAnime_Update(&this->skelAnime);

    phi_a0 = ((this->actor.home.pos.y + 20.0f) <= player->actor.world.pos.y);

    if (this->unk_194 == -1) {
        if (phi_a0 || (this->collider.base.atFlags & AT_HIT)) {
            func_80B32538(this);
        } else if (this->actor.depthInWater < 0.0f) {
            this->unk_194 = 10;
            EffectSsGSplash_Spawn(play, &this->actor.world.pos, NULL, NULL, 1, 400);
            Actor_PlaySfx(&this->actor, NA_SE_EN_OCTAROCK_JUMP);
        }
    } else {
        if (phi_a0 || (this->collider.base.atFlags & AT_HIT)) {
            this->unk_194 = 0;
        } else if (this->unk_194 != 0) {
            this->unk_194--;
        }

        if (this->unk_194 == 0) {
            phi_a1 = 0x1800;
        } else {
            phi_a1 = func_80B32DEC(this, play);
            phi_a1 = CLAMP_MIN(phi_a1, 0);
        }

        if (this->actor.shape.rot.x < phi_a1) {
            Math_ScaledStepToS(&this->actor.shape.rot.x, phi_a1, 0x400);
        }

        if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
            func_80B32434(this);
        } else if ((this->actor.bgCheckFlags & BGCHECKFLAG_WATER) && (this->actor.shape.rot.x > 0)) {
            EffectSsGSplash_Spawn(play, &this->actor.world.pos, NULL, NULL, 1, 400);
            Actor_PlaySfx(&this->actor, NA_SE_EN_OCTAROCK_SINK);
            func_80B32538(this);
        } else {
            Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 8, 0x100, 0x80);
        }
    }
}

void func_80B3368C(EnWeiyer* this, PlayState* play) {
    if (this->collider.base.acFlags & AC_HIT) {
        this->collider.base.acFlags &= ~AC_HIT;
        Actor_SetDropFlag(&this->actor, &this->collider.elem, true);

        if ((this->actor.colChkInfo.damageEffect != 0) || (this->actor.colChkInfo.damage != 0)) {
            if (this->actor.colChkInfo.damageEffect == 1) {
                if (this->actionFunc != func_80B333B8) {
                    func_80B32660(this);
                }
            } else if (Actor_ApplyDamage(&this->actor) == 0) {
                Enemy_StartFinishingBlow(play, &this->actor);
                Actor_PlaySfx(&this->actor, NA_SE_EN_EIER_DEAD);
                this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
                func_80B32724(this);
            } else {
                func_80B325A0(this);
            }
        }
    }
}

void EnWeiyer_Update(Actor* thisx, PlayState* play) {
    EnWeiyer* this = (EnWeiyer*)thisx;
    s32 pad;

    this->actor.home.pos.y = this->actor.depthInWater + this->actor.world.pos.y - 5.0f;
    func_80B3368C(this, play);
    this->actionFunc(this, play);
    this->actor.world.rot.y = this->actor.shape.rot.y;
    this->actor.world.rot.x = -this->actor.shape.rot.x;

    if ((this->actor.world.rot.x == 0) || (this->actionFunc == func_80B333B8)) {
        Actor_MoveXZGravity(&this->actor);
    } else {
        Actor_MoveXYZ(&this->actor);
    }

    Actor_UpdateBgCheckInfo(play, &this->actor, 10.0f, 30.0f, 45.0f,
                            UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_1 | UPDBGCHECKINFO_FLAG_2);
    Actor_SetFocus(&this->actor, 0.0f);

    if (this->collider.base.atFlags & AT_HIT) {
        this->collider.base.atFlags &= ~(AT_ON | AT_HIT);
        Actor_PlaySfx(&this->actor, NA_SE_EN_EIER_ATTACK);
    }

    Collider_UpdateCylinder(&this->actor, &this->collider);

    if (this->collider.base.atFlags & AT_ON) {
        CollisionCheck_SetAT(play, &play->colChkCtx, &this->collider.base);
    }

    if (this->collider.base.acFlags & AT_ON) {
        CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
    }

    CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
}

s32 EnWeiyer_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx,
                              Gfx** gfx) {
    if (limbIndex == 1) {
        pos->z += 2000.0f;
    }

    return 0;
}

void EnWeiyer_Draw(Actor* thisx, PlayState* play) {
    EnWeiyer* this = (EnWeiyer*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_weiyer.c", 1193);

    if (this->actionFunc != func_80B33338) {
        Gfx_SetupDL_25Opa(play->state.gfxCtx);
        gSPSegment(POLY_OPA_DISP++, 0x08, &D_80116280[2]);
        gDPSetEnvColor(POLY_OPA_DISP++, 255, 255, 255, 255);
        POLY_OPA_DISP = SkelAnime_Draw(play, this->skelAnime.skeleton, this->skelAnime.jointTable,
                                       EnWeiyer_OverrideLimbDraw, NULL, &this->actor, POLY_OPA_DISP);
    } else {
        Gfx_SetupDL_25Xlu(play->state.gfxCtx);
        gSPSegment(POLY_XLU_DISP++, 0x08, &D_80116280[0]);
        gDPSetEnvColor(POLY_XLU_DISP++, 255, 255, 255, this->actor.shape.shadowAlpha);
        POLY_XLU_DISP = SkelAnime_Draw(play, this->skelAnime.skeleton, this->skelAnime.jointTable,
                                       EnWeiyer_OverrideLimbDraw, NULL, &this->actor, POLY_XLU_DISP);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_weiyer.c", 1240);
}
