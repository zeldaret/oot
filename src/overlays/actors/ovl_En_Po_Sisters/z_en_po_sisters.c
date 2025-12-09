/*
 * File: z_en_po_sisters.c
 * Overlay: ovl_En_Po_Sisters
 * Description: Forest Temple Four Poe Sisters
 */

#include "z_en_po_sisters.h"

#include "array_count.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "one_point_cutscene.h"
#include "rand.h"
#include "sequence.h"
#include "sfx.h"
#include "ichain.h"
#include "sys_matrix.h"
#include "z_en_item00.h"
#include "z_lib.h"
#include "audio.h"
#include "effect.h"
#include "light.h"
#include "play_state.h"
#include "player.h"

#include "assets/objects/gameplay_keep/gameplay_keep.h"
#include "assets/objects/object_po_sisters/object_po_sisters.h"

#define FLAGS                                                                                 \
    (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_HOSTILE | ACTOR_FLAG_UPDATE_CULLING_DISABLED | \
     ACTOR_FLAG_HOOKSHOT_PULLS_ACTOR | ACTOR_FLAG_IGNORE_QUAKE | ACTOR_FLAG_CAN_ATTACH_TO_ARROW)

void EnPoSisters_Init(Actor* thisx, PlayState* play);
void EnPoSisters_Destroy(Actor* thisx, PlayState* play);
void EnPoSisters_Update(Actor* thisx, PlayState* play);
void EnPoSisters_Draw(Actor* thisx, PlayState* play);

void EnPoSisters_IntroSetup(EnPoSisters* this, PlayState* play);
void EnPoSisters_FightState3(EnPoSisters* this, PlayState* play);
void EnPoSisters_FightState1(EnPoSisters* this, PlayState* play);
void EnPoSisters_FightState2(EnPoSisters* this, PlayState* play);
void EnPoSisters_FightState4(EnPoSisters* this, PlayState* play);
void EnPoSisters_MegFightStep2(EnPoSisters* this, PlayState* play);
void EnPoSisters_OnATHit(EnPoSisters* this, PlayState* play);
void EnPoSisters_Hit(EnPoSisters* this, PlayState* play);
void EnPoSisters_Hit2(EnPoSisters* this, PlayState* play);
void EnPoSisters_Vanish(EnPoSisters* this, PlayState* play);
void EnPoSisters_Reveal(EnPoSisters* this, PlayState* play);
void EnPoSisters_ReleaseFlame(EnPoSisters* this, PlayState* play);
void EnPoSisters_Die(EnPoSisters* this, PlayState* play);
void EnPoSisters_MegMourns(EnPoSisters* this, PlayState* play);
void EnPoSisters_MegUpdate(EnPoSisters* this, PlayState* play);
void EnPoSisters_SisterInit(EnPoSisters* this, PlayState* play);
void EnPoSisters_MegIntroStep1(EnPoSisters* this, PlayState* play);
void EnPoSisters_MegIntroStep2(EnPoSisters* this, PlayState* play);
void EnPoSisters_MegFightStep1(EnPoSisters* this, PlayState* play);
void EnPoSisters_JoelleBethMove(EnPoSisters* this, PlayState* play);
void EnPoSisters_JoelleBethWait(EnPoSisters* this, PlayState* play);
void EnPoSisters_IntroStep1(EnPoSisters* this, PlayState* play);
void EnPoSisters_IntroStep2(EnPoSisters* this, PlayState* play);
void EnPoSisters_IntroStep3(EnPoSisters* this, PlayState* play);
void EnPoSisters_IntroStep4(EnPoSisters* this, PlayState* play);
void EnPoSisters_IntroStep5(EnPoSisters* this, PlayState* play);

void EnPoSisters_MegSetup(EnPoSisters* this, PlayState* play);
void EnPoSisters_DecoySetup(EnPoSisters* this, PlayState* play);

void EnPoSisters_SisterSetup(EnPoSisters* this);

static Color_RGBA8 sTorchLightColors[4] = {
    { 255, 170, 255, 255 },
    { 255, 200, 0, 255 },
    { 0, 170, 255, 255 },
    { 170, 255, 0, 255 },
};

static Color_RGBA8 sTorchFlameColors[4] = {
    { 100, 0, 255, 255 },
    { 255, 0, 0, 255 },
    { 0, 0, 255, 255 },
    { 0, 150, 0, 255 },
};

ActorProfile En_Po_Sisters_Profile = {
    /**/ ACTOR_EN_PO_SISTERS,
    /**/ ACTORCAT_ENEMY,
    /**/ FLAGS,
    /**/ OBJECT_PO_SISTERS,
    /**/ sizeof(EnPoSisters),
    /**/ EnPoSisters_Init,
    /**/ EnPoSisters_Destroy,
    /**/ EnPoSisters_Update,
    /**/ EnPoSisters_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COL_MATERIAL_HIT3,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0xFFCFFFFF, HIT_SPECIAL_EFFECT_NONE, 0x08 },
        { 0x4FC7FFEA, HIT_BACKLASH_NONE, 0x00 },
        ATELEM_ON | ATELEM_SFX_NORMAL,
        ACELEM_ON | ACELEM_HOOKABLE,
        OCELEM_ON,
    },
    { 18, 60, 15, { 0, 0, 0 } },
};

static CollisionCheckInfoInit sColChkInfoInit = { 10, 25, 60, 40 };

typedef enum EnPoSisterFlags {
    EN_PO_SISTERS_FLAG_ACCOL = 1 << 0,   // set AC collision
    EN_PO_SISTERS_FLAG_ROTATE = 1 << 1,  // set shape.rot.y to world.rot.y
    EN_PO_SISTERS_FLAG_VANISH = 1 << 2,  // tick vanishTimer, then disappear if 0.
    EN_PO_SISTERS_FLAG_HOVER = 1 << 3,   // hover up and down a few units towards y-target
    EN_PO_SISTERS_FLAG_BGCHECK = 1 << 4, // BGCheck floors and walls
    EN_PO_SISTERS_FLAG_UPDATEMASK = (EN_PO_SISTERS_FLAG_ACCOL | EN_PO_SISTERS_FLAG_ROTATE | EN_PO_SISTERS_FLAG_VANISH |
                                     EN_PO_SISTERS_FLAG_HOVER | EN_PO_SISTERS_FLAG_BGCHECK),
    EN_PO_SISTERS_FLAG_TORCH = 1 << 5,  // manipulate torch flames
    EN_PO_SISTERS_FLAG_SPIN = 1 << 6,   // the real Meg spins as a tell
    EN_PO_SISTERS_FLAG_NOMTXF = 1 << 7, // don't read or write torchMtx
} EnPoSisterFlags;

typedef enum PoeSisDamageReaction {
    EN_PO_SISTERS_DMG_REACT_OTHER,
    EN_PO_SISTERS_DMG_REACT_SWORD = 14,
    EN_PO_SISTERS_DMG_REACT_NUT,
};

static DamageTable sDamageTable = {
    /* Deku nut      */ DMG_ENTRY(0, EN_PO_SISTERS_DMG_REACT_NUT),
    /* Deku stick    */ DMG_ENTRY(2, EN_PO_SISTERS_DMG_REACT_OTHER),
    /* Slingshot     */ DMG_ENTRY(1, EN_PO_SISTERS_DMG_REACT_OTHER),
    /* Explosive     */ DMG_ENTRY(2, EN_PO_SISTERS_DMG_REACT_OTHER),
    /* Boomerang     */ DMG_ENTRY(0, EN_PO_SISTERS_DMG_REACT_OTHER),
    /* Normal arrow  */ DMG_ENTRY(2, EN_PO_SISTERS_DMG_REACT_OTHER),
    /* Hammer swing  */ DMG_ENTRY(2, EN_PO_SISTERS_DMG_REACT_OTHER),
    /* Hookshot      */ DMG_ENTRY(2, EN_PO_SISTERS_DMG_REACT_OTHER),
    /* Kokiri sword  */ DMG_ENTRY(1, EN_PO_SISTERS_DMG_REACT_SWORD),
    /* Master sword  */ DMG_ENTRY(2, EN_PO_SISTERS_DMG_REACT_SWORD),
    /* Giant's Knife */ DMG_ENTRY(4, EN_PO_SISTERS_DMG_REACT_SWORD),
    /* Fire arrow    */ DMG_ENTRY(2, EN_PO_SISTERS_DMG_REACT_OTHER),
    /* Ice arrow     */ DMG_ENTRY(2, EN_PO_SISTERS_DMG_REACT_OTHER),
    /* Light arrow   */ DMG_ENTRY(2, EN_PO_SISTERS_DMG_REACT_OTHER),
    /* Unk arrow 1   */ DMG_ENTRY(2, EN_PO_SISTERS_DMG_REACT_OTHER),
    /* Unk arrow 2   */ DMG_ENTRY(2, EN_PO_SISTERS_DMG_REACT_OTHER),
    /* Unk arrow 3   */ DMG_ENTRY(2, EN_PO_SISTERS_DMG_REACT_OTHER),
    /* Fire magic    */ DMG_ENTRY(0, EN_PO_SISTERS_DMG_REACT_OTHER),
    /* Ice magic     */ DMG_ENTRY(0, EN_PO_SISTERS_DMG_REACT_OTHER),
    /* Light magic   */ DMG_ENTRY(0, EN_PO_SISTERS_DMG_REACT_OTHER),
    /* Shield        */ DMG_ENTRY(0, EN_PO_SISTERS_DMG_REACT_OTHER),
    /* Mirror Ray    */ DMG_ENTRY(0, EN_PO_SISTERS_DMG_REACT_OTHER),
    /* Kokiri spin   */ DMG_ENTRY(1, EN_PO_SISTERS_DMG_REACT_SWORD),
    /* Giant spin    */ DMG_ENTRY(4, EN_PO_SISTERS_DMG_REACT_SWORD),
    /* Master spin   */ DMG_ENTRY(2, EN_PO_SISTERS_DMG_REACT_SWORD),
    /* Kokiri jump   */ DMG_ENTRY(2, EN_PO_SISTERS_DMG_REACT_SWORD),
    /* Giant jump    */ DMG_ENTRY(8, EN_PO_SISTERS_DMG_REACT_SWORD),
    /* Master jump   */ DMG_ENTRY(4, EN_PO_SISTERS_DMG_REACT_SWORD),
    /* Unknown 1     */ DMG_ENTRY(0, EN_PO_SISTERS_DMG_REACT_OTHER),
    /* Unblockable   */ DMG_ENTRY(0, EN_PO_SISTERS_DMG_REACT_OTHER),
    /* Hammer jump   */ DMG_ENTRY(4, EN_PO_SISTERS_DMG_REACT_OTHER),
    /* Unknown 2     */ DMG_ENTRY(0, EN_PO_SISTERS_DMG_REACT_OTHER),
};

