#include "z_en_mb.h"

#define FLAGS 0x00000015

#define THIS ((EnMb*)thisx)

void EnMb_Init(Actor* thisx, GlobalContext* globalCtx);
void EnMb_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnMb_Update(Actor* thisx, GlobalContext* globalCtx);
void EnMb_Draw(Actor* thisx, GlobalContext* globalCtx);

const ActorInit En_Mb_InitVars = {
    ACTOR_EN_MB,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_MB,
    sizeof(EnMb),
    (ActorFunc)EnMb_Init,
    (ActorFunc)EnMb_Destroy,
    (ActorFunc)EnMb_Update,
    (ActorFunc)EnMb_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK0, 0x00, 0x09, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x01, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 20, 70, 0, { 0, 0, 0 } },
};

static ColliderTrisItemInit sTrisItemsInit[2] = {
    {
        { 0x02, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x0D, 0x00 },
        { { { -10.0f, 14.0f, 2.0f }, { -10.0f, -6.0f, 2.0f }, { 9.0f, 14.0f, 2.0f } } },
    },
    {
        { 0x02, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x0D, 0x00 },
        { { { -10.0f, -6.0f, 2.0f }, { 9.0f, -6.0f, 2.0f }, { 9.0f, 14.0f, 2.0f } } },
    },
};

static ColliderTrisInit sTrisInit = {
    { COLTYPE_METAL_SHIELD, 0x00, 0x0D, 0x00, 0x00, COLSHAPE_TRIS },
    2,
    sTrisItemsInit,
};

static ColliderQuadInit sQuadInit = {
    { COLTYPE_UNK10, 0x11, 0x00, 0x00, 0x00, COLSHAPE_QUAD },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x08 }, { 0x00000000, 0x00, 0x00 }, 0x01, 0x00, 0x00 },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};

static DamageTable sDamageTable[] = {
    0x50, 0xF2, 0xF1, 0xF2, 0x10, 0xF2, 0xF2, 0xF2, 0xF1, 0xF2, 0xF4, 0xF2, 0x64, 0xF2, 0xF4, 0xF2,
    0xF2, 0x50, 0x63, 0x50, 0x00, 0x00, 0xF1, 0xF4, 0xF2, 0xF2, 0xF8, 0xF4, 0x50, 0x00, 0xF4, 0x00,
};

static DamageTable sDamageTable2[] = {
    0x50, 0xF2, 0x00, 0xF2, 0x00, 0xF2, 0xF2, 0x10, 0xF1, 0xF2, 0xF4, 0xF2, 0x64, 0xF2, 0xF4, 0xF2,
    0xF2, 0x50, 0x63, 0x50, 0x00, 0x00, 0xF1, 0xF4, 0xF2, 0xF2, 0xF8, 0xF4, 0x50, 0x00, 0xF4, 0x00,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_S8(naviEnemyId, 74, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, 64536, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 5300, ICHAIN_STOP),
};

Vec3f D_80AA9D50 = {
    // 0Vec
    0.0f,
    0.0f,
    0.0f,
};

Vec3f D_80AA9D5C = {
    // 18,18,0
    18.0f,
    18.0f,
    0.0f,
};

/*s32 D_80AA9D68[] = {
    0x001400028,
    0x000000000,
};*/

typedef struct {
    /* 0x0 */ s16 unk_0;
    /* 0x2 */ s16 unk_2;
    /* 0x4 */ u16 unk_4;
} struct_80AA9D68;

struct_80AA9D68 D_80AA9D68 = {
    0x0014,
    0x0028,
    0x0000,
};

typedef struct {
    s16 unk_0;
    s16 unk_2;
    s16 unk_4;
} struct_80AA9D70;

struct_80AA9D70 D_80AA9D70 = {
    0xF63C,
    0x0000,
    0x0DAC,
};

// ZeroVec
static Vec3f D_80AA9D78 = {
    0.0f,
    0.0f,
    0.0f,
};

static Vec3f D_80AA9D84 = {
    0x00000000,
    0x00000000,
    0x00000000,
};

s32 D_80AA9D90[] = {
    0x447A0000,
    0x44BB8000,
    0x00000000,
};

