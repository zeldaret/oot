/*
 * File: z_en_zf.c
 * Overlay: ovl_En_Zf
 * Description: Lizalfos and Dinolfos
 */

#include "z_en_zf.h"

#define FLAGS 0x00000015

#define THIS ((EnZf*)thisx)

void EnZf_Init(Actor* thisx, GlobalContext* globalCtx);
void EnZf_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnZf_Update(Actor* thisx, GlobalContext* globalCtx);
void EnZf_Draw(Actor* thisx, GlobalContext* globalCtx);

s16 func_80B446A8(Vec3f* pos, s16 arg1);
void func_80B450AC(EnZf* this);
void func_80B45174(EnZf* this, GlobalContext* globalCtx);
void func_80B45384(EnZf* this);
void func_80B4543C(EnZf* this, GlobalContext* globalCtx);

// glabel D_80B4A090
//  .word 0x455E8000, 0x42C80000, 0xC4BDA000, 0x45462000, 0x42C80000, 0xC4DCE000, 0x4545D000, 0x42C80000, 0xC50A9000,
//  0x455EB000, 0x42C80000, 0xC5185000, 0x4576A000, 0x42C80000, 0xC50A9000, 0x45766000, 0x42C80000, 0xC4DCA000,
//  0x4532D000, 0x42C80000, 0xC515A000, 0x452D8000, 0x42C80000, 0xC4F86000, 0x458D7800, 0x4404C000, 0xC48F4000,
//  0x458AD000, 0x4404C000, 0xC4AFA000, 0x45825000, 0x4404C000, 0xC4AE6000, 0x457BE000, 0x4404C000, 0xC4914000,
//  0x457AA000, 0x4404C000, 0xC45CC000, 0x45857000, 0x4404C000, 0xC44A8000, 0x458D4000, 0x4404C000, 0xC45C0000,
//  0x45852000, 0x4404C000, 0xC4816000, 0x4594A800, 0x4404C000, 0xC48F4000, 0x4570A000, 0x4404C000, 0xC45CC000,
//  0x4588E000, 0x4404C000, 0xC42C8000, 0x45832800, 0x4404C000, 0xC4218000, 0x457E6000, 0x4404C000, 0xC4C4E000,
//  0x4575A000, 0x4404C000, 0xC4D52000, 0x456C4000, 0x4404C000, 0xC4E56000, 0x455E8000, 0x4404C000, 0xC4F82000

// glabel D_80B4A1B0
//  .word 0x00000000

extern s16 D_80B4A1B4;
// glabel D_80B4A1B4
//  .word 0x00010000

/*
const ActorInit En_Zf_InitVars = {
    ACTOR_EN_ZF,
    ACTORCAT_ENEMY,
    FLAGS,
    OBJECT_ZF,
    sizeof(EnZf),
    (ActorFunc)EnZf_Init,
    (ActorFunc)EnZf_Destroy,
    (ActorFunc)EnZf_Update,
    (ActorFunc)EnZf_Draw,
};

static ColliderCylinderInit D_80B4A1D8 = {
    {
        COLTYPE_HIT0,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_PLAYER,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK1,
        { 0x00000000, 0x00, 0x00 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_ON,
    },
    { 20, 70, 0, { 0, 0, 0 } },
};

static ColliderQuadInit D_80B4A204 = {
    {
        COLTYPE_NONE,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_HARD | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_NONE,
        COLSHAPE_QUAD,
    },
    {
        ELEMTYPE_UNK0,
        { 0xFFCFFFFF, 0x00, 0x08 },
        { 0x00000000, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_NORMAL | TOUCH_UNK7,
        BUMP_ON,
        OCELEM_NONE,
    },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};
*/

extern ColliderCylinderInit D_80B4A1D8;
extern ColliderQuadInit D_80B4A204;

