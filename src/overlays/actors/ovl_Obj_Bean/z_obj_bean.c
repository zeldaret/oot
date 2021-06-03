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
extern UNK_TYPE D_06000090;
extern UNK_TYPE D_060001B0;
extern UNK_TYPE D_060003F0;
extern CollisionHeader D_060005DC;
extern UNK_TYPE D_06000650;

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

Gfx* D_80B90EA0[] = { gCuttableShrubStalkDL, gCuttableShrubTipDL };

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

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8EBC8.s")

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

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8EDF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8EE24.s")

void func_80B8EEFC(ObjBean* this) {
    this->dyna.actor.world.pos.x = this->pathPoints.x + this->unk_1E8;
    this->dyna.actor.world.pos.y = this->pathPoints.y;
    this->dyna.actor.world.pos.z = this->pathPoints.z + this->unk_1EC;
}

void func_80B8EF28(ObjBean* this, u8 arg1) {
    this->unk_1F7 &= 0xFFF0;
    this->unk_1F7 |= arg1;
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

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8F298.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8F324.s")

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

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8F65C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8F6CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8F710.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8F788.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8F80C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8F84C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8F8D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8F8E4.s")

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
    if (LINK_AGE_IN_YEARS == YEARS_ADULT) {
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
            func_80B8EF44(&this->dyna.actor, globalCtx);
            ObjBean_SetupPath(&this->dyna.actor, globalCtx);
            func_80B8EEFC(this);
            func_80B90678(this);
            ObjBean_InitDynaPoly(&this->dyna.actor, globalCtx, &D_060005DC, DPM_UNK3);
            this->unk_1F7 |= 0x20;
            ObjBean_InitCollider(thisx, globalCtx);
            this->unk_1F7 |= 0x10;
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
        func_80B8FD50(this);
    }
    thisx->shape.rot.z = 0;
    thisx->home.rot.z = thisx->shape.rot.z;
    thisx->world.rot.z = thisx->shape.rot.z;
    // Magic bean tree lift
    osSyncPrintf("(魔法の豆の木リフト)(arg_data 0x%04x)\n", thisx->params);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/ObjBean_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8FD50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8FD8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8FE00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8FE3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8FE6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8FEAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8FF50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8FF8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B90010.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B90050.s")

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
    if (((this->unk_1F7 & 0x40) == 0) && Flags_GetEnv(globalCtx, 5) && (D_80B90E30 == NULL) &&
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
        if ((this->unk_1F7 & 0x40) == 0) {
            itemDropPos.x = this->dyna.actor.world.pos.x;
            itemDropPos.y = this->dyna.actor.world.pos.y - 25.0f;
            itemDropPos.z = this->dyna.actor.world.pos.z;
            for (i = 0; i < 3; i++) {
                Item_DropCollectible(globalCtx, &itemDropPos, ITEM00_FLEXIBLE);
            }
            this->unk_1F7 |= 0x40;
            Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_BUTTERFRY_TO_FAIRY);
            func_80078884(NA_SE_SY_TRE_BOX_APPEAR);
            return;
        }
    } else if (this->unk_1B4 <= 0) {
        func_80B90510(this);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B90510.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B90548.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B905E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B90620.s")

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
    } else if ((this->unk_1F7 & 0x80) != 0) {
        camera = globalCtx->cameraPtrs[MAIN_CAM];

        if ((camera->setting == CAM_SET_LIFTBEAN) || (camera->setting == CAM_SET_UFOBEAN)) {
            Camera_ChangeSetting(camera, CAM_SET_NORMAL0);
        }
    }

    func_80B8EBE4(this);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B90884.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B908B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B908EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B90918.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B90970.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B909B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B909F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B90A34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/ObjBean_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B90C7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B90D04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/ObjBean_Draw.s")
