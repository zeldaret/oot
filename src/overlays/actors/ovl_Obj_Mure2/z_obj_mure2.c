/*
 * File: z_obj_mure2.c
 * Overlay: ovl_Obj_Mure2
 * Description: Rock/Bush groups
 */

#include "z_obj_mure2.h"

#define FLAGS 0x00000000

#define THIS ((ObjMure2*)thisx)

typedef void (*ObjMure2UnkFunc)(Vec3f* vec, ObjMure2* this);

void ObjMure2_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjMure2_Update(Actor* thisx, GlobalContext* globalCtx);

void func_80B99F40(Vec3f* vec, ObjMure2* this);
void func_80B9A058(Vec3f* vec, ObjMure2* this);
void func_80B9A158(Vec3f* vec, ObjMure2* this);
void func_80B9A638(ObjMure2* this, GlobalContext* globalCtx);
void func_80B9A668(ObjMure2* this, GlobalContext* globalCtx);
void func_80B9A2B0(ObjMure2* this, GlobalContext* globalCtx);
void func_80B9A438(ObjMure2* this, GlobalContext* globalCtx);
void func_80B9A6F8(ObjMure2* this, GlobalContext* globalCtx);
void func_80B9A628(ObjMure2* this);
void func_80B9A658(ObjMure2* this);
void func_80B9A6E8(ObjMure2* this);
void func_80B9A534(ObjMure2* this);

const ActorInit Obj_Mure2_InitVars = {
    ACTOR_OBJ_MURE2,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(ObjMure2),
    (ActorFunc)ObjMure2_Init,
    (ActorFunc)Actor_Noop,
    (ActorFunc)ObjMure2_Update,
    NULL,
};

f32 D_80B9A800[] = {
    2560000.0f,
    2560000.0f,
    2560000.0f,
};

f32 D_80B9A80C[] = {
    2907025.0f,
    2907025.0f,
    2907025.0f,
};

s16 D_80B9A818[] = {
    9,
    12,
    8,
    0,
};

u32 D_80B9A820[] = {
    0x01250125,
    0x014E0000,
};

u32 D_80B9A828[] = {
    0x00280666, 0x00282CCC, 0x00285999, 0x00288666, 0x0014C000, 0x00501333,
    0x00504000, 0x00506CCC, 0x00509333, 0x0050ACCC, 0x0050C666, 0x003CE000,
};

u32 D_80B9A858[] = {
    0x00000000,
    0x00000000,
};

ObjMure2UnkFunc* D_80B9A860[] = {
    func_80B99F40,
    func_80B9A058,
    func_80B9A158,
};

// sInitChain
u32 D_80B9A86C[] = {
    0xB0F40064, 0xB0F80834, 0x30FC0064, 0x00000000, 0x00000000,
};

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure2/func_80B99F40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure2/func_80B9A058.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure2/func_80B9A158.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure2/func_80B9A260.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure2/func_80B9A2B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure2/func_80B9A438.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure2/func_80B9A534.s")
/*
void func_80B9A534(ObjMure2* this) {
    s32 i;

    for (i = 0; i < D_80B9A818[this->actor.params & 3]; i++) {
        if (this->unk_150[i] != NULL) {
            if (!((this->unk_180 >> i) & 1) && (this->unk_150[i]->update == NULL)) {
                ((ObjMure2*)this->unk_150[i])->unk_150[0] = NULL;
            }
        }
    }
}
*/

void ObjMure2_Init(Actor* thisx, GlobalContext* globalCtx) {
    ObjMure2* this = THIS;

    Actor_ProcessInitChain(&this->actor, D_80B9A86C);
    if (globalCtx->csCtx.state != 0) {
        this->actor.uncullZoneForward += 1200.0f;
    }
    func_80B9A628(this);
}

void func_80B9A628(ObjMure2* this) {
    this->actionFunc = func_80B9A638;
}

void func_80B9A638(ObjMure2* this, GlobalContext* globalCtx) {
    func_80B9A658(this);
}

void func_80B9A658(ObjMure2* this) {
    this->actionFunc = func_80B9A668;
}

void func_80B9A668(ObjMure2* this, GlobalContext* globalCtx) {
    if (Math3D_Dist1DSq(this->actor.projectedPos.x, this->actor.projectedPos.z) <
        (D_80B9A800[this->actor.params & 3] * this->unk_184)) {
        this->actor.flags |= 0x10;
        func_80B9A2B0(this, globalCtx);
        func_80B9A6E8(this);
    }
}

void func_80B9A6E8(ObjMure2* this) {
    this->actionFunc = func_80B9A6F8;
}

void func_80B9A6F8(ObjMure2* this, GlobalContext* globalCtx) {
    func_80B9A534(this);
    if ((D_80B9A80C[this->actor.params & 3] * this->unk_184) <=
        Math3D_Dist1DSq(this->actor.projectedPos.x, this->actor.projectedPos.z)) {
        this->actor.flags &= ~0x10;
        func_80B9A438(this, globalCtx);
        func_80B9A658(this);
    }
}

void ObjMure2_Update(Actor* thisx, GlobalContext* globalCtx) {
    ObjMure2* this = THIS;

    if (globalCtx->csCtx.state == 0) {
        this->unk_184 = 1.0f;
    } else {
        this->unk_184 = 4.0f;
    }
    this->actionFunc(this, globalCtx);
}
