/*
 * File: z_obj_mure.c
 * Overlay: ovl_Obj_Mure
 * Description: Fish, Bugs, Butterflies
 */

#include "z_obj_mure.h"

#define FLAGS 0x00000000

#define THIS ((ObjMure*)thisx)

s32 func_80B98AA0(Actor* thisx, GlobalContext* globalCtx);
s32 func_80B98B1C(Actor* thisx, GlobalContext* globalCtx);
void ObjMure_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjMure_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ObjMure_Update(Actor* thisx, GlobalContext* globalCtx);
s32 func_80B98C88(ObjMure* this);
void func_80B98CB4(PosRot* this, PosRot* arg1, s32 ptn, s32 arg3); // ObjMure_SetActorPos
void func_80B98D18(ObjMure* this, GlobalContext* globalCtx);       // ObjMure_SpawnActors
void func_80B98F38(ObjMure* this, GlobalContext* globalCtx);       // different SpawnActors?
void func_80B990BC(ObjMure* this, GlobalContext* globalCtx);
void func_80B9910C(ObjMure* this, GlobalContext* globalCtx);
void func_80B99204(ObjMure* this, GlobalContext* globalCtx);
void func_80B99224(ObjMure* this, GlobalContext* globalCtx);
void func_80B992E4(ObjMure* this, GlobalContext* globalCtx);
void func_80B992F8(ObjMure* this, GlobalContext* globalCtx);
void func_80B995A4(ObjMure* this, GlobalContext* globalCtx);
void func_80B997CC(ObjMure* this, GlobalContext* globalCtx);
void func_80B99950(ObjMure* this, GlobalContext* globalCtx);

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

f32 D_80B99A50[] = { 1600.0f, 1600.0f, 1000.0f, 1000.0f, 1000.0f };

s32 D_80B99A64[] = { 12, 9, 8, 0 };

// used to set actorID and params (?) in spawn child
s16 D_80B99A74[] = { ACTOR_EN_KUSA, 0, ACTOR_EN_FISH, ACTOR_EN_INSECT, ACTOR_EN_BUTTE };

s16 D_80B99A80[] = { 0, 2, -1, 0, -1 };

// sInitChain
InitChainEntry D_80B99A8C[] = {
    ICHAIN_F32(uncullZoneForward, 1200, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 200, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1200, ICHAIN_STOP),
};

ObjMureActionFunc D_80B99A98[] = { NULL, NULL, func_80B995A4, func_80B995A4, func_80B997CC };

s32 func_80B98AA0(Actor* thisx, GlobalContext* globalCtx) {
    ObjMure* this = THIS;
    s32 result;

    switch (this->type) {
    case 2:
    case 3:
    case 4:
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
    if (func_80B98AA0(thisx, globalCtx) == 0) {
        return 0;
    }
    return 1;
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
    } else if (func_80B98B1C(thisx, globalCtx) == 0) {
        Actor_Kill(&this->actor);
        return;
    }
    this->actionFunc = func_80B992E4;
    osSyncPrintf("群れな敵 (arg_data 0x%04x)(chNum(%d) ptn(%d) svNum(%d) type(%d))\n", thisx->params, this->chNum,
                 this->ptn, this->svNum, this->type);
    if (func_80B98C88(this) <= 0) {
        osSyncPrintf("Warning : 個体数が設定されていません(%s %d)(arg_data 0x%04x)\n", "../z_obj_mure.c", 268,
                     thisx->params);
    }
}

void ObjMure_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

// gets the number of spawned actors
s32 func_80B98C88(ObjMure* this) {
    if (this->chNum == 0) {
        return D_80B99A64[this->ptn];
    }
    return this->chNum;
}

// ObjMure_SetActorPos
void func_80B98CB4(PosRot* this, PosRot* arg1, s32 ptn, s32 arg3) {
    if (ptn >= 4) {
        osSyncPrintf("おかしなの (%s %d)\n", "../z_obj_mure.c", 307);
    }
    this->pos = arg1->pos;
}

