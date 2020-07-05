/*
 * File: z_en_pu_box.c
 * Overlay: ovl_En_Pu_Box
 * Description: An unused stone cube
 */

#include "z_en_pu_box.h"

#define FLAGS 0x00000010

#define THIS ((EnPubox*)thisx)

void EnPubox_Init(Actor* thisx, GlobalContext* globalCtx);
void EnPubox_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnPubox_Update(Actor* thisx, GlobalContext* globalCtx);
void EnPubox_Draw(Actor* thisx, GlobalContext* globalCtx);

const ActorInit En_Pu_box_InitVars = {
    ACTOR_EN_PU_BOX,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_PU_BOX,
    sizeof(EnPubox),
    (ActorFunc)EnPubox_Init,
    (ActorFunc)EnPubox_Destroy,
    (ActorFunc)EnPubox_Update,
    (ActorFunc)EnPubox_Draw,
};

extern Gfx D_06000380[];
extern UNK_TYPE D_060006D0;

void EnPubox_Init(Actor* thisx, GlobalContext* globalCtx) {
    u32 local_c = 0;
    EnPubox* this = THIS;

    switch (thisx->params) {
        case 0:
            Actor_SetScale(thisx, 0.0025f);
            break;
        case 1:
            Actor_SetScale(thisx, 0.005f);
            break;
        case 2:
            Actor_SetScale(thisx, 0.0075f);
            break;
        case 3:
            Actor_SetScale(thisx, 0.01f);
        default:
            break;
    }
    this->unk_164 = 1;
    thisx->colChkInfo.unk_10 = 0x14;
    thisx->colChkInfo.unk_12 = 0x32;
    thisx->uncullZoneDownward = 1200.0f;
    thisx->uncullZoneScale = 720.0f;
    ActorShape_Init(&thisx->shape, 0.0f, ActorShadow_DrawFunc_Circle, 6.0f);
    this->dyna.unk_160 = 0;
    this->dyna.unk_15C = 0;
    thisx->unk_1F = 1;
    thisx->gravity = -2.0f;
    DynaPolyInfo_Alloc(&D_060006D0, &local_c);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, thisx, local_c);
}

void EnPubox_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnPubox* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

void EnPubox_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnPubox* this = THIS;

    thisx->speedXZ += this->dyna.unk_150;
    thisx->posRot.rot.y = this->dyna.unk_158;
    thisx->speedXZ = (thisx->speedXZ < -2.5f) ? -2.5f : ((thisx->speedXZ > 2.5f) ? 2.5f : thisx->speedXZ);
    Math_SmoothScaleMaxMinF(&thisx->speedXZ, 0.0f, 1.0f, 1.0f, 0.0f);
    if (thisx->speedXZ != 0.0f) {
        Audio_PlaySoundGeneral(NA_SE_EV_ROCK_SLIDE - SFX_FLAG, &thisx->projectedPos, 4, &D_801333E0, &D_801333E0,
                               &D_801333E8);
    }
    this->dyna.unk_154 = 0.0f;
    this->dyna.unk_150 = 0.0f;
    Actor_MoveForward(thisx);
    func_8002E4B4(globalCtx, thisx, thisx->colChkInfo.unk_12, thisx->colChkInfo.unk_10, thisx->colChkInfo.unk_10, 0x1D);
    thisx->posRot2.pos = thisx->posRot.pos;
}

void EnPubox_Draw(Actor* thisx, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, &D_06000380);
}
