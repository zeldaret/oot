/*
 * File: z_obj_lift.c
 * Overlay: ovl_Obj_Lift
 * Description: Square, collapsing platform
 */

#include "z_obj_lift.h"

#define FLAGS 0x00000010

#define THIS ((ObjLift*)thisx)

void ObjLift_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjLift_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ObjLift_Update(Actor* thisx, GlobalContext* globalCtx);
void ObjLift_Draw(Actor* thisx, GlobalContext* globalCtx);
void func_80B9651C(ObjLift* this);
void func_80B96560(ObjLift* this, GlobalContext* globalCtx);
void func_80B9664C(ObjLift* this);
void func_80B967C0(ObjLift* this);
void func_80B96678(ObjLift* this, GlobalContext* globalCtx);
void func_80B96840(ObjLift* this, GlobalContext* globalCtx);

const ActorInit Obj_Lift_InitVars = {
    ACTOR_OBJ_LIFT,
    ACTORCAT_BG,
    FLAGS,
    OBJECT_D_LIFT,
    sizeof(ObjLift),
    (ActorFunc)ObjLift_Init,
    (ActorFunc)ObjLift_Destroy,
    (ActorFunc)ObjLift_Update,
    (ActorFunc)ObjLift_Draw,
};

s16 D_80B969C0[] = { 0x0000, 0x000A, 0x0014, 0x001E, 0x0028, 0x0032, 0x003C, 0x0000 };

typedef struct {
    s16 x;
    s16 z;
} unkstruct_80B969D0;
unkstruct_80B969D0 D_80B969D0[] = { { 120, -120 }, { 120, 0 },     { 120, 120 }, { 0, -120 },  { 0, 0 },
                               { 0, 120 },    { -120, -120 }, { -120, 0 },  { -120, 120 } };

InitChainEntry sInitChainEntry[] = {
    ICHAIN_F32_DIV1000(gravity, -600, ICHAIN_CONTINUE),   ICHAIN_F32_DIV1000(minVelocityY, -15000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 2000, ICHAIN_CONTINUE), ICHAIN_F32(uncullZoneScale, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 2000, ICHAIN_STOP),
};

f32 D_80B96A08[] = { 0.1f, 0.05f };
f32 D_80B96A10[] = { -18.0f, -9.0f, 0, 0 };

extern Gfx D_06000140[]; //gCollapsingPlatformDL
extern CollisionHeader D_060003D0; //gCollapsingPlatformCol

void ObjLift_SetupAction(ObjLift* this, ObjLiftActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void ObjLift_InitDynaPoly(ObjLift* this, GlobalContext* globalCtx, CollisionHeader* collision, DynaPolyMoveFlag flags) {
    s32 pad;
    CollisionHeader* colHeader = NULL;
    s32 pad2;

    DynaPolyActor_Init(&this->dyna, flags);
    CollisionHeader_GetVirtual(collision, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, colHeader);
    if (this->dyna.bgId == BG_ACTOR_MAX) {
        osSyncPrintf("Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n", "../z_obj_lift.c",
                     188, this->dyna.actor.id, this->dyna.actor.params);
    }
}

void func_80B96160(ObjLift* this, GlobalContext* globalCtx) {
    Vec3f pos;
    Vec3f velocity;
    Vec3f* temp_s3;
    s32 pad0;
    s32 i;

    temp_s3 = &this->dyna.actor.world.pos;
    for (i = 0; i < ARRAY_COUNT(D_80B969D0); i++) {
        pos.x = D_80B969D0[i].x * this->dyna.actor.scale.x + temp_s3->x;
        pos.y = temp_s3->y;
        pos.z = D_80B969D0[i].z * this->dyna.actor.scale.z + temp_s3->z;
        velocity.x = D_80B969D0[i].x * this->dyna.actor.scale.x * 0.8f;
        velocity.y = Rand_ZeroOne() * 10.0f + 6.0f;
        velocity.z = D_80B969D0[i].z * this->dyna.actor.scale.z * 0.8f;
        EffectSsKakera_Spawn(globalCtx, &pos, &velocity, temp_s3, -0x100, (Rand_ZeroOne() < 0.5f) ? 0x40 : 0x20, 0xF,
                             0xF, 0, (Rand_ZeroOne() * 50.0f + 50.0f) * this->dyna.actor.scale.x, 0, 0x20, 0x32, -1,
                             OBJECT_D_LIFT, D_06000140);
    }
    if (!((this->dyna.actor.params >> 1) & 1)) {
        func_80033480(globalCtx, &this->dyna.actor.world.pos, 120.0f, 12, 120, 100, 1);
    } else if (((this->dyna.actor.params >> 1) & 1) == 1) {
        func_80033480(globalCtx, &this->dyna.actor.world.pos, 60.0f, 8, 60, 100, 1);
    }
}

void ObjLift_Init(Actor* thisx, GlobalContext* globalCtx) {
    ObjLift* this = THIS;

    ObjLift_InitDynaPoly(this, globalCtx, &D_060003D0, DPM_PLAYER);
    if (Flags_GetSwitch(globalCtx, (this->dyna.actor.params >> 2) & 0x3F)) {
        Actor_Kill(&this->dyna.actor);
        return;
    }
    Actor_SetScale(&this->dyna.actor, D_80B96A08[(this->dyna.actor.params >> 1) & 1]);
    Actor_ProcessInitChain(&this->dyna.actor, sInitChainEntry);
    this->unk168.x = Rand_ZeroOne() * 65535.5f;
    this->unk168.y = Rand_ZeroOne() * 65535.5f;
    this->unk168.z = Rand_ZeroOne() * 65535.5f;
    func_80B9651C(this);
    osSyncPrintf("(Dungeon Lift)(arg_data 0x%04x)\n", this->dyna.actor.params);
}

void ObjLift_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    ObjLift* this = THIS;
    DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
}

