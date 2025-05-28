/*
 * File: z_obj_blockstop.c
 * Overlay: ovl_Obj_Blockstop
 * Description: Stops blocks and sets relevant flags when the block is in position.
 */

#include "z_obj_blockstop.h"
#include "overlays/actors/ovl_Obj_Oshihiki/z_obj_oshihiki.h"

#include "sfx.h"
#include "z_lib.h"
#include "z64play.h"

#define FLAGS 0

void ObjBlockstop_Init(Actor* thisx, PlayState* play);
void ObjBlockstop_Destroy(Actor* thisx, PlayState* play);
void ObjBlockstop_Update(Actor* thisx, PlayState* play);

ActorProfile Obj_Blockstop_Profile = {
    /**/ ACTOR_OBJ_BLOCKSTOP,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_GAMEPLAY_KEEP,
    /**/ sizeof(ObjBlockstop),
    /**/ ObjBlockstop_Init,
    /**/ ObjBlockstop_Destroy,
    /**/ ObjBlockstop_Update,
    /**/ NULL,
};

void ObjBlockstop_Init(Actor* thisx, PlayState* play) {
    ObjBlockstop* this = (ObjBlockstop*)thisx;

    if (Flags_GetSwitch(play, this->actor.params)) {
        Actor_Kill(&this->actor);
    } else {
        this->actor.world.pos.y++;
    }
}

void ObjBlockstop_Destroy(Actor* thisx, PlayState* play) {
}

void ObjBlockstop_Update(Actor* thisx, PlayState* play) {
    ObjBlockstop* this = (ObjBlockstop*)thisx;
    DynaPolyActor* dynaPolyActor;
    Vec3f sp4C;
    s32 bgId;
    s32 pad;

    if (BgCheck_EntityLineTest2(&play->colCtx, &this->actor.home.pos, &this->actor.world.pos, &sp4C,
                                &this->actor.floorPoly, false, false, true, true, &bgId, &this->actor)) {
        dynaPolyActor = DynaPoly_GetActor(&play->colCtx, bgId);

        if (dynaPolyActor != NULL && dynaPolyActor->actor.id == ACTOR_OBJ_OSHIHIKI) {
            if (PARAMS_GET_U(dynaPolyActor->actor.params, 0, 4) == PUSHBLOCK_HUGE_START_ON ||
                PARAMS_GET_U(dynaPolyActor->actor.params, 0, 4) == PUSHBLOCK_HUGE_START_OFF) {
                Sfx_PlaySfxCentered(NA_SE_SY_CORRECT_CHIME);
            } else {
                Sfx_PlaySfxCentered(NA_SE_SY_TRE_BOX_APPEAR);
            }

            Flags_SetSwitch(play, this->actor.params);
            Actor_Kill(&this->actor);
        }
    }
}
