/*
 * File: z_bg_gnd_soulmeiro.c
 * Overlay: ovl_Bg_Gnd_Soulmeiro
 * Description: Web-Blocked Ceiling Hole (Inside Ganon's Castle)
 */

#include "z_bg_gnd_soulmeiro.h"
#include "global.h"

#define FLAGS 0x00000000

#define THIS ((BgGndSoulmeiro*)thisx)

void BgGndSoulmeiro_Init(Actor* thisx, GlobalContext* globalCtx);
void BgGndSoulmeiro_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgGndSoulmeiro_Update(Actor* thisx, GlobalContext* globalCtx);
void BgGndSoulmeiro_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_8087AF38(BgGndSoulmeiro* this, GlobalContext* globalCtx);
void func_8087B284(BgGndSoulmeiro* this, GlobalContext* globalCtx);
void func_8087B350(BgGndSoulmeiro* this, GlobalContext* globalCtx);

const ActorInit Bg_Gnd_Soulmeiro_InitVars = {
    ACTOR_BG_GND_SOULMEIRO,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_DEMO_KEKKAI,
    sizeof(BgGndSoulmeiro),
    (ActorFunc)BgGndSoulmeiro_Init,
    (ActorFunc)BgGndSoulmeiro_Destroy,
    (ActorFunc)BgGndSoulmeiro_Update,
    (ActorFunc)BgGndSoulmeiro_Draw,
};

ColliderCylinderInit D_8087B530 = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x00, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x00 }, { 0x00020800, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
    { 50, 20, 20, { 0, 0, 0 } },
};

InitChainEntry D_8087B55C[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_STOP),
};

s32 D_8087B56C[] = { 0x00000000, 0x00000000, 0x00000000 };
Gfx* D_8087B578[] = { 0x06007C00, 0x06002320, 0x060035A0 };

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Soulmeiro/BgGndSoulmeiro_Init.s")
void BgGndSoulmeiro_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgGndSoulmeiro* this = THIS;
    s32 pad;

    Actor_ProcessInitChain(&this->actor, D_8087B55C);
    this->actionFunc = NULL;

    switch (this->actor.params & 0xFF) {
        case 0:
            Collider_InitCylinder(globalCtx, &this->collider);
            Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &D_8087B530);
            this->actionFunc = func_8087B284;
            if (Flags_GetSwitch(globalCtx, (this->actor.params >> 8) & 0x3F)) {

                Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_MIR_RAY, this->actor.posRot.pos.x,
                            this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 9);
                this->actor.draw = NULL;
                Actor_Kill(&this->actor);
            } else {
                this->actor.draw = BgGndSoulmeiro_Draw;
            }
            break;
        case 1:
        case 2:
            if (Flags_GetSwitch(globalCtx, (this->actor.params >> 8) & 0x3F)) {
                this->actor.draw = BgGndSoulmeiro_Draw;
            } else {
                this->actor.draw = NULL;
            }
            this->actionFunc = func_8087B350;
            break;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Soulmeiro/BgGndSoulmeiro_Destroy.s")
