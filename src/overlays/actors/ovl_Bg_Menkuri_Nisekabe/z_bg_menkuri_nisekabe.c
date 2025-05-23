/*
 * File: z_bg_menkuri_nisekabe.c
 * Overlay: ovl_Bg_Menkuri_Nisekabe
 * Description: False Stone Walls (Gerudo Training Grounds)
 */

#include "z_bg_menkuri_nisekabe.h"

#include "z64play.h"

#include "assets/objects/object_menkuri_objects/object_menkuri_objects.h"

#define FLAGS 0

void BgMenkuriNisekabe_Init(Actor* thisx, PlayState* play);
void BgMenkuriNisekabe_Destroy(Actor* thisx, PlayState* play);
void BgMenkuriNisekabe_Update(Actor* thisx, PlayState* play);
void BgMenkuriNisekabe_Draw(Actor* thisx, PlayState* play);

ActorProfile Bg_Menkuri_Nisekabe_Profile = {
    /**/ ACTOR_BG_MENKURI_NISEKABE,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_MENKURI_OBJECTS,
    /**/ sizeof(BgMenkuriNisekabe),
    /**/ BgMenkuriNisekabe_Init,
    /**/ BgMenkuriNisekabe_Destroy,
    /**/ BgMenkuriNisekabe_Update,
    /**/ BgMenkuriNisekabe_Draw,
};

static Gfx* sDLists[] = { gGTGFakeWallDL, gGTGFakeCeilingDL };

void BgMenkuriNisekabe_Init(Actor* thisx, PlayState* play) {
    BgMenkuriNisekabe* this = (BgMenkuriNisekabe*)thisx;

    Actor_SetScale(&this->actor, 0.1f);
}

void BgMenkuriNisekabe_Destroy(Actor* thisx, PlayState* play) {
}

void BgMenkuriNisekabe_Update(Actor* thisx, PlayState* play) {
    BgMenkuriNisekabe* this = (BgMenkuriNisekabe*)thisx;

    if (play->actorCtx.lensActive) {
        this->actor.flags |= ACTOR_FLAG_REACT_TO_LENS;
    } else {
        this->actor.flags &= ~ACTOR_FLAG_REACT_TO_LENS;
    }
}

void BgMenkuriNisekabe_Draw(Actor* thisx, PlayState* play) {
    BgMenkuriNisekabe* this = (BgMenkuriNisekabe*)thisx;
    u32 index = PARAMS_GET_U(this->actor.params, 0, 8);

    if (ACTOR_FLAGS_CHECK_ALL(&this->actor, ACTOR_FLAG_REACT_TO_LENS)) {
        Gfx_DrawDListXlu(play, sDLists[index]);
    } else {
        Gfx_DrawDListOpa(play, sDLists[index]);
    }
}