void func_80B9651C(ObjLift* this) {
    this->timer = D_80B969C0[(this->dyna.actor.params >> 8) & ARRAY_COUNT(D_80B969C0) - 1];
    ObjLift_SetupAction(this, func_80B96560);
}

void func_80B96560(ObjLift* this, GlobalContext* globalCtx) {
    s32 pad;
    s32 sp32;

    if (func_8004356C(&this->dyna)) {
        if (this->timer <= 0) {
            if (((this->dyna.actor.params >> 8) & 7) == 7) {
                func_80B967C0(this);
            } else {
                sp32 = Quake_Add(ACTIVE_CAM, 1);
                Quake_SetSpeed(sp32, 10000);
                Quake_SetQuakeValues(sp32, 2, 0, 0, 0);
                Quake_SetCountdown(sp32, 20);
                func_80B9664C(this);
            }
            return;
        }
    } else {
        this->timer = D_80B969C0[((this->dyna.actor.params >> 8) & ARRAY_COUNT(D_80B969C0) - 1)];
    }
}

void func_80B9664C(ObjLift* this) {
    this->timer = 20;
    ObjLift_SetupAction(this, func_80B96678);
}

void func_80B96678(ObjLift* this, GlobalContext* globalCtx) {
    if (this->timer <= 0) {
        func_80B967C0(this);
    } else {
        this->unk168.x += 10000;
        this->dyna.actor.world.rot.x = (s16)(Math_SinS(this->unk168.x) * 300.0f) + this->dyna.actor.home.rot.x;
        this->dyna.actor.world.rot.z = (s16)(Math_CosS(this->unk168.x) * 300.0f) + this->dyna.actor.home.rot.z;
        this->dyna.actor.shape.rot.x = this->dyna.actor.world.rot.x;
        this->dyna.actor.shape.rot.z = this->dyna.actor.world.rot.z;
        this->unk168.y += 18000;
        this->dyna.actor.world.pos.y = Math_SinS(this->unk168.y) + this->dyna.actor.home.pos.y;
        this->unk168.z += 18000;
        this->dyna.actor.world.pos.x = Math_SinS(this->unk168.z) * 3.0f + this->dyna.actor.home.pos.x;
        this->dyna.actor.world.pos.z = Math_CosS(this->unk168.z) * 3.0f + this->dyna.actor.home.pos.z;
    }
    if ((this->timer & 3) == 3) {
        Audio_PlaySoundAtPosition(globalCtx, &this->dyna.actor.world.pos, 0x10, NA_SE_EV_BLOCK_SHAKE);
    }
}

void func_80B967C0(ObjLift* this) {
    ObjLift_SetupAction(this, func_80B96840);
    Math_Vec3f_Copy(&this->dyna.actor.world.pos, &this->dyna.actor.home.pos);
    this->dyna.actor.shape.rot = this->dyna.actor.world.rot = this->dyna.actor.home.rot;
}

void func_80B96840(ObjLift* this, GlobalContext* globalCtx) {
    s32 pad;
    s32 bgId;
    Vec3f sp2C;

    Actor_MoveForward(&this->dyna.actor);
    Math_Vec3f_Copy(&sp2C, &this->dyna.actor.prevPos);
    sp2C.y += D_80B96A10[(this->dyna.actor.params >> 1) & 1];
    this->dyna.actor.floorHeight =
        BgCheck_EntityRaycastFloor4(&globalCtx->colCtx, &this->dyna.actor.floorPoly, &bgId, &this->dyna.actor, &sp2C);

    if ((D_80B96A10[(this->dyna.actor.params >> 1) & 1] - 0.001f) <=
        (this->dyna.actor.floorHeight - this->dyna.actor.world.pos.y)) {
        func_80B96160(this, globalCtx);
        Audio_PlaySoundAtPosition(globalCtx, &this->dyna.actor.world.pos, 20, NA_SE_EV_BOX_BREAK);
        Flags_SetSwitch(globalCtx, (this->dyna.actor.params >> 2) & 0x3F);
        Actor_Kill(&this->dyna.actor);
    }
}

void ObjLift_Update(Actor* thisx, GlobalContext* globalCtx) {
    ObjLift* this = THIS;

    if (this->timer > 0) {
        this->timer--;
    }
    this->actionFunc(this, globalCtx);
}

void ObjLift_Draw(Actor* thisx, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, D_06000140);
}
