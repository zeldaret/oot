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

extern Gfx D_06000880[];
extern Gfx D_060009C0[];
extern Gfx D_06000A10[];
extern Gfx D_06007E20[];
extern Gfx D_06007EE0[];
extern Gfx D_06008190[];

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

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/func_808BA018.s")
void func_808BA018(BgTokiHikari* this, GlobalContext* globalCtx) {
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_toki_hikari.c", 0xF6);

    func_80093D18(globalCtx->state.gfxCtx);

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_toki_hikari.c", 0xFC),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    if (gSaveContext.linkAge == 0) {
        gSPDisplayList(POLY_OPA_DISP++, D_06008190);
    } else {
        gSPDisplayList(POLY_OPA_DISP++, D_06007E20);
        func_80093D84(globalCtx->state.gfxCtx);

        gSPSegment(POLY_XLU_DISP++, 0x08,
                   Gfx_TexScroll(globalCtx->state.gfxCtx, 0, globalCtx->gameplayFrames & 0x7F, 0x40, 0x20));

        gSPSegment(POLY_XLU_DISP++, 0x09,
                   Gfx_TexScroll(globalCtx->state.gfxCtx, 0, globalCtx->gameplayFrames & 0x7F, 0x40, 0x20));

        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_toki_hikari.c", 0x116),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

        gSPDisplayList(POLY_XLU_DISP++, D_06007EE0);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_toki_hikari.c", 0x11C);
}

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
// void func_808BA2CC(BgTokiHikari* this, GlobalContext* globalCtx) {
//     Gfx* sp8C;
//     Gfx* sp7C;
//     Gfx* sp78;
//     Gfx* sp64;
//     Gfx* sp50;
//     Gfx* temp_a0;
//     Gfx* temp_a0_2;
//     Gfx* temp_a0_3;
//     Gfx* temp_v0;
//     Gfx* temp_v0_10;
//     Gfx* temp_v0_2;
//     Gfx* temp_v0_3;
//     Gfx* temp_v0_4;
//     Gfx* temp_v0_5;
//     Gfx* temp_v0_6;
//     Gfx* temp_v0_7;
//     Gfx* temp_v0_8;
//     Gfx* temp_v0_9;
//     Gfx* temp_v1_2;
//     Gfx* temp_v1_4;
//     Gfx* temp_v1_6;
//     GraphicsContext* temp_s0;
//     f32 temp_f0_2;
//     f32 temp_f0_3;
//     f32 temp_f0_4;
//     s32 temp_v1;
//     s32 temp_v1_3;
//     s32 temp_v1_5;
//     s32 temp_v1_7;

//     temp_s0 = globalCtx->state.gfxCtx;
//     OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_toki_hikari.c", 0x15E);
//     Matrix_Translate(0.0f, 276.0f, 1122.0f, 0);
//     Matrix_Scale(0.32f, 0.32f, this->unk_14C * 7.0f, 1);
//     Matrix_RotateZ(3.1415927f, 1);
//     func_80093D18(globalCtx->state.gfxCtx);
//     Matrix_Push();

//     gDPPipeSync(POLY_XLU_DISP++);
//     temp_a0 = temp_s0->polyXlu.p;
//     temp_s0->polyXlu.p = temp_a0 + 8;
//     temp_a0->words.w0 = 0xFA000080;
//     temp_v1 = (u32)(this->unk_14C * 255.0f) & 0xFF;
//     temp_a0->words.w1 =
//         (temp_v1 << 0x18) | ((((u32)(155.0f * this->unk_14C) + 0x64) & 0xFF) << 0x10) | (temp_v1 << 8) | temp_v1;
//     temp_v1_2 = temp_s0->polyXlu.p;
//     temp_s0->polyXlu.p = temp_v1_2 + 8;
//     temp_v1_2->words.w0 = 0xFB000000;
//     temp_f0_2 = this->unk_14C;
//     temp_v1_2->words.w1 =
//         (((u32)(temp_f0_2 * 155.0f) + 0x64) << 0x18) | (((u32)(255.0f * temp_f0_2) & 0xFF) << 0x10) | 0x80;

//     gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_toki_hikari.c", 0x17E),
//               G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

//     gSPSegment(POLY_XLU_DISP++, 0x08,
//                Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (0 - globalCtx->gameplayFrames & 0x7F) * 2, 0U, 0x20, 0x40,
//                                 1, globalCtx->gameplayFrames & 0x7F * 4, 0, 0x20, 0x40));

//     gSPDisplayList(POLY_XLU_DISP++, D_06000880);
//     Matrix_Pull();
//     Matrix_Push();

//     gDPPipeSync(POLY_XLU_DISP++);

//     temp_v1_4 = temp_s0->polyXlu.p;
//     temp_s0->polyXlu.p = temp_v1_4 + 8;
//     temp_v1_4->words.w0 = 0xFA000000;
//     temp_v1_4->words.w1 = ((u32)(this->unk_14C * 200.0f) & 0xFF) | ~0xFF;
//     temp_a0_2 = temp_s0->polyXlu.p;
//     temp_s0->polyXlu.p = temp_a0_2 + 8;
//     temp_a0_2->words.w0 = 0xFB000000;
//     temp_f0_3 = this->unk_14C;
//     temp_v1_5 = (u32)(temp_f0_3 * 255.0f) & 0xFF;
//     temp_a0_2->words.w1 =
//         (temp_v1_5 << 0x18) | (temp_v1_5 << 0x10) | (temp_v1_5 << 8) | ((u32)(200.0f * temp_f0_3) & 0xFF);

//     gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_toki_hikari.c", 0x19F),
//               G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

//     gSPDisplayList(POLY_XLU_DISP++, D_060009C0);
//     Matrix_Pull();
//     Matrix_Push();

//     gDPPipeSync(POLY_XLU_DISP++);

//     temp_v1_6 = temp_s0->polyXlu.p;
//     temp_s0->polyXlu.p = temp_v1_6 + 8;
//     temp_v1_6->words.w0 = 0xFA000000;
//     temp_v1_6->words.w1 = ((u32)(this->unk_14C * 200.0f) & 0xFF) | ~0xFF;
//     gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 0x12, 0x34, 0x56, 0x78);

//     temp_a0_3 = temp_s0->polyXlu.p;
//     temp_s0->polyXlu.p = temp_a0_3 + 8;
//     temp_a0_3->words.w0 = 0xFB000000;
//     temp_f0_4 = this->unk_14C;
//     temp_v1_7 = (u32)(temp_f0_4 * 255.0f) & 0xFF;
//     temp_a0_3->words.w1 =
//         (temp_v1_7 << 0x18) | (temp_v1_7 << 0x10) | (temp_v1_7 << 8) | ((u32)(200.0f * temp_f0_4) & 0xFF);

//     gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_toki_hikari.c", 0x1B5),
//               G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

//     gSPDisplayList(POLY_XLU_DISP++, D_06000A10);
//     Matrix_Pull();
//     CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_toki_hikari.c", 0x1BB);
// }
