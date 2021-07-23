/*
 * File: z_obj_mure.c
 * Overlay: ovl_Obj_Mure
 * Description: Fish, Bug, Butterfly spawner
 */

#include "z_obj_mure.h"

#define FLAGS 0x00000000

#define THIS ((ObjMure*)thisx)

s32 func_80B98AA0(Actor* thisx, GlobalContext* globalCtx);
s32 func_80B98B1C(Actor* thisx, GlobalContext* globalCtx);
void ObjMure_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjMure_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ObjMure_Update(Actor* thisx, GlobalContext* globalCtx);
s32 ObjMure_GetMaxChildSpawns(ObjMure* this);
void ObjMure_GetSpawnPos(Vec3f* outPos, Vec3f* inPos, s32 ptn, s32 idx);
void ObjMure_SpawnActors0(ObjMure* this, GlobalContext* globalCtx);
void ObjMure_SpawnActors1(ObjMure* this, GlobalContext* globalCtx);
void ObjMure_SpawnActors(ObjMure* this, GlobalContext* globalCtx);
void ObjMure_KillActorsImpl(ObjMure* this, GlobalContext* globalCtx);
void ObjMure_KillActors(ObjMure* this, GlobalContext* globalCtx);
void func_80B99224(ObjMure* this, GlobalContext* globalCtx);
void ObjMure_InitialAction(ObjMure* this, GlobalContext* globalCtx);
void ObjMure_IdleOffCam(ObjMure* this, GlobalContext* globalCtx);
void func_80B995A4(ObjMure* this, GlobalContext* globalCtx);
void func_80B997CC(ObjMure* this, GlobalContext* globalCtx);
void ObjMure_IdleOnCam(ObjMure* this, GlobalContext* globalCtx);

const ActorInit Obj_Mure_InitVars = {
    ACTOR_OBJ_MURE,
    ACTORCAT_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(ObjMure),
    (ActorFunc)ObjMure_Init,
    (ActorFunc)ObjMure_Destroy,
    (ActorFunc)ObjMure_Update,
    NULL,
};

typedef enum {
    /* 0 */ OBJMURE_TYPE_GRASS,
    /* 1 */ OBJMURE_TYPE_UNDEFINED,
    /* 2 */ OBJMURE_TYPE_FISH,
    /* 3 */ OBJMURE_TYPE_BUGS,
    /* 4 */ OBJMURE_TYPE_BUTTERFLY
} ObjMureType;

f32 sZClip[] = { 1600.0f, 1600.0f, 1000.0f, 1000.0f, 1000.0f };

s32 sMaxChildSpawns[] = { 12, 9, 8, 0 };

s16 sSpawnActorIds[] = { ACTOR_EN_KUSA, 0, ACTOR_EN_FISH, ACTOR_EN_INSECT, ACTOR_EN_BUTTE };

s16 sSpawnParams[] = { 0, 2, -1, 0, -1 };

// sInitChain
InitChainEntry D_80B99A8C[] = {
    ICHAIN_F32(uncullZoneForward, 1200, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 200, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1200, ICHAIN_STOP),
};

ObjMureActionFunc sTypeFunc[] = { NULL, NULL, func_80B995A4, func_80B995A4, func_80B997CC };

s32 func_80B98AA0(Actor* thisx, GlobalContext* globalCtx) {
    ObjMure* this = THIS;
    s32 result;

    switch (this->type) {
        case OBJMURE_TYPE_FISH:
        case OBJMURE_TYPE_BUGS:
        case OBJMURE_TYPE_BUTTERFLY:
            Actor_ProcessInitChain(&this->actor, D_80B99A8C);
            result = true;
            break;
        default:
            osSyncPrintf("Error : カリングの設定がされていません。(%s %d)(arg_data 0x%04x)\n", "../z_obj_mure.c", 204,
                         this->actor.params);
            return false;
    }
    return result;
}

s32 func_80B98B1C(Actor* thisx, GlobalContext* globalCtx) {
    if (!func_80B98AA0(thisx, globalCtx)) {
        return false;
    }
    return true;
}

