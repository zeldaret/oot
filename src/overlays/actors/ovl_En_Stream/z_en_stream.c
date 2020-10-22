/*
 * File: z_en_stream.c
 * Overlay: ovl_En_Stream
 * Description: Water Vortex
 */

#include "z_en_stream.h"

#define FLAGS 0x00000010

#define THIS ((EnStream*)thisx)

void EnStream_Init(Actor* thisx, GlobalContext* globalCtx);
void EnStream_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnStream_Update(Actor* thisx, GlobalContext* globalCtx);
void EnStream_Draw(Actor* thisx, GlobalContext* globalCtx);
void func_80B0BAC8(EnStream* this, GlobalContext* globalCtx);
void func_80B0B934(EnStream* this, GlobalContext* globalCtx);
int func_80B0B81C(PosRot* p1, PosRot* p2, Vec3f* v, f32 f);

extern UNK_TYPE D_06000950;

const ActorInit En_Stream_InitVars = {
    ACTOR_EN_STREAM,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_STREAM,
    sizeof(EnStream),
    (ActorFunc)EnStream_Init,
    (ActorFunc)EnStream_Destroy,
    (ActorFunc)EnStream_Update,
    (ActorFunc)EnStream_Draw,
};

// sInitChain
InitChainEntry D_80B0BCC0[] = {
    ICHAIN_VEC3F_DIV1000(scale, 20, ICHAIN_STOP),
};

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Stream/func_80B0B7A0.s")
void func_80B0B7A0(EnStream* this, EnStreamActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Stream/EnStream_Init.s")
void EnStream_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnStream* this = THIS;

    this->unk_150 = (s32)(thisx->params & 0xFF);
    Actor_ProcessInitChain(thisx, &D_80B0BCC0);
    if ((this->unk_150 != 0) && (this->unk_150 == 1)) {
        thisx->scale.y = 0.01f;
    }
    func_80B0B7A0(this, &func_80B0BAC8);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Stream/EnStream_Destroy.s")
void EnStream_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Stream/func_80B0B81C.s")
// int func_80B0B81C(PosRot *arg0, PosRot *arg1, PosRot *arg2, f32 arg3) {
//     f32 xzDist;
//     f32 temp_f14;
//     f32 temp_f2_2;
//     int phi_v1;

//     arg2->pos.x = (f32) (arg1->pos.x - arg0->pos.x);
//     arg2->pos.y = (f32) (arg1->pos.y - arg0->pos.y);
//     arg2->pos.z = (f32) (arg1->pos.z - arg0->pos.z);
//     xzDist = sqrtf(SQ(arg2->pos.x) + SQ(arg2->pos.z));
//     temp_f14 = 0.0f * arg3 * 50.0f;
//     phi_v1 = 0;
//     if (temp_f14 <= arg2->pos.y) {
//         temp_f2_2 = 160.0f * arg3 * 50.0f;
//         phi_v1 = 0;
//         if (arg2->pos.y <= temp_f2_2) {
//             arg2->pos.y = (f32) (arg2->pos.y - temp_f14);
//             phi_v1 = 0;
//             if (xzDist <= (((75.0f - 28.0f) * (arg2->pos.y / (temp_f2_2 - temp_f14))) + 28.0f)) {
//                 phi_v1 = 1;
//             }
//         }
//     }
//     if ((arg2->pos.y <= temp_f14) && (xzDist <= 28.0f)) {
//         phi_v1 = 2;
//     }
//     return phi_v1;
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Stream/func_80B0B934.s")
// void func_80B0B934(EnStream* this, GlobalContext* globalCtx) {
//     Player* player = PLAYER;
//     f32 sp34;
//     Vec3f sp3C;
//     s32 pad;
//     f32 temp_f2;
//     f32 temp_f2_2;

//     if (func_80B0B81C(&this->actor.posRot, &player->actor.posRot, &sp3C, this->actor.scale.y) != 0) {
//         temp_f2 = sqrtf(SQ(sp3C.x) + SQ(sp3C.z));
//         sp34 = player->actor.posRot.pos.y - (this->actor.posRot.pos.y - 90.0f);
//         temp_f2_2 = temp_f2;
//         player->windDirection = (s16) (s32) (Math_atan2f(-sp3C.x, -sp3C.z) * 10430.378f);
//         if (3.0f < temp_f2_2) {
//             Math_SmoothScaleMaxMinF(&player->windSpeed, 3.0f, 0.5f, temp_f2_2, 0.0f);
//         } else {
//             player->windSpeed = 0.0f;
//             Math_SmoothScaleMaxMinF(&player->actor.posRot.pos.x, this->actor.posRot.pos.x, 0.5f, 3.0f, 0.0f);
//             Math_SmoothScaleMaxMinF(&player->actor.posRot.pos.z, this->actor.posRot.pos.z, 0.5f, 3.0f, 0.0f);
//         }
//         if (0.0f < sp34) {
//             Math_SmoothScaleMaxMinF(&player->actor.velocity.y, -3.0f, 0.7f, sp34, 0.0f);
//             if (sp3C.y < -70.0f) {
//                 player->stateFlags2 |= 0x80000000;
//                 return;
//             }
//         }
//     } else {
//         func_80B0B7A0(this, &func_80B0BAC8);
//     }
// }

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Stream/func_80B0BAC8.s")
void func_80B0BAC8(EnStream* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s16 pad;
    Vec3f sp1C;

    if (func_80B0B81C(&this->actor.posRot, &player->actor.posRot, &sp1C, this->actor.scale.y) != 0) {
        func_80B0B7A0(this, &func_80B0B934);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Stream/EnStream_Update.s")
void EnStream_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnStream* this = THIS;

    this->actionFunc(this, globalCtx);
    func_8002F948(thisx, NA_SE_EV_WHIRLPOOL - SFX_FLAG);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Stream/EnStream_Draw.s")
