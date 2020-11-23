#include "z_en_geldb.h"

#define FLAGS 0x00000015

#define THIS ((EnGeldB*)thisx)

void EnGeldB_Init(Actor* thisx, GlobalContext* globalCtx);
void EnGeldB_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnGeldB_Update(EnGeldB* this, GlobalContext* globalCtx);
void EnGeldB_Draw(EnGeldB* this, GlobalContext* globalCtx);

s32 func_80A39688(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, EnGeldB* this);
void func_80A39824(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, EnGeldB* this);

s32 func_80A39E2C(GlobalContext* globalCtx, EnGeldB* this);
void func_80A391D8(EnGeldB* this, GlobalContext* globalCtx);
void func_80A392D8(EnGeldB* this, GlobalContext* globalCtx);

void func_80A35974(EnGeldB* this);
void func_80A35A08(EnGeldB* this, GlobalContext* globalCtx);
void func_80A35B8C(EnGeldB* this);
void func_80A35C24(EnGeldB* this, GlobalContext* globalCtx);
void func_80A35D48(EnGeldB* this);
void func_80A35DD0(EnGeldB* this, GlobalContext* globalCtx);
void func_80A360B0(EnGeldB* this);
void func_80A36130(EnGeldB* this, GlobalContext* globalCtx);
void func_80A365DC(EnGeldB* this);
void func_80A36690(EnGeldB* this, GlobalContext* globalCtx);
void func_80A367E4(EnGeldB* this);
void func_80A36830(EnGeldB* this, GlobalContext* globalCtx);
void func_80A36A10(EnGeldB* this);
void func_80A36AE4(EnGeldB* this, GlobalContext* globalCtx);
void func_80A370BC(EnGeldB* this, GlobalContext* globalCtx);
void func_80A37224(EnGeldB* this, GlobalContext* globalCtx);
void func_80A37670(EnGeldB* this);
void func_80A376E0(EnGeldB* this, GlobalContext* globalCtx);
void func_80A3792C(EnGeldB* this);
void func_80A379C0(EnGeldB* this, GlobalContext* globalCtx);
void func_80A37D70(EnGeldB* this);
void func_80A37DEC(EnGeldB* this, GlobalContext* globalCtx);
void func_80A37EF0(EnGeldB* this);
void func_80A37F98(EnGeldB* this, GlobalContext* globalCtx);
void func_80A38054(EnGeldB* this);
void func_80A380EC(EnGeldB* this, GlobalContext* globalCtx);
void func_80A38290(EnGeldB* this);
void func_80A38348(EnGeldB* this, GlobalContext* globalCtx);
void func_80A38430(EnGeldB* this);
void func_80A384E8(EnGeldB* this, GlobalContext* globalCtx);
void func_80A387D0(EnGeldB* this, GlobalContext* globalCtx);
void func_80A38960(EnGeldB* this, GlobalContext* globalCtx);
void func_80A3907C(EnGeldB* this);
void func_80A39120(EnGeldB* this, GlobalContext* globalCtx);

extern SkeletonHeader D_0600A458; // SkeletonHeaderSV
extern AnimationHeader D_0600ADF8;
extern AnimationHeader D_0600B6D4;
extern AnimationHeader D_0600A814;
extern AnimationHeader D_06001390;
extern AnimationHeader D_060024E8;
extern AnimationHeader D_060003CC;
extern AnimationHeader D_06000F5C;
extern AnimationHeader D_06002280;
extern AnimationHeader D_06001E10;
extern AnimationHeader D_0600ADF8;

/*
const ActorInit En_GeldB_InitVars = {
    ACTOR_EN_GELDB,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_GELDB,
    sizeof(EnGeldB),
    (ActorFunc)EnGeldB_Init,
    (ActorFunc)EnGeldB_Destroy,
    (ActorFunc)EnGeldB_Update,
    (ActorFunc)EnGeldB_Draw,
};
*/

extern ColliderCylinderInit D_80A39FE0;
 // 0x05000939, 0x10010000, 0x01000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, 0x00140032, 0x00000000, 0x00000000
extern ColliderTrisItemInit D_80A3A00C[];
 // 0x02000000, 0x00000000, 0x00000000, 0xFFC1FFFF, 0x00000000, 0x00010000, 0xC1200000, 0x41600000, 0x40000000, 0xC1200000, 0xC0C00000, 0x40000000, 0x41100000, 0x41600000, 0x40000000, 0x02000000, 0x00000000, 0x00000000, 0xFFC1FFFF, 0x00000000, 0x00010000, 0xC1200000, 0xC0C00000, 0x40000000, 0x41100000, 0xC0C00000, 0x40000000, 0x41100000, 0x41600000, 0x40000000
extern ColliderTrisInit D_80A3A084;
 // 0x09000D00, 0x00020000, 0x00000002, D_80A3A00C
