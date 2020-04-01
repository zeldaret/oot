#include "z_en_owl.h"

#define ROOM 0x00
#define FLAGS 0x00000019

void EnOwl_Init(EnOwl* this, GlobalContext* globalCtx);
void EnOwl_Destroy(EnOwl* this, GlobalContext* globalCtx);
void EnOwl_Update(EnOwl* this, GlobalContext* globalCtx);
void EnOwl_Draw(EnOwl* this, GlobalContext* globalCtx);


const ActorInit En_Owl_InitVars = {
    ACTOR_EN_OWL,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_OWL,
    sizeof(EnOwl),
    (ActorFunc)EnOwl_Init,
    (ActorFunc)EnOwl_Destroy,
    (ActorFunc)EnOwl_Update,
    (ActorFunc)EnOwl_Draw,
};

static InitChainEntry sInitChain[] = {
0xC8500019, 0xB0F40578, 0xB0F807D0, 0x30FC0960
};

static ColliderCylinderInit sColliderInit = {
    0x0A001139, 0x10010000, 0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, 0x001E0028, 0x00000000, 0x00000000
};

extern SkeletonHeader D_06003F18;
extern SkeletonHeader D_060100B0;
extern AnimationHeader D_060015CC;
extern AnimationHeader D_06003760;

void func_80ACD0B8(EnOwl* this, ActorFunc, void*, s32, AnimationHeader*, f32);
void func_80ACBA24(EnOwl* this, GlobalContext* globalCtx);
void func_80ACC540(EnOwl* this);
void func_80ACA928(EnOwl* this, GlobalContext* globalCtx);
void func_80ACAB2C(EnOwl* this, GlobalContext* globalCtx);
/*
void SkelAnime_ChangeAnimation(SkelAnime* skelAnime, AnimationHeader* animationseg, f32 playbackSpeed, f32 unk0,
                               f32 frameCount, u8 unk1, f32 transitionRate);*/
#define NON_MATCHING
#ifdef NON_MATCHING
void EnOwl_Init(EnOwl* this, GlobalContext* globalCtx, ActorFunc actionFunc, void* arg3, s32 arg4)
{
    u32 sp44;
    s32 sp40;
    void *sp38;
    s32 sp34;
    s32 temp_a1;
    s32 temp_a3;
    s8 temp_v0;
    u32 temp_a2;
    void *temp_a1_2;
    void *temp_v0_2;
    u32 phi_a2;
    s32 phi_a3;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, 0, (void*)0x8003B5EC, 36.0f);
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06003F18, &D_060015CC, this->drawTbl, this->transitionTbl, 0x15);
    SkelAnime_InitSV(globalCtx, &this->skelAnime2, &D_060100B0, &D_06003760, this->drawTbl, this->transitionTbl2, 0x10);
    ActorCollider_AllocCylinder(globalCtx, &this->colCylinder);
    ActorCollider_InitCylinder(globalCtx, &this->colCylinder, &this->actor, &sColliderInit);
    this->actor.sub_98.mass = 0xFF;
    this->actor.minVelocityY = -10.0f;
    this->actor.unk_4C = 500.0f;
    func_80ACD0B8(this, &func_80ACBA24, &func_80ACC540, sp34, &D_06003760, 0.0f);
    temp_v0 = 0 & 0xFF;
    this->unk_406 = 0;
    this->unk_3FC = 0;
    this->unk_409 = 0;
    this->unk_405 = 4;
    this->unk_407 = 0;
    this->unk_404 = 0;
    this->unk_408 = 4;
    phi_a2 = (u32) ((s32) (this->actor.params & 0xFC0) >> 6);
    phi_a3 = this->actor.params & 0x3F;
    if (this->actor.params != 0xFFF)
    {
        goto block_2;
    }
    phi_a2 = 1U;
    phi_a3 = 0x20;
block_2:
    sp44 = (u32) phi_a2;
    sp40 = (s32) phi_a3;
    osSyncPrintf("[36m 会話フクロウ %4x no = %d, sv = %d\n[m", &this->actor.params, phi_a2, phi_a3); // [36m conversation owl% 4x no =% d, sv =% d \ n [m
    temp_a2 = phi_a2;
    temp_a3 = phi_a3;
    if (temp_a2 == 0)
    {
        goto block_6;
    }
    if (temp_a3 >= 0x20)
    {
        goto block_6;
    }
    sp44 = temp_a2;
    if (Flags_GetSwitch(globalCtx, temp_a3) == 0)
    {
        goto block_6;
    }
    osSyncPrintf("savebitでフクロウ退避\n"); // "Escape owl with savebit
    Actor_Kill(&this->actor);
    return;
