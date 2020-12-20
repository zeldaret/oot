/*
 * File: z_obj_mure2.c
 * Overlay: ovl_Obj_Mure2
 * Description: Rock/Bush groups
 */

#include "z_obj_mure2.h"

#define FLAGS 0x00000000

#define THIS ((ObjMure2*)thisx)

typedef void (*ObjMure2SetPosFunc)(Vec3f* vec, ObjMure2* this);

typedef struct {
    s16 radius;
    s16 angle;
} Mure2ScatteredShrubInfo;

void ObjMure2_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjMure2_Update(Actor* thisx, GlobalContext* globalCtx);

void ObjMure2_SetPosShrubCircle(Vec3f* vec, ObjMure2* this);
void ObjMure2_SetPosShrubScattered(Vec3f* vec, ObjMure2* this);
void ObjMure2_SetPosRockCircle(Vec3f* vec, ObjMure2* this);
void ObjMure2_Wait(ObjMure2* this, GlobalContext* globalCtx);
void func_80B9A668(ObjMure2* this, GlobalContext* globalCtx);
void func_80B9A6F8(ObjMure2* this, GlobalContext* globalCtx);
void ObjMure2_SetupWait(ObjMure2* this);
void func_80B9A658(ObjMure2* this);
void func_80B9A6E8(ObjMure2* this);

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

static f32 D_80B9A800[] = {
    2560000.0f,
    2560000.0f,
    2560000.0f,
};

static f32 D_80B9A80C[] = {
    2907025.0f,
    2907025.0f,
    2907025.0f,
};

/*static*/ s16 sActorSpawnAmounts[] = {
    9,
    12,
    8,
};

static s16 sActorSpawnIDs[] = {
    ACTOR_EN_KUSA,
    ACTOR_EN_KUSA,
    ACTOR_EN_ISHI,
};

static Mure2ScatteredShrubInfo sScatteredShrubInfo[] = {
    { 40, 0x0666 }, { 40, 0x2CCC }, { 40, 0x5999 }, { 40, 0x8666 }, { 20, 0xC000 }, { 80, 0x1333 },
    { 80, 0x4000 }, { 80, 0x6CCC }, { 80, 0x9333 }, { 80, 0xACCC }, { 80, 0xC666 }, { 60, 0xE000 },
};

static s16 sActorSpawnParams[] = {
    0,
    0,
    0,
};

static ObjMure2SetPosFunc sSetPosFunc[] = {
    ObjMure2_SetPosShrubCircle,
    ObjMure2_SetPosShrubScattered,
    ObjMure2_SetPosRockCircle,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(uncullZoneForward, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 2100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 100, ICHAIN_STOP),
};

