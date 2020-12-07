/*
 * File: z_en_xc.c
 * Overlay: ovl_En_Xc
 * Description: Sheik
 */

#include "z_en_xc.h"
#include "vt.h"

#define FLAGS 0x00000010

#define THIS ((EnXc*)thisx)

void EnXc_Init(Actor* thisx, GlobalContext* globalCtx);
void EnXc_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnXc_Update(Actor* thisx, GlobalContext* globalCtx);
void EnXc_Draw(Actor* thisx, GlobalContext* globalCtx);
s32 func_80B3E8AC(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx);
s32 func_80B41A88(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx);
void func_80B41B0C(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx);

void func_80B3C298(EnXc* this, GlobalContext* globalCtx);
void EnXc_SetEyePattern(EnXc* this);
void func_80B3C3A4(EnXc* this, GlobalContext* globalCtx);
void func_80B3C468(EnXc* this, GlobalContext* globalCtx);
s32 func_80B3C4B0(EnXc* this);
CsCmdActorAction* func_80B3C4D0(GlobalContext* globalCtx, s32 npcActionIdx);
s32 func_80B3C4F0(EnXc* this, GlobalContext* globalCtx, u16 arg2, s32 npcActionIdx);
s32 func_80B3C53C(EnXc* this, GlobalContext* globalCtx, u16 arg2, s32 npcActionIdx);
void func_80B3C588(EnXc* this, GlobalContext* globalCtx, u32 npcActionIdx);
void func_80B3C620(EnXc* this, GlobalContext* globalCtx, s32 npcActionIdx);
void EnXc_ChangeAnimation(EnXc* this, AnimationHeader* animation, u8 mode, f32 transitionRate, s32 arg4);
void func_80B3C7BC(EnXc* this, s32 action1, s32 action2);
void func_80B3C7D4(EnXc* this, s32 action1, s32 action2, s32 action3);
s32 func_80B3C800(GlobalContext* globalCtx);
void func_80B3C820(EnXc* this);
void func_80B3C888(EnXc* this, GlobalContext* globalCtx);
void func_80B3C8CC(EnXc* this, GlobalContext* globalCtx);
void func_80B3C924(EnXc* this, GlobalContext* globalCtx);
void func_80B3C964(EnXc* this, GlobalContext* globalCtx);
void func_80B3C9DC(EnXc* this);
void func_80B3C9EC(EnXc* this);
s32 func_80B3CA84(EnXc* this, GlobalContext* globalCtx);
void func_80B3CB58(EnXc* this, GlobalContext* globalCtx);
s32 func_80B3CBA4(EnXc* this, GlobalContext* globalCtx);
void func_80B3CD00(EnXc* this, GlobalContext* globalCtx);
s32 func_80B3CD98(EnXc* this, GlobalContext* globalCtx);
void func_80B3CE78(EnXc* this, GlobalContext* globalCtx);
void func_80B3CE84(EnXc* this, GlobalContext* globalCtx);
void func_80B3CF04(EnXc* this, GlobalContext* globalCtx);
void func_80B3CF90(EnXc* this, GlobalContext* globalCtx);
void func_80B3D014(EnXc* this, GlobalContext* globalCtx);
void func_80B3D118(GlobalContext* globalCtx);
void func_80B3D298(EnXc* this, GlobalContext* globalCtx);
void func_80B3D338(EnXc* this, GlobalContext* globalCtx);
void func_80B3D3F0(EnXc* this, GlobalContext* globalCtx);
void func_80B3D644(EnXc* this);
void func_80B3D664(EnXc* this);
void func_80B3D6F0(EnXc* this);
void func_80B3D710(EnXc* this);
void func_80B3D730(EnXc* this);
void func_80B3D750(EnXc* this, GlobalContext* globalCtx);
void func_80B3D794(EnXc* this, GlobalContext* globalCtx);
void func_80B3D8A4(EnXc* this, GlobalContext* globalCtx, s32 arg2);
void func_80B3DAF0(EnXc* this, GlobalContext* globalCtx);
void func_80B3DC24(EnXc* this, GlobalContext* globalCtx, s32 arg2);
void func_80B3DCA8(EnXc* this, GlobalContext* globalCtx);
void func_80B3DD3C(EnXc* this, GlobalContext* globalCtx);
void func_80B3DE78(EnXc* this, s32 arg1);
void func_80B3DEF4(EnXc* this, GlobalContext* globalCtx);
void func_80B3DFA4(EnXc* this);
void func_80B3E0BC(EnXc* this);
void func_80B3E164(EnXc* this, GlobalContext* globalCtx);
void func_80B3E1B8(EnXc* this, GlobalContext* globalCtx);
void func_80B3E224(EnXc* this, GlobalContext* globalCtx);
void func_80B3E25C(EnXc* this, GlobalContext* globalCtx);
void func_80B3E294(EnXc* this, GlobalContext* globalCtx);
void func_80B3E30C(EnXc* this, GlobalContext* globalCtx);
void func_80B3E368(EnXc* this, GlobalContext* globalCtx);
void func_80B3E3C4(EnXc* this, GlobalContext* globalCtx);
void func_80B3E420(EnXc* this, GlobalContext* globalCtx);
void func_80B3E464(EnXc* this, GlobalContext* globalCtx);
void func_80B3E4AC(EnXc* this, GlobalContext* globalCtx);
void func_80B3E4F8(EnXc* this, GlobalContext* globalCtx);
void func_80B3E53C(EnXc* this, GlobalContext* globalCtx);
void func_80B3E580(EnXc* this, GlobalContext* globalCtx);
void func_80B3E5C8(EnXc* this, GlobalContext* globalCtx);
void func_80B3E610(EnXc* this, GlobalContext* globalCtx);
void func_80B3E668(EnXc* this, GlobalContext* globalCtx);
void func_80B3E6D0(EnXc* this, GlobalContext* globalCtx);
void func_80B3E738(EnXc* this, GlobalContext* globalCtx);
void func_80B3E7A0(EnXc* this, GlobalContext* globalCtx);
void func_80B3E804(EnXc* this, GlobalContext* globalCtx);
void func_80B3E85C(EnXc* this, GlobalContext* globalCtx);
void func_80B3ECD8(EnXc* this);
void func_80B3ED48(EnXc* this, GlobalContext* globalCtx);
void func_80B3ED68(EnXc* this, GlobalContext* globalCtx);
void func_80B3ED88(EnXc* this, GlobalContext* globalCtx);
void func_80B3EDCC(EnXc* this, GlobalContext* globalCtx);
void func_80B3EE28(EnXc* this, GlobalContext* globalCtx);
void func_80B3EE34(EnXc* this, GlobalContext* globalCtx);
void func_80B3EE40(EnXc* this, GlobalContext* globalCtx);
void func_80B3EE4C(EnXc* this, GlobalContext* globalCtx);
void func_80B3EE58(EnXc* this, GlobalContext* globalCtx);
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
void func_80B3F124(EnXc* this, GlobalContext* globalCtx);
void func_80B3F144(EnXc* this, GlobalContext* globalCtx);
void func_80B3F16C(EnXc* this, GlobalContext* globalCtx);
void func_80B3F1A8(EnXc* this, GlobalContext* globalCtx);
void func_80B3F1D0(EnXc* this, GlobalContext* globalCtx);
void func_80B3F1F8(EnXc* this, GlobalContext* globalCtx);
void func_80B3F220(EnXc* this, GlobalContext* globalCtx);
void func_80B3F248(EnXc* this, GlobalContext* globalCtx);
void func_80B3F270(EnXc* this, GlobalContext* globalCtx);
void func_80B3F298(EnXc* this, GlobalContext* globalCtx);
void func_80B3F2C0(EnXc* this, GlobalContext* globalCtx);
void func_80B3F2E8(EnXc* this, GlobalContext* globalCtx);
void func_80B3F344(EnXc* this, GlobalContext* globalCtx);
void func_80B3F36C(EnXc* this, GlobalContext* globalCtx);
void func_80B3F394(EnXc* this, GlobalContext* globalCtx);
void func_80B3F3BC(EnXc* this, GlobalContext* globalCtx);
void func_80B3F3C8(EnXc* this, GlobalContext* globalCtx);
void func_80B3F3D8();
void func_80B3F3F8(Vec3f* src, GlobalContext* globalCtx);
void func_80B3F59C(EnXc* this, GlobalContext* globalCtx);
void func_80B3F620(EnXc* this);
void func_80B3F644(EnXc* this);
void func_80B3F668(EnXc* this, GlobalContext* globalCtx);
void func_80B3F6DC(EnXc* this);
void func_80B3F700(EnXc* this, GlobalContext* globalCtx);
void func_80B3F754(EnXc* this, GlobalContext* globalCtx);
void func_80B3F7F8(EnXc* this, GlobalContext* globalCtx);
void func_80B3F820(EnXc* this, GlobalContext* globalCtx);
void func_80B3F848(EnXc* this, GlobalContext* globalCtx);
void func_80B3F8A0(EnXc* this, GlobalContext* globalCtx);
void func_80B3F8C8(EnXc* this, GlobalContext* globalCtx);
void func_80B3F928(EnXc* this, GlobalContext* globalCtx);
void func_80B3F988(EnXc* this, GlobalContext* globalCtx);
void func_80B3F9E8(EnXc* this, GlobalContext* globalCtx);
void func_80B3FA08(EnXc* this, GlobalContext* globalCtx);
void func_80B3FA2C(void);
void func_80B3FA4C(Actor* thisx, GlobalContext* globalCtx);
void func_80B3FAE0(EnXc* this);
void func_80B3FB24(Actor* thisx, GlobalContext* globalCtx);
void func_80B3FF0C(EnXc* this, GlobalContext* globalCtx);
void func_80B3FFB4(EnXc* this, GlobalContext* globalCtx);
void func_80B400AC(EnXc* this, GlobalContext* globalCtx);
void func_80B400E4(EnXc* this, GlobalContext* globalCtx);
void func_80B40CBC(EnXc* this);
void func_80B40104(EnXc* this, GlobalContext* globalCtx);
void func_80B4015C(EnXc* this, GlobalContext* globalCtx);
void func_80B401CC(EnXc* this, GlobalContext* globalCtx);
void func_80B40590(EnXc* this, GlobalContext* globalCtx);
void func_80B4066C(EnXc* this, GlobalContext* globalCtx);
void func_80B406A0(EnXc* this, GlobalContext* globalCtx);
void func_80B4070C(EnXc* this, GlobalContext* globalCtx);
void func_80B407A8(EnXc* this, GlobalContext* globalCtx);
void func_80B40820(EnXc* this, GlobalContext* globalCtx);
void func_80B408FC(EnXc* this, GlobalContext* globalCtx);
void func_80B409D8(EnXc* this, GlobalContext* globalCtx);
void func_80B40A78(EnXc* this, GlobalContext* globalCtx);
void func_80B40B18(EnXc* this, GlobalContext* globalCtx);
void func_80B40BB4(EnXc* this, GlobalContext* globalCtx);
void func_80B40C50(EnXc* this);
void func_80B40C98(EnXc* this);
void func_80B40D98(EnXc* this);
s32 func_80B40EAC(Actor* thisx, GlobalContext* globalCtx);
void func_80B41000(EnXc* this, GlobalContext* globalCtx);
void func_80B41020(EnXc* this, GlobalContext* globalCtx);
void func_80B41068(EnXc* this, GlobalContext* globalCtx);
void func_80B410AC(EnXc* this, GlobalContext* globalCtx);
void func_80B41110(EnXc* this, GlobalContext* globalCtx);
void func_80B41174(EnXc* this, GlobalContext* globalCtx);
void func_80B411AC(EnXc* this, GlobalContext* globalCtx);
void func_80B41204(EnXc* this, GlobalContext* globalCtx);
void func_80B41248(EnXc* this, GlobalContext* globalCtx);
void func_80B41284(EnXc* this, GlobalContext* globalCtx);
void func_80B412AC(EnXc* this, GlobalContext* globalCtx);
void func_80B412D4(EnXc* this, GlobalContext* globalCtx);
void func_80B412FC(EnXc* this, GlobalContext* globalCtx);
void func_80B41324(EnXc* this, GlobalContext* globalCtx);
void func_80B4134C(EnXc* this, GlobalContext* globalCtx);
void func_80B41374(EnXc* this, GlobalContext* globalCtx);
void func_80B4139C(EnXc* this, GlobalContext* globalCtx);
void func_80B413C4(EnXc* this, GlobalContext* globalCtx);
void func_80B41414(EnXc* this, GlobalContext* globalCtx);
void func_80B4143C(EnXc* this, GlobalContext* globalCtx);
void func_80B41464(EnXc* this, GlobalContext* globalCtx);
void func_80B4148C(EnXc* this, GlobalContext* globalCtx);
void func_80B415B8(EnXc* this, GlobalContext* globalCtx);
void func_80B41798(EnXc* this, GlobalContext* globalCtx);
void func_80B417E4(EnXc* this, GlobalContext* globalCtx);
void func_80B41844(EnXc* this, GlobalContext* globalCtx);

