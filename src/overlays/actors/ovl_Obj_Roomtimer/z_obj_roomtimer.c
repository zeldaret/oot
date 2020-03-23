/*
 * File: z_obj_roomtimer.c
 * Overlay: ovl_Obj_Roomtimer
 * Description:
 */

#include <ultra64.h>
#include <global.h>
#include <z64.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ActorFunc updateFunc;
    /* 0x0150 */ u32 switchFlag;
} ActorRoomTimer; // size = 0x0154

#define ROOM 0x00
#define FLAGS 0x00000010

static void Init(ActorRoomTimer* this, GlobalContext* globalCtx);
static void Destroy(ActorRoomTimer* this, GlobalContext* globalCtx);
static void Update(ActorRoomTimer* this, GlobalContext* globalCtx);
static void func_80B9D054(ActorRoomTimer* this, GlobalContext* globalCtx);
static void func_80B9D0B0(ActorRoomTimer* this, GlobalContext* globalCtx);

const ActorInit Obj_Roomtimer_InitVars = {
    ACTOR_OBJ_ROOMTIMER,
    ACTORTYPE_ENEMY,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(ActorRoomTimer),
    (ActorFunc)Init,
    (ActorFunc)Destroy,
    (ActorFunc)Update,
    (ActorFunc)NULL,
};

static void Init(ActorRoomTimer* this, GlobalContext* globalCtx) {
    s16 params = this->actor.params;

    this->switchFlag = (params >> 10) & 0x3F;
    this->actor.params = params & 0x3FF;
    params = this->actor.params;

    if (params != 0x3FF) {
        if (params > 600) {
            this->actor.params = 600;
        } else {
            this->actor.params = params;
        }
    }

    this->updateFunc = (ActorFunc)func_80B9D054;
}

static void Destroy(ActorRoomTimer* this, GlobalContext* globalCtx) {
    if (this->actor.params != 0x3FF) {
        if (gSaveContext.timer_1_value > 0) {
            gSaveContext.timer_1_state = 10;
        }
    }
}

static void func_80B9D054(ActorRoomTimer* this, GlobalContext* globalCtx) {
    if (this->actor.params != 0x3FF) {
        func_80088B34(this->actor.params);
    }

    Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORTYPE_PROP);
    this->updateFunc = (ActorFunc)func_80B9D0B0;
}

static void func_80B9D0B0(ActorRoomTimer* this, GlobalContext* globalCtx) {
    if (Flags_GetTempClear(globalCtx, this->actor.room)) {
        if (this->actor.params != 0x3FF) {
            gSaveContext.timer_1_state = 10;
        }

        Flags_SetClear(globalCtx, this->actor.room);
        Flags_SetSwitch(globalCtx, this->switchFlag);
        func_80078884(NA_SE_SY_CORRECT_CHIME);
        Actor_Kill(&this->actor);
    } else {
        if (this->actor.params != 0x3FF) {
            if (gSaveContext.timer_1_value == 0) {
                Audio_PlaySoundGeneral(NA_SE_OC_ABYSS, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                func_800C0B60(globalCtx); // Void Out
                Actor_Kill(&this->actor);
            }
        }
    }
}

static void Update(ActorRoomTimer* this, GlobalContext* globalCtx) {
    this->updateFunc(this, globalCtx);
}