void ObjMure_Init(Actor* thisx, GlobalContext* globalCtx) {
    ObjMure* this = THIS;

    this->chNum = (thisx->params >> 0xC) & 0x0F;
    this->ptn = (thisx->params >> 8) & 0x07;
    this->svNum = (thisx->params >> 5) & 0x03;
    this->type = thisx->params & 0x1F;

    if (this->ptn >= 4) {
        osSyncPrintf("Error 群れな敵 (%s %d)(arg_data 0x%04x)\n", "../z_obj_mure.c", 237, thisx->params);
        Actor_Kill(&this->actor);
        return;
    } else if (this->type >= 5) {
        osSyncPrintf("Error 群れな敵 (%s %d)(arg_data 0x%04x)\n", "../z_obj_mure.c", 245, thisx->params);
        Actor_Kill(&this->actor);
        return;
    } else if (!func_80B98B1C(thisx, globalCtx)) {
        Actor_Kill(&this->actor);
        return;
    }
    this->actionFunc = ObjMure_InitialAction;
    osSyncPrintf("群れな敵 (arg_data 0x%04x)(chNum(%d) ptn(%d) svNum(%d) type(%d))\n", thisx->params, this->chNum,
                 this->ptn, this->svNum, this->type);
    if (ObjMure_GetMaxChildSpawns(this) <= 0) {
        osSyncPrintf("Warning : 個体数が設定されていません(%s %d)(arg_data 0x%04x)\n", "../z_obj_mure.c", 268,
                     thisx->params);
    }
}

void ObjMure_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

// gets the number of spawned actors
s32 ObjMure_GetMaxChildSpawns(ObjMure* this) {
    if (this->chNum == 0) {
        return sMaxChildSpawns[this->ptn];
    }
    return this->chNum;
}

void ObjMure_GetSpawnPos(Vec3f* outPos, Vec3f* inPos, s32 ptn, s32 idx) {
    if (ptn >= 4) {
        osSyncPrintf("おかしなの (%s %d)\n", "../z_obj_mure.c", 307);
    }
    *outPos = *inPos;
}

// ObjMure_SpawnActors
void ObjMure_SpawnActors0(ObjMure* this, GlobalContext* globalCtx) {
    ActorContext* ac;
    s32 i;
    Vec3f pos;
    s32 pad;
    s32 maxChildren = ObjMure_GetMaxChildSpawns(this);

    for (i = 0; i < maxChildren; i++) {
        if (this->actorSpawnPtrList[i] != NULL) {
            // Translation: Error: I already have a child(%s %d)(arg_data 0x%04x)
            osSyncPrintf("Error : 既に子供がいる(%s %d)(arg_data 0x%04x)\n", "../z_obj_mure.c", 333,
                         this->actor.params);
        }
        switch (this->actorSpawnUnk[i]) {
            case 1:
                break;
            case 2:
                ac = &globalCtx->actorCtx;
                ObjMure_GetSpawnPos(&pos, &this->actor.world.pos, this->ptn, i);
                this->actorSpawnPtrList[i] =
                    Actor_Spawn(ac, globalCtx, sSpawnActorIds[this->type], pos.x, pos.y, pos.z, this->actor.world.rot.x,
                                this->actor.world.rot.y, this->actor.world.rot.z, sSpawnParams[this->type]);
                if (this->actorSpawnPtrList[i] != NULL) {
                    this->actorSpawnPtrList[i]->flags |= 0x800;
                    this->actorSpawnPtrList[i]->room = this->actor.room;
                } else {
                    osSyncPrintf("warning 発生失敗 (%s %d)\n", "../z_obj_mure.c", 359);
                }
                break;
            default:
                ac = &globalCtx->actorCtx;
                ObjMure_GetSpawnPos(&pos, &this->actor.world.pos, this->ptn, i);
                this->actorSpawnPtrList[i] =
                    Actor_Spawn(ac, globalCtx, sSpawnActorIds[this->type], pos.x, pos.y, pos.z, this->actor.world.rot.x,
                                this->actor.world.rot.y, this->actor.world.rot.z, sSpawnParams[this->type]);
                if (this->actorSpawnPtrList[i] != NULL) {
                    this->actorSpawnPtrList[i]->room = this->actor.room;
                } else {
                    osSyncPrintf("warning 発生失敗 (%s %d)\n", "../z_obj_mure.c", 382);
                }
        }
    }
}

