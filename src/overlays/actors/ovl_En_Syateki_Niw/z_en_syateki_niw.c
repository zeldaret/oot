#include "z_en_syateki_niw.h"

#define ROOM 0x00
#define FLAGS 0x00000010

void EnSyatekiNiw_Init(EnSyatekiNiw* this, GlobalContext* globalCtx);
void EnSyatekiNiw_Destroy(EnSyatekiNiw* this, GlobalContext* globalCtx);
void EnSyatekiNiw_Update(EnSyatekiNiw* this, GlobalContext* globalCtx);
void EnSyatekiNiw_Draw(EnSyatekiNiw* this, GlobalContext* globalCtx);

/*
const ActorInit En_Syateki_Niw_InitVars = {
    ACTOR_EN_SYATEKI_NIW,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_NIW,
    sizeof(EnSyatekiNiw),
    (ActorFunc)EnSyatekiNiw_Init,
    (ActorFunc)EnSyatekiNiw_Destroy,
    (ActorFunc)EnSyatekiNiw_Update,
    (ActorFunc)EnSyatekiNiw_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Niw/EnSyatekiNiw_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Niw/EnSyatekiNiw_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Niw/func_80B11A94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Niw/func_80B11DEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Niw/func_80B11E78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Niw/func_80B123A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Niw/func_80B12460.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Niw/func_80B128D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Niw/func_80B128F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Niw/func_80B129EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Niw/func_80B12BA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Niw/EnSyatekiNiw_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Niw/func_80B12FE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Niw/EnSyatekiNiw_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Niw/func_80B131B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Niw/func_80B132A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Niw/func_80B13464.s")