extern ColliderQuadInit D_80A3A094;
 // 0x0A110000, 0x00030000, 0x00000000, 0xFFCFFFFF, 0x00080000, 0x00000000, 0x00000000, 0x81000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
extern DamageTable D_80A3A0E4;
 // 0x10020102, 0x10020210, 0x01020402, 0xF2020202, 0x02E460D3, 0x00000104, 0x02020804, 0x04000400
extern InitChainEntry D_80A3A104[];
 // 0xB04C07D0, 0xC850000A, 0x386CF448, 0x44898000, 0xC42F0000, 0x00000000
extern s32 D_80A3A11C[];
 // 0x43960000, 0x00000000, 0x00000000
extern s32 D_80A3A128[];
 // 0x00000000, 0xC53B8000, 0x00000000
extern s32 D_80A3A134[];
 // 0x43C80000, 0x00000000, 0x00000000
extern s32 D_80A3A140[];
 // 0x44C80000, 0xC57A0000, 0x00000000
extern s32 D_80A3A14C[];
 // 0xC53B8000, 0xC4FA0000, 0x44A28000
extern s32 D_80A3A158[];
 // 0xC53B8000, 0xC4FA0000, 0xC4A28000
extern s32 D_80A3A164[];
 // 0x447A0000, 0x447A0000, 0x00000000
extern s32 D_80A3A170[];
 // 0x00000000, 0x00000000, 0x00000000
extern s32 D_80A3A17C[];
 // 0xC53B8000, 0x45BB8000, 0x44C80000, 0xC53B8000, 0x00000000, 0x44C80000, 0x453B8000, 0x45BB8000, 0x44C80000
extern s32 D_80A3A1A0[];
 // 0xC53B8000, 0x00000000, 0x44C80000, 0x453B8000, 0x00000000, 0x44C80000, 0x453B8000, 0x45BB8000, 0x44C80000
extern s32 D_80A3A1C4[];
 // 0x06005FE8, 0x060065A8, 0x06006D28, 0x060065A8, 0x00000000, 0x00000000, 0x00000000

void func_80A35310(EnGeldB* this, EnGeldBActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnGeldB_Init(Actor *thisx, GlobalContext *globalCtx) {
    s32 pad;
    EffectBlureInit1 sp44;
    EnGeldB* this = THIS;

    Actor_ProcessInitChain(thisx, D_80A3A104);
    thisx->colChkInfo.damageTable = &D_80A3A0E4;
    ActorShape_Init(&thisx->shape, 0.0f, ActorShadow_DrawFunc_Teardrop, 0.0f);
    this->actor.colChkInfo.mass = 0xFE;
    thisx->colChkInfo.health = 20;
    thisx->colChkInfo.unk_10 = 50;
    thisx->colChkInfo.unk_12 = 100;
    thisx->naviEnemyId = 0x54;
    this->unk_314 = thisx->params & 0xFF00;
    thisx->params &= 0xFF;
    this->unk_31A = 0;
    this->unk_30C = 10.0f;
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_0600A458, &D_0600B6D4, this->limbDrawTbl, this->limbTransitionTable, 24);
    Collider_InitCylinder(globalCtx, &this->colliderBody);
    Collider_SetCylinder(globalCtx, &this->colliderBody, thisx, &D_80A39FE0);
    Collider_InitTris(globalCtx, &this->colliderBlock);
    Collider_SetTris(globalCtx, &this->colliderBlock, thisx, &D_80A3A084, this->blockElements);
    Collider_InitQuad(globalCtx, &this->colliderSword);
    Collider_SetQuad(globalCtx, &this->colliderSword, thisx, &D_80A3A094);
    sp44.p1StartColor[0] = sp44.p1StartColor[1] = sp44.p1StartColor[2] = sp44.p1StartColor[3]
        = sp44.p2StartColor[0] = sp44.p2StartColor[1] = sp44.p2StartColor[2]
        = sp44.p1EndColor[0] = sp44.p1EndColor[1] = sp44.p1EndColor[2]
        = sp44.p2EndColor[0] = sp44.p2EndColor[1] = sp44.p2EndColor[2] = 255;
    sp44.p2StartColor[3] = 64;
    sp44.p1EndColor[3] = sp44.p2EndColor[3] = 0;
    sp44.elemDuration = 8;
    sp44.unkFlag = 0;
    sp44.calcMode = 2;

    Effect_Add(globalCtx, &this->blureIdx, 1, 0, 0, &sp44);
    Actor_SetScale(thisx, 0.012499999f);
    func_80A35974(this);
    if ((this->unk_314 != 0) && Flags_GetCollectible(globalCtx, this->unk_314 >> 8)) {
        Actor_Kill(thisx);
    }
}

void EnGeldB_Destroy(Actor *thisx, GlobalContext *globalCtx) {
    s32 pad;
    EnGeldB* this = THIS;

    func_800F5B58();
    Effect_Delete(globalCtx, this->blureIdx);
    Collider_DestroyTris(globalCtx, &this->colliderBlock);
    Collider_DestroyCylinder(globalCtx, &this->colliderBody);
    Collider_DestroyQuad(globalCtx, &this->colliderSword);
}
 