void ObjMure_SpawnActors1(ObjMure* this, GlobalContext* globalCtx) {
    ActorContext* ac = (ActorContext*)globalCtx; // fun times in fake-match land again!
    Actor* actor = &this->actor;
    Vec3f spawnPos;
    s32 maxChildren = ObjMure_GetMaxChildSpawns(this);
    s32 i;

    for (i = 0; i < maxChildren; i++) {
        if (this->actorSpawnPtrList[i] != NULL) {
            osSyncPrintf("Error : 既に子供がいる(%s %d)(arg_data 0x%04x)\n", "../z_obj_mure.c", 407, actor->params);
        }
        ac = &globalCtx->actorCtx;
        ObjMure_GetSpawnPos(&spawnPos, &actor->world.pos, this->ptn, i);
        this->actorSpawnPtrList[i] = Actor_Spawn(ac, globalCtx, sSpawnActorIds[this->type], spawnPos.x, spawnPos.y,
                                                 spawnPos.z, actor->world.rot.x, actor->world.rot.y, actor->world.rot.z,
                                                 (this->type == 4 && i == 0) ? 1 : sSpawnParams[this->type]);
        if (this->actorSpawnPtrList[i] != NULL) {
            this->actorSpawnUnk[i] = 0;
            this->actorSpawnPtrList[i]->room = actor->room;
        } else {
            this->actorSpawnUnk[i] = 1;
            osSyncPrintf("warning 発生失敗 (%s %d)\n", "../z_obj_mure.c", 438);
        }
    }
}

void ObjMure_SpawnActors(ObjMure* this, GlobalContext* globalCtx) {
    switch (this->svNum) {
        case 0:
            ObjMure_SpawnActors0(this, globalCtx);
            break;
        case 1:
            ObjMure_SpawnActors1(this, globalCtx);
            break;
    }
}

void ObjMure_KillActorsImpl(ObjMure* this, GlobalContext* globalCtx) {
    s32 maxChildren = ObjMure_GetMaxChildSpawns(this);
    s32 i;

    for (i = 0; i < maxChildren; i++) {
        switch (this->actorSpawnUnk[i]) {
            case 1:
                this->actorSpawnPtrList[i] = NULL;
                break;
            case 2:
                if (this->actorSpawnPtrList[i] != NULL) {
                    Actor_Kill(this->actorSpawnPtrList[i]);
                    this->actorSpawnPtrList[i] = NULL;
                }
                break;
            default:
                if (this->actorSpawnPtrList[i] != NULL) {
                    if (Actor_HasParent(this->actorSpawnPtrList[i], globalCtx)) {
                        this->actorSpawnPtrList[i] = NULL;
                    } else {
                        Actor_Kill(this->actorSpawnPtrList[i]);
                        this->actorSpawnPtrList[i] = NULL;
                    }
                }
                break;
        }
    }
}

void ObjMure_KillActors(ObjMure* this, GlobalContext* globalCtx) {
    ObjMure_KillActorsImpl(this, globalCtx);
}

void func_80B99224(ObjMure* this, GlobalContext* globalCtx) {
    s32 maxChildren = ObjMure_GetMaxChildSpawns(this);
    s32 i;

    for (i = 0; i < maxChildren; i++) {
        if (this->actorSpawnPtrList[i] != NULL) {
            if (this->actorSpawnUnk[i] == 0) {
                if (this->actorSpawnPtrList[i]->update != NULL) {
                    if (this->actorSpawnPtrList[i]->flags & 0x800) {
                        this->actorSpawnUnk[i] = 2;
                    }
                } else {
                    this->actorSpawnUnk[i] = 1;
                    this->actorSpawnPtrList[i] = NULL;
                }
            } else if ((this->actorSpawnUnk[i] == 2) && (this->actorSpawnPtrList[i]->update == NULL)) {
                this->actorSpawnUnk[i] = 1;
                this->actorSpawnPtrList[i] = NULL;
            }
        }
    }
}

void ObjMure_InitialAction(ObjMure* this, GlobalContext* globalCtx) {
    this->actionFunc = ObjMure_IdleOffCam;
}

void ObjMure_IdleOffCam(ObjMure* this, GlobalContext* globalCtx) {
    if (fabsf(this->actor.projectedPos.z) < sZClip[this->type]) {
        this->actionFunc = ObjMure_IdleOnCam;
        this->actor.flags |= 0x10;
        ObjMure_SpawnActors(this, globalCtx);
    }
}

void func_80B99358(ObjMure* this, f32 randMax) {
    s32 index;
    s32 maxChildren = ObjMure_GetMaxChildSpawns(this);
    s32 i;

    for (i = 0; i < maxChildren; i++) {
        if (this->actorSpawnPtrList[i] != NULL) {
            this->actorSpawnPtrList[i]->child = NULL;
            if (Rand_ZeroOne() <= randMax) {
                index = (s32)(Rand_ZeroOne() * (maxChildren - 0.5f));
                if (i != index) {
                    this->actorSpawnPtrList[i]->child = this->actorSpawnPtrList[index];
                }
            }
        }
    }
}

