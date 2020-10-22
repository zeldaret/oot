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
void func_80B0BAC8(EnStream* thisx, GlobalContext globalCtx);

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
void func_80B0B7A0(Actor* thisx, EnStreamActionFunc actionFunc) {
    EnStream* this = THIS;

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
    func_80B0B7A0(thisx, &func_80B0BAC8);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Stream/EnStream_Destroy.s")
void EnStream_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Stream/func_80B0B81C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Stream/func_80B0B934.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Stream/func_80B0BAC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Stream/EnStream_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Stream/EnStream_Draw.s")
