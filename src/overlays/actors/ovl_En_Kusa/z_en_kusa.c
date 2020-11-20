/*
 * File: z_en_kusa.c
 * Overlay: ovl_en_kusa
 * Description: Grass Bush.
 */

#include "z_en_kusa.h"
#include "overlays/effects/ovl_Effect_Ss_Kakera/z_eff_ss_kakera.h"

#include "vt.h"

#define FLAGS 0x00800010

#define THIS ((EnKusa*)thisx)

void EnKusa_Init(Actor* thisx, GlobalContext* globalCtx);
void EnKusa_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnKusa_Update(Actor* thisx, GlobalContext* globalCtx);
void func_80A9C164(Actor* thisx, GlobalContext* globalCtx);

void func_80A9AFA0(EnKusa* this, EnKusaActionFunc actionFunc);
s32 func_80A9AFAC(EnKusa* this, GlobalContext* globalCtx, f32 arg2);
void func_80A9B07C(EnKusa* this, GlobalContext* globalCtx);
void func_80A9B140(EnKusa* this);
void func_80A9B174(Vec3f* this, f32 arg1);
void func_80A9B1FC(EnKusa* this);
void func_80A9B21C(EnKusa* this, GlobalContext* globalCtx);
void func_80A9B574(EnKusa* this, GlobalContext* globalCtx);
void func_80A9B630(Actor* thisx, GlobalContext* globalCtx);

void func_80A9B7EC(EnKusa* this);
void func_80A9B810(EnKusa* this, GlobalContext* globalCtx);
void func_80A9B89C(EnKusa* this);
void func_80A9B8D8(EnKusa* this, GlobalContext* globalCtx);
void func_80A9BA98(EnKusa* this);
void func_80A9BAD8(EnKusa* this, GlobalContext* globalCtx);
void func_80A9BBB0(EnKusa* this);
void func_80A9BC1C(EnKusa* this, GlobalContext* globalCtx);
void func_80A9BEAC(EnKusa* this);
void func_80A9BEFC(EnKusa* this, GlobalContext* globalCtx);
void func_80A9BF30(EnKusa* this, EnKusaActionFunc actionFunc);
void func_80A9BF3C(EnKusa* this);
void func_80A9BFA8(EnKusa* this, GlobalContext* globalCtx);
void func_80A9C00C(EnKusa* this);
void func_80A9C068(EnKusa* this, GlobalContext* globalCtx);
void func_80A9C164(Actor* thisx, GlobalContext* globalCtx);

s16 D_80A9C1D0[] = { 0x00000000 };

s16 D_80A9C1D4[] = { 0x00000000 };

s16 D_80A9C1D8[] = { 0x00000000 };

s16 D_80A9C1DC[] = { 0x00000000 };

const ActorInit En_Kusa_InitVars = { ACTOR_EN_KUSA,
                                     ACTORTYPE_PROP,
                                     FLAGS,
                                     OBJECT_GAMEPLAY_KEEP,
                                     sizeof(EnKusa),
                                     (ActorFunc)EnKusa_Init,
                                     (ActorFunc)EnKusa_Destroy,
                                     (ActorFunc)EnKusa_Update,
                                     NULL };

s16 D_80A9C200[] = { OBJECT_GAMEPLAY_FIELD_KEEP, OBJECT_KUSA, OBJECT_KUSA };

// sCylinderInit
static ColliderCylinderInit D_80A9C208 = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x29, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x4FC00758, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 12, 44, 0, { 0, 0, 0 } },
};

// Collision Check data
// sColChkInfoInit
CollisionCheckInfoInit D_80A9C234 = { 0, 0xC, 0x1E, 0xFF };

Vec3f D_80A9C23C[] = {
    { 0, 0.707099f, 0.707099f }, { 0.707099f, 0.707099f, 0 }, { 0, 0.707099f, -0.707099f }, { -0.707099f, 0.707099f, 0 }
};

s16 D_80A9C26C[] = { 0x006C, 0x0066, 0x0060, 0x0054, 0x0042, 0x0037, 0x002A, 0x0026 };

