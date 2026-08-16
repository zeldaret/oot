#include "z_bg_spot08_iceblock.h"

#include "libc64/math64.h"
#include "libc64/qrand.h"
#include "ichain.h"
#include "printf.h"
#include "sys_math3d.h"
#include "sys_matrix.h"
#include "z_lib.h"
#include "play_state.h"
#include "player.h"
#include "save.h"

#include "assets/objects/object_spot08_obj/object_spot08_obj.h"

#define FLAGS 0

void BgSpot08Iceblock_Init(Actor* thisx, PlayState* play);
void BgSpot08Iceblock_Destroy(Actor* thisx, PlayState* play);
void BgSpot08Iceblock_Update(Actor* thisx, PlayState* play);
void BgSpot08Iceblock_Draw(Actor* thisx, PlayState* play);

void BgSpot08Iceblock_SetupIcebergStatic(BgSpot08Iceblock* this);
void BgSpot08Iceblock_IcebergStatic(BgSpot08Iceblock* this, PlayState* play);
void BgSpot08Iceblock_SetupIcebergSpin(BgSpot08Iceblock* this);
void BgSpot08Iceblock_IcebergSpin(BgSpot08Iceblock* this, PlayState* play);
void BgSpot08Iceblock_SetupActionIcebergDuo(BgSpot08Iceblock* this);
void BgSpot08Iceblock_IcebergDuo(BgSpot08Iceblock* this, PlayState* play);
void BgSpot08Iceblock_SetupDoNothing(BgSpot08Iceblock* this);

ActorProfile Bg_Spot08_Iceblock_Profile = {
    /**/ ACTOR_BG_SPOT08_ICEBLOCK,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_SPOT08_OBJ,
    /**/ sizeof(BgSpot08Iceblock),
    /**/ BgSpot08Iceblock_Init,
    /**/ BgSpot08Iceblock_Destroy,
    /**/ BgSpot08Iceblock_Update,
    /**/ BgSpot08Iceblock_Draw,
};

static Vec3f sUpVec = { 0.0f, 1.0f, 0.0f };
static Vec3f D_808B16BC = { 0.0f, 0.0f, 0.0f };
static f32 D_808B16C8[3] = { 1.4285714e-8f, 5.714286e-9f, 1.4285715e-9f };
static f32 D_808B16D4[3] = { 0.96f, 0.96f, 0.98f };
static f32 D_808B16E0[3] = { 0.22495104f, 0.22495104f, 0.03489947f };
static f32 D_808B16EC[3] = { 0.97437006f, 0.97437006f, 0.99939084f };
static InitChainEntry sInitChain[] = {
    ICHAIN_F32(cullingVolumeDistance, 3000, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 2200, ICHAIN_STOP),
};