extern DamageTable D_80B4A254;
// static DamageTable D_80B4A254 = {
//     /* Deku nut      */ DMG_ENTRY(0 , 0x1),
//     /* Deku stick    */ DMG_ENTRY(2 , 0x0),
//     /* Slingshot     */ DMG_ENTRY(1 , 0xD),
//     /* Explosive     */ DMG_ENTRY(2 , 0x0),
//     /* Boomerang     */ DMG_ENTRY(0 , 0x1),
//     /* Normal arrow  */ DMG_ENTRY(2 , 0x0),
//     /* Hammer swing  */ DMG_ENTRY(2 , 0x0),
//     /* Hookshot      */ DMG_ENTRY(0 , 0x1),
//     /* Kokiri sword  */ DMG_ENTRY(1 , 0x0),
//     /* Master sword  */ DMG_ENTRY(2 , 0x0),
//     /* Giant's Knife */ DMG_ENTRY(4 , 0x0),
//     /* Fire arrow    */ DMG_ENTRY(2 , 0xD),
//     /* Ice arrow     */ DMG_ENTRY(4 , 0xF),
//     /* Light arrow   */ DMG_ENTRY(2 , 0xD),
//     /* Unk arrow 1   */ DMG_ENTRY(2 , 0xD),
//     /* Unk arrow 2   */ DMG_ENTRY(2 , 0xD),
//     /* Unk arrow 3   */ DMG_ENTRY(2 , 0xD),
//     /* Fire magic    */ DMG_ENTRY(0 , 0x6),
//     /* Ice magic     */ DMG_ENTRY(3 , 0xF),
//     /* Light magic   */ DMG_ENTRY(0 , 0x6),
//     /* Shield        */ DMG_ENTRY(0 , 0x0),
//     /* Mirror Ray    */ DMG_ENTRY(0 , 0x0),
//     /* Kokiri spin   */ DMG_ENTRY(1 , 0x0),
//     /* Giant spin    */ DMG_ENTRY(4 , 0x0),
//     /* Master spin   */ DMG_ENTRY(2 , 0x0),
//     /* Kokiri jump   */ DMG_ENTRY(2 , 0x0),
//     /* Giant jump    */ DMG_ENTRY(8 , 0x0),
//     /* Master jump   */ DMG_ENTRY(4 , 0x0),
//     /* Unknown 1     */ DMG_ENTRY(0 , 0x0),
//     /* Unblockable   */ DMG_ENTRY(0 , 0x0),
//     /* Hammer jump   */ DMG_ENTRY(4 , 0x0),
//     /* Unknown 2     */ DMG_ENTRY(0 , 0x0),
// };

extern InitChainEntry D_80B4A274[];
// static InitChainEntry sInitChain[] = {
//     ICHAIN_F32(targetArrowOffset, 2000, ICHAIN_CONTINUE),
//     ICHAIN_VEC3F_DIV1000(scale, 15, ICHAIN_CONTINUE),
//     ICHAIN_F32_DIV1000(gravity, -3500, ICHAIN_STOP),
// };

// glabel D_80B4A280
//  .word 0x0601081C, 0x06010CAC, 0x06011070, 0x44898000, 0xC42F0000, 0x00000000

extern Vec3f D_80B4A298;
// static Vec3f D_80B4A298 = { 300.0f, 0.0f, 0.0f };

extern Vec3f D_80B4A2A4;
// static Vec3f D_80B4A2A4 = { 300.0f, -1700.0f, 0.0f };

extern Vec3f D_80B4A2B0;
// static Vec3f D_80B4A2B0 = { -600.0f, 300.0f, 0.0f };

extern Vec3f D_80B4A2BC;
// static Vec3f D_80B4A2BC = { 0.0f, 1500.0f, 0.0f };

extern Vec3f D_80B4A2C8;
// static Vec3f D_80B4A2C8 = { -600.0f, -3000.0f, 1000.0f };

extern Vec3f D_80B4A2D4;
// static Vec3f D_80B4A2D4 = { -600.0f, -3000.0f, -1000.0f };

extern Vec3f D_80B4A2E0;
// static Vec3f D_80B4A2E0 = { 1500.0f, -3000.0f, 0.0f };

extern Vec3f D_80B4A2EC;
// static Vec3f D_80B4A2EC = { 0.0f, 0.0f, 0.0f };

extern Gfx D_80B4A2F8[];
// glabel D_80B4A2F8
//  .word 0xD7000002, 0x0A000A00, 0xDF000000, 0x00000000, 0x00000000, 0x00000000

