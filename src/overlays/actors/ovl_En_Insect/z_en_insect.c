#include "z_en_insect.h"

#define FLAGS 0x00000000

#define THIS ((EnInsect*)thisx)

void EnInsect_Init(Actor* thisx, GlobalContext* globalCtx);
void EnInsect_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnInsect_Update(Actor* thisx, GlobalContext* globalCtx);
void EnInsect_Draw(Actor* thisx, GlobalContext* globalCtx);

f32 D_80A7DEB0 = 0.0f;
s32 D_80A7DEB4 = 0;
s16 D_80A7DEB8 = 0;

const ActorInit En_Insect_InitVars = {
    ACTOR_EN_INSECT,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnInsect),
    (ActorFunc)EnInsect_Init,
    (ActorFunc)EnInsect_Destroy,
    (ActorFunc)EnInsect_Update,
    (ActorFunc)EnInsect_Draw,
};

extern SkeletonHeader D_04035590;
extern AnimationHeader D_040341FC;

ColliderJntSphItemInit sColliderItemInit[1] = {
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
        { 0, { { 0, 0, 0 }, 5 }, 100 },
    },
};

static ColliderJntSphInit sColliderInit = 
{
    { COLTYPE_UNK10, 0x00, 0x00, 0x19, 0x10, COLSHAPE_JNTSPH },
    1, sColliderItemInit,
};

u16 D_80A7DF10[] = {
    0, 5, 7, 7,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 10, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_F4, 700, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_F8, 20, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_FC, 600, ICHAIN_STOP),
};

Vec3f D_80A7DF28[2] = {
    { 0.0f, 0.0f, 0.0f },
    { 0.0f, 0.0f, 0.0f }
};

void func_80A7BE20(EnInsect* this)
{
    this->unk_314 = D_80A7DF10[this->actor.params & 3];
}

f32 func_80A7BE40(Vec3f* v1, Vec3f* v2)
{
    return SQ(v1->x - v2->x) + SQ(v1->z - v2->z);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7BE6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7BF58.s")

/**
 * Find the nearest soft dirt patch within 6400 units in the xz plane and the current room
 * Returns 1 if one was found, 0 otherwise
 */
s32 func_80A7BFA0(EnInsect* this, GlobalContext* globalCtx) {
    Actor* currentActor;
    f32 currentDistance;
    f32 bestDistance;
    s32 ret;

    ret = 0;
    currentActor = globalCtx->actorCtx.actorList[ACTORTYPE_ITEMACTION].first;
    bestDistance = 6400.0f;
    this->soilActor = NULL;

    while (currentActor != NULL) {
        if (currentActor->id == ACTOR_OBJ_MAKEKINSUTA) {
            currentDistance = func_800CB594(this->actor.posRot.pos.x, this->actor.posRot.pos.z, currentActor->posRot.pos.x, currentActor->posRot.pos.z);

            if (currentDistance < bestDistance) {
                if (currentActor->room == this->actor.room) {
                    ret = 1;
                    bestDistance = currentDistance;
                    this->soilActor = (ObjMakekinsuta*) currentActor;
                }
            }
        }
        currentActor = currentActor->next;
    }
    return ret;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7C058.s")

void EnInsect_Init(Actor* thisx, GlobalContext* globalCtx)
{
    EnInsect* this = THIS;
    f32 randomResult;
    s16 temp_s2;
    s32 count;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    func_80A7BE20(this);

    temp_s2 = this->actor.params & 3;

    SkelAnime_Init(globalCtx, &this->skelAnime, &D_04035590, &D_040341FC, this->limbDrawTable, this->transitionDrawTable, 24);
    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, &this->actor, &sColliderInit, &this->colliderItem);

    this->actor.colChkInfo.mass = 30;

    if (this->unk_314 & 1) {
        this->actor.gravity = -0.2f;
        this->actor.minVelocityY = -2.0f;
    }
    if (this->unk_314 & 4) {
        this->unk_31C = Math_Rand_S16Offset(200, 40);
        this->actor.flags |= 0x10;
    }

    if (temp_s2 == 2 || temp_s2 == 3) {
        if (func_80A7BFA0(this, globalCtx) != 0) {
            this->unk_314 |= 0x10;
            D_80A7DEB0 = 0.0f;
        }
        if (temp_s2 == 2) {
            this->actor.posRot.rot.z = 0;
            this->actor.shape.rot.z = this->actor.posRot.rot.z;

            for (count = 0; count < 2; count++)
            {
                Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_INSECT, this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, this->actor.shape.rot.x, this->actor.shape.rot.y, this->actor.shape.rot.z, 3);
                if (globalCtx) {}
            }
        }
        func_80A7D39C(this);
        if (1) {}
        D_80A7DEB8++;
    } else {
        randomResult = Math_Rand_ZeroOne();
        if (randomResult < 0.3f) {
            func_80A7C3A0(this);
        } else if (randomResult < 0.4f) {
            func_80A7C598(this);
        } else {
            func_80A7C818(this);
        }
    }
}