void func_80B41B98(EnXc* this, GlobalContext* globalCtx);
void func_80B41BA4(EnXc* this, GlobalContext* globalCtx);
void func_80B3E908(EnXc* this, GlobalContext* globalCtx);
void func_80B41BA4(EnXc* this, GlobalContext* globalCtx);
void func_80B3EA7C(EnXc* this, GlobalContext* globalCtx);
void func_80B402C4(Actor* thisx, GlobalContext* globalCtx);
void func_80B414AC(EnXc* this, GlobalContext* globalCtx);

void func_80B3EBF0(EnXc* this, GlobalContext* globalCtx);
void func_80B3EC00(EnXc* this);

s32 func_80B3E8E4(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx);
void func_80B3E87C(Gfx** dList, EnXc* this);

s32 func_80B40224(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                                   void* actor);

void func_80B40248(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* actor);

extern SkeletonHeader D_06012AF0;
extern AnimationHeader D_06004828;
extern Gfx D_06011150[];
extern CutsceneCmd D_02003F80[];
extern CutsceneCmd D_020045D0[];
extern CutsceneCmd D_02000330[];
extern CutsceneCmd D_02006D20[];
extern CutsceneCmd D_020046F0[];
extern AnimationHeader D_0601C0E8;
extern AnimationHeader D_06013AA4;
extern AnimationHeader D_06019598;
extern AnimationHeader D_06012FD0;
extern AnimationHeader D_0601B19C;
extern AnimationHeader D_06017C54;
extern AnimationHeader D_0601A048;
extern AnimationHeader D_06019C30;
extern AnimationHeader D_06019F78;
extern AnimationHeader D_060149E4;
extern AnimationHeader D_060169E8;
extern AnimationHeader D_06018B00;
extern UNK_TYPE D_060058C0[];

ColliderCylinderInit_Set3 D_80B41D40 = {
    { COLTYPE_UNK0, 0x00, 0x00, 0x09, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 25, 80, 0, { 0, 0, 0 } },
};

UNK_PTR D_80B41D6C[] = {
    0x06004CC0,
    0x060050C0,
    0x060054C0,
};

Vec3f D_80B41D78 = { -611.0f, 728.0f, -2.0f };

Vec3f D_80B41D84 = { -1069.0f, 38.0f, 0.0f };

s32 D_80B41D90 = 0x00000000;

Vec3f D_80B41D94 = { 0.0f, 0.0f, 0.0f };

f32 D_80B41DA0 = 0.0f;

s32 D_80B41DA4 = 0x00000000;

s32 D_80B41DA8 = 0x00000001;

s32 D_80B41DAC = 0x00000001;

Vec3f D_80B41DB0 = { 0.0f, 0.0f, 0.0f };

Vec3f D_80B41DBC = { 0.0f, 0.0f, 0.0f };

EnXcActionFunc D_80B41DC8[] = {
    func_80B3E224, func_80B3E25C, func_80B3E294, func_80B3E30C, func_80B3E368, func_80B3E3C4, func_80B3E420,
    func_80B3E464, func_80B3E4AC, func_80B3E4F8, func_80B3E53C, func_80B3E580, func_80B3E5C8, func_80B3E610,
    func_80B3E668, func_80B3E6D0, func_80B3E738, func_80B3E7A0, func_80B3E804, func_80B3E85C, func_80B3ED48,
    func_80B3ED68, func_80B3ED88, func_80B3EDCC, func_80B3EE28, func_80B3EE34, func_80B3EE40, func_80B3EE4C,
    func_80B3EE58, func_80B3F124, func_80B3F144, func_80B3F16C, func_80B3F1A8, func_80B3F1D0, func_80B3F1F8,
    func_80B3F220, func_80B3F248, func_80B3F270, func_80B3F298, func_80B3F2C0, func_80B3F2E8, func_80B3F344,
    func_80B3F36C, func_80B3F394, func_80B3F3BC, func_80B3F7F8, func_80B3F820, func_80B3F848, func_80B3F8A0,
    func_80B3F8C8, func_80B3F928, func_80B3F988, func_80B3F9E8, func_80B400E4, func_80B40104, func_80B4015C,
    func_80B401CC, func_80B41000, func_80B41020, func_80B41068, func_80B410AC, func_80B41110, func_80B41174,
    func_80B411AC, func_80B41204, func_80B41248, func_80B41284, func_80B412AC, func_80B412D4, func_80B412FC,
    func_80B41324, func_80B4134C, func_80B41374, func_80B4139C, func_80B413C4, func_80B41414, func_80B4143C,
    func_80B41464, func_80B4148C, func_80B417E4, func_80B41844,
};

Vec3f D_80B41F0C = { 0.0f, 10.0f, 0.0f };

EnXcDrawFunc D_80B41F18[] = {
    func_80B41B98, func_80B41BA4, func_80B3E908, func_80B3EA7C, func_80B402C4, func_80B414AC,
};

const ActorInit En_Xc_InitVars = {
    ACTOR_EN_XC,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_XC,
    sizeof(EnXc),
    (ActorFunc)EnXc_Init,
    (ActorFunc)EnXc_Destroy,
    (ActorFunc)EnXc_Update,
    (ActorFunc)EnXc_Draw,
};

Vec3f D_80B42D90;

Vec3f D_80B42DA0;

Vec3f D_80B42DB0;

void func_80B3C1E0(Actor* thisx, GlobalContext* globalCtx) {
    EnXc* this = THIS;

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder_Set3(globalCtx, &this->collider, &this->actor, &D_80B41D40);
}

void func_80B3C22C(Actor* thisx, GlobalContext* globalCtx) {
    EnXc* this = THIS;
    ColliderCylinder* collider = &this->collider;
    Collider* colliderBase = &this->collider.base;
    CollisionCheckContext* colChkCtx = &globalCtx->colChkCtx;
    s32 pad;

    Collider_CylinderUpdate(thisx, collider);
    CollisionCheck_SetOC(globalCtx, colChkCtx, colliderBase);
}