#ifdef NON_MATCHING
// Very close to matching, just regalloc and a stack diff
void ObjMure2_SetPosShrubCircle(Vec3f* vec, ObjMure2* this) {
    Vec3f* vecTemp = vec;
    s32 i;

    Math_Vec3f_Copy(vecTemp, &this->actor.posRot.pos);
    for (i = 1, vecTemp++; i < sActorSpawnAmounts[this->actor.params & 3]; vecTemp++, i++) {
        Math_Vec3f_Copy(vecTemp, &this->actor.posRot.pos);
        vecTemp->x += (80.0f * Math_Sins((i - 1) * 0x2000));
        vecTemp->z += (80.0f * Math_Coss((i - 1) * 0x2000));
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure2/ObjMure2_SetPosShrubCircle.s")
#endif

void ObjMure2_SetPosShrubScattered(Vec3f* vec, ObjMure2* this) {
    Vec3f* vecTemp;
    s32 i;
    Vec3f* actorPos = &this->actor.posRot.pos; // Required to match
    ObjMure2* this2 = this;                    // Required to match

    for (vecTemp = vec, i = 0; i < sActorSpawnAmounts[this2->actor.params & 3]; vecTemp++, i++) {
        Math_Vec3f_Copy(vecTemp, actorPos);
        if (1) {}
        vecTemp->x += (sScatteredShrubInfo[i].radius * Math_Coss(sScatteredShrubInfo[i].angle));
        vecTemp->z -= (sScatteredShrubInfo[i].radius * Math_Sins(sScatteredShrubInfo[i].angle));
    }
}

void ObjMure2_SetPosRockCircle(Vec3f* vec, ObjMure2* this) {
    s32 i;
    Vec3f* vecTemp = vec;

    for (i = 0; i < sActorSpawnAmounts[this->actor.params & 3]; vecTemp++, i++) {
        Math_Vec3f_Copy(vecTemp, &this->actor.posRot.pos);
        vecTemp->x += (80.0f * Math_Sins(i * 0x2000));
        vecTemp->z += (80.0f * Math_Coss(i * 0x2000));
    }
}

void ObjMure2_SetActorSpawnParams(s16* params, ObjMure2* this) {
    s16 dropTable = (this->actor.params >> 8) & 0xF;

    if (dropTable >= 13) {
        dropTable = 0;
    }
    *params = sActorSpawnParams[this->actor.params & 3] & 0xF0FF;
    *params |= (dropTable << 8);
}

void ObjMure2_SpawnActors(ObjMure2* this, GlobalContext* globalCtx) {
    s32 num = this->actor.params & 3;
    s32 i;
    Vec3f spawnPos[12];
    s16 params;

    sSetPosFunc[num](&spawnPos, this);
    ObjMure2_SetActorSpawnParams(&params, this);

    for (i = 0; i < sActorSpawnAmounts[num]; i++) {
        if (this->actorSpawnPtrList[i] != NULL) {
            // Translation: Warning : I already have a child (%s %d)(arg_data 0x%04x)
            osSyncPrintf("Warning : 既に子供がいる(%s %d)(arg_data 0x%04x)\n", "../z_obj_mure2.c", 269,
                         this->actor.params);
        } else {
            if (((this->currentActorNum >> i) & 1) == 0) {
                this->actorSpawnPtrList[i] =
                    Actor_Spawn(&globalCtx->actorCtx, globalCtx, sActorSpawnIDs[num], spawnPos[i].x, spawnPos[i].y,
                                spawnPos[i].z, this->actor.posRot.rot.x, 0, this->actor.posRot.rot.z, params);
                if (this->actorSpawnPtrList[i] != NULL) {
                    this->actorSpawnPtrList[i]->room = this->actor.room;
                }
            }
            params = params; // Required to match
        }
    }
}

void ObjMure2_CleanupAndDie(ObjMure2* this, GlobalContext* globalCtx) {
    s32 i;

    for (i = 0; i < sActorSpawnAmounts[this->actor.params & 3]; i++) {
        if (((this->currentActorNum >> i) & 1) == 0) {
            if (this->actorSpawnPtrList[i] != NULL) {
                if (Actor_HasParent(this->actorSpawnPtrList[i], globalCtx)) {
                    this->currentActorNum |= (1 << i);
                } else {
                    Actor_Kill(this->actorSpawnPtrList[i]);
                }
                this->actorSpawnPtrList[i] = NULL;
            }
        } else {
            this->actorSpawnPtrList[i] = NULL;
        }
    }
}

void func_80B9A534(ObjMure2* this) {
    s32 i;

    for (i = 0; i < sActorSpawnAmounts[this->actor.params & 3]; i++) {
        if (this->actorSpawnPtrList[i] != NULL && (((this->currentActorNum >> i) & 1) == 0) &&
            (this->actorSpawnPtrList[i]->update == NULL)) {
            this->currentActorNum |= (1 << i);
            this->actorSpawnPtrList[i] = NULL;
        }
    }
}

void ObjMure2_Init(Actor* thisx, GlobalContext* globalCtx) {
    ObjMure2* this = THIS;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    if (globalCtx->csCtx.state != 0) {
        this->actor.uncullZoneForward += 1200.0f;
    }
    ObjMure2_SetupWait(this);
}

void ObjMure2_SetupWait(ObjMure2* this) {
    this->actionFunc = ObjMure2_Wait;
}

void ObjMure2_Wait(ObjMure2* this, GlobalContext* globalCtx) {
    func_80B9A658(this);
}

void func_80B9A658(ObjMure2* this) {
    this->actionFunc = func_80B9A668;
}

void func_80B9A668(ObjMure2* this, GlobalContext* globalCtx) {
    if (Math3D_Dist1DSq(this->actor.projectedPos.x, this->actor.projectedPos.z) <
        (D_80B9A800[this->actor.params & 3] * this->unk_184)) {
        this->actor.flags |= 0x10;
        ObjMure2_SpawnActors(this, globalCtx);
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
        ObjMure2_CleanupAndDie(this, globalCtx);
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