// sInitChain
InitChainEntry D_80A9C27C[] = {
    ICHAIN_VEC3F_DIV1000(scale, 400, ICHAIN_CONTINUE),         ICHAIN_F32_DIV1000(gravity, -3200, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(minVelocityY, -17000, ICHAIN_CONTINUE), ICHAIN_F32(uncullZoneForward, 1200, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 100, ICHAIN_CONTINUE),         ICHAIN_F32(uncullZoneDownward, 120, ICHAIN_STOP),
};

s32 D_80A9C294[] = { 0x0500B9D0, 0x06000140, 0x06000140 };

extern Gfx D_060002E0[];
extern Gfx D_040355E0[]; // bush fragments 1
extern Gfx D_040356A0[]; // bush fragments 2

// Matches!
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9AFA0.s")
void func_80A9AFA0(EnKusa* this, EnKusaActionFunc actionFunc) {
    this->unk_19C = 0;
    this->actionFunc = actionFunc;
}

// Matches!
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9AFAC.s")
// Snap to floor
s32 func_80A9AFAC(EnKusa* this, GlobalContext* globalCtx, f32 arg2) {
    CollisionPoly* sp34;
    f32 sp28;
    Vec3f sp30;
    UNK_TYPE sp24;
    f32 temp_f0;

    sp30.x = this->actor.posRot.pos.x;
    sp30.y = this->actor.posRot.pos.y + 30.0f;
    sp30.z = this->actor.posRot.pos.z;
    temp_f0 = func_8003C9A4(&globalCtx->colCtx, &sp28, &sp24, &this->actor, &sp30);
    if (-32000.0f < temp_f0) {
        this->actor.posRot.pos.y = temp_f0 + arg2;
        Math_Vec3f_Copy(&this->actor.initPosRot, &this->actor.posRot);
        return true;
    }
    osSyncPrintf(VT_COL(YELLOW, BLACK));
    // Translation: Failure attaching to ground
    osSyncPrintf("地面に付着失敗(%s %d)\n", "../z_en_kusa.c", 0x143);
    osSyncPrintf(VT_RST);
    return false;
}

// Matches!
// Spawn Collectible
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B07C.s")
void func_80A9B07C(EnKusa* this, GlobalContext* globalCtx) {
    s16 dropParams;
    switch (this->actor.params & 3) {
        case 0:
        case 2:
            dropParams = (this->actor.params >> 8) & 0xF;
            if (dropParams >= 0xD) {
                dropParams = 0;
            }
            Item_DropCollectibleRandom(globalCtx, NULL, &this->actor.posRot.pos, dropParams << 4);
            break;

        case 1:
            if (Math_Rand_ZeroOne() < 0.5f) {
                Item_DropCollectible(globalCtx, &this->actor.posRot.pos, 0x10);

            } else {
                Item_DropCollectible(globalCtx, &this->actor.posRot.pos, 3);
                break;
            }
    }
}

// Matches!
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B140.s")
void func_80A9B140(EnKusa* this) {
    this->actor.velocity.y += this->actor.gravity;

    if (this->actor.velocity.y < this->actor.minVelocityY) {
        this->actor.velocity.y = this->actor.minVelocityY;
    }
}

// Matches!
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B174.s")
void func_80A9B174(Vec3f* this, f32 arg1) {

    arg1 += ((Math_Rand_ZeroOne() * 0.2f) - 0.1f) * arg1;

    this->x -= this->x * arg1;
    this->y -= this->y * arg1;
    this->z -= this->z * arg1;
}

// Matching!
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B1FC.s")
void func_80A9B1FC(EnKusa* this) {
    this->actor.scale.y = 0.16000001f;
    this->actor.scale.x = 0.120000005f;
    this->actor.scale.z = 0.120000005f;
}

// // TODO: Finish this function
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B21C.s")
void func_80A9B21C(EnKusa* this, GlobalContext* globalCtx) {
    Vec3f fragmentVelocity;
    Vec3f effectPosition;
    u32 i;
    s32 index;
    Vec3f* new_var;
    s32 pad;

    for (i = 0; i < ARRAY_COUNT(D_80A9C26C); i++) {
        new_var = &D_80A9C23C[i];
        effectPosition.x = this->actor.posRot.pos.x + (new_var->x * this->actor.scale.x * 20.0f);
        effectPosition.y = this->actor.posRot.pos.y + (new_var->y * this->actor.scale.y * 20.0f) + 10.0f;
        effectPosition.z = this->actor.posRot.pos.z + (new_var->z * this->actor.scale.z * 20.0f);
        fragmentVelocity.x = (Math_Rand_ZeroOne() - 0.5f) * 8.0f;
        fragmentVelocity.y = Math_Rand_ZeroOne() * 10.0f;
        fragmentVelocity.z = (Math_Rand_ZeroOne() - 0.5f) * 8.0f;
        index = (s32)(Math_Rand_ZeroOne() * 111.1f) & 7;
        EffectSsKakera_Spawn(globalCtx, &effectPosition, &fragmentVelocity, &effectPosition, -100, 64, 40, 3, 0,
                             D_80A9C26C[index], 0, 0, 80, KAKERA_COLOR_NONE, OBJECT_GAMEPLAY_KEEP, D_040355E0);
        effectPosition.x = this->actor.posRot.pos.x + (new_var->x * this->actor.scale.x * 40.0f);
        effectPosition.y = this->actor.posRot.pos.y + (new_var->y * this->actor.scale.y * 40.0f) + 10.0f;
        effectPosition.z = this->actor.posRot.pos.z + (new_var->z * this->actor.scale.z * 40.0f);
        fragmentVelocity.x = (Math_Rand_ZeroOne() - 0.5f) * 6.0f;
        fragmentVelocity.y = Math_Rand_ZeroOne() * 10.0f;
        fragmentVelocity.z = (Math_Rand_ZeroOne() - 0.5f) * 6.0f;
        index = (s32)(Math_Rand_ZeroOne() * 111.1f) % 7;
        EffectSsKakera_Spawn(globalCtx, &effectPosition, &fragmentVelocity, &effectPosition, -100, 64, 40, 3, 0,
                             D_80A9C26C[index], 0, 0, 80, KAKERA_COLOR_NONE, OBJECT_GAMEPLAY_KEEP, D_040356A0);
    }
}


// Matching!
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B574.s")
// Spawn Bugs
void func_80A9B574(EnKusa* this, GlobalContext* globalCtx) {
    s32 i;

    for (i = 0; i < 3; i++) {
        Actor* bug =
            Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_INSECT, this->actor.posRot.pos.x,
                        this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, Math_Rand_ZeroOne() * 0xFFFF, 0, 1);

        if (bug == NULL) {
            break;
        }
    }
}

