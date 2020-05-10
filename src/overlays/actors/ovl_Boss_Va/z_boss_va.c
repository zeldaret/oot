#include "z_boss_va.h"

#define FLAGS 0x00000035

#define THIS ((BossVa*)thisx)

void BossVa_Init(Actor* thisx, GlobalContext* globalCtx);
void BossVa_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BossVa_Update(Actor* thisx, GlobalContext* globalCtx);
void BossVa_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Boss_Va_InitVars = {
    ACTOR_BOSS_VA,
    ACTORTYPE_BOSS,
    FLAGS,
    OBJECT_BV,
    sizeof(BossVa),
    (ActorFunc)BossVa_Init,
    (ActorFunc)BossVa_Destroy,
    (ActorFunc)BossVa_Update,
    (ActorFunc)BossVa_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_8094F2C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_8094F2C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_8094F50C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_8094F60C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_8094F734.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_8094F864.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_8094F9E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_8094FB6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_8094FBB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_8094FC30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_8094FC70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/BossVa_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/BossVa_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_809506F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_80950780.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_809517A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_80951844.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_80951AD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_80951C04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_80952100.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_8095213C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_809527A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_80952858.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_8095335C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_809533F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_80953F4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_80953FC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_809540E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_80954168.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_8095438C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_80954454.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_80954924.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_809549A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_80954A3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_80954AD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_80954B8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_80954C20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_80955658.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_8095575C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_8095586C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_80955940.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_80955E64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_80955EEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_80956644.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_809566C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_809567D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_809568E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_80956E38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_80956EE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_809572DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_80957384.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_80957998.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_809579F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_80957C10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_80957C68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_80957C9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_80957CEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/BossVa_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_80957F60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_80958150.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_809586A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_809586E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_80958934.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_80958B0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_80958F6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_80958FFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/BossVa_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_809597F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_8095A188.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_8095B028.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_8095B318.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_8095B4A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_8095B670.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_8095B80C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_8095B9B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_8095BBD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_8095BD24.s")