void BgGndSoulmeiro_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgGndSoulmeiro* this = THIS;

    if ((this->actor.params & 0xFF) == 0) {
        Collider_DestroyCylinder(globalCtx, &this->collider);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Soulmeiro/func_8087AF38.s")
// void func_8087AF38(BgGndSoulmeiro *this, GlobalContext *globalCtx) {
//     f32 spD4;
//     f32 spD0;
//     f32 spCC;
//     f32 spC8;
//     f32 spC4;
//     f32 spC0;
//     PosRot *temp_s5;
//     f32 *temp_a1;
//     f32 *temp_fp;
//     f32 *temp_s6;
//     f32 temp_f0;
//     f32 temp_f0_2;
//     f32 temp_f10;
//     f32 temp_f10_3;
//     f32 temp_f12;
//     f32 temp_f20;
//     f32 temp_f20_2;
//     f32 temp_f22;
//     f32 temp_f22_2;
//     f32 temp_f26;
//     f32 temp_f8;
//     s16 temp_t6;
//     s32 temp_f10_2;
//     s32 temp_s0;
//     s32 temp_s1;
//     s32 temp_s4;
//     u16 temp_v0;
//     u16 temp_v0_2;
//     u16 phi_v1;
//     u16 phi_v0;
//     s32 phi_s3;
//     f32 phi_f20;
//     f32 phi_f12;
//     f32 phi_f22;
//     s32 phi_s4;

//     phi_v0 = this->unk_198;

//     if (this->unk_198 != 0) {
//         temp_t6 = this->unk_198 - 1;
//         phi_v0 = (temp_t6);
//         this->unk_198 = temp_t6;
//     }

//     if (phi_v0 == 0x14) {
//         Flags_SetSwitch(globalCtx, (this->actor.params >> 8) & 0x3F);
//         this->actor.draw = NULL;
//         phi_v0 = this->unk_198;
//     }
//     if (phi_v0 == 0) {
//         Flags_SetSwitch(globalCtx, (this->actor.params >> 8) & 0x3F);
//         Actor_Kill(&this->actor);
//         Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_MIR_RAY, this->actor.posRot.pos.x,
//         this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 9); return;
//     }
//     if ((phi_v0 % 6) == 0) {
//         temp_f10 = Math_Rand_ZeroOne() * 10922.0;
//         spD0 = 0.0f;
//         temp_f26 = 0.0083333338;
//         temp_s5 = &this->actor.initPosRot;
//         temp_fp = &spCC;
//         temp_s6 = &spC0;
//         spC4 = this->actor.posRot.pos.y;
//         phi_s3 = (s32) ((s32) temp_f10 << 0x10) >> 0x10;
//         phi_s4 = 0;
// loop_8:
//         temp_f10_2 = (s32) (Math_Rand_CenteredFloat(10240.0f) + (f32) phi_s3);
//         temp_s0 = (s32) (temp_f10_2 << 0x10) >> 0x10;
//         temp_f20 = Math_Sins((s16) ((s32) (temp_f10_2 << 0x10) >> 0x10));
//         temp_f0 = Math_Coss((s16) ((s32) (temp_s0 << 0x10) >> 0x10));
//         temp_f22 = temp_f0;
//         temp_f8 = 120.0f * temp_f0;
//         temp_a1 = temp_s6;
//         spC0 = this->actor.posRot.pos.x + (120.0f * temp_f20);
//         spC8 = this->actor.posRot.pos.z + temp_f8;
//         temp_f12 = Math_Vec3f_DistXZ((Vec3f *) temp_s5, (Vec3f *) temp_a1) * temp_f26;
//         temp_s1 = (s32) ((temp_s0 + 0x8000) << 0x10) >> 0x10;
//         phi_f20 = temp_f20;
//         phi_f12 = temp_f12;
//         phi_f22 = temp_f22;
//         if (temp_f12 < 0.69999999) {
//             temp_f20_2 = Math_Sins((s16) ((s32) (temp_s1 << 0x10) >> 0x10));
//             temp_f0_2 = Math_Coss((s16) ((s32) (temp_s1 << 0x10) >> 0x10));
//             temp_f22_2 = temp_f0_2;
//             temp_f10_3 = 120.0f * temp_f0_2;
//             spC0 = this->actor.posRot.pos.x + (120.0f * temp_f20_2);
//             spC8 = this->actor.posRot.pos.z + temp_f10_3;
//             phi_f20 = temp_f20_2;
//             phi_f12 = Math_Vec3f_DistXZ((Vec3f *) temp_s5, (Vec3f *) temp_s6) * temp_f26;
//             phi_f22 = temp_f22_2;
//         }
//         spCC = 4.0f * phi_f20 * phi_f12;
//         spD0 = 0.0f;
//         spD4 = 4.0f * phi_f22 * phi_f12;
//         EffectSsDeadDb_Spawn(globalCtx, (Vec3f *) temp_s5, (Vec3f *) temp_fp, (Vec3f *) D_8087B56C, 0x3C, 6, 0xFF,
//         0xFF, 0x96, 0xAA, 0xFF, 0, 0, 1, 0xE, 1); temp_s4 = phi_s4 + 1; phi_s3 = (s32) ((phi_s3 + 0x2AAA) << 0x10) >>
//         0x10; phi_s4 = temp_s4; if (temp_s4 != 6) {
//             goto loop_8;
//         }
//     }
// }

void func_8087B284(BgGndSoulmeiro* this, GlobalContext* globalCtx) {
    s32 pad;

    if (Flags_GetSwitch(globalCtx, (this->actor.params >> 8) & 0x3F) == 0) {
        this->actor.draw = BgGndSoulmeiro_Draw;
        if ((this->collider.base.acFlags & 2) != 0) {
            Audio_PlaySoundGeneral(NA_SE_SY_CORRECT_CHIME, &D_801333D4, 4U, &D_801333E0, &D_801333E0, &D_801333E8);
            this->unk_198 = 0x28;
            this->actionFunc = func_8087AF38;
            return;
        }
        Collider_CylinderUpdate(&this->actor, &this->collider);
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }
}

void func_8087B350(BgGndSoulmeiro* this, GlobalContext* globalCtx) {

    if (Flags_GetSwitch(globalCtx, (this->actor.params >> 8) & 0x3F) != 0) {
        this->actor.draw = BgGndSoulmeiro_Draw;
    } else {
        this->actor.draw = NULL;
    }
}

void BgGndSoulmeiro_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgGndSoulmeiro* this = THIS;

    if (this->actionFunc != NULL) {
        this->actionFunc(this, globalCtx);
    }
}

void BgGndSoulmeiro_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 params = thisx->params & 0xFF;
    // BgGndSoulmeiro* this = THIS;

    if (1) {}

    switch (params) {
        case 0:
            OPEN_DISPS(globalCtx->state.gfxCtx,  "../z_bg_gnd_soulmeiro.c", 398);

            func_80093D84(globalCtx->state.gfxCtx);
            gSPMatrix(oGfxCtx->polyXlu.p++,
                      Matrix_NewMtx(globalCtx->state.gfxCtx,  "../z_bg_gnd_soulmeiro.c", 0x190),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            gSPDisplayList(oGfxCtx->polyXlu.p++, D_8087B578[params]);
            CLOSE_DISPS(globalCtx->state.gfxCtx,  "../z_bg_gnd_soulmeiro.c", 403);
            break;
        case 1:
            Gfx_DrawDListXlu(globalCtx, D_8087B578[params]);
            break;
        case 2:
            Gfx_DrawDListOpa(globalCtx, D_8087B578[params]);
            break;
    }
}
