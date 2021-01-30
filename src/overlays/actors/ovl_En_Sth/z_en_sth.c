#include "z_en_sth.h"

#define FLAGS 0x00000019

#define THIS ((EnSth*)thisx)

void EnSth_Init(Actor* thisx, GlobalContext* globalCtx);
void EnSth_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnSth_Update(Actor* thisx, GlobalContext* globalCtx);

// action funcs
void func_80B07878(EnSth* this, GlobalContext* globalCtx);
void func_80B07B68(EnSth* this, GlobalContext* globalCtx);
void func_80B07D7C(EnSth* this, GlobalContext* globalCtx);
void func_80B07E18(EnSth* this, GlobalContext* globalCtx);

// update funcs
void func_80B07EE0(Actor* thisx, GlobalContext* globalCtx);

// draw funcs
void func_80B08258(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Sth_InitVars = {
    ACTOR_EN_STH,
    ACTORCAT_NPC,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnSth),
    (ActorFunc)EnSth_Init,
    (ActorFunc)EnSth_Destroy,
    (ActorFunc)EnSth_Update,
    NULL,
};

static ColliderCylinderInit D_80B0B404 = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_ENEMY,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_ON,
    },
    { 30, 40, 0, { 0, 0, 0 } },
};
*/

extern Gfx D_80B0A050[];
extern Gfx D_80B0A3C0[];
extern ColliderCylinderInit D_80B0B404;
extern s16 D_80B0B430[];
extern FlexSkeletonHeader* D_80B0B43C[];
extern AnimationHeader* D_80B0B454[];
extern EnSthActionFunc D_80B0B46C[];
extern u16 D_80B0B484[];
extern s16 D_80B0B490[];
extern Vec3f D_80B0B49C;
extern Color_RGB8 D_80B0B4A8[];

// EnSth_SetupAction
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B07540.s")
void func_80B07540(EnSth* this, EnSthActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/EnSth_Init.s")
void EnSth_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnSth* this = THIS;

    s16 objectId;
    s32 params = this->actor.params;
    s32 objectBankIdx;
    s32 params2;

    osSyncPrintf("\x1b[34m金スタル屋 no = %d\n\x1b[m", params);
    params2 = this->actor.params;
    if (params2 == 0) {
        if (gSaveContext.inventory.gsTokens < 100) {
            Actor_Kill(&this->actor);
            osSyncPrintf("金スタル屋 まだ 人間に戻れない \n");
            return;
        }
    } else if (gSaveContext.inventory.gsTokens < (params2 * 10)) {
        Actor_Kill(&this->actor);
        osSyncPrintf("\x1b[34m金スタル屋 まだ 人間に戻れない \n\x1b[m");
        return;
    }

    objectId = D_80B0B430[params];
    if (objectId != 1) {
        objectBankIdx = Object_GetIndex(&globalCtx->objectCtx, objectId);
    } else {
        objectBankIdx = 0;
    }

    osSyncPrintf("bank_ID = %d\n", objectBankIdx);
    if (objectBankIdx < 0) {
        __assert("0", "../z_en_sth.c", 1564);
    }
    this->unk_2A4 = objectBankIdx;
    this->unk_2A0 = func_80B08258;
    Actor_SetScale(&this->actor, 0.01f);
    func_80B07540(this, func_80B07878);
    this->actor.draw = NULL;
    this->unk_2B2 = 0;
    this->actor.targetMode = 6;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B076B0.s")
void func_80B076B0(EnSth* this, GlobalContext* globalCtx) {
    s32 pad;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 36.0f);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &D_80B0B404);
    this->actor.colChkInfo.mass = 0xFF;
    this->actor.update = func_80B07EE0;
    this->actor.draw = this->unk_2A0;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B07734.s")
