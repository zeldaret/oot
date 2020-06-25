/*
 * File: z_en_lightbox.c
 * Overlay: ovl_En_Lightbox
 * Description:
 */

#include "z_en_lightbox.h"

#define FLAGS 0x00000010

#define THIS ((EnLightbox*)thisx)

void EnLightbox_Init(Actor* thisx, GlobalContext* globalCtx);
void EnLightbox_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnLightbox_Update(Actor* thisx, GlobalContext* globalCtx);
void EnLightbox_Draw(Actor* thisx, GlobalContext* globalCtx);

const ActorInit En_Lightbox_InitVars = {
    ACTOR_EN_LIGHTBOX,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_LIGHTBOX,
    sizeof(EnLightbox),
    (ActorFunc)EnLightbox_Init,
    (ActorFunc)EnLightbox_Destroy,
    (ActorFunc)EnLightbox_Update,
    (ActorFunc)EnLightbox_Draw,
};

extern Gfx D_06000B70[];
extern UNK_TYPE D_06001F10;

void EnLightbox_Init(Actor* thisx, GlobalContext* globalCtx) {
    u32 local_c = 0;
    EnLightbox* this = THIS;
    s32 pad[4];

    switch (thisx->params) {
        case 0:
            Actor_SetScale(thisx, 0.025f);
            break;
        case 1:
            Actor_SetScale(thisx, 0.05f);
            break;
        case 2:
            Actor_SetScale(thisx, 0.075f);
            break;
        case 3:
            Actor_SetScale(thisx, 0.1f);
        default:
            break;
    }

    thisx->posRot2.pos = thisx->posRot.pos;
    thisx->colChkInfo.unk_10 = 0x1E;
    thisx->colChkInfo.unk_12 = 0x32;
    ActorShape_Init(&thisx->shape, 0.0f, ActorShadow_DrawFunc_Circle, 6.0f);
    this->dyna.unk_160 = 0;
    this->dyna.unk_15C = 0;
    thisx->unk_1F = 0;
    thisx->gravity = -2.0f;
    DynaPolyInfo_Alloc(&D_06001F10, &local_c);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, thisx, local_c);
}

void EnLightbox_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnLightbox* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

void EnLightbox_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnLightbox* this = THIS;

    if (this->dyna.unk_162 != 0) {
        if (func_8002F5A0(thisx, globalCtx)) {
            this->dyna.unk_162 = 0;
        }
    } else {
        if (func_8002F410(thisx, globalCtx)) {
            this->dyna.unk_162++;
        } else {
            if (thisx->speedXZ) {
                if (thisx->bgCheckFlags & 8) {
                    thisx->posRot.rot.y = (thisx->posRot.rot.y + thisx->wallPolyRot) - thisx->posRot.rot.y;
                    Audio_PlaySoundGeneral(NA_SE_EV_BOMB_BOUND, &thisx->projectedPos, 4, &D_801333E0, &D_801333E0,
                                           &D_801333E8);
                    thisx->speedXZ *= 0.7f;
                    thisx->bgCheckFlags &= ~0x8;
                }
            }

            if ((thisx->bgCheckFlags & 1) == 0) {
                Math_ApproxF(&thisx->speedXZ, 0, IREG(57) / 100.0f);
            } else {
                Math_ApproxF(&thisx->speedXZ, 0, IREG(58) / 100.0f);
                if ((thisx->bgCheckFlags & 2) && (thisx->velocity.y < IREG(59) / 100.0f)) {
                    Audio_PlaySoundGeneral(NA_SE_EV_BOMB_BOUND, &thisx->projectedPos, 4, &D_801333E0, &D_801333E0,
                                           &D_801333E8);
                    thisx->velocity.y *= IREG(60) / 100.0f;
                    thisx->bgCheckFlags &= ~0x1;
                } else {
                    func_8002F580(thisx, globalCtx);
                }
            }
        }
    }
    Actor_MoveForward(thisx);
    func_8002E4B4(globalCtx, thisx, thisx->colChkInfo.unk_12, thisx->colChkInfo.unk_10, thisx->colChkInfo.unk_10, 0x1D);
    thisx->posRot2.pos = thisx->posRot.pos;
}

void EnLightbox_Draw(Actor* thisx, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, D_06000B70);
}