// Matching!
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B630.s")
// EnKusa_InitCollider
void func_80A9B630(Actor* thisx, GlobalContext* globalCtx) {
    EnKusa* this = THIS;

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &D_80A9C208);
    Collider_CylinderUpdate(&this->actor, &this->collider);
}

// Matches!
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/EnKusa_Init.s")
void EnKusa_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnKusa* this = THIS;

    Actor_ProcessInitChain(&this->actor, D_80A9C27C);
    if (globalCtx->csCtx.state != 0) {
        this->actor.uncullZoneForward += 1000.0f;
    }
    // Init for the ColliderCylinder
    func_80A9B630(thisx, globalCtx);

    func_80061ED4(&this->actor.colChkInfo, NULL, &D_80A9C234);
    if (this->actor.shape.rot.y == 0) {
        // Random value I think?
        s32 rand = (s32)Math_Rand_ZeroFloat(65536.0f);
        this->actor.posRot.rot.y = (s16)rand;
        this->actor.initPosRot.rot.y = (s16)rand;
        this->actor.shape.rot.y = (s16)rand;
    }

    if (func_80A9AFAC(this, globalCtx, 0.0f) == 0) {
        Actor_Kill(&this->actor);
        return;
    }
    this->kusaTexObjIndex = Object_GetIndex(&globalCtx->objectCtx, D_80A9C200[thisx->params & 3]);

    if (this->kusaTexObjIndex < 0) {
        // Prints -> Bank danger!
        osSyncPrintf("Error : バンク危険！ (arg_data 0x%04x)(%s %d)\n", thisx->params, "../z_en_kusa.c", 0x231);
        Actor_Kill(&this->actor);
        return;
    }
    // Maybe this is SetupWait?
    func_80A9B7EC(this);
}

// Matches!
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/EnKusa_Destroy.s")
void EnKusa_Destroy(Actor* thisx, GlobalContext* globalCtx) {

    // TODO: I am going to need to fix the Collider in the EnKusa struct
    Collider_DestroyCylinder(globalCtx, &THIS->collider);
}

// Matches!
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B7EC.s")
// Is this SetupWait?
void func_80A9B7EC(EnKusa* this) {
    func_80A9AFA0(this, func_80A9B810);
}

// Matches!
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B810.s")
void func_80A9B810(EnKusa* this, GlobalContext* globalCtx) {
    if (Object_IsLoaded(&globalCtx->objectCtx, this->kusaTexObjIndex)) {
        if (this->actor.flags & 0x800) {
            func_80A9BEAC(this);
        } else {
            func_80A9B89C(this);
        }
        this->actor.draw = func_80A9C164;
        this->actor.objBankIndex = this->kusaTexObjIndex;
        this->actor.flags &= -0x11;
    }
}

// Matching!
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B89C.s")
void func_80A9B89C(EnKusa* this) {
    func_80A9AFA0(this, func_80A9B8D8);
    this->actor.flags = this->actor.flags & -0x11;
}

