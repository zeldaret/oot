/*
 * File: z_en_anubice_fire.c
 * Overlay: ovl_En_Anubice_Fire
 * Description: Anubis Fire Attack
 */

#include "z_en_anubice_fire.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"
#include "assets/objects/object_anubice/object_anubice.h"

#define FLAGS ACTOR_FLAG_UPDATE_CULLING_DISABLED

void EnAnubiceFire_Init(Actor* thisx, PlayState* play);
void EnAnubiceFire_Destroy(Actor* thisx, PlayState* play);
void EnAnubiceFire_Update(Actor* thisx, PlayState* play);
void EnAnubiceFire_Draw(Actor* thisx, PlayState* play);

void func_809B26EC(EnAnubiceFire* this, PlayState* play);
void func_809B27D8(EnAnubiceFire* this, PlayState* play);
void func_809B2B48(EnAnubiceFire* this, PlayState* play);

ActorProfile En_Anubice_Fire_Profile = {
    /**/ ACTOR_EN_ANUBICE_FIRE,
    /**/ ACTORCAT_ENEMY,
    /**/ FLAGS,
    /**/ OBJECT_ANUBICE,
    /**/ sizeof(EnAnubiceFire),
    /**/ EnAnubiceFire_Init,
    /**/ EnAnubiceFire_Destroy,
    /**/ EnAnubiceFire_Update,
    /**/ EnAnubiceFire_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COL_MATERIAL_NONE,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0xFFCFFFFF, 0x01, 0x04 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        ATELEM_ON | ATELEM_SFX_NORMAL,
        ACELEM_ON,
        OCELEM_NONE,
    },
    { 0, 0, 0, { 0, 0, 0 } },
};

void EnAnubiceFire_Init(Actor* thisx, PlayState* play) {
    EnAnubiceFire* this = (EnAnubiceFire*)thisx;
    s32 i;

    Collider_InitCylinder(play, &this->cylinder);
    Collider_SetCylinder(play, &this->cylinder, &this->actor, &sCylinderInit);

    this->unk_15A = 30;
    this->unk_154 = 2.0f;
    this->scale = 0.0f;

    for (i = 0; i < 6; i++) {
        this->unk_160[i] = this->actor.world.pos;
    }

    this->unk_15E = 0;
    this->actionFunc = func_809B26EC;
}

void EnAnubiceFire_Destroy(Actor* thisx, PlayState* play) {
    EnAnubiceFire* this = (EnAnubiceFire*)thisx;

    Collider_DestroyCylinder(play, &this->cylinder);
}

void func_809B26EC(EnAnubiceFire* this, PlayState* play) {
    Vec3f velocity = { 0.0f, 0.0f, 0.0f };

    Matrix_Push();
    Matrix_RotateY(BINANG_TO_RAD_ALT(this->actor.world.rot.y), MTXMODE_NEW);
    Matrix_RotateX(BINANG_TO_RAD_ALT(this->actor.world.rot.x), MTXMODE_APPLY);
    velocity.z = 15.0f;
    Matrix_MultVec3f(&velocity, &this->actor.velocity);
    Matrix_Pop();

    this->actionFunc = func_809B27D8;
    this->actor.world.rot.x = this->actor.world.rot.y = this->actor.world.rot.z = 0;
}

void func_809B27D8(EnAnubiceFire* this, PlayState* play) {
    s32 pad;
    Vec3f velocity = { 0.0f, 0.0f, 0.0f };
    Vec3f accel = { 0.0f, 0.0f, 0.0f };
    Vec3f pos;
    Color_RGBA8 primColor = { 255, 255, 0, 255 };
    Color_RGBA8 envColor = { 255, 0, 0, 255 };
    Vec3f sp84 = { 0.0f, 0.0f, 0.0f };
    Vec3f sp78 = { 0.0f, 0.0f, 0.0f };

    this->actor.world.rot.z += 5000;
    if (this->unk_15A == 0) {
        this->unk_154 = 0.0f;
    }

    Math_ApproachF(&this->scale, this->unk_154, 0.2f, 0.4f);
    if ((this->unk_15A == 0) && (this->scale < 0.1f)) {
        Actor_Kill(&this->actor);
    } else if ((this->actor.params == 0) && (this->cylinder.base.atFlags & AT_BOUNCED)) {
        if (Player_HasMirrorShieldEquipped(play)) {
            Actor_PlaySfx(&this->actor, NA_SE_IT_SHIELD_REFLECT_SW);
            this->cylinder.base.atFlags &= ~(AT_HIT | AT_BOUNCED | AT_TYPE_ENEMY);
            this->cylinder.base.atFlags |= AT_TYPE_PLAYER;
            this->cylinder.elem.atDmgInfo.dmgFlags = DMG_DEKU_STICK;
            this->unk_15A = 30;
            this->actor.params = 1;
            this->actor.velocity.x *= -1.0f;
            this->actor.velocity.y *= -0.5f;
            this->actor.velocity.z *= -1.0f;
        } else {
            this->unk_15A = 0;
            EffectSsBomb2_SpawnLayered(play, &this->actor.world.pos, &sp78, &sp84, 10, 5);
            this->actor.velocity.x = this->actor.velocity.y = this->actor.velocity.z = 0.0f;
            Actor_PlaySfx(&this->actor, NA_SE_EN_ANUBIS_FIREBOMB);
            this->actionFunc = func_809B2B48;
        }
    } else if (!(this->scale < .4f)) {
        f32 scale = 1000.0f;
        f32 life = 10.0f;
        s32 i;

        for (i = 0; i < 10; i++) {
            pos.x = this->actor.world.pos.x + (Rand_ZeroOne() - 0.5f) * (this->scale * 20.0f);
            pos.y = this->actor.world.pos.y + (Rand_ZeroOne() - 0.5f) * (this->scale * 20.0f);
            pos.z = this->actor.world.pos.z;
            EffectSsKiraKira_SpawnDispersed(play, &pos, &velocity, &accel, &primColor, &envColor, scale, life);
        }
        Actor_PlaySfx(&this->actor, NA_SE_EN_ANUBIS_FIRE - SFX_FLAG);
    }
}

