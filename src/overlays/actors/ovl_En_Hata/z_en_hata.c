/*
 * File: z_en_hata.c
 * Overlay: ovl_En_Hata
 * Description: Wooden post with red cloth
 */

#include "z_en_hata.h"

#include "libc64/qrand.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "rand.h"
#include "sys_matrix.h"
#include "z_lib.h"
#include "play_state.h"

#include "assets/objects/object_hata/object_hata.h"

#define FLAGS 0

void EnHata_Init(Actor* thisx, PlayState* play);
void EnHata_Destroy(Actor* thisx, PlayState* play);
void EnHata_Update(Actor* thisx, PlayState* play2);
void EnHata_Draw(Actor* thisx, PlayState* play);

ActorProfile En_Hata_Profile = {
    /**/ ACTOR_EN_HATA,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_HATA,
    /**/ sizeof(EnHata),
    /**/ EnHata_Init,
    /**/ EnHata_Destroy,
    /**/ EnHata_Update,
    /**/ EnHata_Draw,
};

static UNK_TYPE sUnusedData[] = {
    0x0A000939, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x00000080, 0x00000000,
    0x00050100, 0x001000F6, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0xFF000000,
};

static Vec3f sVec = { 0, 0, 0 };

void EnHata_Init(Actor* thisx, PlayState* play) {
    EnHata* this = (EnHata*)thisx;
    s32 pad;
    CollisionHeader* colHeader;
    f32 frameCount;

    colHeader = NULL;
    frameCount = Animation_GetLastFrame(&object_hata_000444_Anim);
    Actor_SetScale(&this->dyna.actor, 1.0f / 75.0f);
    SkelAnime_Init(play, &this->skelAnime, &object_hata_002FD0_Skel, &object_hata_000444_Anim, NULL, NULL, 0);
    Animation_Change(&this->skelAnime, &object_hata_000444_Anim, 1.0f, 0.0f, frameCount, ANIMMODE_LOOP, 0.0f);
    DynaPolyActor_Init(&this->dyna, 0);
    CollisionHeader_GetVirtual(&object_hata_0000C0_Col, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);
    this->dyna.actor.cullingVolumeScale = 500.0f;
    this->dyna.actor.cullingVolumeDownward = 550.0f;
    this->dyna.actor.cullingVolumeDistance = 2200.0f;
    this->invScale = 6;
    this->maxStep = 1000;
    this->minStep = 1;
    this->unk_278 = Rand_ZeroOne() * 65535.0f;
}

void EnHata_Destroy(Actor* thisx, PlayState* play) {
    EnHata* this = (EnHata*)thisx;
    SkelAnime_Free(&this->skelAnime, play);
    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

void EnHata_Update(Actor* thisx, PlayState* play2) {
    PlayState* play = play2;
    EnHata* this = (EnHata*)thisx;
    s32 pitch;
    Vec3f sp48 = sVec;
    Vec3f sp3C;
    f32 sin;

    SkelAnime_Update(&this->skelAnime);
    this->limbs[3].y = this->limbs[12].y = -0x4000;
    sp3C.x = play->envCtx.windDirection.x;
    sp3C.y = play->envCtx.windDirection.y;
    sp3C.z = play->envCtx.windDirection.z;
    if (play->envCtx.windSpeed > 255.0f) {
        play->envCtx.windSpeed = 255.0f;
    }
    if (play->envCtx.windSpeed < 0.0f) {
        play->envCtx.windSpeed = 0.0f;
    }
    if (Rand_ZeroOne() > 0.5f) {
        this->unk_278 += 6000;
    } else {
        this->unk_278 += 3000;
    }
    sin = Math_SinS(this->unk_278) * 80.0f;
    pitch = -Math_Vec3f_Pitch(&sp48, &sp3C);
    pitch = ((s32)((0x3A98 - pitch) * (1.0f - (play->envCtx.windSpeed / (255.0f - sin))))) + pitch;
    Math_SmoothStepToS(&this->limbs[4].y, pitch, this->invScale, this->maxStep, this->minStep);
    this->limbs[13].y = this->limbs[4].y;
    this->limbs[4].z = -Math_Vec3f_Yaw(&sp48, &sp3C);
    this->limbs[13].z = this->limbs[4].z;
    this->skelAnime.playSpeed = (Rand_ZeroFloat(1.25f) + 2.75f) * (play->envCtx.windSpeed / 255.0f);
}

s32 EnHata_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnHata* this = (EnHata*)thisx;
    Vec3s* limbs;

    if (limbIndex == 12 || limbIndex == 3 || limbIndex == 13 || limbIndex == 4) {
        limbs = this->limbs;
        rot->x += limbs[limbIndex].x;
        rot->y += limbs[limbIndex].y;
        rot->z += limbs[limbIndex].z;
    }
    return false;
}

void EnHata_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
}

void EnHata_Draw(Actor* thisx, PlayState* play) {
    EnHata* this = (EnHata*)thisx;
    Gfx_SetupDL_37Opa(play->state.gfxCtx);
    Matrix_Scale(1.0f, 1.1f, 1.0f, MTXMODE_APPLY);
    SkelAnime_DrawOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, EnHata_OverrideLimbDraw,
                      EnHata_PostLimbDraw, this);
}
