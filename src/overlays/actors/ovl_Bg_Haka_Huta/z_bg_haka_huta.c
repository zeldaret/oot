#include "z_bg_haka_huta.h"
#include "overlays/actors/ovl_En_Rd/z_en_rd.h"

#include "libc64/qrand.h"
#include "ichain.h"
#include "one_point_cutscene.h"
#include "quake.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "z_lib.h"
#include "effect.h"
#include "play_state.h"
#include "player.h"

#include "assets/objects/object_hakach_objects/object_hakach_objects.h"

#define FLAGS ACTOR_FLAG_UPDATE_CULLING_DISABLED

void BgHakaHuta_Init(Actor* thisx, PlayState* play);
void BgHakaHuta_Destroy(Actor* thisx, PlayState* play);
void BgHakaHuta_Update(Actor* thisx, PlayState* play);
void BgHakaHuta_Draw(Actor* thisx, PlayState* play);

void func_8087D0AC(BgHakaHuta* this, PlayState* play);
void func_8087D2F0(BgHakaHuta* this, PlayState* play);
void func_8087D5B8(BgHakaHuta* this, PlayState* play);
void func_8087D66C(BgHakaHuta* this, PlayState* play);
void func_8087D720(BgHakaHuta* this, PlayState* play);
void BgHakaHuta_DoNothing(BgHakaHuta* this, PlayState* play);

ActorProfile Bg_Haka_Huta_Profile = {
    /**/ ACTOR_BG_HAKA_HUTA,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_HAKACH_OBJECTS,
    /**/ sizeof(BgHakaHuta),
    /**/ BgHakaHuta_Init,
    /**/ BgHakaHuta_Destroy,
    /**/ BgHakaHuta_Update,
    /**/ BgHakaHuta_Draw,
};
static InitChainEntry D_8087D940[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};
static Vec3f D_8087D944 = { 0.0f, 0.0f, 0.0f };
static Color_RGBA8 D_8087D950 = { 30, 20, 50, 255 };
static Color_RGBA8 D_8087D954 = { 0, 0, 0, 255 };

void BgHakaHuta_Init(Actor* thisx, PlayState* play) {
    BgHakaHuta* this = (BgHakaHuta*)thisx;
    s32 pad;
    CollisionHeader* sp24;

    sp24 = NULL;
    Actor_ProcessInitChain(&this->dyna.actor, D_8087D940);
    DynaPolyActor_Init(&this->dyna, DYNA_TRANSFORM_POS);
    CollisionHeader_GetVirtual(&gBotwCoffinLidCol, &sp24);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, sp24);
    this->unk16A = PARAMS_GET_U(thisx->params, 8, 8);
    thisx->params &= 0xFF;
    if (Flags_GetSwitch(play, this->dyna.actor.params)) {
        this->unk168 = -1;
        this->actionFunc = func_8087D720;
    } else {
        this->actionFunc = func_8087D2F0;
    }
}

