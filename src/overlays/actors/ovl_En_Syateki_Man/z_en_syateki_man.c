#include "z_en_syateki_man.h"

#define FLAGS 0x08000019

#define THIS ((EnSyatekiMan*)thisx)

void EnSyatekiMan_Init(Actor* thisx, GlobalContext* globalCtx);
void EnSyatekiMan_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnSyatekiMan_Update(Actor* thisx, GlobalContext* globalCtx);
void EnSyatekiMan_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_06000338;
extern UNK_TYPE D_06007E28;
extern UNK_TYPE D_06009B38;


/*const ActorInit En_Syateki_Man_InitVars = {
    ACTOR_EN_SYATEKI_MAN,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_OSSAN,
    sizeof(EnSyatekiMan),
    (ActorFunc)EnSyatekiMan_Init,
    (ActorFunc)EnSyatekiMan_Destroy,
    (ActorFunc)EnSyatekiMan_Update,
    (ActorFunc)EnSyatekiMan_Draw,
};*/

extern s16 D_80B115E0[];
// .word 0x00000001, 0x00020018, 0x00190002, 0x0019001A, 0x001A081A, 0x001B001C, 0x001D001E, 0x001F0020, 0x00210922, 0x00230924, 0x00250026, 0x00270028, 0x0029002A, 0x092B002C, 0x002D002E, 0x002F0030, 0x00320033, 0x00340035, 0x00360037, 0x00380039, 0x003A003B, 0x003C003D, 0x003E003F, 0x00400041, 0x00420043, 0x00440045, 0x00460047, 0x00480049, 0x004A004B, 0x004C004D, 0x004E004F, 0x00500051, 0x00520053, 0x00540055, 0x00560057, 0x00580059, 0x005A005B, 0x005C005D, 0x006D005E, 0x005E005F, 0x00600061, 0x006D0062, 0x00630064, 0x00650066
extern s16 D_80B11690[];
 // 0x00, 0x2B, 0x00, 0x2E, 0x00, 0xC8
extern s16 D_80B11696[];
 // 0x00, 0x2D
extern s16 D_80B11698[];
 // 0x00, 0x04, 0x00, 0x05, 0x00, 0x05
extern s16 D_80B1169E[];
 // 0x00, 0x05

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/EnSyatekiMan_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/EnSyatekiMan_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/func_80B10948.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/func_80B109DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/func_80B10A2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/func_80B10A84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/func_80B10C2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/func_80B10CD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/func_80B10D94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/func_80B10EB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/func_80B11164.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/func_80B111D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/func_80B112A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/func_80B11310.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/func_80B11344.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/EnSyatekiMan_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/func_80B1148C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/EnSyatekiMan_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/func_80B1156C.s")
