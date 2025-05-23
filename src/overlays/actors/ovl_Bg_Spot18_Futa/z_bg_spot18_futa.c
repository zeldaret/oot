/*
 * File: z_bg_spot18_futa.c
 * Overlay: ovl_Bg_Spot18_Futa
 * Description: The lid to the spinning goron vase.
 */

#include "z_bg_spot18_futa.h"
#include "assets/objects/object_spot18_obj/object_spot18_obj.h"

#define FLAGS 0

void BgSpot18Futa_Init(Actor* thisx, PlayState* play);
void BgSpot18Futa_Destroy(Actor* thisx, PlayState* play);
void BgSpot18Futa_Update(Actor* thisx, PlayState* play);
void BgSpot18Futa_Draw(Actor* thisx, PlayState* play);

ActorProfile Bg_Spot18_Futa_Profile = {
    /**/ ACTOR_BG_SPOT18_FUTA,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_SPOT18_OBJ,
    /**/ sizeof(BgSpot18Futa),
    /**/ BgSpot18Futa_Init,
    /**/ BgSpot18Futa_Destroy,
    /**/ BgSpot18Futa_Update,
    /**/ BgSpot18Futa_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDistance, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 1000, ICHAIN_STOP),
};

void BgSpot18Futa_Init(Actor* thisx, PlayState* play) {
    BgSpot18Futa* this = (BgSpot18Futa*)thisx;
    s32 pad;
    CollisionHeader* colHeader = NULL;

    DynaPolyActor_Init(&this->dyna, 0);
    CollisionHeader_GetVirtual(&gGoronCityVaseLidCol, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
}

void BgSpot18Futa_Destroy(Actor* thisx, PlayState* play) {
    BgSpot18Futa* this = (BgSpot18Futa*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

void BgSpot18Futa_Update(Actor* thisx, PlayState* play) {
    BgSpot18Futa* this = (BgSpot18Futa*)thisx;
    s32 iVar1;

    if (this->dyna.actor.parent == NULL) {
        iVar1 = Math_StepToF(&this->dyna.actor.scale.x, 0, 0.005);

        if (iVar1 != 0) {
            Actor_Kill(&this->dyna.actor);
        } else {
            this->dyna.actor.scale.z = this->dyna.actor.scale.x;
            this->dyna.actor.scale.y = this->dyna.actor.scale.x;
        }
    }
}

void BgSpot18Futa_Draw(Actor* thisx, PlayState* play) {
    Gfx_DrawDListOpa(play, gGoronCityVaseLidDL);
}
