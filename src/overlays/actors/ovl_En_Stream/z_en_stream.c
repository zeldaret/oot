#include "z_en_stream.h"

#define ROOM 0x00
#define FLAGS 0x00000010

void EnStream_Init(EnStream* this, GlobalContext* globalCtx);
void EnStream_Destroy(EnStream* this, GlobalContext* globalCtx);
void EnStream_Update(EnStream* this, GlobalContext* globalCtx);
void EnStream_Draw(EnStream* this, GlobalContext* globalCtx);

/*
const ActorInit En_Stream_InitVars = {
    ACTOR_EN_STREAM,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_STREAM,
    sizeof(EnStream),
    (ActorFunc)EnStream_Init,
    (ActorFunc)EnStream_Destroy,
    (ActorFunc)EnStream_Update,
    (ActorFunc)EnStream_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Stream/func_80B0B7A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Stream/EnStream_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Stream/EnStream_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Stream/func_80B0B81C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Stream/func_80B0B934.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Stream/func_80B0BAC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Stream/EnStream_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Stream/EnStream_Draw.s")
