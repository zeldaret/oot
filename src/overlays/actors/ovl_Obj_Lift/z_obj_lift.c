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
} unk_temp_name;
unk_temp_name D_80B969D0[] = { { 120, -120 }, { 120, 0 },     { 120, 120 }, { 0, -120 },  { 0, 0 },
                               { 0, 120 },    { -120, -120 }, { -120, 0 },  { -120, 120 } };

// sInitChain
InitChainEntry D_80B969F4[] = {
    ICHAIN_F32_DIV1000(gravity, -600, ICHAIN_CONTINUE),   ICHAIN_F32_DIV1000(minVelocityY, -15000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 2000, ICHAIN_CONTINUE), ICHAIN_F32(uncullZoneScale, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 2000, ICHAIN_STOP),
};

f32 D_80B96A08[] = { 0.1f, 0.05f };
f32 D_80B96A10[] = { -18.0f, -9.0f, 0, 0 };

extern UNK_TYPE D_06000140;
extern UNK_TYPE D_060003D0;

void func_80B960D0(ObjLift* this, s32 arg1) {
    this->actionFunc = arg1;
}

void func_80B960D8(ObjLift* this, GlobalContext* globalCtx, void* colHeader, DynaPolyMoveFlag flags) {
    s32 pad;
    CollisionHeader* sp30 = NULL;
    s32 pad2;

    DynaPolyActor_Init(this, flags);
    CollisionHeader_GetVirtual(colHeader, &sp30);
    this->dyna.bgId = DynaPoly_SetBgActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, sp30);
    if (this->dyna.bgId == 0x32) {
        osSyncPrintf((const char*)"Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n", "../z_obj_lift.c",
                     0xBC, this->dyna.actor.id, this->dyna.actor.params);
    }
}

void func_80B96160(ObjLift* this, GlobalContext* globalCtx) {
    Vec3f pos;
    Vec3f velocity;
    Vec3f* temp_s3;
    s32 pad0;
    s32 i;

    temp_s3 = &this->dyna.actor.world.pos;
    for (i = 0; i < 9; i++) {
        pos.x = D_80B969D0[i].x * this->dyna.actor.scale.x + temp_s3->x;
        pos.y = temp_s3->y;
        pos.z = D_80B969D0[i].z * this->dyna.actor.scale.z + temp_s3->z;
        velocity.x = D_80B969D0[i].x * this->dyna.actor.scale.x * 0.8f;
        velocity.y = Rand_ZeroOne() * 10.0f + 6.0f;
        velocity.z = D_80B969D0[i].z * this->dyna.actor.scale.z * 0.8f;
        EffectSsKakera_Spawn(globalCtx, &pos, &velocity, temp_s3, -0x100, (Rand_ZeroOne() < 0.5f) ? 0x40 : 0x20, 0xF,
                             0xF, 0, (Rand_ZeroOne() * 50.0f + 50.0f) * this->dyna.actor.scale.x, 0, 0x20, 0x32, -1,
                             0x11D, &D_06000140);
    }
    if (((this->dyna.actor.params >> 1) & 1) == 0) {
        func_80033480(globalCtx, &this->dyna.actor.world.pos, 120.0f, 12, 120, 100, 1);
    } else if (((this->dyna.actor.params >> 1) & 1) == 1) {
        func_80033480(globalCtx, &this->dyna.actor.world.pos, 60.0f, 8, 60, 100, 1);
    }
}

void ObjLift_Init(Actor* thisx, GlobalContext* globalCtx) {
    ObjLift* this = THIS;

    func_80B960D8(this, globalCtx, &D_060003D0, 1);
    if (Flags_GetSwitch(globalCtx, (this->dyna.actor.params >> 2) & 0x3F) != 0) {
        Actor_Kill(&this->dyna.actor);
        return;
    }
    Actor_SetScale(&this->dyna.actor, D_80B96A08[(this->dyna.actor.params >> 1) & 1]);
    Actor_ProcessInitChain(&this->dyna.actor, D_80B969F4);
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
    this->unk_16E = D_80B969C0[(this->dyna.actor.params >> 8) & 7];
    func_80B960D0(this, func_80B96560);
}

