/*
 * File: z_obj_mure2.c
 * Overlay: ovl_Obj_Mure2
 * Description: Rock/Bush groups
 */

#include "z_obj_mure2.h"

#define FLAGS 0x00000000

#define THIS ((ObjMure2*)thisx)

typedef void (*ObjMure2UnkFunc)(Vec3f* vec, ObjMure2* this);

typedef struct {
    s16 radius;
    s16 angle;
} Mure2RadiusAngle;

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
void func_80B9A260(s16* params, ObjMure2* this);

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

s16 D_80B9A820[] = {
    ACTOR_EN_KUSA,
    ACTOR_EN_KUSA,
    ACTOR_EN_ISHI,
};

Mure2RadiusAngle D_80B9A828[] = {
    { 0x0028, 0x0666 }, { 0x0028, 0x2CCC }, { 0x0028, 0x5999 }, { 0x0028, 0x8666 },
    { 0x0014, 0xC000 }, { 0x0050, 0x1333 }, { 0x0050, 0x4000 }, { 0x0050, 0x6CCC },
    { 0x0050, 0x9333 }, { 0x0050, 0xACCC }, { 0x0050, 0xC666 }, { 0x003C, 0xE000 },
};

s16 D_80B9A858[] = {
    0,
    0,
    0,
    0,
};

ObjMure2UnkFunc D_80B9A860[] = {
    func_80B99F40,
    func_80B9A058,
    func_80B9A158,
};

// sInitChain
u32 D_80B9A86C[] = {
    0xB0F40064, 0xB0F80834, 0x30FC0064, 0x00000000, 0x00000000,
};

#ifdef NON_MATCHING
// Very close to matching, just regalloc and a stack diff
void func_80B99F40(Vec3f* vec, ObjMure2* this) {
    Vec3f* vecTemp = vec;
    s32 i;
    
    Math_Vec3f_Copy(vecTemp, &this->actor.posRot.pos);
    for (i = 1, vecTemp++; i < D_80B9A818[this->actor.params & 3]; vecTemp++, i++) {
        Math_Vec3f_Copy(vecTemp, &this->actor.posRot.pos);
        vecTemp->x += (80.0f * Math_Sins((i - 1) * 0x2000));
        vecTemp->z += (80.0f * Math_Coss((i - 1) * 0x2000));
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure2/func_80B99F40.s")
#endif

void func_80B9A058(Vec3f* vec, ObjMure2* this) {
    Vec3f* vecTemp;
    s32 i;
    Vec3f* actorPos = &this->actor.posRot.pos;
    ObjMure2* this2 = this;

    for (vecTemp = vec, i = 0; i < D_80B9A818[this2->actor.params & 3]; vecTemp++, i++) {
        Math_Vec3f_Copy(vecTemp, actorPos);
        if (1) {}
        vecTemp->x += (D_80B9A828[i].radius * Math_Coss(D_80B9A828[i].angle));
        vecTemp->z -= (D_80B9A828[i].radius * Math_Sins(D_80B9A828[i].angle));
    }
}

void func_80B9A158(Vec3f* vec, ObjMure2* this) {
    s32 i;
    Vec3f* vecTemp = vec;

    for (i = 0; i < D_80B9A818[this->actor.params & 3]; vecTemp++, i++) {
        Math_Vec3f_Copy(vecTemp, &this->actor.posRot.pos);
        vecTemp->x += (80.0f * Math_Sins(i * 0x2000));
        vecTemp->z += (80.0f * Math_Coss(i * 0x2000));
    }
}

void func_80B9A260(s16* params, ObjMure2* this) {
    s16 phi_v0 = (this->actor.params >> 8) & 0xF;

    if (phi_v0 >= 13) {
        phi_v0 = 0;
    }
    *params = D_80B9A858[this->actor.params & 3] & 0xF0FF;
    *params |= (phi_v0 << 8);
}

void func_80B9A2B0(ObjMure2* this, GlobalContext* globalCtx) {
    s32 num = this->actor.params & 3;
    s32 i;
    Vec3f sp70[12];
    s16 params;

    D_80B9A860[num](&sp70, this);
    func_80B9A260(&params, this);

    for (i = 0; i < D_80B9A818[num]; i++) {
        if (this->unk_150[i] != NULL) {
            // Translation: Warning : I already have a child (%s %d)(arg_data 0x%04x)
            osSyncPrintf("Warning : 既に子供がいる(%s %d)(arg_data 0x%04x)\n", "../z_obj_mure2.c", 269,
                         this->actor.params);
        } else {
            if (((this->unk_180 >> i) & 1) == 0) {
                this->unk_150[i] =
                    Actor_Spawn(&globalCtx->actorCtx, globalCtx, D_80B9A820[num], sp70[i].x, sp70[i].y, sp70[i].z,
                                this->actor.posRot.rot.x, 0, this->actor.posRot.rot.z, params);
                if (this->unk_150[i] != NULL) {
                    this->unk_150[i]->room = this->actor.room;
                }
            }
            params = params; // Required to match
        }
    }
}

void func_80B9A438(ObjMure2* this, GlobalContext* globalCtx) {
    s32 i;

    for (i = 0; i < D_80B9A818[this->actor.params & 3]; i++) {
        if (((this->unk_180 >> i) & 1) == 0) {
            if (this->unk_150[i] != NULL) {
                if (Actor_HasParent(this->unk_150[i], globalCtx)) {
                    this->unk_180 |= (1 << i);
                } else {
                    Actor_Kill(this->unk_150[i]);
                }
                this->unk_150[i] = NULL;
            }
        } else {
            this->unk_150[i] = NULL;
        }
    }
}

void func_80B9A534(ObjMure2* this) {
    s32 i;

    for (i = 0; i < D_80B9A818[this->actor.params & 3]; i++) {
        if (this->unk_150[i] != NULL && (((this->unk_180 >> i) & 1) == 0) && (this->unk_150[i]->update == NULL)) {
            this->unk_180 |= (1 << i);
            this->unk_150[i] = NULL;
        }
    }
}

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
