/*
 * File: z_bg_hidan_kousi.c
 * Overlay: ovl_Bg_Hidan_Kousi
 * Description:
 */

#include "z_bg_hidan_kousi.h"
#include "assets/objects/object_hidan_objects/object_hidan_objects.h"

#define FLAGS ACTOR_FLAG_UPDATE_CULLING_DISABLED

void BgHidanKousi_Init(Actor* thisx, PlayState* play);
void BgHidanKousi_Destroy(Actor* thisx, PlayState* play);
void BgHidanKousi_Update(Actor* thisx, PlayState* play);
void BgHidanKousi_Draw(Actor* thisx, PlayState* play);

void func_80889ACC(BgHidanKousi* this);
void func_80889B5C(BgHidanKousi* this, PlayState* play);
void func_80889BC0(BgHidanKousi* this, PlayState* play);
void func_80889C18(BgHidanKousi* this, PlayState* play);
void func_80889C90(BgHidanKousi* this, PlayState* play);
void func_80889D28(BgHidanKousi* this, PlayState* play);

static f32 D_80889E40[] = { 120.0f, 150.0f, 150.0f };

ActorProfile Bg_Hidan_Kousi_Profile = {
    /**/ ACTOR_BG_HIDAN_KOUSI,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_HIDAN_OBJECTS,
    /**/ sizeof(BgHidanKousi),
    /**/ BgHidanKousi_Init,
    /**/ BgHidanKousi_Destroy,
    /**/ BgHidanKousi_Update,
    /**/ BgHidanKousi_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

static CollisionHeader* sMetalFencesCollisions[] = {
    &gFireTempleMetalFenceWithSlantCol,
    &gFireTempleMetalFenceCol,
    &gFireTempleMetalFence2Col,
};

static s16 D_80889E7C[] = {
    0x4000,
    0xC000,
    0xC000,
    0x0000,
};

static Gfx* sMetalFencesDLs[] = {
    gFireTempleMetalFenceWithSlantDL,
    gFireTempleMetalFenceDL,
    gFireTempleMetalFence2DL,
};

void BgHidanKousi_SetupAction(BgHidanKousi* this, BgHidanKousiActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void BgHidanKousi_Init(Actor* thisx, PlayState* play) {
    BgHidanKousi* this = (BgHidanKousi*)thisx;
    s32 pad;
    CollisionHeader* colHeader = NULL;

    DynaPolyActor_Init(&this->dyna, 0);
    Actor_SetFocus(thisx, 50.0f);
    PRINTF("◯◯◯炎の神殿オブジェクト【格子(arg_data : %0x)】出現 (%d %d)\n", thisx->params,
           PARAMS_GET_U(thisx->params, 0, 8), PARAMS_GET_U((s32)thisx->params, 8, 8));

    Actor_ProcessInitChain(thisx, sInitChain);

#if DEBUG_FEATURES
    if (PARAMS_GET_U(thisx->params, 0, 8) < 0 || PARAMS_GET_U(thisx->params, 0, 8) >= 3) {
        PRINTF("arg_data おかしい 【格子】\n");
    }
#endif

    CollisionHeader_GetVirtual(sMetalFencesCollisions[PARAMS_GET_U(thisx->params, 0, 8)], &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, thisx, colHeader);
    thisx->world.rot.y = D_80889E7C[PARAMS_GET_U(this->dyna.actor.params, 0, 8)] + thisx->shape.rot.y;
    if (Flags_GetSwitch(play, PARAMS_GET_U(thisx->params, 8, 8))) {
        func_80889ACC(this);
        BgHidanKousi_SetupAction(this, func_80889D28);
    } else {
        BgHidanKousi_SetupAction(this, func_80889B5C);
    }
}

void BgHidanKousi_Destroy(Actor* thisx, PlayState* play) {
    BgHidanKousi* this = (BgHidanKousi*)thisx;
    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

void func_80889ACC(BgHidanKousi* this) {
    s32 pad[2];
    Vec3s* rot = &this->dyna.actor.world.rot;
    f32 temp1 = D_80889E40[PARAMS_GET_U(this->dyna.actor.params, 0, 8)] * Math_SinS(rot->y);
    f32 temp2 = D_80889E40[PARAMS_GET_U(this->dyna.actor.params, 0, 8)] * Math_CosS(rot->y);

    this->dyna.actor.world.pos.x = this->dyna.actor.home.pos.x + temp1;
    this->dyna.actor.world.pos.z = this->dyna.actor.home.pos.z + temp2;
}

void func_80889B5C(BgHidanKousi* this, PlayState* play) {
    if (Flags_GetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 8, 8))) {
        BgHidanKousi_SetupAction(this, func_80889BC0);
        OnePointCutscene_Attention(play, &this->dyna.actor);
        this->unk_168 = 0xC8;
    }
}

void func_80889BC0(BgHidanKousi* this, PlayState* play) {
    this->unk_168--;
    if (this->dyna.actor.category == func_8005B198() || (this->unk_168 <= 0)) {
        BgHidanKousi_SetupAction(this, func_80889C18);
    }
}

void func_80889C18(BgHidanKousi* this, PlayState* play) {
    this->dyna.actor.speed += 0.2f;
    if (this->dyna.actor.speed > 2.0f) {
        this->dyna.actor.speed = 2.0f;
        BgHidanKousi_SetupAction(this, func_80889C90);
    }
    Actor_MoveXZGravity(&this->dyna.actor);
    Actor_PlaySfx_Flagged(&this->dyna.actor, NA_SE_EV_METALDOOR_SLIDE - SFX_FLAG);
}

void func_80889C90(BgHidanKousi* this, PlayState* play) {
    Actor_UpdatePos(&this->dyna.actor);
    if (D_80889E40[PARAMS_GET_U(this->dyna.actor.params, 0, 8)] <
        Math_Vec3f_DistXYZ(&this->dyna.actor.home.pos, &this->dyna.actor.world.pos)) {
        func_80889ACC(this);
        BgHidanKousi_SetupAction(this, func_80889D28);
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_METALDOOR_STOP);
    } else {
        Actor_PlaySfx_Flagged(&this->dyna.actor, NA_SE_EV_METALDOOR_SLIDE - SFX_FLAG);
    }
}

void func_80889D28(BgHidanKousi* this, PlayState* play) {
}

void BgHidanKousi_Update(Actor* thisx, PlayState* play) {
    BgHidanKousi* this = (BgHidanKousi*)thisx;

    this->actionFunc(this, play);
}

void BgHidanKousi_Draw(Actor* thisx, PlayState* play) {
    OPEN_DISPS(play->state.gfxCtx, "../z_bg_hidan_kousi.c", 350);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);

    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_bg_hidan_kousi.c", 354);
    gSPDisplayList(POLY_OPA_DISP++, sMetalFencesDLs[PARAMS_GET_U(thisx->params, 0, 8)]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_hidan_kousi.c", 359);
}
