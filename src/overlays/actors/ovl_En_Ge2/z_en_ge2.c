
#include "z_en_ge2.h"
#include "vt.h"

#define FLAGS 0x00000019

#define THIS ((EnGe2*)thisx)

void EnGe2_Init(Actor* thisx, GlobalContext* globalCtx);
void EnGe2_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnGe2_Update(Actor* thisx, GlobalContext* globalCtx);
void EnGe2_Draw(Actor* thisx, GlobalContext* globalCtx);

s32 func_80A330A0(void);
void func_80A330CC(EnGe2* this, GlobalContext* globalCtx);
void func_80A331A0(EnGe2* this, GlobalContext* globalCtx);
void func_80A332D4(EnGe2* this, GlobalContext* globalCtx);
void func_80A3334C(EnGe2* this, GlobalContext* globalCtx);
void func_80A33444(EnGe2* this, GlobalContext* globalCtx);
void func_80A3354C(EnGe2* this, GlobalContext* globalCtx);
void func_80A33600(EnGe2* this, GlobalContext* globalCtx);
void func_80A336C4(EnGe2* this, GlobalContext* globalCtx);
void func_80A339EC(EnGe2* this, GlobalContext* globalCtx);
void func_80A33AFC(EnGe2* this, GlobalContext* globalCtx);

// Update functions
void func_80A33D10(Actor* thisx, GlobalContext* globalCtx);
void func_80A33DE0(Actor* thisx, GlobalContext* globalCtx);
void func_80A3402C(Actor* thisx, GlobalContext* globalCtx);

const ActorInit En_Ge2_InitVars = {
    ACTOR_EN_GE2,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_GLA,
    sizeof(EnGe2),
    (ActorFunc)EnGe2_Init,
    (ActorFunc)EnGe2_Destroy,
    (ActorFunc)EnGe2_Update,
    (ActorFunc)EnGe2_Draw,
};

// extern ColliderCylinderInit D_80A34310;
ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x000007A2, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 20, 60, 0, { 0, 0, 0 } },
};

static EnGe2ActionFunc sActionFuncs[] = {
    func_80A33600, func_80A3354C, func_80A33444, func_80A3334C, func_80A332D4,
    func_80A331A0, func_80A330CC, func_80A336C4, func_80A339EC,
};

static AnimationHeader* sAnimations[] = {
    0x06009ED4, // Walking, spear on shoulder
    0x060098AC, // Standing, looking left and right
    0x060098AC,
    0x060011F4, // Falling to ground
    0x060098AC,
    0x06008D60, // Runnng, spear in attack position
    0x060098AC, 0x060098AC, 0x060098AC,
};

static u8 sAnimModes[] = { ANIMMODE_LOOP, ANIMMODE_ONCE, ANIMMODE_LOOP, ANIMMODE_ONCE, ANIMMODE_LOOP,
                           ANIMMODE_LOOP, ANIMMODE_LOOP, ANIMMODE_LOOP, ANIMMODE_ONCE };