static s32 sIntroVar = 0;

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 7, ICHAIN_CONTINUE),
    ICHAIN_F32(lockOnArrowOffset, 6000, ICHAIN_STOP),
};

void EnPoSisters_Init(Actor* thisx, PlayState* play) {
    EnPoSisters* this = (EnPoSisters*)thisx;
    s32 pad;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 50.0f);
    SkelAnime_Init(play, &this->skelAnime, &gPoeSistersSkel, &gPoeSistersSwayAnim, this->jointTable, this->morphTable,
                   12);
    this->sisterColor.r = 255;
    this->sisterColor.g = 255;
    this->sisterColor.b = 210;
    this->sisterColor.a = 255;
    this->lightNode = LightContext_InsertLight(play, &play->lightCtx, &this->lightInfo);
    Lights_PointGlowSetInfo(&this->lightInfo, this->actor.home.pos.x, this->actor.home.pos.y, this->actor.home.pos.z, 0,
                            0, 0, 0);
    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
    CollisionCheck_SetInfo(&this->actor.colChkInfo, &sDamageTable, &sColChkInfoInit);
    this->sisterID = PARAMS_GET_U(thisx->params, 8, 2);
    this->actor.naviEnemyId = this->sisterID + NAVI_ENEMY_POE_SISTER_MEG;
    if (1) {}
    this->decoyID = PARAMS_GET_U(thisx->params, 10, 2);
    this->hoverPulse = 32;
    this->vanishTimer = 20;
    this->torchFlames = 1;
    this->sisterFlags = EN_PO_SISTERS_FLAG_TORCH;
    this->circleDist = 110.0f;
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    if (PARAMS_GET_NOSHIFT(this->actor.params, 12, 1)) {
        EnPoSisters_IntroSetup(this, play);
    } else if (this->sisterID == EN_PO_SISTERS_MEG) {
        if (this->decoyID == 0) {
            this->collider.base.ocFlags1 = OC1_ON | OC1_TYPE_PLAYER;
            EnPoSisters_MegSetup(this, play);
        } else {
            this->actor.flags &= ~(ACTOR_FLAG_HOOKSHOT_PULLS_ACTOR | ACTOR_FLAG_CAN_ATTACH_TO_ARROW);
            this->collider.elem.elemMaterial = ELEM_MATERIAL_UNK4;
            this->collider.elem.acDmgInfo.dmgFlags |= DMG_DEKU_NUT;
            this->collider.base.ocFlags1 = OC1_NONE;
            EnPoSisters_DecoySetup(this, NULL);
        }
    } else {
        EnPoSisters_SisterSetup(this);
    }
    this->actor.params &= 0x3F;
}

void EnPoSisters_Destroy(Actor* thisx, PlayState* play) {
    EnPoSisters* this = (EnPoSisters*)thisx;

    LightContext_RemoveLight(play, &play->lightCtx, this->lightNode);
    if (this->sisterID == EN_PO_SISTERS_MEG && this->decoyID == 0) {
        func_800F5B58();
    }
    Collider_DestroyCylinder(play, &this->collider);
}

void EnPoSisters_MoveTorchFlames(EnPoSisters* this, s32 height, Vec3f* pos) {
    f32 spread = SQ(height) * 0.1f;
    Vec3f* vec;
    s32 i;

    for (i = 0; i < this->torchFlames; i++) {
        vec = &this->torchPos[i];
        vec->x = pos->x + Math_SinS((s16)(this->actor.shape.rot.y + (this->sisterTimer * 0x800) + i * 0x2000)) * spread;
        vec->z = pos->z + Math_CosS((s16)(this->actor.shape.rot.y + (this->sisterTimer * 0x800) + i * 0x2000)) * spread;
        vec->y = pos->y + height;
    }
}

void EnPoSisters_FightSetup3(EnPoSisters* this) {
    Animation_MorphToLoop(&this->skelAnime, &gPoeSistersSwayAnim, -3.0f);
    this->sisterTimer = Rand_S16Offset(2, 3);
    this->actionFunc = EnPoSisters_FightState3;
    this->actor.speed = 0.0f;
}

void EnPoSisters_FightSetup(EnPoSisters* this) {
    if (this->actionFunc != EnPoSisters_FightState2) {
        Animation_MorphToLoop(&this->skelAnime, &gPoeSistersFloatAnim, -3.0f);
    }
    this->sisterTimer = Rand_S16Offset(15, 3);
    this->sisterFlags |= (EN_PO_SISTERS_FLAG_VANISH | EN_PO_SISTERS_FLAG_ROTATE | EN_PO_SISTERS_FLAG_ACCOL);
    this->actionFunc = EnPoSisters_FightState1;
}

void EnPoSisters_FightSetup2(EnPoSisters* this) {
    this->actionFunc = EnPoSisters_FightState2;
}

void EnPoSisters_FightSetup4(EnPoSisters* this) {
    if (this->sisterColor.a != 0) {
        this->collider.base.colMaterial = COL_MATERIAL_METAL;
        this->collider.base.acFlags |= AC_HARD;
    }
    Animation_MorphToLoop(&this->skelAnime, &gPoeSistersAttackAnim, -5.0f);
    this->actor.speed = 0.0f;
    this->sisterTimer = Animation_GetLastFrame(&gPoeSistersAttackAnim) * 3 + 3;
    this->sisterFlags &= ~EN_PO_SISTERS_FLAG_ROTATE;
    this->actionFunc = EnPoSisters_FightState4;
}

void EnPoSisters_MegFightSetup2(EnPoSisters* this) {
    this->actor.speed = 5.0f;
    if (this->sisterID == EN_PO_SISTERS_MEG) {
        this->collider.base.colMaterial = COL_MATERIAL_METAL;
        this->collider.base.acFlags |= AC_HARD;
        Animation_MorphToLoop(&this->skelAnime, &gPoeSistersAttackAnim, -5.0f);
    }
    this->sisterTimer = 5;
    this->actor.world.rot.y = this->actor.yawTowardsPlayer;
    this->sisterFlags |= EN_PO_SISTERS_FLAG_HOVER;
    this->actionFunc = EnPoSisters_MegFightStep2;
}

void EnPoSisters_OnATHitSetup(EnPoSisters* this) {
    Animation_MorphToLoop(&this->skelAnime, &gPoeSistersFloatAnim, -3.0f);
    this->actor.world.rot.y = this->actor.yawTowardsPlayer + 0x8000;
    if (this->sisterID != EN_PO_SISTERS_MEG) {
        this->collider.base.colMaterial = COL_MATERIAL_HIT3;
        this->collider.base.acFlags &= ~AC_HARD;
    }
    this->actionFunc = EnPoSisters_OnATHit;
}

void EnPoSisters_HitSetup(EnPoSisters* this) {
    Animation_MorphToPlayOnce(&this->skelAnime, &gPoeSistersDamagedAnim, -3.0f);
    if (this->collider.base.ac != NULL) {
        this->actor.world.rot.y = (this->collider.elem.acHitElem->atDmgInfo.dmgFlags & (DMG_ARROW | DMG_SLINGSHOT))
                                      ? this->collider.base.ac->world.rot.y
                                      : Actor_WorldYawTowardActor(&this->actor, this->collider.base.ac) + 0x8000;
    }
    if (this->sisterID != EN_PO_SISTERS_MEG) {
        this->actor.speed = 10.0f;
    }
    this->sisterFlags &= ~(EN_PO_SISTERS_FLAG_HOVER | EN_PO_SISTERS_FLAG_ROTATE | EN_PO_SISTERS_FLAG_ACCOL);
    Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_RED, 255, COLORFILTER_BUFFLAG_OPA, 16);
    this->actionFunc = EnPoSisters_Hit;
}