void BgSpot08Iceblock_SetupAction(BgSpot08Iceblock* this, BgSpot08IceblockActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void BgSpot08Iceblock_InitDynapoly(BgSpot08Iceblock* this, PlayState* play, CollisionHeader* colHeaderSeg,
                                   s32 transformFlags) {
    s32 pad;
    CollisionHeader* colHeader = NULL;

    DynaPolyActor_Init(&this->dyna, transformFlags);
    CollisionHeader_GetVirtual(colHeaderSeg, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);

#if DEBUG_FEATURES
    if (this->dyna.bgId == BG_ACTOR_MAX) {
        s32 pad2;

        PRINTF("Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n", "../z_bg_spot08_iceblock.c", 217,
               this->dyna.actor.id, this->dyna.actor.params);
    }
#endif
}

void BgSpot08Iceblock_CheckParams(BgSpot08Iceblock* this) {
    switch (PARAMS_GET_U(this->dyna.actor.params, 0, 8)) {
        case 0xFF:
            this->dyna.actor.params = 0x10;
            break;

        case 0x1:
        case 0x4:
        case 0x10:
        case 0x11:
        case 0x12:
        case 0x14:
        case 0x20:
        case 0x23:
        case 0x24:
            break;

        default:
            PRINTF("Error : arg_data 設定ミスです。(%s %d)(arg_data 0x%04x)\n", "../z_bg_spot08_iceblock.c", 0xF6,
                   this->dyna.actor.params);
            this->dyna.actor.params = 0x10;
            break;
    }
}

void BgSpot08Iceblock_UpdateYOscillation(BgSpot08Iceblock* this) {
    this->yOscillation = (Math_SinS(this->yOscillationPhase1) * 4.0f) + (Math_SinS(this->yOscillationPhase2) * 3.0f);
}

void BgSpot08Iceblock_UpdateSinkHeight(BgSpot08Iceblock* this) {
    f32 target;
    f32 step;

    switch (PARAMS_GET_NOSHIFT(this->dyna.actor.params, 4, 4)) {
        case 0:
            step = 0.15f;
            break;

        case 0x10:
            step = 0.2f;
            break;

        case 0x20:
            step = 0.4f;
            break;
    }
    if (DynaPolyActor_IsActorOnTop(&this->dyna)) {
        target = -4.0f;
    } else {
        target = 0.0f;
    }
    Math_StepToF(&this->sinkHeight, target, step);
}

void BgSpot08Iceblock_UpdatePosY(BgSpot08Iceblock* this) {
    this->dyna.actor.world.pos.y = this->sinkHeight + this->yOscillation + this->dyna.actor.home.pos.y;
}

void BgSpot08Iceblock_VecScale(Vec3f* dest, Vec3f* src, f32 fac) {
    dest->x = src->x * fac;
    dest->y = src->y * fac;
    dest->z = src->z * fac;
}

void BgSpot08Iceblock_VecCross(Vec3f* dest, Vec3f* a, Vec3f* b) {
    dest->x = (a->y * b->z) - (a->z * b->y);
    dest->y = (a->z * b->x) - (a->x * b->z);
    dest->z = (a->x * b->y) - (a->y * b->x);
}

s32 BgSpot08Iceblock_VecNormalize(Vec3f* dest, Vec3f* src) {
    f32 len;
    f32 invLen;

    len = Math3D_Vec3fMagnitude(src);
    if (len < 0.001f) {
        dest->y = 0.0f;
        dest->x = 0.0f;
        dest->z = 1.0f;
        return false;
    } else {
        invLen = 1.0f / len;
        dest->x = src->x * invLen;
        dest->y = src->y * invLen;
        dest->z = src->z * invLen;
        return true;
    }
}

void BgSpot08Iceblock_UpdateSwaying(BgSpot08Iceblock* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s32 pad;
    Vec3f spD4;
    Vec3f spC8;
    Vec3f spBC;
    Vec3f spB0;
    Vec3f randVec;
    Vec3f sp98;
    Vec3f swayAxis;
    f32 sp88;
    s32 physicsSet;
    MtxF mf;
    f32 temp_fv0_2;
    f32 temp_fv1;

    switch (PARAMS_GET_U(this->dyna.actor.params, 0, 8)) {
        case 0x11:
            physicsSet = 0;
            break;

        case 1:
            physicsSet = 1;
            break;

        default:
            physicsSet = 2;
            break;
    }
    Math_Vec3f_Diff(&player->actor.world.pos, &this->dyna.actor.world.pos, &spC8);
    spC8.y -= 150.0f * this->dyna.actor.scale.y;
    sp88 = Math3D_Vec3fMagnitude(&spC8);
    randVec.x = (Rand_ZeroOne() - 0.5f) * 0.0016f;
    randVec.y = 0.0f;
    randVec.z = (Rand_ZeroOne() - 0.5f) * 0.0016f;
    spD4.x = this->unk_168.x;
    spD4.y = 0.0f;
    spD4.z = this->unk_168.z;
    if (DynaPolyActor_IsPlayerOnTop(&this->dyna) && (sp88 > 3.0f)) {
        Math_Vec3f_Diff(&spC8, &spD4, &spBC);
        BgSpot08Iceblock_VecScale(&spBC, &spBC, (D_808B16C8[physicsSet] * sp88) / this->dyna.actor.scale.x);
    } else {
        spBC = D_808B16BC;
    }
    BgSpot08Iceblock_VecScale(&spB0, &spD4, -0.01f);
    Math_Vec3f_Sum(&this->unk_174, &spBC, &this->unk_174);
    Math_Vec3f_Sum(&this->unk_174, &spB0, &this->unk_174);
    Math_Vec3f_Sum(&this->unk_174, &randVec, &this->unk_174);
    this->unk_174.y = 0.0f;
    Math_Vec3f_Sum(&this->unk_168, &this->unk_174, &sp98);
    sp98.x *= D_808B16D4[physicsSet];
    sp98.z *= D_808B16D4[physicsSet];
    if (BgSpot08Iceblock_VecNormalize(&this->unk_168, &sp98)) {
        temp_fv0_2 = Math3D_Dist1DSq(this->unk_168.z, this->unk_168.x);
        if (D_808B16E0[physicsSet] < temp_fv0_2) {
            temp_fv1 = D_808B16E0[physicsSet] / temp_fv0_2;
            this->unk_168.x *= temp_fv1;
            this->unk_168.y = D_808B16EC[physicsSet];
            this->unk_168.z *= temp_fv1;
        }
        BgSpot08Iceblock_VecCross(&sp98, &sUpVec, &this->unk_168);
        if (BgSpot08Iceblock_VecNormalize(&swayAxis, &sp98)) {
            this->swayAxis = swayAxis;
        }
    } else {
        this->unk_168 = sUpVec;
    }
    Matrix_RotateAxis(Math_FAcosF(Math3D_Cos(&sUpVec, &this->unk_168)), &this->swayAxis, MTXMODE_NEW);
    Matrix_RotateY(BINANG_TO_RAD(this->dyna.actor.shape.rot.y), MTXMODE_APPLY);
    Matrix_Get(&mf);
    Matrix_MtxFToYXZRotS(&mf, &this->dyna.actor.shape.rot, 0);
}

void BgSpot08Iceblock_SetupIcebergDuo(BgSpot08Iceblock* this, PlayState* play) {
    s32 pad[2];
    f32 dx;
    f32 dz;

    dx = Math_SinS(this->dyna.actor.home.rot.y) * 100.0f;
    dz = Math_CosS(this->dyna.actor.home.rot.y) * 100.0f;
    if (!PARAMS_GET_NOSHIFT(this->dyna.actor.params, 8, 1)) {
        Actor_SpawnAsChild(&play->actorCtx, &this->dyna.actor, play, ACTOR_BG_SPOT08_ICEBLOCK,
                           this->dyna.actor.home.pos.x, this->dyna.actor.home.pos.y, this->dyna.actor.home.pos.z,
                           this->dyna.actor.home.rot.x, this->dyna.actor.home.rot.y, this->dyna.actor.home.rot.z,
                           0x123);
        this->dyna.actor.world.pos.x += dx;
        this->dyna.actor.world.pos.z += dz;
    } else {
        this->dyna.actor.world.pos.x -= dx;
        this->dyna.actor.world.pos.z -= dz;
    }
    BgSpot08Iceblock_SetupActionIcebergDuo(this);
}

void BgSpot08Iceblock_Init(Actor* thisx, PlayState* play) {
    s32 pad;
    CollisionHeader* colHeader;
    s32 behaviorType;
    BgSpot08Iceblock* this = (BgSpot08Iceblock*)thisx;

    PRINTF("(spot08 流氷)(arg_data 0x%04x)\n", this->dyna.actor.params);
    BgSpot08Iceblock_CheckParams(this);
    switch (PARAMS_GET_NOSHIFT(this->dyna.actor.params, 9, 1)) {
        case 0:
            colHeader = &gZorasFountainIcebergCol;
            break;

        case 0x200:
            colHeader = &gZorasFountainIceRampCol;
            break;
    }
    behaviorType = PARAMS_GET_U(this->dyna.actor.params, 0, 4);
    if ((behaviorType == 2) || (behaviorType == 3)) {
        BgSpot08Iceblock_InitDynapoly(this, play, colHeader, DYNA_TRANSFORM_POS | DYNA_TRANSFORM_ROT_Y);
    } else {
        BgSpot08Iceblock_InitDynapoly(this, play, colHeader, 0);
    }
    if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
        Actor_Kill(&this->dyna.actor);
        return;
    }
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    switch (PARAMS_GET_NOSHIFT(this->dyna.actor.params, 4, 4)) {
        case 0:
            Actor_SetScale(&this->dyna.actor, 0.2f);
            break;

        case 0x10:
            Actor_SetScale(&this->dyna.actor, 0.1f);
            break;

        case 0x20:
            Actor_SetScale(&this->dyna.actor, 0.05f);
            break;
    }
    this->yOscillationPhase1 = TRUNCF_BINANG(Rand_ZeroOne() * 65535.5f);
    this->yOscillationPhase2 = TRUNCF_BINANG(Rand_ZeroOne() * 65535.5f);
    this->unk_168.y = 1.0f;
    this->swayAxis.x = 1.0f;
    switch (PARAMS_GET_U(this->dyna.actor.params, 0, 4)) {
        case 0:
        case 1:
            BgSpot08Iceblock_SetupIcebergStatic(this);
            break;

        case 2:
            BgSpot08Iceblock_SetupIcebergSpin(this);
            break;

        case 3:
            BgSpot08Iceblock_SetupIcebergDuo(this, play);
            break;

        case 4:
            BgSpot08Iceblock_SetupDoNothing(this);
            break;

        default:
            break;
    }
}

