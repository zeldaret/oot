/*
 * File: z_en_hata.c
 * Overlay: ovl_En_Hata
 * Description: Wooden post with red cloth
 */

#include "z_en_hata.h"

#define FLAGS 0x00000000

#define THIS ((EnHata*)thisx)

void EnHata_Init(Actor* thisx, GlobalContext* globalCtx);
void EnHata_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnHata_Update(Actor* thisx, GlobalContext* globalCtx);
void EnHata_Draw(Actor* thisx, GlobalContext* globalCtx);

const ActorInit En_Hata_InitVars = {
    ACTOR_EN_HATA,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_HATA,
    sizeof(EnHata),
    (ActorFunc)EnHata_Init,
    (ActorFunc)EnHata_Destroy,
    (ActorFunc)EnHata_Update,
    (ActorFunc)EnHata_Draw,
};

static UNK_TYPE sUnusedData[] = {
    0x0A000939, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x00000080, 0x00000000,
    0x00050100, 0x001000F6, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0xFF000000,
};

static Vec3f sVec = { 0, 0, 0 };

extern AnimationHeader D_06000444;
extern SkeletonHeader D_06002FD0;
extern CollisionHeader D_060000C0;

void EnHata_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnHata* this = THIS;
    s32 pad;
    CollisionHeader* colHeader;
    f32 frameCount;

    colHeader = NULL;
    frameCount = Animation_GetLastFrame(&D_06000444);
    Actor_SetScale(&this->dyna.actor, 1.0f / 75.0f);
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_06002FD0, &D_06000444, NULL, NULL, 0);
    Animation_Change(&this->skelAnime, &D_06000444, 1.0f, 0.0f, frameCount, ANIMMODE_LOOP, 0.0f);
    DynaPolyActor_Init(&this->dyna, DPM_UNK);
    CollisionHeader_GetVirtual(&D_060000C0, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, colHeader);
    this->dyna.actor.uncullZoneScale = 500.0f;
    this->dyna.actor.uncullZoneDownward = 550.0f;
    this->dyna.actor.uncullZoneForward = 2200.0f;
    this->invScale = 6;
    this->maxStep = 1000;
    this->minStep = 1;
    this->unk_278 = Rand_ZeroOne() * 65535.0f;
}

void EnHata_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnHata* this = THIS;
    SkelAnime_Free(&this->skelAnime, globalCtx);
    DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
}

void EnHata_Update(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    EnHata* this = THIS;
    s32 pitch;
    Vec3f sp48 = sVec;
    Vec3f sp3C;
    f32 sin;

    SkelAnime_Update(&this->skelAnime);
    this->limbs[3].y = this->limbs[12].y = -0x4000;
    sp3C.x = globalCtx->envCtx.unk_A8;
    sp3C.y = globalCtx->envCtx.unk_AA;
    sp3C.z = globalCtx->envCtx.unk_AC;
    if (globalCtx->envCtx.unk_B0 > 255.0f) {
        globalCtx->envCtx.unk_B0 = 255.0f;
    }
    if (globalCtx->envCtx.unk_B0 < 0.0f) {
        globalCtx->envCtx.unk_B0 = 0.0f;
    }
    if (Rand_ZeroOne() > 0.5f) {
        this->unk_278 += 6000;
    } else {
        this->unk_278 += 3000;
    }
    sin = Math_SinS(this->unk_278) * 80.0f;
    pitch = -Math_Vec3f_Pitch(&sp48, &sp3C);
    pitch = ((s32)((0x3A98 - pitch) * (1.0f - (globalCtx->envCtx.unk_B0 / (255.0f - sin))))) + pitch;
    Math_SmoothStepToS(&this->limbs[4].y, pitch, this->invScale, this->maxStep, this->minStep);
    this->limbs[13].y = this->limbs[4].y;
    this->limbs[4].z = -Math_Vec3f_Yaw(&sp48, &sp3C);
    this->limbs[13].z = this->limbs[4].z;
    this->skelAnime.playSpeed = (Rand_ZeroFloat(1.25f) + 2.75f) * (globalCtx->envCtx.unk_B0 / 255.0f);
}

s32 EnHata_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnHata* this = THIS;
    Vec3s* limbs;

    if (limbIndex == 12 || limbIndex == 3 || limbIndex == 13 || limbIndex == 4) {
        limbs = this->limbs;
        rot->x += limbs[limbIndex].x;
        rot->y += limbs[limbIndex].y;
        rot->z += limbs[limbIndex].z;
    }
    return false;
}

void EnHata_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
}

void EnHata_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnHata* this = THIS;
    func_800943C8(globalCtx->state.gfxCtx);
    Matrix_Scale(1.0f, 1.1f, 1.0f, MTXMODE_APPLY);
    SkelAnime_DrawOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, EnHata_OverrideLimbDraw,
                      EnHata_PostLimbDraw, this);
}