s32 D_80AA9D9C[] = {
    0xC47A0000,
    0x44BB8000,
    0x00000000,
};

s32 D_80AA9DA8[] = {
    0x447A0000,
    0x44BB8000,
    0x458CA000,
};

s32 D_80AA9DB4[] = {
    0xC47A0000,
    0x44BB8000,
    0x458CA000,
};

s32 D_80AA9DC0[] = {
    0x447A0000,
    0x00000000,
    0x00000000,
};

s32 D_80AA9DCC[] = {
    0x447A0000,
    0x00000000,
    0x00000000,
};

s32 D_80AA9DD8[] = {
    0x447A0000,
    0xC5FA0000,
    0xC4BB8000,
};

s32 D_80AA9DE4[] = {
    0x447A0000, 0xC60CA000, 0x44FA0000, 0x44898000, 0xC42F0000, 0x00000000,
};

s32 D_80AA9DFC[] = {
    0x00000000,
    0x00000000,
    0x00000000,
};

s32 D_80AA9E08[] = { 0x00000000, 0xC5FA0000, 0x00000000 };

s32 D_80AA9E14[] = {
    0x00000000,
    0x00000000,
    0x00000000,
};

s32 D_80AA9E20[] = {
    0x457A0000, 0x45DAC000, 0x455AC000, 0x457A0000, 0x00000000, 0x455AC000, 0xC57A0000, 0x45DAC000, 0x455AC000,
};

s32 D_80AA9E44[] = { 0xC57A0000, 0x45DAC000, 0x455AC000, 0xC57A0000, 0x00000000, 0x455AC000,
                     0x457A0000, 0x00000000, 0x455AC000, 0x00000000, 0x00000000 };

extern SkeletonHeader D_06008F38;    // D_06008F38
extern AnimationHeader animEnMbWait; // D_060028E0
extern SkeletonHeader D_06014190;
extern AnimationHeader D_0600EBE4;
extern AnimationHeader animEnMbLookLeftandRight; // D_060041A8
extern AnimationHeader animEnMbWalk;             // D_06009FC0
extern AnimationHeader animEnMbReadyCharge;      // D_06002C10
extern AnimationHeader animEnMbCharge;           // D_06002F10
extern AnimationHeader D_06009280;
extern AnimationHeader D_06001950;
extern AnimationHeader D_0600BE58;
extern AnimationHeader D_0600D5D4;
extern AnimationHeader D_0600E18C;
extern AnimationHeader D_0600B4BC;
extern AnimationHeader D_0600ABE0;
extern AnimationHeader animEnMbFallBack; // D_060016B4
extern AnimationHeader D_060041A8;

void func_80AA68FC(EnMb* this, GlobalContext* globalCtx);
void func_80AA6898(EnMb* this);
void func_80AA7134(EnMb* this, GlobalContext* globalCtx);
void func_80AA6830(EnMb* this);
void func_80AA6974(EnMb* this);
void func_80AA87D8(EnMb* this, GlobalContext* globalCtx);
void func_80AA77D0(EnMb* this, GlobalContext* globalCtx);
void func_80AA7CAC(EnMb* this, GlobalContext* globalCtx);
void func_80AA7310(EnMb* this, GlobalContext* globalCtx);
void func_80AA702C(EnMb* this, GlobalContext* globalCtx);
void func_80AA8514(EnMb* this, GlobalContext* globalCtx);
void func_80AA840C(EnMb* this, GlobalContext* globalCtx);
void func_80AA8DD8(EnMb* this, GlobalContext* globalCtx);
void func_80AA7938(EnMb* this, GlobalContext* globalCtx);
void func_80AA90A0(EnMb* this, GlobalContext* globalCtx);
void func_80AA8FC8(EnMb* this);
void func_80AA71AC(EnMb* this, GlobalContext globalCtx);

void func_80AA6050(EnMb* this, EnMbActionFunc actionFunc) { // Setup Action Func
    this->actionFunc = actionFunc;
}

