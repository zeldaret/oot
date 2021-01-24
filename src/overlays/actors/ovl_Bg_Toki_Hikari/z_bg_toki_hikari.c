#include "z_bg_toki_hikari.h"

#define FLAGS 0x00000020

#define THIS ((BgTokiHikari*)thisx)

void BgTokiHikari_Init(Actor* thisx, GlobalContext* globalCtx);
void BgTokiHikari_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgTokiHikari_Update(Actor* thisx, GlobalContext* globalCtx);
void BgTokiHikari_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808B9F98(BgTokiHikari* this, GlobalContext* globalCtx);

void func_808BA204(BgTokiHikari* this, GlobalContext* globalCtx);
void func_808BA22C(BgTokiHikari* this, GlobalContext* globalCtx);
void func_808BA274(BgTokiHikari* this, GlobalContext* globalCtx);

extern UNK_TYPE D_06000880;
extern UNK_TYPE D_060009C0;
extern UNK_TYPE D_06000A10;
extern UNK_TYPE D_06007E20;
extern UNK_TYPE D_06007EE0;
extern UNK_TYPE D_06008190;

const ActorInit Bg_Toki_Hikari_InitVars = {
    ACTOR_BG_TOKI_HIKARI,
    ACTORCAT_BG,
    FLAGS,
    OBJECT_TOKI_OBJECTS,
    sizeof(BgTokiHikari),
    (ActorFunc)BgTokiHikari_Init,
    (ActorFunc)BgTokiHikari_Destroy,
    (ActorFunc)BgTokiHikari_Update,
    (ActorFunc)BgTokiHikari_Draw,
};

s32 D_808BAC70[] = { 0x485003E8, 0x00000000, 0x00000000, 0x00000000 };

// static InitChainEntry sInitChain[] = {
//     ICHAIN_VEC3F_DIV1000(scale, 1000, ICHAIN_STOP),
// };

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/BgTokiHikari_Init.s")
// void BgTokiHikari_Init(Actor* thisx, GlobalContext* globalCtx) {
//     BgTokiHikari* this = THIS;

//     switch (this->actor.params) {
//         case 0:
//             Actor_ProcessInitChain(&this->actor, sInitChain);
//             this->actionFunc = func_808B9F98;
//             break;

//         case 1:
//             break;
//     }

//     if ((gSaveContext.eventChkInf[4] & 0x800) == 0) {
//         this->actionFunc = func_808BA204;
//         this->unk_14C = 0.0f;
//     } else {

//         Actor_Kill(thisx);
//     }
// }

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/BgTokiHikari_Destroy.s")
void BgTokiHikari_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/func_808B9F98.s")
void func_808B9F98(BgTokiHikari* this, GlobalContext* globalCtx) {
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/BgTokiHikari_Update.s")
void BgTokiHikari_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgTokiHikari* this = THIS;
    this->actionFunc(this, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/BgTokiHikari_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/func_808BA018.s")
// void func_808BA018(BgTokiHikari* this, GlobalContext* globalCtx) {
//     Gfx* sp50;
//     Gfx* sp4C;
//     Gfx* sp40;
//     Gfx* sp3C;
//     Gfx* sp38;
//     void* sp30;
//     Gfx* temp_v0;
//     Gfx* temp_v0_2;
//     Gfx* temp_v0_3;
//     Gfx* temp_v0_4;
//     Gfx* temp_v0_5;
//     Gfx* temp_v0_6;
//     Gfx* temp_v0_7;
//     GraphicsContext* temp_s0;

//     temp_s0 = globalCtx->state.gfxCtx;
//     OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_toki_hikari.c", 0xF6);

//     func_80093D18(globalCtx->state.gfxCtx);

//     gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_toki_hikari.c", 0xFC),
//               G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

//     if (gSaveContext.linkAge == 0) {
//         gSPDisplayList(POLY_OPA_DISP++, D_06008190);
//     } else {
//         temp_v0_3 = temp_s0->polyOpa.p;
//         temp_s0->polyOpa.p = temp_v0_3 + 8;
//         temp_v0_3->words.w1 = (u32)&D_06007E20;
//         temp_v0_3->words.w0 = 0xDE000000;
//         func_80093D84(globalCtx->state.gfxCtx);
//         temp_v0_4 = temp_s0->polyXlu.p;
//         temp_s0->polyXlu.p = temp_v0_4 + 8;
//         temp_v0_4->words.w0 = 0xDB060020;
//         sp30 = globalCtx + 0x10000;
//         sp40 = temp_v0_4;
//         sp40->words.w1 = Gfx_TexScroll(globalCtx->state.gfxCtx, 0U, globalCtx->gameplayFrames & 0x7F, 0x40, 0x20);
//         temp_v0_5 = temp_s0->polyXlu.p;
//         temp_s0->polyXlu.p = temp_v0_5 + 8;
//         temp_v0_5->words.w0 = 0xDB060024;
//         sp3C = temp_v0_5;
//         sp3C->words.w1 = Gfx_TexScroll(globalCtx->state.gfxCtx, 0U, globalCtx->gameplayFrames & 0x7F, 0x40, 0x20);
//         temp_v0_6 = temp_s0->polyXlu.p;
//         temp_s0->polyXlu.p = temp_v0_6 + 8;
//         temp_v0_6->words.w0 = 0xDA380003;
//         sp38 = temp_v0_6;
//         sp38->words.w1 = Matrix_NewMtx(globalCtx->state.gfxCtx, (char*)"../z_bg_toki_hikari.c", 0x116);
//         temp_v0_7 = temp_s0->polyXlu.p;
//         temp_s0->polyXlu.p = temp_v0_7 + 8;
//         temp_v0_7->words.w1 = (u32)&D_06007EE0;
//         temp_v0_7->words.w0 = 0xDE000000;
//     }
//     CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_toki_hikari.c", 0x11C);
// }

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/func_808BA204.s")
void func_808BA204(BgTokiHikari* this, GlobalContext* globalCtx) {

    if (globalCtx->unk_11D30[1] != 0) {
        this->actionFunc = func_808BA22C;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/func_808BA22C.s")
void func_808BA22C(BgTokiHikari* this, GlobalContext* globalCtx) {

    if (this->unk_14C < 1.0f) {
        this->unk_14C = (this->unk_14C + 0.05f);
    } else {
        this->unk_14C = 1.0f;
        this->actionFunc = func_808BA274;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/func_808BA274.s")
void func_808BA274(BgTokiHikari* this, GlobalContext* globalCtx) {

    if (this->unk_14C > 0.2f) {
        this->unk_14C -= 0.025f;
    } else {
        this->unk_14C = 0.0f;
        Actor_Kill(&this->actor);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/func_808BA2CC.s")
