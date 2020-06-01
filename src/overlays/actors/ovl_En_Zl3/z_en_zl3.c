/*
 * File: z_en_zl3.c
 * Overlay: ovl_En_Zl3
 * Description: Adult Zelda
 */

#include "z_en_zl3.h"

#include <vt.h>

#define FLAGS 0x00000010

#define THIS ((EnZl3*)thisx)

void EnZl3_Init(Actor* thisx, GlobalContext* globalCtx);
void EnZl3_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnZl3_Update(Actor* thisx, GlobalContext* globalCtx);
void EnZl3_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80B533B0(EnZl3* this, GlobalContext* globalCtx);
void func_80B5458C(EnZl3* this, GlobalContext* globalCtx);
void func_80B55550(EnZl3* this, GlobalContext* globalCtx);
void func_80B555A4(EnZl3* this, GlobalContext* globalCtx);
void func_80B55604(EnZl3* this, GlobalContext* globalCtx);
void func_80B5566C(EnZl3* this, GlobalContext* globalCtx);
void func_80B556CC(EnZl3* this, GlobalContext* globalCtx);
void func_80B5572C(EnZl3* this, GlobalContext* globalCtx);
void func_80B56658(EnZl3* this, GlobalContext* globalCtx);
void func_80B566AC(EnZl3* this, GlobalContext* globalCtx);
void func_80B5670C(EnZl3* this, GlobalContext* globalCtx);
void func_80B5676C(EnZl3* this, GlobalContext* globalCtx);
void func_80B567CC(EnZl3* this, GlobalContext* globalCtx);
void func_80B5682C(EnZl3* this, GlobalContext* globalCtx);
void func_80B568B4(EnZl3* this, GlobalContext* globalCtx);
void func_80B5691C(EnZl3* this, GlobalContext* globalCtx);
void func_80B5697C(EnZl3* this, GlobalContext* globalCtx);
void func_80B569E4(EnZl3* this, GlobalContext* globalCtx);
void func_80B56A68(EnZl3* this, GlobalContext* globalCtx);
void func_80B56AE0(EnZl3* this, GlobalContext* globalCtx);
void func_80B56B54(EnZl3* this, GlobalContext* globalCtx);
void func_80B56BA8(EnZl3* this, GlobalContext* globalCtx);
void func_80B56C24(EnZl3* this, GlobalContext* globalCtx);
void func_80B56C84(EnZl3* this, GlobalContext* globalCtx);
void func_80B56CE4(EnZl3* this, GlobalContext* globalCtx);
void func_80B56D44(EnZl3* this, GlobalContext* globalCtx);
void func_80B58D50(EnZl3* this, GlobalContext* globalCtx);
void func_80B58DB0(EnZl3* this, GlobalContext* globalCtx);
void func_80B58E10(EnZl3* this, GlobalContext* globalCtx);
void func_80B58E7C(EnZl3* this, GlobalContext* globalCtx);
void func_80B58EF4(EnZl3* this, GlobalContext* globalCtx);
void func_80B58F6C(EnZl3* this, GlobalContext* globalCtx);
void func_80B58FDC(EnZl3* this, GlobalContext* globalCtx);
void func_80B5904C(EnZl3* this, GlobalContext* globalCtx);
void func_80B590BC(EnZl3* this, GlobalContext* globalCtx);
void func_80B5912C(EnZl3* this, GlobalContext* globalCtx);
void func_80B591BC(EnZl3* this, GlobalContext* globalCtx);
void func_80B5922C(EnZl3* this, GlobalContext* globalCtx);
void func_80B592A8(EnZl3* this, GlobalContext* globalCtx);
void func_80B59340(EnZl3* this, GlobalContext* globalCtx);
void func_80B593D0(EnZl3* this, GlobalContext* globalCtx);
void func_80B5944C(EnZl3* this, GlobalContext* globalCtx);
void func_80B59DB8(EnZl3* this, GlobalContext* globalCtx);
void func_80B59FE8(EnZl3* this, GlobalContext* globalCtx);
void func_80B59FF4(EnZl3* this, GlobalContext* globalCtx);
void func_80B5A1D0(EnZl3* this, GlobalContext* globalCtx);

