/*
 * File: z_en_anubice_fire.c
 * Overlay: ovl_En_Anubice_Fire
 * Description: Anubis Fire Attack
 */

#include "z_en_anubice_fire.h"
#include "objects/gameplay_keep/gameplay_keep.h"

#define FLAGS 0x00000010

#define THIS ((EnAnubiceFire*)thisx)

void EnAnubiceFire_Init(Actor* thisx, GlobalContext* globalCtx);
void EnAnubiceFire_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnAnubiceFire_Update(Actor* thisx, GlobalContext* globalCtx);
void EnAnubiceFire_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_809B26EC(EnAnubiceFire* this, GlobalContext* globalCtx);
void func_809B27D8(EnAnubiceFire* this, GlobalContext* globalCtx);
void func_809B2B48(EnAnubiceFire* this, GlobalContext* globalCtx);

extern Gfx D_06003510[];

const ActorInit En_Anubice_Fire_InitVars = {
    ACTOR_EN_ANUBICE_FIRE,
    ACTORCAT_ENEMY,
    FLAGS,
    OBJECT_ANUBICE,
    sizeof(EnAnubiceFire),
    (ActorFunc)EnAnubiceFire_Init,
    (ActorFunc)EnAnubiceFire_Destroy,
    (ActorFunc)EnAnubiceFire_Update,
    (ActorFunc)EnAnubiceFire_Draw,
};

static ColliderCylinderInit D_809B31E0 = {
    {
        COLTYPE_NONE,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0xFFCFFFFF, 0x01, 0x04 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_NORMAL,
        BUMP_ON,
        OCELEM_NONE,
    },
    { 0, 0, 0, { 0, 0, 0 } },
};


void EnAnubiceFire_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnAnubiceFire* this = THIS;
    s32 i;

    Collider_InitCylinder(globalCtx, &this->cylinder);
    Collider_SetCylinder(globalCtx, &this->cylinder, &this->actor, &D_809B31E0);

    this->unk_15A = 0x1E;
    this->unk_154 = 2.0f;
    this->unk_150 = 0.0f;

    for (i = 0; i < 6; i++) {
        this->unk_160[i] = this->actor.world.pos;
    }

    this->unk_15E = 0;
    this->unk_14C = &func_809B26EC;
}

void EnAnubiceFire_Destroy(Actor* thisx, GlobalContext *globalCtx) {
    EnAnubiceFire* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->cylinder);
}

void func_809B26EC(EnAnubiceFire* this, GlobalContext* globalCtx) {
    Vec3f sp24 = { 0.0f, 0.0f, 0.0f };

    Matrix_Push();
    Matrix_RotateY(BINANG_TO_RAD(this->actor.world.rot.y), MTXMODE_NEW);
    Matrix_RotateX(BINANG_TO_RAD(this->actor.world.rot.x), MTXMODE_APPLY);
    sp24.z = 15.0f;
    Matrix_MultVec3f(&sp24, &this->actor.velocity);
    Matrix_Pull();

    this->unk_14C = func_809B27D8;
    this->actor.world.rot.x = this->actor.world.rot.y = this->actor.world.rot.z = 0;
}


static Vec3f D_809B3218 = { 0.0f, 0.0f, 0.0f };

static Vec3f D_809B3224 = { 0.0f, 0.0f, 0.0f };

static Color_RGBA8 D_809B3230 = { 255, 255, 0, 255 };

static Color_RGBA8 D_809B3234 = { 255, 0, 0, 255 };

static Vec3f D_809B3238 = { 0.0f, 0.0f, 0.0f };

static Vec3f D_809B3244 = { 0.0f, 0.0f, 0.0f };


