#include "z_en_go2.h"

#define FLAGS 0x00000039

#define THIS ((EnGo2*)thisx)

void EnGo2_Init(Actor* thisx, GlobalContext* globalCtx);
void EnGo2_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnGo2_Update(Actor* thisx, GlobalContext* globalCtx);
void EnGo2_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_06000750;
extern UNK_TYPE D_06000D5C;
extern UNK_TYPE D_06004930;
extern UNK_TYPE D_0600BD80;
extern UNK_TYPE D_0600C140;
extern UNK_TYPE D_0600FD40;
extern UNK_TYPE D_0600FD50;
extern UNK_TYPE D_0600FEF0;

/*
const ActorInit En_Go2_InitVars = {
    ACTOR_EN_GO2,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_OF1D_MAP,
    sizeof(EnGo2),
    (ActorFunc)EnGo2_Init,
    (ActorFunc)EnGo2_Destroy,
    (ActorFunc)EnGo2_Update,
    (ActorFunc)EnGo2_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A42D30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A42DD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A42EE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A4320C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A43424.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A43468.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A434E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A43564.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A435E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A436DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A43714.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A43824.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A4387C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A438B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A43950.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A439AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A43A2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A43A88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A43B08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A43B64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A43C40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A43C9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A43D78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A43F90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A44010.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A44224.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A44258.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A442F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A4433C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A44398.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A443A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A443E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A4444C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A444A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A444FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A44534.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A44678.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A44790.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A4488C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A448C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A44940.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A44A9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A44AB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A44C68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A44CE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A44D84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A44DC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A44EF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A45088.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A45288.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A45360.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A4546C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A454CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A45578.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A4561C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A45734.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A4578C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A457F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A45848.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A4592C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A45A00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A45B14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A45B9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A45C50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A45D40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A45DA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A45E48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A45F08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A45F9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A4601C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A4607C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A460B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A46114.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A461A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A462D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A463D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A46418.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/EnGo2_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/EnGo2_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A4696C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A46B40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A46CD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A46D5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A46DBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A46E54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A46F88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A47024.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A470E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A47158.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A4725C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A47490.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A47578.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/EnGo2_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A479B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A47AB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A47C20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/func_80A47E34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go2/EnGo2_Draw.s")
