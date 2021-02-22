/*
 * File: z_obj_mure.c
 * Overlay: ovl_Obj_Mure
 * Description: Fish, Bugs, Butterflies
 */

#include "z_obj_mure.h"

#define FLAGS 0x00000000

#define THIS ((ObjMure*)thisx)

// not sure about signatures
s32 func_80B98AA0(Actor* thisx, s32 globalCtx);
s32 func_80B98B1C(Actor* thisx, s32 globalCtx);
void ObjMure_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjMure_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ObjMure_Update(Actor* thisx, GlobalContext* globalCtx);
s32 func_80B98C88(ObjMure* this);
void func_80B98CB4(PosRot* this, PosRot* arg1, s32 ptn, s32 arg3); // ObjMure_SetActorPos
void func_80B98D18(ObjMure* this, GlobalContext* globalCtx); // ObjMure_SpawnActors
void func_80B98F38(ObjMure* this, GlobalContext* globalCtx); // different SpawnActors?
void func_80B990BC(ObjMure* this, GlobalContext* globalCtx);
void func_80B9910C(ObjMure* this, GlobalContext* globalCtx);
void func_80B99204(ObjMure* this, GlobalContext* globalCtx);
void func_80B99224(ObjMure* this, GlobalContext* globalCtx);
void func_80B992E4(ObjMure* this, GlobalContext* globalCtx);
void func_80B992F8(ObjMure* this, GlobalContext* globalCtx);
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

f32 D_80B99A50[] = 
    { 1600.0f, 1600.0f, 1000.0f, 1000.0f, 1000.0f };

s32 D_80B99A64[] = 
    { 0x0000000C, 0x00000009, 0x00000008, 0x00000000 };

// used to set actorID and params (?) in spawn child
s16 D_80B99A74[] = 
    { 293, 0, 33, 32, 30, 0 };

s16 D_80B99A80[] = 
    { 0, 2, -1, 0, -1, 0 };

// sInitChain
InitChainEntry D_80B99A8C[] = {
    ICHAIN_F32(uncullZoneForward, 1200, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 200, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1200, ICHAIN_STOP),
};

ObjMureActionFunc D_80B99A98[] = 
    { 0x00000000, 0x00000000, 0x80B995A4, 0x80B995A4, 0x80B997CC, 0x00000000 };


