#include "z_en_okuta.h"

#define FLAGS 0x00000005

#define THIS ((EnOkuta*)thisx)

void EnOkuta_Init(Actor* thisx, GlobalContext* globalCtx);
void EnOkuta_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnOkuta_Update(Actor* thisx, GlobalContext* globalCtx);
void EnOkuta_Draw(Actor* thisx, GlobalContext* globalCtx);

const ActorInit En_Okuta_InitVars = {
    ACTOR_EN_OKUTA,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_OKUTA,
    sizeof(EnOkuta),
    (ActorFunc)EnOkuta_Init,
    (ActorFunc)EnOkuta_Destroy,
    (ActorFunc)EnOkuta_Update,
    (ActorFunc)EnOkuta_Draw,
};

// sCylinderInit
ColliderCylinderInit D_80AC2820 = {
    { COLTYPE_UNK10, 0x11, 0x09, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x09, 0x01, 0x01 },
    { 13, 20, 0, { 0, 0, 0 } },
};

// sCylinderInit
ColliderCylinderInit D_80AC284C = {
    { COLTYPE_UNK0, 0x00, 0x09, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x01, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 20, 40, -30, { 0, 0, 0 } },
};

CollisionCheckInfoInit D_80AC2878[] = { 1, 0xF, 0x3C, 0x64 };

DamageTable D_80AC2880[] = { {
    0x00, 0x02, 0x01, 0x02, 0x01, 0x02, 0x02, 0x02, 0x01, 0x02, 0x04, 0x02, 0x34, 0x02, 0x02, 0x02,
    0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x04, 0x02, 0x02, 0x08, 0x04, 0x00, 0x00, 0x04, 0x00,
} };

UNK_TYPE D_80AC28A0[] = { 0x89170042, 0x304C1964 };

UNK_TYPE D_80AC28A8[] = { 0x00000000, 0x00000000, 0x00000000 };

UNK_TYPE D_80AC28B4 = 0xFFFFFFFF;

UNK_TYPE D_80AC28B8 = 0x969696FF;

UNK_TYPE D_80AC28BC[] = { 0x00000000, 0xBF000000, 0x00000000 };

UNK_TYPE D_80AC28C8 = 0xFFFFFFFF;

UNK_TYPE D_80AC28CC = 0x96969600;

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/EnOkuta_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/EnOkuta_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC0890.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC093C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC09A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC09E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC0A88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC0AB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC0B24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC0B60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC0BC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC0CAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC0D34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC0D7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC0DC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC0F08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC0F64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC10A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC11A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC12D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC1458.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC14A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC17BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC1938.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC1B80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC1F28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/EnOkuta_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC2350.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/func_80AC25D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okuta/EnOkuta_Draw.s")
