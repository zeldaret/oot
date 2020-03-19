/*
 * File: z_en_lightbox.c
 * Overlay: ovl_En_Lightbox
 * Description:
*/

#include "z_en_lightbox.h"

#define ROOM  0x00
#define FLAGS 0x00000010

static void EnLightbox_Init(EnLightbox* this, GlobalContext* globalCtx);
static void EnLightbox_Destroy(EnLightbox* this, GlobalContext* globalCtx);
static void EnLightbox_Update(EnLightbox* this, GlobalContext* globalCtx);
static void EnLightbox_Draw(EnLightbox* this, GlobalContext* globalCtx);

const ActorInit En_Lightbox_InitVars =
{
    ACTOR_EN_LIGHTBOX,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_LIGHTBOX,
    sizeof(EnLightbox),
    (ActorFunc)EnLightbox_Init,
    (ActorFunc)EnLightbox_Destroy,
    (ActorFunc)EnLightbox_Update,
    (ActorFunc)EnLightbox_Draw,
};

extern u32 D_06000B70;
extern u32 D_06001F10;

static void EnLightbox_Init(EnLightbox* this, GlobalContext* globalCtx)
{
    u32 local_c = 0;
    Actor* thisx = &this->dyna.actor;
    s32 pad[4];

    switch(thisx->params){
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
    thisx->sub_98.unk_10 = 0x1E;
    thisx->sub_98.unk_12 = 0x32;
    ActorShape_Init(&thisx->shape, 0.0f, ActorShadow_DrawFunc_Circle, 6.0f);
    this->dyna.unk_160 = 0;
    this->dyna.unk_15C = 0;
    thisx->unk_1F = 0;
    thisx->gravity = -2.0f;
    DynaPolyInfo_Alloc(&D_06001F10, &local_c);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, thisx, local_c);
}

static void EnLightbox_Destroy(EnLightbox* this, GlobalContext* globalCtx)
{
    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

static void EnLightbox_Update(EnLightbox* this, GlobalContext* globalCtx)
{
    Actor* thisx = &this->dyna.actor;

    if (this->dyna.unk_162 != 0)
    {
        if (func_8002F5A0(thisx, globalCtx))
        {
            this->dyna.unk_162 = 0;
        }
    }
    else
    {
        if (func_8002F410(thisx, globalCtx))
        {
            this->dyna.unk_162++;
        }
        else
        {
            if (thisx->speedXZ)
            {
                if (thisx->bgCheckFlags & 8)
                {
                    thisx->posRot.rot.y = (thisx->posRot.rot.y + thisx->unk_7E) - thisx->posRot.rot.y;
                    Audio_PlaySoundGeneral(NA_SE_EV_BOMB_BOUND, &thisx->unk_E4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                    thisx->speedXZ *= 0.7f;
                    thisx->bgCheckFlags &= ~0x8;
                }
            }

            if ((thisx->bgCheckFlags & 1) == 0)
            {
                Math_ApproxF(&thisx->speedXZ, 0, IREG(57) / 100.0f);
            }
            else
            {
                Math_ApproxF(&thisx->speedXZ, 0, IREG(58) / 100.0f);
                if ((thisx->bgCheckFlags & 2) && (thisx->velocity.y < IREG(59) / 100.0f))
                {
                    Audio_PlaySoundGeneral(NA_SE_EV_BOMB_BOUND, &thisx->unk_E4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                    thisx->velocity.y *= IREG(60) / 100.0f;
                    thisx->bgCheckFlags &= ~0x1;
                }
                else
                {
                    func_8002F580(thisx, globalCtx);
                }
            }
        }
    }
    Actor_MoveForward(thisx);
    func_8002E4B4(globalCtx, thisx, thisx->sub_98.unk_12, thisx->sub_98.unk_10, thisx->sub_98.unk_10, 0x1D);
    thisx->posRot2.pos = thisx->posRot.pos;
}

static void EnLightbox_Draw(EnLightbox* this, GlobalContext* globalCtx)
{
    Draw_DListOpa(globalCtx, &D_06000B70);
}