void EnInsect_Destroy(Actor *thisx, GlobalContext *globalCtx) {
    s16 temp_v0;
    EnInsect* this = thisx;

    temp_v0 = thisx->params & 3;
    Collider_DestroyJntSph(globalCtx, &this->collider);
    if (temp_v0 == 2 || temp_v0 == 3) {
        if (D_80A7DEB8 > 0) {
            D_80A7DEB8--;
        }
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7C3A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7C3F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7C598.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7C5EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7C818.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7C86C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7CA64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7CAD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7CBC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7CC3C.s")
// void func_80A7CC3C(EnInsect* this, GlobalContext* globalCtx) {
//     f32 sp3C;
//     f32 sp38;
//     f32 sp34;
//     f32 sp2C;
//     f32 temp_f0;
//     f32 phi_f2;

//     Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 0.1f, 0.5f, 0.0f);
//     Math_ApproxS(&this->actor.shape.rot.x, (u16)0x2AAA, (u16)0x160);
//     temp_f0 = this->actor.scale.x - 0.0002f;
//     if (temp_f0 < 0.001f) {
//         phi_f2 = 0.001f;
//     } else {
//         phi_f2 = temp_f0;
//     }
//     Actor_SetScale((Actor *) this, phi_f2);
//     this->actor.shape.unk_08 = (f32) (this->actor.shape.unk_08 - 0.8f);
//     this->actor.posRot.pos.x = (f32) ((Math_Rand_ZeroOne() + this->actor.initPosRot.pos.x) - 0.5f);
//     this->actor.posRot.pos.z = (f32) ((Math_Rand_ZeroOne() + this->actor.initPosRot.pos.z) - 0.5f);
//     SkelAnime_FrameUpdateMatrix(this + 0x1AC);
//     if (this->unk_31A >= 0x15) {
//         if (Math_Rand_ZeroOne() < 0.1f) {
//             sp34 = Math_Sins(this->actor.shape.rot.y) * -0.6f;
//             sp38 = Math_Sins(this->actor.shape.rot.x) * 0.6f;
//             sp3C = Math_Coss(this->actor.shape.rot.y) * -0.6f;
//             sp2C = Math_Rand_ZeroOne();
//             func_800286CC(globalCtx, (Vec3f *) &this->actor.posRot, (Vec3f *) &sp34, &D_80A7DF28, (s32) ((sp2C * 5.0f) + 8.0f), (s32) ((Math_Rand_ZeroOne() * 5.0f) + 8.0f));
//         }
//     }
//     if (this->unk_31A <= 0) {
//         if (this->unk_314 & 0x10) {
//             if (this->soilActor != NULL) {
//                 if (func_800CB650(this->soilActor + 0x24, (Vec3f *) &this->actor.posRot) < 64.0f) {
//                     this->soilActor->unk_152 = (u16)1;
//                 }
//             }
//         }
//         Actor_Kill((Actor *) this);
//     }
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7CE60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7CEC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7D1F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7D26C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7D39C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7D460.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/EnInsect_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/EnInsect_Draw.s")