block_6:
    this->unk_3EE = 0;
    this->unk_400 = this->actor.posRot.rot.y;
    if ((u32) temp_a2 >= 0xDU)
    {
        goto block_32;
    }
    goto **(&jtbl_80ACD7FC + (temp_a2 * 4));
    switch(temp_a2){
        default:
        this->unk_40A = 0;
        this->actionFunc = sp38;
        this->actor.unk_F4 = 4000.0f;
        break;
        case 1:
        this->actionFunc = &func_80ACA928;
        break;
        case 2:
        this->unk_3FC |= 2;
        this->unk_3EE = 0x20;
        this->actionFunc = &func_80ACAB2C;
        break;
        case 3:
        

    }
case 2:
    arg0->unk3FC = (u16) (arg0->unk3FC | 2);
    arg0->unk3EE = (u16)0x20;
    arg0->unk40C = &func_80ACAB2C;
    goto block_33;
case 3:
    if (((0x80160000 + 0xE660)->unkEDC & 1) == 0)
    {
        goto block_13;
    }
    osSyncPrintf(&D_80ACD694, temp_a2);
    Actor_Kill(arg0);
    return;
block_13:
    arg0->unk40C = &func_80ACACD8;
    goto block_33;
case 4:
    if (((0x80160000 + 0xE660)->unkEDC & 8) == 0)
    {
        goto block_16;
    }
    osSyncPrintf(&D_80ACD6A4, temp_a2);
    Actor_Kill(arg0);
    return;
block_16:
    arg0->unk40C = &func_80ACAE5C;
    goto block_33;
case 5:
    arg0->unk40C = &func_80ACAFE0;
    goto block_33;
case 6:
    temp_v0_2 = 0x80160000 + 0xE660;
    if ((temp_v0_2->unkEDA & 0x200) != 0)
    {
        goto block_20;
    }
    if ((temp_v0_2->unkEDC & 1) != 0)
    {
        goto block_21;
    }
block_20:
    osSyncPrintf(&D_80ACD6B4, temp_a2);
    Actor_Kill(arg0);
    return;
block_21:
    arg0->unk40C = &func_80ACB0B0;
    goto block_33;
case 7:
    arg0->unk40C = &func_80ACB1A0;
    Flags_UnsetSwitch(sp54, 0x23, temp_a2);
    return;
case 8:
    arg0->unk40C = &func_80ACB2B4;
    goto block_33;
case 9:
    arg0->unk40C = &func_80ACB2B4;
    goto block_33;
case 10:
    arg0->unk40C = &func_80ACB3E0;
    goto block_33;
case 11:
    if ((*(void *)0x80127150 & (0x80160000 + 0xE660)->unkA4) != 0)
    {
        goto block_28;
    }
    osSyncPrintf(&D_80ACD6C4, temp_a2);
    Actor_Kill(arg0);
    return;
block_28:
    arg0->unk40C = &func_80ACB568;
    goto block_33;
case 12:
    if ((*(void *)0x80127158 & (0x80160000 + 0xE660)->unkA4) != 0)
    {
        goto block_31;
    }
    osSyncPrintf(&D_80ACD6D4, temp_a2);
    Actor_Kill(arg0);
    return;
block_31:
    arg0->unk40C = &func_80ACB6EC;
    goto block_33;
block_32:
    sp44 = (u32) temp_a2;
    osSyncPrintf(&D_80ACD6E4, temp_a2);
    osSyncPrintf(&D_80ACD6EC, sp44);
    osSyncPrintf(&D_80ACD6F8);
    osSyncPrintf(&D_80ACD72C);
    arg0->unk3FC = (u16) (arg0->unk3FC | 2);
    arg0->unk3EE = (u16)0x20;
    arg0->unk40C = &func_80ACA928;
block_33:
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/EnOwl_Init.s")
#endif

void EnOwl_Destroy(EnOwl* this, GlobalContext* globalCtx)
{
    EnOwl* thisx = this;
    ActorCollider_FreeCylinder(globalCtx, &thisx->colCylinder);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACA3B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACA3F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACA558.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACA5C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACA62C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACA690.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACA6C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACA71C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACA76C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACA7E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACA88C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACA928.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACA998.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACAA54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACAAC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACAB2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACAB88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACAC6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACACD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACAD34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACADF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACAE5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACAEB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACAF74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACAFE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACB03C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACB0B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACB148.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACB1A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACB22C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACB274.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACB2B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACB344.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACB3E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACB440.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACB4FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACB568.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACB5C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACB680.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACB6EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACB748.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACB904.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACB994.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACBA24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACBAB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACBC0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACBD4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACBEA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACBF50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACC00C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACC23C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACC30C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACC390.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACC460.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACC540.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACC5CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACC624.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/EnOwl_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACCE00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACCF34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/EnOwl_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACD0B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACD130.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACD1C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACD220.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACD2CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACD4D4.s")