// Matches!
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9B8D8.s")
void func_80A9B8D8(EnKusa* this, GlobalContext* globalCtx) {
    if (Actor_HasParent(&this->actor, globalCtx) != 0) {
        func_80A9BA98(this); // Lift up the plant
        Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot, 20, NA_SE_PL_PULL_UP_PLANT);
        return;
    }
    // If hit with a sword
    if ((this->collider.base.acFlags & 2) != 0) {
        this->collider.base.acFlags &= 0xFFFD;
        func_80A9B21C(this, globalCtx); // Spawn fragments
        func_80A9B07C(this, globalCtx); // Drop collectable
        Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot, 20, NA_SE_EV_PLANT_BROKEN);
        if (((this->actor.params >> 4) & 1) != 0) {
            func_80A9B574(this, globalCtx); // Spawn bugs
        }
        if ((this->actor.params & 3) == 0) {
            Actor_Kill(&this->actor);
            return;
        }
        func_80A9BEAC(this);
        this->actor.flags |= 0x800;
        return;
    }

    if (!(this->collider.base.maskA & 8) && (this->actor.xzDistFromLink > 12.0f)) {
        this->collider.base.maskA |= 8;
    }
    if (this->actor.xzDistFromLink < 600.0f) {
        ColliderCylinder* collider = &this->collider;
        Collider_CylinderUpdate(&this->actor, collider);
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &collider->base);

        if (this->actor.xzDistFromLink < 400.0f) {
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &collider->base);
            if (this->actor.xzDistFromLink < 100.0f) {
                func_8002F580(this, globalCtx);
            }
        }
    }
}

// Matches!
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BA98.s")
// Possibly SetupLiftedUp? -> modeled after EnIshi_SetupLiftedUp
void func_80A9BA98(EnKusa* this) {
    func_80A9AFA0(this, func_80A9BAD8);
    this->actor.room = -1;
    this->actor.flags |= 0x10;
}

// Matches!
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BAD8.s")
void func_80A9BAD8(EnKusa* this, GlobalContext* globalCtx) {

    if (Actor_HasNoParent(&this->actor, globalCtx)) {
        this->actor.room = globalCtx->roomCtx.curRoom.num;
        func_80A9BBB0(&this->actor);
        this->actor.velocity.x = this->actor.speedXZ * Math_Sins(this->actor.posRot.rot.y);
        this->actor.velocity.z = this->actor.speedXZ * Math_Coss(this->actor.posRot.rot.y);
        this->actor.colChkInfo.mass = 0xF0;
        this->actor.gravity = -0.1f;
        func_80A9B140(&this->actor);
        func_80A9B174(&this->actor.velocity, 0.005f);
        func_8002D7EC(&this->actor);
        func_8002E4B4(globalCtx, &this->actor, 7.5f, 35.0f, 0.0f, 0xC5);
        this->actor.gravity = -3.2f;
    }
}

// Matches!
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BBB0.s")
void func_80A9BBB0(EnKusa* this) {
    func_80A9AFA0(this, func_80A9BC1C);
    *D_80A9C1D0 = -0xBB8;
    *D_80A9C1D8 = ((Math_Rand_ZeroOne() - 0.5f) * 1600.0f);
    *D_80A9C1D4 = 0;
    *D_80A9C1DC = 0;
}

// Matches!
// Water break
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BC1C.s")
void func_80A9BC1C(EnKusa* this, GlobalContext* globalCtx) {
    s32 pad; // padding to push the stack down
    Vec3f contactPos;

    if (this->actor.bgCheckFlags & 11) {
        if ((this->actor.bgCheckFlags & 32) == 0) {
            Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot, 20, NA_SE_EV_PLANT_BROKEN);
        }
        func_80A9B21C(this, globalCtx);
        func_80A9B07C(this, globalCtx); // Drop collectible
        switch (this->actor.params & 3) {
            case 0:
            case 2:
                Actor_Kill(&this->actor);
                return;

            case 1:
                func_80A9BF3C(&this->actor);
        }
    } else {
        if (this->actor.bgCheckFlags & 0x40) {
            contactPos.x = this->actor.posRot.pos.x;
            contactPos.y = this->actor.posRot.pos.y + this->actor.waterY;
            contactPos.z = this->actor.posRot.pos.z;
            EffectSsGSplash_Spawn(globalCtx, &contactPos, NULL, NULL, 0, 400);
            EffectSsGRipple_Spawn(globalCtx, &contactPos, 150, 650, 0);
            EffectSsGRipple_Spawn(globalCtx, &contactPos, 400, 800, 4);
            EffectSsGRipple_Spawn(globalCtx, &contactPos, 500, 1100, 8);
            this->actor.minVelocityY = -3.0f;
            *D_80A9C1D4 = (*D_80A9C1D4 >> 1);
            *D_80A9C1D0 = (*D_80A9C1D0 >> 1);
            *D_80A9C1DC = (*D_80A9C1DC >> 1);
            *D_80A9C1D8 = (*D_80A9C1D8 >> 1);
            this->actor.bgCheckFlags = this->actor.bgCheckFlags & 0xFFBF;
            Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot, 40, NA_SE_EV_DIVE_INTO_WATER_L);
        }
        func_80A9B140(&this->actor);
        Math_ApproxS(D_80A9C1D4, *D_80A9C1D0, 0x1F4);
        Math_ApproxS(D_80A9C1DC, *D_80A9C1D8, 0xAA);
        this->actor.shape.rot.x += *D_80A9C1D4;
        this->actor.shape.rot.y += *D_80A9C1DC;
        func_80A9B174(&this->actor.velocity, 0.05f);
        func_8002D7EC(&this->actor);
        func_8002E4B4(globalCtx, this, 7.5f, 35.0f, 0.0f, 0xC5);
        Collider_CylinderUpdate(&this->actor, &this->collider);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }
}