void EnXc_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnXc* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void func_80B3C298(EnXc* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    this->struct_314.unk_18 = player->actor.posRot.pos;
    this->struct_314.unk_14 = kREG(16) - 3.0f;
    func_80034A14(&this->actor, &this->struct_314, kREG(17) + 0xC, 2);
}

void EnXc_SetEyePattern(EnXc* this) {
    s32 pad[3];
    s16* blinkTimer = &this->blinkTimer;
    s16* eyePattern = &this->eyeIdx;

    if (!DECR(*blinkTimer)) {
        *blinkTimer = Math_Rand_S16Offset(60, 60);
    }

    *eyePattern = *blinkTimer;
    if (*eyePattern >= 3) {
        *eyePattern = 0;
    }
}

void func_80B3C3A4(EnXc* this, GlobalContext* globalCtx) {
    s32 pad;
    Vec3f* pos = &this->actor.posRot.pos;
    s16 angle = this->actor.shape.rot.y;
    f32 x = (Math_Sins(angle) * 30.0f) + pos->x;
    f32 y = pos->y + 3.0f;
    f32 z = (Math_Coss(angle) * 30.0f) + pos->z;

    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_ARROW, x, y, z, 0xFA0, this->actor.shape.rot.y, 0, -0xA);
}

void func_80B3C468(EnXc* this, GlobalContext* globalCtx) {
    func_8002E4B4(globalCtx, &this->actor, 75.0f, 30.0f, 30.0f, 4);
}

s32 func_80B3C4B0(EnXc* this) {
    return SkelAnime_FrameUpdateMatrix(&this->skelAnime);
}

CsCmdActorAction* func_80B3C4D0(GlobalContext* globalCtx, s32 npcActionIdx) {
    CsCmdActorAction* action = NULL;
    if (globalCtx->csCtx.state != 0) {
        action = globalCtx->csCtx.npcActions[npcActionIdx];
    }
    return action;
}

s32 func_80B3C4F0(EnXc* this, GlobalContext* globalCtx, u16 arg2, s32 npcActionIdx) {
    CsCmdActorAction* csCmdActorAction = func_80B3C4D0(globalCtx, npcActionIdx);

    if (csCmdActorAction && csCmdActorAction->action == arg2) {
        return 1;
    }
    return 0;
}

s32 func_80B3C53C(EnXc* this, GlobalContext* globalCtx, u16 arg2, s32 npcActionIdx) {
    CsCmdActorAction* csCmdNPCAction = func_80B3C4D0(globalCtx, npcActionIdx);

    if (csCmdNPCAction && csCmdNPCAction->action != arg2) {
        return 1;
    }
    return 0;
}

void func_80B3C588(EnXc* this, GlobalContext* globalCtx, u32 npcActionIdx) {
    CsCmdActorAction* csCmdNPCAction = func_80B3C4D0(globalCtx, npcActionIdx);
    Actor* thisx = &this->actor;

    if (csCmdNPCAction) {
        thisx->posRot.pos.x = csCmdNPCAction->startPos.x;
        thisx->posRot.pos.y = csCmdNPCAction->startPos.y;
        thisx->posRot.pos.z = csCmdNPCAction->startPos.z;
        thisx->posRot.rot.x = thisx->shape.rot.x = csCmdNPCAction->rot.x;
        thisx->posRot.rot.y = thisx->shape.rot.y = csCmdNPCAction->rot.y;
        thisx->posRot.rot.z = thisx->shape.rot.z = csCmdNPCAction->rot.z;
    }
}

