/*
 * File: z_en_xc.c
 * Overlay: ovl_En_Xc
 * Description: Sheik
 */

#include "z_en_xc.h"
#include "overlays/actors/ovl_En_Arrow/z_en_arrow.h"
#include "objects/object_xc/object_xc.h"
#include "scenes/overworld/spot05/spot05_scene.h"
#include "scenes/overworld/spot17/spot17_scene.h"
#include "scenes/indoors/tokinoma/tokinoma_scene.h"
#include "scenes/dungeons/ice_doukutu/ice_doukutu_scene.h"
#include "vt.h"

#define FLAGS 0x00000010

#define THIS ((EnXc*)thisx)

void EnXc_Init(Actor* thisx, GlobalContext* globalCtx);
void EnXc_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnXc_Update(Actor* thisx, GlobalContext* globalCtx);
void EnXc_Draw(Actor* thisx, GlobalContext* globalCtx);
s32 func_80B3E8AC(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx);
s32 func_80B41A88(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx);
void func_80B41B0C(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx);
void func_80B40248(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx);

void EnXc_CalculateHeadTurn(EnXc* this, GlobalContext* globalCtx);
void EnXc_SetEyePattern(EnXc* this);
void EnXc_SpawnArrow(EnXc* this, GlobalContext* globalCtx);
void EnXc_BgCheck(EnXc* this, GlobalContext* globalCtx);
s32 EnXc_AnimIsFinished(EnXc* this);
CsCmdActorAction* EnXc_GetCsCmd(GlobalContext* globalCtx, s32 npcActionIdx);
s32 EnXc_ActionEqualsCsCmdAction(EnXc* this, GlobalContext* globalCtx, u16 arg2, s32 npcActionIdx);
s32 EnXc_ActionDoesNotEqualCsCmdAction(EnXc* this, GlobalContext* globalCtx, u16 arg2, s32 npcActionIdx);
void func_80B3C588(EnXc* this, GlobalContext* globalCtx, u32 npcActionIdx);
void func_80B3C620(EnXc* this, GlobalContext* globalCtx, s32 npcActionIdx);
void EnXc_ChangeAnimation(EnXc* this, AnimationHeader* animation, u8 mode, f32 transitionRate, s32 arg4);
void EnXc_CheckAndSetAction(EnXc* this, s32 action1, s32 action2);
void func_80B3C7D4(EnXc* this, s32 action1, s32 action2, s32 action3);
s32 EnXc_NotInCutscene(GlobalContext* globalCtx);
void func_80B3C820(EnXc* this);
void func_80B3C888(EnXc* this, GlobalContext* globalCtx);
void func_80B3C8CC(EnXc* this, GlobalContext* globalCtx);
void func_80B3C924(EnXc* this, GlobalContext* globalCtx);
void func_80B3C964(EnXc* this, GlobalContext* globalCtx);
void func_80B3C9DC(EnXc* this);
void func_80B3C9EC(EnXc* this);
s32 EnXc_InitMinuetCutscene(EnXc* this, GlobalContext* globalCtx);
void func_80B3CB58(EnXc* this, GlobalContext* globalCtx);
s32 EnXc_InitBoleroCutscene(EnXc* this, GlobalContext* globalCtx);
void func_80B3CD00(EnXc* this, GlobalContext* globalCtx);
s32 EnXc_InitSerenadeCutscene(EnXc* this, GlobalContext* globalCtx);
void func_80B3CE78(EnXc* this, GlobalContext* globalCtx);
void EnXc_SetWalkingSFX(EnXc* this, GlobalContext* globalCtx);
void EnXc_SetNutThrowSFX(EnXc* this, GlobalContext* globalCtx);
void EnXc_SetLandingSFX(EnXc* this, GlobalContext* globalCtx);
void EnXc_SetColossusAppearSFX(EnXc* this, GlobalContext* globalCtx);
void func_80B3D118(GlobalContext* globalCtx);
void EnXc_SpawnFlame(EnXc* this, GlobalContext* globalCtx);
void EnXc_SetupFlamePos(EnXc* this, GlobalContext* globalCtx);
void EnXc_InitFlame(EnXc* this, GlobalContext* globalCtx);
void func_80B3D48C(EnXc* this, GlobalContext* globalCtx);
AnimationHeader* EnXc_GetCurrentHarpAnim(GlobalContext* globalCtx, s32 index);
void func_80B3D56C(EnXc* this);
void func_80B3D644(EnXc* this);
void func_80B3D664(EnXc* this);
void func_80B3D6F0(EnXc* this);
void func_80B3D710(EnXc* this);
void func_80B3D730(EnXc* this);
void func_80B3D750(EnXc* this, GlobalContext* globalCtx);
void EnXc_SetupFallFromSkyAction(EnXc* this, GlobalContext* globalCtx);
void func_80B3D8A4(EnXc* this, GlobalContext* globalCtx, s32 animFinished);
void func_80B3D990(EnXc* this);
void EnXc_SetupHalt(EnXc* this);
void func_80B3DAA8(EnXc* this);
void func_80B3DAF0(EnXc* this, GlobalContext* globalCtx);
void func_80B3DBAC(EnXc* this, s32 animFinished);
void func_80B3DC24(EnXc* this, GlobalContext* globalCtx, s32 animFinished);
void func_80B3DCA8(EnXc* this, GlobalContext* globalCtx);
void func_80B3DD3C(EnXc* this, GlobalContext* globalCtx);
void func_80B3DE78(EnXc* this, s32 animFinished);
void func_80B3DEF4(EnXc* this, GlobalContext* globalCtx);
void func_80B3DFA4(EnXc* this);
void EnXc_SetupNutThrow(EnXc* this);
void func_80B3E164(EnXc* this, GlobalContext* globalCtx);
void func_80B3E1B8(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc0(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc1(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc2(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc3(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc4(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc5(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc6(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc7(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc8(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc9(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc10(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc11(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc12(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc13(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc14(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc15(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc16(EnXc* this, GlobalContext* globalCtx);
void EnXc_ThrowNutAction(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc18(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc19(EnXc* this, GlobalContext* globalCtx);
void func_80B3EC0C(EnXc* this, GlobalContext* globalCtx);
void func_80B3EC90(EnXc* this, GlobalContext* globalCtx);
void func_80B3ECD8(EnXc* this);
void EnXc_ActionFunc20(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc21(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc22(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc23(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc24(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc25(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc26(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc27(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc28(EnXc* this, GlobalContext* globalCtx);
void func_80B3EE64(EnXc* this, GlobalContext* globalCtx);
void func_80B3EE74(EnXc* this, GlobalContext* globalCtx);
void func_80B3EEA4(EnXc* this);
void func_80B3EEC8(EnXc* this);
void func_80B3EEEC(EnXc* this);
void func_80B3EF10(EnXc* this);
void func_80B3EF34(EnXc* this);
void func_80B3EF58(EnXc* this);
void func_80B3EF80(EnXc* this);
void func_80B3EFA4(EnXc* this);
void func_80B3EFC8(EnXc* this);
void func_80B3EFEC(EnXc* this);
void func_80B3F010(EnXc* this);
void func_80B3F0B8(EnXc* this);
void func_80B3F0DC(EnXc* this);
void func_80B3F100(EnXc* this);
void EnXc_ActionFunc29(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc30(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc31(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc32(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc33(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc34(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc35(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc36(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc37(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc38(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc39(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc40(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc41(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc42(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc43(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc44(EnXc* this, GlobalContext* globalCtx);
void func_80B3F3C8(EnXc* this, GlobalContext* globalCtx);
void func_80B3F3D8();
void EnXc_PlayDiveSFX(Vec3f* src, GlobalContext* globalCtx);
void func_80B3F59C(EnXc* this, GlobalContext* globalCtx);
void func_80B3F620(EnXc* this);
void func_80B3F644(EnXc* this);
void func_80B3F668(EnXc* this, GlobalContext* globalCtx);
void func_80B3F6DC(EnXc* this);
void EnXc_SetupKneelAction(EnXc* this, GlobalContext* globalCtx);
void func_80B3F754(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc45(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc46(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc47(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc48(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc49(EnXc* this, GlobalContext* globalCtx);
void EnXc_Kneel(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc51(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc52(EnXc* this, GlobalContext* globalCtx);
void func_80B3FA08(EnXc* this, GlobalContext* globalCtx);
void func_80B3FA2C(void);
void EnXc_PlayTriforceSFX(Actor* thisx, GlobalContext* globalCtx);
void func_80B3FAE0(EnXc* this);
void EnXc_CalcTriforce(Actor* thisx, GlobalContext* globalCtx);
void func_80B3FF0C(EnXc* this, GlobalContext* globalCtx);
void EnXc_SetupShowTriforceAction(EnXc* this, GlobalContext* globalCtx);
void func_80B400AC(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc53(EnXc* this, GlobalContext* globalCtx);
void func_80B40CBC(EnXc* this);
void EnXc_ActionFunc54(EnXc* this, GlobalContext* globalCtx);
void EnXc_ShowTriforce(EnXc* this, GlobalContext* globalCtx);
void EnXc_ShowTriforceIdle(EnXc* this, GlobalContext* globalCtx);
void func_80B40590(EnXc* this, GlobalContext* globalCtx);
void func_80B4066C(EnXc* this, GlobalContext* globalCtx);
void EnXc_SetCrySFX(EnXc* this, GlobalContext* globalCtx);
void func_80B406F8(Actor* thisx);
void func_80B4070C(EnXc* this, GlobalContext* globalCtx);
void func_80B407A8(Actor* thisx);
void func_80B40820(EnXc* this, GlobalContext* globalCtx);
void func_80B408FC(EnXc* this, GlobalContext* globalCtx);
void func_80B409D8(EnXc* this, GlobalContext* globalCtx);
void func_80B40A78(EnXc* this, GlobalContext* globalCtx);
void func_80B40B18(EnXc* this, GlobalContext* globalCtx);
void func_80B40BB4(EnXc* this, GlobalContext* globalCtx);
void func_80B40C50(EnXc* this);
void func_80B40C98(EnXc* this);
void func_80B40D98(EnXc* this);
void func_80B40E64(EnXc* this);
void func_80B40E40(EnXc* this);
void func_80B40E88(EnXc* this);
s32 func_80B40EAC(Actor* thisx, GlobalContext* globalCtx);
void EnXc_ActionFunc57(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc58(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc59(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc60(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc61(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc62(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc63(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc64(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc65(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc66(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc67(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc68(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc69(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc70(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc71(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc72(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc73(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc74(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc75(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc76(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc77(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc78(EnXc* this, GlobalContext* globalCtx);
void func_80B415B8(EnXc* this, GlobalContext* globalCtx);
void func_80B41798(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc79(EnXc* this, GlobalContext* globalCtx);
void EnXc_ActionFunc80(EnXc* this, GlobalContext* globalCtx);

void EnXc_DrawNothing(EnXc* this, GlobalContext* globalCtx);
void func_80B41BA4(EnXc* this, GlobalContext* globalCtx);
void func_80B3E908(Actor* thisx, GlobalContext* globalCtx);
void func_80B41BA4(EnXc* this, GlobalContext* globalCtx);
void EnXc_DrawHarp(Actor* thsix, GlobalContext* globalCtx);
void EnXc_DrawTriforce(Actor* thisx, GlobalContext* globalCtx);
void func_80B414AC(EnXc* this, GlobalContext* globalCtx);

void func_80B3EBF0(EnXc* this, GlobalContext* globalCtx);
void func_80B3EC00(EnXc* this);

s32 func_80B3E8E4(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx);
void func_80B3E87C(Gfx** dList, EnXc* this);

s32 func_80B40224(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx);

static ColliderCylinderInitType1 sCylinderInit = {
    {
        COLTYPE_HIT0,
        AT_NONE,
        AC_NONE,
        OC1_ON | OC1_TYPE_PLAYER,
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
    { 25, 80, 0, { 0, 0, 0 } },
};

static u64* sEyeTextures[] = {
    gShiekEyeOpenTex,
    gShiekEyeHalfClosedTex,
    gShiekEyeShutTex,
};

void EnXc_InitCollider(Actor* thisx, GlobalContext* globalCtx) {
    EnXc* this = THIS;

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinderType1(globalCtx, &this->collider, &this->actor, &sCylinderInit);
}

void EnXc_UpdateCollider(Actor* thisx, GlobalContext* globalCtx) {
    EnXc* this = THIS;
    ColliderCylinder* collider = &this->collider;
    Collider* colliderBase = &this->collider.base;
    CollisionCheckContext* colChkCtx = &globalCtx->colChkCtx;
    s32 pad;

    Collider_UpdateCylinder(thisx, collider);
    CollisionCheck_SetOC(globalCtx, colChkCtx, colliderBase);
}

void EnXc_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnXc* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void EnXc_CalculateHeadTurn(EnXc* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    this->struct_314.unk_18 = player->actor.world.pos;
    this->struct_314.unk_14 = kREG(16) - 3.0f;
    func_80034A14(&this->actor, &this->struct_314, kREG(17) + 0xC, 2);
}

void EnXc_SetEyePattern(EnXc* this) {
    s32 pad[3];
    s16* blinkTimer = &this->blinkTimer;
    s16* eyePattern = &this->eyeIdx;

    if (!DECR(*blinkTimer)) {
        *blinkTimer = Rand_S16Offset(60, 60);
    }

    *eyePattern = *blinkTimer;
    if (*eyePattern >= 3) {
        *eyePattern = 0;
    }
}

void EnXc_SpawnArrow(EnXc* this, GlobalContext* globalCtx) {
    s32 pad;
    Vec3f* pos = &this->actor.world.pos;
    s16 angle = this->actor.shape.rot.y;
    f32 x = (Math_SinS(angle) * 30.0f) + pos->x;
    f32 y = pos->y + 3.0f;
    f32 z = (Math_CosS(angle) * 30.0f) + pos->z;

    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_ARROW, x, y, z, 0xFA0, this->actor.shape.rot.y, 0,
                ARROW_CS_NUT);
}

void EnXc_BgCheck(EnXc* this, GlobalContext* globalCtx) {
    Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 75.0f, 30.0f, 30.0f, 4);
}

s32 EnXc_AnimIsFinished(EnXc* this) {
    return SkelAnime_Update(&this->skelAnime);
}

CsCmdActorAction* EnXc_GetCsCmd(GlobalContext* globalCtx, s32 npcActionIdx) {
    CsCmdActorAction* action = NULL;

    if (globalCtx->csCtx.state != 0) {
        action = globalCtx->csCtx.npcActions[npcActionIdx];
    }
    return action;
}

s32 EnXc_ActionEqualsCsCmdAction(EnXc* this, GlobalContext* globalCtx, u16 action, s32 npcActionIdx) {
    CsCmdActorAction* csCmdActorAction = EnXc_GetCsCmd(globalCtx, npcActionIdx);

    if (csCmdActorAction && csCmdActorAction->action == action) {
        return true;
    }
    return false;
}

s32 EnXc_ActionDoesNotEqualCsCmdAction(EnXc* this, GlobalContext* globalCtx, u16 action, s32 npcActionIdx) {
    CsCmdActorAction* csCmdNPCAction = EnXc_GetCsCmd(globalCtx, npcActionIdx);

    if (csCmdNPCAction && csCmdNPCAction->action != action) {
        return true;
    }
    return false;
}

void func_80B3C588(EnXc* this, GlobalContext* globalCtx, u32 npcActionIdx) {
    CsCmdActorAction* csCmdNPCAction = EnXc_GetCsCmd(globalCtx, npcActionIdx);
    Actor* thisx = &this->actor;

    if (csCmdNPCAction) {
        thisx->world.pos.x = csCmdNPCAction->startPos.x;
        thisx->world.pos.y = csCmdNPCAction->startPos.y;
        thisx->world.pos.z = csCmdNPCAction->startPos.z;
        thisx->world.rot.x = thisx->shape.rot.x = csCmdNPCAction->rot.x;
        thisx->world.rot.y = thisx->shape.rot.y = csCmdNPCAction->rot.y;
        thisx->world.rot.z = thisx->shape.rot.z = csCmdNPCAction->rot.z;
    }
}

void func_80B3C620(EnXc* this, GlobalContext* globalCtx, s32 npcActionIdx) {
    CsCmdActorAction* npcAction = EnXc_GetCsCmd(globalCtx, npcActionIdx);
    Vec3f* xcPos = &this->actor.world.pos;
    f32 startX;
    f32 startY;
    f32 startZ;
    f32 endX;
    f32 endY;
    f32 endZ;
    f32 unk;

    if (npcAction) {
        unk = func_8006F9BC(npcAction->endFrame, npcAction->startFrame, globalCtx->csCtx.frames, 0, 0);
        startX = npcAction->startPos.x;
        startY = npcAction->startPos.y;
        startZ = npcAction->startPos.z;
        endX = npcAction->endPos.x;
        endY = npcAction->endPos.y;
        endZ = npcAction->endPos.z;
        xcPos->x = ((endX - startX) * unk) + startX;
        xcPos->y = ((endY - startY) * unk) + startY;
        xcPos->z = ((endZ - startZ) * unk) + startZ;
    }
}

void EnXc_ChangeAnimation(EnXc* this, AnimationHeader* animation, u8 mode, f32 morphFrames, s32 reverseFlag) {
    s32 pad[2];
    AnimationHeader* animationSeg = SEGMENTED_TO_VIRTUAL(animation);
    f32 frameCount = Animation_GetLastFrame(&animationSeg->common);
    f32 playbackSpeed;
    f32 startFrame;
    f32 endFrame;

    if (!reverseFlag) {
        startFrame = 0.0f;
        endFrame = frameCount;
        playbackSpeed = 1.0f;
    } else {
        startFrame = frameCount;
        endFrame = 0.0f;
        playbackSpeed = -1.0f;
    }

    Animation_Change(&this->skelAnime, animationSeg, playbackSpeed, startFrame, endFrame, mode, morphFrames);
}

void EnXc_CheckAndSetAction(EnXc* this, s32 check, s32 set) {
    if (check != this->action) {
        this->action = set;
    }
}

void func_80B3C7D4(EnXc* this, s32 action1, s32 action2, s32 action3) {
    if (action1 != this->action) {
        if (this->action == 11) {
            this->action = action2;
        } else {
            this->action = action3;
        }
    }
}

s32 EnXc_NotInCutscene(GlobalContext* globalCtx) {
    if (globalCtx->csCtx.state == 0) {
        return true;
    }
    return false;
}

void func_80B3C820(EnXc* this) {
    Animation_Change(&this->skelAnime, &gShiekIdleAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gShiekIdleAnim), 0, 0.0f);
    this->action = 53;
}

void func_80B3C888(EnXc* this, GlobalContext* globalCtx) {
    if (EnXc_NotInCutscene(globalCtx) && this->actor.params == 4) {
        func_80B3C820(this);
    }
}

void func_80B3C8CC(EnXc* this, GlobalContext* globalCtx) {
    SkelAnime* skelAnime = &this->skelAnime;

    if (skelAnime->jointTable[0].y >= skelAnime->baseTransl.y) {
        skelAnime->moveFlags |= 3;
        AnimationContext_SetMoveActor(globalCtx, &this->actor, skelAnime, 1.0f);
    }
}

void func_80B3C924(EnXc* this, GlobalContext* globalCtx) {
    this->skelAnime.moveFlags |= 3;
    AnimationContext_SetMoveActor(globalCtx, &this->actor, &this->skelAnime, 1.0f);
}

void func_80B3C964(EnXc* this, GlobalContext* globalCtx) {
    SkelAnime* skelAnime = &this->skelAnime;

    skelAnime->baseTransl = *skelAnime->jointTable;
    skelAnime->prevTransl = *skelAnime->jointTable;
    skelAnime->moveFlags |= 3;
    AnimationContext_SetMoveActor(globalCtx, &this->actor, skelAnime, 1.0f);
}

void func_80B3C9DC(EnXc* this) {
    this->skelAnime.moveFlags &= ~0x3;
}

void func_80B3C9EC(EnXc* this) {
    EnXc_ChangeAnimation(this, &gShiekArmsCrossedIdleAnim, 0, 0.0f, 0);
    this->action = 79;
    this->drawMode = XC_DRAW_1;
    this->unk_30C = 1;
}

void func_80B3CA38(EnXc* this, GlobalContext* globalCtx) {
    if (!(gSaveContext.eventChkInf[5] & 1) && LINK_IS_ADULT) {
        this->action = 0;
    } else {
        Actor_Kill(&this->actor);
    }
}

s32 EnXc_InitMinuetCutscene(EnXc* this, GlobalContext* globalCtx) {
    if (this->actor.params == 6) {
        Player* player = PLAYER;
        f32 z = player->actor.world.pos.z;
        if (z < -2225.0f) {
            if (!Gameplay_InCsMode(globalCtx)) {
                globalCtx->csCtx.segment = SEGMENTED_TO_VIRTUAL(&spot05_sceneCutsceneData0x003F80);
                gSaveContext.cutsceneTrigger = 1;
                gSaveContext.eventChkInf[5] |= 1;
                Item_Give(globalCtx, ITEM_SONG_MINUET);
                return 1;
            }
        }
        return 0;
    }
    return 1;
}

void func_80B3CB58(EnXc* this, GlobalContext* globalCtx) {
    if (!(gSaveContext.eventChkInf[5] & 2) && LINK_IS_ADULT) {
        this->action = 0;
    } else {
        Actor_Kill(&this->actor);
    }
}

s32 EnXc_InitBoleroCutscene(EnXc* this, GlobalContext* globalCtx) {
    Player* player;
    PosRot* posRot;

    if (this->actor.params == 7) {
        player = PLAYER;
        posRot = &player->actor.world;
        if ((posRot->pos.x > -784.0f) && (posRot->pos.x < -584.0f) && (posRot->pos.y > 447.0f) &&
            (posRot->pos.y < 647.0f) && (posRot->pos.z > -446.0f) && (posRot->pos.z < -246.0f) &&
            !Gameplay_InCsMode(globalCtx)) {
            globalCtx->csCtx.segment = SEGMENTED_TO_VIRTUAL(&spot17_sceneCutsceneData0x0045D0);
            gSaveContext.cutsceneTrigger = 1;
            gSaveContext.eventChkInf[5] |= 2;
            Item_Give(globalCtx, ITEM_SONG_BOLERO);
            return true;
        }
        return false;
    }
    return true;
}

void func_80B3CD00(EnXc* this, GlobalContext* globalCtx) {
    /* Player is adult and does not have iron boots and has not learned Serenade */
    if ((!CHECK_OWNED_EQUIP(EQUIP_BOOTS, 1) && !(gSaveContext.eventChkInf[5] & 4)) && LINK_IS_ADULT) {
        this->action = 29;
        osSyncPrintf("水のセレナーデ シーク誕生!!!!!!!!!!!!!!!!!!\n");
    } else {
        Actor_Kill(&this->actor);
        osSyncPrintf("水のセレナーデ シーク消滅!!!!!!!!!!!!!!!!!!\n");
    }
}

s32 EnXc_InitSerenadeCutscene(EnXc* this, GlobalContext* globalCtx) {
    if (this->actor.params == 8) {
        Player* player = PLAYER;
        s32 stateFlags = player->stateFlags1;
        if (CHECK_OWNED_EQUIP(EQUIP_BOOTS, 1) && !(gSaveContext.eventChkInf[5] & 4) && ((stateFlags << 2) >= 0) &&
            !Gameplay_InCsMode(globalCtx)) {
            Cutscene_SetSegment(globalCtx, &ice_doukutu_sceneCutsceneData0x000330);
            gSaveContext.cutsceneTrigger = 1;
            gSaveContext.eventChkInf[5] |= 4; /* Learned Serenade of Water Flag */
            Item_Give(globalCtx, ITEM_SONG_SERENADE);
            osSyncPrintf("ブーツを取った!!!!!!!!!!!!!!!!!!\n");
            return true;
        }
        osSyncPrintf("はやくブーツを取るべし!!!!!!!!!!!!!!!!!!\n");
        return false;
    }
    return true;
}

void func_80B3CE78(EnXc* this, GlobalContext* globalCtx) {
}

void EnXc_SetWalkingSFX(EnXc* this, GlobalContext* globalCtx) {
    s32 pad[2];
    u32 sfxId;
    s32 pad2;
    if ((Animation_OnFrame(&this->skelAnime, 11.0f)) || (Animation_OnFrame(&this->skelAnime, 23.0f))) {
        if (this->actor.bgCheckFlags & 1) {
            sfxId = SFX_FLAG;
            sfxId += SurfaceType_GetSfx(&globalCtx->colCtx, this->actor.floorPoly, this->actor.floorBgId);
            func_80078914(&this->actor.projectedPos, sfxId);
        }
    }
}

void EnXc_SetNutThrowSFX(EnXc* this, GlobalContext* globalCtx) {
    s32 pad[2];
    u32 sfxId;
    s32 pad2;

    if (Animation_OnFrame(&this->skelAnime, 7.0f)) {
        if (this->actor.bgCheckFlags & 1) {
            sfxId = SFX_FLAG;
            sfxId += SurfaceType_GetSfx(&globalCtx->colCtx, this->actor.floorPoly, this->actor.floorBgId);
            func_80078914(&this->actor.projectedPos, sfxId);
        }
    }
    if (Animation_OnFrame(&this->skelAnime, 20.0f)) {
        func_80078914(&this->actor.projectedPos, NA_SE_VO_SK_SHOUT);
    }
}

void EnXc_SetLandingSFX(EnXc* this, GlobalContext* globalCtx) {
    u32 sfxId;
    s16 sceneNum = globalCtx->sceneNum;

    if ((gSaveContext.sceneSetupIndex != 4) || (sceneNum != SCENE_SPOT11)) {
        if (Animation_OnFrame(&this->skelAnime, 11.0f)) {
            sfxId = SFX_FLAG;
            sfxId += SurfaceType_GetSfx(&globalCtx->colCtx, this->actor.floorPoly, this->actor.floorBgId);
            func_80078914(&this->actor.projectedPos, sfxId);
        }
    }
}

void EnXc_SetColossusAppearSFX(EnXc* this, GlobalContext* globalCtx) {
    s32 pad;
    s16 sceneNum;

    static Vec3f D_80B42D90;
    static Vec3f D_80B41D78 = { -611.0f, 728.0f, -2.0f };
    static Vec3f D_80B41D84 = { -1069.0f, 38.0f, 0.0f };

    if (gSaveContext.sceneSetupIndex == 4) {
        sceneNum = globalCtx->sceneNum;
        if (sceneNum == SCENE_SPOT11) {
            CutsceneContext* csCtx = &globalCtx->csCtx;
            u16 frameCount = csCtx->frames;
            f32* wDest;

            if (frameCount == 119) {
                Vec3f pos = D_80B41D78;

                SkinMatrix_Vec3fMtxFMultXYZW(&globalCtx->mf_11D60, &pos, &D_80B42D90, &wDest);
                func_80078914(&D_80B42D90, NA_SE_EV_JUMP_CONC);
            } else if (frameCount == 164) {
                Vec3f pos = D_80B41D84;
                s32 pad;

                SkinMatrix_Vec3fMtxFMultXYZW(&globalCtx->mf_11D60, &pos, &D_80B42D90, &wDest);
                func_80078914(&D_80B42D90, NA_SE_PL_WALK_CONCRETE);
            }
        }
    }
}

Vec3f D_80B42DA0;

Vec3f D_80B42DB0;

void func_80B3D118(GlobalContext* globalCtx) {
    s16 sceneNum;

    if ((gSaveContext.sceneSetupIndex != 4) || (sceneNum = globalCtx->sceneNum, sceneNum != SCENE_SPOT11)) {
        func_800788CC(NA_SE_PL_SKIP);
    }
}

void EnXc_SetWindSFX(GlobalContext* globalCtx) {
    if (gSaveContext.sceneSetupIndex == 4) {
        s32 pad;
        s16 sceneNum = globalCtx->sceneNum;
        static s32 D_80B41D90 = 0;
        static Vec3f D_80B41D94 = { 0.0f, 0.0f, 0.0f };
        static f32 D_80B41DA0 = 0.0f;

        if (sceneNum == SCENE_SPOT11) {
            CutsceneContext* csCtx = &globalCtx->csCtx;
            u16 frameCount = csCtx->frames;

            if (frameCount >= 120) {
                if (frameCount < 164) {
                    s32 pad;
                    Vec3f* eye = &globalCtx->view.eye;

                    if (D_80B41D90 != 0) {
                        f32 xyzDist = Math3D_Vec3f_DistXYZ(&D_80B42DB0, eye) / 7.058922f;

                        D_80B41DA0 = CLAMP_MIN(D_80B41DA0, xyzDist);

                        osSyncPrintf("MAX speed = %f\n", D_80B41DA0);

                        xyzDist = CLAMP_MAX(xyzDist, 2.0f);

                        func_800F436C(&D_80B41D94, NA_SE_EV_FLYING_AIR - SFX_FLAG, 0.6f + (0.4f * xyzDist));
                    }
                    D_80B42DB0.x = eye->x;
                    D_80B42DB0.y = eye->y;
                    D_80B42DB0.z = eye->z;
                    D_80B41D90 = 1;
                }
            }
        }
    }
}

void EnXc_SpawnFlame(EnXc* this, GlobalContext* globalCtx) {
    static s32 sFlameSpawned = false;

    if (!sFlameSpawned) {
        CsCmdActorAction* npcAction = EnXc_GetCsCmd(globalCtx, 0);
        f32 xPos = npcAction->startPos.x;
        f32 yPos = npcAction->startPos.y;
        f32 zPos = npcAction->startPos.z;
        this->attached = Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_LIGHT, xPos, yPos, zPos, 0, 0, 0, 5);
        sFlameSpawned = true;
    }
}

void EnXc_SetupFlamePos(EnXc* this, GlobalContext* globalCtx) {
    Vec3f* attachedPos;
    CsCmdActorAction* npcAction = EnXc_GetCsCmd(globalCtx, 0);

    if (this->attached) {
        attachedPos = &this->attached->world.pos;
        if (!this) {}
        attachedPos->x = npcAction->startPos.x;
        attachedPos->y = npcAction->startPos.y;
        attachedPos->z = npcAction->startPos.z;
    }
}

void EnXc_DestroyFlame(EnXc* this) {
    if (this->attached) {
        Actor_Kill(this->attached);
        this->attached = NULL;
    }
    Actor_Kill(&this->actor);
}

void EnXc_InitFlame(EnXc* this, GlobalContext* globalCtx) {
    s32 pad;
    s16 sceneNum = globalCtx->sceneNum;
    static s32 D_80B41DA8 = 1;

    if (sceneNum == SCENE_SPOT17) {
        CsCmdActorAction* npcAction = EnXc_GetCsCmd(globalCtx, 0);
        if (npcAction) {
            s32 action = npcAction->action;
            if (D_80B41DA8 != action) {
                if (action != 1) {
                    EnXc_SpawnFlame(this, globalCtx);
                }

                if (action == 1) {
                    EnXc_DestroyFlame(this);
                }

                D_80B41DA8 = action;
            }

            EnXc_SetupFlamePos(this, globalCtx);
        }
    }
}

void func_80B3D48C(EnXc* this, GlobalContext* globalCtx) {
    CutsceneContext* csCtx = &globalCtx->csCtx;
    CsCmdActorAction* linkAction = csCtx->linkAction;
    s16 yaw;

    if (linkAction) {
        yaw = (u16)linkAction->rot.y + 0x8000;
    } else {
        Player* player = PLAYER;
        yaw = player->actor.world.rot.y + 0x8000;
    }

    this->actor.world.rot.y = yaw;
    this->actor.shape.rot.y = this->actor.world.rot.y;
}

AnimationHeader* EnXc_GetCurrentHarpAnim(GlobalContext* globalCtx, s32 index) {
    AnimationHeader* animation = &gShiekPlayingHarp5Anim;
    CsCmdActorAction* npcAction = EnXc_GetCsCmd(globalCtx, index);

    if (npcAction) {
        u16 action = npcAction->action;
        if (action == 11) {
            animation = &gShiekPlayingHarp3Anim;
        } else if (action == 12) {
            animation = &gShiekPlayingHarp2Anim;
        } else if (action == 13) {
            animation = &gShiekPlayingHarp4Anim;
        } else {
            animation = &gShiekPlayingHarp5Anim;
            if (action == 23) {
                animation = &gShiekPlayingHarpAnim;
            }
        }
    }
    return animation;
}

void func_80B3D56C(EnXc* this) {
    f32 timer = this->timer;
    f32* speedXZ = &this->actor.speedXZ;

    if (timer < 9.0f) {
        *speedXZ = 0.0f;
    } else {
        if (timer < 3.0f) {
            *speedXZ = (((kREG(2) * 0.01f) + 1.2f) / 3.0f) * (timer - 9.0f);
        } else {
            *speedXZ = (kREG(2) * 0.01f) + 1.2f;
        }
    }
    Actor_MoveForward(&this->actor);
}

void func_80B3D644(EnXc* this) {
    Actor_MoveForward(&this->actor);
}

void func_80B3D664(EnXc* this) {
    f32 timer = this->timer;
    f32* speedXZ = &this->actor.speedXZ;

    if (timer < 3.0f) {
        *speedXZ = (((kREG(2) * 0.01f) + 1.2f) / 3.0f) * (3.0f - timer);
    } else {
        *speedXZ = 0.0f;
    }
    Actor_MoveForward(&this->actor);
}

void func_80B3D6F0(EnXc* this) {
    func_80B3D56C(this);
}

void func_80B3D710(EnXc* this) {
    Actor_MoveForward(&this->actor);
}

void func_80B3D730(EnXc* this) {
    func_80B3D664(this);
}

void func_80B3D750(EnXc* this, GlobalContext* globalCtx) {
    if (EnXc_InitMinuetCutscene(this, globalCtx) && EnXc_InitBoleroCutscene(this, globalCtx)) {
        this->action = 1;
    }
}

void EnXc_SetupFallFromSkyAction(EnXc* this, GlobalContext* globalCtx) {
    s32 pad;
    CutsceneContext* csCtx = &globalCtx->csCtx;
    CsCmdActorAction* npcAction;

    if (csCtx->state && (npcAction = csCtx->npcActions[4], npcAction && npcAction->action == 2)) {
        s32 pad;
        Vec3f* pos = &this->actor.world.pos;
        SkelAnime* skelAnime = &this->skelAnime;
        f32 frameCount = Animation_GetLastFrame(&gShiekFallingFromSkyAnim);

        this->action = XC_ACTION_GRACEFUL_FALL;
        this->drawMode = XC_DRAW_1;

        pos->x = npcAction->startPos.x;
        pos->y = npcAction->startPos.y;
        pos->z = npcAction->startPos.z;

        func_80B3D48C(this, globalCtx);
        func_80B3C964(this, globalCtx);
        Animation_Change(skelAnime, &gShiekFallingFromSkyAnim, 1.0f, 0.0f, frameCount, ANIMMODE_ONCE, 0.0f);
        func_80B3D118(globalCtx);
    }
}

void func_80B3D8A4(EnXc* this, GlobalContext* globalCtx, s32 animFinished) {
    if (animFinished) {
        SkelAnime* skelAnime = &this->skelAnime;
        f32 frameCount = Animation_GetLastFrame(&gShiekWalkingAnim);

        Animation_Change(skelAnime, &gShiekWalkingAnim, 1.0f, 0.0f, frameCount, ANIMMODE_LOOP, -8.0f);

        this->action = 3;
        this->timer = 0.0f;

        func_80B3C9DC(this);
        this->actor.gravity = -((kREG(1) * 0.01f) + 13.0f);
        this->actor.minVelocityY = -((kREG(1) * 0.01f) + 13.0f);
    } else {
        func_80B3C8CC(this, globalCtx);
    }
}

void func_80B3D990(EnXc* this) {
    f32* timer = &this->timer;

    *timer += 1.0f;
    if (*timer >= 12.0f) {
        this->actor.speedXZ = (kREG(2) * 0.01f) + 1.2f;
        this->action = 4;
    }
}

void EnXc_SetupHalt(EnXc* this) {
    SkelAnime* skelAnime = &this->skelAnime;
    f32 xzDistToPlayer = this->actor.xzDistToPlayer;

    if (xzDistToPlayer <= (kREG(3) + 95.0f)) {
        f32 frameCount = Animation_GetLastFrame(&gShiekIdleAnim);

        Animation_Change(skelAnime, &gShiekIdleAnim, 1.0f, 0.0f, frameCount, ANIMMODE_LOOP, -12.0f);
        this->action = XC_ACTION_HALT;
        this->timer = 0.0f;
    }
}

void func_80B3DAA8(EnXc* this) {
    f32* timer = &this->timer;

    *timer += 1.0f;
    if (*timer >= 12.0f) {
        this->action = 6;
        this->actor.speedXZ = 0.0f;
    }
}

void func_80B3DAF0(EnXc* this, GlobalContext* globalCtx) {
    CsCmdActorAction* npcAction = EnXc_GetCsCmd(globalCtx, 4);
    u16 action;
    SkelAnime* skelAnime;
    f32 frameCount;

    if (npcAction &&
        (action = npcAction->action, action == 3 || action == 11 || action == 12 || action == 13 || action == 23)) {
        skelAnime = &this->skelAnime;
        frameCount = Animation_GetLastFrame(&gShiekPullingOutHarpAnim);
        Animation_Change(&this->skelAnime, &gShiekPullingOutHarpAnim, 1.0f, 0.0f, frameCount, ANIMMODE_ONCE, -4.0f);
        this->action = 7;
        this->drawMode = XC_DRAW_2;
    }
}

void func_80B3DBAC(EnXc* this, s32 animFinished) {
    SkelAnime* skelAnime;
    f32 frameCount;

    if (animFinished) {
        skelAnime = &this->skelAnime;
        frameCount = Animation_GetLastFrame(&gShiekInitialHarpAnim);
        Animation_Change(skelAnime, &gShiekInitialHarpAnim, 1.0f, 0.0f, frameCount, ANIMMODE_ONCE, 0.0f);
        this->action = 8;
        this->drawMode = XC_DRAW_HARP;
    }
}

void func_80B3DC24(EnXc* this, GlobalContext* globalCtx, s32 animFinished) {
    s32 pad;
    SkelAnime* skelAnime;
    AnimationHeader* animation;
    f32 frameCount;

    if (animFinished) {
        skelAnime = &this->skelAnime;
        animation = EnXc_GetCurrentHarpAnim(globalCtx, 4);
        frameCount = Animation_GetLastFrame(animation);
        Animation_Change(skelAnime, animation, 1.0f, 0.0f, frameCount, ANIMMODE_LOOP, -8.0f);
        this->action = 9;
        this->drawMode = XC_DRAW_HARP;
    }
}

void func_80B3DCA8(EnXc* this, GlobalContext* globalCtx) {
    f32 frameCount;
    CsCmdActorAction* npcAction;

    if (globalCtx->csCtx.state != 0 &&
        (npcAction = globalCtx->csCtx.npcActions[4], npcAction && npcAction->action == 8)) {
        frameCount = Animation_GetLastFrame(&gShiekInitialHarpAnim);
        Animation_Change(&this->skelAnime, &gShiekInitialHarpAnim, 0.0f, frameCount, frameCount, ANIMMODE_LOOP, -8.0f);
        this->action = 10;
    }
}

void func_80B3DD3C(EnXc* this, GlobalContext* globalCtx) {
    f32 curFrame;
    f32 animFrameCount;

    if (EnXc_ActionEqualsCsCmdAction(this, globalCtx, 5, 4)) {
        curFrame = this->skelAnime.curFrame;
        animFrameCount = this->skelAnime.endFrame;
        if (curFrame >= animFrameCount) {
            Animation_Change(&this->skelAnime, &gShiekInitialHarpAnim, -1.0f, Animation_GetLastFrame(&gShiekInitialHarpAnim), 0.0f,
                             ANIMMODE_ONCE, 0.0f);
            this->action = 11;
        }
    } else if (EnXc_ActionDoesNotEqualCsCmdAction(this, globalCtx, 8, 4)) {
        func_80B3DC24(this, globalCtx, 1);
    }
}

void func_80B3DE00(EnXc* this, s32 animFinished) {
    if (animFinished) {
        Animation_Change(&this->skelAnime, &gShiekPullingOutHarpAnim, -1.0f, Animation_GetLastFrame(&gShiekPullingOutHarpAnim), 0.0f, 2, 0.0f);
        this->action = 12;
        this->drawMode = XC_DRAW_2;
    }
}

void func_80B3DE78(EnXc* this, s32 animFinished) {
    if (animFinished) {
        Animation_Change(&this->skelAnime, &gShiekIdleAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gShiekIdleAnim), 0, 0.0f);
        this->action = 13;
        this->drawMode = XC_DRAW_1;
        this->timer = 0.0f;
    }
}

void func_80B3DEF4(EnXc* this, GlobalContext* globalCtx) {
    CsCmdActorAction* npcAction;

    if (globalCtx->csCtx.state != 0 &&
        (npcAction = globalCtx->csCtx.npcActions[4], npcAction && npcAction->action == 4)) {
        Animation_Change(&this->skelAnime, &gShiekWalkingAnim, -1.0f, Animation_GetLastFrame(&gShiekWalkingAnim), 0.0f,
                         ANIMMODE_LOOP, -12.0f);
        this->action = 14;
        this->actor.world.rot.y += 0x8000;
        this->timer = 0.0f;
    }
}

void func_80B3DFA4(EnXc* this) {
    this->timer++;
    if (this->timer >= 12.0f) {
        this->actor.speedXZ = (kREG(2) * 0.01f) + 1.2f;
        this->action = 15;
    }
}

void func_80B3E014(EnXc* this) {
    f32 xzDistToPlayer = this->actor.xzDistToPlayer;

    if (xzDistToPlayer >= kREG(5) + 140.0f) {
        Animation_Change(&this->skelAnime, &gShiekIdleAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gShiekIdleAnim),
                         ANIMMODE_LOOP, -12.0f);
        this->action = 16;
        this->timer = 0.0f;
    }
}

void EnXc_SetupNutThrow(EnXc* this) {
    this->timer++;
    if (this->timer >= 12.0f) {
        Animation_Change(&this->skelAnime, &gShiekThrowingNutAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gShiekThrowingNutAnim),
                         ANIMMODE_ONCE, 0.0f);
        this->action = XC_ACTION_THROW_NUT;
        this->timer = 0.0f;
        this->actor.speedXZ = 0.0f;
    }
}

void func_80B3E164(EnXc* this, GlobalContext* globalCtx) {
    this->timer++;
    if (this->timer >= 30.0f) {
        this->action = 18;
        EnXc_SpawnArrow(this, globalCtx);
    }
}

void func_80B3E1B8(EnXc* this, GlobalContext* globalCtx) {
    CsCmdActorAction* npcAction;
    s16 sceneNum;

    if (globalCtx->csCtx.state != 0 &&
        (npcAction = globalCtx->csCtx.npcActions[4], npcAction && npcAction->action == 9)) {
        sceneNum = globalCtx->sceneNum;

        if (sceneNum == SCENE_SPOT17) {
            this->action = 19;
            this->drawMode = XC_DRAW_NOTHING;
            this->actor.shape.shadowAlpha = 0;
        } else {
            Actor_Kill(&this->actor);
        }
    }
}

void EnXc_ActionFunc0(EnXc* this, GlobalContext* globalCtx) {
    EnXc_SetColossusAppearSFX(this, globalCtx);
    EnXc_SetWindSFX(globalCtx);
    func_80B3D750(this, globalCtx);
}

void EnXc_ActionFunc1(EnXc* this, GlobalContext* globalCtx) {
    EnXc_SetColossusAppearSFX(this, globalCtx);
    EnXc_SetWindSFX(globalCtx);
    EnXc_SetupFallFromSkyAction(this, globalCtx);
}

void EnXc_ActionFunc2(EnXc* this, GlobalContext* globalCtx) {
    s32 animFinished = EnXc_AnimIsFinished(this);

    EnXc_BgCheck(this, globalCtx);
    EnXc_SetEyePattern(this);
    EnXc_SetLandingSFX(this, globalCtx);
    EnXc_SetColossusAppearSFX(this, globalCtx);
    EnXc_SetWindSFX(globalCtx);
    func_80B3D8A4(this, globalCtx, animFinished);
}

void EnXc_ActionFunc3(EnXc* this, GlobalContext* globalCtx) {
    func_80B3D56C(this);
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, globalCtx);
    EnXc_SetEyePattern(this);
    EnXc_SetWalkingSFX(this, globalCtx);
    func_80B3D990(this);
}

void EnXc_ActionFunc4(EnXc* this, GlobalContext* globalCtx) {
    func_80B3D644(this);
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, globalCtx);
    EnXc_SetEyePattern(this);
    EnXc_SetWalkingSFX(this, globalCtx);
    EnXc_SetupHalt(this);
}

void EnXc_ActionFunc5(EnXc* this, GlobalContext* globalCtx) {
    func_80B3D664(this);
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, globalCtx);
    EnXc_SetEyePattern(this);
    EnXc_SetWalkingSFX(this, globalCtx);
    func_80B3DAA8(this);
}

void EnXc_ActionFunc6(EnXc* this, GlobalContext* globalCtx) {
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B3DAF0(this, globalCtx);
}

void EnXc_ActionFunc7(EnXc* this, GlobalContext* globalCtx) {
    s32 animFinished = EnXc_AnimIsFinished(this);

    EnXc_BgCheck(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B3DBAC(this, animFinished);
}

void EnXc_ActionFunc8(EnXc* this, GlobalContext* globalCtx) {
    s32 animFinished = EnXc_AnimIsFinished(this);

    EnXc_BgCheck(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B3DC24(this, globalCtx, animFinished);
}

void EnXc_ActionFunc9(EnXc* this, GlobalContext* globalCtx) {
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B3DCA8(this, globalCtx);
}

void EnXc_ActionFunc10(EnXc* this, GlobalContext* globalCtx) {
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B3DD3C(this, globalCtx);
}

void EnXc_ActionFunc11(EnXc* this, GlobalContext* globalCtx) {
    s32 animFinished = EnXc_AnimIsFinished(this);

    EnXc_BgCheck(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B3DE00(this, animFinished);
}

void EnXc_ActionFunc12(EnXc* this, GlobalContext* globalCtx) {
    s32 animFinished = EnXc_AnimIsFinished(this);

    EnXc_BgCheck(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B3DE78(this, animFinished);
}

void EnXc_ActionFunc13(EnXc* this, GlobalContext* globalCtx) {
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, globalCtx);
    EnXc_SetEyePattern(this);
    EnXc_InitFlame(this, globalCtx);
    func_80B3DEF4(this, globalCtx);
}

void EnXc_ActionFunc14(EnXc* this, GlobalContext* globalCtx) {
    func_80B3D6F0(this);
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, globalCtx);
    EnXc_SetEyePattern(this);
    EnXc_SetWalkingSFX(this, globalCtx);
    EnXc_InitFlame(this, globalCtx);
    func_80B3DFA4(this);
}

void EnXc_ActionFunc15(EnXc* this, GlobalContext* globalCtx) {
    func_80B3D710(this);
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, globalCtx);
    EnXc_SetEyePattern(this);
    EnXc_SetWalkingSFX(this, globalCtx);
    EnXc_InitFlame(this, globalCtx);
    func_80B3E014(this);
}

void EnXc_ActionFunc16(EnXc* this, GlobalContext* globalCtx) {
    func_80B3D730(this);
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, globalCtx);
    EnXc_SetEyePattern(this);
    EnXc_SetWalkingSFX(this, globalCtx);
    EnXc_InitFlame(this, globalCtx);
    EnXc_SetupNutThrow(this);
}

void EnXc_ThrowNutAction(EnXc* this, GlobalContext* globalCtx) {
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, globalCtx);
    EnXc_SetEyePattern(this);
    EnXc_SetNutThrowSFX(this, globalCtx);
    EnXc_InitFlame(this, globalCtx);
    func_80B3E164(this, globalCtx);
}

void EnXc_ActionFunc18(EnXc* this, GlobalContext* globalCtx) {
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, globalCtx);
    EnXc_SetEyePattern(this);
    EnXc_InitFlame(this, globalCtx);
    func_80B3E1B8(this, globalCtx);
}

void EnXc_ActionFunc19(EnXc* this, GlobalContext* globalCtx) {
    EnXc_InitFlame(this, globalCtx);
}

void func_80B3E87C(Gfx** dList, EnXc* this) {
    f32 currentFrame = this->skelAnime.curFrame;

    if (currentFrame >= 34.0f) {
        *dList = gShiekHarpDL;
    }
}
s32 func_80B3E8AC(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnXc* this = THIS;

    if (limbIndex == 12) {
        func_80B3E87C(dList, this);
    }

    return 0;
}

s32 func_80B3E8E4(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnXc* this = THIS;

    if (limbIndex == 12) {
        *dList = gShiekHarpDL;
    }

    return 0;
}

void func_80B3E908(Actor* thisx, GlobalContext* globalCtx) {
    EnXc* this = THIS;
    s32 pad;
    s16 eyePattern = this->eyeIdx;
    u64* eyeTexture = sEyeTextures[eyePattern];
    SkelAnime* skelAnime = &this->skelAnime;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    s32 pad2;

    OPEN_DISPS(gfxCtx, "../z_en_oA2_inSpot05.c", 1444);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(eyeTexture));
    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(eyeTexture));
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 20, 0);
    gDPSetEnvColor(POLY_OPA_DISP++, 60, 0, 0, 0);

    func_80093D18(gfxCtx);
    func_8002EBCC(&this->actor, globalCtx, 0);
    SkelAnime_DrawFlexOpa(globalCtx, skelAnime->skeleton, skelAnime->jointTable, skelAnime->dListCount, func_80B3E8AC,
                          NULL, thisx);
    CLOSE_DISPS(gfxCtx, "../z_en_oA2_inSpot05.c", 1497);
}

void EnXc_DrawHarp(Actor* thisx, GlobalContext* globalCtx) {
    EnXc* this = THIS;
    s32 pad;
    s16 eyePattern = this->eyeIdx;
    u64* eyeTexture = sEyeTextures[eyePattern];
    SkelAnime* skelAnime = &this->skelAnime;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    s32 pad2;

    OPEN_DISPS(gfxCtx, "../z_en_oA2_inSpot05.c", 1511);

    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(eyeTexture));
    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(eyeTexture));
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 20, 0);
    gDPSetEnvColor(POLY_OPA_DISP++, 60, 0, 0, 0);

    func_80093D18(gfxCtx);
    func_8002EBCC(&this->actor, globalCtx, 0);
    SkelAnime_DrawFlexOpa(globalCtx, skelAnime->skeleton, skelAnime->jointTable, skelAnime->dListCount, func_80B3E8E4,
                          NULL, thisx);
    CLOSE_DISPS(gfxCtx, "../z_en_oA2_inSpot05.c", 1564);
}

void func_80B3EBF0(EnXc* this, GlobalContext* globalCtx) {
    this->action = 20;
}

void func_80B3EC00(EnXc* this) {
    this->action = 21;
}

void func_80B3EC0C(EnXc* this, GlobalContext* globalCtx) {
    CutsceneContext* csCtx = &globalCtx->csCtx;
    CsCmdActorAction* npcAction;

    if (csCtx->state && (npcAction = csCtx->npcActions[4], npcAction != NULL && npcAction->action != 1)) {
        PosRot* posRot = &this->actor.world;
        Vec3i* startPos = &npcAction->startPos;
        ActorShape* shape = &this->actor.shape;

        posRot->pos.x = startPos->x;
        posRot->pos.y = startPos->y;
        posRot->pos.z = startPos->z;

        posRot->rot.y = shape->rot.y = npcAction->rot.y;

        this->action = 22;
        this->drawMode = XC_DRAW_1;
    }
}

void func_80B3EC90(EnXc* this, GlobalContext* globalCtx) {
    CutsceneContext* csCtx = &globalCtx->csCtx;
    CsCmdActorAction* npcAction;

    if (csCtx->state && (npcAction = csCtx->npcActions[4], npcAction != NULL && npcAction->action != 6)) {
        func_80B3C9EC(this);
    }
}

void func_80B3ECD8(EnXc* this) {
    this->timer++;
    if (this->timer >= 12.0f) {
        this->actor.speedXZ = kREG(2) * 0.01f + 1.2f;
        this->action = 24;
    }
}

void EnXc_ActionFunc20(EnXc* this, GlobalContext* globalCtx) {
    func_80B3EC00(this);
}

void EnXc_ActionFunc21(EnXc* this, GlobalContext* globalCtx) {
    func_80B3EC0C(this, globalCtx);
}

void EnXc_ActionFunc22(EnXc* this, GlobalContext* globalCtx) {
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B3EC90(this, globalCtx);
}

void EnXc_ActionFunc23(EnXc* this, GlobalContext* globalCtx) {
    func_80B3D6F0(this);
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, globalCtx);
    EnXc_SetEyePattern(this);
    EnXc_SetWalkingSFX(this, globalCtx);
    func_80B3ECD8(this);
}

void EnXc_ActionFunc24(EnXc* this, GlobalContext* globalCtx) {
}

void EnXc_ActionFunc25(EnXc* this, GlobalContext* globalCtx) {
}

void EnXc_ActionFunc26(EnXc* this, GlobalContext* globalCtx) {
}

void EnXc_ActionFunc27(EnXc* this, GlobalContext* globalCtx) {
}

void EnXc_ActionFunc28(EnXc* this, GlobalContext* globalCtx) {
}

void func_80B3EE64(EnXc* this, GlobalContext* globalCtx) {
    this->action = 29;
}

void func_80B3EE74(EnXc* this, GlobalContext* globalCtx) {
    if (EnXc_InitSerenadeCutscene(this, globalCtx)) {
        this->action = 30;
    }
}

void func_80B3EEA4(EnXc* this) {
    EnXc_CheckAndSetAction(this, 30, 31);
}

void func_80B3EEC8(EnXc* this) {
    EnXc_CheckAndSetAction(this, 31, 32);
}

void func_80B3EEEC(EnXc* this) {
    EnXc_CheckAndSetAction(this, 32, 33);
}

void func_80B3EF10(EnXc* this) {
    EnXc_CheckAndSetAction(this, 33, 34);
}

void func_80B3EF34(EnXc* this) {
    EnXc_CheckAndSetAction(this, 34, 35);
}

void func_80B3EF58(EnXc* this) {
    func_80B3C7D4(this, 35, 36, 34);
}

void func_80B3EF80(EnXc* this) {
    EnXc_CheckAndSetAction(this, 36, 37);
}

void func_80B3EFA4(EnXc* this) {
    EnXc_CheckAndSetAction(this, 37, 38);
}

void func_80B3EFC8(EnXc* this) {
    EnXc_CheckAndSetAction(this, 38, 39);
}

void func_80B3EFEC(EnXc* this) {
    EnXc_CheckAndSetAction(this, 39, 40);
}

void func_80B3F010(EnXc* this) {
    f32 xzDistToPlayer = this->actor.xzDistToPlayer;

    if (kREG(5) + 140.0f <= xzDistToPlayer) {
        Animation_Change(&this->skelAnime, &gShiekIdleAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gShiekIdleAnim), ANIMMODE_LOOP, -12.0f);
        this->action = 41;
        this->timer = 0.0f;
    }
}

void func_80B3F0B8(EnXc* this) {
    EnXc_CheckAndSetAction(this, 41, 42);
}

void func_80B3F0DC(EnXc* this) {
    EnXc_CheckAndSetAction(this, 42, 43);
}

void func_80B3F100(EnXc* this) {
    EnXc_CheckAndSetAction(this, 43, 44);
}

void EnXc_ActionFunc29(EnXc* this, GlobalContext* globalCtx) {
    func_80B3EE74(this, globalCtx);
}

void EnXc_ActionFunc30(EnXc* this, GlobalContext* globalCtx) {
    EnXc_ActionFunc21(this, globalCtx);
    func_80B3EEA4(this);
}

void EnXc_ActionFunc31(EnXc* this, GlobalContext* globalCtx) {
    EnXc_ActionFunc6(this, globalCtx);
    func_80B3C588(this, globalCtx, 4);
    func_80B3EEC8(this);
}

void EnXc_ActionFunc32(EnXc* this, GlobalContext* globalCtx) {
    EnXc_ActionFunc7(this, globalCtx);
    func_80B3EEEC(this);
}

void EnXc_ActionFunc33(EnXc* this, GlobalContext* globalCtx) {
    EnXc_ActionFunc8(this, globalCtx);
    func_80B3EF10(this);
}

void EnXc_ActionFunc34(EnXc* this, GlobalContext* globalCtx) {
    EnXc_ActionFunc9(this, globalCtx);
    func_80B3EF34(this);
}

void EnXc_ActionFunc35(EnXc* this, GlobalContext* globalCtx) {
    EnXc_ActionFunc10(this, globalCtx);
    func_80B3EF58(this);
}

void EnXc_ActionFunc36(EnXc* this, GlobalContext* globalCtx) {
    EnXc_ActionFunc11(this, globalCtx);
    func_80B3EF80(this);
}

void EnXc_ActionFunc37(EnXc* this, GlobalContext* globalCtx) {
    EnXc_ActionFunc12(this, globalCtx);
    func_80B3EFA4(this);
}

void EnXc_ActionFunc38(EnXc* this, GlobalContext* globalCtx) {
    EnXc_ActionFunc13(this, globalCtx);
    func_80B3EFC8(this);
}

void EnXc_ActionFunc39(EnXc* this, GlobalContext* globalCtx) {
    EnXc_ActionFunc14(this, globalCtx);
    func_80B3EFEC(this);
}

void EnXc_ActionFunc40(EnXc* this, GlobalContext* globalCtx) {
    func_80B3D710(this);
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, globalCtx);
    EnXc_SetEyePattern(this);
    EnXc_SetWalkingSFX(this, globalCtx);
    func_80B3F010(this);
}

void EnXc_ActionFunc41(EnXc* this, GlobalContext* globalCtx) {
    EnXc_ActionFunc16(this, globalCtx);
    func_80B3F0B8(this);
}

void EnXc_ActionFunc42(EnXc* this, GlobalContext* globalCtx) {
    EnXc_ThrowNutAction(this, globalCtx);
    func_80B3F0DC(this);
}

void EnXc_ActionFunc43(EnXc* this, GlobalContext* globalCtx) {
    EnXc_ActionFunc18(this, globalCtx);
    func_80B3F100(this);
}

void EnXc_ActionFunc44(EnXc* this, GlobalContext* globalCtx) {
}

void func_80B3F3C8(EnXc* this, GlobalContext* globalCtx) {
    this->action = 45;
}

void func_80B3F3D8() {
    func_800788CC(NA_SE_PL_SKIP);
}

void EnXc_PlayDiveSFX(Vec3f* src, GlobalContext* globalCtx) {
    f32 wDest[2];

    SkinMatrix_Vec3fMtxFMultXYZW(&globalCtx->mf_11D60, src, &D_80B42DA0, wDest);
    func_80078914(&D_80B42DA0, NA_SE_EV_DIVE_INTO_WATER);
}

void EnXc_LakeHyliaDive(GlobalContext* globalCtx) {
    CsCmdActorAction* npcAction = npcAction = EnXc_GetCsCmd(globalCtx, 0);

    if (npcAction) {
        Vec3f startPos;

        startPos.x = npcAction->startPos.x;
        startPos.y = npcAction->startPos.y;
        startPos.z = npcAction->startPos.z;

        EffectSsGRipple_Spawn(globalCtx, &startPos, 100, 500, 0);
        EffectSsGRipple_Spawn(globalCtx, &startPos, 100, 500, 10);
        EffectSsGRipple_Spawn(globalCtx, &startPos, 100, 500, 20);
        EffectSsGSplash_Spawn(globalCtx, &startPos, NULL, NULL, 1, 0);
        EnXc_PlayDiveSFX(&startPos, globalCtx);
    }
}

void func_80B3F534(GlobalContext* globalCtx) {
    CutsceneContext* csCtx = &globalCtx->csCtx;
    u16 frameCount = csCtx->frames;

    if (frameCount == 310) {
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_DOOR_WARP1, -1044.0f, -1243.0f, 7458.0f, 0, 0, 0, 6);
    }
}

void func_80B3F59C(EnXc* this, GlobalContext* globalCtx) {
    CsCmdActorAction* npcAction = EnXc_GetCsCmd(globalCtx, 0);
    static s32 D_80B41DAC = 1;

    if (npcAction) {
        s32 action = npcAction->action;

        if (action != D_80B41DAC) {
            switch (action) {
                case 2:
                    func_80B3F3D8();
                    break;
                case 3:
                    EnXc_LakeHyliaDive(globalCtx);
                    break;
                default:
                    break;
            }
            D_80B41DAC = action;
        }
    }
}

Vec3f D_80B41DB0 = { 0.0f, 0.0f, 0.0f };

Vec3f D_80B41DBC = { 0.0f, 0.0f, 0.0f };

static EnXcActionFunc sActionFuncs[] = {
    EnXc_ActionFunc0, EnXc_ActionFunc1, EnXc_ActionFunc2, EnXc_ActionFunc3, EnXc_ActionFunc4, EnXc_ActionFunc5, EnXc_ActionFunc6,
    EnXc_ActionFunc7, EnXc_ActionFunc8, EnXc_ActionFunc9, EnXc_ActionFunc10, EnXc_ActionFunc11, EnXc_ActionFunc12, EnXc_ActionFunc13,
    EnXc_ActionFunc14, EnXc_ActionFunc15, EnXc_ActionFunc16, EnXc_ThrowNutAction, EnXc_ActionFunc18, EnXc_ActionFunc19, EnXc_ActionFunc20,
    EnXc_ActionFunc21, EnXc_ActionFunc22, EnXc_ActionFunc23, EnXc_ActionFunc24, EnXc_ActionFunc25, EnXc_ActionFunc26, EnXc_ActionFunc27,
    EnXc_ActionFunc28, EnXc_ActionFunc29, EnXc_ActionFunc30, EnXc_ActionFunc31, EnXc_ActionFunc32, EnXc_ActionFunc33, EnXc_ActionFunc34,
    EnXc_ActionFunc35, EnXc_ActionFunc36, EnXc_ActionFunc37, EnXc_ActionFunc38, EnXc_ActionFunc39, EnXc_ActionFunc40, EnXc_ActionFunc41,
    EnXc_ActionFunc42, EnXc_ActionFunc43, EnXc_ActionFunc44, EnXc_ActionFunc45, EnXc_ActionFunc46, EnXc_ActionFunc47, EnXc_ActionFunc48,
    EnXc_ActionFunc49, EnXc_Kneel, EnXc_ActionFunc51, EnXc_ActionFunc52, EnXc_ActionFunc53, EnXc_ActionFunc54, EnXc_ShowTriforce,
    EnXc_ShowTriforceIdle, EnXc_ActionFunc57, EnXc_ActionFunc58, EnXc_ActionFunc59, EnXc_ActionFunc60, EnXc_ActionFunc61, EnXc_ActionFunc62,
    EnXc_ActionFunc63, EnXc_ActionFunc64, EnXc_ActionFunc65, EnXc_ActionFunc66, EnXc_ActionFunc67, EnXc_ActionFunc68, EnXc_ActionFunc69,
    EnXc_ActionFunc70, EnXc_ActionFunc71, EnXc_ActionFunc72, EnXc_ActionFunc73, EnXc_ActionFunc74, EnXc_ActionFunc75, EnXc_ActionFunc76,
    EnXc_ActionFunc77, EnXc_ActionFunc78, EnXc_ActionFunc79, EnXc_ActionFunc80,
};

Vec3f D_80B41F0C = { 0.0f, 10.0f, 0.0f };

static EnXcDrawFunc sDrawFuncs[] = {
    EnXc_DrawNothing, func_80B41BA4, func_80B3E908, EnXc_DrawHarp, EnXc_DrawTriforce, func_80B414AC,
};

const ActorInit En_Xc_InitVars = {
    ACTOR_EN_XC,
    ACTORCAT_NPC,
    FLAGS,
    OBJECT_XC,
    sizeof(EnXc),
    (ActorFunc)EnXc_Init,
    (ActorFunc)EnXc_Destroy,
    (ActorFunc)EnXc_Update,
    (ActorFunc)EnXc_Draw,
};

void func_80B3F620(EnXc* this) {
    EnXc_CheckAndSetAction(this, 45, 46);
}

void func_80B3F644(EnXc* this) {
    EnXc_CheckAndSetAction(this, 46, 47);
}

void func_80B3F668(EnXc* this, GlobalContext* globalCtx) {
    if (EnXc_ActionEqualsCsCmdAction(this, globalCtx, 4, 4)) {
        EnXc_ChangeAnimation(this, &gShiekWalkingAnim, ANIMMODE_LOOP, -12.0f, true);
        this->action = 48;
        this->actor.world.rot.y += 0x8000;
        this->timer = 0.0f;
    }
}

void func_80B3F6DC(EnXc* this) {
    EnXc_CheckAndSetAction(this, 48, 49);
}

void EnXc_SetupKneelAction(EnXc* this, GlobalContext* globalCtx) {
    if (EnXc_ActionEqualsCsCmdAction(this, globalCtx, 16, 4)) {
        EnXc_ChangeAnimation(this, &gShiekKneelingAnim, ANIMMODE_LOOP, 0.0f, false);
        this->action = XC_SHIEK_KNEEL;
    }
}

void func_80B3F754(EnXc* this, GlobalContext* globalCtx) {
    if (EnXc_ActionEqualsCsCmdAction(this, globalCtx, 22, 4)) {
        EnXc_ChangeAnimation(this, &gShiekAnim17, ANIMMODE_LOOP, 0.0f, false);
        this->action = 51;
        func_80B3C588(this, globalCtx, 4);
    }
}

void func_80B3F7BC(EnXc* this, GlobalContext* globalCtx) {
    if (EnXc_ActionEqualsCsCmdAction(this, globalCtx, 9, 4)) {
        this->action = 52;
        this->drawMode = XC_DRAW_NOTHING;
    }
}

void EnXc_ActionFunc45(EnXc* this, GlobalContext* globalCtx) {
    EnXc_ActionFunc20(this, globalCtx);
    func_80B3F620(this);
}

void EnXc_ActionFunc46(EnXc* this, GlobalContext* globalCtx) {
    EnXc_ActionFunc21(this, globalCtx);
    func_80B3F644(this);
}

void EnXc_ActionFunc47(EnXc* this, GlobalContext* globalCtx) {
    func_80B3F534(globalCtx);
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, globalCtx);
    func_80B3C588(this, globalCtx, 4);
    func_80B3F668(this, globalCtx);
}

void EnXc_ActionFunc48(EnXc* this, GlobalContext* globalCtx) {
    EnXc_ActionFunc23(this, globalCtx);
    func_80B3F6DC(this);
}

void EnXc_ActionFunc49(EnXc* this, GlobalContext* globalCtx) {
    func_80B3D710(this);
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, globalCtx);
    EnXc_SetEyePattern(this);
    EnXc_SetWalkingSFX(this, globalCtx);
    EnXc_SetupKneelAction(this, globalCtx);
}

void EnXc_Kneel(EnXc* this, GlobalContext* globalCtx) {
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, globalCtx);
    func_80B3F59C(this, globalCtx);
    func_80B3C588(this, globalCtx, 4);
    func_80B3F754(this, globalCtx);
}

void EnXc_ActionFunc51(EnXc* this, GlobalContext* globalCtx) {
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, globalCtx);
    func_80B3F59C(this, globalCtx);
    func_80B3C620(this, globalCtx, 4);
    func_80B3F7BC(this, globalCtx);
}

void EnXc_ActionFunc52(EnXc* this, GlobalContext* globalCtx) {
    func_80B3F59C(this, globalCtx);
}

void func_80B3FA08(EnXc* this, GlobalContext* globalCtx) {
    this->action = 53;
    this->unk_2A4 = kREG(24) + 0x53FC;
}

void func_80B3FA2C(void) {
    func_800F3F3C(1);
}

void EnXc_PlayTriforceSFX(Actor* thisx, GlobalContext* globalCtx) {
    EnXc* this = THIS;

    if (this->unk_2A8) {
        s32 pad;
        Vec3f src;
        Vec3f pos;
        Vec3f sp1C = D_80B41DB0;
        f32 wDest[1];

        Matrix_MultVec3f(&sp1C, &src);
        SkinMatrix_Vec3fMtxFMultXYZW(&globalCtx->mf_11D60, &src, &pos, wDest);
        Audio_PlaySoundAtPosition(globalCtx, &pos, 80, NA_SE_EV_TRIFORCE_MARK);
        this->unk_2A8 = 0;
    }
}

void func_80B3FAE0(EnXc* this) {
    if (Animation_OnFrame(&this->skelAnime, 38.0f)) {
        func_80078914(&this->actor.projectedPos, NA_SE_VO_SK_SHOUT);
        func_80B3FA2C();
    }
}

void EnXc_CalcTriforce(Actor* thisx, GlobalContext* globalCtx) {
    EnXc* this = THIS;

    if (EnXc_ActionEqualsCsCmdAction(this, globalCtx, 21, 4)) {
        this->unk_274 = 1;
        if (this->unk_2AC == 0) {
            this->unk_2AC = 1;
            this->unk_2A8 = 1;
        }
    } else if (EnXc_ActionEqualsCsCmdAction(this, globalCtx, 19, 4)) {
        this->unk_274 = 2;
    }
    if (this->unk_274 != 0) {
        f32* timer = &this->timer;
        s32* prim = this->triforcePrimColor;
        s32* env = this->triforceEnvColor;
        f32* scale = this->triforceScale;

        if (this->unk_274 == 1) {
            if (*timer < kREG(25) + 40.0f) {
                f32 d = *timer / (kREG(25) + 40.0f);
                prim[2] = -85.0f * d + 255;
                prim[3] = 255.0f * d;
                env[1] = 100.0f * d + 100;
                *timer += 1.0f;
            } else {
                prim[2] = 170;
                prim[3] = 255;
                env[1] = 200;
            }
            scale[0] = kREG(19) * 0.1f + 40.0f;
            scale[1] = kREG(20) * 0.1f + 40.0f;
            scale[2] = kREG(21) * 0.1f + 40.0f;
        } else if (this->unk_274 == 2) {
            f32 maxTime = (kREG(25) + 40.0f) + (kREG(27) + 90.0f);
            if (*timer < maxTime) {
                f32 d = (*timer - (kREG(25) + 40.0f)) / (kREG(27) + 90.0f);
                scale[0] = (kREG(19) * 0.1f + 40.0f) + d * ((kREG(26) + 50.0f) * (kREG(19) * 0.1f + 40.0f));
                scale[1] = (kREG(20) * 0.1f + 40.0f) + d * ((kREG(26) + 50.0f) * (kREG(20) * 0.1f + 40.0f));
                scale[2] = (kREG(21) * 0.1f + 40.0f) + d * ((kREG(26) + 50.0f) * (kREG(21) * 0.1f + 40.0f));
                *timer += 1.0f;
            } else {
                scale[0] = (kREG(19) * 0.1f + 40.0f) * (kREG(26) + 50.0f);
                scale[1] = (kREG(20) * 0.1f + 40.0f) * (kREG(26) + 50.0f);
                scale[2] = (kREG(21) * 0.1f + 40.0f) * (kREG(26) + 50.0f);
            }
            this->unk_2A4 += (s16)(kREG(28) + 0x2EE0);
        }
    }
}

void func_80B3FF0C(EnXc* this, GlobalContext* globalCtx) {
    if (EnXc_ActionDoesNotEqualCsCmdAction(this, globalCtx, 1, 4)) {
        CutsceneContext* csCtx = &globalCtx->csCtx;
        if (csCtx->state) {
            CsCmdActorAction* npcAction = globalCtx->csCtx.npcActions[4];
            if (npcAction) {
                PosRot* posRot = &this->actor.world;
                ActorShape* shape = &this->actor.shape;
                Vec3i* startPos = &npcAction->startPos;

                posRot->pos.x = startPos->x;
                posRot->pos.y = startPos->y;
                posRot->pos.z = startPos->z;

                posRot->rot.y = shape->rot.y = npcAction->rot.y;
            }
        }

        this->action = 54;
        this->drawMode = XC_DRAW_1;
    }
}

void EnXc_SetupShowTriforceAction(EnXc* this, GlobalContext* globalCtx) {
    if (EnXc_ActionEqualsCsCmdAction(this, globalCtx, 10, 4)) {
        Animation_Change(&this->skelAnime, &gShiekShowingTriforceOnHandAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gShiekShowingTriforceOnHandAnim), ANIMMODE_ONCE, -8.0f);
        this->action = XC_ACTION_SHOW_TRIFORCE;
        this->drawMode = XC_DRAW_TRIFORCE;
    }
}

void EnXc_SetupShowTriforceIdleAction(EnXc* this, s32 animFinished) {
    if (animFinished) {
        Animation_Change(&this->skelAnime, &gShiekShowingTriforceOnHandIdleAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gShiekShowingTriforceOnHandIdleAnim), ANIMMODE_LOOP, 0.0f);
        this->action = XC_ACTION_SHOW_TRIFORCE_IDLE;
    }
}
void func_80B400AC(EnXc* this, GlobalContext* globalCtx) {
    if (EnXc_ActionEqualsCsCmdAction(this, globalCtx, 9, 4)) {
        Actor_Kill(&this->actor);
    }
}

void EnXc_ActionFunc53(EnXc* this, GlobalContext* globalCtx) {
    func_80B3FF0C(this, globalCtx);
}

void EnXc_ActionFunc54(EnXc* this, GlobalContext* globalCtx) {
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, globalCtx);
    EnXc_SetEyePattern(this);
    EnXc_SetupShowTriforceAction(this, globalCtx);
    func_80B3C888(this, globalCtx);
}

void EnXc_ShowTriforce(EnXc* this, GlobalContext* globalCtx) {
    s32 animFinished = EnXc_AnimIsFinished(this);

    EnXc_BgCheck(this, globalCtx);
    EnXc_SetEyePattern(this);
    EnXc_CalcTriforce(&this->actor, globalCtx);
    func_80B3FAE0(this);
    EnXc_SetupShowTriforceIdleAction(this, animFinished);
    func_80B3C888(this, globalCtx);
}

void EnXc_ShowTriforceIdle(EnXc* this, GlobalContext* globalCtx) {
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, globalCtx);
    EnXc_SetEyePattern(this);
    EnXc_CalcTriforce(&this->actor, globalCtx);
    func_80B400AC(this, globalCtx);
}

s32 func_80B40224(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    if (limbIndex == 15) {
        *dList = gShiekDL_011620;
    }
    return 0;
}

void func_80B40248(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    s32 pad[2];
    EnXc* this = THIS;
    Vec3f vec;

    if (limbIndex == 15) {
        vec = D_80B41DBC;
        EnXc_PlayTriforceSFX(&this->actor, globalCtx);
        Matrix_MultVec3f(&vec, &this->vec_2B0);
        this->unk_2BC = 1;
    }
}

void EnXc_DrawTriforce(Actor* thisx, GlobalContext* globalCtx) {
    EnXc* this = THIS;
    s32 pad;
    s16 eyeIdx = this->eyeIdx;
    u64* eyeTexture = sEyeTextures[eyeIdx];
    SkelAnime* skelAnime = &this->skelAnime;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    s32 pad2;

    OPEN_DISPS(gfxCtx, "../z_en_oA2_inMetamol.c", 565);
    if (this->unk_2BC != 0) {
        Mtx* mtx = (Mtx*)Graph_Alloc(gfxCtx, sizeof(Mtx));
        s32* primColor = this->triforcePrimColor;
        s32* envColor = this->triforceEnvColor;
        f32* scale = this->triforceScale;

        Matrix_Push();
        Matrix_Translate(kREG(16) + 100.0f, kREG(17) + 4460.0f, kREG(18) + 1190.0f, MTXMODE_APPLY);
        Matrix_RotateRPY(kREG(22), kREG(23), this->unk_2A4, MTXMODE_APPLY);
        Matrix_Scale(scale[0], scale[1], scale[2], MTXMODE_APPLY);
        Matrix_ToMtx(mtx, "../z_en_oA2_inMetamol.c", 602);
        Matrix_Pop();
        func_80093D84(gfxCtx);
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0x80, 255, 255, primColor[2], primColor[3]);
        gDPSetEnvColor(POLY_XLU_DISP++, 255, envColor[1], 0, 128);
        gSPMatrix(POLY_XLU_DISP++, mtx, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, gShiekDL_012970);
    }

    func_8002EBCC(thisx, globalCtx, 0);
    func_80093D18(globalCtx->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(eyeTexture));
    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(eyeTexture));
    SkelAnime_DrawFlexOpa(globalCtx, skelAnime->skeleton, skelAnime->jointTable, skelAnime->dListCount, func_80B40224,
                          func_80B40248, &this->actor);
    CLOSE_DISPS(gfxCtx, "../z_en_oA2_inMetamol.c", 668);
}

void func_80B40590(EnXc* this, GlobalContext* globalCtx) {
    this->action = 57;
    this->drawMode = XC_DRAW_5;
}

void EnXc_SetThrownAroundSFX(EnXc* this) {
    SkelAnime* skelAnime = &this->skelAnime;

    if (Animation_OnFrame(skelAnime, 9.0f)) {
        func_80078914(&this->actor.projectedPos, NA_SE_PL_BOUND_GRASS);
        func_80078914(&this->actor.projectedPos, NA_SE_VO_SK_CRASH);
    } else if (Animation_OnFrame(skelAnime, 26.0f)) {
        func_80078914(&this->actor.projectedPos, NA_SE_PL_BOUND_GRASS);
    } else if (Animation_OnFrame(skelAnime, 28.0f)) {
        func_80078914(&this->actor.projectedPos, NA_SE_PL_WALK_GRASS);
    } else if (Animation_OnFrame(skelAnime, 34.0f)) {
        func_80078914(&this->actor.projectedPos, NA_SE_PL_WALK_GRASS);
    }
}

void func_80B4066C(EnXc* this, GlobalContext* globalCtx) {
    if (globalCtx->csCtx.frames == 1455) {
        func_800F3F3C(7);
    }
}

void EnXc_SetCrySFX(EnXc* this, GlobalContext* globalCtx) {
    CutsceneContext* csCtx = &globalCtx->csCtx;

    if (csCtx->frames == 869) {
        func_80078914(&this->actor.projectedPos, NA_SE_VO_SK_CRY_0);
    } else if (csCtx->frames == 939) {
        func_80078914(&this->actor.projectedPos, NA_SE_VO_SK_CRY_1);
    }
}

void func_80B406F8(Actor* thisx) {
    EnXc* this = THIS;

    this->action = 57;
    this->drawMode = XC_DRAW_NOTHING;
    this->actor.shape.shadowAlpha = 0;
}

void func_80B4070C(EnXc* this, GlobalContext* globalCtx) {
    s32 pad;
    ActorShape* actorShape = &this->actor.shape;
    SkelAnime* skelAnime = &this->skelAnime;
    f32 frameCount = Animation_GetLastFrame(&gShiekIdleAnim);

    func_80B3C9DC(this);
    func_80B3C588(this, globalCtx, 4);
    Animation_Change(skelAnime, &gShiekIdleAnim, 1.0f, 0.0f, frameCount, ANIMMODE_LOOP, 0.0f);
    this->action = 58;
    this->drawMode = XC_DRAW_5;
    actorShape->shadowAlpha = 255;
}

void func_80B407A8(Actor* thisx) {
    EnXc* this = THIS;
    SkelAnime* skelAnime = &this->skelAnime;
    f32 frameCount = Animation_GetLastFrame(&gShiekAnim13);

    Animation_Change(skelAnime, &gShiekAnim13, 1.0f, 0.0f, frameCount, ANIMMODE_ONCE, -8.0f);
    this->action = 59;
    this->drawMode = XC_DRAW_1;
}

void func_80B40820(EnXc* this, GlobalContext* globalCtx) {
    s32 pad;
    SkelAnime* skelAnime = &this->skelAnime;
    f32 frameCount = Animation_GetLastFrame(&gShiekIdleAnim);

    Animation_Change(skelAnime, &gShiekIdleAnim, 1.0f, 0.0f, frameCount, ANIMMODE_LOOP, 0.0f);
    func_80B3C588(this, globalCtx, 4);
    func_80B3C964(this, globalCtx);
    Animation_Change(skelAnime, &gShiekContortionsAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gShiekContortionsAnim), ANIMMODE_ONCE, 0.0f);
    this->action = 60;
    this->drawMode = XC_DRAW_1;
    this->actor.shape.shadowAlpha = 255;
}

void func_80B408FC(EnXc* this, GlobalContext* globalCtx) {
    s32 pad;
    SkelAnime* skelAnime = &this->skelAnime;
    f32 frameCount = Animation_GetLastFrame(&gShiekIdleAnim);

    Animation_Change(skelAnime, &gShiekIdleAnim, 1.0f, 0.0f, frameCount, ANIMMODE_LOOP, 0.0f);
    func_80B3C588(this, globalCtx, 4);
    func_80B3C964(this, globalCtx);
    Animation_Change(skelAnime, &gShiekFallingFromContortionsAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gShiekFallingFromContortionsAnim), ANIMMODE_ONCE, 0.0f);
    this->action = 61;
    this->drawMode = XC_DRAW_1;
    this->actor.shape.shadowAlpha = 255;
}

void func_80B409D8(EnXc* this, GlobalContext* globalCtx) {
    s32 pad[3];
    f32 frameCount = Animation_GetLastFrame(&gShiekHittingGroundAnim);

    func_80B3C9DC(this);
    func_80B3C588(this, globalCtx, 4);
    Animation_Change(&this->skelAnime, &gShiekHittingGroundAnim, 1.0f, 0.0f, frameCount, ANIMMODE_ONCE, 0.0f);
    this->action = 62;
    this->drawMode = XC_DRAW_1;
    this->actor.shape.shadowAlpha = 255;
}

void func_80B40A78(EnXc* this, GlobalContext* globalCtx) {
    s32 pad[3];
    f32 frameCount = Animation_GetLastFrame(&gShiekHittingGroundAnim);
    func_80B3C9DC(this);
    func_80B3C588(this, globalCtx, 4);
    Animation_Change(&this->skelAnime, &gShiekHittingGroundAnim, 1.0f, 0.0f, frameCount, ANIMMODE_ONCE, 0.0f);
    this->action = 63;
    this->drawMode = XC_DRAW_1;
    this->actor.shape.shadowAlpha = 255;
}

void func_80B40B18(EnXc* this, GlobalContext* globalCtx) {
    s32 pad[3];
    f32 frameCount = Animation_GetLastFrame(&gShiekKneelingAnim);
    func_80B3C9DC(this);
    func_80B3C588(this, globalCtx, 4);
    Animation_Change(&this->skelAnime, &gShiekKneelingAnim, 1.0f, 0.0f, frameCount, ANIMMODE_LOOP, 0.0f);
    this->action = 64;
    this->drawMode = XC_DRAW_1;
    this->actor.shape.shadowAlpha = 255;
}

void func_80B40BB4(EnXc* this, GlobalContext* globalCtx) {
    s32 pad[3];
    f32 frameCount = Animation_GetLastFrame(&gShiekIdleAnim);
    func_80B3C9DC(this);
    func_80B3C588(this, globalCtx, 4);
    Animation_Change(&this->skelAnime, &gShiekIdleAnim, 1.0f, 0.0f, frameCount, ANIMMODE_LOOP, 0.0f);
    this->action = 65;
    this->drawMode = XC_DRAW_1;
    this->actor.shape.shadowAlpha = 255;
}

void func_80B40C50(EnXc* this) {
    EnXc_CheckAndSetAction(this, 65, 66);
}

void func_80B40C74(EnXc* this) {
    EnXc_CheckAndSetAction(this, 66, 67);
}

void func_80B40C98(EnXc* this) {
    EnXc_CheckAndSetAction(this, 67, 68);
}

void func_80B40CBC(EnXc* this) {
    EnXc_CheckAndSetAction(this, 68, 69);
}

void func_80B40CE0(EnXc* this) {
    func_80B3C7D4(this, 69, 70, 68);
}

void func_80B40D08(EnXc* this) {
    EnXc_CheckAndSetAction(this, 70, 71);
}

void func_80B40D2C(EnXc* this) {
    EnXc_CheckAndSetAction(this, 71, 72);
}

void func_80B40D50(EnXc* this) {
    EnXc_CheckAndSetAction(this, 72, 73);
}

void func_80B40D74(EnXc* this) {
    EnXc_CheckAndSetAction(this, 73, 74);
}

void func_80B40D98(EnXc* this) {
    f32 xzDistToPlayer = this->actor.xzDistToPlayer;

    if (kREG(5) + 140.0f <= xzDistToPlayer) {
        Animation_Change(&this->skelAnime, &gShiekIdleAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gShiekIdleAnim), ANIMMODE_LOOP, -12.0f);
        this->action = 75;
        this->timer = 0.0f;
    }
}

void func_80B40E40(EnXc* this) {
    EnXc_CheckAndSetAction(this, 75, 76);
}

void func_80B40E64(EnXc* this) {
    EnXc_CheckAndSetAction(this, 76, 77);
}

void func_80B40E88(EnXc* this) {
    EnXc_CheckAndSetAction(this, 77, 78);
}

s32 func_80B40EAC(Actor* thisx, GlobalContext* globalCtx) {
    CsCmdActorAction* npcAction = EnXc_GetCsCmd(globalCtx, 4);

    if (npcAction != NULL) {
        s32 action = npcAction->action;
        EnXc* this = THIS;
        s32 prevAction = this->unk_26C;

        if (action != prevAction) {
            switch (action) {
                case 1:
                    func_80B406F8(thisx);
                    break;
                case 6:
                    func_80B4070C(this, globalCtx);
                    break;
                case 20:
                    func_80B407A8(thisx);
                    break;
                case 18:
                    func_80B40820(this, globalCtx);
                    break;
                case 14:
                    func_80B408FC(this, globalCtx);
                    break;
                case 19:
                    func_80B409D8(this, globalCtx);
                    break;
                case 15:
                    func_80B40A78(this, globalCtx);
                    break;
                case 16:
                    func_80B40B18(this, globalCtx);
                    break;
                case 17:
                    func_80B40BB4(this, globalCtx);
                    break;
                case 9:
                    Actor_Kill(thisx);
                    break;
                default:
                    osSyncPrintf("En_Oa2_Stalker_Check_DemoMode:そんな動作は無い!!!!!!!!\n");
                    break;
            }

            this->unk_26C = action;
            return 1;
        }
    }
    return 0;
}

void EnXc_ActionFunc57(EnXc* this, GlobalContext* globalCtx) {
    func_80B40EAC(&this->actor, globalCtx);
}

void EnXc_ActionFunc58(EnXc* this, GlobalContext* globalCtx) {
    func_80B3C588(this, globalCtx, 4);
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, globalCtx);
    func_80B40EAC(&this->actor, globalCtx);
}

void EnXc_ActionFunc59(EnXc* this, GlobalContext* globalCtx) {
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B40EAC(&this->actor, globalCtx);
}

void EnXc_ActionFunc60(EnXc* this, GlobalContext* globalCtx) {
    EnXc_SetCrySFX(this, globalCtx);
    EnXc_AnimIsFinished(this);
    EnXc_SetEyePattern(this);
    if (!func_80B40EAC(&this->actor, globalCtx)) {
        func_80B3C924(this, globalCtx);
        EnXc_BgCheck(this, globalCtx);
    }
}

void EnXc_ActionFunc61(EnXc* this, GlobalContext* globalCtx) {
    EnXc_AnimIsFinished(this);
    EnXc_SetEyePattern(this);
    EnXc_SetThrownAroundSFX(this);
    if (!func_80B40EAC(&this->actor, globalCtx)) {
        func_80B3C8CC(this, globalCtx);
        EnXc_BgCheck(this, globalCtx);
    }
}

void EnXc_ActionFunc62(EnXc* this, GlobalContext* globalCtx) {
    EnXc_BgCheck(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B40EAC(&this->actor, globalCtx);
}

void EnXc_ActionFunc63(EnXc* this, GlobalContext* globalCtx) {
    EnXc_AnimIsFinished(this);
    func_80B4066C(this, globalCtx);
    EnXc_BgCheck(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B40EAC(&this->actor, globalCtx);
}

void EnXc_ActionFunc64(EnXc* this, GlobalContext* globalCtx) {
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B40EAC(&this->actor, globalCtx);
}

void EnXc_ActionFunc65(EnXc* this, GlobalContext* globalCtx) {
    EnXc_ActionFunc6(this, globalCtx);
    func_80B3C588(this, globalCtx, 4);
    func_80B40C50(this);
}

void EnXc_ActionFunc66(EnXc* this, GlobalContext* globalCtx) {
    EnXc_ActionFunc7(this, globalCtx);
    func_80B40C74(this);
}

void EnXc_ActionFunc67(EnXc* this, GlobalContext* globalCtx) {
    EnXc_ActionFunc8(this, globalCtx);
    func_80B40C98(this);
}

void EnXc_ActionFunc68(EnXc* this, GlobalContext* globalCtx) {
    EnXc_ActionFunc9(this, globalCtx);
    func_80B40CBC(this);
}

void EnXc_ActionFunc69(EnXc* this, GlobalContext* globalCtx) {
    EnXc_ActionFunc10(this, globalCtx);
    func_80B40CE0(this);
}

void EnXc_ActionFunc70(EnXc* this, GlobalContext* globalCtx) {
    EnXc_ActionFunc11(this, globalCtx);
    func_80B40D08(this);
}

void EnXc_ActionFunc71(EnXc* this, GlobalContext* globalCtx) {
    EnXc_ActionFunc12(this, globalCtx);
    func_80B40D2C(this);
}

void EnXc_ActionFunc72(EnXc* this, GlobalContext* globalCtx) {
    EnXc_ActionFunc13(this, globalCtx);
    func_80B40D50(this);
}

void EnXc_ActionFunc73(EnXc* this, GlobalContext* globalCtx) {
    EnXc_ActionFunc14(this, globalCtx);
    func_80B40D74(this);
}

void EnXc_ActionFunc74(EnXc* this, GlobalContext* globalCtx) {
    func_80B3D710(this);
    EnXc_AnimIsFinished(this);
    EnXc_BgCheck(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B40D98(this);
}

void EnXc_ActionFunc75(EnXc* this, GlobalContext* globalCtx) {
    EnXc_ActionFunc16(this, globalCtx);
    func_80B40E40(this);
}

void EnXc_ActionFunc76(EnXc* this, GlobalContext* globalCtx) {
    EnXc_ThrowNutAction(this, globalCtx);
    func_80B40E64(this);
}

void EnXc_ActionFunc77(EnXc* this, GlobalContext* globalCtx) {
    EnXc_ActionFunc18(this, globalCtx);
    func_80B40E88(this);
}

void EnXc_ActionFunc78(EnXc* this, GlobalContext* globalCtx) {
    Actor_Kill(&this->actor);
}

void func_80B414AC(EnXc* this, GlobalContext* globalCtx) {
    s32 pad;
    SkelAnime* skelAnime = &this->skelAnime;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;

    OPEN_DISPS(gfxCtx, "../z_en_oA2_inStalker.c", 839);
    func_80093D18(gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(&gShiekEyeSquintingTex));
    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(&gShiekEyeSquintingTex));
    SkelAnime_DrawFlexOpa(globalCtx, skelAnime->skeleton, skelAnime->jointTable, skelAnime->dListCount, NULL, NULL,
                          NULL);
    CLOSE_DISPS(gfxCtx, "../z_en_oA2_inStalker.c", 854);
}

void func_80B415B8(EnXc* this, GlobalContext* globalCtx) {
    if (LINK_IS_ADULT) {
        if (!(gSaveContext.eventChkInf[12] & 0x20)) {
            gSaveContext.eventChkInf[12] |= 0x20;
            globalCtx->csCtx.segment = SEGMENTED_TO_VIRTUAL(tokinoma_sceneCutsceneData0x0046F0);
            gSaveContext.cutsceneTrigger = 1;
            func_80B3EBF0(this, globalCtx);
        } else if (!(gSaveContext.eventChkInf[5] & 0x20) && (gSaveContext.eventChkInf[4] & 0x100)) {
            gSaveContext.eventChkInf[5] |= 0x20;
            Item_Give(globalCtx, ITEM_SONG_PRELUDE);
            globalCtx->csCtx.segment = SEGMENTED_TO_VIRTUAL(tokinoma_sceneCutsceneData0x006D20);
            gSaveContext.cutsceneTrigger = 1;
            this->action = 30;
        } else if (!(gSaveContext.eventChkInf[5] & 0x20)) {
            func_80B3C9EC(this);
        } else {
            Actor_Kill(&this->actor);
        }
    } else {
        Actor_Kill(&this->actor);
    }
}

void func_80B41718(EnXc* this, GlobalContext* globalCtx) {
    if (func_8002F194(&this->actor, globalCtx)) {
        this->action = 80;
    } else {
        this->actor.flags |= 9;
        if (INV_CONTENT(ITEM_HOOKSHOT) != ITEM_NONE) {
            this->actor.textId =
                0x7010; // "It looks like you have the skills you need...the forest girl is waiting for your help..."
        } else {
            this->actor.textId =
                0x700F; // "To save the forest girl, you need another skill...head to Kakariko Village!"
        }
        func_8002F2F4(&this->actor, globalCtx);
    }
}

void func_80B41798(EnXc* this, GlobalContext* globalCtx) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        this->action = 79;
        this->actor.flags &= -0xA;
    }
}

void EnXc_ActionFunc79(EnXc* this, GlobalContext* globalCtx) {
    EnXc_BgCheck(this, globalCtx);
    EnXc_UpdateCollider(&this->actor, globalCtx);
    EnXc_CalculateHeadTurn(this, globalCtx);
    EnXc_AnimIsFinished(this);
    EnXc_SetEyePattern(this);
    func_80B41718(this, globalCtx);
}

void EnXc_ActionFunc80(EnXc* this, GlobalContext* globalCtx) {
    EnXc_BgCheck(this, globalCtx);
    EnXc_UpdateCollider(&this->actor, globalCtx);
    EnXc_CalculateHeadTurn(this, globalCtx);
    EnXc_AnimIsFinished(this);
    EnXc_SetEyePattern(this);
    func_80B41798(this, globalCtx);
}

void EnXc_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnXc* this = THIS;
    s32 action = this->action;

    if ((action < 0) || (action >= ARRAY_COUNT(sActionFuncs)) || (sActionFuncs[action] == NULL)) {
        osSyncPrintf(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
    } else {
        sActionFuncs[action](this, globalCtx);
    }
}

void EnXc_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnXc* this = THIS;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &gShiekSkel, &gShiekIdleAnim, this->jointTable, this->morphTable, ARRAY_COUNT(this->jointTable));
    EnXc_InitCollider(thisx, globalCtx);

    switch (this->actor.params) {
        case 1:
            func_80B3EBF0(this, globalCtx);
            break;
        case 2:
            func_80B3EE64(this, globalCtx);
            break;
        case 3:
            func_80B3F3C8(this, globalCtx);
            break;
        case 4:
            func_80B3FA08(this, globalCtx);
            break;
        case 5:
            func_80B40590(this, globalCtx);
            break;
        case 6:
            func_80B3CA38(this, globalCtx);
            break;
        case 7:
            func_80B3CB58(this, globalCtx);
            break;
        case 8:
            func_80B3CD00(this, globalCtx);
            break;
        case 9:
            func_80B415B8(this, globalCtx);
            break;
        case 0:
            func_80B3CE78(this, globalCtx);
            break;
        default:
            osSyncPrintf(VT_FGCOL(RED) " En_Oa2 の arg_data がおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
            func_80B3CE78(this, globalCtx);
    }
}

s32 func_80B41A88(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnXc* this = THIS;

    if (this->unk_30C != 0) {
        if (limbIndex == 9) {
            rot->x += this->struct_314.unk_0E.y;
            rot->y -= this->struct_314.unk_0E.x;
        } else if (limbIndex == 16) {
            rot->x += this->struct_314.unk_08.y;
            rot->z += this->struct_314.unk_08.x;
        }
    }
    return 0;
}

void func_80B41B0C(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    if (limbIndex == 16) {
        EnXc* this = THIS;
        Vec3f src = D_80B41F0C;
        Vec3f dest;

        Matrix_MultVec3f(&src, &dest);
        this->actor.focus.pos.x = dest.x;
        this->actor.focus.pos.y = dest.y;
        this->actor.focus.pos.z = dest.z;
        this->actor.focus.rot.x = this->actor.world.rot.x;
        this->actor.focus.rot.y = this->actor.world.rot.y;
        this->actor.focus.rot.z = this->actor.world.rot.z;
    }
}

// EnXc_DrawNothing
void EnXc_DrawNothing(EnXc* this, GlobalContext* globalCtx) {
}

void func_80B41BA4(EnXc* this, GlobalContext* globalCtx) {
    s32 pad[2];
    s16 eyeIdx = this->eyeIdx;
    u64* eyeSegment = sEyeTextures[eyeIdx];
    SkelAnime* skelAnime = &this->skelAnime;
    GraphicsContext* localGfxCtx = globalCtx->state.gfxCtx;
    GraphicsContext* gfxCtx = localGfxCtx;

    OPEN_DISPS(gfxCtx, "../z_en_oA2.c", 1164);
    func_8002EBCC(&this->actor, globalCtx, 0);
    func_80093D18(gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(eyeSegment));
    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(eyeSegment));
    SkelAnime_DrawFlexOpa(globalCtx, skelAnime->skeleton, skelAnime->jointTable, skelAnime->dListCount, func_80B41A88,
                          func_80B41B0C, &this->actor);
    CLOSE_DISPS(gfxCtx, "../z_en_oA2.c", 1207);
}

void EnXc_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnXc* this = THIS;

    if (this->drawMode < 0 || this->drawMode > 5 || sDrawFuncs[this->drawMode] == NULL) {
        // "DRAW MODE IS ABNORMAL!!!!!!!!!!!!!!!!!!!!!!!!!"
        osSyncPrintf(VT_FGCOL(RED) "描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
    } else {
        sDrawFuncs[this->drawMode](this, globalCtx);
    }
}
