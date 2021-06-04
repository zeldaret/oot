/*
 * File: z_obj_bean.c
 * Overlay: ovl_Obj_Bean
 * Description: Bean plant spot
 */

#include "z_obj_bean.h"
#include "vt.h"
#include "objects/gameplay_keep/gameplay_keep.h"

#define FLAGS 0x00400000

#define THIS ((ObjBean*)thisx)

void ObjBean_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjBean_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ObjBean_Update(Actor* thisx, GlobalContext* globalCtx);
void ObjBean_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80B90678(ObjBean* this);
void func_80B906A4(ObjBean* this, GlobalContext* globalCtx);
void func_80B9075C(ObjBean* this, GlobalContext* globalCtx);
void func_80B90714(ObjBean* this);
void func_80B90884(ObjBean* this);
void func_80B90158(ObjBean* this, GlobalContext* globalCtx);
void func_80B90110(ObjBean* this);
void func_80B9024C(ObjBean* this);
void func_80B90290(ObjBean* this, GlobalContext* globalCtx);
void func_80B90314(ObjBean* this, GlobalContext* globalCtx);
void func_80B902D4(ObjBean* this);
void func_80B90400(ObjBean* this, GlobalContext* globalCtx);
void func_80B903C4(ObjBean* this);
void func_80B8F9E0(ObjBean* this);

void func_80B8F964(ObjBean* this);
void func_80B8FA20(ObjBean* this);
void func_80B8F65C(ObjBean* this);
void func_80B8F6CC(ObjBean* this);
void func_80B8F710(ObjBean* this);
void func_80B8F788(ObjBean* this);
void func_80B8FD50(ObjBean* this);
void func_80B8FD8C(ObjBean* this, GlobalContext* globalCtx);
void func_80B8FE3C(ObjBean* this, GlobalContext* globalCtx);
void func_80B8FE00(ObjBean* this);
void func_80B8FE6C(ObjBean* this);
void func_80B8FEAC(ObjBean* this, GlobalContext* globalCtx);
void func_80B8FF50(ObjBean* this);
void func_80B90510(ObjBean* this);
void func_80B8FF50(ObjBean* this);
void func_80B8FF8C(ObjBean* this, GlobalContext* globalCtx);
void func_80B90050(ObjBean* this, GlobalContext* globalCtx);
void func_80B90010(ObjBean* this);
void func_80B908EC(ObjBean* this);
void func_80B90918(ObjBean* this, GlobalContext* globalCtx);
void func_80B90970(ObjBean* this);
void func_80B909B0(ObjBean* this, GlobalContext* globalCtx);
void func_80B909F8(ObjBean* this);
void func_80B90A34(ObjBean* this, GlobalContext* globalCtx);
void func_80B90678(ObjBean* this);
void func_80B90548(ObjBean* this, GlobalContext* globalCtx);
void func_80B90620(ObjBean* this, GlobalContext* globalCtx);
void func_80B905E4(ObjBean* this);
void func_80B8F80C(ObjBean* this);
void func_80B8F84C(ObjBean* this);
void func_80B8F8E4(ObjBean* this);
void func_80B8F8D4(ObjBean* this);
void func_80B90884(ObjBean* this);
void func_80B908B0(ObjBean* this, GlobalContext* globalCtx);

extern Gfx D_06000090[];
extern Gfx D_060001B0[];
extern Gfx D_060003F0[];
extern CollisionHeader D_060005DC;
extern Gfx D_06000650[];

ObjBean* D_80B90E30 = NULL;

const ActorInit Obj_Bean_InitVars = {
    ACTOR_OBJ_BEAN,
    ACTORCAT_BG,
    FLAGS,
    OBJECT_MAMENOKI,
    sizeof(ObjBean),
    (ActorFunc)ObjBean_Init,
    (ActorFunc)ObjBean_Destroy,
    (ActorFunc)ObjBean_Update,
    (ActorFunc)ObjBean_Draw,
};

ColliderCylinderInit sCylinderInit = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_NONE,
        OC1_ON | OC1_TYPE_PLAYER,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x00000000, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_NONE,
        OCELEM_ON,
    },
    { 64, 30, -31, { 0, 0, 0 } },
};

typedef struct {
    f32 velocity;
    f32 accel;
} BeenSpeedInfo;

BeenSpeedInfo D_80B90E80[] = {
    { 3.0f, 0.3f },
    { 10.0f, 0.5f },
    { 30.0f, 0.5f },
    { 3.0f, 0.3f },
}; // Speeds?

Gfx* sBreakDlists[] = { gCuttableShrubStalkDL, gCuttableShrubTipDL };

InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 2000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 200, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1600, ICHAIN_STOP),
};

void ObjBean_InitCollider(Actor* thisx, GlobalContext* globalCtx) {
    ObjBean* this = THIS;

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->dyna.actor, &sCylinderInit);
    Collider_UpdateCylinder(&this->dyna.actor, &this->collider);
}

