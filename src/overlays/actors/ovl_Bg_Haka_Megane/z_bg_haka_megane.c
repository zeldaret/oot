/*
 * File: z_bg_haka_megane.c
 * Overlay: ovl_Bg_Haka_Megane
 * Description: Shadow Temple and Bottom of the Well Lens of Truth objects
 */

#include "z_bg_haka_megane.h"

#include "attributes.h"
#include "ichain.h"
#include "play_state.h"

#include "assets/objects/object_hakach_objects/object_hakach_objects.h"
#include "assets/objects/object_haka_objects/object_haka_objects.h"

#define FLAGS (ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_DRAW_CULLING_DISABLED | ACTOR_FLAG_REACT_TO_LENS)

void BgHakaMegane_Init(Actor* thisx, PlayState* play);
void BgHakaMegane_Destroy(Actor* thisx, PlayState* play);
void BgHakaMegane_Update(Actor* thisx, PlayState* play);
void BgHakaMegane_Draw(Actor* thisx, PlayState* play);

void BgHakaMegane_WaitForObject(BgHakaMegane* this, PlayState* play);
void BgHakaMegane_UpdateState(BgHakaMegane* this, PlayState* play);
void BgHakaMegane_DoNothing(BgHakaMegane* this, PlayState* play);

ActorProfile Bg_Haka_Megane_Profile = {
    /**/ ACTOR_BG_HAKA_MEGANE,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_GAMEPLAY_KEEP,
    /**/ sizeof(BgHakaMegane),
    /**/ BgHakaMegane_Init,
    /**/ BgHakaMegane_Destroy,
    /**/ BgHakaMegane_Update,
    /**/ NULL,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

static CollisionHeader* sCollisionHeaders[BGHAKAMEGANE_TYPE_MAX] = {
    &gBotwRoom0FakeWallsAndFloorsCol,
    &gBotwRoom3ThreeFakeFloorsCol,
    NULL,
    &gShadowTempleFakeCryptWallGlowingSkullCol,
    &gShadowTempleFakeWallStrangeFaceCol,
    NULL,
    &gShadowTempleRoom5FakeWallsCol,
    &gShadowTempleRoom6FakeFloorCol,
    NULL,
    &gShadowTempleRoom10FakeWallCol,
    NULL,
    &gShadowTempleRoom18FakeWallCol,
    NULL,
};

static Gfx* sDLists[BGHAKAMEGANE_TYPE_MAX] = {
    gBotwRoom0FakeWallsAndFloorsDL,      gBotwRoom3ThreeFakeFloorsDL,
    gBotwRoom5HiddenPlatformDL,          gShadowTempleFakeCryptWallGlowingSkullDL,
    gShadowTempleFakeWallStrangeFaceDL,  gShadowTempleRoom3HiddenPlatformsDL,
    gShadowTempleRoom5FakeWallsDL,       gShadowTempleRoom6FakeFloorDL,
    gShadowTempleRoom9HiddenPlatformsDL, gShadowTempleRoom10FakeWallDL,
    gShadowTempleRoom15HiddenWallsDL,    gShadowTempleRoom18FakeWallDL,
    gShadowTempleRoom11HiddenObjectsDL,
};

void BgHakaMegane_Init(Actor* thisx, PlayState* play) {
    BgHakaMegane* this = (BgHakaMegane*)thisx;

    Actor_ProcessInitChain(thisx, sInitChain);
    DynaPolyActor_Init(&this->dyna, 0);

    if (thisx->params < 3) {
        this->requiredObjectSlot = Object_GetSlot(&play->objectCtx, OBJECT_HAKACH_OBJECTS);
    } else {
        this->requiredObjectSlot = Object_GetSlot(&play->objectCtx, OBJECT_HAKA_OBJECTS);
    }

    if (this->requiredObjectSlot < 0) {
        Actor_Kill(thisx);
    } else {
        this->actionFunc = BgHakaMegane_WaitForObject;
    }
}

void BgHakaMegane_Destroy(Actor* thisx, PlayState* play) {
    BgHakaMegane* this = (BgHakaMegane*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

void BgHakaMegane_WaitForObject(BgHakaMegane* this, PlayState* play) {
    if (Object_IsLoaded(&play->objectCtx, this->requiredObjectSlot)) {
        this->dyna.actor.objectSlot = this->requiredObjectSlot;
        this->dyna.actor.draw = BgHakaMegane_Draw;
        Actor_SetObjectDependency(play, &this->dyna.actor);

        if (play->roomCtx.curRoom.lensMode != LENS_MODE_SHOW_ACTORS) {
            CollisionHeader* colHeader;
            CollisionHeader* collision;

            this->actionFunc = BgHakaMegane_UpdateState;
            collision = sCollisionHeaders[this->dyna.actor.params];
            if (collision != NULL) {
                CollisionHeader_GetVirtual(collision, &colHeader);
                this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);
            }
        } else {
            this->actionFunc = BgHakaMegane_DoNothing;
        }
    }
}

void BgHakaMegane_UpdateState(BgHakaMegane* this, PlayState* play) {
    Actor* thisx = &this->dyna.actor;

    if (play->actorCtx.lensActive) {
        thisx->flags |= ACTOR_FLAG_REACT_TO_LENS;
        DynaPoly_DisableCollision(play, &play->colCtx.dyna, this->dyna.bgId);
    } else {
        thisx->flags &= ~ACTOR_FLAG_REACT_TO_LENS;
        DynaPoly_EnableCollision(play, &play->colCtx.dyna, this->dyna.bgId);
    }
}

void BgHakaMegane_DoNothing(BgHakaMegane* this, PlayState* play) {
}

void BgHakaMegane_Update(Actor* thisx, PlayState* play) {
    BgHakaMegane* this = (BgHakaMegane*)thisx;

    this->actionFunc(this, play);
}

void BgHakaMegane_Draw(Actor* thisx, PlayState* play) {
    UNUSED BgHakaMegane* this = (BgHakaMegane*)thisx;

    if (ACTOR_FLAGS_CHECK_ALL(thisx, ACTOR_FLAG_REACT_TO_LENS)) {
        Gfx_DrawDListXlu(play, sDLists[thisx->params]);
    } else {
        Gfx_DrawDListOpa(play, sDLists[thisx->params]);
    }

    if (thisx->params == BGHAKAMEGANE_TYPE_BOTW_ROOM_0_FAKE) {
        Gfx_DrawDListXlu(play, gBotwBloodSplatterDL);
    }
}