// todo sCylinderInit
ColliderCylinderInit_Set3 D_80B5A410 = {
    { COLTYPE_UNK0, 0x00, 0x00, 0x09, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 25, 80, 0, { 0, 0, 0 } },
};

u32 D_80B5A43C[] = { 0x060030C8, 0x06003C48, 0x06004048, 0x06004548, 0x06004948, 0x06004D48, 0x06005148, 0x00000000 };
u32 D_80B5A45C[] = { 0x06003508, 0x06005548, 0x06005948 };
u32 D_80B5A468[] = { 0x00000000 };
u32 D_80B5A46C[] = { 0x00000000, 0x00000000, 0x00000000 };
u32 D_80B5A478[] = { 0x00000000, 0x41200000, 0x00000000 };
u32 D_80B5A484[] = { 0x00000000 };
u32 D_80B5A488[] = { 0x00000000, 0x00000000, 0x00000000 };
u32 D_80B5A494[] = { 0xFFFFFFFF };
u32 D_80B5A498[] = { 0x43140000, 0x43820000, 0xC2AE0000 };
u32 D_80B5A4A4[] = { 0xC1400000, 0x43820000, 0xC3130000, 0x42280000, 0x43820000, 0x41500000 };
u32 D_80B5A4BC[] = { 0x00000000 };

static EnZl3ActionFunc sActionFuncs[] = {
    func_80B59DB8, func_80B55550, func_80B555A4, func_80B55604, func_80B5566C, func_80B556CC, func_80B5572C,
    func_80B56658, func_80B566AC, func_80B5670C, func_80B5676C, func_80B567CC, func_80B5682C, func_80B568B4,
    func_80B5691C, func_80B5697C, func_80B569E4, func_80B56A68, func_80B56AE0, func_80B56B54, func_80B56BA8,
    func_80B56C24, func_80B56C84, func_80B56CE4, func_80B56D44, func_80B58D50, func_80B58DB0, func_80B58E10,
    func_80B58E7C, func_80B58EF4, func_80B58F6C, func_80B58FDC, func_80B5904C, func_80B590BC, func_80B5912C,
    func_80B591BC, func_80B5922C, func_80B592A8, func_80B59340, func_80B593D0,
};

EnZl3OverrideLimbDraw2 D_80B5A560[] = {
    func_80B5458C,
    func_80B5944C,
};

static EnZl3DrawFunc sDrawFuncs[] = {
    func_80B59FE8,
    func_80B59FF4,
    func_80B5A1D0,
};

const ActorInit En_Zl3_InitVars = {
    ACTOR_EN_ZL3,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_ZL2,
    sizeof(EnZl3),
    (ActorFunc)EnZl3_Init,
    (ActorFunc)EnZl3_Destroy,
    (ActorFunc)EnZl3_Update,
    (ActorFunc)EnZl3_Draw,
};

