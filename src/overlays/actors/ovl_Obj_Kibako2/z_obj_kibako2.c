/*
 * File: z_obj_kibako2.c
 * Overlay: ovl_Obj_Kibako2
 * Description: Large crate
 */

#include "z_obj_kibako2.h"

#define FLAGS 0x00000000

#define THIS ((ObjKibako2*)thisx)

void ObjKibako2_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjKibako2_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ObjKibako2_Update(Actor* thisx, GlobalContext* globalCtx);
void ObjKibako2_Draw(Actor* thisx, GlobalContext* globalCtx);
void func_80B95DFC(ObjKibako2* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_06000960;
extern UNK_TYPE D_06000B70;
extern UNK_TYPE D_06001000;

const ActorInit Obj_Kibako2_InitVars = {
    ACTOR_OBJ_KIBAKO2,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_KIBAKO2,
    sizeof(ObjKibako2),
    (ActorFunc)ObjKibako2_Init,
    (ActorFunc)ObjKibako2_Destroy,
    (ActorFunc)ObjKibako2_Update,
    (ActorFunc)ObjKibako2_Draw,
};

s32 D_80B95FD0[] = { 0x0A000900, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x40000040,
                     0x00000000, 0x00010000, 0x001F0030, 0x00000000, 0x00000000 };

// sInitChain
static InitChainEntry D_80B95FFC[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 3000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_STOP),
};

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Kibako2/func_80B959D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Kibako2/func_80B95A28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Kibako2/func_80B95CA4.s")

#ifdef NON_MATCHING
void ObjKibako2_Init(Actor* thisx, GlobalContext *globalCtx) {
    ObjKibako2 *this = THIS;
    s16 pad;
    s32 sp2C;
    u32 dynaPolyId;

    sp2C = 0;
    DynaPolyInfo_SetActorMove(&this->dyna, 0);
    Actor_ProcessInitChain(&this->dyna.actor, D_80B95FFC);
    func_80B959D0(this, globalCtx);
    DynaPolyInfo_Alloc(&D_06000B70, &sp2C);
    dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, sp2C);
    this->unk_1B4 = this->dyna.actor.initPosRot.rot.z & 0x3F;
    this->dyna.dynaPolyId = dynaPolyId;
    this->actionFunc = func_80B95DFC;
    this->dyna.actor.initPosRot.rot.z = this->dyna.actor.shape.rot.z = this->dyna.actor.posRot.rot.z = this->dyna.actor.posRot.rot.x = this->dyna.actor.shape.rot.x = 0;
    // Wooden box (deferred)
    osSyncPrintf("木箱(据置)(arg %04xH)(item %04xH %d)\n", this->dyna.actor.params, this->unk_1B4, this->dyna.actor.initPosRot.rot.x);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Kibako2/ObjKibako2_Init.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Kibako2/ObjKibako2_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Kibako2/func_80B95DFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Kibako2/func_80B95ED4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Kibako2/ObjKibako2_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Kibako2/ObjKibako2_Draw.s")