void ObjBean_InitDynaPoly(ObjBean* this, GlobalContext* globalCtx, CollisionHeader* collision,
                          DynaPolyMoveFlag moveFlag) {
    s32 pad;
    CollisionHeader* colHeader;
    s32 bgId;

    colHeader = NULL;
    DynaPolyActor_Init(&this->dyna, moveFlag);
    CollisionHeader_GetVirtual(collision, &colHeader);
    bgId = DynaPoly_SetBgActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, colHeader);
    this->dyna.bgId = bgId;
    if (bgId == BG_ACTOR_MAX) {
        osSyncPrintf("Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n", "../z_obj_bean.c", 0x176,
                     this->dyna.actor.id, this->dyna.actor.params);
    }
}

void func_80B8EB60(ObjBean* this, GlobalContext* globalCtx) {
    Vec3f vec;
    s32 sp20;

    vec.x = this->dyna.actor.world.pos.x;
    vec.y = this->dyna.actor.world.pos.y + 29.999998f;
    vec.z = this->dyna.actor.world.pos.z;
    this->dyna.actor.floorHeight =
        BgCheck_EntityRaycastFloor4(&globalCtx->colCtx, &this->dyna.actor.floorPoly, &sp20, &this->dyna.actor, &vec);
}

void func_80B8EBC8(ObjBean* this) {
    this->unk_1B6.z = 0;
    this->unk_1B6.y = this->unk_1B6.z;
    this->unk_1B6.x = this->unk_1B6.z;
    this->unk_1E4 = 0.0f;
}

void func_80B8EBE4(ObjBean* this) {
    f32 temp_f20;
    f32 temp_f2;

    this->unk_1B6.x += 0xB6;
    this->unk_1B6.y += 0xFB;
    this->unk_1B6.z += 0x64;

    Math_StepToF(&this->unk_1E4, 2.0f, 0.1f);
    temp_f20 = Math_SinS(this->unk_1B6.x * 3);
    this->unk_1E8 = (Math_SinS(((this->unk_1B6.y * 3))) + temp_f20) * this->unk_1E4;
    temp_f20 = Math_CosS(this->unk_1B6.x * 4);
    this->unk_1EC = (Math_CosS((this->unk_1B6.y * 4)) + temp_f20) * this->unk_1E4;
    temp_f20 = Math_SinS(this->unk_1B6.z * 5);
    temp_f2 = ((Math_SinS((this->unk_1B6.y * 8)) * 0.01f) + (temp_f20 * 0.06f) + 1.07f) * 0.1f;
    this->dyna.actor.scale.z = temp_f2;
    this->dyna.actor.scale.x = temp_f2;
    this->dyna.actor.scale.y = ((Math_CosS(((this->unk_1B6.z * 10))) * 0.2f) + 1.0f) * 0.1f;
    temp_f20 = Math_SinS(this->unk_1B6.x * 3);
    this->dyna.actor.shape.rot.y =
        ((Math_SinS((s16)(this->unk_1B6.z * 2)) * 2100.0f) + ((f32)this->dyna.actor.home.rot.y + (temp_f20 * 1000.0f)));
}

void func_80B8EDF4(ObjBean* this) {
    this->unk_1B6.z = 0;
    this->unk_1B6.y = this->unk_1B6.z;
    this->unk_1B6.x = this->unk_1B6.z;
    Actor_SetScale(&this->dyna.actor, 0.0f);
}

void func_80B8EE24(ObjBean* this) {
    f32 temp_f2;

    this->unk_1B6.x += 0x384;
    if (this->unk_1B6.x >= 0x6000) {
        this->unk_1B6.x = 0x5FFF;
    }
    this->unk_1B6.y += 0x258;
    if (this->unk_1B6.y > 0x4000) {
        this->unk_1B6.y = 0x4000;
    }
    this->dyna.actor.scale.y = Math_SinS(this->unk_1B6.x) * 0.16970563f;

    temp_f2 = Math_SinS(this->unk_1B6.y) * 0.10700001f;
    this->dyna.actor.scale.z = temp_f2;
    this->dyna.actor.scale.x = temp_f2;

    Math_StepToF(&this->unk_1E8, 0.0f, 0.1f);
    Math_StepToF(&this->unk_1EC, 0.0f, 0.1f);
    Math_ScaledStepToS(&this->dyna.actor.shape.rot.y, this->dyna.actor.home.rot.y, 0x64);
}

void func_80B8EEFC(ObjBean* this) {
    this->dyna.actor.world.pos.x = this->pathPoints.x + this->unk_1E8;
    this->dyna.actor.world.pos.y = this->pathPoints.y;
    this->dyna.actor.world.pos.z = this->pathPoints.z + this->unk_1EC;
}

void func_80B8EF28(ObjBean* this, u8 arg1) {
    this->drawFlags &= 0xFFF0;
    this->drawFlags |= arg1;
}

void func_80B8EF44(ObjBean* this, GlobalContext* globalCtx) {
    this->pathCount = globalCtx->setupPathList[(this->dyna.actor.params >> 8) & 0x1F].count - 1;
    this->unk_1F2 = 0;
    this->unk_1F4 = 1;
}