// 1 instruction, stack/regalloc
// ObjMure_SpawnActors
#ifdef NON_MATCHING
void func_80B98D18(ObjMure* this, GlobalContext* globalCtx) {
    PosRot sp74;
    s32 i;
    s32 temp_v0;

    temp_v0 = func_80B98C88(this);
    for (i = 0; i < temp_v0; i++) {
        if (this->actorSpawnPtrList[i] != NULL) {
            // Translation: Error: I already have a child(%s %d)(arg_data 0x%04x)
            osSyncPrintf("Error : 既に子供がいる(%s %d)(arg_data 0x%04x)\n", "../z_obj_mure.c", 0x14D,
                         this->actor.params);
        }
        if (this->unk_194[i] != 1) {
            if (this->unk_194[i] == 2) {
                func_80B98CB4(&sp74, &this->actor.world, this->ptn, i);
                this->actorSpawnPtrList[i] = Actor_Spawn(
                    &globalCtx->actorCtx, globalCtx, D_80B99A74[this->type], sp74.pos.x, sp74.pos.y, sp74.pos.z,
                    this->actor.world.rot.x, this->actor.world.rot.y, this->actor.world.rot.z, D_80B99A80[this->type]);
                if (this->actorSpawnPtrList[i] != NULL) {
                    this->actorSpawnPtrList[i]->flags |= 0x800;
                    this->actorSpawnPtrList[i]->room = this->actor.room;
                } else {
                    osSyncPrintf("warning 発生失敗 (%s %d)\n", "../z_obj_mure.c", 0x167);
                }
            } else {
                func_80B98CB4(&sp74, &this->actor.world, this->ptn, i);
                this->actorSpawnPtrList[i] = Actor_Spawn(
                    &globalCtx->actorCtx, globalCtx, D_80B99A74[this->type], sp74.pos.x, sp74.pos.y, sp74.pos.z,
                    this->actor.world.rot.x, this->actor.world.rot.y, this->actor.world.rot.z, D_80B99A80[this->type]);
                if (this->actorSpawnPtrList[i] != NULL) {
                    this->actorSpawnPtrList[i]->room = this->actor.room;
                } else {
                    osSyncPrintf("warning 発生失敗 (%s %d)\n", "../z_obj_mure.c", 0x17E);
                }
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B98D18.s")
#endif

#ifdef NON_MATCHING
void func_80B98F38(ObjMure* this, GlobalContext* globalCtx) {
    PosRot sp7C;
    s32 temp_v0;
    s32 i;
    GlobalContext* g = (GlobalContext*)globalCtx;

    temp_v0 = func_80B98C88(this);
    for (i = 0; i < temp_v0; i++) {
        //s16 phi_t0;
        if (this->actorSpawnPtrList[i] != NULL) {
            osSyncPrintf("Error : 既に子供がいる(%s %d)(arg_data 0x%04x)\n", "../z_obj_mure.c", 407,
                         this->actor.params);
        }
        func_80B98CB4(&sp7C, &this->actor.world, this->ptn, i);
        //phi_t0 = (this->type == 4 && i == 0) ? 1 : D_80B99A80[this->type];
        //if (this->type == 4 && i == 0) {
        //    phi_t0 = 1;
        //} else {
        //    phi_t0 = D_80B99A80[this->type];
        //}
        this->actorSpawnPtrList[i] =
            Actor_Spawn(&g->actorCtx, g, D_80B99A74[this->type], sp7C.pos.x, sp7C.pos.y, sp7C.pos.z,
                this->actor.world.rot.x, this->actor.world.rot.y, this->actor.world.rot.z, //phi_t0);
                (this->type == 4 && i == 0) ? 1 : D_80B99A80[this->type]);
        if (this->actorSpawnPtrList[i] != NULL) {
            this->unk_194[i] = 0;
            this->actorSpawnPtrList[i]->room = this->actor.room;
        } else {
            this->unk_194[i] = 1;
            osSyncPrintf("warning 発生失敗 (%s %d)\n", "../z_obj_mure.c", 438);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B98F38.s")
#endif

void func_80B990BC(ObjMure* this, GlobalContext* globalCtx) {
    switch (this->svNum) {
        case 0:
            func_80B98D18(this, globalCtx);
            break;
        case 1:
            func_80B98F38(this, globalCtx);
            break;
    }
}

// ObjMure_CleanupAndDie
void func_80B9910C(ObjMure* this, GlobalContext* globalCtx) {
    s32 temp_v0;
    s32 i;

    temp_v0 = func_80B98C88(this);
    for (i = 0; i < temp_v0; i++) {
        switch (this->unk_194[i]) {
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

void func_80B99204(ObjMure* this, GlobalContext* globalCtx) {
    func_80B9910C(this, globalCtx);
}

void func_80B99224(ObjMure* this, GlobalContext* globalCtx) {
    s32 temp_v0;
    s32 i;

    temp_v0 = func_80B98C88(this);
    for (i = 0; i < temp_v0; i++) {
        if (this->actorSpawnPtrList[i] != NULL) {
            if (this->unk_194[i] == 0) {
                if (this->actorSpawnPtrList[i]->update != NULL) {
                    if ((this->actorSpawnPtrList[i]->flags & 0x800) != 0) {
                        this->unk_194[i] = 2;
                    }
                } else {
                    this->unk_194[i] = 1;
                    this->actorSpawnPtrList[i] = NULL;
                }
            } else if ((this->unk_194[i] == 2) && (this->actorSpawnPtrList[i]->update == NULL)) {
                this->unk_194[i] = 1;
                this->actorSpawnPtrList[i] = NULL;
            }
        }
    }
}

void func_80B992E4(ObjMure* this, GlobalContext* globalCtx) {
    this->actionFunc = func_80B992F8;
}

void func_80B992F8(ObjMure* this, GlobalContext* globalCtx) {
    if (fabsf(this->actor.projectedPos.z) < D_80B99A50[this->type]) {
        this->actionFunc = func_80B99950;
        this->actor.flags |= 0x10;
        func_80B990BC(this, globalCtx);
    }
}

void func_80B99358(ObjMure* this, f32 arg1) {
    s32 temp_f16;
    s32 temp_v0;
    s32 i;

    temp_v0 = func_80B98C88(this);
    for (i = 0; i < temp_v0; i++) {
        if (this->actorSpawnPtrList[i] != NULL) {
            this->actorSpawnPtrList[i]->child = NULL;
            if (Rand_ZeroOne() <= arg1) {
                temp_f16 = (s32)(Rand_ZeroOne() * (temp_v0 - 0.5f));
                if (i != temp_f16) {
                    this->actorSpawnPtrList[i]->child = this->actorSpawnPtrList[temp_f16];
                }
            }
        }
    }
}

void func_80B9942C(ObjMure* this, s32 arg1) {
    s32 temp_v0;
    s32 i;
    s32 i2;
    s32 j;

    temp_v0 = func_80B98C88(this);
    i = 0;
    i2 = 0;

    while (i < temp_v0) {
        if (this->actorSpawnPtrList[i] != NULL) {
            if (i2 < arg1) {
                i2++;
                this->actorSpawnPtrList[i]->child = this->actorSpawnPtrList[i];
                for (j = 0; j < temp_v0; j++) {
                    if (i != j && this->actorSpawnPtrList[j]->child == this->actorSpawnPtrList[i]) {
                        this->actorSpawnPtrList[j]->child = NULL;
                    }
                }
            }
            else if (this->actorSpawnPtrList[i]->child == this->actorSpawnPtrList[i]) {
                this->actorSpawnPtrList[i]->child = NULL;
            }
        } 
        i++;
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
        return;
    }
    func_80B9942C(this, 0);
}

// regalloc
#ifdef NON_MATCHING
void func_80B997CC(ObjMure* this, GlobalContext* globalCtx) {
    s32 temp_v0;
    s32 i;

    if (this->unk_1A4 <= 0) {
        if (this->unk_1A6 != 0) {
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

    temp_v0 = func_80B98C88(this);
    for (i = 0; i < temp_v0; i++) {
        Actor* a = this->actorSpawnPtrList[i];
        if (this->actorSpawnPtrList[i] != NULL) {
            if ((a->child != NULL) && (a->update == NULL)) {
                a->child = NULL;
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B997CC.s")
#endif

void func_80B99950(ObjMure* this, GlobalContext* globalCtx) {
    func_80B99224(this, globalCtx);
    if ((D_80B99A50[this->type] + 40.0f) <= fabsf(this->actor.projectedPos.z)) {
        this->actionFunc = func_80B992F8;
        this->actor.flags &= ~0x10;
        func_80B99204(this, globalCtx);
        return;
    }
    if (D_80B99A98[this->type] != NULL) {
        D_80B99A98[this->type](this, globalCtx);
    }
}

void ObjMure_Update(Actor* thisx, GlobalContext* globalCtx) {
    ObjMure* this = THIS;

    if (this->unk_1A4 > 0) {
        this->unk_1A4 -= 1;
    }

    this->actionFunc(this, globalCtx);
}
