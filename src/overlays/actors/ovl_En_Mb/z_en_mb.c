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

/*s32 D_80AA9C00[] = {
    0x00000939, 0x20010000, 0x01000000, 0x00000000, 0x00000000, 0xFFCFFFFF,
    0x00000000, 0x00010100, 0x00140046, 0x00000000, 0x00000000,
};*/
static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK0, 0x00, 0x09, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x01, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 20, 70, 0, { 0, 0, 0 } },
};

/*s32 D_80AA9C2C[] = {
    0x02000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x000D0000, 0xC1200000, 0x41600000,
    0x40000000, 0xC1200000, 0xC0C00000, 0x40000000, 0x41100000, 0x41600000, 0x40000000, 0x02000000,
    0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x000D0000, 0xC1200000, 0xC0C00000, 0x40000000,
    0x41100000, 0xC0C00000, 0x40000000, 0x41100000, 0x41600000, 0x40000000,
};*/
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

// s32 D_80AA9CA4[] = { 0x09000D00, 0x00020000, 0x00000002, D_80AA9C2C };
static ColliderTrisInit sTrisInit = {
    { COLTYPE_METAL_SHIELD, 0x00, 0x0D, 0x00, 0x00, COLSHAPE_TRIS },
    2,
    sTrisItemsInit,
};

/*s32 D_80AA9CB4[] = {
    0x0A110000, 0x00030000, 0x00000000, 0xFFCFFFFF, 0x00080000, 0x00000000, 0x00000000,
    0x01000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
};*/
static ColliderQuadInit sQuadInit = {
    { COLTYPE_UNK10, 0x11, 0x00, 0x00, 0x00, COLSHAPE_QUAD },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x08 }, { 0x00000000, 0x00, 0x00 }, 0x01, 0x00, 0x00 },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};

// s32 D_80AA9D04[] = { 0x50F2F1F2, 0x10F2F2F2, 0xF1F2F4F2, 0x64F2F4F2, 0xF2506350, 0x0000F1F4, 0xF2F2F8F4, 0x5000F400
// };

static DamageTable sDamageTable[] = {
    0x50, 0xF2, 0xF1, 0xF2, 0x10, 0xF2, 0xF2, 0xF2, 0xF1, 0xF2, 0xF4, 0xF2, 0x64, 0xF2, 0xF4, 0xF2,
    0xF2, 0x50, 0x63, 0x50, 0x00, 0x00, 0xF1, 0xF4, 0xF2, 0xF2, 0xF8, 0xF4, 0x50, 0x00, 0xF4, 0x00,
};

/*s32 D_80AA9D24[] = {
    0x50F200F2, 0x00F2F210, 0xF1F2F4F2, 0x64F2F4F2, 0xF2506350, 0x0000F1F4, 0xF2F2F8F4, 0x5000F400,
};*/

static DamageTable sDamageTable2[] = 
    {0x50, 0xF2, 0x00, 0xF2, 0x00, 0xF2, 0xF2, 0x10, 0xF1, 0xF2, 0xF4, 0xF2, 0x64, 0xF2, 0xF4, 0xF2, 0xF2, 0x50, 0x63, 0x50, 0x00, 0x00, 0xF1, 0xF4, 0xF2, 0xF2, 0xF8, 0xF4, 0x50, 0x00, 0xF4, 0x00,};

/*s32 D_80AA9D44[] = {
    0x8917004A,
    0xB86CFC18,
    0x304C14B4,
};*/
static InitChainEntry sInitChain[] = {
    ICHAIN_S8(naviEnemyId, 74, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, 64536, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 5300, ICHAIN_STOP),
};

s32 D_80AA9D50[] = {
    0x00000000,
    0x00000000,
    0x00000000,
};

s32 D_80AA9D5C[] = {
    0x41900000,
    0x41900000,
    0x00000000,
};

s32 D_80AA9D68[] = {
    0x00140028,
    0x00000000,
};

s32 D_80AA9D70[] = {
    0xF63C0000,
    0x0DAC0000,
};

s32 D_80AA9D78[] = {
    0x00000000,
    0x00000000,
    0x00000000,
};

