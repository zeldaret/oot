#include "z_en_guest.h"

#define FLAGS 0x00000019

#define THIS ((EnGuest*)thisx)

void EnGuest_Init(Actor* thisx, GlobalContext* globalCtx);
void EnGuest_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnGuest_Update(Actor* thisx, GlobalContext* globalCtx);

void func_80A5046C(EnGuest *this);
void func_80A509D4(Actor* thisx, GlobalContext* globalCtx);
void func_80A505CC(Actor* thisx, GlobalContext* globalCtx);
void func_80A50518(Actor* thisx, GlobalContext* globalCtx);
void func_80A5057C(Actor* thisx, GlobalContext* globalCtx);
s32 func_80A50774(GlobalContext *globalCtx, s32 limbIndex, Gfx **dList, Vec3f *pos, Vec3s *rot, Actor *actor);

extern SkeletonHeader D_060000F0;
extern AnimationHeader D_060042AC;
extern UNK_TYPE D_060005FC;
extern UNK_TYPE D_060006FC;
extern UNK_TYPE D_060007FC;

const ActorInit En_Guest_InitVars = {
    ACTOR_EN_GUEST,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_BOJ,
    sizeof(EnGuest),
    (ActorFunc)EnGuest_Init,
    (ActorFunc)EnGuest_Destroy,
    (ActorFunc)EnGuest_Update,
    NULL,
};

static ColliderCylinderInit_Set3 colliderInit = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 10, 60, 0, { 0, 0, 0 } },
};

static InitChainEntry initChain[] = {
    ICHAIN_U8(unk_1F, 6, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 500, ICHAIN_STOP),
};

UNK_PTR D_80A50BA4[] = {
    &D_060005FC, &D_060006FC, &D_060007FC,
};

void EnGuest_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnGuest* this = THIS;
    
    if ((gSaveContext.infTable[7] & 0x40) != 0) {
        Actor_Kill(&this->actor);
    } else {
        this->unk_30C = Object_GetIndex(&globalCtx->objectCtx, 0xC5);
        if (this->unk_30C < 0) {
            osSyncPrintf("\x1b[41;37m");
            osSyncPrintf("%s[%d] : バンクが無いよ！！\n", "../z_en_guest.c", 0x81);
            osSyncPrintf("\x1b[m");
            __assert("0", "../z_en_guest.c", 0x84);
        }
    }
}

void EnGuest_Destroy(Actor *thisx, GlobalContext *globalCtx) {
    EnGuest* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->unk_254);
}

void EnGuest_Update(Actor *thisx, GlobalContext *globalCtx) {
    EnGuest* this = THIS;
    SkelAnime *sp30;

    if (Object_IsLoaded(&globalCtx->objectCtx, (s32) this->unk_30C) != 0) {
        this->actor.flags = (u32) (this->actor.flags & -0x11);
        Actor_ProcessInitChain(&this->actor, initChain);
        sp30 = &this->unk_14C;
        SkelAnime_InitSV(globalCtx, &this->unk_14C, &D_060000F0, NULL, &this->unk_190, &this->unk_1F0, 0x10);
        gSegments[6] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[this->unk_30C].segment);
        SkelAnime_ChangeAnim(sp30, &D_060042AC, 1.0f, 0.0f, (f32) SkelAnime_GetFrameCount(&D_060042AC.genericHeader), 0, 0.0f);
        this->actor.draw = &func_80A509D4;
        this->actor.update = &func_80A505CC;
        Collider_InitCylinder(globalCtx, &this->unk_254);
        Collider_SetCylinder_Set3(globalCtx, &this->unk_254, &this->actor, &colliderInit);
        Actor_SetHeight(&this->actor, 60.0f);
        this->unk_30E = 0;
        this->unk_30D = 0;
        this->unk_2CA = 0;
        this->actor.textId = 0x700DU;
        this->unk_250 = func_80A50518;
    }
}

void func_80A5046C(EnGuest *this) {
    if (this->unk_30D == 0) {
        if (this->unk_2CA != 0) {
            this->unk_2CA -= 1;
        } else {
            this->unk_30D = 1;
        }
    } else {
        if (this->unk_2CA != 0) {
            this->unk_2CA -= 1;
        } else {
            this->unk_30E += 1;
            if (this->unk_30E >= 3) {
                this->unk_30E = 0;
                this->unk_30D = 0;
                this->unk_2CA = (s32) Math_Rand_ZeroFloat(60.0f) + 20;
            } else {
                this->unk_2CA = 1;
            }
        }
    }
}