extern SkeletonHeader D_06006690;
extern UNK_TYPE D_06008138;
extern UNK_TYPE D_06008C6C;
extern AnimationHeader D_06009530;
extern UNK_TYPE D_0600A3D4;
extern AnimationHeader D_0600B10C;
extern Gfx D_0600E198[];
extern Gfx D_06010060[];
extern SkeletonHeader D_060104B8;
extern UNK_TYPE D_060119F4;
extern UNK_TYPE D_0601366C;
extern UNK_TYPE D_06014E60;
extern UNK_TYPE D_060157F8;
extern UNK_TYPE D_06016388;

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B44050.s")
void func_80B44050(EnZf* this, EnZfActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B44058.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B441C4.s")

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/EnZf_Init.s")
void EnZf_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnZf* this = THIS;
    Player* player = PLAYER;
    EffectBlureInit1 blureInit;
    f32 posDiff;

    Actor_ProcessInitChain(thisx, D_80B4A274);
    thisx->targetMode = 3;
    this->unk_3FC = (s32)(thisx->params & 0xFF00) >> 8;
    thisx->params &= 0xFF;

    if (thisx->params & 0x80) {
        thisx->params |= 0xFF00;
    }

    ActorShape_Init(&thisx->shape, 0.0f, ActorShadow_DrawFeet, 90.0f);
    this->unk_3E0 = 0;
    thisx->colChkInfo.mass = MASS_HEAVY;
    thisx->colChkInfo.damageTable = &D_80B4A254;

    blureInit.p1StartColor[0] = blureInit.p1StartColor[1] = blureInit.p1StartColor[2] = blureInit.p1StartColor[3] =
        blureInit.p2StartColor[0] = blureInit.p2StartColor[1] = blureInit.p2StartColor[2] = blureInit.p1EndColor[0] =
            blureInit.p1EndColor[1] = blureInit.p1EndColor[2] = blureInit.p2EndColor[0] = blureInit.p2EndColor[1] =
                blureInit.p2EndColor[2] = 255;
    blureInit.p2StartColor[3] = 64;
    blureInit.p1EndColor[3] = blureInit.p2EndColor[3] = 0;
    blureInit.elemDuration = 8;
    blureInit.unkFlag = 0;
    blureInit.calcMode = 2;

    Effect_Add(globalCtx, &this->blureIndex, EFFECT_BLURE1, 0, 0, &blureInit);

    Actor_UpdateBgCheckInfo(globalCtx, thisx, 75.0f, 45.0f, 45.0f, 0x1D);

    this->unk_404.r = 0xFF;
    thisx->colChkInfo.cylRadius = 40;
    thisx->colChkInfo.cylHeight = 100;
    Collider_InitCylinder(globalCtx, &this->bodyCollider);
    Collider_SetCylinder(globalCtx, &this->bodyCollider, thisx, &D_80B4A1D8);
    Collider_InitQuad(globalCtx, &this->swordCollider);
    Collider_SetQuad(globalCtx, &this->swordCollider, thisx, &D_80B4A204);

    if (thisx->params == -2) { // Dinalfos
        thisx->colChkInfo.health = 12;
        thisx->naviEnemyId = 0x10;
        SkelAnime_Init(globalCtx, &this->skelAnime, &D_06006690, &D_0600B10C, this->jointTable, this->morphTable, 49);
    } else { // Lizalfos
        thisx->colChkInfo.health = 6;
        thisx->naviEnemyId = 0xF;
        SkelAnime_Init(globalCtx, &this->skelAnime, &D_060104B8, &D_0600B10C, this->jointTable, this->morphTable, 49);
    }

    if (thisx->params < 0) {
        this->unk_400 = this->unk_3FE = -1;
        D_80B4A1B4 = -1;
        this->unk_3E4 = 1;
        if (thisx->params == -1) {
            func_80B450AC(this);
        } else {
            func_80B45384(this);
        }
    } else {
        posDiff = player->actor.world.pos.y - thisx->world.pos.y;

        if ((ABS(posDiff) <= 100.0f) && !Flags_GetSwitch(globalCtx, this->unk_3FC)) {
            this->unk_400 = this->unk_3FE = func_80B446A8(&thisx->world.pos, 0);
            func_80B450AC(this);
            D_80B4A1B4 = 1;
        } else {
            Actor_Kill(thisx);
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/EnZf_Destroy.s")
void EnZf_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnZf* this = THIS;

    if ((this->actor.params >= 0) &&
        (Actor_FindNearby(globalCtx, &this->actor, ACTOR_EN_ZF, ACTORCAT_ENEMY, 10000.0f) == NULL)) {
        func_800F5B58();
    }
    Effect_Delete(globalCtx, this->blureIndex);
    Collider_DestroyCylinder(globalCtx, &this->bodyCollider);
    Collider_DestroyQuad(globalCtx, &this->swordCollider);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B446A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B44870.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B44B14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B44CF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B44DC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B44E8C.s")

void func_80B450AC(EnZf* this);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B450AC.s")
/* void func_80B450AC(EnZf *this) {
    Animation_Change(&this->skelAnime, &D_06009530, 0.0f, 9.0f, Animation_GetLastFrame(&D_06009530), ANIMMODE_LOOP,
0.0f);

    this->actor.world.pos.y = this->actor.floorHeight + 300.0f;
    this->actor.shape.shadowAlpha = 0;
    this->unk_404 = 0;
    this->unk_3F0 = 0xA;
    this->unk_3E4 = 1;
    this->unk_3DC = 0;
    this->actor.bgCheckFlags &= ~2;
    this->actor.flags &= ~1;
    this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;
    func_80B44050(this, func_80B45174);
} */

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B45174.s")

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B45384.s")
void func_80B45384(EnZf* this) {
    Animation_Change(&this->skelAnime, &D_0600B10C, 1.0f, 0.0f, Animation_GetLastFrame(&D_0600B10C), 1, -4.0f);
    this->unk_3DC = 3;
    this->unk_3F0 = (Rand_ZeroOne() * 10.0f) + 5.0f;
    this->actor.speedXZ = 0.0f;
    this->actor.world.rot.y = this->actor.shape.rot.y;
    func_80B44050(this, func_80B4543C);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B4543C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B456B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B45748.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B45E30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B45EF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B4604C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B46098.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B462E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B463E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B46A24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B46AE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B46D64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B46DD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B46E8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B46F2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B47050.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B47120.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B47360.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B4743C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B474E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B47544.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B4779C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B4781C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B47C64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B47CF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B47DA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B47EB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B48210.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B482B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B483E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B48578.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B48CEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B48E50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B48F90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B490B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/EnZf_Update.s")

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B495FC.s")
// s32 func_80B495FC(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
//                                 void* thisx, Gfx** gfx);
s32 func_80B495FC(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx,
                  Gfx** gfx) {
    EnZf* this = THIS;

    switch (limbIndex) {
        case 5:
            rot->y -= this->unk_3EC;
            break;
        case 15:
            if (this->unk_3FA != 0) {
                *dList = D_0600E198;
            }
            break;
        case 33:
            if (this->unk_3FA != 0) {
                *dList = D_06010060;
            }
            break;
        default:
            break;
    }

    return false;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B49688.s")
// void func_80B49688(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx, Gfx** gfx);
void func_80B49688(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx, Gfx** gfx) {
    Vec3f sp54;
    Vec3f sp48;
    EnZf* this = THIS;
    s32 phi_s1 = -1;

    if (limbIndex == 15) {
        Matrix_MultVec3f(&D_80B4A2BC, &this->swordCollider.dim.quad[1]);
        Matrix_MultVec3f(&D_80B4A2C8, &this->swordCollider.dim.quad[0]);
        Matrix_MultVec3f(&D_80B4A2D4, &this->swordCollider.dim.quad[3]);
        Matrix_MultVec3f(&D_80B4A2E0, &this->swordCollider.dim.quad[2]);
        Collider_SetQuadVertices(&this->swordCollider, &this->swordCollider.dim.quad[0],
                                 &this->swordCollider.dim.quad[1], &this->swordCollider.dim.quad[2],
                                 &this->swordCollider.dim.quad[3]);
        Matrix_MultVec3f(&D_80B4A2A4, &sp54);
        Matrix_MultVec3f(&D_80B4A2B0, &sp48);

        if (this->unk_3DC == 9) {
            if (this->skelAnime.curFrame < 14.0f) {
                EffectBlure_AddSpace(Effect_GetByIndex(this->blureIndex));
            } else if (this->skelAnime.curFrame < 20.0f) {
                EffectBlure_AddVertex(Effect_GetByIndex(this->blureIndex), &sp54, &sp48);
            }
        }
    } else {
        Actor_SetFeetPos(&this->actor, limbIndex, 45, &D_80B4A298, 38, &D_80B4A298);
    }

    switch (limbIndex) {
        case 45:
        Matrix_MultVec3f(&D_80B4A298, &this->unk_4F0);
        break;
        case 38:
        Matrix_MultVec3f(&D_80B4A298, &this->unk_4E4);
        break;
    }
    // if (limbIndex == 38) {
    //     Matrix_MultVec3f(&D_80B4A298, &this->unk_4F0);
    // } else if (limbIndex == 45) {
    //     Matrix_MultVec3f(&D_80B4A298, &this->unk_4E4);
    // }

    if (this->unk_3F6 != 0) {
        switch (limbIndex) {
            case 9:
                phi_s1 = 0;
                break;
            case 10:
                phi_s1 = 1;
                break;
            case 25:
                phi_s1 = 2;
                break;
            case 16:
                phi_s1 = 3;
                break;
            case 23:
                phi_s1 = 4;
                break;
            case 48:
                phi_s1 = 5;
                break;
            case 14:
                phi_s1 = 6;
                break;
            case 39:
                phi_s1 = 7;
                break;
            case 43:
                phi_s1 = 8;
                break;
            default:
                break;
        }
    if (phi_s1 >= 0) {
        Matrix_MultVec3f(&D_80B4A2EC, &this->unk_4FC[phi_s1]);
    }
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/EnZf_Draw.s")
/* void EnZf_Draw(Actor *thisx, GlobalContext *globalCtx) {
    EnZf* this = THIS;
    Gfx *sp64;
    GameInfo *temp_v0;
    Gfx *temp_v0_2;
    Gfx *temp_v0_3;
    Gfx *temp_v0_4;
    Gfx *temp_v0_5;
    Gfx *temp_v0_6;
    Gfx *temp_v0_7;
    GraphicsContext *temp_a1;
    GraphicsContext *temp_s1;
    s16 temp_v1;

    temp_a1 = globalCtx->state.gfxCtx;
    temp_s1 = temp_a1;


    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_zf.c", 3533);


    func_8002EBCC(&this->actor, globalCtx, 1);
    // D_80B4A2F8.unk0 = 0xD7000002;

    // temp_v0 = gGameInfo;
    // D_80B4A2F8.unk4 = (s32) ((temp_v0->data[865] & 0xFFFF) | (temp_v0->data[864] << 0x10));
    D_80B4A2F8 = { gsSPTexture(gGameInfo->data[864], gGameInfo->data[865], 0, G_TX_RENDERTILE, G_ON), };

    // temp_v0_2 = temp_s1->polyOpa.p;
    // temp_s1->polyOpa.p = temp_v0_2 + 8;
    // temp_v0_2->words.w1 = (u32) &D_80B4A2F8;
    // temp_v0_2->words.w0 = 0xDB060020;
    gSPSegment(POLY_OPA_DISP++, 0x08, D_80B4A2F8);

    if (this->unk_404.r == 0xFF) {
        func_80093D18(globalCtx->state.gfxCtx);

        // temp_v0_3 = temp_s1->polyOpa.p;
        // temp_s1->polyOpa.p = temp_v0_3 + 8;
        // temp_v0_3->words.w0 = 0xFB000000;
        // temp_v0_3->words.w1 = (u32) this->unk_404;
        gDPSetEnvColor(POLY_OPA_DISP++, this->unk_404.r, this->unk_404.g, this->unk_404.b, this->unk_404.a);

        // temp_v0_4 = temp_s1->polyOpa.p;
        // temp_s1->polyOpa.p = temp_v0_4 + 8;
        // temp_v0_4->words.w1 = (u32) (D_80116280 + 0x10);
        // temp_v0_4->words.w0 = 0xDB060024;
        gSPSegment(POLY_OPA_DISP++, 0x09, D_80116280 + 0x10);

        POLY_OPA_DISP = SkelAnime_Draw(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, func_80B495FC,
func_80B49688, this, POLY_OPA_DISP);

        if (this->unk_3F6 != 0) {
            this->unk_3F6--;
            temp_v1 = this->unk_3F6;
            this->actor.colorFilterTimer++;
            if ((temp_v1 & 3) == 0) {
                EffectSsEnIce_SpawnFlyingVec3f(globalCtx, &this->actor, this + (((s32) temp_v1 >> 2) * 0xC) + 0x4FC,
150, 150, 150, 250, 235, 245, 255, 1.4f);
            }
        }
    } else {
        func_80093D84(globalCtx->state.gfxCtx);

        // temp_v0_5 = temp_s1->polyXlu.p;
        // temp_s1->polyXlu.p = temp_v0_5 + 8;
        // temp_v0_5->words.w1 = 0;
        // temp_v0_5->words.w0 = 0xE7000000;
        gDPPipeSync(POLY_XLU_DISP++);

        // temp_v0_6 = temp_s1->polyXlu.p;
        // temp_s1->polyXlu.p = temp_v0_6 + 8;
        // temp_v0_6->words.w0 = 0xFB000000;
        // temp_v0_6->words.w1 = (u32) this->unk_404;
        gDPSetEnvColor(POLY_XLU_DISP++, this->unk_404.r, this->unk_404.g, this->unk_404.b, this->unk_404.a);

        // temp_v0_7 = temp_s1->polyXlu.p;
        // temp_s1->polyXlu.p = temp_v0_7 + 8;
        // temp_v0_7->words.w1 = (u32) D_80116280;
        // temp_v0_7->words.w0 = 0xDB060024;
        gSPSegment(POLY_XLU_DISP++, 0x09, D_80116280);

        POLY_XLU_DISP = SkelAnime_Draw(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, func_80B495FC,
func_80B49688, this, POLY_XLU_DISP);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_zf.c", 3601);
} */

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B49B60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B49C2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B49E4C.s")
