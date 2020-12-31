#include "z_en_skb.h"
#include "overlays/actors/ovl_En_Encount1/z_en_encount1.h"

#define FLAGS 0x00000015

#define THIS ((EnSkb*)thisx)

void EnSkb_Init(Actor* thisx, GlobalContext* globalCtx);
void EnSkb_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnSkb_Update(Actor* thisx, GlobalContext* globalCtx);
void EnSkb_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80AFCD60(EnSkb* this);
void func_80AFCDF8(EnSkb* this);
void func_80AFCE5C(EnSkb* this, GlobalContext* globalCtx);
void func_80AFCF48(EnSkb* this);
void func_80AFCFF0(EnSkb* this, GlobalContext* globalCtx);
void func_80AFD0A4(EnSkb* this);

void func_80AFD13C(EnSkb* this, GlobalContext* globalCtx);
void func_80AFD33C(EnSkb* this);
void func_80AFD3D4(EnSkb* this, GlobalContext* globalCtx);
void func_80AFD47C(EnSkb* this);
void func_80AFD508(EnSkb* this, GlobalContext* globalCtx);
void func_80AFD540(EnSkb* this);
void func_80AFD59C(EnSkb* this, GlobalContext* globalCtx);

void func_80AFD6CC(EnSkb* this, GlobalContext* globalCtx);

void func_80AFD7B4(EnSkb* this, GlobalContext* globalCtx);
void func_80AFD880(EnSkb* this, GlobalContext* globalCtx);

extern SkeletonHeader D_060041F8;  // 0x60041F8
extern AnimationHeader D_06001854; // 0x6001854
extern AnimationHeader D_060009DC; // 0x60009DC
extern AnimationHeader D_06000D98; // 0x6000D98
extern AnimationHeader D_060047E0; // 0x60047E0
extern AnimationHeader D_06000460; // 0x6000460

// s32 D_80AFE020[] = { 0x00000000, 0xFFCFFFFF, 0x00040000, 0x00000000, 0x00000000, 0x01000000,
//                      0x0F000000, 0x00000000, 0x000A0064, 0x00000000, 0x00000000, 0x00000000,
//                      0xFFCFFFFF, 0x00000000, 0x00050100, 0x01000000, 0x00000000, 0x00140064 };

static ColliderJntSphItemInit D_80AFE020[2] = {
    {
        { 0x00, { 0xFFCFFFFF, 0x00, 0x04 }, { 0x00000000, 0x00, 0x00 }, 0x01, 0x00, 0x00 },
        { 15, { { 0, 0, 0 }, 10 }, 100 },
    },
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x05, 0x01 },
        { 1, { { 0, 0, 0 }, 20 }, 100 },
    },
};

// s32 D_80AFE068[] = { 0x06110939, 0x10000000, 0x00000002, D_80AFE020 };

static ColliderJntSphInit D_80AFE068 = {
    { COLTYPE_UNK6, 0x11, 0x09, 0x39, 0x10, COLSHAPE_JNTSPH },
    2,
    D_80AFE020,
};

static DamageTable D_80AFE078[] = { 0x10, 0xF2, 0xF1, 0xF2, 0x10, 0xF2, 0xF2, 0x10, 0xE1, 0xF2, 0xF4,
                                    0x74, 0xF2, 0xF2, 0xF2, 0x00, 0x00, 0x74, 0x60, 0xD3, 0x00, 0x00,
                                    0xD1, 0xF4, 0xF2, 0xF2, 0xF8, 0xF4, 0x00, 0x00, 0xF4, 0x00 };

// s32 D_80AFE078[] ={0x10F2F1F2, 0x10F2F210, 0xE1F2F474, 0xF2F2F200, 0x007460D3, 0x0000D1F4, 0xF2F2F8F4, 0x0000F400};

const ActorInit En_Skb_InitVars = {
    ACTOR_EN_SKB,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_SKB,
    sizeof(EnSkb),
    (ActorFunc)EnSkb_Init,
    (ActorFunc)EnSkb_Destroy,
    (ActorFunc)EnSkb_Update,
    (ActorFunc)EnSkb_Draw,
};

