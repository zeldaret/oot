/*
 * File: z_obj_makekinsuta.c
 * Overlay: ovl_Obj_Makekinsuta
 * Description: Spawns a Gold Skulltula Sprouting from Bean Spot
 */

#include "z_obj_makekinsuta.h"

#include "printf.h"
#include "terminal.h"
#include "translation.h"
#include "play_state.h"
#include "player.h"

#define FLAGS ACTOR_FLAG_UPDATE_CULLING_DISABLED

void ObjMakekinsuta_Init(Actor* thisx, PlayState* play);
void ObjMakekinsuta_Update(Actor* thisx, PlayState* play);

void ObjMakekinsuta_Wait(ObjMakekinsuta* this, PlayState* play);
void ObjMakekinsuta_DoNothing(ObjMakekinsuta* this, PlayState* play);

ActorProfile Obj_Makekinsuta_Profile = {
    /**/ ACTOR_OBJ_MAKEKINSUTA,
    /**/ ACTORCAT_ITEMACTION,
    /**/ FLAGS,
    /**/ OBJECT_GAMEPLAY_KEEP,
    /**/ sizeof(ObjMakekinsuta),
    /**/ ObjMakekinsuta_Init,
    /**/ Actor_Noop,
    /**/ ObjMakekinsuta_Update,
    /**/ NULL,
};

void ObjMakekinsuta_Init(Actor* thisx, PlayState* play) {
    ObjMakekinsuta* this = (ObjMakekinsuta*)thisx;

    // Make sure params are set for soil Gold Skulltula
    if (PARAMS_GET_NOSHIFT(this->actor.params, 13, 2) == 0x4000) {
        PRINTF_COLOR_BLUE();
        PRINTF(T("金スタ発生敵(arg_data %x)\n", "Gold Star Enemy(arg_data %x)\n"), this->actor.params);
        PRINTF_RST();
    } else {
        PRINTF_COLOR_WARNING();
        PRINTF(T("引数不正 (arg_data %x)(%s %d)\n", "Invalid Argument (arg_data %x)(%s %d)\n"), this->actor.params,
               "../z_obj_makekinsuta.c", 119);
        PRINTF_RST();
    }
    this->actionFunc = ObjMakekinsuta_Action_Wait;
}

void ObjMakekinsuta_Action_Wait(ObjMakekinsuta* this, PlayState* play) {
    // bugDig is set to 1 by the digging bugs
    if (this->bugDig != 0) {
        if (this->timer >= 60 && !Player_IsDeadOrCutscene(GET_PLAYER(play))) {
            Actor_Spawn(&play->actorCtx, play, ACTOR_EN_SW, this->actor.world.pos.x, this->actor.world.pos.y,
                        this->actor.world.pos.z, 0, this->actor.shape.rot.y, 0, (this->actor.params | 0x8000));
            this->actionFunc = ObjMakekinsuta_Action_DoNothing;
        } else {
            this->timer++;
        }
    } else {
        this->timer = 0;
    }
}

void ObjMakekinsuta_Action_DoNothing(ObjMakekinsuta* this, PlayState* play) {
}

void ObjMakekinsuta_Update(Actor* thisx, PlayState* play) {
    ObjMakekinsuta* this = (ObjMakekinsuta*)thisx;

    this->actionFunc(this, play);
}
