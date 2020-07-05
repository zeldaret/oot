/*
 * File: z_obj_elevator.c
 * Overlay: Obj_Elevator
 * Description: Stone Elevator
 */

#include "z_obj_elevator.h"

#define FLAGS 0x00000000

#define THIS ((ObjElevator*)thisx)

void ObjElevator_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjElevator_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ObjElevator_Update(Actor* thisx, GlobalContext* globalCtx);
void ObjElevator_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80B92C5C(ObjElevator* this);
void func_80B92C80(ObjElevator* this, GlobalContext* globalCtx);
void func_80B92D20(ObjElevator* this);
void func_80B92D44(ObjElevator* this, GlobalContext* globalCtx);

const ActorInit Obj_Elevator_InitVars = {
    ACTOR_OBJ_ELEVATOR,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_D_ELEVATOR,
    sizeof(ObjElevator),
    (ActorFunc)ObjElevator_Init,
    (ActorFunc)ObjElevator_Destroy,
    (ActorFunc)ObjElevator_Update,
    (ActorFunc)ObjElevator_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(uncullZoneForward, 2000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 600, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 2000, ICHAIN_STOP),
};

static f32 sScales[] = { 0.1f, 0.05f };

extern Gfx D_06000180[];
extern UNK_TYPE D_06000360;

void ObjElevator_SetupAction(ObjElevator* this, ObjElevatorActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void func_80B92B08(ObjElevator* this, GlobalContext* globalCtx, u32 collision, DynaPolyMoveFlag flag) {
    s16 pad1;
    u32 local_c = 0;
    s16 pad2;
    Actor* thisx = &this->dyna.actor;

    DynaPolyInfo_SetActorMove(thisx, flag);
    DynaPolyInfo_Alloc(collision, &local_c);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, thisx, local_c);
    if (this->dyna.dynaPolyId == 0x32) {
        osSyncPrintf("Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n", "../z_obj_elevator.c", 136,
                     thisx->id, thisx->params);
    }
}

void ObjElevator_Init(Actor* thisx, GlobalContext* globalCtx) {
    ObjElevator* this = THIS;
    f32 temp_f0;

    func_80B92B08(this, globalCtx, &D_06000360, 1);
    Actor_SetScale(thisx, sScales[thisx->params & 1]);
    Actor_ProcessInitChain(thisx, sInitChain);
    temp_f0 = (thisx->params >> 8) & 0xF;
    this->unk_16C = temp_f0 + temp_f0;
    func_80B92C5C(this);
    osSyncPrintf("(Dungeon Elevator)(arg_data 0x%04x)\n", thisx->params);
}

void ObjElevator_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    ObjElevator* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

void func_80B92C5C(ObjElevator* this) {
    ObjElevator_SetupAction(this, func_80B92C80);
}

void func_80B92C80(ObjElevator* this, GlobalContext* globalCtx) {
    f32 sub;
    Actor* thisx = &this->dyna.actor;

    if ((this->dyna.unk_160 & 2) && !(this->unk_170 & 2)) {
        sub = thisx->posRot.pos.y - thisx->initPosRot.pos.y;
        if (fabsf(sub) < 0.1f) {
            this->unk_168 = thisx->initPosRot.pos.y + ((thisx->params >> 0xC) & 0xF) * 80.0f;
        } else {
            this->unk_168 = thisx->initPosRot.pos.y;
        }
        func_80B92D20(this);
    }
}

void func_80B92D20(ObjElevator* this) {
    ObjElevator_SetupAction(this, func_80B92D44);
}

void func_80B92D44(ObjElevator* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->dyna.actor;

    if (fabsf(Math_SmoothScaleMaxMinF(&thisx->posRot.pos.y, this->unk_168, 1.0f, this->unk_16C, 0.0f)) < 0.001f) {
        Audio_PlayActorSound2(thisx, NA_SE_EV_FOOT_SWITCH);
        func_80B92C5C(this);
    } else {
        Audio_PlayActorSound2(thisx, 0x201E);
    }
}

void ObjElevator_Update(Actor* thisx, GlobalContext* globalCtx) {
    ObjElevator* this = THIS;

    if (this->actionFunc) {
        this->actionFunc(this, globalCtx);
    }
    this->unk_170 = this->dyna.unk_160;
}

void ObjElevator_Draw(Actor* thisx, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, D_06000180);
}