void func_80B96560(ObjLift* this, GlobalContext* globalCtx) {
    s32 pad;
    s32 sp32;

    if (func_8004356C(&this->dyna) != 0) {
        if (this->unk_16E <= 0) {
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
        this->unk_16E = D_80B969C0[((this->dyna.actor.params >> 8) & 7)];
    }
}

void func_80B9664C(ObjLift* this) {
    this->unk_16E = 20;
    func_80B960D0(this, func_80B96678);
}

void func_80B96678(ObjLift* this, GlobalContext* globalCtx) {
    if ((s32)this->unk_16E <= 0) {
        func_80B967C0(this);
    } else {
        this->unk168.x = this->unk168.x + 10000;
        this->dyna.actor.world.rot.x = (s16)(Math_SinS(this->unk168.x) * 300.0f) + this->dyna.actor.home.rot.x;
        this->dyna.actor.world.rot.z = (s16)(Math_CosS(this->unk168.x) * 300.0f) + this->dyna.actor.home.rot.z;
        this->dyna.actor.shape.rot.x = this->dyna.actor.world.rot.x;
        this->dyna.actor.shape.rot.z = this->dyna.actor.world.rot.z;
        this->unk168.y = this->unk168.y + 18000;
        this->dyna.actor.world.pos.y = Math_SinS(this->unk168.y) + this->dyna.actor.home.pos.y;
        this->unk168.z = this->unk168.z + 18000;
        this->dyna.actor.world.pos.x = (Math_SinS(this->unk168.z) * 3.0f) + this->dyna.actor.home.pos.x;
        this->dyna.actor.world.pos.z = (Math_CosS(this->unk168.z) * 3.0f) + this->dyna.actor.home.pos.z;
    }
    if ((this->unk_16E & 3) == 3) {
        Audio_PlaySoundAtPosition(globalCtx, (Vec3f*)&this->dyna.actor.world, 0x10, (u16)0x2838U);
    }
}

void func_80B967C0(ObjLift* this) {
    func_80B960D0(&this->dyna.actor, func_80B96840);
    Math_Vec3f_Copy(&this->dyna.actor.world.pos, &this->dyna.actor.home.pos);
    this->dyna.actor.shape.rot = this->dyna.actor.world.rot = this->dyna.actor.home.rot;
}

void func_80B96840(ObjLift* this, GlobalContext* globalCtx) {
    s32 pad;
    s32 bgId;
    Vec3f sp2C;

    Actor_MoveForward((Actor*)this);
    Math_Vec3f_Copy(&sp2C, &this->dyna.actor.prevPos);
    sp2C.y += D_80B96A10[(this->dyna.actor.params >> 1) & 1];
    this->dyna.actor.floorHeight =
        BgCheck_EntityRaycastFloor4(&globalCtx->colCtx, &this->dyna.actor.floorPoly, &bgId, (Actor*)this, &sp2C);

    if ((D_80B96A10[(this->dyna.actor.params >> 1) & 1] - 0.001f) <=
        (this->dyna.actor.floorHeight - this->dyna.actor.world.pos.y)) {
        func_80B96160(this, globalCtx);
        Audio_PlaySoundAtPosition(globalCtx, &this->dyna.actor.world.pos, 20, 0x2839U);
        Flags_SetSwitch(globalCtx, (this->dyna.actor.params >> 2) & 0x3F);
        Actor_Kill((Actor*)this);
    }
}

void ObjLift_Update(Actor* thisx, GlobalContext* globalCtx) {
    ObjLift* this = THIS;

    if ((s32)this->unk_16E > 0) {
        this->unk_16E--;
    }
    this->actionFunc(this, globalCtx);
}

void ObjLift_Draw(Actor* thisx, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, (Gfx*)&D_06000140);
}