void EnPoSisters_HitSetup2(EnPoSisters* this) {
    Animation_MorphToLoop(&this->skelAnime, &gPoeSistersFleeAnim, -3.0f);
    this->actor.world.rot.y = this->actor.shape.rot.y + 0x8000;
    this->sisterTimer = 5;
    this->sisterFlags |= (EN_PO_SISTERS_FLAG_HOVER | EN_PO_SISTERS_FLAG_ROTATE | EN_PO_SISTERS_FLAG_ACCOL);
    this->actor.speed = 5.0f;
    this->actionFunc = EnPoSisters_Hit2;
}

void EnPoSisters_SetupVanish(EnPoSisters* this) {
    Animation_Change(&this->skelAnime, &gPoeSistersAppearDisappearAnim, 1.5f, 0.0f,
                     Animation_GetLastFrame(&gPoeSistersAppearDisappearAnim), ANIMMODE_ONCE, -3.0f);
    this->actor.speed = 0.0f;
    this->megVar = 100;
    this->actor.world.rot.y = this->actor.shape.rot.y;
    this->sisterFlags &= ~(EN_PO_SISTERS_FLAG_VANISH | EN_PO_SISTERS_FLAG_ACCOL);
    Actor_PlaySfx(&this->actor, NA_SE_EN_PO_DISAPPEAR);
    Actor_PlaySfx(&this->actor, NA_SE_EN_PO_LAUGH2);
    this->actionFunc = EnPoSisters_Vanish;
}

void EnPoSisters_CircleUpdate(EnPoSisters* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    f32 dist;

    if (this->decoyID == 0 || this->actionFunc != EnPoSisters_Hit) {
        if ((player->meleeWeaponState == 0 || player->meleeWeaponAnimation >= PLAYER_MWA_SPIN_ATTACK_1H) &&
            player->actor.world.pos.y - player->actor.floorHeight < 1.0f) {
            Math_StepToF(&this->circleDist, 110.0f, 3.0f);
        } else {
            Math_StepToF(&this->circleDist, 170.0f, 10.0f);
        }
        dist = this->circleDist;
    } else if (this->decoyID != 0) {
        dist = this->actor.parent->xzDistToPlayer;
    }
    // possible bug: "dist" is unitallized if above conditions unmet.
    this->actor.world.pos.x = (Math_SinS(this->actor.shape.rot.y + 0x8000) * dist) + player->actor.world.pos.x;
    this->actor.world.pos.z = (Math_CosS(this->actor.shape.rot.y + 0x8000) * dist) + player->actor.world.pos.z;
}

void EnPoSisters_SetupReveal(EnPoSisters* this, PlayState* play) {
    Animation_Change(&this->skelAnime, &gPoeSistersAppearDisappearAnim, 1.5f, 0.0f,
                     Animation_GetLastFrame(&gPoeSistersAppearDisappearAnim), ANIMMODE_ONCE, -3.0f);
    if (this->sisterID == EN_PO_SISTERS_MEG) {
        this->circleDist = 110.0f;
        EnPoSisters_CircleUpdate(this, play);
        this->sisterColor.a = 0;
        this->actor.draw = EnPoSisters_Draw;
    } else {
        this->actor.world.rot.y = this->actor.shape.rot.y;
    }
    this->sisterTimer = 15;
    this->actor.speed = 0.0f;
    Actor_PlaySfx(&this->actor, NA_SE_EN_PO_APPEAR);
    this->sisterFlags &= ~EN_PO_SISTERS_FLAG_ACCOL;
    this->actionFunc = EnPoSisters_Reveal;
}

void EnPoSisters_SetupDie(EnPoSisters* this, PlayState* play) {
    this->sisterTimer = 0;
    this->actor.speed = 0.0f;
    this->actor.world.pos.y += 42.0f;
    this->actor.shape.yOffset = -6000.0f;
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    this->sisterFlags = 0;
    this->actionFunc = EnPoSisters_ReleaseFlame;
    OnePointCutscene_Init(play, 3190, 999, &this->actor, CAM_ID_MAIN);
}

void EnPoSisters_ItemDrop(EnPoSisters* this, PlayState* play) {
    this->sisterTimer = 0;
    this->actor.world.pos.y = this->torchPos[0].y;
    Item_DropCollectibleRandom(play, &this->actor, &this->actor.world.pos, 0x80);
    this->actionFunc = EnPoSisters_Die;
}

/*Meg will spawn 3 decoys and begin weeping.
(or destroy the decoys and herself if one decoy fails.)*/
void EnPoSisters_MegSetup(EnPoSisters* this, PlayState* play) {
    Actor* actor1 =
        Actor_Spawn(&play->actorCtx, play, ACTOR_EN_PO_SISTERS, this->actor.world.pos.x,this->actor.world.pos.y,
                    this->actor.world.pos.z, 0, 0, 0, ((EN_PO_SISTERS_DECOY_PARAM)*1));
    Actor* actor2 =
        Actor_Spawn(&play->actorCtx, play, ACTOR_EN_PO_SISTERS, this->actor.world.pos.x,this->actor.world.pos.y,
                    this->actor.world.pos.z, 0, 0, 0, ((EN_PO_SISTERS_DECOY_PARAM)*2));
    Actor* actor3 =
        Actor_Spawn(&play->actorCtx, play, ACTOR_EN_PO_SISTERS, this->actor.world.pos.x,this->actor.world.pos.y,
                    this->actor.world.pos.z, 0, 0, 0, ((EN_PO_SISTERS_DECOY_PARAM)*3));
    s32 pad;
    s32 pad1;

    if (actor1 == NULL || actor2 == NULL || actor3 == NULL) {
        if (actor1 != NULL) {
            Actor_Kill(actor1);
        }
        if (actor2 != NULL) {
            Actor_Kill(actor2);
        }
        if (actor3 != NULL) {
            Actor_Kill(actor3);
        }
        Actor_Kill(&this->actor);
    } else {
        actor3->parent = &this->actor;
        actor2->parent = &this->actor;
        actor1->parent = &this->actor;
        Animation_PlayLoop(&this->skelAnime, &gPoeSistersMegCryAnim);
        this->torchFlames = 0;
        this->sisterFlags = EN_PO_SISTERS_FLAG_NOMTXF | EN_PO_SISTERS_FLAG_TORCH;
        this->actionFunc = EnPoSisters_MegMourns;
    }
}

void EnPoSisters_DecoySetup(EnPoSisters* this, PlayState* play) {
    static Vec3f sZeroVector = { 0.0f, 0.0f, 0.0f };
    Vec3f vec;

    this->actor.draw = NULL;
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    this->megVar = 100;
    this->sisterFlags = EN_PO_SISTERS_FLAG_TORCH;
    this->collider.base.colMaterial = COL_MATERIAL_HIT3;
    this->collider.base.acFlags &= ~AC_HARD;
    if (play != NULL) {
        vec.x = this->actor.world.pos.x;
        vec.y = this->actor.world.pos.y + 45.0f;
        vec.z = this->actor.world.pos.z;
        EffectSsDeadDb_Spawn(play, &vec, &sZeroVector, &sZeroVector, 150, 0, 255, 255, 255, 155, 150, 150, 150, 1, 9,
                             0);
    }
    Lights_PointSetColorAndRadius(&this->lightInfo, 0, 0, 0, 0);
    this->actionFunc = EnPoSisters_MegUpdate;
}

void EnPoSisters_SisterSetup(EnPoSisters* this) {
    if (this->sisterID == EN_PO_SISTERS_AMY) {
        Animation_PlayOnce(&this->skelAnime, &gPoeSistersAppearDisappearAnim);
        Actor_PlaySfx(&this->actor, NA_SE_EN_PO_APPEAR);
    } else {
        Animation_Change(&this->skelAnime, &gPoeSistersAppearDisappearAnim, 0.5f, 0.0f,
                         Animation_GetLastFrame(&gPoeSistersAppearDisappearAnim), ANIMMODE_ONCE_INTERP, 0.0f);
    }
    this->sisterColor.a = 0;
    this->sisterFlags = EN_PO_SISTERS_FLAG_TORCH;
    this->actionFunc = EnPoSisters_SisterInit;
}

void EnPoSisters_MegIntroSetup(EnPoSisters* this, PlayState* play) {
    Animation_MorphToPlayOnce(&this->skelAnime, &gPoeSistersAppearDisappearAnim, -5.0f);
    this->torchFlames = 1;
    this->sisterFlags &= ~EN_PO_SISTERS_FLAG_NOMTXF;
    this->actionFunc = EnPoSisters_MegIntroStep1;
    OnePointCutscene_Init(play, 3180, 156, &this->actor, CAM_ID_MAIN);
}

void EnPoSisters_MegDecoySetup(EnPoSisters* this) {
    Animation_MorphToLoop(&this->skelAnime, &gPoeSistersFloatAnim, -3.0f);
    this->sisterTimer = Animation_GetLastFrame(&gPoeSistersFloatAnim) * 7 + 7;
    if (this->actor.parent != NULL) {
        this->actor.world.pos = this->actor.parent->world.pos;
        this->actor.shape.rot.y = this->actor.parent->shape.rot.y;
    } else {
        this->actor.shape.rot.y = this->actor.yawTowardsPlayer;
        this->sisterTimer++;
    }
    if (this->decoyID == 0) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_PO_LAUGH2);
    }
    this->actionFunc = EnPoSisters_MegIntroStep2;
}