#ifdef NON_MATCHING
void func_809B27D8(EnAnubiceFire* this, GlobalContext* globalCtx2) {
    GlobalContext *globalCtx = globalCtx;
    Vec3f velocity;
    Vec3f accel;
    Vec3f pos;
    Color_RGBA8 primColor;
    Color_RGBA8 envColor;
    Vec3f sp84;
    Vec3f sp78;
    s32 temp_s0;
    u8 temp_t1;
    s32 i;

    velocity = D_809B3218;
    accel = D_809B3224;
    primColor = D_809B3230;
    envColor = D_809B3234;
    sp84 = D_809B3238;
    sp78 = D_809B3244;

    this->actor.world.rot.z = this->actor.world.rot.z + 5000;
    if (this->unk_15A == 0) {
        this->unk_154 = 0.0f;
    }

    Math_ApproachF(&this->unk_150, this->unk_154, 0.2f, 0.4f);
    if ((this->unk_15A == 0) && (this->unk_150 < 0.1f)) {
        Actor_Kill(&this->actor);
    } else if ((this->actor.params == 0) && ((this->cylinder.base.atFlags & 4) != 0)) {
        if (Player_HasMirrorShieldEquipped(globalCtx)) {
            Audio_PlayActorSound2(&this->actor, NA_SE_IT_SHIELD_REFLECT_SW);
            this->cylinder.base.atFlags = (this->cylinder.base.atFlags & 0xFFE9) | 8;
            this->cylinder.info.toucher.dmgFlags = 2;
            this->unk_15A = 0x1E;
            this->actor.params = 1;
            this->actor.velocity.x *= -1.0f;
            this->actor.velocity.y *= -0.5f;
            this->actor.velocity.z *= -1.0f;
        } else {
            this->unk_15A = 0;
            EffectSsBomb2_SpawnLayered(globalCtx, &this->actor.world.pos, &sp78, &sp84, 10, 5);
            this->actor.velocity.z = 0.0f;
            this->actor.velocity.y = 0.0f;
            this->actor.velocity.x = 0.0f;
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_ANUBIS_FIREBOMB);
            this->unk_14C = &func_809B2B48;
        }
    } else if (!(this->unk_150 < 0.4f)) {
        for (i = 0; i < 10; i++) {
            pos.x = this->actor.world.pos.x + ((Rand_ZeroOne() - 0.5f) * (this->unk_150 * 20.0f));
            pos.y = this->actor.world.pos.y + ((Rand_ZeroOne() - 0.5f) * (this->unk_150 * 20.0f));
            pos.z = this->actor.world.pos.z;
            EffectSsKiraKira_SpawnDispersed(globalCtx, &pos, &velocity, &accel, &primColor, &envColor, 1000.0f, 10.0f);
        }
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_ANUBIS_FIRE - SFX_FLAG);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice_Fire/func_809B27D8.s")
#endif


void func_809B2B48(EnAnubiceFire *this, GlobalContext *globalCtx) {
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
            EffectSsKiraKira_SpawnDispersed(globalCtx, &pos, &velocity, &accel, &primColor, &envColor, 2000, 10);
        }

        this->unk_15C = 2;
        this->unk_15E++;
        if (this->unk_15E >= 6) {
            Actor_Kill(&this->actor);
        }
    }
}


void EnAnubiceFire_Update(Actor* thisx, GlobalContext *globalCtx) {
    EnAnubiceFire* this = THIS;
    s32 pad[2];
    s32 i;

    Actor_SetScale(&this->actor, this->unk_150);
    this->unk_14C(this, globalCtx);
    func_8002D7EC(&this->actor);
    this->unk_160[0] = this->actor.world.pos;

    for (i = 4; i >= 0; --i) {
        this->unk_160[i+1] = this->unk_160[i];
    }

    if (this->unk_15A != 0) {
        this->unk_15A--;
    }

    if (this->unk_15C != 0) {
        this->unk_15C--;
    }

    Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 5.0f, 5.0f, 10.0f, 0x1D);
    if (!(this->unk_150 < 0.6f)) {
        if (this->unk_14C != func_809B2B48) {
            this->cylinder.dim.radius = this->unk_150 * 15.0f + 5.0f;
            this->cylinder.dim.height = this->unk_150 * 15.0f + 5.0f;
            this->cylinder.dim.yShift = this->unk_150 * -0.75f + -15.0f;

            if (this->unk_15A != 0) {
                Collider_UpdateCylinder(&this->actor, &this->cylinder);
                CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->cylinder.base);
                CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->cylinder.base);
            }

            if (BgCheck_SphVsFirstPoly(&globalCtx->colCtx, &this->actor.world.pos, 30.0f)) {
                this->actor.velocity.z = 0.0f;
                this->actor.velocity.y = 0.0f;
                this->actor.velocity.x = 0.0f;
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_ANUBIS_FIREBOMB);
                this->unk_14C = func_809B2B48;
            }
        }
    }
}


static u64* D_809B3270[] = { gDust4Tex, gDust5Tex, gDust6Tex, gDust7Tex, gDust8Tex, gDust7Tex, gDust6Tex, gDust5Tex};

void EnAnubiceFire_Draw(Actor* thisx, GlobalContext *globalCtx) {
    EnAnubiceFire* this = THIS;
    s32 pad[2];
    s32 i;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_anubice_fire.c", 503);

    func_80093D84(globalCtx->state.gfxCtx);

    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 0, 255);
    gDPSetEnvColor(POLY_XLU_DISP++, 255, 0, 0, 0);
    gDPPipeSync(POLY_XLU_DISP++);
    gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_809B3270[0]));

    Matrix_Push();

    for (i = this->unk_15E; i < 6; ++i) {
        // CLAMP_MIN doesn't work.
        f32 scale = this->actor.scale.x - (i * 0.2f);
        if (scale < 0.0f) {
            scale = 0.0f;
        }

        if (scale >= 0.1f) {
            Matrix_Translate(this->unk_160[i].x, this->unk_160[i].y, this->unk_160[i].z, MTXMODE_NEW);
            Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_RotateZ(this->actor.world.rot.z + i * 1000.0f, MTXMODE_APPLY);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_anubice_fire.c", 546), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            gSPDisplayList(POLY_XLU_DISP++, D_06003510);
        }

        if ((this->unk_150 < 0.1f)) {
            break;
        }
    }

    Matrix_Pull();

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_anubice_fire.c", 556);
}