void ObjBean_SetupPath(ObjBean* this, GlobalContext* globalCtx) {
    Path* path;

    path = &globalCtx->setupPathList[(this->dyna.actor.params >> 8) & 0x1F];
    Math_Vec3s_ToVec3f(&this->pathPoints, SEGMENTED_TO_VIRTUAL(path->points));
}

#ifdef NON_MATCHING
// Regalloc near mag > speed.
// f12 vs f2 regs
void func_80B8EFF4(ObjBean* this, GlobalContext* globalCtx) { // Fly/follow path?
    Path* path;
    Vec3f acell;
    Vec3f pathPointsFloat;
    s32 pad;
    Vec3s* pathPoints;
    Vec3s* sp50;
    Vec3s* sp4C;
    Vec3f sp40;
    Vec3f sp34;
    f32 sp30;
    f32 mag;
    f32 speed;

    Math_StepToF(&this->dyna.actor.speedXZ, D_80B90E80[this->unk_1F6].velocity, D_80B90E80[this->unk_1F6].accel);
    path = &globalCtx->setupPathList[(this->dyna.actor.params >> 8) & 0x1F];
    pathPoints = &((Vec3s*)SEGMENTED_TO_VIRTUAL(path->points))[this->unk_1F4];

    Math_Vec3s_ToVec3f(&pathPointsFloat, pathPoints);

    Math_Vec3f_Diff(&pathPointsFloat, &this->pathPoints, &acell);
    mag = Math3D_Vec3fMagnitude(&acell);
    speed = CLAMP_MIN(this->dyna.actor.speedXZ, 0.5f);

    if (mag > speed) {
        sp50 = &((Vec3s*)SEGMENTED_TO_VIRTUAL(path->points))[this->unk_1F2];

        Math_Vec3f_Copy(&this->pathPoints, &pathPointsFloat);
        this->unk_1F2 = this->unk_1F4;
        if (this->unk_1F2 <= this->pathCount) {
            this->unk_1F4 = 0;
        } else {
            this->unk_1F4++;
        }
        sp4C = &((Vec3s*)SEGMENTED_TO_VIRTUAL(path->points))[this->unk_1F4];
        Math_Vec3s_DiffToVec3f(&sp40, pathPoints, sp50);
        Math_Vec3s_DiffToVec3f(&sp34, sp4C, pathPoints);
        if (Math3D_CosOut(&sp40, &sp34, &sp30) != 0) {
            this->dyna.actor.speedXZ = 0.0f;
            return;
        }
        this->dyna.actor.speedXZ *= (sp30 + 1.0f) * 0.5f;
        return;
    }
    Math_Vec3f_Scale(&acell, speed / mag);
    this->pathPoints.x += acell.x;
    this->pathPoints.y += acell.y;
    this->pathPoints.z += acell.z;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8EFF4.s")
#endif

s32 ObjBean_CheckForHorseTrample(ObjBean* this, GlobalContext* globalCtx) {
    Actor* it;

    it = globalCtx->actorCtx.actorLists[ACTORCAT_BG].head;
    while (it != NULL) {
        if ((it->id == ACTOR_EN_HORSE) &&
            (Math3D_Vec3fDistSq(&it->world.pos, &this->dyna.actor.world.pos) < 10000.0f)) {
            return 1;
        }
        it = it->next;
    }
    return 0;
}

void ObjBean_Break(ObjBean* this, GlobalContext* globalCtx) {
    Vec3f pos;
    Vec3f velocity;
    f32 temp_f20;
    s16 temp_s1;
    s32 scale;
    s32 i;
    s16 gravity;
    s16 arg5;

    temp_s1 = 0;
    for (i = 0; i < 36; i++) {
        temp_s1 += 0x4E20;
        temp_f20 = Rand_ZeroOne() * 60.0f;

        pos.x = (Math_SinS(temp_s1) * temp_f20) + this->dyna.actor.world.pos.x;
        pos.y = this->dyna.actor.world.pos.y;
        pos.z = (Math_CosS(temp_s1) * temp_f20) + this->dyna.actor.world.pos.z;

        velocity.x = Math_SinS(temp_s1) * 3.5f;
        velocity.y = Rand_ZeroOne() * 13.0f;
        velocity.z = Math_CosS(temp_s1) * 3.5f;

        velocity.x += this->dyna.actor.world.pos.x - this->dyna.actor.prevPos.x;
        velocity.y += this->dyna.actor.world.pos.y - this->dyna.actor.prevPos.y;
        velocity.z += this->dyna.actor.world.pos.z - this->dyna.actor.prevPos.z;

        scale = (s32)(Rand_ZeroOne() * 180.0f) + 30;
        if (scale < 90) {
            if (Rand_ZeroOne() < 0.1f) {
                gravity = -80;
                arg5 = 96;
            } else {
                gravity = -80;
                arg5 = 64;
            }
        } else {
            gravity = -100;
            arg5 = 64;
        }
        EffectSsKakera_Spawn(globalCtx, &pos, &velocity, &pos, gravity, arg5, 40, 3, 0, scale, 0, 0,
                             (s16)((scale >> 3) + 40), -1, 1, sBreakDlists[i & 1]);
    }
}

void func_80B8F59C(ObjBean* this) {
    f32 temp_f2;

    Math_StepToS(&this->unk_1C2, this->unk_1C4, this->unk_1C6);
    Math_StepToS(&this->unk_1C8, this->unk_1CA, this->unk_1CC);
    this->unk_1CE += this->unk_1C8;
    this->unk_1D0 = (s16)(s32)(6372.0f - (Math_SinS(this->unk_1CE) * (f32)this->unk_1C2));
    this->dyna.actor.scale.y = Math_SinS(this->unk_1D0) * 0.17434467f;
    temp_f2 = Math_CosS(this->unk_1D0) * 0.12207746f;
    this->dyna.actor.scale.z = temp_f2;
    this->dyna.actor.scale.x = temp_f2;
}

void func_80B8F65C(ObjBean* this) {
    this->unkFunc = func_80B8F6CC;
    this->unk_1C0 = Rand_S16Offset(0xC, 0x28);
    this->unk_1C4 = Rand_S16Offset(0xC8, 0x190);
    this->unk_1C6 = 0x14;
    this->unk_1CA = Rand_S16Offset(0x64, 0x320);
    this->unk_1CC = 0x14;
}

void func_80B8F6CC(ObjBean* this) {
    this->unk_1C0--;
    func_80B8F59C(this);
    if (this->unk_1C0 < 0) {
        func_80B8F710(this);
    }
}

void func_80B8F710(ObjBean* this) {
    this->unkFunc = func_80B8F788;
    this->unk_1C0 = Rand_S16Offset(0x1E, 4);
    this->unk_1C4 = Rand_S16Offset(0x7D0, 0x3E8);
    this->unk_1C6 = 0xC8;
    this->unk_1CA = Rand_S16Offset(0x36B0, 0x1770);
    this->unk_1CC = 0xFA0;
    this->unk_1D0 = 0x18E4;
}

void func_80B8F788(ObjBean* this) {
    this->unk_1C0 += -1;
    if (this->unk_1C0 == 0xE) {
        this->unk_1C4 = Rand_S16Offset(0xC8, 0x190);
        this->unk_1CA = Rand_S16Offset(0x64, 0x1F4);
        this->unk_1CC = 0x7D0;
    }
    func_80B8F59C(this);
    if (this->unk_1C0 < 0) {
        func_80B8F65C(this);
    }
}

void func_80B8F80C(ObjBean* this) {
    this->unkFunc = func_80B8F84C;
    this->unk_1C0 = 0x28;
    this->unk_1C4 = 0xBB8;
    this->unk_1C6 = 0x12C;
    this->unk_1CA = 0x3A98;
    this->unk_1CC = 0xFA0;
    this->unk_1D0 = 0x18E4;
}

void func_80B8F84C(ObjBean* this) {
    this->unk_1C0 += -1;
    if (Rand_ZeroOne() < 0.1f) {
        this->unk_1C4 = Rand_S16Offset(0x898, 0x3E8);
        this->unk_1CA = Rand_S16Offset(0x2EE0, 0x1F40);
    }
    func_80B8F59C(this);
    if ((s32)this->unk_1C0 < 0) {
        func_80B8F8D4(this);
    }
}

void func_80B8F8D4(ObjBean* this) {
    this->unkFunc = func_80B8F8E4;
}

void func_80B8F8E4(ObjBean* this) {
    f32 temp_f2;

    Math_StepToS(&this->unk_1D0, 0x33E9, 0x168);
    this->dyna.actor.scale.y = (f32)(Math_SinS(this->unk_1D0) * 0.17434467f);
    temp_f2 = Math_CosS(this->unk_1D0) * 0.12207746f;
    this->dyna.actor.scale.z = temp_f2;
    this->dyna.actor.scale.x = temp_f2;
}

void func_80B8F94C(ObjBean* this) {
    this->unkFunc = func_80B8F964;
    this->unk_1D0 = 0x33E9;
}

void func_80B8F964(ObjBean* this) {
    f32 temp_f2;

    this->unk_1D0 -= 0x960;
    this->dyna.actor.scale.y = (f32)(Math_SinS(this->unk_1D0) * 0.17434467f);
    temp_f2 = Math_CosS(this->unk_1D0) * 0.12207746f;
    this->dyna.actor.scale.z = temp_f2;
    this->dyna.actor.scale.x = temp_f2;
    if (this->unk_1D0 < 0x18E4) {
        func_80B8F9E0(this);
    }
}

void func_80B8F9E0(ObjBean* this) {
    this->unkFunc = &func_80B8FA20;
    this->unk_1C2 = 0xBB8;
    this->unk_1C4 = 0;
    this->unk_1C6 = 0xC8;
    this->unk_1C8 = 0x3E80;
    this->unk_1CA = 0x1F4;
    this->unk_1CC = 0;
    this->unk_1C0 = 0x10;
}

void func_80B8FA20(ObjBean* this) {
    this->unk_1C0--;
    if (this->unk_1C0 == 6) {
        this->unk_1CC = 0x7D0;
    }
    func_80B8F59C(this);
    if (this->unk_1C2 <= 0) {
        func_80B8F65C(this);
    }
}

void ObjBean_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 path;
    s32 linkAge;
    ObjBean* this = THIS;

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    if (LINK_AGE_IN_YEARS == YEARS_ADULT) { // Flying bean
        if ((Flags_GetSwitch(globalCtx, thisx->params & 0x3F) != 0) || (mREG(1) == 1)) {
            path = (this->dyna.actor.params >> 8) & 0x1F;
            if (path == 0x1F) {
                osSyncPrintf(VT_COL(RED, WHITE));
                // No path data?
                osSyncPrintf("パスデータが無い？(%s %d)(arg_data %xH)\n", "../z_obj_bean.c", 0x38D,
                             this->dyna.actor.params);
                osSyncPrintf(VT_RST);
                Actor_Kill(thisx);
                return;
            }
            if (globalCtx->setupPathList[path].count < 3) {
                osSyncPrintf(VT_COL(RED, WHITE));
                // Incorrect number of path data
                osSyncPrintf("パスデータ数が不正(%s %d)(arg_data %xH)\n", "../z_obj_bean.c", 0x399,
                             this->dyna.actor.params);
                osSyncPrintf(VT_RST);
                Actor_Kill(thisx);
                return;
            }
            func_80B8EF44(this, globalCtx);
            ObjBean_SetupPath(this, globalCtx);
            func_80B8EEFC(this);
            func_80B90678(this);
            ObjBean_InitDynaPoly(this, globalCtx, &D_060005DC, DPM_UNK3);
            this->drawFlags |= 0x20;
            ObjBean_InitCollider(thisx, globalCtx);
            this->drawFlags |= 0x10;
            ActorShape_Init(&thisx->shape, 0.0f, ActorShadow_DrawCircle, 8.8f);
            func_80B8EB60(this, globalCtx);
            this->unk_1F6 = thisx->home.rot.z & 3;
        } else {
            Actor_Kill(thisx);
            return;
        }
    } else if ((Flags_GetSwitch(globalCtx, thisx->params & 0x3F) != 0) || (gGameInfo->data[2209] == 1)) {
        func_80B90110(this);
    } else {
        func_80B8FD50(this); // Soft soil spot
    }
    thisx->shape.rot.z = 0;
    thisx->home.rot.z = thisx->shape.rot.z;
    thisx->world.rot.z = thisx->shape.rot.z;
    // Magic bean tree lift
    osSyncPrintf("(魔法の豆の木リフト)(arg_data 0x%04x)\n", thisx->params);
}