void EnPoSisters_MegFightInit(EnPoSisters* this) {
    Animation_MorphToLoop(&this->skelAnime, &gPoeSistersFloatAnim, -3.0f);
    this->sisterColor.a = 255;
    this->sisterTimer = 300;
    this->megVar = 3;
    this->sisterFlags |= (EN_PO_SISTERS_FLAG_HOVER | EN_PO_SISTERS_FLAG_ACCOL);
    this->actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED;
    this->actionFunc = EnPoSisters_MegFightStep1;
}

void EnPoSisters_JoelleBethInit(EnPoSisters* this) {
    if (this->sisterID == EN_PO_SISTERS_JOELLE) {
        // Joelle's target pos when revealed
        this->actor.home.pos.x = -632.0f;
        this->actor.home.pos.z = -3440.0f;
    } else { // Beth's target pos when revealed
        this->actor.home.pos.x = 752.0f;
        this->actor.home.pos.z = -3440.0f;
    }
    Animation_PlayLoop(&this->skelAnime, &gPoeSistersFloatAnim);
    this->sisterFlags |= (EN_PO_SISTERS_FLAG_HOVER | EN_PO_SISTERS_FLAG_ROTATE);
    this->actionFunc = EnPoSisters_JoelleBethMove;
    this->actor.speed = 5.0f;
}

void EnPoSister_JoelleBethSetupWait(EnPoSisters* this) {
    Animation_MorphToLoop(&this->skelAnime, &gPoeSistersSwayAnim, -3.0f);
    this->sisterColor.a = 255;
    this->sisterFlags |= (EN_PO_SISTERS_FLAG_BGCHECK | EN_PO_SISTERS_FLAG_VANISH | EN_PO_SISTERS_FLAG_ACCOL);
    this->actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED;
    this->actionFunc = EnPoSisters_JoelleBethWait;
    this->actor.speed = 0.0f;
}

void EnPoSisters_IntroSetup(EnPoSisters* this, PlayState* play) {
    sIntroVar = 0;
    this->sisterColor.a = 0;
    this->sisterFlags = EN_PO_SISTERS_FLAG_NOMTXF;
    this->sisterTimer = 50;
    this->torchPos[0] = this->actor.home.pos;
    Actor_ChangeCategory(play, &play->actorCtx, &this->actor, ACTORCAT_PROP);
    this->actionFunc = EnPoSisters_IntroStep1;
}

void EnPoSisters_IntroSetup2(EnPoSisters* this) {
    s32 i;

    this->torchFlames = ARRAY_COUNT(this->torchPos);
    for (i = 0; i < ARRAY_COUNT(this->torchPos); i++) {
        this->torchPos[i] = this->torchPos[0];
    }
    this->actionFunc = EnPoSisters_IntroStep2;
}

/* Setup reveal of Pos Sisters in intro scene */
void EnPoSisters_SetupIntro3(EnPoSisters* this) {
    Animation_Change(&this->skelAnime, &gPoeSistersAppearDisappearAnim, 0.833f, 0.0f,
                     Animation_GetLastFrame(&gPoeSistersAppearDisappearAnim), ANIMMODE_ONCE_INTERP, 0.0f);
    if (this->sisterID == EN_PO_SISTERS_MEG || this->sisterID == EN_PO_SISTERS_JOELLE) {
        this->sisterTimer = 40; // Meg and Joelle appear first
    } else {
        this->sisterTimer = 76; // followed by Beth and Amy
    }
    this->torchFlames = 0;
    sIntroVar = 0;
    this->actionFunc = EnPoSisters_IntroStep3;
}

void EnPoSisters_SetupIntro4(EnPoSisters* this) {
    Animation_PlayLoop(&this->skelAnime, &gPoeSistersSwayAnim);
    this->torchFlames = 8;
    this->sisterTimer = 32;
    EnPoSisters_MoveTorchFlames(this, this->sisterTimer, &this->actor.home.pos);
    this->actionFunc = EnPoSisters_IntroStep4;
}

void EnPoSisters_SetupIntro5(EnPoSisters* this, PlayState* play) {
    // y-rotations when leaving foyer at end of intro scene
    static s16 sIntroExitFacings[4] = { 0xB000, 0xD000, 0x5000, 0x3000 };

    Animation_MorphToLoop(&this->skelAnime, &gPoeSistersFloatAnim, -3.0f);
    this->torchFlames = 0;
    this->sisterFlags = EN_PO_SISTERS_FLAG_HOVER | EN_PO_SISTERS_FLAG_TORCH;
    this->sisterTimer = 90;
    this->hoverPulse = 32;
    this->actor.world.rot.y = sIntroExitFacings[this->sisterID];
    this->actor.home.pos.y = this->actor.world.pos.y;
    if (this->sisterID == EN_PO_SISTERS_MEG) {
        Flags_SetSwitch(play, 0x1B);
    }
    Actor_PlaySfx(&this->actor, NA_SE_EV_FLAME_IGNITION);
    this->actionFunc = EnPoSisters_IntroStep5;
}

void EnPoSisters_Hover(EnPoSisters* this, PlayState* play) {
    f32 targetY;
    Player* player = GET_PLAYER(play);

    if (this->actionFunc == EnPoSisters_IntroStep5) {
        targetY = this->actor.home.pos.y;
    } else if (this->sisterID == EN_PO_SISTERS_MEG || this->sisterID == EN_PO_SISTERS_AMY) {
        targetY = player->actor.world.pos.y + 5.0f;
    } else {
        // Beth and Joelle are hard-coded to the worldspace-y
        // at the botttom of their rooms' staircase
        targetY = 832.0f;
    }
    Math_ApproachF(&this->actor.world.pos.y, targetY, 0.5f, 3.0f);
    if (!this->hoverPulse) {
        this->hoverPulse = 32;
    }
    if (this->hoverPulse != 0) {
        this->hoverPulse--;
    }
    this->actor.world.pos.y += (2.0f + 0.5f * Rand_ZeroOne()) * Math_SinS(this->hoverPulse * 0x800);
    if (this->sisterColor.a == 255 && this->actionFunc != EnPoSisters_MegFightStep2 &&
        this->actionFunc != EnPoSisters_FightState4) {
        if (this->actionFunc == EnPoSisters_Hit2) {
            Actor_PlaySfx_Flagged(&this->actor, NA_SE_EN_PO_AWAY - SFX_FLAG);
        } else {
            Actor_PlaySfx_Flagged(&this->actor, NA_SE_EN_PO_FLY - SFX_FLAG);
        }
    }
}

void EnPoSisters_FightState3(EnPoSisters* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if (Animation_OnFrame(&this->skelAnime, 0.0f) && this->sisterTimer != 0) {
        this->sisterTimer--;
    }
    if (this->sisterTimer == 0 || this->actor.xzDistToPlayer < 200.0f) {
        EnPoSisters_FightSetup(this);
    }
}

void EnPoSisters_FightState1(EnPoSisters* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    Math_StepToF(&this->actor.speed, 1.0f, 0.2f);
    if (Animation_OnFrame(&this->skelAnime, 0.0f) && this->sisterTimer != 0) {
        this->sisterTimer--;
    }
    if (this->actor.xzDistToPlayer < 200.0f && fabsf(this->actor.yDistToPlayer + 5.0f) < 30.0f) {
        EnPoSisters_FightSetup2(this);
    } else if (this->sisterTimer == 0 && Math_StepToF(&this->actor.speed, 0.0f, 0.2f) != 0) {
        EnPoSisters_FightSetup3(this);
    }
    if (this->actor.bgCheckFlags & BGCHECKFLAG_WALL) {
        Math_ScaledStepToS(&this->actor.world.rot.y, Actor_WorldYawTowardPoint(&this->actor, &this->actor.home.pos),
                           1820);
    } else if (Actor_WorldDistXZToPoint(&this->actor, &this->actor.home.pos) > 300.0f) {
        Math_ScaledStepToS(&this->actor.world.rot.y, Actor_WorldYawTowardPoint(&this->actor, &this->actor.home.pos),
                           1820);
    }
}

void EnPoSisters_FightState2(EnPoSisters* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s16 yawDiff;

    SkelAnime_Update(&this->skelAnime);
    yawDiff = this->actor.yawTowardsPlayer - player->actor.shape.rot.y;
    Math_StepToF(&this->actor.speed, 2.0f, 0.2f);
    if (yawDiff > 0x3000) {
        Math_ScaledStepToS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer + 0x3000, 1820);
    } else if (yawDiff < -0x3000) {
        Math_ScaledStepToS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer - 0x3000, 1820);
    } else {
        Math_ScaledStepToS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer, 1820);
    }
    if (this->actor.xzDistToPlayer < 160.0f && fabsf(this->actor.yDistToPlayer + 5.0f) < 30.0f) {
        EnPoSisters_FightSetup4(this);
    } else if (this->actor.xzDistToPlayer > 240.0f) {
        EnPoSisters_FightSetup(this);
    }
}

void EnPoSisters_FightState4(EnPoSisters* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if (this->sisterTimer != 0) {
        this->sisterTimer--;
    }
    this->actor.shape.rot.y += 384.0f * ((this->skelAnime.endFrame + 1.0f) * 3.0f - this->sisterTimer);
    if (this->sisterTimer == 18 || this->sisterTimer == 7) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_PO_ROLL);
    }
    if (this->sisterTimer == 0) {
        EnPoSisters_MegFightSetup2(this);
    }
}

