/*
 * File: z_bg_mizu_uzu.c
 * Overlay: ovl_Bg_Mizu_Uzu
 * Description: Water Noise
 */

#include "z_bg_mizu_uzu.h"
#include "assets/objects/object_mizu_objects/object_mizu_objects.h"

#define FLAGS 0

void BgMizuUzu_Init(Actor* thisx, PlayState* play);
void BgMizuUzu_Destroy(Actor* thisx, PlayState* play);
void BgMizuUzu_Update(Actor* thisx, PlayState* play);
void BgMizuUzu_Draw(Actor* thisx, PlayState* play);

void func_8089F788(BgMizuUzu* this, PlayState* play);

ActorProfile Bg_Mizu_Uzu_Profile = {
    /**/ ACTOR_BG_MIZU_UZU,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_MIZU_OBJECTS,
    /**/ sizeof(BgMizuUzu),
    /**/ BgMizuUzu_Init,
    /**/ BgMizuUzu_Destroy,
    /**/ BgMizuUzu_Update,
    /**/ BgMizuUzu_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(cullingVolumeScale, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 1000, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

void BgMizuUzu_Init(Actor* thisx, PlayState* play) {
    s32 pad;
    BgMizuUzu* this = (BgMizuUzu*)thisx;
    CollisionHeader* colHeader = NULL;
    s32 pad2;

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    DynaPolyActor_Init(&this->dyna, 0);
    CollisionHeader_GetVirtual(&gObjectMizuObjectsUzuCol_0074EC, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);
    this->actionFunc = func_8089F788;
}

void BgMizuUzu_Destroy(Actor* thisx, PlayState* play) {
    BgMizuUzu* this = (BgMizuUzu*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

void func_8089F788(BgMizuUzu* this, PlayState* play) {
    Actor* thisx = &this->dyna.actor;

    if (GET_PLAYER(play)->currentBoots == PLAYER_BOOTS_IRON) {
        DynaPoly_DisableCollision(play, &play->colCtx.dyna, this->dyna.bgId);
    } else {
        DynaPoly_EnableCollision(play, &play->colCtx.dyna, this->dyna.bgId);
    }
    Actor_PlaySfx(thisx, NA_SE_EV_WATER_CONVECTION - SFX_FLAG);
    thisx->shape.rot.y += 0x1C0;
}

void BgMizuUzu_Update(Actor* thisx, PlayState* play) {
    BgMizuUzu* this = (BgMizuUzu*)thisx;

    this->actionFunc(this, play);
}

void BgMizuUzu_Draw(Actor* thisx, PlayState* play) {
}