void ObjBean_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    ObjBean* this = THIS;

    if ((this->drawFlags & 0x20) != 0) {
        DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
    }
    if ((this->drawFlags & 0x10) != 0) {
        Collider_DestroyCylinder(globalCtx, &this->collider);
    }
    if (this == D_80B90E30) {
        D_80B90E30 = NULL;
    }
}

void func_80B8FD50(ObjBean* this) {
    this->actionFunc = func_80B8FD8C;
    func_80B8EF28(this, 1);
    this->dyna.actor.textId = 0x2F;
}

void func_80B8FD8C(ObjBean* this, GlobalContext* globalCtx) {
    if (func_8002F194(&this->dyna.actor, globalCtx) != 0) {
        if (func_8002F368(globalCtx) == EXCH_ITEM_BEAN) {
            func_80B8FE00(this);
            Flags_SetSwitch(globalCtx, this->dyna.actor.params & 0x3F);
            return;
        }
    } else {
        func_8002F298(&this->dyna.actor, globalCtx, 40.0f, EXCH_ITEM_BEAN);
    }
}

void func_80B8FE00(ObjBean* this) {
    this->actionFunc = func_80B8FE3C;
    func_80B8EF28(this, 1);
    this->unk_1B4 = 0x3C;
}
void func_80B8FE3C(ObjBean* this, GlobalContext* globalCtx) {
    if (this->unk_1B4 <= 0) {
        func_80B8FE6C(this);
    }
}

