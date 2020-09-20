/*
 * File: z_bg_spot03_taki.c
 * Overlay: ovl_Bg_Spot03_Taki
 * Description: Zora's River Waterfall
 */

#include "z_bg_spot03_taki.h"

#define FLAGS 0x00000030

#define THIS ((BgSpot03Taki*)thisx)

void BgSpot03Taki_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot03Taki_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot03Taki_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot03Taki_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808ADEF0(BgSpot03Taki* this, GlobalContext* globalCtx);

const ActorInit Bg_Spot03_Taki_InitVars = {
    ACTOR_BG_SPOT03_TAKI,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_SPOT03_OBJECT,
    sizeof(BgSpot03Taki),
    (ActorFunc)BgSpot03Taki_Init,
    (ActorFunc)BgSpot03Taki_Destroy,
    (ActorFunc)BgSpot03Taki_Update,
    (ActorFunc)BgSpot03Taki_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

extern UNK_TYPE D_06000C98;
extern UNK_TYPE D_06000800;
extern UNK_TYPE D_06000990;
extern UNK_TYPE D_06000B20;
extern UNK_TYPE D_06000BC0;
extern UNK_TYPE D_06001580;

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot03_Taki/func_808ADAE0.s")
// void func_808ADAE0(BgSpot03Taki* this, s32 arg0) {
//     void *temp_a0;
//     void *temp_v0;

//     s32 phi_v0;

//     if (arg0 == 0) {
//         phi_v0 = SEGMENTED_TO_VIRTUAL(D_06000800);
//     } else {
//         phi_v0 = SEGMENTED_TO_VIRTUAL(D_06000990);
//     }

//     temp_v0 = PHYSICAL_TO_VIRTUAL(phi_v0);

//     temp_v0->unkAF = (s8) (u32) this->unk_170;
//     temp_a0 = temp_v0 + (1 * 0x10);
//     temp_a0->unkAF = (s8) (u32) this->unk_170;
//     temp_a0->unkBF = (s8) (u32) this->unk_170;
//     temp_a0->unkCF = (s8) (u32) this->unk_170;
//     temp_a0->unkDF = (s8) (u32) this->unk_170;
// }


// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot03_Taki/BgSpot03Taki_Init.s")
void BgSpot03Taki_Init(Actor *thisx, GlobalContext *globalCtx) {
    BgSpot03Taki *this = THIS;
    s16 unused;
    s32 sp24 = 0;

    this->switchFlag = (this->dyna.actor.params & 0x3F);
    DynaPolyInfo_SetActorMove(&this->dyna, 0);
    DynaPolyInfo_Alloc(&D_06000C98, &sp24);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, sp24);
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    this->unk_174 = 0;
    this->unk_170 = 255.0f;
    func_808ADAE0(this, 0);
    func_808ADAE0(this, 1);
    this->actionFunc = func_808ADEF0;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot03_Taki/BgSpot03Taki_Destroy.s")
void BgSpot03Taki_Destroy(Actor *thisx, GlobalContext *globalCtx) {
    BgSpot03Taki *this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot03_Taki/func_808ADEF0.s")
void func_808ADEF0(BgSpot03Taki* this, GlobalContext* globalCtx) {
    if (this->unk_16A == 0) {
        if (Flags_GetSwitch(globalCtx, this->switchFlag) != 0) {
            this->unk_16A = 2;
            this->unk_168 = 0x28;
            func_800800F8(globalCtx, 0x1004, -0x63, NULL, 0);
        }
    } else if (this->unk_16A == 1) {
        this->unk_168--;
        if (this->unk_168 < 0) {
            this->unk_16A = 2;
        }
    } else if (this->unk_16A == 2) {
        if (this->unk_170 > 0) {
            this->unk_170 -= 5;
            if (this->unk_170 <= 0.0f) {
                func_8003EBF8(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
                this->unk_168 = 0x190;
                this->unk_16A = 3;
                this->unk_170 = 0;
            }
        }
    } else if (this->unk_16A == 3) {
        this->unk_168--;
        if (this->unk_168 < 0) {
            this->unk_16A = 4;
        }
    } else if (this->unk_16A == 4) {
        if (this->unk_170 < 255.0f) {
            this->unk_170 += 5.0f;
            if (this->unk_170 >= 255.0f) {
                func_8003EC50(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
                this->unk_16A = 0;
                this->unk_170 = 255.0f;
                Flags_UnsetSwitch(globalCtx, this->switchFlag);
            }
        }
    }
    func_808ADAE0(this, this->unk_174);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot03_Taki/BgSpot03Taki_Update.s")
void BgSpot03Taki_Update(Actor *thisx, GlobalContext *globalCtx) {
    BgSpot03Taki *this = THIS;

    this->actionFunc(this, globalCtx);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot03_Taki/BgSpot03Taki_Draw.s")
void BgSpot03Taki_Draw(Actor *thisx, GlobalContext *globalCtx) {
    BgSpot03Taki *this = THIS;
    u32 gameplayFrames;
    s16 pad;
    Gfx *dispRefs[4];
    GraphicsContext *gfxCtx;

    gfxCtx = globalCtx->state.gfxCtx;

    Graph_OpenDisps(dispRefs, gfxCtx, "../z_bg_spot03_taki.c", 0x141);

    gameplayFrames = globalCtx->gameplayFrames;

    gSPMatrix(gfxCtx->polyXlu.p++,
              Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_spot03_taki.c", 0x145),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    func_80093D84(globalCtx->state.gfxCtx);

    gSPSegment(gfxCtx->polyXlu.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0U, gameplayFrames * 5, 0x40, 0x40, 1, 0, gameplayFrames * 5, 0x40, 0x40));

    gSPDisplayList(gfxCtx->polyXlu.p++, D_06000B20);

    if (this->unk_174 == 0) {
        gSPVertex(gfxCtx->polyXlu.p++, D_06000800, 25, 0);
    } else {
        gSPVertex(gfxCtx->polyXlu.p++, D_06000990, 25, 0);
    }

    gSPDisplayList(gfxCtx->polyXlu.p++, D_06000BC0);

    gSPSegment(gfxCtx->polyXlu.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, gameplayFrames, gameplayFrames * 3, 0x40, 0x40, 1, 0 - gameplayFrames, gameplayFrames * 3, 0x40, 0x40));

    gSPDisplayList(gfxCtx->polyXlu.p++, D_06001580);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_spot03_taki.c", 0x166);

    this->unk_174 = (u8) (this->unk_174 == 0);

    if ((s32) this->unk_16A > 0) {
        if ((s32) this->unk_16A < 4) {
            func_800F46E0(&this->dyna.actor.projectedPos, 0x3F000000);
            return;
        }
    }

    func_800F46E0(&this->dyna.actor.projectedPos, 0x3F800000);
}