void EnMb_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 phi_v1;
    s16 temp_a0_2;
    Player* player = PLAYER;
    EnMb* this = THIS;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 46.0f);
    this->actor.colChkInfo.mass = 0xFF;
    this->actor.colChkInfo.damageTable = sDamageTable;
    Collider_InitCylinder(globalCtx, &this->collider1);
    Collider_SetCylinder(globalCtx, &this->collider1, &this->actor, &sCylinderInit);
    Collider_InitTris(globalCtx, &this->collider3);
    Collider_SetTris(globalCtx, &this->collider3, &this->actor, &sTrisInit, this->collider3Items);
    Collider_InitQuad(globalCtx, &this->collider2);
    Collider_SetQuad(globalCtx, &this->collider2, &this->actor, &sQuadInit);
    phi_v1 = this->actor.params;
    switch (phi_v1 + 1) {
        case 0:
            SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06008F38, &animEnMbWait, &this->limbDrawTable,
                             &this->transitionDrawTable, 28);
            this->actor.colChkInfo.health = 2;
            this->actor.colChkInfo.mass = 0xFE;
            this->unk_360 = 1000.0f;
            this->unk_364 = 1750.0f;
            func_80AA6830(this);
            return;
        case 1: // Pounding ground
            SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06014190, &D_0600EBE4, &this->limbDrawTable,
                             &this->transitionDrawTable, 28);
            this->actor.colChkInfo.health = 6;
            this->actor.colChkInfo.mass = 0xFF;
            this->actor.colChkInfo.damageTable = &sDamageTable2;
            Actor_SetScale(&this->actor, 0.02f);
            this->collider1.dim.height = 0xAA;
            this->collider1.dim.radius = 0x2D;
            this->actor.uncullZoneForward = 4000.0f;
            this->actor.uncullZoneScale = 800.0f;
            this->actor.uncullZoneDownward = 1800.0f;
            this->unk_364 = 710.0f;
            this->collider2.body.toucher.flags = 0x20000000;
            temp_a0_2 = (this->actor.posRot.rot.y - Math_Vec3f_Yaw(&this->actor.posRot, &player->actor.posRot));
            if (temp_a0_2 >= 0) {
                phi_v1 = temp_a0_2;
            } else {
                phi_v1 = 0 - temp_a0_2;
            }
            if (phi_v1 >= 0x4001) {
                this->actor.posRot.rot.y = thisx->posRot.rot.y + 0x8000;
                this->actor.shape.rot.y = thisx->posRot.rot.y;
                this->actor.posRot.pos.z = thisx->posRot.pos.z + 600.0f;
            }
            ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Teardrop, 90.0f);
            this->actor.flags &= -2;
            this->actor.naviEnemyId++;
            func_80AA6898(this);
            return;
    }

    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06008F38, &animEnMbWait, &this->limbDrawTable,
                     &this->transitionDrawTable, 28);
    Actor_SetScale(&this->actor, 0.014f);
    this->unk_35D = (thisx->params & 0xFF00) >> 8;
    this->actor.params = 1;
    this->unk_35C = 0;
    this->actor.colChkInfo.health = 1;
    this->actor.colChkInfo.mass = 0xFE;
    this->unk_360 = 350.0f;
    this->unk_364 = 1750.0f;
    this->actor.flags &= -2;
    func_80AA68FC(this, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/EnMb_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6408.s")

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6444.s")
void func_80AA6444(EnMb* this, GlobalContext* globalCtx) {//Setup path
    Path* path;
    Vec3s* pathPos;
    s8 temp;

    path = &globalCtx->setupPathList[this->unk_35D];

    if (this->unk_35C == 0) {
        this->unk_35E = 1;
    } else {
        temp = path->count - 1;
        if (temp == this->unk_35C) {
            this->unk_35E = -1;
        }
    }
    this->unk_35C += this->unk_35E;
    pathPos =((gSegments[(u32) ((s32) path->points * 0x10) >> 0x1C] + ((s32) path->points & 0xFFFFFF)) + (this->unk_35C * 6)) + 0x80000000;
    //pathPos = SEGMENTED_TO_VIRTUAL(path->points);
    //pathPos += this->unk_35C;
    this->unk_344.x = pathPos->x;
    this->unk_344.y = pathPos->y;
    this->unk_344.z = pathPos->z;
}
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA652C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA66A0.s")

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6830.s")
void func_80AA6830(EnMb* this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &animEnMbLookLeftandRight, -4.0f);
    this->actor.speedXZ = 0.0f;
    this->unk_32A = Math_Rand_S16Offset(0x1E, 0x32);
    this->unk_320 = 6;
    func_80AA6050(this, func_80AA7134);
}

