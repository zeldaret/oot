#include "z_en_kusa.h"

#define FLAGS 0x00800010

#define THIS ((EnKusa*)thisx)

void EnKusa_Init(EnKusa* thisx, GlobalContext* globalCtx);
void EnKusa_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnKusa_Update(Actor* thisx, GlobalContext* globalCtx);

s32 D_80A9C1D0[] = { 0x00000000 };

s32 D_80A9C1D4[] = { 0x00000000 };

s32 D_80A9C1D8[] = { 0x00000000 };

s32 D_80A9C1DC[] = { 0x00000000 };

const ActorInit En_Kusa_InitVars = {
    ACTOR_EN_KUSA,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnKusa),
    (ActorFunc)EnKusa_Init,
    (ActorFunc)EnKusa_Destroy,
    (ActorFunc)EnKusa_Update,
    NULL,
};

s32 D_80A9C200[] = { 0x0002012B, 0x012B0000 };
static s16 sObjectIds[] = {

};

// sCylinderInit
static ColliderCylinderInit D_80A9C208 = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x29, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x4FC00758, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 12, 44, 0, { 0, 0, 0 } },
};

// Collision Check data
// s32 D_80A9C234[] = { 0x0000000C, 0x001EFF00 };
CollisionCheckInfoInit sColChkInfoInit = { 0, 0xC, 0x1E, 0xFF };

s32 D_80A9C23C[] = { 0x00000000, 0x3F350481, 0x3F350481, 0x3F350481, 0x3F350481, 0x00000000,
                     0x00000000, 0x3F350481, 0xBF350481, 0xBF350481, 0x3F350481, 0x00000000 };

s32 D_80A9C26C[] = { 0x006C0066, 0x00600054, 0x00420037, 0x002A0026 };

// sInitChain
InitChainEntry D_80A9C27C[] = {
    ICHAIN_VEC3F_DIV1000(scale, 400, ICHAIN_CONTINUE),         ICHAIN_F32_DIV1000(gravity, -3200, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(minVelocityY, -17000, ICHAIN_CONTINUE), ICHAIN_F32(uncullZoneForward, 1200, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 100, ICHAIN_CONTINUE),         ICHAIN_F32(uncullZoneDownward, 120, ICHAIN_STOP),
};

s32 D_80A9C294[] = { 0x0500B9D0, 0x06000140, 0x06000140 };

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9AFA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9AFAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B07C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B140.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B174.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B1FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B21C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B574.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B630.s")
// ColliderCylinder Init function from the looks of it
// void func_80A9B630(Actor* arg0, GlobalContext* globalCtx) {
//     ColliderCylinder* sp18;
//     ColliderCylinder* temp_a1;

//     // Cylinder is going to be at actor(arg0) + 0x150
//     temp_a1 = arg0 + 0x150;
//     sp18 = temp_a1;
//     arg0 = arg0;
//     Collider_InitCylinder(globalCtx, temp_a1);
//     Collider_SetCylinder(globalCtx, temp_a1, arg0, &D_80A9C208);
//     Collider_CylinderUpdate(arg0, temp_a1);
// }

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/EnKusa_Init.s")
void EnKusa_Init(EnKusa* this, GlobalContext* globalCtx) {

    Actor_ProcessInitChain(&this->actor, D_80A9C27C);
    if (globalCtx->csCtx.state != 0) {
        this->actor.uncullZoneForward = this->actor.uncullZoneForward + 1000.0f;
    }
    // Init for the ColliderCylinder
    func_80A9B630(this, globalCtx);

    func_80061ED4(&this->actor.colChkInfo, NULL, &sColChkInfoInit);
    if (this->actor.shape.rot.y == 0) {
        // Random value I think?
        s32 rand = (s32)Math_Rand_ZeroFloat(65536.0f);
        this->actor.posRot.rot.y = (s16)rand;
        this->actor.initPosRot.rot.y = (s16)rand;
        this->actor.shape.rot.y = (s16)rand;
    }
    // this checks to see if the bush is adhered to the ground/picked up I think
    if (func_80A9AFAC(this, globalCtx, 0) == 0) {
        Actor_Kill(&this->actor);
        return;
    }
    // Original Line
    // this->unk19E = Object_GetIndex(&globalCtx->objectCtx, *(D_80A9C200 + ((this->actor.params & 3) * 2)));
    this->kusaTexObjIndex = Object_GetIndex(&globalCtx->objectCtx, OBJECT_KUSA);

    if (this->kusaTexObjIndex < 0) {
        // Prints -> Bank danger!
        osSyncPrintf("Error : バンク危険！(arg_data 0x%04x)(%s %d)\n", this->actor.params, "../z_en_kusa.c", 561);
        Actor_Kill(&this->actor);
        return;
    }
    func_80A9B7EC(this, "../z_en_kusa.c");
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/EnKusa_Destroy.s")
// void EnKusa_Destroy(Actor *thisx, GlobalContext *globalCtx) {
//     EnKusa* this = THIS;

//     //TODO: I am going to need to fix the Collider in the EnKusa struct
//     Collider_DestroyCylinder(globalCtx, thisx + 0x150);
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B7EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B810.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B89C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B8D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BA98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BAD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BBB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BC1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BEAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BEFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BF30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BF3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BFA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9C00C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9C068.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/EnKusa_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9C164.s")