extern FlexSkeletonHeader D_06008968;
extern AnimationHeader D_06009ED4;

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A32BD0.s")
// Same as func_80A34620
void func_80A32BD0(EnGe2* this, s32 i) {
    this->actionFunc = sActionFuncs[i];
    Animation_Change(&this->skelAnime, sAnimations[i], 1.0f, 0.0f, Animation_GetLastFrame(sAnimations[i]),
                     sAnimModes[i], -8.0f);
    this->unk_2F4 &= ~2;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/EnGe2_Init.s")
void EnGe2_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnGe2* this = THIS;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 36.0f);
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_06008968, NULL, this->jointTable, this->morphTable, 22);
    Animation_PlayLoop(&this->skelAnime, &D_06009ED4);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    this->actor.colChkInfo.mass = 0xFF;
    Actor_SetScale(&this->actor, 0.01f);

    if (globalCtx->sceneNum == SCENE_SPOT09) {
        this->actor.uncullZoneForward = 1000.0f;
    } else {
        this->actor.uncullZoneForward = 1200.0f;
    }

    this->unk_2FC = (f32)((this->actor.posRot.rot.z + 1) * 40.0f);
    this->actor.posRot.rot.z = 0;
    this->actor.shape.rot.z = 0;

    switch (this->actor.params & 0xFF) {
        case 0:
            func_80A32BD0(this, 0);
            if (func_80A330A0()) {
                this->actor.update = func_80A33D10;
                this->actor.unk_1F = 6;
            }
            break;
        case 1:
            func_80A32BD0(this, 7);
            if (func_80A330A0()) {
                this->actor.update = func_80A33D10;
                this->actor.unk_1F = 6;
            }
            break;
        case 2:
            func_80A32BD0(this, 8);
            this->actor.update = func_80A33DE0;
            this->actionFunc = func_80A33AFC;
            this->actor.unk_1F = 6;
            break;
        default:
            __assert("0", "../z_en_ge2.c", 418);
    }

    this->unk_2F4 = 0;
    this->unk_304 = 0;
    this->unk_302 = 0;
    this->unk_306 = 0;
    this->actor.minVelocityY = -4.0f;
    this->actor.gravity = -1.0f;
    this->unk_2F6 = this->actor.posRot.rot.y;
    this->unk_300 = ((this->actor.params & 0xFF00) >> 8) * 0xA;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/EnGe2_Destroy.s")