// todo fix
extern AnimationHeader D_06003D20;
extern AnimationHeader D_06008AD0;
extern u32 D_060091D8;
extern AnimationHeader D_06009BE4;
extern u32 D_06009FBC;
extern u32 D_0600A598;
extern u32 D_0600A334;
extern SkeletonHeader D_06010D70;
extern u32 D_06001110;
extern u32 D_06001D8C;
extern u32 D_06002348;
extern u32 D_06002E54;

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B533B0.s")
/*void func_80B533B0(EnZl3 *this, GlobalContext *globalCtx) {
    Actor* thisx = &this->actor;
    //if (thisx) {}

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder_Set3(globalCtx, &this->collider, thisx, &D_80B5A410);
}*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B533FC.s")

void EnZl3_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnZl3* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void func_80B53468(void) {
    Audio_SetBGM(NA_SE_PL_DUMMY_98);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B53488.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B534CC.s")

void func_80B53554(EnZl3* this, s16 arg1) {
    this->unk_244 = arg1;
}

void func_80B53568(EnZl3* this, s16 arg1) {
    this->unk_248 = arg1;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5357C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B53614.s")

void func_80B5366C(EnZl3* this, GlobalContext* globalCtx) {
    func_8002E4B4(globalCtx, &this->actor, 75.0f, 30.0f, 30.0f, 5);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B536B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B536C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B53764.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B537E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B538B0.s")

s32 EnZl3_FrameUpdateMatrix(EnZl3* this) {
    return SkelAnime_FrameUpdateMatrix(&this->skelAnime);
}

u8 func_80B5396C(EnZl3* this) {
    return this->unk_3C8;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B53974.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B53980.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B53B64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B54360.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5458C.s")

void func_80B54CE8(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* actor, Gfx** gfx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B54CE8.s")

s32 func_80B54DB4(EnZl3* this) {
    s32 params = this->actor.params >> 8;

    return params & 0xFF;
}

s32 func_80B54DC4(EnZl3 *this) {
    s32 params = this->actor.params >> 4;

    return params & 0xF;
}

s32 func_80B54DD4(EnZl3* this) {
    s32 params = this->actor.params;

    return params & 0xF;
}

void func_80B54DE0(EnZl3* this, GlobalContext* globalCtx) {
    s32 idx = this->unk_318;

    gSegments[6] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[idx].segment);
}

void func_80B54E14(EnZl3* this, AnimationHeader* animation, u8 arg2, f32 transitionRate, s32 arg4) {
    f32 frameCount = SkelAnime_GetFrameCount(&animation->genericHeader);
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

    SkelAnime_ChangeAnim(&this->skelAnime, animation, playbackSpeed, unk0, fc, arg2, transitionRate);
}

void func_80B54EA4(EnZl3 *this, GlobalContext *globalCtx) {
    f32 posX = this->actor.posRot.pos.x;
    f32 posY = this->actor.posRot.pos.y;
    f32 posZ = this->actor.posRot.pos.z;

    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_EG, posX, posY, posZ, 0, 0, 0, 0);
}

void func_80B54EF4(EnZl3 *this) {
    func_80078914(&this->actor.unk_E4, NA_SE_VO_Z1_PAIN);
}

void func_80B54F18(EnZl3 *this, GlobalContext *globalCtx) {
    f32 posX;
    f32 posY;
    f32 posZ;

    if (this->unk_2F8 == 0) {
        posX = this->actor.posRot.pos.x;
        posY = this->actor.posRot.pos.y + (kREG(5) + -26.0f);
        posZ = this->actor.posRot.pos.z;

        Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DOOR_WARP1, posX, posY, posZ, 0, 0x4000, 0, 3);
        this->unk_2F8 = 1;
    }
}

void func_80B54FB4(EnZl3 *this, GlobalContext *globalCtx) {
    osSyncPrintf("ゼルダ姫のEn_Zl3_Actor_inFinal_Init通すよ!!!!!!!!!!!!!!!!!!!!!!!!!\n");
    func_80B54E14(this, &D_06008AD0, 0, 0.0f, 0);
    func_80B53554(this, 4);
    func_80B53568(this, 2);
    this->action = 1;
    this->drawConfig = 1;
    func_80B54F18(this, globalCtx);
    this->actor.shape.rot.z = 0;
    this->unk_3C4 = this->actor.posRot.rot.z;
    this->actor.posRot.rot.z = this->actor.shape.rot.z;
    osSyncPrintf("ゼルダ姫のEn_Zl3_Actor_inFinal_Initは通った!!!!!!!!!!!!!!!!!!!!!!!!!\n");
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55054.s")
/*void func_80B55054(EnZl3 *this) {
    struct Actor *attachedB;
    void *temp_v0;

    if (this->unk328 != 0) {
        attachedB = this->actor.attachedB;
        if (attachedB != 0) {
            temp_v0 = this + 0x2EC;
            if (this->unk2EC < 19.0f) {
                attachedB->unk1A8 = (f32) ((20.0f - *temp_v0) * 12.75f);
                *temp_v0 = (f32) (*temp_v0 + 1.0f);
                return;
            }
            this = this;
            Actor_Kill((Actor *) attachedB);
            this->actor.attachedB = NULL;
        }
    }
}*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B550F0.s")
/*void func_80B550F0(EnZl3 *this) {
    if (this->actor.attachedB != NULL) {
        this->actor.attachedB->posRot.pos.x = this->actor.posRot.pos.x;
        this->actor.attachedB->posRot.pos.y = (kREG(5) + -26.0f) + this->actor.posRot.pos.y;
        this->actor.attachedB->posRot.pos.z = this->actor.posRot.pos.z;
    }
}*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55144.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B551E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55220.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55268.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B552A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B552DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55334.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55368.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B553B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B553E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55408.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55444.s")

void func_80B55550(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    EnZl3_FrameUpdateMatrix(this);
    func_80B550F0(this);
    func_80B55444(this, globalCtx);
}

void func_80B555A4(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B53554(this, 2);
    func_80B550F0(this);
    func_80B55054(this);
    func_80B55444(this, globalCtx);
}

void func_80B55604(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B55144(this);
    func_80B552A8(this, EnZl3_FrameUpdateMatrix(this));
    func_80B55054(this);
    func_80B55444(this, globalCtx);
}

void func_80B5566C(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B55334(this, EnZl3_FrameUpdateMatrix(this));
    func_80B55444(this, globalCtx);
}

void func_80B556CC(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B553B4(this, EnZl3_FrameUpdateMatrix(this));
    func_80B55444(this, globalCtx);
}

void func_80B5572C(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B55444(this, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55780.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55808.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5582C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5585C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B558A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B559C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55A58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55A84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55AC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55B04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55B38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55B78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55BAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55C0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55C4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55C70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55CCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55D00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55DB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55E08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55E48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55E7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55EBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55EF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55F38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55F6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5604C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56090.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56108.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56160.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B561A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B561E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56214.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B562F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5634C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5638C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B563C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56400.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56434.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56474.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B564A8.s")

void func_80B56658(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B564A8(this, globalCtx);
}

void func_80B566AC(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B55B04(this, EnZl3_FrameUpdateMatrix(this));
    func_80B564A8(this, globalCtx);
}

void func_80B5670C(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B55B78(this, EnZl3_FrameUpdateMatrix(this));
    func_80B564A8(this, globalCtx);
}

void func_80B5676C(EnZl3* this, GlobalContext* globalCtx) {
    s32 something;

    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    something = EnZl3_FrameUpdateMatrix(this);
    func_80B559C4(this);
    func_80B55C4C(this, something);
}

void func_80B567CC(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B564A8(this, globalCtx);
}

void func_80B5682C(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B55A58(this, globalCtx);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B55CCC(this, EnZl3_FrameUpdateMatrix(this));
    func_80B564A8(this, globalCtx);
    func_80B55D00(this, globalCtx);
}

void func_80B568B4(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B537E8(this);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B55DB0(this, globalCtx);
}

void func_80B5691C(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B55E48(this, EnZl3_FrameUpdateMatrix(this));
    func_80B564A8(this, globalCtx);
}

void func_80B5697C(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B55EBC(this, EnZl3_FrameUpdateMatrix(this));
    func_80B5585C(this);
    func_80B564A8(this, globalCtx);
}

void func_80B569E4(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B533FC(this, globalCtx);
    func_80B537E8(this);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B55F38(this, EnZl3_FrameUpdateMatrix(this));
    func_80B564A8(this, globalCtx);
    func_80B55F6C(this, globalCtx);
}

void func_80B56A68(EnZl3* this, GlobalContext* globalCtx) {
    s32 something;

    func_80B54DE0(this, globalCtx);
    func_80B533FC(this, globalCtx);
    func_80B537E8(this);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    something = EnZl3_FrameUpdateMatrix(this);
    func_80B564A8(this, globalCtx);
    func_80B56090(this, something);
}

void func_80B56AE0(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B533FC(this, globalCtx);
    func_80B537E8(this);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B55F38(this, EnZl3_FrameUpdateMatrix(this));
    func_80B56108(this, globalCtx);
}

void func_80B56B54(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B564A8(this, globalCtx);
}

void func_80B56BA8(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B561E0(this, EnZl3_FrameUpdateMatrix(this));
    func_80B564A8(this, globalCtx);
    func_80B56214(this, globalCtx);
}

void func_80B56C24(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B562F4(this, globalCtx);
}

void func_80B56C84(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B5638C(this, EnZl3_FrameUpdateMatrix(this));
    func_80B564A8(this, globalCtx);
}

void func_80B56CE4(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B56400(this, EnZl3_FrameUpdateMatrix(this));
    func_80B564A8(this, globalCtx);
}

void func_80B56D44(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B56474(this, EnZl3_FrameUpdateMatrix(this));
    func_80B564A8(this, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56DA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56DC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56DEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56E38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56EB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56EE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56F10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56F8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56FAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57034.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57104.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B571A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B571FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57240.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57298.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B572F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57324.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57350.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B573C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B573FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57458.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57564.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B575B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B575D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B575F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5764C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B576C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57704.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5772C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57754.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B577BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57858.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57890.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57A74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57AAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57AE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57C54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57C7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57C8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57CB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57D60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57D80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57EAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57EEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57F1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57F84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B58014.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B58214.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B58268.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B582C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B584B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B58624.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5884C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B58898.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B588E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B58938.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5899C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B58A1C.s")

void func_80B58A50(EnZl3 *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;
    s8 invincibilityTimer = player->invincibilityTimer;

    if ((invincibilityTimer <= 0) && (player->fallY < 51)) {
        func_80B54E14(this, &D_06009BE4, 0, -11.0f, 0);
        this->action = 34;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B58AAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B58C08.s")

void func_80B58D50(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B57EAC(this, globalCtx);
}

void func_80B58DB0(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B57EEC(this, globalCtx);
}

void func_80B58E10(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    Actor_SetHeight(&this->actor, 60.0f);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B57F1C(this, globalCtx);
}

void func_80B58E7C(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B53764(this, globalCtx);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B58014(this, globalCtx);
    func_80B536B4(this);
}

void func_80B58EF4(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B538B0(this);
    func_80B53764(this, globalCtx);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B58214(this, globalCtx);
}

void func_80B58F6C(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B537E8(this);
    func_80B536C4(this);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B58268(this, globalCtx);
}

void func_80B58FDC(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B537E8(this);
    func_80B536C4(this);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B582C8(this, globalCtx);
}

void func_80B5904C(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B537E8(this);
    func_80B536C4(this);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B584B4(this, globalCtx);
}

void func_80B590BC(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B537E8(this);
    func_80B536C4(this);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B58624(this, globalCtx);
}

void func_80B5912C(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B536C4(this);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B56E38(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B57CB4(this, globalCtx);
    func_80B57D60(this, globalCtx);
    func_80B58A1C(this, globalCtx);
}

void func_80B591BC(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B536C4(this);
    func_80B538B0(this);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B58A50(this, globalCtx);
}

void func_80B5922C(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B536C4(this);
    func_80B57298(this);
    Actor_SetHeight(&this->actor, 60.0f);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B58AAC(this, globalCtx);
}

void func_80B592A8(EnZl3 *this, GlobalContext *globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B536C4(this);
    func_80B57298(this);
    Actor_SetHeight(&this->actor, 60.0f);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B57AAC(this, EnZl3_FrameUpdateMatrix(this), &D_06003D20);
    func_80B56DEC(this);
    func_80B58AAC(this, globalCtx);
}

void func_80B59340(EnZl3 *this, GlobalContext *globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B536C4(this);
    func_80B57298(this);
    Actor_SetHeight(&this->actor, 60.0f);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B57AAC(this, EnZl3_FrameUpdateMatrix(this), &D_06009FBC);
    func_80B58AAC(this, globalCtx);
}

void func_80B593D0(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B536C4(this);
    func_80B57298(this);
    func_80B5366C(this, globalCtx);
    func_80B56E38(this, globalCtx);
    Actor_SetHeight(&this->actor, 60.0f);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B58C08(this, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5944C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B59698.s")

s32 func_80B59768(EnZl3* this, GlobalContext* globalCtx) {
    s32 cond = Flags_GetSwitch(globalCtx, 0x37) != 0;
    u8 curSpawn;

    if (cond) {
        cond = globalCtx->sceneNum == 0x4F;
        if (!cond) {
            cond = globalCtx->sceneNum == 0x1A;
            if (!cond) {
                cond = globalCtx->sceneNum == 0xE;
                if (!cond) {
                    cond = globalCtx->sceneNum == 0xF;
                }
            }
        }
    }

    if (cond) {
        curSpawn = globalCtx->curSpawn;
        if (((func_80B54DB4(this) == 0x20)) && (curSpawn == 0) && (gSaveContext.timer2Value <= 0)) {
            return 1;
        }
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B59828.s")

void func_80B59A80(EnZl3* this, GlobalContext* globalCtx) {
    if (func_80B59768(this, globalCtx)) {
        Audio_PlaySoundGeneral(NA_SE_OC_REVENGE, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B59AD0.s")
/*void func_80B59AD0(EnZl3 *this, GlobalContext *globalCtx) {
    Flags_SetSwitch(globalCtx, 0x36);
    func_80088AA0(180);
    func_80B54EA4(this, globalCtx);
    func_80B53614(this, globalCtx);
    gSaveContext.eventChkInf[12] &= ~0x80;
    func_80B56F10(this, globalCtx);
    gSaveContext.healthAccumulator = 320;
    func_80087680(globalCtx);
    this->action = 27;
    this->drawConfig = 1;
}*/

