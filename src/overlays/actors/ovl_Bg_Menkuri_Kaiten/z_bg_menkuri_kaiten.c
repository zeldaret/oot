/*
 * File: z_bg_menkuri_kaiten.c
 * Overlay: Bg_Menkuri_Kaiten
 * Description: Large rotating stone ring used in Gerudo Training Grounds and Forest Temple.
 */

#include "z_bg_menkuri_kaiten.h"
#include "assets/objects/object_menkuri_objects/object_menkuri_objects.h"

#define FLAGS (ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_DRAW_CULLING_DISABLED)

void BgMenkuriKaiten_Init(Actor* thisx, PlayState* play);
void BgMenkuriKaiten_Destroy(Actor* thisx, PlayState* play);
void BgMenkuriKaiten_Update(Actor* thisx, PlayState* play);
void BgMenkuriKaiten_Draw(Actor* thisx, PlayState* play);

ActorProfile Bg_Menkuri_Kaiten_Profile = {
    /**/ ACTOR_BG_MENKURI_KAITEN,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_MENKURI_OBJECTS,
    /**/ sizeof(BgMenkuriKaiten),
    /**/ BgMenkuriKaiten_Init,
    /**/ BgMenkuriKaiten_Destroy,
    /**/ BgMenkuriKaiten_Update,
    /**/ BgMenkuriKaiten_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

void BgMenkuriKaiten_Init(Actor* thisx, PlayState* play) {
    BgMenkuriKaiten* this = (BgMenkuriKaiten*)thisx;
    s32 pad;
    CollisionHeader* colHeader = NULL;

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    DynaPolyActor_Init(&this->dyna, DYNA_TRANSFORM_POS | DYNA_TRANSFORM_ROT_Y);
    CollisionHeader_GetVirtual(&gGTGRotatingRingPlatformCol, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);
}

void BgMenkuriKaiten_Destroy(Actor* thisx, PlayState* play) {
    BgMenkuriKaiten* this = (BgMenkuriKaiten*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

void BgMenkuriKaiten_Update(Actor* thisx, PlayState* play) {
    BgMenkuriKaiten* this = (BgMenkuriKaiten*)thisx;

    if (!Flags_GetSwitch(play, this->dyna.actor.params) && DynaPolyActor_IsPlayerAbove(&this->dyna)) {
        Actor_PlaySfx_Flagged(&this->dyna.actor, NA_SE_EV_ELEVATOR_MOVE - SFX_FLAG);
        this->dyna.actor.shape.rot.y += 0x80;
    }
}

void BgMenkuriKaiten_Draw(Actor* thisx, PlayState* play) {
    Gfx_DrawDListOpa(play, gGTGRotatingRingPlatformDL);
}