void EnPoSisters_MegFightStep2(EnPoSisters* this, PlayState* play) {
    s32 pad;

    SkelAnime_Update(&this->skelAnime);
    if (Animation_OnFrame(&this->skelAnime, 0.0f) && this->sisterTimer != 0) {
        this->sisterTimer--;
    }
    this->actor.shape.rot.y += (384.0f * this->skelAnime.endFrame) * 3.0f;
    if (this->sisterTimer == 0 && ABS((s16)(this->actor.shape.rot.y - this->actor.world.rot.y)) < 0x1000) {
        if (this->sisterID != EN_PO_SISTERS_MEG) {
            this->collider.base.colMaterial = COL_MATERIAL_HIT3;
            this->collider.base.acFlags &= ~AC_HARD;
            EnPoSisters_FightSetup(this);
        } else {
            Actor_PlaySfx(&this->actor, NA_SE_EN_PO_LAUGH2);
            EnPoSisters_DecoySetup(this, play);
        }
    }
    if (Animation_OnFrame(&this->skelAnime, 1.0f)) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_PO_ROLL);
    }
}

void EnPoSisters_OnATHit(EnPoSisters* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    this->actor.shape.rot.y -= (this->actor.speed * 10.0f) * 128.0f;
    if (Math_StepToF(&this->actor.speed, 0.0f, 0.1f) != 0) {
        this->actor.world.rot.y = this->actor.shape.rot.y;
        if (this->sisterID != EN_PO_SISTERS_MEG) {
            EnPoSisters_FightSetup(this);
        } else {
            Actor_PlaySfx(&this->actor, NA_SE_EN_PO_LAUGH2);
            EnPoSisters_DecoySetup(this, play);
        }
    }
}

void EnPoSisters_Hit(EnPoSisters* this, PlayState* play) {
    if (SkelAnime_Update(&this->skelAnime) && !(this->actor.flags & ACTOR_FLAG_ATTACHED_TO_ARROW)) {
        if (this->actor.colChkInfo.health != 0) {
            if (this->sisterID != EN_PO_SISTERS_MEG) {
                EnPoSisters_HitSetup2(this);
            } else if (this->decoyID != 0) {
                EnPoSisters_DecoySetup(this, NULL);
            } else {
                EnPoSisters_DecoySetup(this, play);
            }
        } else {
            EnPoSisters_SetupDie(this, play);
        }
    }
    if (this->decoyID != 0) {
        Math_ScaledStepToS(&this->actor.shape.rot.y, this->actor.parent->shape.rot.y,
                           (this->decoyID == 2) ? 0x800 : 0x400);
        this->sisterColor.a =
            ((this->skelAnime.endFrame - this->skelAnime.curFrame) * 255.0f) / this->skelAnime.endFrame;
        this->actor.world.pos.y = this->actor.parent->world.pos.y;
        EnPoSisters_CircleUpdate(this, play);
    } else if (this->sisterID != EN_PO_SISTERS_MEG) {
        Math_StepToF(&this->actor.speed, 0.0f, 0.5f);
    }
}

void EnPoSisters_Hit2(EnPoSisters* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    Math_ScaledStepToS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer + 0x8000, 1820);
    if (Animation_OnFrame(&this->skelAnime, 0.0f) && this->sisterTimer != 0) {
        this->sisterTimer--;
    }
    if (this->actor.bgCheckFlags & BGCHECKFLAG_WALL) {
        this->actor.world.rot.y = this->actor.shape.rot.y;
        this->sisterFlags |= EN_PO_SISTERS_FLAG_ROTATE;
        EnPoSisters_SetupVanish(this);
    } else if (this->sisterTimer == 0 && 240.0f < this->actor.xzDistToPlayer) {
        this->actor.world.rot.y = this->actor.shape.rot.y;
        EnPoSisters_FightSetup(this);
    }
}

void EnPoSisters_Vanish(EnPoSisters* this, PlayState* play) {
    s32 endFrame;

    if (SkelAnime_Update(&this->skelAnime)) {
        this->sisterColor.a = 0;
        this->collider.elem.acDmgInfo.dmgFlags = DMG_MAGIC_ICE | DMG_MAGIC_FIRE | DMG_DEKU_NUT;
        EnPoSisters_FightSetup(this);
    } else {
        endFrame = this->skelAnime.endFrame;
        this->sisterColor.a = ((endFrame - this->skelAnime.curFrame) * 255.0f) / endFrame;
    }
}

void EnPoSisters_Reveal(EnPoSisters* this, PlayState* play) {
    if (SkelAnime_Update(&this->skelAnime)) {
        this->sisterColor.a = 255;
        if (this->sisterID != EN_PO_SISTERS_MEG) {
            this->sisterFlags |= EN_PO_SISTERS_FLAG_ACCOL;
            this->collider.elem.acDmgInfo.dmgFlags = (DMG_SWORD | DMG_ARROW | DMG_HAMMER | DMG_MAGIC_ICE |
                                                      DMG_MAGIC_FIRE | DMG_HOOKSHOT | DMG_EXPLOSIVE | DMG_DEKU_STICK);
            if (this->sisterTimer != 0) {
                this->sisterTimer--;
            }
            if (this->sisterTimer == 0) {
                this->vanishTimer = 20;
                EnPoSisters_FightSetup(this);
            }
        } else {
            EnPoSisters_MegFightInit(this);
        }
    } else {
        this->sisterColor.a = (this->skelAnime.curFrame * 255.0f) / this->skelAnime.endFrame;
        if (this->sisterID == EN_PO_SISTERS_MEG) {
            EnPoSisters_CircleUpdate(this, play);
        }
    }
}

/* animate the torch flame after dealing the killing blow */
void EnPoSisters_ReleaseFlame(EnPoSisters* this, PlayState* play) {
    s32 i;

    this->sisterTimer++;
    this->torchFlames = CLAMP_MAX(this->torchFlames + 1, 8);
    for (i = this->torchFlames - 1; i > 0; i--) {
        this->torchPos[i] = this->torchPos[i - 1];
    }
    this->torchPos[0].x =
        (Math_SinS((this->actor.shape.rot.y + this->sisterTimer * 0x3000) - 0x4000) * (3000.0f * this->actor.scale.x)) +
        this->actor.world.pos.x;
    this->torchPos[0].z =
        (Math_CosS((this->actor.shape.rot.y + this->sisterTimer * 0x3000) - 0x4000) * (3000.0f * this->actor.scale.x)) +
        this->actor.world.pos.z;
    if (this->sisterTimer < 8) {
        this->torchPos[0].y = this->torchPos[1].y - 9.0f;
    } else {
        this->torchPos[0].y = this->torchPos[1].y + 2.0f;
        if (this->sisterTimer >= 16) {
            if (Math_StepToF(&this->actor.scale.x, 0.0f, 0.001f) != 0) {
                EnPoSisters_ItemDrop(this, play);
            }
            this->actor.scale.z = this->actor.scale.x;
            this->actor.scale.y = this->actor.scale.x;
        }
    }
    if (this->sisterTimer == 16) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_PO_DEAD2);
    }
}

/* Show the flame moving back to the proper torch */
void EnPoSisters_Die(EnPoSisters* this, PlayState* play) {

    // positions for torches to be lit during death cutscene
    static Vec3s sDeathTorchPos[4] = {
        { -22, 337, -1704 },
        { -431, 879, -3410 },
        { 549, 879, -3410 },
        { 1717, 515, -1340 },
    };

    this->sisterTimer++;
    if (this->sisterTimer == 64) {
        Flags_SetSwitch(play, this->actor.params);
        SfxSource_PlaySfxAtFixedWorldPos(play, &this->actor.world.pos, 30, NA_SE_EV_FLAME_IGNITION);
        if (this->sisterID == EN_PO_SISTERS_MEG) {
            Flags_UnsetSwitch(play, 0x1B);
        }
        play->envCtx.lightSettingOverride = LIGHT_SETTING_OVERRIDE_NONE;
        Sfx_PlaySfxCentered(NA_SE_SY_CORRECT_CHIME);
        Actor_Kill(&this->actor);
    } else if (this->sisterTimer < 32) {
        EnPoSisters_MoveTorchFlames(this, this->sisterTimer, &this->actor.world.pos);
    } else {
        EnPoSisters_MoveTorchFlames(this, 64 - this->sisterTimer, &this->actor.world.pos);
    }
    if (this->sisterTimer == 32) {
        this->actor.world.pos.x = sDeathTorchPos[this->sisterID].x;
        this->actor.world.pos.y = sDeathTorchPos[this->sisterID].y;
        this->actor.world.pos.z = sDeathTorchPos[this->sisterID].z;
    }
}

/* Meg weeps as she is the last remaining sister until Link aproaches */
void EnPoSisters_MegMourns(EnPoSisters* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if (this->actor.xzDistToPlayer < 130.0f) {
        EnPoSisters_MegIntroSetup(this, play);
    }
    if (Animation_OnFrame(&this->skelAnime, 0.0f)) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_PO_CRY);
    }
    this->actor.shape.rot.y = this->actor.yawTowardsPlayer;
}

