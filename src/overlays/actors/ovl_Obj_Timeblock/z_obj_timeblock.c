/*
 * File: z_obj_timeblock.c
 * Overlay: ovl_Obj_Timeblock
 * Description: Song of Time Block
 */

#include "z_obj_timeblock.h"

#define FLAGS 0x0A000011

#define THIS ((ObjTimeblock*)thisx)
#define BOOL(x) (x ? 1 : 0)

#define BLOCK_OF_TIME_JA "時のブロック"

void ObjTimeblock_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjTimeblock_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ObjTimeblock_Update(Actor* thisx, GlobalContext* globalCtx);
void ObjTimeblock_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80BA040C(ObjTimeblock* this, GlobalContext* globalCtx);
void func_80BA0514(ObjTimeblock* this);
void func_80BA0758(ObjTimeblock* this);
void func_80BA083C(ObjTimeblock* this);

const ActorInit Obj_Timeblock_InitVars = {
    ACTOR_OBJ_TIMEBLOCK,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_TIMEBLOCK,
    sizeof(ObjTimeblock),
    (ActorFunc)ObjTimeblock_Init,
    (ActorFunc)ObjTimeblock_Destroy,
    (ActorFunc)ObjTimeblock_Update,
    (ActorFunc)ObjTimeblock_Draw,
};

typedef struct Unk_actorParams {
    /* 0x00 */ f32 scale;
    /* 0x04 */ f32 height;
    /* 0x08 */ s16 demoEffectParams;
} Unk_actorParams; // size = 0x0C

Unk_actorParams unk_actorParams[] = {
    { 1.0, 60.0, 0x0018 },
    { 0.60, 40.0, 0x0019 },
};

s32 D_80BA0B08[] = { 0x42700000, 0x42C80000, 0x430C0000, 0x43340000, 0x435C0000, 0x43820000, 0x43960000, 0x43960000 };

static InitChainEntry sInitChain[] = {
    ICHAIN_U8(unk_1F, 2, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1800, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 300, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1500, ICHAIN_STOP),
};

s32 D_80BA0B38[] = { 0x64788C50, 0x8CC86496, 0xC864C8F0, 0x506E8C46, 0xA0E15064, 0x82646EBE };

// generates value for unk_178
u32 func_80B9FFA0(ObjTimeblock* this) {
    if (!((this->dyna.actor.params >> 10) & 1)) {
        u32 temp_unk_177 = this->unk_177;
        if (temp_unk_177 == 0) {
            return this->unk_175;
        } else {
            u8 temp_unk_flag = BOOL((this->dyna.actor.params >> 15) & 1);
            if (temp_unk_177 == 1) {
                return this->unk_174 ^ temp_unk_flag;
            } else {
                u8 linkIsYoung = BOOL(LINK_AGE_IN_YEARS == 5);
                return this->unk_174 ^ temp_unk_flag ^ linkIsYoung;
            }
        }
    } else {
        return BOOL((this->dyna.actor.params >> 15) & 1) ^ this->unk_174;
    }
}

// spawnDemoEffect
void func_80BA0058(ObjTimeblock* this, GlobalContext* globalCtx) {
    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_DEMO_EFFECT, this->dyna.actor.posRot.pos.x,
                this->dyna.actor.posRot.pos.y, this->dyna.actor.posRot.pos.z, 0, 0, 0,
                unk_actorParams[(this->dyna.actor.params >> 8) & 1].demoEffectParams);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80BA00CC.s")

extern s32 D_06000B30;

void ObjTimeblock_Init(Actor* thisx, GlobalContext* globalCtx) {
    ObjTimeblock* this = THIS;
    s32 pad;
    UNK_TYPE dynaPoly_p = 0;

    DynaPolyInfo_SetActorMove(&this->dyna, 0);
    this->dyna.actor.shape.rot.z = 0;
    this->dyna.actor.posRot.rot.z = this->dyna.actor.shape.rot.z;

    DynaPolyInfo_Alloc(&D_06000B30, &dynaPoly_p);

    this->dyna.dynaPolyId =
        DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, dynaPoly_p);

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    Actor_SetScale(&this->dyna.actor, unk_actorParams[(this->dyna.actor.params >> 8) & 1].scale);

    if ((this->dyna.actor.params >> 6) & 1) {
        this->unk_177 = 0;
    } else {
        this->unk_177 = ((this->dyna.actor.params & 0x3F) < 0x38) ? 2 : 1;
    }

    this->actionFunc = &func_80BA040C;

    Actor_SetHeight(&this->dyna.actor, unk_actorParams[(this->dyna.actor.params >> 8) & 1].height);

    this->unk_174 = BOOL(Flags_GetSwitch(globalCtx, (this->dyna.actor.params & 0x3F)));
    this->unk_175 = BOOL((this->dyna.actor.params >> 0xF) & 1);
    this->unk_178 = func_80B9FFA0(this);

    if (!((this->dyna.actor.params >> 0xA) & 1)) {
        func_80BA0514(this);
    } else if (this->unk_178) {
        func_80BA0758(this);
    } else {
        func_80BA083C(this);
    }

    osSyncPrintf(BLOCK_OF_TIME_JA " (<arg> %04xH <type> save:%d color:%d range:%d move:%d)\n",
                 this->dyna.actor.params & 0xFFFF, this->unk_177, this->dyna.actor.initPosRot.rot.z & 7,
                 (this->dyna.actor.params >> 0xB) & 7, (this->dyna.actor.params >> 0xA) & 1);
}

void ObjTimeblock_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, THIS->dyna.dynaPolyId);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80BA032C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80BA040C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80BA0480.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80BA04F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80BA0508.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80BA0514.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80BA0524.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80BA06AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80BA0758.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80BA0768.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80BA083C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80BA084C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/ObjTimeblock_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/ObjTimeblock_Draw.s")
