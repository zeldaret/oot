/*
 * File: z_bg_gnd_nisekabe.c
 * Overlay: ovl_Bg_Gnd_Nisekabe
 * Description: Ganon's Castle Fake Wall
 */

#include "z_bg_gnd_nisekabe.h"
#include "assets/objects/object_demo_kekkai/object_demo_kekkai.h"

#define FLAGS ACTOR_FLAG_UPDATE_CULLING_DISABLED

void BgGndNisekabe_Init(Actor* thisx, PlayState* play);
void BgGndNisekabe_Destroy(Actor* thisx, PlayState* play);
void BgGndNisekabe_Update(Actor* thisx, PlayState* play);
void BgGndNisekabe_Draw(Actor* thisx, PlayState* play);

ActorProfile Bg_Gnd_Nisekabe_Profile = {
    /**/ ACTOR_BG_GND_NISEKABE,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_DEMO_KEKKAI,
    /**/ sizeof(BgGndNisekabe),
    /**/ BgGndNisekabe_Init,
    /**/ BgGndNisekabe_Destroy,
    /**/ BgGndNisekabe_Update,
    /**/ BgGndNisekabe_Draw,
};

void BgGndNisekabe_Init(Actor* thisx, PlayState* play) {
    BgGndNisekabe* this = (BgGndNisekabe*)thisx;

    Actor_SetScale(&this->actor, 0.1);
    this->actor.cullingVolumeDistance = 3000.0;
}

void BgGndNisekabe_Destroy(Actor* thisx, PlayState* play) {
}

void BgGndNisekabe_Update(Actor* thisx, PlayState* play) {
    BgGndNisekabe* this = (BgGndNisekabe*)thisx;

    if (play->actorCtx.lensActive) {
        this->actor.flags |= ACTOR_FLAG_REACT_TO_LENS;
    } else {
        this->actor.flags &= ~ACTOR_FLAG_REACT_TO_LENS;
    }
}

void BgGndNisekabe_Draw(Actor* thisx, PlayState* play) {
    static Gfx* dLists[] = {
        gLightTrialFakeWallDL,
        gGanonsCastleUnusedFakeWallDL,
        gGanonsCastleScrubsFakeWallDL,
    };
    BgGndNisekabe* this = (BgGndNisekabe*)thisx;
    u32 index = PARAMS_GET_U(this->actor.params, 0, 8);

    if (CHECK_FLAG_ALL(this->actor.flags, ACTOR_FLAG_REACT_TO_LENS)) {
        Gfx_DrawDListXlu(play, dLists[index]);
    } else {
        Gfx_DrawDListOpa(play, dLists[index]);
    }
}