s32 D_80AA9D84[] = {
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

extern SkeletonHeader D_06008F38;
extern AnimationHeader D_060028E0;
extern SkeletonHeader D_06014190;
extern AnimationHeader D_0600EBE4;
extern AnimationHeader D_060041A8;
extern AnimationHeader D_06009FC0;

void func_80AA68FC(EnMb* this, GlobalContext* globalCtx);
void func_80AA6898(EnMb* this);
void func_80AA7134(EnMb* this, GlobalContext* globalCtx);
void func_80AA6830(EnMb* this);
void func_80AA6974(EnMb* this);
void func_80AA87D8(EnMb* this, GlobalContext* globalCtx);

void func_80AA6050(EnMb* this, EnMbActionFunc actionFunc) {//Setup Action Func
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
     switch (phi_v1){
        case -1:
            SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06008F38, &D_060028E0, &this->limbDrawTable,
                             &this->transitionDrawTable, 28);
            this->actor.colChkInfo.health = 2;
            this->actor.colChkInfo.mass = 0xFE;
            this->unk_360 = 1000.0f;
            this->unk_364 = 1750.0f;
            func_80AA6830(this);
            return;
        case 0://Pounding ground
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
                this->actor.shape.rot.y =  thisx->posRot.rot.y;
                this->actor.posRot.pos.z = thisx->posRot.pos.z + 600.0f;
            }
            ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Teardrop, 90.0f);
            this->actor.flags &= -2;
            this->actor.naviEnemyId++;
            func_80AA6898(this);
            return;
    }

    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06008F38, &D_060028E0, &this->limbDrawTable, &this->transitionDrawTable, 28);
    Actor_SetScale(&this->actor, 0.014f);
    this->unk_35D = (thisx->params & 0xFF00) >>8;
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

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6444.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA652C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA66A0.s")

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6830.s")
void func_80AA6830(EnMb *this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_060041A8, -4.0f);
    this->actor.speedXZ = 0.0f;
    this->unk_32A = Math_Rand_S16Offset(0x1E, 0x32);
    this->unk_320 = 6;
    func_80AA6050(this, func_80AA7134);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6898.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA68FC.s")

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6974.s")
void func_80AA6974(EnMb *this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06009FC0, 0.0f, 0.0f, SkelAnime_GetFrameCount(&D_06009FC0), 0, -4.0f);
    this->actor.speedXZ = 0.59999996f;
    this->unk_32A = Math_Rand_S16Offset(0x32, 0x46);
    this->unk_332 = 1;
    this->unk_320 = 9;
    func_80AA6050(this, func_80AA87D8);
}


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6A18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6AC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6B80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6BF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6CC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6D20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6DA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6E1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6E7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6F04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6F8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA702C.s")

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA7134.s")
void func_80AA7134(EnMb *this, GlobalContext *globalCtx) {
    s16 phi_v0;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
   // temp_v1 = this->unk_32A;
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

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA7310.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA7478.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA74BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA77D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA7938.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA7CAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA800C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA8378.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA840C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA8514.s")

#ifdef NON_EQUIVILENT 
void func_80AA87D8(EnMb *this, GlobalContext *globalCtx) {
    s32 currentFrame;
    Player *player = PLAYER;
    s16 temp_v1;
    s32 sp48;
    f32 playbackSpeed;
    f32 sp34;
 
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
        sp34 = playbackSpeed;
    } else {
        sp34 = -playbackSpeed;
    }
    sp48 = (this->skelAnime.animCurrentFrame - sp34);
    if (0.0f <= playbackSpeed) {
        sp34 = playbackSpeed;
    } else {
        sp34 = -playbackSpeed;
    }
    if ((this->unk_32E == 0) && (Math_Vec3f_DistXZ(&this->actor.initPosRot, &player->actor.posRot) < this->unk_364)) {
        Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink, 1, 750, 0);
        this->actor.flags =  (this->actor.flags | 1);
        if (this->actor.xzDistFromLink < 500.0f) {
            if ( temp_v1 < 5000) {
                func_80AA6AC8(this);
            }
        }
    } else {
        this->actor.flags = (this->actor.flags & -2);
        if ((this->unk_360 < Math_Vec3f_DistXZ(&this->actor.posRot,  &this->actor.initPosRot)) ||  (this->unk_32C != 0)) {
            Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, Math_Vec3f_Yaw(&this->actor.posRot, &this->actor.initPosRot), 1, 750, 0);
        } else {
 
        }
        if ( this->unk_32C != 0) {
            this->unk_32C = this->unk_32C - 1;
        }
        if (this->unk_32E != 0) {
            this->unk_32E = this->unk_32E - 1;
        }
        if ( this->unk_32C == 0) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_MORIBLIN_VOICE);
        }
        this->unk_32A = this->unk_32A - 1;
        if (this->unk_32A == 0) {
            if (0.7f < Math_Rand_ZeroOne()) {
                this->unk_32A = Math_Rand_S16Offset(0x32, 0x46);
                this->unk_32C = Math_Rand_S16Offset(0xF, 0x28);
            } else {
                func_80AA6830(this);
            }
        }
    }
    /*if (this->skelAnime.animCurrentFrame != this->skelAnime.animCurrentFrame) {
        if ((sp48 >= 2) || ((sp34 + this->skelAnime.animCurrentFrame) <= 0)) {
            if (sp48 < 21) {
                if (( sp34 + currentFrame) >= 20) {
block_31:
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_MORIBLIN_WALK);
                }
            }
        } else {
            goto block_31;
        }
    }*/
    if (this->skelAnime.animCurrentFrame != this->skelAnime.animCurrentFrame) {
        if (!((sp48 >= 2) || ((sp34 + this->skelAnime.animCurrentFrame) <= 0)) || ((sp48 < 21) && ((sp34 + currentFrame)))) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_MORIBLIN_WALK);
            }
    }
    this->actor.shape.rot.y = this->actor.posRot.rot.y;
}
else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA87D8.s")
#endif


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA8AEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA8DD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA8E88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA8F50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA8FC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA90A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA92B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA9440.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA94D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/EnMb_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA9870.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/EnMb_Draw.s")