/* Upate func for Meg and her decoys */
void EnPoSisters_MegUpdate(EnPoSisters* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    EnPoSisters* realMeg = (EnPoSisters*)this->actor.parent;

    if (this->decoyID == 0) {
        if (Actor_WorldDistXZToPoint(&player->actor, &this->actor.home.pos) < 600.0f) {
            if (this->megVar != 0) {
                this->megVar--;
            }
        } else {
            this->megVar = 100;
        }
        if (this->megVar == 0) {
            this->actor.shape.rot.y = (s32)(4.0f * Rand_ZeroOne()) * 0x4000 + this->actor.yawTowardsPlayer;
            this->actor.world.pos.y = player->actor.world.pos.y + 5.0f;
            EnPoSisters_SetupReveal(this, play);
        }
    } else {
        if (realMeg->actionFunc == EnPoSisters_MegIntroStep2) {
            this->actor.draw = EnPoSisters_Draw;
            EnPoSisters_MegDecoySetup(this);
        } else if (realMeg->actionFunc == EnPoSisters_Reveal) {
            this->actor.shape.rot.y = this->actor.parent->shape.rot.y + this->decoyID * 0x4000;
            this->actor.world.pos.y = player->actor.world.pos.y + 5.0f;
            EnPoSisters_SetupReveal(this, play);
        } else if (realMeg->actionFunc == EnPoSisters_ReleaseFlame) {
            Actor_Kill(&this->actor); // destroy the decoys once Meg's defeated
        }
    }
}

void EnPoSisters_MegIntroStep1(EnPoSisters* this, PlayState* play) {
    if (SkelAnime_Update(&this->skelAnime)) {
        EnPoSisters_MegDecoySetup(this);
    }
    EnPoSisters_CircleUpdate(this, play);
    this->actor.world.pos.y += 1.0f;
    Actor_SetFocus(&this->actor, 40.0f);
}

/*Meg reveals and moves decoys back and forth*/
void EnPoSisters_MegIntroStep2(EnPoSisters* this, PlayState* play) {
    f32 temp_f2;
    s16 sign;
    s16 step;
    u8 ID;

    SkelAnime_Update(&this->skelAnime);
    temp_f2 = this->skelAnime.endFrame * 0.5f;
    this->sisterColor.a = (fabsf(temp_f2 - this->skelAnime.curFrame) * 255.0f) / temp_f2;
    if (this->sisterTimer != 0) {
        this->sisterTimer -= 1;
    }
    if (this->sisterTimer == 0) {
        this->actor.world.rot.y = this->actor.shape.rot.y += 0x4000 * (s32)(Rand_ZeroOne() * 4.0f);
        if (this->decoyID == 0) {
            func_800F5ACC(NA_BGM_MINI_BOSS);
        }
        EnPoSisters_MegFightInit(this);
    } else {
        this->actor.world.pos.y += 0.1f;
        ID = this->decoyID;
        if (ID != 0) {
            if (this->sisterTimer > 90) {
                sign = 1;
                step = 64;
            } else if (this->sisterTimer > 70) {
                sign = 0;
                step = 64;
            } else if (this->sisterTimer > 55) {
                sign = 1;
                step = 96;
            } else if (this->sisterTimer > 40) {
                sign = 0;
                step = 96;
            } else {
                sign = 1;
                step = 256;
            }
            if (this->decoyID == 2) {
                step *= 2; // second decoy shows up further to her right, first on Link's left
            }
            Math_ScaledStepToS(&this->actor.shape.rot.y,
                               this->actor.parent->shape.rot.y + (this->decoyID * 0x4000) * sign, step);
        } else if (this->sisterTimer == 70 || this->sisterTimer == 40) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_PO_LAUGH2);
        }
    }
    EnPoSisters_CircleUpdate(this, play);
    Actor_SetFocus(&this->actor, 40.0f);
}

void EnPoSisters_MegFightStep1(EnPoSisters* this, PlayState* play) {
    s32 temp_v0;
    s32 phi_a0;

    if (this->sisterTimer != 0) {
        this->sisterTimer--;
    }
    if (this->megVar > 0) {
        if (this->sisterTimer >= 16) {
            SkelAnime_Update(&this->skelAnime);
            if (this->decoyID == 0) {
                if (ABS((s16)(16 - this->hoverPulse)) < 14) {
                    this->actor.shape.rot.y +=
                        (0x580 - (this->megVar * 0x180)) * fabsf(Math_SinS(this->hoverPulse * 0x800));
                }
                if (this->sisterTimer >= 284 || this->sisterTimer < 31) {
                    this->sisterFlags |= EN_PO_SISTERS_FLAG_SPIN;
                } else {
                    this->sisterFlags &= ~EN_PO_SISTERS_FLAG_SPIN;
                }
            } else {
                this->actor.shape.rot.y = (s16)(this->actor.parent->shape.rot.y + (this->decoyID * 0x4000));
            }
        }
    }
    if (this->decoyID == 0) {
        if (this->sisterTimer >= 284 || (this->sisterTimer < 31 && this->sisterTimer >= 16)) {
            this->sisterFlags |= EN_PO_SISTERS_FLAG_SPIN;
        } else {
            this->sisterFlags &= ~EN_PO_SISTERS_FLAG_SPIN;
        }
    }
    if (Actor_WorldDistXZToPoint(&GET_PLAYER(play)->actor, &this->actor.home.pos) > 600.0f) {
        this->sisterFlags &= ~EN_PO_SISTERS_FLAG_SPIN;
        EnPoSisters_DecoySetup(this, play);
    } else if (this->sisterTimer == 0) {
        if (this->decoyID == 0) {
            EnPoSisters_MegFightSetup2(this);
        } else {
            EnPoSisters_DecoySetup(this, play);
        }
    } else if (this->decoyID != 0) {
        EnPoSisters* realMeg = (EnPoSisters*)this->actor.parent;

        if (realMeg->actionFunc == EnPoSisters_Hit) {
            EnPoSisters_HitSetup(this);
        }
    } else if (this->megVar == 0) {
        this->megVar = -15;
    } else if (this->megVar < 0) {
        this->megVar++;
        if (this->megVar == 0) {
            EnPoSisters_MegFightSetup2(this);
        }
    }
    EnPoSisters_CircleUpdate(this, play);
}

void EnPoSisters_SisterInit(EnPoSisters* this, PlayState* play) {
    f32 div;

    if (SkelAnime_Update(&this->skelAnime)) {
        this->sisterColor.a = 255;
        if (this->sisterID == EN_PO_SISTERS_AMY) {
            this->actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED;
            this->actor.home.pos.x = 1992.0f;
            this->actor.home.pos.z = -1440.0f;
            this->sisterFlags |= (EN_PO_SISTERS_FLAG_HOVER | EN_PO_SISTERS_FLAG_BGCHECK);
            EnPoSisters_FightSetup(this);
        } else {
            EnPoSisters_JoelleBethInit(this);
        }
    } else {
        div = this->skelAnime.curFrame / this->skelAnime.endFrame;
        this->sisterColor.a = 255.0f * div;
    }
    if (this->sisterID != EN_PO_SISTERS_AMY && Animation_OnFrame(&this->skelAnime, 1.0f)) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_PO_APPEAR);
    }
    Actor_SetFocus(&this->actor, 40.0f);
}

/* Joelle and Beth move to thier respective worldspace marks once revealed */
void EnPoSisters_JoelleBethMove(EnPoSisters* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if (Actor_WorldDistXZToPoint(&this->actor, &this->actor.home.pos) < 10.0f) {
        EnPoSister_JoelleBethSetupWait(this);
    } else {
        Math_ScaledStepToS(&this->actor.world.rot.y, Actor_WorldYawTowardPoint(&this->actor, &this->actor.home.pos),
                           1820);
    }
}

/* Joelle and Beth wait at the bottom of the stairs for Link. */
void EnPoSisters_JoelleBethWait(EnPoSisters* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    Math_ScaledStepToS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer, 1820);
    if (this->actor.xzDistToPlayer < 240.0f && fabsf(this->actor.yDistToPlayer + 5.0f) < 30.0f) {
        EnPoSisters_FightSetup(this);
    }
}

void EnPoSisters_IntroStep1(EnPoSisters* this, PlayState* play) {
    if (sIntroVar != 0 || !Player_InCsMode(play)) {
        if (this->sisterTimer != 0) {
            this->sisterTimer--;
        }
        if (this->sisterTimer == 30) {
            if (this->sisterID == EN_PO_SISTERS_MEG) {
                OnePointCutscene_Init(play, 3140, 999, NULL, CAM_ID_MAIN);
            }
            sIntroVar = 1;
        }
        if (this->sisterTimer == 0) {
            EnPoSisters_IntroSetup2(this);
        }
    }
    Actor_PlaySfx_Flagged(&this->actor, NA_SE_EV_TORCH - SFX_FLAG);
}

void EnPoSisters_IntroStep2(EnPoSisters* this, PlayState* play) {
    this->sisterTimer++;
    EnPoSisters_MoveTorchFlames(this, this->sisterTimer, &this->actor.home.pos);
    if (this->sisterTimer == 32) {
        EnPoSisters_SetupIntro3(this);
    }
}