void BgSpot08Iceblock_Destroy(Actor* thisx, PlayState* play) {
    BgSpot08Iceblock* this = (BgSpot08Iceblock*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

void BgSpot08Iceblock_SetupIcebergStatic(BgSpot08Iceblock* this) {
    BgSpot08Iceblock_SetupAction(this, BgSpot08Iceblock_IcebergStatic);
}

void BgSpot08Iceblock_IcebergStatic(BgSpot08Iceblock* this, PlayState* play) {
    BgSpot08Iceblock_UpdateYOscillation(this);
    BgSpot08Iceblock_UpdateSinkHeight(this);
    BgSpot08Iceblock_UpdatePosY(this);
    this->dyna.actor.shape.rot.y = this->dyna.actor.home.rot.y;
    BgSpot08Iceblock_UpdateSwaying(this, play);
}

void BgSpot08Iceblock_SetupIcebergSpin(BgSpot08Iceblock* this) {
    BgSpot08Iceblock_SetupAction(this, BgSpot08Iceblock_IcebergSpin);
}

void BgSpot08Iceblock_IcebergSpin(BgSpot08Iceblock* this, PlayState* play) {
    BgSpot08Iceblock_UpdateYOscillation(this);
    BgSpot08Iceblock_UpdateSinkHeight(this);
    BgSpot08Iceblock_UpdatePosY(this);
    this->dyna.actor.world.rot.y += 0x190;
    this->dyna.actor.shape.rot.y = this->dyna.actor.world.rot.y;
    BgSpot08Iceblock_UpdateSwaying(this, play);
}

void BgSpot08Iceblock_SetupActionIcebergDuo(BgSpot08Iceblock* this) {
    BgSpot08Iceblock_SetupAction(this, BgSpot08Iceblock_IcebergDuo);
}

void BgSpot08Iceblock_IcebergDuo(BgSpot08Iceblock* this, PlayState* play) {
    f32 dz;
    f32 dx;

    BgSpot08Iceblock_UpdateYOscillation(this);
    BgSpot08Iceblock_UpdateSinkHeight(this);
    BgSpot08Iceblock_UpdatePosY(this);
    if (!PARAMS_GET_NOSHIFT(this->dyna.actor.params, 8, 1)) {
        this->dyna.actor.world.rot.y += 0x190;
        dx = Math_SinS(this->dyna.actor.world.rot.y) * 100.0f;
        dz = Math_CosS(this->dyna.actor.world.rot.y) * 100.0f;
        this->dyna.actor.world.pos.x = this->dyna.actor.home.pos.x + dx;
        this->dyna.actor.world.pos.z = this->dyna.actor.home.pos.z + dz;
        if (this->dyna.actor.child != NULL) {
            this->dyna.actor.child->world.pos.x = this->dyna.actor.home.pos.x - dx;
            this->dyna.actor.child->world.pos.z = this->dyna.actor.home.pos.z - dz;
        }
    }
    this->dyna.actor.shape.rot.y = this->dyna.actor.home.rot.y;
    BgSpot08Iceblock_UpdateSwaying(this, play);
}

void BgSpot08Iceblock_SetupDoNothing(BgSpot08Iceblock* this) {
    BgSpot08Iceblock_SetupAction(this, NULL);
}

void BgSpot08Iceblock_Update(Actor* thisx, PlayState* play) {
    BgSpot08Iceblock* this = (BgSpot08Iceblock*)thisx;

    if (Rand_ZeroOne() < 0.05f) {
        this->yOscillationPulse1 = Rand_S16Offset(0x12C, 0x64);
        this->yOscillationPulse2 = Rand_S16Offset(0x320, 0x190);
    }
    this->yOscillationPhase1 += this->yOscillationPulse1;
    this->yOscillationPhase2 += this->yOscillationPulse2;
    if (this->actionFunc != NULL) {
        this->actionFunc(this, play);
    }
}

void BgSpot08Iceblock_Draw(Actor* thisx, PlayState* play) {
    Gfx* dl;
    BgSpot08Iceblock* this = (BgSpot08Iceblock*)thisx;

    switch (PARAMS_GET_NOSHIFT(this->dyna.actor.params, 9, 1)) {
        case 0x0:
            dl = gZorasFountainIcebergDL;
            break;

        case 0x200:
            dl = gZorasFountainIceRampDL;
            break;
    }
    Gfx_DrawDListOpa(play, dl);
}