void func_80B9942C(ObjMure* this, s32 arg1) {
    s32 maxChildren = ObjMure_GetMaxChildSpawns(this);
    s32 i;
    s32 i2;
    s32 j;

    for (i = 0, i2 = 0; i < maxChildren; i++) {
        if (this->actorSpawnPtrList[i] != NULL) {
            if (i2 < arg1) {
                i2++;
                this->actorSpawnPtrList[i]->child = this->actorSpawnPtrList[i];
                for (j = 0; j < maxChildren; j++) {
                    if (i != j && this->actorSpawnPtrList[j]->child == this->actorSpawnPtrList[i]) {
                        this->actorSpawnPtrList[j]->child = NULL;
                    }
                }
            } else if (this->actorSpawnPtrList[i]->child == this->actorSpawnPtrList[i]) {
                this->actorSpawnPtrList[i]->child = NULL;
            }
        }
    }
}

void func_80B995A4(ObjMure* this, GlobalContext* globalCtx) {
    if (this->unk_1A4 <= 0) {
        if (this->unk_1A6) {
            this->unk_1A6 = false;
            func_80B99358(this, (Rand_ZeroOne() * 0.5f) + 0.1f);
            if (this->actor.xzDistToPlayer < 60.0f) {
                this->unk_1A4 = (s16)(Rand_ZeroOne() * 5.5f) + 4;
            } else {
                this->unk_1A4 = (s16)(Rand_ZeroOne() * 40.5f) + 4;
            }
        } else {
            this->unk_1A6 = true;
            if (this->actor.xzDistToPlayer < 60.0f) {
                this->unk_1A4 = (s16)(Rand_ZeroOne() * 10.5f) + 4;
                func_80B99358(this, (Rand_ZeroOne() * 0.2f) + 0.8f);
            } else {
                this->unk_1A4 = (s16)(Rand_ZeroOne() * 10.5f) + 4;
                func_80B99358(this, (Rand_ZeroOne() * 0.2f) + 0.6f);
            }
        }
    }
    if (this->actor.xzDistToPlayer < 120.0f) {
        this->unk_1A8++;
    } else {
        this->unk_1A8 = 0;
    }
    if (this->unk_1A8 >= 80) {
        func_80B9942C(this, 1);
    } else {
        func_80B9942C(this, 0);
    }
}

void func_80B997CC(ObjMure* this, GlobalContext* globalCtx) {
    s32 maxChildren;
    s32 i;

    if (this->unk_1A4 <= 0) {
        if (this->unk_1A6) {
            this->unk_1A6 = false;
            func_80B99358(this, Rand_ZeroOne() * 0.2f);
            if (this->actor.xzDistToPlayer < 60.0f) {
                this->unk_1A4 = (s16)(Rand_ZeroOne() * 5.5f) + 4;
            } else {
                this->unk_1A4 = (s16)(Rand_ZeroOne() * 40.5f) + 4;
            }
        } else {
            this->unk_1A6 = true;
            func_80B99358(this, Rand_ZeroOne() * 0.7f);
            this->unk_1A4 = (s16)(Rand_ZeroOne() * 10.5f) + 4;
        }
    }

    maxChildren = ObjMure_GetMaxChildSpawns(this);
    for (i = 0; i < maxChildren; i++) {
        if (this->actorSpawnPtrList[i] != NULL) {
            if ((this->actorSpawnPtrList[i]->child != NULL) && (this->actorSpawnPtrList[i]->child->update == NULL)) {
                this->actorSpawnPtrList[i]->child = NULL;
            }
        }
    }
}

void ObjMure_IdleOnCam(ObjMure* this, GlobalContext* globalCtx) {
    func_80B99224(this, globalCtx);
    if (sZClip[this->type] + 40.0f <= fabsf(this->actor.projectedPos.z)) {
        this->actionFunc = ObjMure_IdleOffCam;
        this->actor.flags &= ~0x10;
        ObjMure_KillActors(this, globalCtx);
    } else if (sTypeFunc[this->type] != NULL) {
        sTypeFunc[this->type](this, globalCtx);
    }
}

void ObjMure_Update(Actor* thisx, GlobalContext* globalCtx) {
    ObjMure* this = THIS;

    if (this->unk_1A4 > 0) {
        this->unk_1A4 -= 1;
    }
    this->actionFunc(this, globalCtx);
}