void EnPoSisters_IntroStep3(EnPoSisters* this, PlayState* play) {
    this->sisterTimer--;
    if (this->sisterTimer == 0) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_PO_APPEAR);
        this->sisterFlags &= ~EN_PO_SISTERS_FLAG_NOMTXF;
    }
    if (this->sisterTimer <= 0) {
        if (SkelAnime_Update(&this->skelAnime)) {
            this->sisterColor.a = 255;
            sIntroVar |= (1 << this->sisterID);
        } else {
            this->sisterColor.a = (this->skelAnime.curFrame * 255.0f) / this->skelAnime.endFrame;
        }
    }
    if (sIntroVar == 15) {
        EnPoSisters_SetupIntro4(this);
    }
}

void EnPoSisters_IntroStep4(EnPoSisters* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if (this->sisterTimer != 0) {
        this->sisterTimer--;
    }
    EnPoSisters_MoveTorchFlames(this, this->sisterTimer, &this->actor.home.pos);
    if (this->sisterTimer == 0) {
        EnPoSisters_SetupIntro5(this, play);
    }
}

void EnPoSisters_IntroStep5(EnPoSisters* this, PlayState* play) {

    // position of laugh at the end of sisters' intro animation
    static Vec3f sIntroLaughPos = { 120.0f, 250.0f, -1420.0f };

    SkelAnime_Update(&this->skelAnime);
    this->sisterTimer--;
    Math_ScaledStepToS(&this->actor.shape.rot.y, this->actor.world.rot.y, 0x500);
    if (this->sisterTimer == 0 && this->sisterID == EN_PO_SISTERS_MEG) {
        play->envCtx.lightSettingOverride = 4;
    }
    if (this->sisterTimer < 0) {
        Math_StepToF(&this->actor.speed, 5.0f, 0.2f);
    }
    if (this->sisterTimer == -70 && this->sisterID == EN_PO_SISTERS_JOELLE) {
        SfxSource_PlaySfxAtFixedWorldPos(play, &sIntroLaughPos, 40, NA_SE_EN_PO_LAUGH);
    }
    if (this->sisterTimer < -120) {
        Actor_Kill(&this->actor);
    }
}

void EnPoSisters_TickVanish(EnPoSisters* this, PlayState* play) {
    if (this->actor.isLockedOn && this->sisterColor.a == 255) {
        if (this->vanishTimer != 0) {
            this->vanishTimer--;
        }
    } else {
        this->vanishTimer = 20;
    }
    if (this->sisterColor.a == 0) {
        if (this->megVar != 0) {
            this->megVar--;
        }
    }
    if (this->actionFunc != EnPoSisters_FightState4 && this->actionFunc != EnPoSisters_MegFightStep2 &&
        this->actionFunc != EnPoSisters_Hit) {
        if (this->vanishTimer == 0) {
            EnPoSisters_SetupVanish(this);
        } else if (this->megVar == 0 && this->sisterColor.a == 0) {
            EnPoSisters_SetupReveal(this, play);
        }
    }
}

void EnPoSisters_CheckDamage(EnPoSisters* this, PlayState* play) {
    Vec3f itemPos;

    if (this->collider.base.acFlags & AC_HIT) {
        this->collider.base.acFlags &= ~AC_HIT;
        Actor_SetDropFlag(&this->actor, &this->collider.elem, true);
        if (this->decoyID != 0) {
            ((EnPoSisters*)this->actor.parent)->megVar--;
            Actor_PlaySfx(&this->actor, NA_SE_EN_PO_LAUGH2);
            EnPoSisters_DecoySetup(this, play);
            if (Rand_ZeroOne() < 0.2f) {
                itemPos.x = this->actor.world.pos.x;
                itemPos.y = this->actor.world.pos.y;
                itemPos.z = this->actor.world.pos.z;
                Item_DropCollectible(play, &itemPos, ITEM00_ARROWS_SMALL);
            }
        } else if (this->collider.base.colMaterial == COL_MATERIAL_METAL ||
                   (this->actor.colChkInfo.damageReaction == EN_PO_SISTERS_DMG_REACT_OTHER &&
                    this->actor.colChkInfo.damage == 0)) {
            if (this->sisterID == EN_PO_SISTERS_MEG) {
                this->actor.freezeTimer = 0;
            }
        } else if (this->actor.colChkInfo.damageReaction == EN_PO_SISTERS_DMG_REACT_NUT) {
            this->actor.world.rot.y = this->actor.shape.rot.y;
            this->sisterFlags |= EN_PO_SISTERS_FLAG_ROTATE;
            EnPoSisters_SetupReveal(this, play);
        } else if (this->sisterID == EN_PO_SISTERS_MEG &&
                   this->actor.colChkInfo.damageReaction == EN_PO_SISTERS_DMG_REACT_SWORD &&
                   this->actionFunc == EnPoSisters_MegFightStep1) {
            if (this->megVar == 0) {
                this->megVar = -45;
            }
        } else {
            if (Actor_ApplyDamage(&this->actor) != 0) {
                Actor_PlaySfx(&this->actor, NA_SE_EN_PO_DAMAGE);
            } else {
                Enemy_StartFinishingBlow(play, &this->actor);
                Actor_PlaySfx(&this->actor, NA_SE_EN_PO_SISTER_DEAD);
            }
            EnPoSisters_HitSetup(this);
        }
    }
}

void EnPoSisters_Update(Actor* thisx, PlayState* play) {
    s32 pad;
    EnPoSisters* this = (EnPoSisters*)thisx;
    s16 temp;

    if (this->collider.base.atFlags & AT_HIT) {
        this->collider.base.atFlags &= ~AT_HIT;
        EnPoSisters_OnATHitSetup(this);
    }
    EnPoSisters_CheckDamage(this, play);
    if (this->sisterFlags & EN_PO_SISTERS_FLAG_VANISH) {
        EnPoSisters_TickVanish(this, play);
    }
    this->actionFunc(this, play);
    if (this->sisterFlags & EN_PO_SISTERS_FLAG_UPDATEMASK) {
        if (this->sisterFlags & EN_PO_SISTERS_FLAG_HOVER) {
            EnPoSisters_Hover(this, play);
        }
        Actor_MoveXZGravity(&this->actor);

        if (this->sisterFlags & EN_PO_SISTERS_FLAG_BGCHECK) {
            Actor_UpdateBgCheckInfo(play, &this->actor, 20.0f, 20.0f, 0.0f,
                                    UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2);
        } else {
            Vec3f checkPos;
            s32 bgId;

            checkPos.x = this->actor.world.pos.x;
            checkPos.y = this->actor.world.pos.y + 10.0f;
            checkPos.z = this->actor.world.pos.z;
            this->actor.floorHeight =
                BgCheck_EntityRaycastDown4(&play->colCtx, &this->actor.floorPoly, &bgId, &this->actor, &checkPos);
        }

        Collider_UpdateCylinder(&this->actor, &this->collider);
        if (this->actionFunc == EnPoSisters_MegFightStep2 || this->actionFunc == EnPoSisters_FightState4) {
            this->torchFlames++;
            this->torchFlames = CLAMP_MAX(this->torchFlames, 8);
        } else if (this->actionFunc != EnPoSisters_ReleaseFlame) {
            temp = this->torchFlames - 1;
            this->torchFlames = CLAMP_MIN(temp, 1);
        }
        if (this->actionFunc == EnPoSisters_MegFightStep2) {
            this->actor.flags |= ACTOR_FLAG_SFX_FOR_PLAYER_BODY_HIT;
            CollisionCheck_SetAT(play, &play->colChkCtx, &this->collider.base);
        }
        if (this->sisterFlags & EN_PO_SISTERS_FLAG_ACCOL) {
            CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
        }
        if (this->actionFunc != EnPoSisters_MegUpdate) {
            CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
        }
        Actor_SetFocus(&this->actor, 40.0f);
        if (this->actionFunc == EnPoSisters_Hit2) {
            this->actor.shape.rot.y = this->actor.world.rot.y + 0x8000;
        } else if (this->sisterFlags & EN_PO_SISTERS_FLAG_ROTATE) {
            this->actor.shape.rot.y = this->actor.world.rot.y;
        }
    }
}

/* set eye color based on sister's animation. */
void EnPoSisters_TintEyes(EnPoSisters* this) {
    s16 temp_b;

    if (this->skelAnime.animation == &gPoeSistersAttackAnim) {
        this->sisterColor.r = CLAMP_MAX((s16)(this->sisterColor.r + 5), 255);
        this->sisterColor.g = CLAMP_MIN((s16)(this->sisterColor.g - 5), 50);
        temp_b = this->sisterColor.b - 5;
        this->sisterColor.b = CLAMP_MIN(temp_b, 0);
    } else if (this->skelAnime.animation == &gPoeSistersFleeAnim) {
        this->sisterColor.r = CLAMP_MAX((s16)(this->sisterColor.r + 5), 80);
        this->sisterColor.g = CLAMP_MAX((s16)(this->sisterColor.g + 5), 255);
        temp_b = this->sisterColor.b + 5;
        this->sisterColor.b = CLAMP_MAX(temp_b, 225);
    } else if (this->skelAnime.animation == &gPoeSistersDamagedAnim) {
        if (this->actor.colorFilterTimer & 2) {
            this->sisterColor.r = 0;
            this->sisterColor.g = 0;
            this->sisterColor.b = 0;
        } else {
            this->sisterColor.r = 80;
            this->sisterColor.g = 255;
            this->sisterColor.b = 225;
        }
    } else {
        this->sisterColor.r = CLAMP_MAX((s16)(this->sisterColor.r + 5), 255);
        this->sisterColor.g = CLAMP_MAX((s16)(this->sisterColor.g + 5), 255);
        if (this->sisterColor.b > 210) {
            temp_b = this->sisterColor.b - 5;
            this->sisterColor.b = CLAMP_MIN(temp_b, 210);
        } else {
            temp_b = this->sisterColor.b + 5;
            this->sisterColor.b = CLAMP_MAX(temp_b, 210);
        }
    }
}