void func_80B8FE6C(ObjBean* this) {
    this->actionFunc = func_80B8FEAC;
    func_80B8EF28(this, 3);
    Actor_SetScale(&this->dyna.actor, 0.01f);
}

void func_80B8FEAC(ObjBean* this, GlobalContext* globalCtx) {
    s32 temp_v1;

    temp_v1 = Math_StepToF(&this->dyna.actor.scale.y, 0.16672663f, 0.01f) & 1;
    temp_v1 &= Math_StepToF(&this->dyna.actor.scale.x, 0.03569199f, 0.00113f);

    this->dyna.actor.scale.z = this->dyna.actor.scale.x;
    if (temp_v1 != 0) {
        if (this->unk_1B4 <= 0) {
            func_80B8FF50(this);
        }
    } else {
        this->unk_1B4 = 1;
    }
    func_8002F974(&this->dyna.actor, NA_SE_PL_PLANT_GROW_UP - SFX_FLAG);
}

void func_80B8FF50(ObjBean* this) {
    this->actionFunc = func_80B8FF8C;
    func_80B8EF28(this, 3);
    this->unk_1B6.x = 0x33E9;
}

void func_80B8FF8C(ObjBean* this, GlobalContext* globalCtx) {
    f32 temp_f2;

    this->unk_1B6.x -= 0x960;
    this->dyna.actor.scale.y = Math_SinS(this->unk_1B6.x) * 0.17434467f;
    temp_f2 = Math_CosS(this->unk_1B6.x) * 0.12207746f;
    this->dyna.actor.scale.z = temp_f2;
    this->dyna.actor.scale.x = temp_f2;
    if (this->unk_1B6.x < 0x18E4) {
        func_80B90010(this);
    }
}

