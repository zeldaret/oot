#include "z_bg_haka_huta.h"
#include "src/overlays/actors/ovl_En_Firefly/z_en_firefly.h"
#include "src/overlays/actors/ovl_En_Rd/z_en_rd.h"

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

void BgHakaHuta_WaitSwitchFlag(BgHakaHuta* this, PlayState* play);
void BgHakaHuta_OpenStartSlide(BgHakaHuta* this, PlayState* play);
void BgHakaHuta_OpenSlide(BgHakaHuta* this, PlayState* play);
void BgHakaHuta_OpenFallOff(BgHakaHuta* this, PlayState* play);
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

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

void BgHakaHuta_Init(Actor* thisx, PlayState* play) {
    BgHakaHuta* this = (BgHakaHuta*)thisx;
    s32 pad;
    CollisionHeader* colHeader = NULL;

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    DynaPolyActor_Init(&this->dyna, DYNA_TRANSFORM_POS);
    CollisionHeader_GetVirtual(&gBotwCoffinLidCol, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);
    this->hiddenContent = PARAMS_GET_U(thisx->params, 8, 8);
    thisx->params = PARAMS_GET_U(thisx->params, 0, 8);
    if (Flags_GetSwitch(play, this->dyna.actor.params)) {
        this->timer = -1;
        this->actionFunc = BgHakaHuta_OpenFallOff;
    } else {
        this->actionFunc = BgHakaHuta_WaitSwitchFlag;
    }
}