// Matching!
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BEAC.s")
void func_80A9BEAC(EnKusa* this) {

    if ((this->actor.params & 3) != 1) {
        if ((this->actor.params & 3) == 2) {
            // This function is blank
            func_80A9AFA0(this, func_80A9BF30);
        }
    } else {
        func_80A9AFA0(this, func_80A9BEFC);
    }
}

// Matches!
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BEFC.s")
void func_80A9BEFC(EnKusa* this, GlobalContext* globalCtx) {
    if (this->unk_19C >= 0x78) {
        func_80A9C00C(this);
    }
}

// Matches!
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BF30.s")
void func_80A9BF30(EnKusa* this, EnKusaActionFunc actionFunc) {
    // Function was intentionally left blank
}

// Matches!
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BF3C.s")
void func_80A9BF3C(EnKusa* this) {
    this->actor.posRot.pos.x = this->actor.initPosRot.pos.x;
    this->actor.posRot.pos.y = this->actor.initPosRot.pos.y - 9.0f;
    this->actor.posRot.pos.z = this->actor.initPosRot.pos.z;
    // Set scale factors
    func_80A9B1FC(this);
    this->actor.shape.rot = this->actor.initPosRot.rot;
    func_80A9AFA0(this, func_80A9BFA8);
}

// Matching!
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9BFA8.s")
void func_80A9BFA8(EnKusa* this, GlobalContext* globalCtx) {

    if (this->unk_19C >= 0x79) {
        if ((Math_ApproxF(&this->actor.posRot.pos.y, this->actor.initPosRot.pos.y, 0.6f) != 0) &&
            (this->unk_19C >= 0xAA)) {
            func_80A9C00C(this);
        }
    }
}

// Matches!
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9C00C.s")
void func_80A9C00C(EnKusa* this) {
    func_80A9AFA0(this, func_80A9C068);
    func_80A9B1FC(this);
    this->actor.shape.rot = this->actor.initPosRot.rot;
    this->actor.flags = this->actor.flags & -0x801;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9C068.s")
void func_80A9C068(EnKusa* this, GlobalContext* globalCtx) {
    s32 sp24;

    sp24 = Math_ApproxF(&this->actor.scale.y, 0.4f, 0.014f) & 1;
    sp24 &= Math_ApproxF(&this->actor.scale, 0.4f, 0.011f);
    this->actor.scale.z = this->actor.scale.x;
    if (sp24 != 0) {
        Actor_SetScale(this, 0.4f);
        func_80A9B89C(this);
        this->collider.base.maskA = this->collider.base.maskA & 0xFFF7;
    }
}

// Matching!
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/EnKusa_Update.s")
void EnKusa_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnKusa* this = THIS;

    this->unk_19C = this->unk_19C + 1;
    this->actionFunc(this, globalCtx);
    if ((this->actor.flags & 0x800) != 0) {
        this->actor.shape.unk_08 = -6.25f;
        return;
    }
    this->actor.shape.unk_08 = 0.0f;
}

// Matching!
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kusa/func_80A9C164.s")
void func_80A9C164(Actor* thisx, GlobalContext* globalCtx) {
    EnKusa* this = THIS;
    if ((this->actor.flags & 0x800) != 0) {
        Gfx_DrawDListOpa(globalCtx, D_060002E0);
        return;
    } else {
        Gfx_DrawDListOpa(globalCtx, D_80A9C294[thisx->params & 3]);
    }
}