void func_80B07734(EnSth* this, GlobalContext* globalCtx) {
    s32 pad;
    s16* params;

    func_80B076B0(this, globalCtx);
    gSegments[6] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[this->unk_2A4].segment);
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, D_80B0B43C[this->actor.params], NULL, this->jointTable,
                       this->morphTable, 16);
    Animation_PlayLoop(&this->skelAnime, D_80B0B454[this->actor.params]);

    this->unk_29C = D_80B0B484[this->actor.params];
    params = &this->actor.params;
    if ((gSaveContext.eventChkInf[13] & this->unk_29C)) {
        func_80B07540(this, D_80B0B46C[*params]);
    } else {
        func_80B07540(this, func_80B07D7C);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/EnSth_Destroy.s")
void EnSth_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnSth* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B07878.s")
void func_80B07878(EnSth* this, GlobalContext* globalCtx) {
    if (Object_IsLoaded(&globalCtx->objectCtx, this->unk_2A4)) {
        this->actor.objBankIndex = this->unk_2A4;
        this->actionFunc = func_80B07734;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B078C8.s")
void func_80B078C8(EnSth* this, GlobalContext* globalCtx) {
    s32 pad;
    s16 diffRot;

    diffRot = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
    if (ABS(diffRot) < 0x4001) {
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 6, 0xFA0, 0x64);
        this->actor.world.rot.y = this->actor.shape.rot.y;
        func_80038290(globalCtx, &this->actor, &this->unk_2A6, &this->unk_2AC, this->actor.focus.pos);
    } else {
        if (diffRot < 0) {
            Math_SmoothStepToS(&this->unk_2A6.y, -0x2000, 6, 0x1838, 0x100);
        } else {
            Math_SmoothStepToS(&this->unk_2A6.y, 0x2000, 6, 0x1838, 0x100);
        }
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 0xC, 0x3E8, 0x64);
        this->actor.world.rot.y = this->actor.shape.rot.y;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B079E0.s")
void func_80B079E0(EnSth* this, GlobalContext* globalCtx) {
    s16 diffRot;

    diffRot = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
    if ((ABS(diffRot) < 0x4301) && (this->actor.xzDistToPlayer < 100.0f)) {
        func_80038290(globalCtx, &this->actor, &this->unk_2A6, &this->unk_2AC, this->actor.focus.pos);
    } else {
        Math_SmoothStepToS(&this->unk_2A6.x, 0, 6, 0x1838, 0x64);
        Math_SmoothStepToS(&this->unk_2A6.y, 0, 6, 0x1838, 0x64);
        Math_SmoothStepToS(&this->unk_2AC.x, 0, 6, 0x1838, 0x64);
        Math_SmoothStepToS(&this->unk_2AC.y, 0, 6, 0x1838, 0x64);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B07AF4.s")
void func_80B07AF4(EnSth* this, GlobalContext* globalCtx) {
    if (func_8002F334(&this->actor, globalCtx) != 0) {
        if (this->actor.params == 0) {
            func_80B07540(this, func_80B07B68);
        } else {
            func_80B07540(this, func_80B07E18);
        }
    }
    func_80B078C8(this, globalCtx);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B07B68.s")
void func_80B07B68(EnSth* this, GlobalContext* globalCtx) {
    if (func_8002F194(&this->actor, globalCtx) != 0) {
        func_80B07540(this, func_80B07AF4);
    } else {
        this->actor.textId = 0x23;
        if (this->actor.xzDistToPlayer < 100.0f) {
            func_8002F2CC(&this->actor, globalCtx, 100.0f);
        }
    }
    func_80B079E0(this, globalCtx);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B07BEC.s")
void func_80B07BEC(EnSth* this, GlobalContext* globalCtx) {
    u16 getItemId = D_80B0B490[this->actor.params];

    switch (this->actor.params) {
        case 1:
        case 3:
            switch (CUR_UPG_VALUE(UPG_WALLET)) {
                case 0:
                    getItemId = GI_WALLET_ADULT;
                    break;

                case 1:
                    getItemId = GI_WALLET_GIANT;
                    break;
            }
            break;
    }

    func_8002F434(&this->actor, globalCtx, getItemId, 10000.0f, 50.0f);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B07C88.s")
void func_80B07C88(EnSth* this, GlobalContext* globalCtx) {
    if (Actor_HasParent(&this->actor, globalCtx) != 0) {
        this->actor.parent = NULL;
        func_80B07540(this, func_80B07AF4);
        gSaveContext.eventChkInf[13] |= this->unk_29C;
    } else {
        func_80B07BEC(this, globalCtx);
    }
    func_80B078C8(this, globalCtx);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B07D00.s")
void func_80B07D00(EnSth* this, GlobalContext* globalCtx) {
    if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && (func_80106BC8(globalCtx) != 0)) {
        func_80106CCC(globalCtx);
        func_80B07540(this, func_80B07C88);
        func_80B07BEC(this, globalCtx);
    }
    func_80B078C8(this, globalCtx);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B07D7C.s")
void func_80B07D7C(EnSth* this, GlobalContext* globalCtx) {
    if (func_8002F194(&this->actor, globalCtx) != 0) {
        func_80B07540(this, func_80B07D00);
    } else {
        if (this->actor.params == 0) {
            this->actor.textId = 0x28;
        } else {
            this->actor.textId = 0x21;
        }
        if (this->actor.xzDistToPlayer < 100.0f) {
            func_8002F2CC(&this->actor, globalCtx, 100.0f);
        }
    }
    func_80B079E0(this, globalCtx);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B07E18.s")
void func_80B07E18(EnSth* this, GlobalContext* globalCtx) {
    if (func_8002F194(&this->actor, globalCtx) != 0) {
        func_80B07540(this, func_80B07AF4);
    } else {
        if (gSaveContext.inventory.gsTokens < 50) {
            this->actor.textId = 0x20;
        } else {
            this->actor.textId = 0x1F;
        }
        if (this->actor.xzDistToPlayer < 100.0f) {
            func_8002F2CC(&this->actor, globalCtx, 100.0f);
        }
    }
    func_80B079E0(this, globalCtx);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/EnSth_Update.s")
void EnSth_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnSth* this = THIS;

    this->actionFunc(this, globalCtx);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B07EE0.s")
void func_80B07EE0(Actor* thisx, GlobalContext* globalCtx) {
    EnSth* this = THIS;
    s32 pad;

    Collider_UpdateCylinder(&this->actor, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    Actor_MoveForward(&this->actor);
    Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 4);
    if (SkelAnime_Update(&this->skelAnime) != 0) {
        this->skelAnime.curFrame = 0.0f;
    }
    this->actionFunc(this, globalCtx);

    if (DECR(this->unk_2B6) == 0) {
        this->unk_2B6 = Rand_S16Offset(0x3C, 0x3C);
    }
    this->unk_2B4 = this->unk_2B6;
    if (this->unk_2B4 >= 3) {
        this->unk_2B4 = 0;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B07FE0.s")
s32 func_80B07FE0(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnSth* this = THIS;

    s32 temp_v1;

    if (limbIndex == 15) {
        rot->x += this->unk_2A6.y;
        rot->z += this->unk_2A6.x;
        *dList = D_80B0A050;
    }

    if ((this->unk_2B2 & 2) != 0) {
        this->unk_2B2 &= ~2;
        return 0;
    }

    if ((limbIndex == 8) || (limbIndex == 10) || (limbIndex == 13)) {
        temp_v1 = limbIndex * 0x32;
        rot->y += (Math_SinS(globalCtx->state.frames * (temp_v1 + 0x814)) * 200.0f);
        rot->z += (Math_CosS(globalCtx->state.frames * (temp_v1 + 0x940)) * 200.0f);
    }
    return 0;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B0813C.s")
void func_80B0813C(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnSth* this = THIS;

    if (limbIndex == 15) {
        Matrix_MultVec3f(&D_80B0B49C, &this->actor.focus.pos);
        if (this->actor.params != 0) {
            OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_sth.c", 2079);

            gSPDisplayList(POLY_OPA_DISP++, D_80B0A3C0);

            CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_sth.c", 2081);
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B081EC.s")
Gfx* func_80B081EC(GraphicsContext* globalCtx, u8 envR, u8 envG, u8 envB, u8 envA) {
    Gfx* dList;

    dList = Graph_Alloc(globalCtx, 2 * sizeof(Gfx));
    gDPSetEnvColor(dList, envR, envG, envB, envA);
    gSPEndDisplayList(dList + 1);

    return dList;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B08258.s")
void func_80B08258(Actor* thisx, GlobalContext* globalCtx) {
    EnSth* this = THIS;
    Color_RGB8* envColor1;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_sth.c", 2133);

    gSegments[6] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[this->unk_2A4].segment);
    func_800943C8(globalCtx->state.gfxCtx);

    gSPSegment(POLY_OPA_DISP++, 0x08,
               func_80B081EC(globalCtx->state.gfxCtx, D_80B0B4A8[this->actor.params].r,
                             D_80B0B4A8[this->actor.params].g, D_80B0B4A8[this->actor.params].b, 255));

    if (thisx->params == 0) {
        gSPSegment(POLY_OPA_DISP++, 0x09, func_80B081EC(globalCtx->state.gfxCtx, 190, 110, 0, 255));
    } else {
        gSPSegment(POLY_OPA_DISP++, 0x09, func_80B081EC(globalCtx->state.gfxCtx, 90, 110, 130, 255));
    }
    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          func_80B07FE0, func_80B0813C, &this->actor);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_sth.c", 2176);
}