void func_809B2B48(EnAnubiceFire* this, PlayState* play) {
    Vec3f velocity = { 0.0f, 0.0f, 0.0f };
    Vec3f accel = { 0.0f, 0.0f, 0.0f };
    Vec3f pos;
    Color_RGBA8 primColor = { 255, 255, 0, 255 };
    Color_RGBA8 envColor = { 255, 0, 0, 255 };
    s32 pad;
    s32 i;

    if (this->unk_15C == 0) {
        for (i = 0; i < 20; i++) {
            pos.x = this->actor.world.pos.x;
            pos.y = this->actor.world.pos.y;
            pos.z = this->actor.world.pos.z;
            accel.x = Rand_CenteredFloat(8.0f);
            accel.y = Rand_CenteredFloat(2.0f);
            accel.z = Rand_CenteredFloat(8.0f);
            EffectSsKiraKira_SpawnDispersed(play, &pos, &velocity, &accel, &primColor, &envColor, 2000, 10);
        }

        this->unk_15C = 2;
        this->unk_15E++;
        if (this->unk_15E >= 6) {
            Actor_Kill(&this->actor);
        }
    }
}

void EnAnubiceFire_Update(Actor* thisx, PlayState* play) {
    EnAnubiceFire* this = (EnAnubiceFire*)thisx;
    s32 pad;
    s32 i;

    Actor_SetScale(&this->actor, this->scale);
    this->actionFunc(this, play);
    Actor_UpdatePos(&this->actor);
    this->unk_160[0] = this->actor.world.pos;

    for (i = 4; i >= 0; i--) {
        this->unk_160[i + 1] = this->unk_160[i];
    }

    if (this->unk_15A != 0) {
        this->unk_15A--;
    }

    if (this->unk_15C != 0) {
        this->unk_15C--;
    }

    Actor_UpdateBgCheckInfo(play, &this->actor, 5.0f, 5.0f, 10.0f,
                            UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2 | UPDBGCHECKINFO_FLAG_3 |
                                UPDBGCHECKINFO_FLAG_4);
    if (!(this->scale < 0.6f || this->actionFunc == func_809B2B48)) {
        this->cylinder.dim.radius = this->scale * 15.0f + 5.0f;
        this->cylinder.dim.height = this->scale * 15.0f + 5.0f;
        this->cylinder.dim.yShift = this->scale * -0.75f + -15.0f;

        if (this->unk_15A != 0) {
            Collider_UpdateCylinder(&this->actor, &this->cylinder);
            CollisionCheck_SetAT(play, &play->colChkCtx, &this->cylinder.base);
            CollisionCheck_SetAC(play, &play->colChkCtx, &this->cylinder.base);
        }

        if (BgCheck_SphVsFirstPoly(&play->colCtx, &this->actor.world.pos, 30.0f)) {
            this->actor.velocity.x = this->actor.velocity.y = this->actor.velocity.z = 0.0f;
            Actor_PlaySfx(&this->actor, NA_SE_EN_ANUBIS_FIREBOMB);
            this->actionFunc = func_809B2B48;
        }
    }
}

void EnAnubiceFire_Draw(Actor* thisx, PlayState* play) {
    static void* D_809B3270[] = {
        gDust4Tex, gDust5Tex, gDust6Tex, gDust7Tex, gDust8Tex, gDust7Tex, gDust6Tex, gDust5Tex,
    };
    EnAnubiceFire* this = (EnAnubiceFire*)thisx;
    s32 pad[2];
    s32 i;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_anubice_fire.c", 503);
    Gfx_SetupDL_25Xlu(play->state.gfxCtx);

    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 0, 255);
    gDPSetEnvColor(POLY_XLU_DISP++, 255, 0, 0, 0);
    gDPPipeSync(POLY_XLU_DISP++);
    gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_809B3270[0]));

    Matrix_Push();
    for (i = this->unk_15E; i < 6; ++i) {
        f32 scale = this->actor.scale.x - (i * 0.2f);

        if (scale < 0.0f) {
            scale = 0.0f;
        }

        if (scale >= 0.1f) {
            Matrix_Translate(this->unk_160[i].x, this->unk_160[i].y, this->unk_160[i].z, MTXMODE_NEW);
            Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
            Matrix_ReplaceRotation(&play->billboardMtxF);
            Matrix_RotateZ(this->actor.world.rot.z + i * 1000.0f, MTXMODE_APPLY);

            MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_en_anubice_fire.c", 546);

            gSPDisplayList(POLY_XLU_DISP++, gAnubiceFireAttackDL);
        }

        if (this->scale < 0.1f) {
            break;
        }
    }
    Matrix_Pop();

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_anubice_fire.c", 556);
}