void func_80B59B6C(EnZl3 *this, GlobalContext *globalCtx) {
    s32 sp2C = func_80B54DD4(this);

    this->unk_3DC = SkelAnime_GetFrameCount(SEGMENTED_TO_VIRTUAL(&D_060091D8));
    this->unk_3E0 = SkelAnime_GetFrameCount(SEGMENTED_TO_VIRTUAL(&D_0600A598));
    this->unk_3E4 = SkelAnime_GetFrameCount(SEGMENTED_TO_VIRTUAL(&D_0600A334));
    this->unk_3F4 = SkelAnime_GetFrameCount(SEGMENTED_TO_VIRTUAL(&D_06001110));
    this->unk_3EC = SkelAnime_GetFrameCount(SEGMENTED_TO_VIRTUAL(&D_06002348));
    this->unk_3F0 = SkelAnime_GetFrameCount(SEGMENTED_TO_VIRTUAL(&D_06002E54));
    this->unk_3E8 = SkelAnime_GetFrameCount(SEGMENTED_TO_VIRTUAL(&D_06001D8C));

    switch (sp2C) {
        case 0:
            func_80B54FB4(this, globalCtx);
            break;
        case 1:
            func_80B55780(this, globalCtx);
            break;
        case 3:
            func_80B59828(this, globalCtx);
            break;
        default:
            osSyncPrintf(VT_FGCOL(RED) " En_Oa3 の arg_data がおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
            Actor_Kill(&this->actor);
    }
}

void func_80B59DB8(EnZl3* this, GlobalContext* globalCtx) {
    s32 pad;
    ObjectContext* objCtx = &globalCtx->objectCtx;
    s32 objIndex = Object_GetIndex(objCtx, OBJECT_ZL2_ANIME2);
    s32 pad2;

    if (objIndex < 0) {
        osSyncPrintf(VT_FGCOL(RED) "En_Zl3_main_bankアニメーションのバンクを読めない!!!!!!!!!!!!\n" VT_RST);
        return;
    }

    if (Object_IsLoaded(objCtx, objIndex)) {
        this->unk_318 = objIndex;
        func_80B54DE0(this, globalCtx);
        func_80B59B6C(this, globalCtx);
    }
}

void EnZl3_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnZl3* this = THIS;

    if (this->action < 0 || this->action >= 40 || sActionFuncs[this->action] == NULL) {
        osSyncPrintf(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    sActionFuncs[this->action](this, globalCtx);
}

void EnZl3_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnZl3* this = THIS;
    ActorShape* shape = &this->actor.shape;
    s32 val;

    osSyncPrintf("ゼルダ姫のEn_Zl3_Actor_ct通すよ!!!!!!!!!!!!!!!!!!!!!!!!!\n");
    ActorShape_Init(shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    shape->unk_14 = 0;
    func_80B533B0(this, globalCtx);
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06010D70, NULL, this->limbDrawTable, this->transitionDrawTable,
                     15);

    val = func_80B54DD4(this);
    switch (val) {
        case 1:
            gSaveContext.timer2State = 0;
            break;
        case 3:
            func_80B59A80(this, globalCtx);
            break;
    }

    osSyncPrintf("ゼルダ姫のEn_Zl3_Actor_ctは通った!!!!!!!!!!!!!!!!!!!!!!!!!\n");
}

s32 func_80B59F74(GlobalContext *globalCtx, s32 limbIndex, Gfx **dList, Vec3f *pos, Vec3s *rot, Actor *thisx, Gfx **gfx) {
    EnZl3* this = THIS;
    
    if (this->unk_308 < 0 || this->unk_308 >= 2 || D_80B5A560[this->unk_308] == NULL) {
        osSyncPrintf(VT_FGCOL(RED) "描画前処理モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return 0;
    }
    return D_80B5A560[this->unk_308](globalCtx, limbIndex, dList, pos, rot, this, gfx);
}

void func_80B59FE8(EnZl3 *this, GlobalContext *globalCtx) {

}

void func_80B59FF4(EnZl3 *this, GlobalContext *globalCtx) {
    s32 pad[2];
    s16 unk_244 = this->unk_244;
    u32 sp78 = D_80B5A43C[unk_244];
    s16 unk_248 = this->unk_248;
    SkelAnime* skelAnime= &this->skelAnime;
    u32 sp6C = D_80B5A45C[unk_248];
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_zl3.c", 2165);
    func_80093D18(globalCtx->state.gfxCtx);
    
    gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(sp78));
    gSPSegment(gfxCtx->polyOpa.p++, 0x09, SEGMENTED_TO_VIRTUAL(sp78));
    gSPSegment(gfxCtx->polyOpa.p++, 0x0A, SEGMENTED_TO_VIRTUAL(sp6C));
    gDPSetEnvColor(gfxCtx->polyOpa.p++, 0x00, 0x00, 0x00, 0xFF);
    gSPSegment(gfxCtx->polyOpa.p++, 0x0B, &D_80116280[2]);

    gfxCtx->polyOpa.p = SkelAnime_DrawSV2(globalCtx, skelAnime->skeleton, skelAnime->limbDrawTbl, skelAnime->dListCount, func_80B59F74, func_80B54CE8, &this->actor, gfxCtx->polyOpa.p);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_zl3.c", 2190);
}

void func_80B5A1D0(EnZl3* this, GlobalContext* globalCtx) {
    s32 pad[2];
    s16 unk_244 = this->unk_244;
    u32 sp78 = D_80B5A43C[unk_244];
    s16 unk_248 = this->unk_248;
    SkelAnime* skelAnime= &this->skelAnime;
    u32 sp6C = D_80B5A45C[unk_248];
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_zl3.c", 2205);
    func_80093D84(globalCtx->state.gfxCtx);

    gSPSegment(gfxCtx->polyXlu.p++, 0x08, SEGMENTED_TO_VIRTUAL(sp78));
    gSPSegment(gfxCtx->polyXlu.p++, 0x09, SEGMENTED_TO_VIRTUAL(sp78));
    gSPSegment(gfxCtx->polyXlu.p++, 0x0A, SEGMENTED_TO_VIRTUAL(sp6C));
    gDPSetEnvColor(gfxCtx->polyXlu.p++, 0x00, 0x00, 0x00, this->unk_258);
    gSPSegment(gfxCtx->polyXlu.p++, 0x0B, &D_80116280[0]);

    gfxCtx->polyXlu.p =
        SkelAnime_DrawSV2(globalCtx, skelAnime->skeleton, skelAnime->limbDrawTbl, skelAnime->dListCount,
                          func_80B59F74, NULL, &this->actor, gfxCtx->polyXlu.p);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_zl3.c", 2234);
}

void EnZl3_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnZl3* this = THIS;

    if (this->drawConfig < 0 || this->drawConfig >= 3 || sDrawFuncs[this->drawConfig] == NULL) {
        osSyncPrintf(VT_FGCOL(RED) "描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    sDrawFuncs[this->drawConfig](this, globalCtx);
}