void func_80B3C620(EnXc* this, GlobalContext* globalCtx, s32 npcActionIdx) {
    CsCmdActorAction* npcAction = func_80B3C4D0(globalCtx, npcActionIdx);
    Vec3f* xcPos = &this->actor.posRot.pos;
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

void EnXc_ChangeAnimation(EnXc* this, AnimationHeader* animation, u8 mode, f32 transitionRate, s32 arg4) {
    s32 pad[2];
    AnimationHeader* animationSeg = SEGMENTED_TO_VIRTUAL(animation);
    f32 frameCount = SkelAnime_GetFrameCount(&animationSeg->genericHeader);
    f32 playbackSpeed;
    f32 unk0;
    f32 fc;

    if (arg4 == 0) {
        unk0 = 0.0f;
        fc = frameCount;
        playbackSpeed = 1.0f;
    } else {
        unk0 = frameCount;
        fc = 0.0f;
        playbackSpeed = -1.0f;
    }

    SkelAnime_ChangeAnim(&this->skelAnime, animationSeg, playbackSpeed, unk0, fc, mode, transitionRate);
}

void func_80B3C7BC(EnXc* this, s32 action1, s32 action2) {
    if (action1 != this->action) {
        this->action = action2;
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

s32 func_80B3C800(GlobalContext* globalCtx) {
    if (globalCtx->csCtx.state == 0) {
        return 1;
    }
    return 0;
}

void func_80B3C820(EnXc* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06004828, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06004828.genericHeader),
                         0, 0.0f);
    this->action = 53;
}

void func_80B3C888(EnXc* this, GlobalContext* globalCtx) {
    if ((func_80B3C800(globalCtx) != 0) && this->actor.params == 4) {
        func_80B3C820(this);
    }
}

void func_80B3C8CC(EnXc* this, GlobalContext* globalCtx) {
    SkelAnime* skelAnime = &this->skelAnime;
    if (skelAnime->limbDrawTbl[0].y >= skelAnime->unk_3E.y) {
        skelAnime->flags |= 3;
        SkelAnime_LoadAnimationType5(globalCtx, &this->actor, skelAnime, 1.0f);
    }
}

void func_80B3C924(EnXc* this, GlobalContext* globalCtx) {
    this->skelAnime.flags |= 3;
    SkelAnime_LoadAnimationType5(globalCtx, &this->actor, &this->skelAnime, 1.0f);
}

void func_80B3C964(EnXc* this, GlobalContext* globalCtx) {
    SkelAnime* skelAnime = &this->skelAnime;

    skelAnime->unk_3E = *skelAnime->limbDrawTbl;
    skelAnime->prevFramePos = *skelAnime->limbDrawTbl;
    skelAnime->flags |= 3;
    SkelAnime_LoadAnimationType5(globalCtx, &this->actor, skelAnime, 1.0f);
}

void func_80B3C9DC(EnXc* this) {
    this->skelAnime.flags &= ~0x3;
}

void func_80B3C9EC(EnXc* this) {
    EnXc_ChangeAnimation(this, &D_06013AA4, 0, 0.0f, 0);
    this->action = 79;
    this->drawMode = 1;
    this->unk_30C = 1;
}

void func_80B3CA38(EnXc* this, GlobalContext* globalCtx) {
    if (!(gSaveContext.eventChkInf[5] & 1) && LINK_IS_ADULT) {
        this->action = 0;
    } else {
        Actor_Kill(&this->actor);
    }
}

s32 func_80B3CA84(EnXc* this, GlobalContext* globalCtx) {
    if (this->actor.params == 6) {
        Player* player = PLAYER;
        f32 z = player->actor.posRot.pos.z;
        if (z < -2225.0f) {
            if (!Gameplay_InCsMode(globalCtx)) {
                globalCtx->csCtx.segment = SEGMENTED_TO_VIRTUAL(&D_02003F80);
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

s32 func_80B3CBA4(EnXc* this, GlobalContext* globalCtx) {
    Player* player;
    PosRot* posRot;

    if (this->actor.params == 7) {
        player = PLAYER;
        posRot = &player->actor.posRot;
        if ((posRot->pos.x > -784.0f) && (posRot->pos.x < -584.0f) && (posRot->pos.y > 447.0f) &&
            (posRot->pos.y < 647.0f) && (posRot->pos.z > -446.0f) && (posRot->pos.z < -246.0f) &&
            !Gameplay_InCsMode(globalCtx)) {
            globalCtx->csCtx.segment = SEGMENTED_TO_VIRTUAL(&D_020045D0);
            gSaveContext.cutsceneTrigger = 1;
            gSaveContext.eventChkInf[5] |= 2;
            Item_Give(globalCtx, ITEM_SONG_BOLERO);
            return 1;
        }
        return 0;
    }
    return 1;
}

void func_80B3CD00(EnXc* this, GlobalContext* globalCtx) {
    if (!CHECK_OWNED_EQUIP(EQUIP_BOOTS, 1)) {
        if (!(gSaveContext.eventChkInf[5] & 4)) {
            if (LINK_IS_ADULT) {
                this->action = 29;
                osSyncPrintf("水のセレナーデ シーク誕生!!!!!!!!!!!!!!!!!!\n");
                return;
            }
        }
    }
    Actor_Kill(&this->actor);
    osSyncPrintf("水のセレナーデ シーク消滅!!!!!!!!!!!!!!!!!!\n");
}

s32 func_80B3CD98(EnXc* this, GlobalContext* globalCtx) {
    if (this->actor.params == 8) {
        Player* player = PLAYER;
        s32 stateFlags = player->stateFlags1;
        if (CHECK_OWNED_EQUIP(EQUIP_BOOTS, 1)) {
            if (!(gSaveContext.eventChkInf[5] & 4)) {
                if ((stateFlags << 2) >= 0) {
                    if (!Gameplay_InCsMode(globalCtx)) {
                        Cutscene_SetSegment(globalCtx, &D_02000330);
                        gSaveContext.cutsceneTrigger = 1;
                        gSaveContext.eventChkInf[5] |= 4;
                        Item_Give(globalCtx, ITEM_SONG_SERENADE);
                        osSyncPrintf("ブーツを取った!!!!!!!!!!!!!!!!!!\n");
                        return 1;
                    }
                }
            }
        }
        osSyncPrintf("はやくブーツを取るべし!!!!!!!!!!!!!!!!!!\n");
        return 0;
    }
    return 1;
}

void func_80B3CE78(EnXc* this, GlobalContext* globalCtx) {
}

void func_80B3CE84(EnXc* this, GlobalContext* globalCtx) {
    s32 pad[2];
    u32 sfxId;
    s32 pad2;
    if ((func_800A56C8(&this->skelAnime, 11.0f) != 0) || (func_800A56C8(&this->skelAnime, 23.0f) != 0)) {
        if (this->actor.bgCheckFlags & 1) {
            sfxId = SFX_FLAG;
            sfxId += func_80041F34(&globalCtx->colCtx, this->actor.floorPoly, this->actor.floorPolySource);
            func_80078914(&this->actor.projectedPos, sfxId);
        }
    }
}

void func_80B3CF04(EnXc* this, GlobalContext* globalCtx) {
    s32 pad[2];
    u32 sfxId;
    s32 pad2;
    if (func_800A56C8(&this->skelAnime, 7.0f) != 0) {
        if (this->actor.bgCheckFlags & 1) {
            sfxId = SFX_FLAG;
            sfxId += func_80041F34(&globalCtx->colCtx, this->actor.floorPoly, this->actor.floorPolySource);
            func_80078914(&this->actor.projectedPos, sfxId);
        }
    }
    if (func_800A56C8(&this->skelAnime, 20.0f) != 0) {
        func_80078914(&this->actor.projectedPos, NA_SE_VO_SK_SHOUT);
    }
}

void func_80B3CF90(EnXc* this, GlobalContext* globalCtx) {
    u32 sfxId;
    s16 sceneNum = globalCtx->sceneNum;
    if ((gSaveContext.sceneSetupIndex != 4) || (sceneNum != SCENE_SPOT11)) {
        if (func_800A56C8(&this->skelAnime, 11.0f) != 0) {
            sfxId = SFX_FLAG;
            sfxId += func_80041F34(&globalCtx->colCtx, this->actor.floorPoly, this->actor.floorPolySource);
            func_80078914(&this->actor.projectedPos, sfxId);
        }
    }
}

#ifdef NON_MATCHING
void func_80B3D014(EnXc* this, GlobalContext* globalCtx) {
    s32 pad[4];
    f32* wDest;

    if (gSaveContext.sceneSetupIndex == 4) {
        s16 sceneNum = globalCtx->sceneNum;
        if (sceneNum == SCENE_SPOT11) {
            u16 frameCount = globalCtx->csCtx.frames;
            if (frameCount == 0x77) {
                Vec3f sp30 = D_80B41D78;
                SkinMatrix_Vec3fMtxFMultXYZW(&globalCtx->mf_11D60, &sp30, &D_80B42D90, &wDest);
                func_80078914(&D_80B42D90, NA_SE_EV_JUMP_CONC);
            } else if (frameCount == 0xA4) {
                Vec3f sp24 = D_80B41D84;
                SkinMatrix_Vec3fMtxFMultXYZW(&globalCtx->mf_11D60, &sp24, &D_80B42D90, &wDest);
                func_80078914(&D_80B42D90, NA_SE_PL_WALK_CONCRETE);
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3D014.s")
#endif

void func_80B3D118(GlobalContext* globalCtx) {
    s16 sceneNum;
    if ((gSaveContext.sceneSetupIndex != 4) || (sceneNum = globalCtx->sceneNum, sceneNum != SCENE_SPOT11)) {
        func_800788CC(NA_SE_PL_SKIP);
    }
}

#ifdef NON_EQUIVALENT
void func_80B3D158(GlobalContext* globalCtx) {
    f32 dist;
    f32 clampMin;
    f32 clampMax;
    Vec3f* eye = &globalCtx->view.eye;
    s16 sceneNum = globalCtx->sceneNum;
    if (gSaveContext.sceneSetupIndex == 4) {
        if (sceneNum == SCENE_SPOT11) {
            if (globalCtx->csCtx.frames >= 120) {
                if (globalCtx->csCtx.frames < 164) {
                    if (D_80B41D90 != 0) {
                        dist = Math3D_Vec3f_DistXYZ(&D_80B42DB0, eye) / 7.058922f;
                        clampMin = CLAMP_MIN(D_80B41DA0, dist);
                        osSyncPrintf("MAX speed = %f\n", clampMin);
                        clampMax = CLAMP_MAX(dist, 2.0f);
                        func_800F436C(&D_80B41D94, NA_SE_EV_FLYING_AIR - SFX_FLAG, (0.4f * clampMax) + 0.6f);
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
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3D158.s")
#endif

#ifdef NON_MATHCING
void func_80B3D298(EnXc* this, GlobalContext* globalCtx) {
    if (D_80B41DA4 == 0) {
        CsCmdActorAction* npcAction = func_80B3C4D0(globalCtx, 0);
        s32 xPos;
        s32 yPos = npcAction->startPos.y;
        s32 zPos = npcAction->startPos.z;
        this->attached =
            Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_LIGHT, npcAction->startPos.x, yPos, zPos, 0, 0, 0, 5);
        D_80B41DA4 = 1;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3D298.s")
#endif

void func_80B3D338(EnXc* this, GlobalContext* globalCtx) {
    Vec3f* attachedPos;
    CsCmdActorAction* npcAction = func_80B3C4D0(globalCtx, 0);
    if (this->attached) {
        attachedPos = &this->attached->posRot.pos;
        if (!this) {}
        attachedPos->x = npcAction->startPos.x;
        attachedPos->y = npcAction->startPos.y;
        attachedPos->z = npcAction->startPos.z;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3D3B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3D3F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3D48C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3D4D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3D56C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3D644.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3D664.s")

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
    if (func_80B3CA84(this, globalCtx) != 0 && func_80B3CBA4(this, globalCtx) != 0) {
        this->action = 1;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3D794.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3D8A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3D990.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3DA00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3DAA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3DAF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3DBAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3DC24.s")

void func_80B3DCA8(EnXc* this, GlobalContext* globalCtx) {
    f32 frameCount;

    if (globalCtx->csCtx.state != 0) {
        CsCmdActorAction* npcAction = globalCtx->csCtx.npcActions[4];
        if (npcAction && npcAction->action == 8) {
            frameCount = SkelAnime_GetFrameCount(&D_06017C54.genericHeader);
            SkelAnime_ChangeAnim(&this->skelAnime, &D_06017C54, 0.0f, frameCount, frameCount, 0, -8.0f);
            this->action = 10;
        }
    }
}

void func_80B3DD3C(EnXc* this, GlobalContext* globalCtx) {
    if (func_80B3C4F0(this, globalCtx, 5, 4)) {
        f32 animCurrentFrame = this->skelAnime.animCurrentFrame;
        f32 animFrameCount = this->skelAnime.animFrameCount;
        if (animCurrentFrame >= animFrameCount) {
            SkelAnime_ChangeAnim(&this->skelAnime, &D_06017C54, -1.0f,
                                 SkelAnime_GetFrameCount(&D_06017C54.genericHeader), 0.0f, 2, 0.0f);
            this->action = 11;
        }
    } else if (func_80B3C53C(this, globalCtx, 8, 4)) {
        func_80B3DC24(this, globalCtx, 1);
    }
}

void func_80B3DE00(EnXc* this, s32 arg1) {
    if (arg1 != 0) {
        SkelAnime_ChangeAnim(&this->skelAnime, &D_0601B19C, -1.0f, SkelAnime_GetFrameCount(&D_0601B19C.genericHeader),
                             0.0f, 2, 0.0f);
        this->action = 12;
        this->drawMode = 2;
    }
}

void func_80B3DE78(EnXc* this, s32 arg1) {
    if (arg1 != 0) {
        SkelAnime_ChangeAnim(&this->skelAnime, &D_06004828, 1.0f, 0.0f,
                             SkelAnime_GetFrameCount(&D_06004828.genericHeader), 0, 0.0f);
        this->action = 13;
        this->drawMode = 1;
        this->timer = 0.0f;
    }
}

void func_80B3DEF4(EnXc* this, GlobalContext* globalCtx) {

    if (globalCtx->csCtx.state != 0) {
        CsCmdActorAction* npcAction = globalCtx->csCtx.npcActions[4];
        if (npcAction) {
            if (npcAction->action == 4) {
                SkelAnime_ChangeAnim(&this->skelAnime, &D_06012FD0, -1.0f, SkelAnime_GetFrameCount(&D_06012FD0), 0.0f,
                                     0, -12.0f);
                this->action = 14;
                this->actor.posRot.rot.y += 0x8000;
                this->timer = 0.0f;
            }
        }
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
    f32 xzDistFromLink = this->actor.xzDistFromLink;
    if (xzDistFromLink >= kREG(5) + 140.0f) {
        SkelAnime_ChangeAnim(&this->skelAnime, &D_06004828, 1.0f, 0.0f,
                             SkelAnime_GetFrameCount(&D_06004828.genericHeader), 0, -12.0f);
        this->action = 16;
        this->timer = 0.0f;
    }
}

void func_80B3E0BC(EnXc* this) {
    this->timer++;
    if (this->timer >= 12.0f) {
        SkelAnime_ChangeAnim(&this->skelAnime, &D_06019598, 1.0f, 0.0f,
                             SkelAnime_GetFrameCount(&D_06019598.genericHeader), 2, 0.0f);
        this->action = 17;
        this->timer = 0.0f;
        this->actor.speedXZ = 0.0f;
    }
}

void func_80B3E164(EnXc* this, GlobalContext* globalCtx) {
    this->timer++;
    if (this->timer >= 30.0f) {
        this->action = 18;
        func_80B3C3A4(this, globalCtx);
    }
}

void func_80B3E1B8(EnXc* this, GlobalContext* globalCtx) {
    if (globalCtx->csCtx.state != 0) {
        CsCmdActorAction* npcAction = globalCtx->csCtx.npcActions[4];
        if (npcAction) {
            if (npcAction->action == 9) {
                s16 sceneNum = globalCtx->sceneNum;
                if (sceneNum == SCENE_SPOT17) {
                    this->action = 19;
                    this->drawMode = 0;
                    this->actor.shape.unk_14 = 0;
                } else {
                    Actor_Kill(&this->actor);
                }
            }
        }
    }
}

void func_80B3E224(EnXc* this, GlobalContext* globalCtx) {
    func_80B3D014(this, globalCtx);
    func_80B3D158(globalCtx);
    func_80B3D750(this, globalCtx);
}

void func_80B3E25C(EnXc* this, GlobalContext* globalCtx) {
    func_80B3D014(this, globalCtx);
    func_80B3D158(globalCtx);
    func_80B3D794(this, globalCtx);
}

void func_80B3E294(EnXc* this, GlobalContext* globalCtx) {
    s32 unk = func_80B3C4B0(this);

    func_80B3C468(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B3CF90(this, globalCtx);
    func_80B3D014(this, globalCtx);
    func_80B3D158(globalCtx);
    func_80B3D8A4(this, globalCtx, unk);
}

void func_80B3E30C(EnXc* this, GlobalContext* globalCtx) {
    func_80B3D56C(this);
    func_80B3C4B0(this);
    func_80B3C468(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B3CE84(this, globalCtx);
    func_80B3D990(this);
}

void func_80B3E368(EnXc* this, GlobalContext* globalCtx) {
    func_80B3D644(this);
    func_80B3C4B0(this);
    func_80B3C468(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B3CE84(this, globalCtx);
    func_80B3DA00(this);
}

void func_80B3E3C4(EnXc* this, GlobalContext* globalCtx) {
    func_80B3D664(this);
    func_80B3C4B0(this);
    func_80B3C468(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B3CE84(this, globalCtx);
    func_80B3DAA8(this);
}

void func_80B3E420(EnXc* this, GlobalContext* globalCtx) {
    func_80B3C4B0(this);
    func_80B3C468(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B3DAF0(this, globalCtx);
}

void func_80B3E464(EnXc* this, GlobalContext* globalCtx) {
    s32 unk = func_80B3C4B0(this);

    func_80B3C468(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B3DBAC(this, unk);
}

void func_80B3E4AC(EnXc* this, GlobalContext* globalCtx) {
    s32 unk = func_80B3C4B0(this);

    func_80B3C468(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B3DC24(this, globalCtx, unk);
}

void func_80B3E4F8(EnXc* this, GlobalContext* globalCtx) {
    func_80B3C4B0(this);
    func_80B3C468(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B3DCA8(this, globalCtx);
}

void func_80B3E53C(EnXc* this, GlobalContext* globalCtx) {
    func_80B3C4B0(this);
    func_80B3C468(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B3DD3C(this, globalCtx);
}

void func_80B3E580(EnXc* this, GlobalContext* globalCtx) {
    s32 unk = func_80B3C4B0(this);

    func_80B3C468(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B3DE00(this, unk);
}

void func_80B3E5C8(EnXc* this, GlobalContext* globalCtx) {
    s32 unk = func_80B3C4B0(this);

    func_80B3C468(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B3DE78(this, unk);
}

void func_80B3E610(EnXc* this, GlobalContext* globalCtx) {
    func_80B3C4B0(this);
    func_80B3C468(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B3D3F0(this, globalCtx);
    func_80B3DEF4(this, globalCtx);
}

void func_80B3E668(EnXc* this, GlobalContext* globalCtx) {
    func_80B3D6F0(this);
    func_80B3C4B0(this);
    func_80B3C468(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B3CE84(this, globalCtx);
    func_80B3D3F0(this, globalCtx);
    func_80B3DFA4(this);
}

void func_80B3E6D0(EnXc* this, GlobalContext* globalCtx) {
    func_80B3D710(this);
    func_80B3C4B0(this);
    func_80B3C468(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B3CE84(this, globalCtx);
    func_80B3D3F0(this, globalCtx);
    func_80B3E014(this);
}

void func_80B3E738(EnXc* this, GlobalContext* globalCtx) {
    func_80B3D730(this);
    func_80B3C4B0(this);
    func_80B3C468(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B3CE84(this, globalCtx);
    func_80B3D3F0(this, globalCtx);
    func_80B3E0BC(this);
}

void func_80B3E7A0(EnXc* this, GlobalContext* globalCtx) {
    func_80B3C4B0(this);
    func_80B3C468(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B3CF04(this, globalCtx);
    func_80B3D3F0(this, globalCtx);
    func_80B3E164(this, globalCtx);
}

void func_80B3E804(EnXc* this, GlobalContext* globalCtx) {
    func_80B3C4B0(this);
    func_80B3C468(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B3D3F0(this, globalCtx);
    func_80B3E1B8(this, globalCtx);
}

void func_80B3E85C(EnXc* this, GlobalContext* globalCtx) {
    func_80B3D3F0(this, globalCtx);
}

void func_80B3E87C(Gfx** dList, EnXc* this) {
    f32 currentFrame = this->skelAnime.animCurrentFrame;

    if (currentFrame >= 34.0f) {
        *dList = &D_06011150;
    }
}
s32 func_80B3E8AC(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    EnXc* this = THIS;

    if (limbIndex == 12) {
        func_80B3E87C(dList, this);
    }

    return 0;
}

s32 func_80B3E8E4(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    EnXc* this = THIS;

    if (limbIndex == 12) {
        *dList = &D_06011150;
    }

    return 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3E908.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3EA7C.s")

void func_80B3EBF0(EnXc* this, GlobalContext* globalCtx) {
    this->action = 20;
}

void func_80B3EC00(EnXc* this) {
    this->action = 21;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3EC0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3EC90.s")

void func_80B3ECD8(EnXc* this) {
    this->timer++;
    if (this->timer >= 12.0f) {
        this->actor.speedXZ = kREG(2) * 0.01f + 1.2f;
        this->action = 24;
    }
}

void func_80B3ED48(EnXc* this, GlobalContext* globalCtx) {
    func_80B3EC00(this);
}

void func_80B3ED68(EnXc* this, GlobalContext* globalCtx) {
    func_80B3EC0C(this, globalCtx);
}

void func_80B3ED88(EnXc* this, GlobalContext* globalCtx) {
    func_80B3C4B0(this);
    func_80B3C468(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B3EC90(this, globalCtx);
}

void func_80B3EDCC(EnXc* this, GlobalContext* globalCtx) {
    func_80B3D6F0(this);
    func_80B3C4B0(this);
    func_80B3C468(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B3CE84(this, globalCtx);
    func_80B3ECD8(this);
}

void func_80B3EE28(EnXc* this, GlobalContext* globalCtx) {
}

void func_80B3EE34(EnXc* this, GlobalContext* globalCtx) {
}

void func_80B3EE40(EnXc* this, GlobalContext* globalCtx) {
}

void func_80B3EE4C(EnXc* this, GlobalContext* globalCtx) {
}

void func_80B3EE58(EnXc* this, GlobalContext* globalCtx) {
}

void func_80B3EE64(EnXc* this, GlobalContext* globalCtx) {
    this->action = 29;
}

void func_80B3EE74(EnXc* this, GlobalContext* globalCtx) {
    if (func_80B3CD98(this, globalCtx)) {
        this->action = 30;
    }
}

void func_80B3EEA4(EnXc* this) {
    func_80B3C7BC(this, 30, 31);
}

void func_80B3EEC8(EnXc* this) {
    func_80B3C7BC(this, 31, 32);
}

void func_80B3EEEC(EnXc* this) {
    func_80B3C7BC(this, 32, 33);
}

void func_80B3EF10(EnXc* this) {
    func_80B3C7BC(this, 33, 34);
}

void func_80B3EF34(EnXc* this) {
    func_80B3C7BC(this, 34, 35);
}

void func_80B3EF58(EnXc* this) {
    func_80B3C7D4(this, 35, 36, 34);
}

void func_80B3EF80(EnXc* this) {
    func_80B3C7BC(this, 36, 37);
}

void func_80B3EFA4(EnXc* this) {
    func_80B3C7BC(this, 37, 38);
}

void func_80B3EFC8(EnXc* this) {
    func_80B3C7BC(this, 38, 39);
}

void func_80B3EFEC(EnXc* this) {
    func_80B3C7BC(this, 39, 40);
}

void func_80B3F010(EnXc* this) {
    f32 xzDistFromLink = this->actor.xzDistFromLink;
    if (kREG(5) + 140.0f <= xzDistFromLink) {
        SkelAnime_ChangeAnim(&this->skelAnime, &D_06004828, 1.0f, 0.0f,
                             SkelAnime_GetFrameCount(&D_06004828.genericHeader), 0, -12.0f);
        this->action = 41;
        this->timer = 0.0f;
    }
}

void func_80B3F0B8(EnXc* this) {
    func_80B3C7BC(this, 41, 42);
}

void func_80B3F0DC(EnXc* this) {
    func_80B3C7BC(this, 42, 43);
}

void func_80B3F100(EnXc* this) {
    func_80B3C7BC(this, 43, 44);
}

void func_80B3F124(EnXc* this, GlobalContext* globalCtx) {
    func_80B3EE74(this, globalCtx);
}

void func_80B3F144(EnXc* this, GlobalContext* globalCtx) {
    func_80B3ED68(this, globalCtx);
    func_80B3EEA4(this);
}

void func_80B3F16C(EnXc* this, GlobalContext* globalCtx) {
    func_80B3E420(this, globalCtx);
    func_80B3C588(this, globalCtx, 4);
    func_80B3EEC8(this);
}

void func_80B3F1A8(EnXc* this, GlobalContext* globalCtx) {
    func_80B3E464(this, globalCtx);
    func_80B3EEEC(this);
}

void func_80B3F1D0(EnXc* this, GlobalContext* globalCtx) {
    func_80B3E4AC(this, globalCtx);
    func_80B3EF10(this);
}

void func_80B3F1F8(EnXc* this, GlobalContext* globalCtx) {
    func_80B3E4F8(this, globalCtx);
    func_80B3EF34(this);
}

void func_80B3F220(EnXc* this, GlobalContext* globalCtx) {
    func_80B3E53C(this, globalCtx);
    func_80B3EF58(this);
}

void func_80B3F248(EnXc* this, GlobalContext* globalCtx) {
    func_80B3E580(this, globalCtx);
    func_80B3EF80(this);
}

void func_80B3F270(EnXc* this, GlobalContext* globalCtx) {
    func_80B3E5C8(this, globalCtx);
    func_80B3EFA4(this);
}

void func_80B3F298(EnXc* this, GlobalContext* globalCtx) {
    func_80B3E610(this, globalCtx);
    func_80B3EFC8(this);
}

void func_80B3F2C0(EnXc* this, GlobalContext* globalCtx) {
    func_80B3E668(this, globalCtx);
    func_80B3EFEC(this);
}

void func_80B3F2E8(EnXc* this, GlobalContext* globalCtx) {
    func_80B3D710(this);
    func_80B3C4B0(this);
    func_80B3C468(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B3CE84(this, globalCtx);
    func_80B3F010(this);
}

void func_80B3F344(EnXc* this, GlobalContext* globalCtx) {
    func_80B3E738(this, globalCtx);
    func_80B3F0B8(this);
}

void func_80B3F36C(EnXc* this, GlobalContext* globalCtx) {
    func_80B3E7A0(this, globalCtx);
    func_80B3F0DC(this);
}

void func_80B3F394(EnXc* this, GlobalContext* globalCtx) {
    func_80B3E804(this, globalCtx);
    func_80B3F100(this);
}

void func_80B3F3BC(EnXc* this, GlobalContext* globalCtx) {
}

void func_80B3F3C8(EnXc* this, GlobalContext* globalCtx) {
    this->action = 45;
}

void func_80B3F3D8() {
    func_800788CC(NA_SE_PL_SKIP);
}

void func_80B3F3F8(Vec3f* src, GlobalContext* globalCtx) {
    f32 wDest[2];

    SkinMatrix_Vec3fMtxFMultXYZW(&globalCtx->mf_11D60, src, &D_80B42DA0, wDest);
    func_80078914(&D_80B42DA0, NA_SE_EV_DIVE_INTO_WATER);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F44C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F534.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F59C.s")

void func_80B3F620(EnXc* this) {
    func_80B3C7BC(this, 45, 46);
}

void func_80B3F644(EnXc* this) {
    func_80B3C7BC(this, 46, 47);
}

void func_80B3F668(EnXc* this, GlobalContext* globalCtx) {
    if (func_80B3C4F0(this, globalCtx, 4, 4)) {
        EnXc_ChangeAnimation(this, &D_06012FD0, 0, -12.0f, 1);
        this->action = 48;
        this->actor.posRot.rot.y += 0x8000;
        this->timer = 0.0f;
    }
}

void func_80B3F6DC(EnXc* this) {
    func_80B3C7BC(this, 48, 49);
}

void func_80B3F700(EnXc* this, GlobalContext* globalCtx) {
    if (func_80B3C4F0(this, globalCtx, 0x10, 4)) {
        EnXc_ChangeAnimation(this, &D_06019C30, 0, 0.0f, 0);
        this->action = 50;
    }
}

void func_80B3F754(EnXc* this, GlobalContext* globalCtx) {
    if (func_80B3C4F0(this, globalCtx, 0x16, 4)) {
        EnXc_ChangeAnimation(this, &D_0601A048, 0, 0.0f, 0);
        this->action = 51;
        func_80B3C588(this, globalCtx, 4);
    }
}

void func_80B3F7BC(EnXc* this, GlobalContext* globalCtx) {
    if (func_80B3C4F0(this, globalCtx, 9, 4)) {
        this->action = 52;
        this->drawMode = 0;
    }
}

void func_80B3F7F8(EnXc* this, GlobalContext* globalCtx) {
    func_80B3ED48(this, globalCtx);
    func_80B3F620(this);
}

void func_80B3F820(EnXc* this, GlobalContext* globalCtx) {
    func_80B3ED68(this, globalCtx);
    func_80B3F644(this);
}

void func_80B3F848(EnXc* this, GlobalContext* globalCtx) {
    func_80B3F534(globalCtx);
    func_80B3C4B0(this);
    func_80B3C468(this, globalCtx);
    func_80B3C588(this, globalCtx, 4);
    func_80B3F668(this, globalCtx);
}

void func_80B3F8A0(EnXc* this, GlobalContext* globalCtx) {
    func_80B3EDCC(this, globalCtx);
    func_80B3F6DC(this);
}

void func_80B3F8C8(EnXc* this, GlobalContext* globalCtx) {
    func_80B3D710(this);
    func_80B3C4B0(this);
    func_80B3C468(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B3CE84(this, globalCtx);
    func_80B3F700(this, globalCtx);
}

void func_80B3F928(EnXc* this, GlobalContext* globalCtx) {
    func_80B3C4B0(this);
    func_80B3C468(this, globalCtx);
    func_80B3F59C(this, globalCtx);
    func_80B3C588(this, globalCtx, 4);
    func_80B3F754(this, globalCtx);
}

void func_80B3F988(EnXc* this, GlobalContext* globalCtx) {
    func_80B3C4B0(this);
    func_80B3C468(this, globalCtx);
    func_80B3F59C(this, globalCtx);
    func_80B3C620(this, globalCtx, 4);
    func_80B3F7BC(this, globalCtx);
}

void func_80B3F9E8(EnXc* this, GlobalContext* globalCtx) {
    func_80B3F59C(this, globalCtx);
}

void func_80B3FA08(EnXc* this, GlobalContext* globalCtx) {
    this->action = 53;
    this->unk_2A4 = kREG(24) + 0x53FC;
}

void func_80B3FA2C(void) {
    func_800F3F3C(1);
}

void func_80B3FA4C(Actor* thisx, GlobalContext *globalCtx) {
    EnXc* this = THIS;

    if (this->unk_2A8) {
        s32 pad;
        Vec3f sp34;
        Vec3f sp28;
        Vec3f sp1C = D_80B41DB0;        
        f32 sp18;

        Matrix_MultVec3f(&sp1C, &sp34);
        SkinMatrix_Vec3fMtxFMultXYZW(&globalCtx->mf_11D60, &sp34, &sp28, &sp18);
        Audio_PlaySoundAtPosition(globalCtx, &sp28, 80, NA_SE_EV_TRIFORCE_MARK);
        this->unk_2A8 = 0;
    }
}

void func_80B3FAE0(EnXc* this) {
    if (func_800A56C8(&this->skelAnime, 38.0f)) {
        func_80078914(&this->actor.projectedPos, NA_SE_VO_SK_SHOUT);
        func_80B3FA2C();
    }
}

void func_80B3FB24(Actor* thisx, GlobalContext* globalCtx) {
    EnXc* this = THIS;

    if (func_80B3C4F0(this, globalCtx, 0x15, 4)) {
        this->unk_274 = 1;
        if (this->unk_2AC == 0) {
            this->unk_2AC = 1;
            this->unk_2A8 = 1;
        }
    } else if (func_80B3C4F0(this, globalCtx, 0x13, 4)) {
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

void func_80B3FF0C(EnXc *this, GlobalContext *globalCtx) {
    if (func_80B3C53C(this, globalCtx, 1, 4)) {
        CutsceneContext* csCtx = &globalCtx->csCtx;
        if (csCtx->state) {
            CsCmdActorAction* npcAction = globalCtx->csCtx.npcActions[4];
            if (npcAction) {
                PosRot* posRot = &this->actor.posRot;
                ActorShape* shape = &this->actor.shape;
                Vec3i* startPos = &npcAction->startPos;

                posRot->pos.x = startPos->x;
                posRot->pos.y = startPos->y;
                posRot->pos.z = startPos->z;
                
                posRot->rot.y = shape->rot.y = npcAction->rot.y;
            }
        }

        this->action = 54;
        this->drawMode = 1;
    }
}

extern AnimationHeader D_06001A08;

void func_80B3FFB4(EnXc *this, GlobalContext *globalCtx) {
    if (func_80B3C4F0(this, globalCtx, 10, 4)) {
        SkelAnime_ChangeAnim(&this->skelAnime, &D_06001A08, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06001A08), 2, -8.0f);
        this->action = 55;
        this->drawMode = 4;
    }
}

extern AnimationHeader D_06001D14;

void func_80B40040(EnXc* this, s32 animFinished) {
    if (animFinished) {
        SkelAnime_ChangeAnim(&this->skelAnime, &D_06001D14, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06001D14), 0, 0.0f);
        this->action = 56;
    }
}
void func_80B400AC(EnXc* this, GlobalContext* globalCtx) {
    if (func_80B3C4F0(this, globalCtx, 9, 4)) {
        Actor_Kill(&this->actor);
    }
}

void func_80B400E4(EnXc* this, GlobalContext* globalCtx) {
    func_80B3FF0C(this, globalCtx);
}

void func_80B40104(EnXc* this, GlobalContext* globalCtx) {
    func_80B3C4B0(this);
    func_80B3C468(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B3FFB4(this, globalCtx);
    func_80B3C888(this, globalCtx);
}

void func_80B4015C(EnXc* this, GlobalContext* globalCtx) {
    s32 unk = func_80B3C4B0(this);

    func_80B3C468(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B3FB24(this, globalCtx);
    func_80B3FAE0(this);
    func_80B40040(this, unk);
    func_80B3C888(this, globalCtx);
}

void func_80B401CC(EnXc* this, GlobalContext* globalCtx) {
    func_80B3C4B0(this);
    func_80B3C468(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B3FB24(this, globalCtx);
    func_80B400AC(this, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B40224.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B40248.s")

extern Gfx D_06012970[];


// draw triforce
void func_80B402C4(Actor* thisx, GlobalContext *globalCtx) {
    EnXc* this = THIS;
    s32 pad;
    s16 eyeIdx = this->eyeIdx;
    UNK_PTR eyeTexture = D_80B41D6C[eyeIdx];
    SkelAnime* skelAnime = &this->skelAnime;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    s32 pad2;

    OPEN_DISPS(gfxCtx, "../z_en_oA2_inMetamol.c", 565);
    if (this->unk_2BC != 0) {
        Mtx* mtx = (Mtx *)Graph_Alloc(gfxCtx, sizeof(Mtx));
        s32* primColor = this->triforcePrimColor;
        s32* envColor = this->triforceEnvColor;
        f32* scale = this->triforceScale;

        Matrix_Push();
        Matrix_Translate(kREG(16) + 100.0f, kREG(17) + 4460.0f, kREG(18) + 1190.0f, MTXMODE_APPLY);
        Matrix_RotateRPY(kREG(22), kREG(23), this->unk_2A4, MTXMODE_APPLY);
        Matrix_Scale(scale[0], scale[1], scale[2], MTXMODE_APPLY);
        Matrix_ToMtx(mtx, "../z_en_oA2_inMetamol.c", 602);
        Matrix_Pull();
        func_80093D84(gfxCtx);
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0x80, 255, 255, primColor[2], primColor[3]);
        gDPSetEnvColor(POLY_XLU_DISP++, 255, envColor[1], 0, 128);
        gSPMatrix(POLY_XLU_DISP++, mtx, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, D_06012970);
    }
    
    func_8002EBCC(thisx, globalCtx, 0);
    func_80093D18(globalCtx->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(eyeTexture));
    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(eyeTexture));
    SkelAnime_DrawFlexOpa(globalCtx, skelAnime->skeleton, skelAnime->limbDrawTbl, skelAnime->dListCount, func_80B40224, func_80B40248, &this->actor);
    CLOSE_DISPS(gfxCtx, "../z_en_oA2_inMetamol.c", 668);
}

void func_80B40590(EnXc* this, GlobalContext* globalCtx) {
    this->action = 57;
    this->drawMode = 5;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B405A8.s")

void func_80B4066C(EnXc* this, GlobalContext* globalCtx) {
    if (globalCtx->csCtx.frames == 1455) {
        func_800F3F3C(7);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B406A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B406F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B4070C.s")

#ifdef NON_MATCHING
void func_80B407A8(EnXc* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06018B00, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06018B00.genericHeader),
                         2, -8.0f);
    this->action = 59;
    this->drawMode = 1;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B407A8.s")
#endif

void func_80B40820(EnXc* this, GlobalContext* globalCtx) {
    s32 pad;
    SkelAnime* skelAnime = &this->skelAnime;
    f32 frameCount = SkelAnime_GetFrameCount(&D_06004828.genericHeader);
    SkelAnime_ChangeAnim(skelAnime, &D_06004828, 1.0f, 0.0f, frameCount, 0, 0.0f);
    func_80B3C588(this, globalCtx, 4);
    func_80B3C964(this, globalCtx);
    SkelAnime_ChangeAnim(skelAnime, &D_060169E8, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_060169E8.genericHeader), 2,
                         0.0f);
    this->action = 60;
    this->drawMode = 1;
    this->actor.shape.unk_14 = 0xFF;
}
void func_80B408FC(EnXc* this, GlobalContext* globalCtx) {
    s32 pad;
    SkelAnime* skelAnime = &this->skelAnime;
    f32 frameCount = SkelAnime_GetFrameCount(&D_06004828.genericHeader);
    SkelAnime_ChangeAnim(skelAnime, &D_06004828, 1.0f, 0.0f, frameCount, 0, 0.0f);
    func_80B3C588(this, globalCtx, 4);
    func_80B3C964(this, globalCtx);
    SkelAnime_ChangeAnim(skelAnime, &D_060149E4, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_060149E4.genericHeader), 2,
                         0.0f);
    this->action = 61;
    this->drawMode = 1;
    this->actor.shape.unk_14 = 0xFF;
}

void func_80B409D8(EnXc* this, GlobalContext* globalCtx) {
    s32 pad[3];
    f32 frameCount = SkelAnime_GetFrameCount(&D_06019F78.genericHeader);
    func_80B3C9DC(this);
    func_80B3C588(this, globalCtx, 4);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06019F78, 1.0f, 0.0f, frameCount, 2, 0.0f);
    this->action = 62;
    this->drawMode = 1;
    this->actor.shape.unk_14 = 0xFF;
}

void func_80B40A78(EnXc* this, GlobalContext* globalCtx) {
    s32 pad[3];
    f32 frameCount = SkelAnime_GetFrameCount(&D_06019F78.genericHeader);
    func_80B3C9DC(this);
    func_80B3C588(this, globalCtx, 4);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06019F78, 1.0f, 0.0f, frameCount, 2, 0.0f);
    this->action = 63;
    this->drawMode = 1;
    this->actor.shape.unk_14 = 0xFF;
}

void func_80B40B18(EnXc* this, GlobalContext* globalCtx) {
    s32 pad[3];
    f32 frameCount = SkelAnime_GetFrameCount(&D_06019C30.genericHeader);
    func_80B3C9DC(this);
    func_80B3C588(this, globalCtx, 4);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06019C30, 1.0f, 0.0f, frameCount, 0, 0.0f);
    this->action = 64;
    this->drawMode = 1;
    this->actor.shape.unk_14 = 0xFF;
}

void func_80B40BB4(EnXc* this, GlobalContext* globalCtx) {
    s32 pad[3];
    f32 frameCount = SkelAnime_GetFrameCount(&D_06004828.genericHeader);
    func_80B3C9DC(this);
    func_80B3C588(this, globalCtx, 4);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06004828, 1.0f, 0.0f, frameCount, 0, 0.0f);
    this->action = 65;
    this->drawMode = 1;
    this->actor.shape.unk_14 = 0xFF;
}

void func_80B40C50(EnXc* this) {
    func_80B3C7BC(this, 65, 66);
}

void func_80B40C74(EnXc* this) {
    func_80B3C7BC(this, 66, 67);
}

void func_80B40C98(EnXc* this) {
    func_80B3C7BC(this, 67, 68);
}

void func_80B40CBC(EnXc* this) {
    func_80B3C7BC(this, 68, 69);
}

void func_80B40CE0(EnXc* this) {
    func_80B3C7D4(this, 69, 70, 68);
}

void func_80B40D08(EnXc* this) {
    func_80B3C7BC(this, 70, 71);
}

void func_80B40D2C(EnXc* this) {
    func_80B3C7BC(this, 71, 72);
}

void func_80B40D50(EnXc* this) {
    func_80B3C7BC(this, 72, 73);
}

void func_80B40D74(EnXc* this) {
    func_80B3C7BC(this, 73, 74);
}

void func_80B40D98(EnXc* this) {
    f32 xzDistFromLink = this->actor.xzDistFromLink;
    if (kREG(5) + 140.0f <= xzDistFromLink) {
        SkelAnime_ChangeAnim(&this->skelAnime, &D_06004828, 1.0f, 0.0f,
                             SkelAnime_GetFrameCount(&D_06004828.genericHeader), 0, -12.0f);
        this->action = 75;
        this->timer = 0.0f;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B40E40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B40E64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B40E88.s")

#ifdef NON_MATCHING
s32 func_80B40EAC(Actor* thisx, GlobalContext* globalCtx) {
    CsCmdActorAction* npcAction = func_80B3C4D0(globalCtx, 4);

    if (npcAction) {
        u16 action;
        EnXc* this = THIS;
        s32 unk_26C;
        if (unk_26C = this->unk_26C, unk_26C != (action = npcAction->action)) {
            switch (unk_26C) {
                case 1:
                    func_80B406F8(this);
                    break;
                case 6:
                    func_80B4070C(this, globalCtx);
                    break;
                case 20:
                    func_80B407A8(this, globalCtx);
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
                    Actor_Kill(&this->actor);
                    break;
                default:
                    osSyncPrintf("En_Oa2_Stalker_Check_DemoMode:そんな動作は無い!!!!!!!!\n");
                    break;
            }

            this->unk_26C = unk_26C;
            return 1;
        }
    }

    return 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B40EAC.s")
#endif

void func_80B41000(EnXc* this, GlobalContext* globalCtx) {
    func_80B40EAC(&this->actor, globalCtx);
}

void func_80B41020(EnXc* this, GlobalContext* globalCtx) {
    func_80B3C588(this, globalCtx, 4);
    func_80B3C4B0(this);
    func_80B3C468(this, globalCtx);
    func_80B40EAC(&this->actor, globalCtx);
}

void func_80B41068(EnXc* this, GlobalContext* globalCtx) {
    func_80B3C4B0(this);
    func_80B3C468(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B40EAC(&this->actor, globalCtx);
}

void func_80B410AC(EnXc* this, GlobalContext* globalCtx) {
    func_80B406A0(this, globalCtx);
    func_80B3C4B0(this);
    EnXc_SetEyePattern(this);
    if (!func_80B40EAC(&this->actor, globalCtx)) {
        func_80B3C924(this, globalCtx);
        func_80B3C468(this, globalCtx);
    }
}

void func_80B41110(EnXc* this, GlobalContext* globalCtx) {
    func_80B3C4B0(this);
    EnXc_SetEyePattern(this);
    func_80B405A8(this);
    if (!func_80B40EAC(&this->actor, globalCtx)) {
        func_80B3C8CC(this, globalCtx);
        func_80B3C468(this, globalCtx);
    }
}

void func_80B41174(EnXc* this, GlobalContext* globalCtx) {
    func_80B3C468(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B40EAC(&this->actor, globalCtx);
}

void func_80B411AC(EnXc* this, GlobalContext* globalCtx) {
    func_80B3C4B0(this);
    func_80B4066C(this, globalCtx);
    func_80B3C468(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B40EAC(&this->actor, globalCtx);
}

void func_80B41204(EnXc* this, GlobalContext* globalCtx) {
    func_80B3C4B0(this);
    func_80B3C468(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B40EAC(&this->actor, globalCtx);
}

void func_80B41248(EnXc* this, GlobalContext* globalCtx) {
    func_80B3E420(this, globalCtx);
    func_80B3C588(this, globalCtx, 4);
    func_80B40C50(this);
}

void func_80B41284(EnXc* this, GlobalContext* globalCtx) {
    func_80B3E464(this, globalCtx);
    func_80B40C74(this);
}

void func_80B412AC(EnXc* this, GlobalContext* globalCtx) {
    func_80B3E4AC(this, globalCtx);
    func_80B40C98(this);
}

void func_80B412D4(EnXc* this, GlobalContext* globalCtx) {
    func_80B3E4F8(this, globalCtx);
    func_80B40CBC(this);
}

void func_80B412FC(EnXc* this, GlobalContext* globalCtx) {
    func_80B3E53C(this, globalCtx);
    func_80B40CE0(this);
}

void func_80B41324(EnXc* this, GlobalContext* globalCtx) {
    func_80B3E580(this, globalCtx);
    func_80B40D08(this);
}

void func_80B4134C(EnXc* this, GlobalContext* globalCtx) {
    func_80B3E5C8(this, globalCtx);
    func_80B40D2C(this);
}

void func_80B41374(EnXc* this, GlobalContext* globalCtx) {
    func_80B3E610(this, globalCtx);
    func_80B40D50(this);
}

void func_80B4139C(EnXc* this, GlobalContext* globalCtx) {
    func_80B3E668(this, globalCtx);
    func_80B40D74(this);
}

void func_80B413C4(EnXc* this, GlobalContext* globalCtx) {
    func_80B3D710(this);
    func_80B3C4B0(this);
    func_80B3C468(this, globalCtx);
    EnXc_SetEyePattern(this);
    func_80B40D98(this);
}

void func_80B41414(EnXc* this, GlobalContext* globalCtx) {
    func_80B3E738(this, globalCtx);
    func_80B40E40(this);
}

void func_80B4143C(EnXc* this, GlobalContext* globalCtx) {
    func_80B3E7A0(this, globalCtx);
    func_80B40E64(this);
}

void func_80B41464(EnXc* this, GlobalContext* globalCtx) {
    func_80B3E804(this, globalCtx);
    func_80B40E88(this);
}

void func_80B4148C(EnXc* this, GlobalContext* globalCtx) {
    Actor_Kill(&this->actor);
}

void func_80B414AC(EnXc* this, GlobalContext* globalCtx) {
    SkelAnime* skelAnime = &this->skelAnime;
    GraphicsContext* localGfxCtx = globalCtx->state.gfxCtx;
    GraphicsContext* gfxCtx = localGfxCtx;
    s32 pad;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, localGfxCtx, "../z_en_oA2_inStalker.c", 839);
    func_80093D18(gfxCtx);
    gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(&D_060058C0));
    gSPSegment(gfxCtx->polyOpa.p++, 0x09, SEGMENTED_TO_VIRTUAL(&D_060058C0));
    SkelAnime_DrawFlexOpa(globalCtx, skelAnime->skeleton, skelAnime->limbDrawTbl, skelAnime->dListCount, NULL, NULL,
                          NULL);
    Graph_CloseDisps(dispRefs, localGfxCtx, "../z_en_oA2_inStalker.c", 854);
}

void func_80B415B8(EnXc* this, GlobalContext* globalCtx) {
    if (LINK_IS_ADULT) {
        if (!(gSaveContext.eventChkInf[12] & 0x20)) {
            gSaveContext.eventChkInf[12] |= 0x20;
            globalCtx->csCtx.segment = SEGMENTED_TO_VIRTUAL(D_020046F0);
            gSaveContext.cutsceneTrigger = 1;
            func_80B3EBF0(this, globalCtx);
        } else if (!(gSaveContext.eventChkInf[5] & 0x20) && (gSaveContext.eventChkInf[4] & 0x100)) {
            gSaveContext.eventChkInf[5] |= 0x20;
            Item_Give(globalCtx, ITEM_SONG_PRELUDE);
            globalCtx->csCtx.segment = SEGMENTED_TO_VIRTUAL(D_02006D20);
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
    if (func_8002F194(this, globalCtx)) {
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
        func_8002F2F4(this, globalCtx);
    }
}

void func_80B41798(EnXc* this, GlobalContext* globalCtx) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        this->action = 79;
        this->actor.flags &= -0xA;
    }
}

void func_80B417E4(EnXc* this, GlobalContext* globalCtx) {
    func_80B3C468(this, globalCtx);
    func_80B3C22C(&this->actor, globalCtx);
    func_80B3C298(this, globalCtx);
    func_80B3C4B0(this);
    EnXc_SetEyePattern(this);
    func_80B41718(this, globalCtx);
}

void func_80B41844(EnXc* this, GlobalContext* globalCtx) {
    func_80B3C468(this, globalCtx);
    func_80B3C22C(&this->actor, globalCtx);
    func_80B3C298(this, globalCtx);
    func_80B3C4B0(this);
    EnXc_SetEyePattern(this);
    func_80B41798(this, globalCtx);
}

void EnXc_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnXc* this = THIS;
    s32 action = this->action;

    if ((action < 0) || (action >= 81) || (D_80B41DC8[action] == NULL)) {
        osSyncPrintf(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
    } else {
        D_80B41DC8[action](this, globalCtx);
    }
}

void EnXc_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnXc* this = THIS;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_06012AF0, &D_06004828, &this->limbDrawTable,
                       &this->transitionDrawTable, 17);
    func_80B3C1E0(this, globalCtx);
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

s32 func_80B41A88(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
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

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B41B0C.s")

// EnXc_DrawNothing
void func_80B41B98(EnXc* this, GlobalContext* globalCtx) {
}

void func_80B41BA4(EnXc* this, GlobalContext* globalCtx) {
    s32 pad[2];
    s16 eyeIdx = this->eyeIdx;
    UNK_PTR eyeSegment = D_80B41D6C[eyeIdx];
    SkelAnime* skelAnime = &this->skelAnime;
    GraphicsContext* localGfxCtx = globalCtx->state.gfxCtx;
    GraphicsContext* gfxCtx = localGfxCtx;

    OPEN_DISPS(gfxCtx, "../z_en_oA2.c", 1164);
    func_8002EBCC(&this->actor, globalCtx, 0);
    func_80093D18(gfxCtx);
    gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(eyeSegment));
    gSPSegment(gfxCtx->polyOpa.p++, 0x09, SEGMENTED_TO_VIRTUAL(eyeSegment));
    SkelAnime_DrawFlexOpa(globalCtx, skelAnime->skeleton, skelAnime->limbDrawTbl, skelAnime->dListCount, func_80B41A88,
                          func_80B41B0C, &this->actor);
    CLOSE_DISPS(gfxCtx, "../z_en_oA2.c", 1207);
}

void EnXc_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnXc* this = THIS;

    if (this->drawMode < 0 || this->drawMode > 5 || D_80B41F18[this->drawMode] == NULL) {
        // "DRAW MODE IS ABNORMAL!!!!!!!!!!!!!!!!!!!!!!!!!"
        osSyncPrintf(VT_FGCOL(RED) "描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
    } else {
        D_80B41F18[this->drawMode](this, globalCtx);
    }
}