void BgHakaHuta_Destroy(Actor* thisx, PlayState* play) {
    BgHakaHuta* this = (BgHakaHuta*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

void func_8087D0AC(BgHakaHuta* this, PlayState* play) {
    s32 var_s0;
    f32 temp_fs1;
    Vec3f sp94;
    Vec3f sp88;
    f32 var_fs0;
    f32 v;

    if (this->dyna.actor.world.rot.y == 0) {
        var_fs0 = 1.0f;
    } else {
        var_fs0 = -1.0f;
    }
    sp88.x = -0.5f * var_fs0;
    sp88.y = 0.0f;
    sp88.z = 0.0f;
    sp94.y = this->dyna.actor.world.pos.y;
    sp94.z = this->dyna.actor.world.pos.z;
    v = (50 - ((this->dyna.actor.world.pos.x - this->dyna.actor.home.pos.x) * var_fs0));
    temp_fs1 = v * var_fs0;
    for (var_s0 = 0; var_s0 < 4; var_s0++) {
        if (var_s0 == 2) {
            sp94.z += 120.0f * var_fs0;
        }
        sp94.x = this->dyna.actor.home.pos.x - (Rand_ZeroOne() * temp_fs1);
        func_8002829C(play, &sp94, &sp88, &D_8087D944, &D_8087D950, &D_8087D954, (Rand_ZeroOne() * 10.0f) + 50.0f, 10);
    }
}

void BgHakaHuta_PlaySound(BgHakaHuta* this, PlayState* play, u16 arg2) {
    Vec3f sp24;

    if (this->dyna.actor.shape.rot.y == 0) {
        sp24.z = this->dyna.actor.world.pos.z + 120.0f;
    } else {
        sp24.z = this->dyna.actor.world.pos.z - 120.0f;
    }
    sp24.x = this->dyna.actor.world.pos.x;
    sp24.y = this->dyna.actor.world.pos.y;
    SfxSource_PlaySfxAtFixedWorldPos(play, &sp24, 30, arg2);
}

void func_8087D2F0(BgHakaHuta* this, PlayState* play) {
    if (Flags_GetSwitch(play, this->dyna.actor.params) && !Player_InCsMode(play)) {
        this->unk168 = 0x19;
        this->actionFunc = func_8087D5B8;
        OnePointCutscene_Init(play, 6001, 999, &this->dyna.actor, CAM_ID_MAIN);
        if (this->unk16A == 2) {
            Actor_Spawn(&play->actorCtx, play, ACTOR_EN_FIREFLY,
                        this->dyna.actor.world.pos.x + (-25.0f * Math_CosS(this->dyna.actor.shape.rot.y)) +
                            (40.0f * Math_SinS(this->dyna.actor.shape.rot.y)),
                        this->dyna.actor.world.pos.y - 10.0f,

                        this->dyna.actor.world.pos.z - (-25.0f * Math_SinS(this->dyna.actor.shape.rot.y)) +
                            (40.0f * Math_CosS(this->dyna.actor.shape.rot.y)),
                        0, this->dyna.actor.shape.rot.y + 0x8000, 0, 2);
            Actor_Spawn(&play->actorCtx, play, ACTOR_EN_FIREFLY,
                        this->dyna.actor.world.pos.x + (-25.0f * Math_CosS(this->dyna.actor.shape.rot.y)) +
                            (80.0f * Math_SinS(this->dyna.actor.shape.rot.y)),
                        this->dyna.actor.world.pos.y - 10.0f,
                        this->dyna.actor.world.pos.z - (-25.0f * Math_SinS(this->dyna.actor.shape.rot.y)) +
                            (80.0f * Math_CosS(this->dyna.actor.shape.rot.y)),
                        0, this->dyna.actor.shape.rot.y, 0, 2);
        } else if (this->unk16A == 1) {
            Actor_Spawn(&play->actorCtx, play, ACTOR_EN_RD,
                        this->dyna.actor.home.pos.x + (-25.0f * Math_CosS(this->dyna.actor.shape.rot.y)) +
                            (100.0f * Math_SinS(this->dyna.actor.shape.rot.y)),
                        this->dyna.actor.home.pos.y - 40.0f,
                        this->dyna.actor.home.pos.z - (-25.0f * Math_SinS(this->dyna.actor.shape.rot.y)) +
                            (100.0f * Math_CosS(this->dyna.actor.shape.rot.y)),
                        0, this->dyna.actor.shape.rot.y, 0, (u8)REDEAD_TYPE_GIBDO_RISING_OUT_OF_COFFIN);
        }
    }
}

void func_8087D5B8(BgHakaHuta* this, PlayState* play) {
    f32 var_fv0;
    s16 temp_v0;

    temp_v0 = this->unk168;
    if (temp_v0 != 0) {
        this->unk168 = temp_v0 - 1;
    }
    if (this->dyna.actor.world.rot.y == 0) {
        var_fv0 = 4.0f;
    } else {
        var_fv0 = -4.0f;
    }
    Math_StepToF(&this->dyna.actor.world.pos.x, this->dyna.actor.home.pos.x + var_fv0, 2.0f);
    if (this->unk168 == 0) {
        this->unk168 = 0x25;
        BgHakaHuta_PlaySound(this, play, NA_SE_EV_COFFIN_CAP_OPEN);
        this->actionFunc = func_8087D66C;
    }
}

void func_8087D66C(BgHakaHuta* this, PlayState* play) {
    f32 var_fv0;
    s16 temp_v0;

    temp_v0 = this->unk168;
    if (temp_v0 != 0) {
        this->unk168 = temp_v0 - 1;
    }
    if (this->dyna.actor.world.rot.y == 0) {
        var_fv0 = 24.0f;
    } else {
        var_fv0 = -24.0f;
    }
    if (!Math_StepToF(&this->dyna.actor.world.pos.x, this->dyna.actor.home.pos.x + var_fv0, 0.5f)) {
        func_8087D0AC(this, play);
    }
    if (this->unk168 == 0) {
        BgHakaHuta_PlaySound(this, play, NA_SE_EV_COFFIN_CAP_BOUND);
        this->actionFunc = func_8087D720;
    }
}

void func_8087D720(BgHakaHuta* this, PlayState* play) {
    static Vec3f D_8087D958 = { 30.0f, 0.0f, 0.0f };
    static Vec3f D_8087D964 = { 0.03258f, 0.3258f, -0.9449f };
    MtxF sp40;
    Vec3f sp34;
    s32 temp_v0;

    this->unk168 += 1;
    if (this->unk168 == 6) {
        this->actionFunc = BgHakaHuta_DoNothing;
        temp_v0 = Quake_Request(play->cameraPtrs[play->activeCamId], QUAKE_TYPE_3);
        Quake_SetSpeed(temp_v0, 0x7530);
        Quake_SetPerturbations(temp_v0, 4, 0, 0, 0);
        Quake_SetDuration(temp_v0, 2);
    } else if (this->unk168 == 0) {
        this->unk168 = 6;
        this->actionFunc = BgHakaHuta_DoNothing;
    }
    D_8087D958.x = this->unk168 + 24.0f;
    if (D_8087D958.x > 30.0f) {
        D_8087D958.x = 30.0f;
    }
    Matrix_RotateY(BINANG_TO_RAD(this->dyna.actor.world.rot.y), MTXMODE_NEW);
    Matrix_RotateAxis(this->unk168 * 0.16001178f, &D_8087D964, MTXMODE_APPLY);
    Matrix_MultVec3f(&D_8087D958, &sp34);
    this->dyna.actor.world.pos.x = this->dyna.actor.home.pos.x + sp34.x;
    this->dyna.actor.world.pos.y = this->dyna.actor.home.pos.y + sp34.y;
    this->dyna.actor.world.pos.z = this->dyna.actor.home.pos.z + sp34.z;
    Matrix_Get(&sp40);
    Matrix_MtxFToYXZRotS(&sp40, &this->dyna.actor.shape.rot, 0);
}

void BgHakaHuta_DoNothing(BgHakaHuta* this, PlayState* play) {
}

void BgHakaHuta_Update(Actor* thisx, PlayState* play) {
    BgHakaHuta* this = (BgHakaHuta*)thisx;

    this->actionFunc(this, play);
}

void BgHakaHuta_Draw(Actor* thisx, PlayState* play) {
    BgHakaHuta* this = (BgHakaHuta*)thisx;

    Gfx_DrawDListOpa(play, gBotwCoffinLidDL);
}