void func_80AA6898(EnMb* this) {
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_0600EBE4);
    this->actor.speedXZ = 0.0f;
    this->unk_32A = Math_Rand_S16Offset(0x1E, 0x32);
    this->unk_320 = 6;
    func_80AA6050(this, func_80AA8DD8);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA68FC.s")
void func_80AA68FC(EnMb* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_060041A8, -4.0f);
    this->actor.speedXZ = 0.0f;
    this->unk_32A = Math_Rand_S16Offset(0x28, 0x50);
    this->unk_320 = 6;
    func_80AA6444(this, globalCtx);
    func_80AA6050(this, func_80AA71AC);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6974.s")
void func_80AA6974(EnMb* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &animEnMbWalk, 0.0f, 0.0f, SkelAnime_GetFrameCount(&animEnMbWalk), 0, -4.0f);
    this->actor.speedXZ = 0.59999996f;
    this->unk_32A = Math_Rand_S16Offset(0x32, 0x46);
    this->unk_332 = 1;
    this->unk_320 = 9;
    func_80AA6050(this, func_80AA87D8);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6A18.s")

void func_80AA6AC8(EnMb* this) {
    f32 frameCount;

    frameCount = SkelAnime_GetFrameCount(&animEnMbReadyCharge);
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &animEnMbReadyCharge, -4.0f);
    this->unk_320 = 10;
    this->actor.speedXZ = 0.0f;
    this->unk_32E = (s16)frameCount + 6;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_MORIBLIN_SPEAR_AT);
    if (this->actor.params == -1) {
        func_80AA6050(this, func_80AA77D0);
    } else {
        func_80AA6050(this, func_80AA7CAC);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6B80.s")

void func_80AA6BF0(EnMb* this) {
    f32 frames;
    s16 yawDiff;
    s32 yawDiffABS;

    frames = SkelAnime_GetFrameCount(&D_0600B4BC);
    this->unk_320 = 0xA;
    SkelAnime_ChangeAnim(&this->skelAnime, &D_0600B4BC, 3.0f, 0.0f, frames, 3, 0.0f);
    this->unk_32E = 1;
    yawDiff = (this->actor.posRot.rot.y - this->actor.yawTowardsLink);
    if (yawDiff >= 0) {
        yawDiffABS = yawDiff;
    } else {
        yawDiffABS = 0 - yawDiff;
    }
    if (yawDiffABS < 0x259) {
        this->attackParams = 2;
    } else {
        if (yawDiff >= 0) {
            this->attackParams = 1;
        } else {
            this->attackParams = 3;
        }
    }
    func_80AA6050(this, func_80AA7938);
}

void func_80AA6CC0(EnMb* this) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_06009280);
    this->unk_320 = 11;
    this->unk_32A = 0;
    this->unk_32E = 5;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_MORIBLIN_SLIDE);
    func_80AA6050(this, func_80AA7310);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6D20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6DA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6E1C.s")

void func_80AA6E7C(EnMb* this) {
    f32 frames;

    frames = SkelAnime_GetFrameCount(&D_0600D5D4);
    this->unk_320 = 2;
    this->unk_32A = 0;
    this->unk_32E = 6;
    SkelAnime_ChangeAnim(&this->skelAnime, &D_0600D5D4, 1.0f, 4.0f, frames, 3, 0.0f);
    func_80AA6050(this, &func_80AA840C);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6F04.s")
void func_80AA6F04(EnMb* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_0600BE58, -4.0f);
    this->unk_320 = 1;
    this->actor.flags &= -2;
    this->collider1.dim.height = 0x50;
    this->collider1.dim.radius = 0x5F;
    this->unk_32A = 0x1E;
    this->actor.speedXZ = 0.0f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_MORIBLIN_DEAD);
    func_80AA6050(this, func_80AA8514);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6F8C.s")