// almost matching
// one branch instruction missing
#ifdef NON_MATCHING
s32 func_80B98AA0(Actor *thisx, s32 globalCtx) {
    ObjMure* this = THIS;

    switch (this->type) {
        case 2:
        case 3:
        case 4:
            Actor_ProcessInitChain(thisx, D_80B99A8C);
            return 1;
        default:
            osSyncPrintf("Error : カリングの設定がされていません。(%s %d)(arg_data 0x%04x)\n", "../z_obj_mure.c", 0xCC, thisx->params);
            return 0;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B98AA0.s")
#endif

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B98B1C.s")
// matching
s32 func_80B98B1C(Actor *thisx, s32 globalCtx) {
    if (func_80B98AA0(thisx, globalCtx) == 0) {
        return 0;
    }
    return 1;
} 

// almost matching
#ifndef NON_MATCHING
void ObjMure_Init(Actor *thisx, GlobalContext *globalCtx) {
    ObjMure* this = THIS;

    this->chNum = (thisx->params >> 0xC) & 0x0F;
    this->ptn = (thisx->params >> 8) & 0x07;
    this->svNum = (thisx->params >> 5) & 0x03;
    this->type = thisx->params & 0x1F;

    if (this->ptn >= 4) {
        osSyncPrintf("Error 群れな敵 (%s %d)(arg_data 0x%04x)\n", "../z_obj_mure.c", 0xED, thisx->params);
        Actor_Kill(thisx);
        return;
    }
    else if (this->type >= 5) {
        osSyncPrintf("Error 群れな敵 (%s %d)(arg_data 0x%04x)\n", "../z_obj_mure.c", 0xF5, thisx->params);
        Actor_Kill(thisx);
        return;
    }
    else if (func_80B98B1C(thisx, 0xF5) == 0) {
        Actor_Kill(thisx);
        return;
    }
    this->actionFunc = func_80B992E4;
    osSyncPrintf("群れな敵 (arg_data 0x%04x)(chNum(%d) ptn(%d) svNum(%d) type(%d))\n", thisx->params, this->chNum, this->ptn, this->svNum, this->type);
    if (func_80B98C88(this) <= 0) {
        osSyncPrintf("Warning : 個体数が設定されていません(%s %d)(arg_data 0x%04x)\n", "../z_obj_mure.c", 0x10C, thisx->params);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/ObjMure_Init.s")
#endif


// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/ObjMure_Destroy.s")
// matching
void ObjMure_Destroy(Actor* thisx, GlobalContext* globalCtx) {

}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B98C88.s")
// matching
// gets the number of spawned actors? or something else
s32 func_80B98C88(ObjMure *this) {
    if (this->chNum == 0) {
        return D_80B99A64[this->ptn];
    }
    return (s32) this->chNum;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B98CB4.s")
// matching
// ObjMure_SetActorPos
void func_80B98CB4(PosRot* this, PosRot* arg1, s32 ptn, s32 arg3) {
    if (ptn >= 4) {
        osSyncPrintf("おかしなの (%s %d)\n", "../z_obj_mure.c", 0x133);
    }
    this->pos = arg1->pos;
}

// spawn children
// almost matching (1 instruction, stack/regalloc)
// ObjMure_SpawnActors
#ifdef NON_MATCHING
void func_80B98D18(ObjMure* this, GlobalContext* globalCtx) {
    PosRot sp74;
    s32 i;
    s32 temp_v0;

    temp_v0 = func_80B98C88(this);
    for (i = 0; i < temp_v0; i++)
    {
        if (this->actorSpawnPtrList[i] != NULL) {
            // Translation: Error: I already have a child(%s %d)(arg_data 0x%04x)
            osSyncPrintf("Error : 既に子供がいる(%s %d)(arg_data 0x%04x)\n", "../z_obj_mure.c", 0x14D, this->actor.params);
        }
        if (this->unk_194[i] != 1) {
            if (this->unk_194[i] == 2) {
                func_80B98CB4(&sp74, &this->actor.world, this->ptn, i);
                this->actorSpawnPtrList[i] = Actor_Spawn(&globalCtx->actorCtx, globalCtx, D_80B99A74[this->type], sp74.pos.x, sp74.pos.y, sp74.pos.z, this->actor.world.rot.x, this->actor.world.rot.y, this->actor.world.rot.z, D_80B99A80[this->type]);
                if (this->actorSpawnPtrList[i] != NULL) {
                    this->actorSpawnPtrList[i]->flags = this->actorSpawnPtrList[i]->flags | 0x800;
                    this->actorSpawnPtrList[i]->room = this->actor.room;
                } else {
                    osSyncPrintf("warning 発生失敗 (%s %d)\n", "../z_obj_mure.c", 0x167);
                }
            } else {
                func_80B98CB4(&sp74, &this->actor.world, this->ptn, i);
                this->actorSpawnPtrList[i] = Actor_Spawn(&globalCtx->actorCtx, globalCtx, D_80B99A74[this->type], sp74.pos.x, sp74.pos.y, sp74.pos.z, this->actor.world.rot.x, this->actor.world.rot.y, this->actor.world.rot.z, D_80B99A80[this->type]);
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
    s16 phi_t0;

    temp_v0 = func_80B98C88(this);
    for (i = 0; i < temp_v0; i++) {
        if (this->actorSpawnPtrList[i] != NULL) {
            osSyncPrintf("Error : 既に子供がいる(%s %d)(arg_data 0x%04x)\n", "../z_obj_mure.c", 0x197, this->actor.params);
        }
        func_80B98CB4(&sp7C, &this->actor.world, this->ptn, i);
        if (this->type == 4 && i == 0) {
            phi_t0 = 1;
        } else {
            phi_t0 = D_80B99A80[this->type];
        }
        this->actorSpawnPtrList[i] = Actor_Spawn(&globalCtx->actorCtx, globalCtx, D_80B99A74[this->type], sp7C.pos.x, sp7C.pos.y, sp7C.pos.z, this->actor.world.rot.x, this->actor.world.rot.y, this->actor.world.rot.z, phi_t0);
        if (this->actorSpawnPtrList[i] != NULL) {
            this->unk_194[i] = 0;
            this->actorSpawnPtrList[i]->room = this->actor.room;
        } else {
            this->unk_194[i] = 1;
            osSyncPrintf("warning 発生失敗 (%s %d)\n", "../z_obj_mure.c", 0x1B6);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B98F38.s")
#endif

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B990BC.s")
// matching
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

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B9910C.s")
// matching
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
                    }
                    else {
                        Actor_Kill(this->actorSpawnPtrList[i]);
                        this->actorSpawnPtrList[i] = NULL;
                    }
                }
                break;
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B99204.s")
// matching
void func_80B99204(ObjMure* this, GlobalContext* globalCtx) {
    func_80B9910C(this, globalCtx);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B99224.s")
// matching
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

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B992E4.s")
// matching
void func_80B992E4(ObjMure *this, GlobalContext *globalCtx) {
    this->actionFunc = func_80B992F8;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B992F8.s")
// matching
void func_80B992F8(ObjMure *this, GlobalContext *globalCtx) {
    if (fabsf(this->actor.projectedPos.z) < D_80B99A50[this->type]) {
        this->actionFunc = func_80B99950;
        this->actor.flags = this->actor.flags | 0x10;
        func_80B990BC(this, globalCtx); // most likely the args
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B99358.s")
// matching 
void func_80B99358(ObjMure* this, f32 arg1) {
    s32 temp_f16;
    s32 temp_v0;
    s32 i;

    temp_v0 = func_80B98C88(this);
    for (i = 0; i < temp_v0; i++) {
        if (this->actorSpawnPtrList[i] != NULL) {
            this->actorSpawnPtrList[i]->child = NULL;
            if (Rand_ZeroOne() <= arg1) {
                temp_f16 = (s32) (Rand_ZeroOne() * ((f32) temp_v0 - 0.5f));
                if (i != temp_f16) {
                    this->actorSpawnPtrList[i]->child = this->actorSpawnPtrList[temp_f16];
                }
            }
        }
    }
}

// almost matching
#ifdef NON_MATCHING
void func_80B9942C(ObjMure* this, s32 arg1) {
    s32 temp_v0;
    s32 i;
    s32 j;

    temp_v0 = func_80B98C88(this);
    for (i = 0; i < temp_v0; i++) {
        if (this->actorSpawnPtrList[i] != NULL && i < arg1) {
            this->actorSpawnPtrList[i]->child = this->actorSpawnPtrList[i];
            for (j = i; j < temp_v0; j++) {
                if (i != j && this->actorSpawnPtrList[j]->child == this->actorSpawnPtrList[i]) {
                    this->actorSpawnPtrList[j]->child = NULL;
                }
            }
        } 
        else if (this->actorSpawnPtrList[i]->child == this->actorSpawnPtrList[i]) {
            this->actorSpawnPtrList[i]->child = NULL;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B9942C.s")
#endif

// almost matching, stack/regalloc
#ifdef NON_MATCHING
void func_80B995A4(ObjMure* this, GlobalContext* GlobalContext) {
    if (this->unk_1A4 <= 0) {
        if (this->unk_1A6 != 0) {
            this->unk_1A6 = 0;
            func_80B99358(this, (Rand_ZeroOne() * 0.5f) + 0.1f);
            if (this->actor.xzDistToPlayer < 60.0f) {
                this->unk_1A4 = (s16) ((s32) (Rand_ZeroOne() * 5.5f) + 4);
            } else {
                this->unk_1A4 = (s16) ((s32) (Rand_ZeroOne() * 40.5f) + 4);
            }
        } else {
            this->unk_1A6 = 1;
            if (this->actor.xzDistToPlayer < 60.0f) {
                this->unk_1A4 = (s16) ((s32) (Rand_ZeroOne() * 10.5f) + 4);
                func_80B99358(this, (Rand_ZeroOne() * 0.2f) + 0.8f);
            } else {
                this->unk_1A4 = (s16) ((s32) (Rand_ZeroOne() * 10.5f) + 4);
                func_80B99358(this, (Rand_ZeroOne() * 0.2f) + 0.6f);
            }
        }
    }
    if (this->actor.xzDistToPlayer < 120.0f) {
        this->unk_1A8 = this->unk_1A8 + 1;
    } else {
        this->unk_1A8 = 0;
    }
    if (this->unk_1A8 >= 0x50) {
        func_80B9942C(this, 1);
        return;
    }
    func_80B9942C(this, 0);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B995A4.s")
#endif

// almost matching (stack diff)
#ifdef NON_MATCHING
void func_80B997CC(ObjMure* this, GlobalContext* globalCtx) {
    s32 temp_v0;
    s32 i;

    if (this->unk_1A4 <= 0) {
        if (this->unk_1A6 != 0) {
            this->unk_1A6 = 0;
            func_80B99358(this, Rand_ZeroOne() * 0.2f);
            if (this->actor.xzDistToPlayer < 60.0f) {
                this->unk_1A4 = (s32) (Rand_ZeroOne() * 5.5f) + 4;
            } else {
                this->unk_1A4 = (s32) (Rand_ZeroOne() * 40.5f) + 4;
            }
        } else {
            this->unk_1A6 = 1;
            func_80B99358(this, Rand_ZeroOne() * 0.7f);
            this->unk_1A4 = (s32) (Rand_ZeroOne() * 10.5f) + 4;
        }
    }
    
    temp_v0 = func_80B98C88(this);
    for (i = 0; i < temp_v0; i++) {
        if (this->actorSpawnPtrList[i] != NULL) {
            if ((this->actorSpawnPtrList[i]->child != NULL) && (this->actorSpawnPtrList[i]->update == NULL)) {
                this->actorSpawnPtrList[i]->child = NULL;
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B997CC.s")
#endif

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B99950.s")
// matching
void func_80B99950(ObjMure *this, GlobalContext *globalCtx) {
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

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/ObjMure_Update.s")
// matching
void ObjMure_Update(Actor *thisx, GlobalContext *globalCtx) {
    ObjMure* this = THIS;

    if (this->unk_1A4 > 0) {
        this->unk_1A4 = this->unk_1A4 - 1;
    }

    this->actionFunc(this, globalCtx);
}