void func_80A50518(Actor *thisx, GlobalContext *globalCtx) {
    EnGuest* this = THIS;

    if (func_8002F194(&this->actor, globalCtx) != 0) {
        this->unk_250 = &func_80A5057C;
    }
    else if (this->actor.xzDistanceFromLink < 100.0f) {
        func_8002F2CC(&this->actor, globalCtx, 100.0f);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Guest/func_80A5057C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Guest/func_80A505CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Guest/func_80A50708.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Guest/func_80A50774.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Guest/func_80A509D4.s")
// void func_80A509D4(Actor* thisx, GlobalContext *globalCtx) {
//     EnGuest* this = THIS;
//     Gfx *sp4C;
//     Gfx *sp48;
//     Gfx *sp44;
//     Gfx *temp_v0;
//     Gfx *temp_v0_2;
//     Gfx *temp_v0_3;
//     void *temp_a0;
//     s32 index;
//     Gfx* gfx;
//     s32* temp;

//     Graph_OpenDisps(&sp4C, globalCtx->state.gfxCtx, "../z_en_guest.c", 0x194);
//     func_80093D18(globalCtx->state.gfxCtx);

//     // for (index = 0; index < 3; index += 1)
//     // {
//     //     gfx = globalCtx->state.gfxCtx->polyOpa.p;
//     //     globalCtx->state.gfxCtx->polyOpa.p = gfx + 2;
//     //     gfx->words.w0 = 0xDB060020U + 4 * index;

//     //     if (index == 0)
//     //     {
//     //         gfx->words.w1 = func_80A50708(globalCtx->state.gfxCtx, 0xFF, 0xFF, 0xFF, 0xFF);
//     //     }
//     //     else if (index == 1)
//     //     {
//     //         gfx->words.w1 = func_80A50708(globalCtx->state.gfxCtx, 0xA0, 0x3C, 0xDC, 0xFF);
//     //     }
//     //     else if (index == 2)
//     //     {
//     //         temp = D_80A50BA4[this->unk_30E];
//     //         gfx->words.w1 = PHYSICAL_TO_VIRTUAL((*temp & 0x00FFFFFF) + gSegments[((u32) (*temp * 0x10) >> 0x1C)]);
//     //     }
//     // }

//     temp_v0 = globalCtx->state.gfxCtx->polyOpa.p;
//     globalCtx->state.gfxCtx->polyOpa.p = (Gfx *) (temp_v0 + 8);
//     temp_v0->words.w0 = 0xDB060020U;
//     sp48 = temp_v0;
//     sp48->words.w1 = func_80A50708(globalCtx->state.gfxCtx, 0xFF, 0xFF, 0xFF, 0xFF);

//     temp_v0_2 = globalCtx->state.gfxCtx->polyOpa.p;
//     globalCtx->state.gfxCtx->polyOpa.p = (Gfx *) (temp_v0_2 + 8);
//     temp_v0_2->words.w0 = 0xDB060024U;
//     sp44 = temp_v0_2;
//     sp44->words.w1 = func_80A50708(globalCtx->state.gfxCtx, 0xA0, 0x3C, 0xDC, 0xFF);

//     temp_v0_3 = globalCtx->state.gfxCtx->polyOpa.p;
//     globalCtx->state.gfxCtx->polyOpa.p = (Gfx *) (temp_v0_3 + 8);
//     temp_v0_3->words.w0 = 0xDB060028U;
//     temp = D_80A50BA4[this->unk_30E];
//     temp_v0_3->words.w1 = PHYSICAL_TO_VIRTUAL((*temp & 0x00FFFFFF) + gSegments[((u32) (*temp * 0x10) >> 0x1C)]);

//     SkelAnime_DrawSV(globalCtx, this->unk_14C.skeleton, this->unk_14C.limbDrawTbl, (s32) this->unk_14C.dListCount, func_80A50774, NULL, thisx);
//     Graph_CloseDisps(&sp4C, globalCtx->state.gfxCtx, "../z_en_guest.c", 0x1A5);
// }