s32 EnPoSisters_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx,
                                 Gfx** gfxP) {
    EnPoSisters* this = (EnPoSisters*)thisx;
    Color_RGBA8* color;

    static Gfx* sSisterBodies[4] = {
        gPoeSistersMegBodyDL,
        gPoeSistersJoelleBodyDL,
        gPoeSistersBethBodyDL,
        gPoeSistersAmyBodyDL,
    };

    static Gfx* sSisterFaces[4] = {
        gPoeSistersMegFaceDL,
        gPoeSistersJoelleFaceDL,
        gPoeSistersBethFaceDL,
        gPoSistersAmyFaceDL,
    };

    static Color_RGBA8 sLimb11Colors[4] = {
        { 80, 0, 100, 0 },
        { 80, 15, 0, 0 },
        { 0, 70, 50, 0 },
        { 70, 70, 0, 0 },
    };

    if (limbIndex == 1 && (this->sisterFlags & EN_PO_SISTERS_FLAG_SPIN)) {
        if (this->sisterTimer >= 284) {
            rot->x += (this->sisterTimer * 0x1000) - 0x11C000;
        } else {
            rot->x += (this->sisterTimer * 0x1000) - 0xF000;
        }
    }
    if (this->sisterColor.a == 0 || limbIndex == 8 ||
        (this->actionFunc == EnPoSisters_ReleaseFlame && this->sisterTimer >= 8)) {
        *dList = NULL;
    } else if (limbIndex == 9) {
        *dList = sSisterBodies[this->sisterID];
    } else if (limbIndex == 10) {
        *dList = sSisterFaces[this->sisterID];
        gDPPipeSync((*gfxP)++);
        gDPSetEnvColor((*gfxP)++, this->sisterColor.r, this->sisterColor.g, this->sisterColor.b, this->sisterColor.a);
    } else if (limbIndex == 11) {
        color = &sLimb11Colors[this->sisterID];
        gDPPipeSync((*gfxP)++);
        gDPSetEnvColor((*gfxP)++, color->r, color->g, color->b, this->sisterColor.a);
    }
    return false;
}

void EnPoSisters_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx, Gfx** gfxP) {

    static Vec3f sTorchVec = { 1000.0f, -1700.0f, 0.0f };

    EnPoSisters* this = (EnPoSisters*)thisx;
    s32 i;
    s32 pad;

    if (this->actionFunc == EnPoSisters_ReleaseFlame && this->sisterTimer >= 8 && limbIndex == 9) {
        MATRIX_FINALIZE_AND_LOAD((*gfxP)++, play->state.gfxCtx, "../z_en_po_sisters.c", 2876);
        gSPDisplayList((*gfxP)++, gPoSistersBurnDL);
    }
    if (limbIndex == 8 && this->actionFunc != EnPoSisters_MegMourns) {
        if (this->sisterFlags & EN_PO_SISTERS_FLAG_TORCH) {
            for (i = this->torchFlames - 1; i > 0; i--) {
                this->torchPos[i] = this->torchPos[i - 1];
            }
            Matrix_MultVec3f(&sTorchVec, &this->torchPos[0]);
        } else if (this->actionFunc == EnPoSisters_IntroStep3) {
            Matrix_MultVec3f(&sTorchVec, &this->actor.home.pos);
        }
        if (this->torchFlames > 0) {
            Color_RGBA8* color = &sTorchLightColors[this->sisterID];
            f32 flicker = Rand_ZeroOne() * 0.3f + 0.7f;

            if (this->actionFunc == EnPoSisters_Die || this->actionFunc == EnPoSisters_IntroStep2 ||
                this->actionFunc == EnPoSisters_IntroStep4) {
                Lights_PointNoGlowSetInfo(&this->lightInfo, this->torchPos[0].x, this->torchPos[0].y + 15.0f,
                                          this->torchPos[0].z, color->r * flicker, color->g * flicker,
                                          color->b * flicker, 200);
            } else {
                Lights_PointGlowSetInfo(&this->lightInfo, this->torchPos[0].x, this->torchPos[0].y + 15.0f,
                                        this->torchPos[0].z, color->r * flicker, color->g * flicker, color->b * flicker,
                                        200);
            }
        } else {
            Lights_PointSetColorAndRadius(&this->lightInfo, 0, 0, 0, 0);
        }
        if (!(this->sisterFlags & EN_PO_SISTERS_FLAG_NOMTXF)) {
            Matrix_Get(&this->torchMtx);
        }
    }
}

void EnPoSisters_Draw(Actor* thisx, PlayState* play) {
    EnPoSisters* this = (EnPoSisters*)thisx;
    s32 pad1;
    f32 scale;
    s32 i;
    u8 alpha;
    Color_RGBA8* fireColor = &sTorchFlameColors[this->sisterID];
    Color_RGBA8* lightColor = &sTorchLightColors[this->sisterID];
    s32 pad2;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_po_sisters.c", 2989);
    EnPoSisters_TintEyes(this);
    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    if (this->sisterColor.a == 255 || this->sisterColor.a == 0) {
        gDPSetEnvColor(POLY_OPA_DISP++, this->sisterColor.r, this->sisterColor.g, this->sisterColor.b,
                       this->sisterColor.a);
        gSPSegment(POLY_OPA_DISP++, 0x09, D_80116280 + 2);
        POLY_OPA_DISP =
            SkelAnime_Draw(play, this->skelAnime.skeleton, this->skelAnime.jointTable, EnPoSisters_OverrideLimbDraw,
                           EnPoSisters_PostLimbDraw, &this->actor, POLY_OPA_DISP);
    } else {
        gDPSetEnvColor(POLY_XLU_DISP++, 255, 255, 255, this->sisterColor.a);
        gSPSegment(POLY_XLU_DISP++, 0x09, D_80116280);
        POLY_XLU_DISP =
            SkelAnime_Draw(play, this->skelAnime.skeleton, this->skelAnime.jointTable, EnPoSisters_OverrideLimbDraw,
                           EnPoSisters_PostLimbDraw, &this->actor, POLY_XLU_DISP);
    }
    if (!(this->sisterFlags & EN_PO_SISTERS_FLAG_NOMTXF)) {
        Matrix_Put(&this->torchMtx);
        MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_en_po_sisters.c", 3034);
        gSPDisplayList(POLY_OPA_DISP++, gPoSistersTorchDL);
    }
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, 0, 0x20, 0x40, 1, 0,
                                (play->gameplayFrames * -20) % 512, 0x20, 0x80));
    gDPSetEnvColor(POLY_XLU_DISP++, fireColor->r, fireColor->g, fireColor->b, fireColor->a);
    if (this->actionFunc == EnPoSisters_Die) {
        if (this->sisterTimer < 32) {
            alpha = ((32 - this->sisterTimer) * 255) / 32;
            scale = 0.0056000003f;
        } else {
            alpha = (this->sisterTimer * 255 - 8160) / 32;
            scale = 0.0027f;
        }
    } else if (this->actionFunc == EnPoSisters_IntroStep2) {
        alpha = ((32 - this->sisterTimer) * 255) / 32;
        scale = 0.0027f;
    } else if (this->actionFunc == EnPoSisters_IntroStep4) {
        alpha = ((32 - this->sisterTimer) * 255) / 32;
        scale = 0.0035f;
    } else if (this->actionFunc == EnPoSisters_IntroStep1) {
        // alpha initialized in loop below
        scale = 0.0027f;
    } else {
        // alpha initialized in loop below
        scale = this->actor.scale.x * 0.5f;
    }
    for (i = 0; i < this->torchFlames; i++) {
        if (this->actionFunc != EnPoSisters_Die && this->actionFunc != EnPoSisters_IntroStep2 &&
            this->actionFunc != EnPoSisters_IntroStep4) {
            alpha = -i * 31 + 248;
        }
        gDPPipeSync(POLY_XLU_DISP++);
        gDPSetPrimColor(POLY_XLU_DISP++, 0x80, 0x80, lightColor->r, lightColor->g, lightColor->b, alpha);
        Matrix_Translate(this->torchPos[i].x, this->torchPos[i].y, this->torchPos[i].z, MTXMODE_NEW);
        Matrix_RotateZYX(0, (s16)(Camera_GetCamDirYaw(GET_ACTIVE_CAM(play)) + 0x8000), 0, MTXMODE_APPLY);
        if (this->actionFunc == EnPoSisters_ReleaseFlame) {
            scale = (this->sisterTimer - i) * 0.025f + 0.5f;
            scale = CLAMP(scale, 0.5f, 0.8f) * 0.007f;
        }
        Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
        MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_en_po_sisters.c", 3132);
        gSPDisplayList(POLY_XLU_DISP++, gEffFire1DL);
    }
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_po_sisters.c", 3139);
}
