/*
 * File: z_door_gerudo.c
 * Overlay: ovl_Door_Gerudo
 * Description: Metal grate door
 */

#include "z_door_gerudo.h"

#include "gfx.h"
#include "gfx_setupdl.h"
#include "ichain.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "z_lib.h"
#include "z64play.h"
#include "z64player.h"
#include "z64save.h"

#include "assets/objects/object_door_gerudo/object_door_gerudo.h"

#define FLAGS 0

void DoorGerudo_Init(Actor* thisx, PlayState* play);
void DoorGerudo_Destroy(Actor* thisx, PlayState* play);
void DoorGerudo_Update(Actor* thisx, PlayState* play);
void DoorGerudo_Draw(Actor* thisx, PlayState* play);

void func_8099485C(DoorGerudo* this, PlayState* play);
s32 func_80994750(DoorGerudo* this, PlayState* play);
void func_8099496C(DoorGerudo* this, PlayState* play);
void func_809949C8(DoorGerudo* this, PlayState* play);

ActorProfile Door_Gerudo_Profile = {
    /**/ ACTOR_DOOR_GERUDO,
    /**/ ACTORCAT_ITEMACTION,
    /**/ FLAGS,
    /**/ OBJECT_DOOR_GERUDO,
    /**/ sizeof(DoorGerudo),
    /**/ DoorGerudo_Init,
    /**/ DoorGerudo_Destroy,
    /**/ DoorGerudo_Update,
    /**/ DoorGerudo_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F(scale, 1, ICHAIN_STOP),
};

void DoorGerudo_Init(Actor* thisx, PlayState* play) {
    s32 pad;
    DoorGerudo* this = (DoorGerudo*)thisx;
    CollisionHeader* colHeader = NULL;

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    CollisionHeader_GetVirtual(&gGerudoCellDoorCol, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, thisx, colHeader);

    if (Flags_GetSwitch(play, PARAMS_GET_U(thisx->params, 0, 6))) {
        this->actionFunc = func_8099485C;
        thisx->world.pos.y = thisx->home.pos.y + 200.0f;
    } else {
        this->actionFunc = func_8099485C;
        this->unk_166 = 10;
    }
}

void DoorGerudo_Destroy(Actor* thisx, PlayState* play) {
    DoorGerudo* this = (DoorGerudo*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

f32 func_809946BC(PlayState* play, DoorGerudo* this, f32 arg2, f32 arg3, f32 arg4) {
    Player* player = GET_PLAYER(play);
    Vec3f playerPos;
    Vec3f sp1C;

    playerPos.x = player->actor.world.pos.x;
    playerPos.y = player->actor.world.pos.y + arg2;
    playerPos.z = player->actor.world.pos.z;
    Actor_WorldToActorCoords(&this->dyna.actor, &sp1C, &playerPos);

    if ((arg3 < fabsf(sp1C.x)) || (arg4 < fabsf(sp1C.y))) {
        return MAXFLOAT;
    } else {
        return sp1C.z;
    }
}

s32 func_80994750(DoorGerudo* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    f32 temp_f0;
    s16 rotYDiff;

    if (!Player_InCsMode(play)) {
        temp_f0 = func_809946BC(play, this, 0.0f, 20.0f, 15.0f);
        if (fabsf(temp_f0) < 40.0f) {
            rotYDiff = player->actor.shape.rot.y - this->dyna.actor.shape.rot.y;
            if (temp_f0 > 0.0f) {
                rotYDiff = 0x8000 - rotYDiff;
            }
            if (ABS(rotYDiff) < 0x2000) {
                return (temp_f0 >= 0.0f) ? 1.0f : -1.0f;
            }
        }
    }
    return 0;
}

void func_8099485C(DoorGerudo* this, PlayState* play) {
    if (this->isActive) {
        this->actionFunc = func_8099496C;
        gSaveContext.save.info.inventory.dungeonKeys[gSaveContext.mapIndex] -= 1;
        Flags_SetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 0, 6));
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_CHAIN_KEY_UNLOCK);
    } else {
        s32 direction = func_80994750(this, play);

        if (direction != 0) {
            Player* player = GET_PLAYER(play);

            if (gSaveContext.save.info.inventory.dungeonKeys[gSaveContext.mapIndex] <= 0) {
                player->naviTextId = -0x203;
            } else if (!Flags_GetCollectible(play, PARAMS_GET_U(this->dyna.actor.params, 8, 5))) {
                player->naviTextId = -0x225;
            } else {
                player->doorType = PLAYER_DOORTYPE_SLIDING;
                player->doorDirection = direction;
                player->doorActor = &this->dyna.actor;
                player->doorTimer = 10;
            }
        }
    }
}

void func_8099496C(DoorGerudo* this, PlayState* play) {
    if (DECR(this->unk_166) == 0) {
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_SLIDE_DOOR_OPEN);
        this->actionFunc = func_809949C8;
    }
}

void func_809949C8(DoorGerudo* this, PlayState* play) {
    Math_StepToF(&this->dyna.actor.velocity.y, 15.0f, 3.0f);
    Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y + 200.0f, this->dyna.actor.velocity.y);
}

void DoorGerudo_Update(Actor* thisx, PlayState* play) {
    DoorGerudo* this = (DoorGerudo*)thisx;

    this->actionFunc(this, play);
}

void DoorGerudo_Draw(Actor* thisx, PlayState* play) {
    DoorGerudo* this = (DoorGerudo*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_door_gerudo.c", 361);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);

    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_door_gerudo.c", 365);
    gSPDisplayList(POLY_OPA_DISP++, gGerudoCellDoorDL);

    if (this->unk_166 != 0) {
        Matrix_Scale(0.01f, 0.01f, 0.025f, MTXMODE_APPLY);
        Actor_DrawDoorLock(play, this->unk_166, DOORLOCK_NORMAL);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_door_gerudo.c", 377);
}