void func_80B90010(ObjBean* this) {
    this->actionFunc = func_80B90050;
    func_80B8EF28(this, 3);
    this->unk_1B6.x = 0;
    this->unk_1B6.y = 0xBB8;
}

void func_80B90050(ObjBean* this, GlobalContext* globalCtx) {

    s16 temp_a0;
    f32 temp_f2;

    this->unk_1B6.x += 0x3E80;
    this->unk_1B6.y += -0xC8;
    temp_a0 = 6372.0f - Math_SinS(this->unk_1B6.x) * this->unk_1B6.y;

    this->dyna.actor.scale.y = Math_SinS(temp_a0) * 0.17434467f;
    temp_f2 = Math_CosS(temp_a0) * 0.12207746f;
    this->dyna.actor.scale.z = temp_f2;
    this->dyna.actor.scale.x = temp_f2;
    if (this->unk_1B6.y < 0) {
        func_80B90110(this);
    }
}

void func_80B90110(ObjBean* this) {
    this->actionFunc = func_80B90158;
    func_80B8EF28(this, 3);
    Actor_SetScale(&this->dyna.actor, 0.1f);
    func_80B8F65C(this);
}

// Water bean?
#ifdef NON_MATCHING
void func_80B90158(ObjBean* this, GlobalContext* globalCtx) {
    this->unkFunc(this);
    if (((this->drawFlags & 0x40) == 0) && Flags_GetEnv(globalCtx, 5) && (D_80B90E30 == NULL) &&
        (this->dyna.actor.xzDistToPlayer < 50.0f)) {
        func_80B9024C(this);
        D_80B90E30 = this;
        OnePointCutscene_Init(globalCtx, 2210, -99, &this->dyna.actor, MAIN_CAM);
        this->dyna.actor.flags |= 0x10;
        return;
    }
    if ((this == D_80B90E30) && (Flags_GetEnv(globalCtx, 5) == 0)) {
        D_80B90E30 = NULL;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B90158.s")
#endif

void func_80B9024C(ObjBean* this) {
    this->actionFunc = func_80B90290;
    func_80B8EF28(this, 3);
    func_80B8F80C(this);
    this->unk_1B4 = 50;
}

void func_80B90290(ObjBean* this, GlobalContext* globalCtx) {
    this->unkFunc(this);
    if (this->unk_1B4 <= 0) {
        func_80B902D4(this);
    }
}

void func_80B902D4(ObjBean* this) {
    this->actionFunc = func_80B90314;
    func_80B8EF28(this, 0xB);
    this->unk_1D4 = 0.0f;
}

void func_80B90314(ObjBean* this, GlobalContext* globalCtx) {

    this->unkFunc(this);
    this->unk_1D4 += 0.001f;
    this->dyna.actor.shape.rot.y = this->dyna.actor.home.rot.y + (s16)(this->unk_1D4 * 700000.0f);
    this->dyna.actor.world.pos.y = this->dyna.actor.home.pos.y + this->unk_1D4 * 800.0f;
    if (this->unk_1D4 >= 0.1f) {
        func_80B903C4(this);
    }
    func_8002F974(&this->dyna.actor, NA_SE_PL_PLANT_TALLER - SFX_FLAG);
}

void func_80B903C4(ObjBean* this) {
    this->actionFunc = func_80B90400;
    func_80B8EF28(this, 0xB);
    this->unk_1B4 = 0x3C;
}

void func_80B90400(ObjBean* this, GlobalContext* globalCtx) {
    s32 i;
    Vec3f itemDropPos;

    this->unkFunc(this);
    if (this->unk_1B4 == 0x28) {
        func_80B8F94C(this);
        return;
    }
    if (this->unk_1B4 == 0x1E) {
        if ((this->drawFlags & 0x40) == 0) {
            itemDropPos.x = this->dyna.actor.world.pos.x;
            itemDropPos.y = this->dyna.actor.world.pos.y - 25.0f;
            itemDropPos.z = this->dyna.actor.world.pos.z;
            for (i = 0; i < 3; i++) {
                Item_DropCollectible(globalCtx, &itemDropPos, ITEM00_FLEXIBLE);
            }
            this->drawFlags |= 0x40;
            Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_BUTTERFRY_TO_FAIRY);
            func_80078884(NA_SE_SY_TRE_BOX_APPEAR);
            return;
        }
    } else if (this->unk_1B4 <= 0) {
        func_80B90510(this);
    }
}

void func_80B90510(ObjBean* this) {
    this->actionFunc = func_80B90548;
    func_80B8EF28(this, 0xB);
    func_80B8F8D4(this);
}

void func_80B90548(ObjBean* this, GlobalContext* globalCtx) {
    this->unkFunc(this);
    this->unk_1D4 -= 0.001f;
    this->dyna.actor.shape.rot.y = this->dyna.actor.home.rot.y + (s16)(this->unk_1D4 * 700000.0f);
    this->dyna.actor.world.pos.y = this->dyna.actor.home.pos.y + (this->unk_1D4 * 800.0f);
    if (this->unk_1D4 <= 0.0f) {
        this->unk_1D4 = 0.0f;
        this->dyna.actor.shape.rot.y = this->dyna.actor.home.rot.y;
        func_80B905E4(this);
    }
}

void func_80B905E4(ObjBean* this) {
    this->actionFunc = func_80B90620;
    func_80B8EF28(this, 3);
    this->unk_1B4 = 0x1E;
}

void func_80B90620(ObjBean* this, GlobalContext* globalCtx) {
    this->unkFunc(this);
    if (this->unk_1B4 <= 0) {
        func_80B8FF50(this);
        this->dyna.actor.flags &= -0x11;
    }
}

void func_80B90678(ObjBean* this) {
    this->actionFunc = func_80B906A4;
    func_80B8EF28(this, 4);
}

void func_80B906A4(ObjBean* this, GlobalContext* globalCtx) {
    if (func_8004356C(&this->dyna) != 0) { // Player is standing on?
        func_80B90714(this);
        if (globalCtx->sceneNum == SCENE_SPOT10) { // Lost woods
            Camera_ChangeSetting(globalCtx->cameraPtrs[MAIN_CAM], CAM_SET_LIFTBEAN);
        } else {
            Camera_ChangeSetting(globalCtx->cameraPtrs[MAIN_CAM], CAM_SET_UFOBEAN);
        }
    }
    func_80B8EBE4(this);
}

void func_80B90714(ObjBean* this) {
    this->actionFunc = func_80B9075C;
    func_80B8EF28(this, 4);
    this->dyna.actor.speedXZ = 0.0f;
    this->dyna.actor.flags |= 0x10; // Never stop updating
}

void func_80B9075C(ObjBean* this, GlobalContext* globalCtx) {
    Camera* camera;

    func_80B8EFF4(this, globalCtx);
    if (this->unk_1F2 == this->pathCount) {
        func_80B8EF44(this, globalCtx);
        ObjBean_SetupPath(this, globalCtx);
        func_80B90884(this);

        this->dyna.actor.flags &= ~0x10; // Never stop updating (disable)
        camera = globalCtx->cameraPtrs[MAIN_CAM];

        if ((camera->setting == CAM_SET_LIFTBEAN) || (camera->setting == CAM_SET_UFOBEAN)) {
            Camera_ChangeSetting(camera, CAM_SET_NORMAL0);
        }

    } else if (func_8004356C(&this->dyna) != 0) {

        func_8002F974(&this->dyna.actor, NA_SE_PL_PLANT_MOVE - SFX_FLAG);

        if (globalCtx->sceneNum == 0x5B) {
            Camera_ChangeSetting(globalCtx->cameraPtrs[MAIN_CAM], CAM_SET_LIFTBEAN);
        } else {
            Camera_ChangeSetting(globalCtx->cameraPtrs[MAIN_CAM], CAM_SET_UFOBEAN);
        }
    } else if ((this->drawFlags & 0x80) != 0) {
        camera = globalCtx->cameraPtrs[MAIN_CAM];

        if ((camera->setting == CAM_SET_LIFTBEAN) || (camera->setting == CAM_SET_UFOBEAN)) {
            Camera_ChangeSetting(camera, CAM_SET_NORMAL0);
        }
    }

    func_80B8EBE4(this);
}

void func_80B90884(ObjBean* this) {
    this->actionFunc = func_80B908B0;
    func_80B8EF28(this, (u8)4U);
}

void func_80B908B0(ObjBean* this, GlobalContext* globalCtx) {
    if (func_80043590(&this->dyna) == 0) {
        func_80B90678(this);
    }
    func_80B8EBE4(this);
}

void func_80B908EC(ObjBean* this) {
    this->actionFunc = func_80B90918;
    func_80B8EF28(this, 0);
}

void func_80B90918(ObjBean* this, GlobalContext* globalCtx) {
    if (func_8004356C(&this->dyna) == 0) {
        func_80B8EF44(this, globalCtx);
        ObjBean_SetupPath(this, globalCtx);
        func_80B8EEFC(this);
        func_80B90970(this);
    }
}

void func_80B90970(ObjBean* this) {
    this->actionFunc = func_80B909B0;
    func_80B8EF28(this, 0);
    this->unk_1B4 = 0x64;
    func_80B8EDF4(this);
}

void func_80B909B0(ObjBean* this, GlobalContext* globalCtx) {
    if (ObjBean_CheckForHorseTrample(this, globalCtx)) {
        this->unk_1B4 = 0x64;
    } else if (this->unk_1B4 <= 0) {
        func_80B909F8(this);
    }
}

void func_80B909F8(ObjBean* this) {
    this->actionFunc = func_80B90A34;
    func_80B8EF28(this, 4);
    this->unk_1B4 = 0x1E;
}

void func_80B90A34(ObjBean* this, GlobalContext* globalCtx) {
    s32 trampeled;

    trampeled = ObjBean_CheckForHorseTrample(this, globalCtx);
    func_80B8EE24(this);
    if (trampeled != 0) {
        func_8003EC50(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
    } else {
        func_8003EC50(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
    }
    if ((this->unk_1B4 <= 0) && (trampeled == 0)) {
        func_80B8EBC8(this);
        func_80B90678(this);
    }
}
void ObjBean_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    ObjBean* this = THIS;

    if (this->unk_1B4 > 0) {
        this->unk_1B4--;
    }

    this->actionFunc(this, globalCtx);

    if ((this->drawFlags & 4) != 0) {
        func_80B8EEFC(this);
        if (this->dyna.actor.xzDistToPlayer < 150.0f) {
            this->collider.dim.radius = this->dyna.actor.scale.x * 640.0f + 0.5f;
            Collider_UpdateCylinder(&this->dyna.actor, &this->collider);
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }

        func_80B8EB60(this, globalCtx);

        this->dyna.actor.shape.shadowDraw = ActorShadow_DrawCircle;
        this->dyna.actor.shape.shadowScale = this->dyna.actor.scale.x * 88.0f;

        if (ObjBean_CheckForHorseTrample(this, globalCtx) != 0) {
            osSyncPrintf(VT_FGCOL(CYAN));
            // Horse and bean tree lift collision
            osSyncPrintf("馬と豆の木リフト衝突！！！\n");
            osSyncPrintf(VT_RST);
            ObjBean_Break(this, globalCtx);
            func_8003EBF8(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
            func_80B908EC(this);
        }
    } else {
        this->dyna.actor.shape.shadowDraw = NULL;
    }
    Actor_SetFocus(&this->dyna.actor, 6.0f);
    if ((this->drawFlags & 0x20) != 0) {
        if (func_8004356C(&this->dyna) != 0) {
            this->drawFlags |= 0x80;
        } else {
            this->drawFlags &= ~0x80;
        }
    }
}

void ObjBean_DrawSoftSoilSpot(ObjBean* this, GlobalContext* globalContext) {
    Matrix_Translate(this->dyna.actor.home.pos.x, this->dyna.actor.home.pos.y, this->dyna.actor.home.pos.z,
                     MTXMODE_NEW);
    Matrix_RotateY(this->dyna.actor.home.rot.y * 0.0000958738f, MTXMODE_APPLY);
    Matrix_Scale(0.1f, 0.1f, 0.1f, MTXMODE_APPLY);
    Gfx_DrawDListOpa(globalContext, D_06000650);
}

void ObjBean_DrawBeanstalk(ObjBean* this, GlobalContext* globalCtx) {
    Matrix_Translate(this->dyna.actor.world.pos.x, this->dyna.actor.world.pos.y, this->dyna.actor.world.pos.z,
                     MTXMODE_NEW);
    Matrix_RotateY(this->dyna.actor.shape.rot.y * 0.0000958738f, MTXMODE_APPLY);
    Matrix_Scale(0.1f, this->unk_1D4, 0.1f, MTXMODE_APPLY);
    Gfx_DrawDListOpa(globalCtx, D_060001B0);
}

void ObjBean_Draw(Actor* thisx, GlobalContext* globalCtx) {
    ObjBean* this = THIS;

    if ((this->drawFlags & 2) != 0) { // 3 Leaves
        Gfx_DrawDListOpa(globalCtx, D_06000090);
    }

    if ((this->drawFlags & 4) != 0) { // Full plant
        Gfx_DrawDListOpa(globalCtx, D_060003F0);
    }
    if ((this->drawFlags & 1) != 0) {
        ObjBean_DrawSoftSoilSpot(this, globalCtx);
    }
    if ((this->drawFlags & 8) != 0) {
        ObjBean_DrawBeanstalk(this, globalCtx);
    }
}