void func_80AA6F8C(EnMb* this) {
    this->unk_320 = 5;
    this->actor.speedXZ = 0.0f;
    func_8003426C(&this->actor, 0, 0x78, 0, 0x50);
    if (this->unk_188 == 6) {
        this->unk_328 = 0x28;
    } else {
        if (this->actor.params != 0) {
            SkelAnime_ChangeAnimPlaybackStop(&this->skelAnime, &D_06001950, 0.0f);
        }
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
    }
    func_80AA6050(this, func_80AA702C);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA702C.s")

void func_80AA702C(EnMb* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (((player->stateFlags2 & 0x80) != 0) && (&this->actor == player->actor.parent)) {
        player->stateFlags2 &= -0x81;
        player->actor.parent = 0;
        player->unk_850 = 0xC8;
        func_8002F71C(globalCtx, &this->actor, 4.0f, this->actor.posRot.rot.y, 4.0f);
        this->attackParams = 0;
    }

    if (this->actor.dmgEffectTimer == 0) {
        if (this->actor.params == 0) {
            if (this->actor.colChkInfo.health == 0) {
                func_80AA6F04(this);
            } else if (this->unk_320 == 3) {
                func_80AA6E7C(this);
            } else {
                func_80AA6898(this);
            }
        } else if (this->actor.colChkInfo.health == 0) {
            func_80AA8FC8(this);
        } else {
            func_80AA8E88(this);
        }
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA7134.s")
void func_80AA7134(EnMb* this, GlobalContext* globalCtx) {
    s16 phi_v0;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_32A == 0) {
        phi_v0 = 0;
    } else {
        this->unk_32A = (this->unk_32A - 1);
        phi_v0 = this->unk_32A;
    }
    if (phi_v0 == 0) {
        if (func_800A56C8(&this->skelAnime, 0.0f) != 0) {
            func_80AA6974(this);
        }
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA71AC.s")

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA7310.s")
void func_80AA7310(EnMb* this, GlobalContext* globalCtx) {
    s32 pad;

    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 0.5f, 1.0f, 0.0f);
    if (1.0f < this->actor.speedXZ) {
        func_80033260(globalCtx, &this->actor, &this->actor.posRot, 5.0f, 3, 4.0f, 0x64, 0xF, 0);
    }
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        if (this->unk_32A == 0) {
            this->unk_32E = (this->unk_32E - 1);
            if (this->unk_32E == 0) {
                SkelAnime_ChangeAnim(&this->skelAnime, &animEnMbReadyCharge, -1.0f,
                                     (f32)SkelAnime_GetFrameCount(&animEnMbReadyCharge), 0.0f, 2, 0.0f);
                this->unk_32A = 1;
                this->actor.speedXZ = 0.0f;
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_MORIBLIN_SPEAR_NORM);
                return;
            }
        } else {
            if (this->actor.params < 0) {
                func_80AA6974(this);
                this->unk_32E = 0x50;
                this->soundTimer = this->unk_32E;
                this->unk_32A = this->unk_32E;
                return;
            }
            func_80AA68FC(this, globalCtx);
        }
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA7478.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA74BC.s")

#ifdef NON_MATCHING
// Regaloc
void func_80AA77D0(EnMb* this, GlobalContext* globalCtx) { // Chase link
    s32 currentFrame;
    s16 playerInvincibilityTImer;

    playerInvincibilityTImer = this->actor.yawTowardsLink - this->actor.shape.rot.y;
    if (playerInvincibilityTImer < 0) {
        playerInvincibilityTImer = -playerInvincibilityTImer;
    }
    currentFrame = this->skelAnime.animCurrentFrame;
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &animEnMbCharge);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_MORIBLIN_ATTACK);
    }
    if (this->unk_32E != 0) {
        this->unk_32E--;
        Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink, 1, 3000, 0);
    } else {
        this->actor.speedXZ = 10.0f;
        this->attackParams = 1;
        func_80033260(globalCtx, &this->actor, &this->actor.posRot, 5.0f, 3, 4.0f, 0x64, 0xF, 0);
        if ((currentFrame != (s32)this->skelAnime.animCurrentFrame) && ((currentFrame == 2) || (currentFrame == 6))) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_MORIBLIN_DASH);
        }
    }
    if (playerInvincibilityTImer >= 0x1389) {
        this->attackParams = 0;
        func_80AA6CC0(this);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA77D0.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA7938.s")
// End of a chain of calls
/*
void func_80AA7938(EnMb* this, GlobalContext* globalCtx) {
    f32 distToGround;
    Vec3f effSpawnPos;
    Vec3f zeroVec;
    Vec3f sp5C;
    struct_80AA9D68 sp54;
    struct_80AA9D70 sp4C;
    s8 playerInvincibilityTImer;
    Player* player = PLAYER;

    zeroVec = D_80AA9D50;

    sp5C = D_80AA9D5C;

    sp54 = D_80AA9D68;

    sp4C = D_80AA9D70;

    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, (&sp4C + (this->attackParams)) + this->actor.posRot.rot.y, 1,
0x2EE, 0); if ((this->collider2.base.atFlags & 2) != 0) { this->collider2.base.atFlags &= 0xFFFD; if (&player->actor ==
this->collider2.base.at) { playerInvincibilityTImer = player->invincibilityTimer; if (playerInvincibilityTImer < 0) { if
(playerInvincibilityTImer < -0x27) { player->invincibilityTimer = 0; } else { player->invincibilityTimer = 0;
                    globalCtx->damagePlayer(globalCtx, -8);
                }
            }
            func_8002F71C(globalCtx, &this->actor, ((650.0f - this->actor.xzDistFromLink) * 0.04f) + 4.0f,
                          this->actor.posRot.rot.y, 8.0f);
            player->invincibilityTimer = playerInvincibilityTImer;
        }
    }
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        if (this->unk_32E == 0) {
            effSpawnPos = this->effSpawnPos;

            distToGround = this->actor.groundY;
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_MONBLIN_HAM_LAND);
            func_800AA000(this->actor.xzDistFromLink, 0xFF, 0x14, 0x96);
            func_80029024(globalCtx, &effSpawnPos, &zeroVec, &zeroVec);
            func_80033480(globalCtx, &effSpawnPos, 2.0f, 3, 0x12C, 0xB4, 1);
            func_8005AA1C(&globalCtx->mainCamera, 2, 0x19, 5);
            func_800358DC(&this->actor, &effSpawnPos, &this->actor.posRot.rot, &sp5C, 0x14, &sp54.unk_0, globalCtx, -1,
                          0);
            func_80AA6DA4(this);
            return;
        }
        this->unk_32E = (this->unk_32E - 1);
        if (this->unk_32E == 0) {
            SkelAnime_ChangeAnim(&this->skelAnime, &D_0600ABE0, 1.5f, 0.0f, (f32)SkelAnime_GetFrameCount(&D_0600ABE0),
                                 3, 0.0f);
            return;
        }
    } else {
        if (this->unk_32E != 0) {
            if (6.0f == this->skelAnime.animCurrentFrame) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_MONBLIN_HAM_UP);
                return;
            }
        }
        if (this->unk_32E == 0) {
            if (3.0f == this->skelAnime.animCurrentFrame) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_MONBLIN_HAM_DOWN);
            }
        }
    }
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA7CAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA800C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA8378.s")

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA840C.s")
void func_80AA840C(EnMb* this, GlobalContext* globalCtx) {
    s32 pad;

    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        if (this->unk_32E != 0) {
            this->unk_32E = (s16)(this->unk_32E - 1);
            if (this->unk_32E == 0) {
                if (this->unk_32A == 0) {
                    SkelAnime_ChangeAnim(&this->skelAnime, &D_0600E18C, 3.0f, 0.0f,
                                         (f32)SkelAnime_GetFrameCount(&D_0600E18C), 3, 0.0f);
                    this->unk_32A = (u16)1;
                    this->unk_32E = (u16)6;
                } else {
                    SkelAnime_ChangeAnim(&this->skelAnime, &D_0600E18C, 3.0f, 0.0f,
                                         (f32)SkelAnime_GetFrameCount(&D_0600E18C), 3, 0.0f);
                }
            }
        } else {
            func_80AA6898(this);
        }
    }
}

void func_80AA8514(EnMb* this, GlobalContext* globalCtx) {
    Vec3f effPosition;
    Vec3f temp;
    Vec3f effZeroVector;
    s32 effectsPerFrame;

    effPosition = this->actor.posRot.pos;
    effPosition.x += Math_Sins(this->actor.shape.rot.y) * -70.0f;
    effPosition.z += Math_Coss(this->actor.shape.rot.y) * -70.0f;
    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 1.0f, 0.5f, 0.0f);
    temp = effPosition;
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        if (this->unk_32A > 0) {
            effZeroVector = D_80AA9D78;
            this->unk_32A--;
            for (effectsPerFrame = 4; effectsPerFrame >= 0; effectsPerFrame--) {
                effPosition.x = Math_Rand_CenteredFloat(240.0f) + temp.x;
                effPosition.y = Math_Rand_CenteredFloat(15.0f) + (temp.y + 20.0f);
                effPosition.z = Math_Rand_CenteredFloat(240.0f) + temp.z;
                func_8002A6B8(globalCtx, &effPosition, &effZeroVector, &effZeroVector, 0xE6, 7, 0xFF, 0xFF, 0xFF, 0xFF,
                              0, 0xFF, 0, 1, 9, 1);
            }
            return;
        } else {
            Item_DropCollectibleRandom(globalCtx, &this->actor, &effPosition, 0xC0);
            Actor_Kill(&this->actor);
            return;
        }
    }
    if (((s32)this->skelAnime.animCurrentFrame == 15) || ((s32)this->skelAnime.animCurrentFrame == 22)) {
        func_800AA000(this->actor.xzDistFromLink, 0xFF, 0x14, 0x96);
        func_80033260(globalCtx, this, &effPosition, 50.0f, 0xA, 3.0f, 0x190, 0x3C, 0);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_DOWN);
        func_8005AA1C(&globalCtx->mainCamera, 2, 0x19, 5);
    }
}

#ifdef NON_EQUIVILENT
void func_80AA87D8(EnMb* this, GlobalContext* globalCtx) { // EnMbPartol
    s32 currentFrame;
    Player* player = PLAYER;
    s16 temp_v1;
    s32 sp48;
    f32 playbackSpeed;
    f32 & this->skelAnime;

    temp_v1 = (this->actor.yawTowardsLink - this->actor.shape.rot.y);
    if (temp_v1 < 0) {
        temp_v1 = -temp_v1;
    }

    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.59999996f, 0.1f, 1.0f, 0.0f);
    this->skelAnime.animPlaybackSpeed = this->actor.speedXZ;
    currentFrame = this->skelAnime.animCurrentFrame;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    playbackSpeed = this->skelAnime.animPlaybackSpeed;
    if (0.0f <= playbackSpeed) {
        &this->skelAnime = playbackSpeed;
    } else {
        &this->skelAnime = -playbackSpeed;
    }
    sp48 = (this->skelAnime.animCurrentFrame - &this->skelAnime);
    if (0.0f <= playbackSpeed) {
        &this->skelAnime = playbackSpeed;
    } else {
        &this->skelAnime = -playbackSpeed;
    }
    if ((this->unk_32E == 0) && (Math_Vec3f_DistXZ(&this->actor.initPosRot, &player->actor.posRot) < this->unk_364)) {
        Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink, 1, 750, 0);
        this->actor.flags = (this->actor.flags | 1);
        if (this->actor.xzDistFromLink < 500.0f) {
            if (temp_v1 < 0x1388) {
                func_80AA6AC8(this);
            }
        }
    } else {
        this->actor.flags = (this->actor.flags & -2);
        if ((this->unk_360 < Math_Vec3f_DistXZ(&this->actor.posRot, &this->actor.initPosRot)) ||
            (this->soundTimer != 0)) {
            Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y,
                                    Math_Vec3f_Yaw(&this->actor.posRot, &this->actor.initPosRot), 1, 750, 0);
        } else {
        }
        if (this->soundTimer != 0) {
            this->soundTimer = this->soundTimer - 1;
        }
        if (this->unk_32E != 0) {
            this->unk_32E = this->unk_32E - 1;
        }
        if (this->soundTimer == 0) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_MORIBLIN_VOICE);
        }
        this->unk_32A = this->unk_32A - 1;
        if (this->unk_32A == 0) {
            if (0.7f < Math_Rand_ZeroOne()) {
                this->unk_32A = Math_Rand_S16Offset(0x32, 0x46);
                this->soundTimer = Math_Rand_S16Offset(0xF, 0x28);
            } else {
                func_80AA6830(this);
            }
        }
    }
    /*if (this->skelAnime.animCurrentFrame != this->skelAnime.animCurrentFrame) {
        if ((sp48 >= 2) || ((&this->skelAnime + this->skelAnime.animCurrentFrame) <= 0)) {
            if (sp48 < 21) {
                if (( &this->skelAnime + currentFrame) >= 20) {
block_31:
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_MORIBLIN_WALK);
                }
            }
        } else {
            goto block_31;
        }
    }*/
    if (this->skelAnime.animCurrentFrame != this->skelAnime.animCurrentFrame) {
        if (!((sp48 >= 2) || ((&this->skelAnime + this->skelAnime.animCurrentFrame) <= 0)) ||
            ((sp48 < 21) && ((&this->skelAnime + currentFrame)))) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_MORIBLIN_WALK);
        }
    }
    this->actor.shape.rot.y = this->actor.posRot.rot.y;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA87D8.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA8AEC.s")

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA8DD8.s")
void func_80AA8DD8(EnMb* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 pad;
    s16 yawDiff;
    s32 yawDiffAbs;

    yawDiff = (this->actor.posRot.rot.y - this->actor.yawTowardsLink);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (Math_Vec3f_DistXZ(&this->actor.initPosRot.pos, &player->actor.posRot.pos) < this->unk_364) {
        if (!(player->stateFlags1 & 0x4000000)) {
            yawDiffAbs = (yawDiff >= 0) ? yawDiff : -yawDiff;
            if (yawDiffAbs < 0x3E80) {
                func_80AA6BF0(this);
            }
        }
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA8E88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA8F50.s")

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA8FC8.s")
void func_80AA8FC8(EnMb* this) { // Likely setup Death for charging moblin
    s16 yawDiff;
    s32 yawDiffAbs;

    yawDiff = this->actor.yawTowardsLink - this->actor.shape.rot.y;
    yawDiffAbs = (yawDiff >= 0) ? yawDiff : -yawDiff;
    if (yawDiffAbs < 0x4001) {
        SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &animEnMbFallBack, -4.0f);
        this->actor.speedXZ = -8.0f;
    } else {
        SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &animEnMbFallBack, -4.0f);
        this->actor.speedXZ = 8.0f;
    }
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    this->unk_32A = 0x1E;
    this->unk_320 = 0;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_MORIBLIN_DEAD);
    this->actor.flags &= -2;
    func_80AA6050(this, func_80AA90A0);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA90A0.s")