Vec3f D_80AFE0B8 = { 0.0f, 8.0f, 0.0f };

Vec3f D_80AFE0C4 = { 0.0f, -1.5f, 0.0f };

// s32 D_80AFE0D0[] = { 0xB04C07D0, 0x386CF830, 0x00000000, 0x00000000 };

// sInitChain
static InitChainEntry D_80AFE0D0[] = {
    ICHAIN_F32(unk_4C, 2000, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, -2000, ICHAIN_STOP),
};

// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFC9A0.s")
void func_80AFC9A0(EnSkb* this, EnSkbActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFC9A8.s")
void func_80AFC9A8(GlobalContext* globalCtx, EnSkb* this, Vec3f* arg2) {
    Vec3f pos;
    Vec3f vel = D_80AFE0B8;
    Vec3f accel = D_80AFE0C4;
    f32 rand_val;
    f32 scale;

    rand_val = (Rand_ZeroOne() - 0.5f) * 6.28f;
    pos.y = this->actor.groundY;
    pos.x = (Math_SinF(rand_val) * 15.0f) + arg2->x;
    pos.z = (Math_CosF(rand_val) * 15.0f) + arg2->z;
    accel.x = Rand_CenteredFloat(1.0f);
    accel.z = Rand_CenteredFloat(1.0f);
    vel.y += ((Rand_ZeroOne() - 0.5f) * 4.0f);
    scale = (Rand_ZeroOne() * 5.0f) + 12.0f;
    EffectSsHahen_Spawn(globalCtx, &pos, &vel, &accel, 2, (scale * 0.8f), -1, 10, 0);
    func_80033480(globalCtx, &pos, 10.0f, 1, 150, 0, 1);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/EnSkb_Init.s")
void EnSkb_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnSkb* this = THIS;

    s16 paramOffsetBody;
    s16 paramOffsetArm;

    Actor_ProcessInitChain(&this->actor, D_80AFE0D0);
    this->actor.colChkInfo.damageTable = &D_80AFE078;
    ActorShape_Init(&this->actor.shape, 0.0f, &ActorShadow_DrawFunc_Circle, 0.0f);
    this->actor.posRot2.pos = this->actor.posRot.pos;
    this->actor.colChkInfo.mass = 0xFE;
    this->actor.colChkInfo.health = 2;
    this->actor.shape.unk_08 = -8000.0f;
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_060041F8, &D_06001854, this->limbDrawTable,
                   this->transitionDrawTable, 20);
    this->actor.naviEnemyId = 0x55;

    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, &this->actor, &D_80AFE068, this->colliderItem);
    Actor_SetScale(thisx, ((this->actor.params * 0.1f) + 1.0f) * 0.01f);

    paramOffsetBody = this->actor.params + 0xA;
    this->collider.list[0].dim.worldSphere.radius = paramOffsetBody;
    this->collider.list[0].dim.modelSphere.radius = paramOffsetBody;
    if (1) {}; // Yay...
    paramOffsetArm = (this->actor.params * 2) + 0x14;
    this->collider.list[1].dim.worldSphere.radius = paramOffsetArm;
    this->collider.list[1].dim.modelSphere.radius = paramOffsetArm;
    this->actor.initPosRot.pos = this->actor.posRot.pos;
    this->actor.groundY = this->actor.posRot.pos.y;
    func_80AFCDF8(this);
}

// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/EnSkb_Destroy.s")
void EnSkb_Destroy(Actor* thisx, GlobalContext* globalCtx) {

    EnSkb* this = THIS;
    if (this->actor.parent != NULL) {
        EnEncount1* spawner = (EnEncount1*)this->actor.parent;

        if (spawner->actor.update != NULL) {
            if (spawner->curNumSpawn > 0) {
                spawner->curNumSpawn--;
            }
        }
    }
    Collider_DestroyJntSph(globalCtx, &this->collider);
}

// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFCD60.s")
void func_80AFCD60(EnSkb* this) {
    if (gSaveContext.nightFlag == 0) {
        func_80AFCF48(this);
    } else if ((func_8002E084(&this->actor, 0x11C7) != 0) &&
               (this->actor.xzDistFromLink < (60.0f + ((f32)this->actor.params * 6.0f)))) {
        func_80AFD33C(this);
    } else {
        func_80AFD0A4(this);
    }
}

// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFCDF8.s")
void func_80AFCDF8(EnSkb* this) {
    Animation_PlayOnceSetSpeed(&this->skelAnime, &D_06001854, 1.0f);
    this->unk_280 = 0;
    this->actor.flags &= ~1;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIVA_APPEAR);
    func_80AFC9A0(this, func_80AFCE5C);
}

// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFCE5C.s")
void func_80AFCE5C(EnSkb* this, GlobalContext* globalCtx) {
    s16 temp_v0;

    if (this->skelAnime.curFrame < 4.0f) {
        this->actor.posRot.rot.y = this->actor.yawTowardsLink;
        this->actor.shape.rot.y = this->actor.yawTowardsLink;
    } else {
        this->actor.flags = this->actor.flags | 1;
    }
    Math_SmoothStepToF(&this->actor.shape.unk_08, 0.0f, 1.0f, 800.0f, 0.0f);
    Math_SmoothStepToF(&this->actor.shape.unk_10, 25.0f, 1.0f, 2.5f, 0.0f);
    if ((globalCtx->gameplayFrames & 1) != 0) {
        func_80AFC9A8(globalCtx, this, &this->actor.posRot.pos);
    }
    if ((SkelAnime_Update(&this->skelAnime) != 0) && (0.0f == this->actor.shape.unk_08)) {
        func_80AFCD60(this);
    }
}

// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFCF48.s")
void func_80AFCF48(EnSkb* this) {
    Animation_Change(&this->skelAnime, &D_06001854, -1.0f, Animation_GetLastFrame(&D_06001854), 0.0f, 2, -4.0f);
    this->unk_280 = 0;
    this->unk_281 = 0;
    this->actor.flags = this->actor.flags & ~1;
    this->actor.speedXZ = 0.0f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_AKINDONUTS_HIDE);
    func_80AFC9A0(this, func_80AFCFF0);
}

// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFCFF0.s")
void func_80AFCFF0(EnSkb* this, GlobalContext* globalCtx) {
    if ((Math_SmoothStepToF(&this->actor.shape.unk_08, -8000.0f, 1.0f, 500.0f, 0.0f) != 0.0f) &&
        (globalCtx->gameplayFrames & 1)) {
        func_80AFC9A8(globalCtx, this, &this->actor.posRot.pos);
    }
    Math_SmoothStepToF(&this->actor.shape.unk_10, 0.0f, 1.0f, 2.5f, 0.0f);
    if (SkelAnime_Update(&this->skelAnime) != 0) {
        Actor_Kill(&this->actor);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFD0A4.s")
void func_80AFD0A4(EnSkb* this) {
    Animation_Change(&this->skelAnime, &D_060047E0, 0.96000004f, 0.0f, Animation_GetLastFrame(&D_060047E0), 0, -4.0f);
    this->unk_280 = 4;
    this->unk_288 = 0;
    this->actor.speedXZ = this->actor.scale.y * 160.0f;
    func_80AFC9A0(this, func_80AFD13C);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFD13C.s")
void func_80AFD13C(EnSkb* this, GlobalContext* globalCtx) {
    s32 thisKeyFrame;
    s32 prevKeyFrame;
    f32 playSpeed;

    Player* player = PLAYER;

    if ((this->unk_283 != 0) && ((globalCtx->gameplayFrames & 0xF) == 0)) {
        this->unk_288 = Rand_CenteredFloat(50000.0f);
    }
    Math_SmoothStepToS(&this->actor.shape.rot.y, (this->actor.yawTowardsLink + this->unk_288), 1, 0x2EE, 0);
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    thisKeyFrame = this->skelAnime.curFrame;
    SkelAnime_Update(&this->skelAnime);
    if (this->skelAnime.playSpeed >= 0.0f) {
        playSpeed = this->skelAnime.playSpeed;
    } else {
        playSpeed = -this->skelAnime.playSpeed;
    }
    prevKeyFrame = (this->skelAnime.curFrame - playSpeed);
    if (this->skelAnime.playSpeed >= 0.0f) {
        playSpeed = this->skelAnime.playSpeed;
    } else {
        playSpeed = -this->skelAnime.playSpeed;
    }
    if (thisKeyFrame != (s32)this->skelAnime.curFrame) {
        if ((prevKeyFrame < 9) && (((s32)playSpeed + thisKeyFrame) >= 8) ||
            !((prevKeyFrame >= 16) || (((s32)playSpeed + thisKeyFrame) < 15))) {

            Audio_PlayActorSound2(&this->actor, NA_SE_EN_STALKID_WALK);
        }
    }
    if (Math_Vec3f_DistXZ(&this->actor.initPosRot.pos, &player->actor.posRot.pos) > 800.0f ||
        gSaveContext.nightFlag == 0) {
        func_80AFCF48(this);
    } else if ((func_8002E084(&this->actor, 0x11C7) != 0) &&
               (this->actor.xzDistFromLink < (60.0f + (this->actor.params * 6.0f)))) {
        func_80AFD33C(this);
    }
}

// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFD33C.s")
void func_80AFD33C(EnSkb* this) {
    Animation_Change(&this->skelAnime, &D_06000460, 0.6f, 0.0f, Animation_GetLastFrame(&D_06000460), 3, 4.0f);
    this->collider.base.atFlags = this->collider.base.atFlags & 0xFFFB;
    this->unk_280 = 3;
    this->actor.speedXZ = 0.0f;
    func_80AFC9A0(this, func_80AFD3D4);
}

// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFD3D4.s")
void func_80AFD3D4(EnSkb* this, GlobalContext* globalCtx) {
    s32 frameData;
    frameData = this->skelAnime.curFrame;
    if (frameData == 3) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_STALKID_ATTACK);
        this->unk_281 = 1;
    } else if (frameData == 6) {
        this->unk_281 = 0;
    }
    if ((this->collider.base.atFlags & 4) != 0) {
        this->collider.base.atFlags &= 0xFFF9;
        func_80AFD47C(this);
    } else if (SkelAnime_Update(&this->skelAnime) != 0) {
        func_80AFCD60(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFD47C.s")
void func_80AFD47C(EnSkb* this) {
    Animation_Change(&this->skelAnime, &D_06000460, -0.4f, this->skelAnime.curFrame - 1.0f, 0.0f, 3, 0.0f);
    this->collider.base.atFlags &= 0xFFFB;
    this->unk_280 = 5;
    this->unk_281 = 0;
    func_80AFC9A0(this, func_80AFD508);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFD508.s")
void func_80AFD508(EnSkb* this, GlobalContext* globalCtx) {
    if (SkelAnime_Update(&this->skelAnime) != 0) {
        func_80AFCD60(this);
    }
}

// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFD540.s")
void func_80AFD540(EnSkb* this) {
    if (this->actor.bgCheckFlags & 1) {
        this->actor.speedXZ = 0.0f;
    }
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
    this->unk_281 = 0;
    this->unk_280 = 6;
    func_80AFC9A0(this, func_80AFD59C);
}

// Matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFD59C.s")
void func_80AFD59C(EnSkb* this, GlobalContext* globalCtx) {

    if ((this->actor.bgCheckFlags & 2) != 0) {
        this->actor.speedXZ = 0.0f;
    }
    if ((this->actor.bgCheckFlags & 1) != 0) {
        if (this->actor.speedXZ < 0.0f) {
            this->actor.speedXZ += 0.05f;
        }
    }
    if ((this->actor.dmgEffectTimer == 0) && ((this->actor.bgCheckFlags & 1) != 0)) {
        if (this->actor.colChkInfo.health == 0) {
            func_80AFD7B4(this, globalCtx);
            return;
        }
        func_80AFCD60(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFD644.s")
void func_80AFD644(EnSkb* this) {
    Animation_MorphToPlayOnce(&this->skelAnime, &D_06000D98, -4.0f);
    if (this->actor.bgCheckFlags & 1) {
        this->actor.speedXZ = -4.0f;
    }
    this->actor.posRot.rot.y = this->actor.yawTowardsLink;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_STALKID_DAMAGE);
    this->unk_280 = 2;
    func_80AFC9A0(this, func_80AFD6CC);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFD6CC.s")
void func_80AFD6CC(EnSkb* this, GlobalContext* globalCtx) {
    u8* new_var;
    new_var = &this->unk_283;
    if ((this->unk_283 != 1) || func_8003305C(&this->actor, &this->unk_28C, globalCtx, 1)) {
        if ((*new_var) != 0) {
            this->unk_283 = (*new_var) | 2;
        }
        if (this->actor.bgCheckFlags & 2) {
            this->actor.speedXZ = 0;
        }
        if (this->actor.bgCheckFlags & 1) {
            if (this->actor.speedXZ < 0.0f) {
                this->actor.speedXZ += 0.05f;
            }
        }

        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 1, 0x1194, 0);
        if (SkelAnime_Update(&this->skelAnime) && (this->actor.bgCheckFlags & 1)) {
            func_80AFCD60(this);
        }
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFD7B4.s")

// Matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFD880.s")
void func_80AFD880(EnSkb* this, GlobalContext* globalCtx) {
    if (func_8003305C(&this->actor, &this->unk_28C, globalCtx, 1) != 0) {
        if (0.01f == this->actor.scale.x) {
            Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.posRot.pos, 0x10);
        } else {
            if (this->actor.scale.x <= 0.015f) {
                Item_DropCollectible(globalCtx, &this->actor.posRot.pos, ITEM00_RUPEE_BLUE);
            } else {
                Item_DropCollectible(globalCtx, &this->actor.posRot.pos, ITEM00_RUPEE_RED);
                Item_DropCollectible(globalCtx, &this->actor.posRot.pos, ITEM00_RUPEE_RED);
                Item_DropCollectible(globalCtx, &this->actor.posRot.pos, ITEM00_RUPEE_RED);
            }
        }
        this->unk_283 |= 8;
        Actor_Kill(&this->actor);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFD968.s")

// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/EnSkb_Update.s")
void EnSkb_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnSkb* this = THIS;
    s32 pad;

    func_80AFD968(thisx, globalCtx);
    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx, thisx, 15.0f, 30.0f, 60.0f, 0x1D);
    this->actionFunc(this, globalCtx);
    this->actor.posRot2.pos = this->actor.posRot.pos;
    this->actor.posRot2.pos.y += (3000.0f * this->actor.scale.y);
    if (this->unk_281 != 0) {
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }

    if (this->unk_280 >= 3) {
        if ((thisx->dmgEffectTimer == 0) || ((thisx->dmgEffectParams & 0x4000) == 0)) {

            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }
    }
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFDD30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFDF24.s")
// void func_80AFDF24(s32 arg0, s32 limbIndex, Gfx** dList, s32 arg3, EnSkb* this) {
//     u8 temp_v0;

//     func_800628A4(limbIndex, &this->collider);
//     temp_v0 = this->unk_283;
//     if ((temp_v0 ^ 1) == 0) {
//         func_80032F54(&this->unk_28C, limbIndex, 0xB, 0xC, 0x12, dList, -1);

//     } else if ( (temp_v0 | 4) == temp_v0) {
//         func_80032F54(&this->unk_28C, limbIndex, 0, 0x12, 0x12, dList, -1);
//     }
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/EnSkb_Draw.s")
