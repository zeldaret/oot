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

s32 D_80B99A50[] = 
    { 0x44C80000, 0x44C80000, 0x447A0000, 0x447A0000, 0x447A0000 };
s32 D_80B99A64[] = 
    { 0x0000000C, 0x00000009, 0x00000008, 0x00000000 };

// used to set actorID and params (?) in spawn child
s32 D_80B99A74[] = 
    { 0x01250000, 0x00210020, 0x001E0000 };
s32 D_80B99A80[] = 
    { 0x00000002, 0xFFFF0000, 0xFFFF0000 };

// sInitChain
InitChainEntry D_80B99A8C[] = {
    ICHAIN_F32(uncullZoneForward, 1200, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 200, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1200, ICHAIN_STOP),
};

s32 D_80B99A98[] = 
    { 0x00000000, 0x00000000 };

s32 unk_FP1 = 0x80B995A4; // &func_80B995A4;
s32 unk_FP2 = 0x80B995A4; // &func_80B995A4;
s32 unk_FP3 = 0x80B997CC; //&func_80B997CC;
s32 unk_1 = 0x00000000;

// almost matching
#ifdef NON_MATCHING
s32 func_80B98AA0(Actor *thisx, s32 globalCtx) {
    ObjMure* this = THIS;
    s16 temp_v0;

    temp_v0 = this->type;

    switch (temp_v0) {
        case 2:
        case 3:
        case 4:
            Actor_ProcessInitChain(thisx, D_80B99A8C);
            return 1;
        default:
            osSyncPrintf("Error : カリングの設定がされていません。(%s %d)(arg_data 0x%04x)\n", "../z_obj_mure.c", 0xCC, thisx->params);
            break;
    }
    return 0;
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

// needs more work...
#ifdef NON_MATCHING
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
    if (this->type >= 5) {
        osSyncPrintf("Error 群れな敵 (%s %d)(arg_data 0x%04x)\n", "../z_obj_mure.c", 0xF5, thisx->params);
        Actor_Kill(thisx);
        return;
    }
    
    if (func_80B98B1C(thisx, 0xF5) == 0) {
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
s32 func_80B98C88(ObjMure *this) {
    if (this->chNum == 0) {
        return D_80B99A64[this->ptn];
    }
    return (s32) this->chNum;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B98CB4.s")
// matching
// ObjMure_SetActorPos
void func_80B98CB4(PosRot* this, PosRot* globalCtx, s32 ptn, s32 arg3) {
    if (ptn >= 4) {
        osSyncPrintf("おかしなの (%s %d)\n", "../z_obj_mure.c", 0x133);
    }
    this->pos = globalCtx->pos;
}

// spawn children
// almost matching (1 instruction, stack/regalloc)
// need to fix the static array access (add back *2? and should be s16s in array)
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
                this->actorSpawnPtrList[i] = Actor_Spawn(&globalCtx->actorCtx, globalCtx, (s16) *(D_80B99A74 + this->type), sp74.pos.x, sp74.pos.y, sp74.pos.z, this->actor.world.rot.x, this->actor.world.rot.y, this->actor.world.rot.z, (s16) *(D_80B99A80 + this->type));
                if (this->actorSpawnPtrList[i] != NULL) {
                    this->actorSpawnPtrList[i]->flags = this->actorSpawnPtrList[i]->flags | 0x800;
                    this->actorSpawnPtrList[i]->room = this->actor.room;
                } else {
                    osSyncPrintf("warning 発生失敗 (%s %d)\n", "../z_obj_mure.c", 0x167);
                }
            } else {
                func_80B98CB4(&sp74, &this->actor.world, this->ptn, i);
                this->actorSpawnPtrList[i] = Actor_Spawn(&globalCtx->actorCtx, globalCtx, (s16) *(D_80B99A74 + this->type), sp74.pos.x, sp74.pos.y, sp74.pos.z, this->actor.world.rot.x, this->actor.world.rot.y, this->actor.world.rot.z, (s16) *(D_80B99A80 + this->type));
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

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B98F38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B990BC.s")

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B9910C.s")
// matching
// ObjMure_CleanupAndDie
void func_80B9910C(ObjMure *this, GlobalContext *globalCtx) {
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
void func_80B99204(ObjMure* this, GlobalContext* globalCtx) {
    func_80B9910C(this, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B99224.s")

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B992E4.s")
// matching
void func_80B992E4(ObjMure *this, GlobalContext *globalCtx) {
    this->actionFunc = func_80B992F8;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B992F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B99358.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B9942C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B995A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B997CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B99950.s")

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/ObjMure_Update.s")
// matching
void ObjMure_Update(Actor *thisx, GlobalContext *globalCtx) {
    ObjMure* this = THIS;

    if (this->unk_1A4 > 0) {
        this->unk_1A4 = this->unk_1A4 - 1;
    }

    this->actionFunc(this, globalCtx);
}