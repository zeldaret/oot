/*
 * File: z_obj_makekinsuta.c
 * Overlay: ovl_Obj_Makekinsuta
 * Description: Skulltula Sprouting from Bean Spot
 */

#include "z_obj_makekinsuta.h"
#include "terminal.h"

#define FLAGS ACTOR_FLAG_4

void ObjMakekinsuta_Init(Actor* thisx, PlayState* play);
void ObjMakekinsuta_Update(Actor* thisx, PlayState* play);

void func_80B98320(ObjMakekinsuta* this, PlayState* play);
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

    if (PARAMS_GET_NOSHIFT(this->actor.params, 13, 2) == 0x4000) {
        PRINTF(VT_FGCOL(BLUE));
        // "Gold Star Enemy(arg_data %x)"
        PRINTF("金スタ発生敵(arg_data %x)\n", this->actor.params);
        PRINTF(VT_RST);
    } else {
        PRINTF(VT_COL(YELLOW, BLACK));
        // "Invalid Argument (arg_data %x)(%s %d)"
        PRINTF("引数不正 (arg_data %x)(%s %d)\n", this->actor.params, "../z_obj_makekinsuta.c", 119);
        PRINTF(VT_RST);
    }
    this->actionFunc = func_80B98320;
}

void func_80B98320(ObjMakekinsuta* this, PlayState* play) {
    if (this->unk_152 != 0) {
        if (this->timer >= 60 && !func_8002DEEC(GET_PLAYER(play))) {
            Actor_Spawn(&play->actorCtx, play, ACTOR_EN_SW, this->actor.world.pos.x, this->actor.world.pos.y,
                        this->actor.world.pos.z, 0, this->actor.shape.rot.y, 0, (this->actor.params | 0x8000));
            this->actionFunc = ObjMakekinsuta_DoNothing;
        } else {
            this->timer++;
        }
    } else {
        this->timer = 0;
    }
}

void ObjMakekinsuta_DoNothing(ObjMakekinsuta* this, PlayState* play) {
}

void ObjMakekinsuta_Update(Actor* thisx, PlayState* play) {
    ObjMakekinsuta* this = (ObjMakekinsuta*)thisx;

    this->actionFunc(this, play);
}