s32 func_80A3559C(GlobalContext *globalCtx, EnGeldB *this, s16 arg2) {
    Player *player = PLAYER;
    Actor* thisx = &this->actor;
    s16 sp36;
    s16 sp34;

    sp36 = thisx->wallPolyRot - thisx->shape.rot.y;
    sp36 = ABS(sp36);
    sp34 = thisx->yawTowardsLink - thisx->shape.rot.y;
    sp34 = ABS(sp34);
    
    if (func_800354B4(globalCtx, thisx, 100.0f, 0x2710, 0x3E80, thisx->shape.rot.y)) {
        if (player->swordAnimation == 0x11) {
            func_80A370BC(this, globalCtx);
            return true;
        } else if (globalCtx->gameplayFrames & 1) {
            func_80A38430(this);
            return true;
        }
    }
    if (func_800354B4(globalCtx, thisx, 100.0f, 0x5DC0, 0x2AA8, thisx->shape.rot.y)) {
        thisx->shape.rot.y = thisx->posRot.rot.y =  thisx->yawTowardsLink;
        if ((thisx->bgCheckFlags & 8) && (ABS(sp36) < 0x2EE0)  && (thisx->xzDistFromLink < 90.0f)) {
            func_80A38290(this);
            return true;
        } else if (player->swordAnimation == 0x11) {
            func_80A370BC(this, globalCtx);
            return true;
        } else if ((thisx->xzDistFromLink < 90.0f) && (globalCtx->gameplayFrames & 1)) {
            func_80A38430(this);
            return true;
        } else {
            func_80A37D70(this);
            return true;
        }
    } else {
        Actor* bomb = Actor_FindNearby(globalCtx, thisx, -1, ACTORTYPE_EXPLOSIVES, 80.0f);

        if (bomb != NULL) {
            thisx->shape.rot.y = thisx->posRot.rot.y = thisx->yawTowardsLink;
            if (((thisx->bgCheckFlags & 8) && (sp36 < 0x2EE0)) || (bomb->id == ACTOR_EN_BOM_CHU)) {
                if ((bomb->id == ACTOR_EN_BOM_CHU) && (func_8002DB48(thisx, bomb) < 80.0f) && ((s16)(thisx->shape.rot.y - (bomb->posRot.rot.y - 0x8000)) < 0x3E80)) {
                    func_80A38290(this);
                    return true;
                } else {
                    func_80A387D0(this, globalCtx);
                    return true;
                }
            } else {
                func_80A37D70(this);
                return true;
            }
        } else if (arg2) {
            if (sp34 >= 0x1B58) {
                func_80A387D0(this, globalCtx);
                return true;
            } else {
                s16 sp2E = player->actor.shape.rot.y - thisx->shape.rot.y;

                if ((thisx->xzDistFromLink <= 45.0f) && !func_80033AB8(globalCtx, thisx) && ((globalCtx->gameplayFrames & 7) || (ABS(sp2E) < 0x38E0))) {
                    func_80A37670(this);
                    return true;
                } else {
                    func_80A36A10(this);
                    return true;
                }
            }
        }
    }
    return false;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A35974.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A35A08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A35B8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A35C24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A35D48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A35DD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A360B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A36130.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A365DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A36690.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A367E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A36830.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A36A10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A36AE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A370BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A37224.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A37670.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A376E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A3792C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A379C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A37D70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A37DEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A37EF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A37F98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A38054.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A380EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A38290.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A38348.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A38430.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A384E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A387D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A38960.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A3907C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A39120.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A391D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A392D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/EnGeldB_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A39688.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A39824.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/EnGeldB_Draw.s")

#ifdef NON_MATCHING
// regalloc
s32 func_80A39E2C(GlobalContext *globalCtx, EnGeldB *this) {
    Actor *actor;
    s16 sp1A;
    f32 temp;

    actor = func_80033780(globalCtx, this, 800.0f);
    
    if (actor != NULL) {
        sp1A = func_8002DA78(this, actor) - this->actor.shape.rot.y;
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
        temp = func_8002DB6C(this, &actor->posRot);
        if ((ABS(sp1A) < 0x2EE0) && (sqrt(temp) < 600.0)) {
            if (actor->id == ACTOR_ARMS_HOOK) {
                func_80A38290(this);
            } else {
                func_80A38430(this);
            }  
        } else {
            this->actor.posRot.rot.y = this->actor.shape.rot.y + 0x3FFF;
            if((ABS(sp1A) < 0x2000) || (ABS(sp1A) > 0x5FFF)) {
                func_80A387D0(this, globalCtx);
                this->actor.speedXZ *= 3.0f;
            } else if (ABS(sp1A) < 0x5FFF) {
                func_80A37D70(this);
            }
        }
        return true;
    }
    return false;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A39E2C.s")
#endif