void func_80AA90A0(EnMb* this, GlobalContext* globalCtx) {
    s32 phi_s0;
    Vec3f zeroVec;
    Player* player = PLAYER;
    Vec3f effPos;

    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 1.0f, 0.5f, 0.0f);
    if (player->stateFlags2 & 0x80) {
        if (&this->actor == player->actor.parent) {
            player->stateFlags2 &= -0x81;
            player->actor.parent = 0;
            player->unk_850 = 0xC8;
            func_8002F71C(globalCtx, &this->actor, 4.0f, this->actor.posRot.rot.y, 4.0f);
            this->attackParams = 0;
        }
    }
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        if (this->unk_32A > 0) {
            zeroVec = D_80AA9D84;
            this->actor.shape.unk_10 = 0.0f;
            this->unk_32A--;
            phi_s0 = 4;
            for (phi_s0; phi_s0 >= 0; phi_s0--) {
                effPos.x = Math_Rand_CenteredFloat(110.0f) + this->actor.posRot.pos.x;
                effPos.y = Math_Rand_CenteredFloat(15.0f) + (this->actor.posRot.pos.y + 20.0f);
                effPos.z = Math_Rand_CenteredFloat(110.0f) + this->actor.posRot.pos.z;

                func_8002A6B8(globalCtx, &effPos, &zeroVec, &zeroVec, 0x64, 7, 0xFF, 0xFF, 0xFF, 0xFF, 0, 0xFF, 0, 1, 9,
                              1);
            }
            return;
        }
        Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.posRot.pos, 0xE0);
        Actor_Kill(&this->actor);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA92B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA9440.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA94D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/EnMb_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA9870.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/EnMb_Draw.s")