void EnGe2_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnGe2* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A32ECC.s")
s32 func_80A32ECC(GlobalContext* globalCtx, EnGe2* this) {
    f32 visionScale;

    visionScale = ((gSaveContext.nightFlag != 0) ? 0.75f : 1.5f);

    if ((250.0f * visionScale) < this->actor.xzDistToLink) {
        return 0;
    }

    if (this->actor.xzDistToLink < 50.0f) {
        return 2;
    }

    if (func_8002DDE4(globalCtx)) {
        return 1;
    }
    return 0;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A32F74.s")
s32 func_80A32F74(GlobalContext* globalCtx, EnGe2* this, Vec3f* pos, s16 yRot, f32 arg4) {
    Player* player = PLAYER;
    Vec3f posResult;
    CollisionPoly* outPoly;
    f32 visionScale;

    visionScale = ((gSaveContext.nightFlag != 0) ? 0.75f : 1.5f);

    if ((250.0f * visionScale) < this->actor.xzDistToLink) {
        return 0;
    }

    if (arg4 < ABS(this->actor.yDistToLink)) {
        return 0;
    }

    if (ABS((s16)(this->actor.yawTowardsLink - yRot)) > 0x2000) {
        return 0;
    }

    if (func_8003E0B8(&globalCtx->colCtx, pos, &player->bodyPartsPos[7], &posResult, &outPoly, 0)) {
        return 0;
    }
    return 1;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A330A0.s")
s32 func_80A330A0(void) {
    if ((u16)(gSaveContext.eventChkInf[9] & 0xF) == 0xF) {
        return 1;
    }
    return 0;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A330CC.s")
void func_80A330CC(EnGe2* this, GlobalContext* globalCtx) {
    if (this->unk_305 > 0) {
        this->unk_305--;
    } else {
        func_8006D074(globalCtx);

        if ((INV_CONTENT(ITEM_HOOKSHOT) == ITEM_NONE) || (INV_CONTENT(ITEM_LONGSHOT) == ITEM_NONE)) {
            globalCtx->nextEntranceIndex = 0x1A5;
        } else if (gSaveContext.eventChkInf[12] & 0x80) {
            globalCtx->nextEntranceIndex = 0x5F8;
        } else {
            globalCtx->nextEntranceIndex = 0x3B4;
        }

        globalCtx->fadeTransition = 0x26;
        globalCtx->sceneLoadFlag = 0x14;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A331A0.s")
void func_80A331A0(EnGe2* this, GlobalContext* globalCtx) {
    Math_SmoothStepToS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink, 2, 0x400, 0x100);
    this->actor.shape.rot.y = this->actor.posRot.rot.y;
    if (this->actor.xzDistToLink < 50.0f) {
        func_80A32BD0(this, 6);
        this->actor.speedXZ = 0.0f;
    }

    if (this->unk_305 > 0) {
        this->unk_305--;
    } else {
        func_8006D074(globalCtx);

        if ((INV_CONTENT(ITEM_HOOKSHOT) == ITEM_NONE) || (INV_CONTENT(ITEM_LONGSHOT) == ITEM_NONE)) {
            globalCtx->nextEntranceIndex = 0x1A5;
        } else if (gSaveContext.eventChkInf[12] & 0x80) {
            globalCtx->nextEntranceIndex = 0x5F8;
        } else {
            globalCtx->nextEntranceIndex = 0x3B4;
        }

        globalCtx->fadeTransition = 0x26;
        globalCtx->sceneLoadFlag = 0x14;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A332D4.s")
void func_80A332D4(EnGe2* this, GlobalContext* globalCtx) {
    Math_SmoothStepToS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink, 2, 0x400, 0x100);
    this->actor.shape.rot.y = this->actor.posRot.rot.y;

    if (this->actor.posRot.rot.y == this->actor.yawTowardsLink) {
        func_80A32BD0(this, 5);
        this->unk_305 = 50;
        this->actor.speedXZ = 4.0f;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A3334C.s")
void func_80A3334C(EnGe2* this, GlobalContext* globalCtx) {
    static Vec3f effectVelocity = { 0.0f, -0.05f, 0.0f };
    static Vec3f effectAccel = { 0.0f, -0.025f, 0.0f };
    static Color_RGBA8 effectPrimColor = { 255, 255, 255, 0 };
    static Color_RGBA8 effectEnvColor = { 255, 150, 0, 0 };
    s32 effectAngle;
    Vec3f effectPos;

    this->actor.flags &= ~1;
    if (this->unk_2F4 & 2) {
        effectAngle = (globalCtx->state.frames) * 0x2800;
        effectPos.x = this->actor.posRot2.pos.x + (Math_CosS(effectAngle) * 5.0f);
        effectPos.y = this->actor.posRot2.pos.y + 10.0f;
        effectPos.z = this->actor.posRot2.pos.z + (Math_SinS(effectAngle) * 5.0f);
        EffectSsKiraKira_SpawnDispersed(globalCtx, &effectPos, &effectVelocity, &effectAccel, &effectPrimColor,
                                        &effectEnvColor, 1000, 16);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A33444.s")
void func_80A33444(EnGe2* this, GlobalContext* globalCtx) {
    s32 temp_v0_2;

    this->actor.speedXZ = 0.0f;
    if (this->unk_2F4 & 0x10) {
        this->unk_2F4 &= ~0x10;
    } else {
        temp_v0_2 = func_80A32ECC(globalCtx, this);

        if (temp_v0_2 != 0) {
            this->unk_305 = 100;
            this->unk_2F8 = this->actor.yawTowardsLink;

            if (this->unk_306 < temp_v0_2) {
                this->unk_306 = temp_v0_2;
            }
        } else if (this->actor.posRot.rot.y == this->unk_2F8) {
            this->unk_306 = 0;
            func_80A32BD0(this, 1);
            return;
        }
    }

    switch (this->unk_306) {
        case 1:
            Math_SmoothStepToS(&this->actor.posRot.rot.y, this->unk_2F8, 2, 0x200, 0x100);
            break;
        case 2:
            Math_SmoothStepToS(&this->actor.posRot.rot.y, this->unk_2F8, 2, 0x600, 0x180);
            break;
    }

    this->actor.shape.rot.y = this->actor.posRot.rot.y;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A3354C.s")
void func_80A3354C(EnGe2* this, GlobalContext* globalCtx) {
    s32 temp_v0;

    this->actor.speedXZ = 0.0f;
    temp_v0 = func_80A32ECC(globalCtx, this);

    if (temp_v0 != 0) {
        func_80A32BD0(this, 2);
        this->unk_305 = 100;
        this->unk_306 = (u8)temp_v0;
        this->unk_2F8 = this->actor.yawTowardsLink;
    } else if (this->unk_2F4 & 2) {
        Math_SmoothStepToS(&this->actor.posRot.rot.y, this->unk_2F6, 2, 0x400, 0x200);
        this->actor.shape.rot.y = this->actor.posRot.rot.y;
    }

    if (this->actor.shape.rot.y == this->unk_2F6) {
        func_80A32BD0(this, 0);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A33600.s")
void func_80A33600(EnGe2* this, GlobalContext* globalCtx) {
    u8 temp_v1;

    temp_v1 = func_80A32ECC(globalCtx, this);
    if (temp_v1 != 0) {
        this->actor.speedXZ = 0.0f;
        func_80A32BD0(this, 2);
        this->unk_305 = 100;
        this->unk_306 = temp_v1;
        this->unk_2F8 = this->actor.yawTowardsLink;
    } else if (this->unk_302 >= this->unk_300) {
        this->unk_302 = 0;
        this->unk_2F6 += 0x8000;
        func_80A32BD0(this, 1);
        this->actor.speedXZ = 0.0f;
    } else {
        this->unk_302++;
        this->actor.speedXZ = 2.0f;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A336C4.s")
void func_80A336C4(EnGe2* this, GlobalContext* globalCtx) {
    Math_SmoothStepToS(&this->actor.posRot.rot.y, this->unk_2F6, 2, 0x400, 0x200);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A33704.s")
// Same as EnGe3_TurnToFacePlayer
void func_80A33704(EnGe2* this, GlobalContext* globalCtx) {
    s32 pad;
    s16 angleDiff = this->actor.yawTowardsLink - this->actor.shape.rot.y;

    if (ABS(angleDiff) <= 0x4000) {
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 6, 4000, 100);
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
        func_80038290(globalCtx, &this->actor, &this->unk_2E8, &this->unk_2EE, this->actor.posRot2.pos);
    } else {
        if (angleDiff < 0) {
            Math_SmoothStepToS(&this->unk_2E8.y, -0x2000, 6, 6200, 0x100);
        } else {
            Math_SmoothStepToS(&this->unk_2E8.y, 0x2000, 6, 6200, 0x100);
        }

        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 12, 1000, 100);
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A3381C.s")
// Same as EnGe3_LookAtPlayer
void func_80A3381C(EnGe2* this, GlobalContext* globalCtx) {
    if ((ABS((s16)(this->actor.yawTowardsLink - this->actor.shape.rot.y)) <= 0x4300) &&
        (this->actor.xzDistToLink < 200.0f)) {
        func_80038290(globalCtx, &this->actor, &this->unk_2E8, &this->unk_2EE, this->actor.posRot2.pos);
    } else {
        Math_SmoothStepToS(&this->unk_2E8.x, 0, 6, 6200, 100);
        Math_SmoothStepToS(&this->unk_2E8.y, 0, 6, 6200, 100);
        Math_SmoothStepToS(&this->unk_2EE.x, 0, 6, 6200, 100);
        Math_SmoothStepToS(&this->unk_2EE.y, 0, 6, 6200, 100);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A33930.s")
void func_80A33930(EnGe2* this, GlobalContext* globalCtx) {
    // s32 temp_v0;

    if (func_8002F334(&this->actor, globalCtx)) {
        // temp_v0 = this->actor.params & 0xFF;

        switch (this->actor.params & 0xFF) {
            case 0:
                func_80A32BD0(this, 1);
                break;
            case 1:
                func_80A32BD0(this, 7);
                break;
            case 2:
                this->actionFunc = func_80A339EC;
                break;
        }
        this->actor.update = func_80A33D10;
        this->actor.flags &= ~0x10000;
    }
    func_80A33704(this, globalCtx);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A339EC.s")
void func_80A339EC(EnGe2* this, GlobalContext* globalCtx) {
    func_80A3381C(this, globalCtx);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A33A0C.s")
// Same as EnGe3_WaitTillCardGiven
void func_80A33A0C(EnGe2* this, GlobalContext* globalCtx) {
    if (Actor_HasParent(&this->actor, globalCtx)) {
        this->actor.parent = NULL;
        this->actionFunc = func_80A33930;
    } else {
        func_8002F434(&this->actor, globalCtx, GI_GERUDO_CARD, 10000.0f, 50.0f);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A33A6C.s")
// Same as EnGe3_GiveCard
void func_80A33A6C(EnGe2* this, GlobalContext* globalCtx) {
    if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && (func_80106BC8(globalCtx) != 0)) {
        func_80106CCC(globalCtx);
        this->actor.flags &= ~0x10000;
        this->actionFunc = func_80A33A0C;
        func_8002F434(&this->actor, globalCtx, GI_GERUDO_CARD, 10000.0f, 50.0f);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A33AFC.s")
void func_80A33AFC(EnGe2* this, GlobalContext* globalCtx) {

    if (func_8002F194(&this->actor, globalCtx)) {
        this->actionFunc = func_80A33A6C;
    } else {
        this->actor.textId = 0x6004;
        this->actor.flags = this->actor.flags | 0x10000;
        func_8002F1C4(&this->actor, globalCtx, 300.0f, 300.0f, 0);
    }
    func_80A3381C(this, globalCtx);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A33B7C.s")
void func_80A33B7C(EnGe2* this, GlobalContext* globalCtx) {
    this->unk_2F4 |= 8;
    this->actor.speedXZ = 0.0f;
    func_80A32BD0(this, 4);
    func_8002DF54(globalCtx, &this->actor, 95);
    func_80078884(NA_SE_SY_FOUND);
    func_8010B680(globalCtx, 0x6000, &this->actor);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A33BE8.s")
// Same as EnGe3_MaintainCollider
void func_80A33BE8(EnGe2* this, GlobalContext* globalCtx) {
    s32 pad;
    s32 pad2;

    Collider_CylinderUpdate(&this->actor, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    func_8002E4B4(globalCtx, &this->actor, 40.0f, 25.0f, 40.0f, 5);

    if ((!(this->unk_2F4 & 2)) && SkelAnime_Update(&this->skelAnime)) {
        this->unk_2F4 |= 2;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A33C8C.s")
// Same as EnGe3_MoveAndBlink
void func_80A33C8C(EnGe2* this, GlobalContext* globalCtx) {

    Actor_MoveForward(&this->actor);

    if (DECR(this->blinkTimer) == 0) {
        this->blinkTimer = Rand_S16Offset(60, 60);
    }
    this->eyeIndex = this->blinkTimer;

    if (this->eyeIndex >= 3) {
        this->eyeIndex = 0;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A33D10.s")
void func_80A33D10(Actor* thisx, GlobalContext* globalCtx) {
    EnGe2* this = THIS;

    func_80A33BE8(this, globalCtx);
    this->actionFunc(this, globalCtx);

    if (func_8002F194(&this->actor, globalCtx)) {
        if ((this->actor.params & 0xFF) == 0) {
            this->actor.speedXZ = 0.0f;
            func_80A32BD0(this, 8);
        }
        this->actionFunc = func_80A33930;
        this->actor.update = func_80A33DE0;
    } else {
        this->actor.textId = 0x6005;

        if (this->actor.xzDistToLink < 100.0f) {
            func_8002F2CC(&this->actor, globalCtx, 100.0f);
        }
    }
    func_80A33C8C(this, globalCtx);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A33DE0.s")
void func_80A33DE0(Actor* thisx, GlobalContext* globalCtx) {
    EnGe2* this = THIS;

    this->unk_2F4 |= 0x10;
    func_80A33BE8(this, globalCtx);
    this->actionFunc(this, globalCtx);
    func_80A33C8C(this, globalCtx);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/EnGe2_Update.s")
void EnGe2_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnGe2* this = THIS;
    s32 temp_v0_3;

    func_80A33BE8(this, globalCtx);

    if ((this->unk_2F4 & 4) || (this->unk_2F4 & 8)) {
        this->actionFunc(this, globalCtx);
    } else if (this->collider.base.acFlags & 2) {
        if ((this->collider.body.acHitItem != NULL) && ((this->collider.body.acHitItem->toucher.flags & 0x80) != 0)) {
            func_8003426C(&this->actor, 0, 120, 0, 400);
            this->actor.update = func_80A3402C;
            return;
        }
        func_80A32BD0(this, 3);
        this->unk_305 = 100;
        this->unk_2F4 |= 4;
        this->actor.speedXZ = 0.0f;
        Audio_PlayActorSound2(&this->actor, NA_SE_VO_SK_CRASH);
    } else {
        this->actionFunc(this, globalCtx);

        if (func_80A32F74(globalCtx, this, &this->actor.posRot2.pos, this->actor.shape.rot.y, this->unk_2FC) != 0) {
            // Discovered!
            osSyncPrintf(VT_FGCOL(GREEN) "発見!!!!!!!!!!!!\n" VT_RST);
            func_80A33B7C(this, globalCtx);
        }

        if (((this->actor.params & 0xFF) == 1) && (this->actor.xzDistToLink < 100.0f)) {
            // Discovered!
            osSyncPrintf(VT_FGCOL(GREEN) "発見!!!!!!!!!!!!\n" VT_RST);
            func_80A33B7C(this, globalCtx);
        }
    }

    if (!(this->unk_2F4 & 4)) {
        temp_v0_3 = this->actor.params & 0xFF;
        if ((temp_v0_3 == 0) || (temp_v0_3 == 1)) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }
    }
    func_80A33C8C(this, globalCtx);

    if (func_80A330A0() && !(this->unk_2F4 & 4)) {
        this->actor.update = func_80A33D10;
        this->actor.unk_1F = 6;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A3402C.s")
void func_80A3402C(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    EnGe2* this = THIS;

    Collider_CylinderUpdate(&this->actor, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    func_8002E4B4(globalCtx, &this->actor, 40.0f, 25.0f, 40.0f, 5);

    if ((this->collider.base.acFlags & 2) &&
        ((this->collider.body.acHitItem == NULL) || !(this->collider.body.acHitItem->toucher.flags & 0x80))) {
        this->actor.dmgEffectTimer = 0;
        func_80A32BD0(this, 3);
        this->unk_305 = 100;
        this->unk_2F4 |= 4;
        this->actor.speedXZ = 0.0f;
        Audio_PlayActorSound2(&this->actor, NA_SE_VO_SK_CRASH);
    }
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);

    if (func_80A330A0()) {
        this->actor.update = func_80A33D10;
        this->actor.unk_1F = 6;
        this->actor.dmgEffectTimer = 0;
    } else if (this->actor.dmgEffectTimer == 0) {
        this->actor.update = EnGe2_Update;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func _80A3415C.s")
s32 EnGe2_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnGe2* this = THIS;

    if (limbIndex == 3) {
        rot->x = rot->x + this->unk_2E8.y;
        rot->z = rot->z + this->unk_2E8.x;
    }
    return 0;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func _80A341A0.s")
void EnGe2_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    static Vec3f D_80A343B0 = { 600.0f, 700.0f, 0.0f };
    EnGe2* this = THIS;

    if (limbIndex == 6) {
        Matrix_MultVec3f(&D_80A343B0, &this->actor.posRot2.pos);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/EnGe2_Draw.s")
void EnGe2_Draw(Actor* thisx, GlobalContext* globalCtx) {
    static u64* sEyeTextures[] = {
        0x06004F78, // Half-open
        0x06005578, // Quarter-open
        0x06005BF8, // Closed
    };
    s32 pad;
    EnGe2* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_ge2.c", 1274);
    func_800943C8(globalCtx->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sEyeTextures[this->eyeIndex]));
    func_8002EBCC(&this->actor, globalCtx, 0);
    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnGe2_OverrideLimbDraw, EnGe2_PostLimbDraw, this);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_ge2.c", 1291);
}
