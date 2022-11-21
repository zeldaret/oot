/*
 * File: z_door_toki.c
 * Overlay: ovl_Door_Toki
 * Description: Door of Time Collision
 */

#include "z_door_toki.h"
#include "assets/objects/object_toki_objects/object_toki_objects.h"

#define FLAGS 0

void DoorToki_Init(Actor* thisx, PlayState* play);
void DoorToki_Destroy(Actor* thisx, PlayState* play);
void DoorToki_Update(Actor* thisx, PlayState* play);

ActorInit Door_Toki_InitVars = {
    ACTOR_DOOR_TOKI,
    ACTORCAT_BG,
    FLAGS,
    OBJECT_TOKI_OBJECTS,
    sizeof(DoorToki),
    (ActorFunc)DoorToki_Init,
    (ActorFunc)DoorToki_Destroy,
    (ActorFunc)DoorToki_Update,
    NULL,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 1000, ICHAIN_STOP),
};

void DoorToki_Init(Actor* thisx, PlayState* play) {
    s32 pad;
    DoorToki* this = (DoorToki*)thisx;
    CollisionHeader* colHeader = NULL;

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    DynaPolyActor_Init(&this->dyna, 0);
    CollisionHeader_GetVirtual(&gDoorTokiCol, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);
}

void DoorToki_Destroy(Actor* thisx, PlayState* play) {
    DoorToki* this = (DoorToki*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

void DoorToki_Update(Actor* thisx, PlayState* play) {
    DoorToki* this = (DoorToki*)thisx;

    if (GET_EVENTCHKINF(EVENTCHKINF_4B)) {
        DynaPoly_DisableCollision(play, &play->colCtx.dyna, this->dyna.bgId);
    } else {
        DynaPoly_EnableCollision(play, &play->colCtx.dyna, this->dyna.bgId);
    }
}