void BgHakaHuta_Destroy(Actor* thisx, PlayState* play) {
    BgHakaHuta* this = (BgHakaHuta*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

void BgHakaHuta_SpawnEffects(BgHakaHuta* this, PlayState* play) {
    static Vec3f sEffAccel = { 0.0f, 0.0f, 0.0f };
    static Color_RGBA8 sEffPrimColor = { 30, 20, 50, 255 };
    static Color_RGBA8 sEffEnvColor = { 0, 0, 0, 255 };
    s32 i;
    f32 dxMax;
    Vec3f effPos;
    Vec3f effVel;
    f32 direction;
    f32 dxMaxAbs;

    if (this->dyna.actor.world.rot.y == 0) {
        direction = 1.0f;
    } else {
        direction = -1.0f;
    }
    effVel.x = -0.5f * direction;
    effVel.y = 0.0f;
    effVel.z = 0.0f;
    effPos.y = this->dyna.actor.world.pos.y;
    effPos.z = this->dyna.actor.world.pos.z;
    dxMaxAbs = 50 - ((this->dyna.actor.world.pos.x - this->dyna.actor.home.pos.x) * direction);
    dxMax = dxMaxAbs * direction;
    for (i = 0; i < 4; i++) {
        if (i == 2) {
            effPos.z += 120.0f * direction;
        }
        effPos.x = this->dyna.actor.home.pos.x - (Rand_ZeroOne() * dxMax);
        func_8002829C(play, &effPos, &effVel, &sEffAccel, &sEffPrimColor, &sEffEnvColor,
                      (Rand_ZeroOne() * 10.0f) + 50.0f, 10);
    }
}

void BgHakaHuta_PlaySound(BgHakaHuta* this, PlayState* play, u16 sfxId) {
    Vec3f pos;

    if (this->dyna.actor.shape.rot.y == 0) {
        pos.z = this->dyna.actor.world.pos.z + 120.0f;
    } else {
        pos.z = this->dyna.actor.world.pos.z - 120.0f;
    }
    pos.x = this->dyna.actor.world.pos.x;
    pos.y = this->dyna.actor.world.pos.y;
    SfxSource_PlaySfxAtFixedWorldPos(play, &pos, 30, sfxId);
}

void BgHakaHuta_WaitSwitchFlag(BgHakaHuta* this, PlayState* play) {
    if (Flags_GetSwitch(play, this->dyna.actor.params) && !Player_InCsMode(play)) {
        this->timer = 25;
        this->actionFunc = BgHakaHuta_OpenStartSlide;
        OnePointCutscene_Init(play, 6001, 999, &this->dyna.actor, CAM_ID_MAIN);
        if (this->hiddenContent == BG_HAKA_HUTA_HIDDEN_CONTENT_KEESES) {
            Actor_Spawn(&play->actorCtx, play, ACTOR_EN_FIREFLY,
                        this->dyna.actor.world.pos.x + (-25.0f * Math_CosS(this->dyna.actor.shape.rot.y)) +
                            (40.0f * Math_SinS(this->dyna.actor.shape.rot.y)),
                        this->dyna.actor.world.pos.y - 10.0f,
                        this->dyna.actor.world.pos.z - (-25.0f * Math_SinS(this->dyna.actor.shape.rot.y)) +
                            (40.0f * Math_CosS(this->dyna.actor.shape.rot.y)),
                        0, this->dyna.actor.shape.rot.y + 0x8000, 0, EN_FIREFLY_TYPE_NORMAL);
            Actor_Spawn(&play->actorCtx, play, ACTOR_EN_FIREFLY,
                        this->dyna.actor.world.pos.x + (-25.0f * Math_CosS(this->dyna.actor.shape.rot.y)) +
                            (80.0f * Math_SinS(this->dyna.actor.shape.rot.y)),
                        this->dyna.actor.world.pos.y - 10.0f,
                        this->dyna.actor.world.pos.z - (-25.0f * Math_SinS(this->dyna.actor.shape.rot.y)) +
                            (80.0f * Math_CosS(this->dyna.actor.shape.rot.y)),
                        0, this->dyna.actor.shape.rot.y, 0, EN_FIREFLY_TYPE_NORMAL);
        } else if (this->hiddenContent == BG_HAKA_HUTA_HIDDEN_CONTENT_GIBDO) {
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

void BgHakaHuta_OpenStartSlide(BgHakaHuta* this, PlayState* play) {
    f32 dx;

    if (this->timer != 0) {
        this->timer--;
    }
    if (this->dyna.actor.world.rot.y == 0) {
        dx = 4.0f;
    } else {
        dx = -4.0f;
    }
    Math_StepToF(&this->dyna.actor.world.pos.x, this->dyna.actor.home.pos.x + dx, 2.0f);
    if (this->timer == 0) {
        this->timer = 37;
        BgHakaHuta_PlaySound(this, play, NA_SE_EV_COFFIN_CAP_OPEN);
        this->actionFunc = BgHakaHuta_OpenSlide;
    }
}

void BgHakaHuta_OpenSlide(BgHakaHuta* this, PlayState* play) {
    f32 dx;

    if (this->timer != 0) {
        this->timer--;
    }
    if (this->dyna.actor.world.rot.y == 0) {
        dx = 24.0f;
    } else {
        dx = -24.0f;
    }
    if (!Math_StepToF(&this->dyna.actor.world.pos.x, this->dyna.actor.home.pos.x + dx, 0.5f)) {
        BgHakaHuta_SpawnEffects(this, play);
    }
    if (this->timer == 0) {
        BgHakaHuta_PlaySound(this, play, NA_SE_EV_COFFIN_CAP_BOUND);
        this->actionFunc = BgHakaHuta_OpenFallOff;
    }
}

void BgHakaHuta_OpenFallOff(BgHakaHuta* this, PlayState* play) {
    static Vec3f sOffset = { 30.0f, 0.0f, 0.0f };
    static Vec3f sRotAxis = { 0.03258f, 0.3258f, -0.9449f };
    MtxF mf;
    Vec3f posOffset;
    s32 quakeIndex;

    this->timer++;
    if (this->timer == 6) {
        this->actionFunc = BgHakaHuta_DoNothing;
        quakeIndex = Quake_Request(play->cameraPtrs[play->activeCamId], QUAKE_TYPE_3);
        Quake_SetSpeed(quakeIndex, 30000);
        Quake_SetPerturbations(quakeIndex, 4, 0, 0, 0);
        Quake_SetDuration(quakeIndex, 2);
    } else if (this->timer == 0) {
        this->timer = 6;
        this->actionFunc = BgHakaHuta_DoNothing;
    }
    sOffset.x = this->timer + 24.0f;
    if (sOffset.x > 30.0f) {
        sOffset.x = 30.0f;
    }
    Matrix_RotateY(BINANG_TO_RAD(this->dyna.actor.world.rot.y), MTXMODE_NEW);
    Matrix_RotateAxis(this->timer * 0.16001178f, &sRotAxis, MTXMODE_APPLY);
    Matrix_MultVec3f(&sOffset, &posOffset);
    this->dyna.actor.world.pos.x = this->dyna.actor.home.pos.x + posOffset.x;
    this->dyna.actor.world.pos.y = this->dyna.actor.home.pos.y + posOffset.y;
    this->dyna.actor.world.pos.z = this->dyna.actor.home.pos.z + posOffset.z;
    Matrix_Get(&mf);
    Matrix_MtxFToYXZRotS(&mf, &this->dyna.actor.shape.rot, 0);
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
