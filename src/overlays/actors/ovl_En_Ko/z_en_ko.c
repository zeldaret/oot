#include "z_en_ko.h"

#define FLAGS 0x00000019

#define THIS ((EnKo*)thisx)

void EnKo_Init(Actor* thisx, GlobalContext* globalCtx);
void EnKo_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnKo_Update(Actor* thisx, GlobalContext* globalCtx);
void EnKo_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_06006A60;
extern UNK_TYPE D_06007830;
extern UNK_TYPE D_06007D94;
extern UNK_TYPE D_0600879C;
extern UNK_TYPE D_06008F6C;

const ActorInit En_Ko_InitVars = {
    ACTOR_EN_KO,
    ACTORCAT_NPC,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnKo),
    (ActorFunc)EnKo_Init,
    (ActorFunc)EnKo_Destroy,
    (ActorFunc)EnKo_Update,
    (ActorFunc)EnKo_Draw,
};

s32 D_80A9A100[] = { 0x0A000039, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
                     0x00000000, 0x00000100, 0x0014002E, 0x00000000, 0x00000000 };
s32 D_80A9A12C[] = { 0x00000000, 0x00000000, 0xFF000000 };
s32 D_80A9A138[] = { 0x06000240, 0x06000D40, 0x06001140, 0x00000000 };
s32 D_80A9A148[] = { 0x06000F4C, 0x06001A0C, 0x06001E0C, 0x00000000 };
s32 D_80A9A158[] = { 0x00FC0000, 0x06001890 };
s32 D_80A9A160[] = { 0x00000000, 0x00FD0000, 0x06002C10, &D_80A9A148, 0x013D0000, 0x06002940, &D_80A9A138 };
s32 D_80A9A17C[] = { 0x00FC0000 };
s32 D_80A9A180[] = { 0x060000F0, 0x00FD0000, 0x060000F0 };
s32 D_80A9A18C[] = {
    0x06008F6C, 0x3F800000, 0x40000000, 0x41600000, 0x04000000, 0x00000000, 0x06008F6C, 0x00000000, 0x3F800000,
    0x3F800000, 0x04000000, 0x00000000, 0x06009B64, 0x00000000, 0x00000000, 0x00000000, 0x02000000, 0x00000000,
    0x06009B64, 0x00000000, 0x3F800000, 0x3F800000, 0x02000000, 0x00000000, 0x06009B64, 0x00000000, 0x40000000,
    0x40000000, 0x02000000, 0x00000000, 0x060062DC, 0x3F800000, 0x00000000, 0xBF800000, 0x00000000, 0x00000000,
    0x060062DC, 0x3F800000, 0x00000000, 0xBF800000, 0x00000000, 0xC1200000, 0x06005808, 0x3F800000, 0x00000000,
    0xBF800000, 0x00000000, 0xC1200000, 0x06007830, 0x3F800000, 0x00000000, 0xBF800000, 0x00000000, 0x00000000,
    0x06008178, 0x3F800000, 0x00000000, 0xBF800000, 0x00000000, 0x00000000, 0x060065E0, 0x3F800000, 0x00000000,
    0xBF800000, 0x00000000, 0x00000000, 0x0600879C, 0x3F800000, 0x00000000, 0xBF800000, 0x00000000, 0x00000000,
    0x06007FFC, 0x3F800000, 0x00000000, 0xBF800000, 0x00000000, 0x00000000, 0x060080B4, 0x3F800000, 0x00000000,
    0xBF800000, 0x00000000, 0x00000000, 0x060091AC, 0x3F800000, 0x00000000, 0xBF800000, 0x00000000, 0x00000000,
    0x06006F9C, 0x3F800000, 0x00000000, 0xBF800000, 0x00000000, 0x00000000, 0x06007064, 0x3F800000, 0x00000000,
    0xBF800000, 0x00000000, 0x00000000, 0x06007120, 0x3F800000, 0x00000000, 0xBF800000, 0x00000000, 0x00000000,
    0x06007F38, 0x3F800000, 0x00000000, 0xBF800000, 0x00000000, 0x00000000, 0x06007D94, 0x3F800000, 0x00000000,
    0xBF800000, 0x00000000, 0x00000000, 0x06006EE0, 0x3F800000, 0x00000000, 0xBF800000, 0x00000000, 0x00000000,
    0x060098EC, 0x3F800000, 0x00000000, 0xBF800000, 0x00000000, 0x00000000, 0x060090EC, 0x3F800000, 0x00000000,
    0xBF800000, 0x00000000, 0x00000000, 0x0600982C, 0x3F800000, 0x00000000, 0xBF800000, 0x00000000, 0x00000000,
    0x06009274, 0x3F800000, 0x00000000, 0xBF800000, 0x00000000, 0x00000000, 0x060099A4, 0x3F800000, 0x00000000,
    0xBF800000, 0x00000000, 0x00000000, 0x06009028, 0x3F800000, 0x00000000, 0xBF800000, 0x00000000, 0x00000000,
    0x06007E64, 0x3F800000, 0x00000000, 0xBF800000, 0x00000000, 0x00000000, 0x06007454, 0x3F800000, 0x00000000,
    0xBF800000, 0x00000000, 0x00000000, 0x06008F6C, 0x00000000, 0x3F800000, 0x3F800000, 0x04000000, 0xC1000000,
    0x06007D94, 0x3F800000, 0x00000000, 0xBF800000, 0x00000000, 0xC1000000, 0x0600879C, 0x3F800000, 0x00000000,
    0xBF800000, 0x00000000, 0xC1000000, 0x06006A60, 0x3F800000, 0x00000000, 0xBF800000, 0x00000000, 0xC1000000,
    0x06007830, 0x3F800000, 0x00000000, 0xBF800000, 0x00000000, 0xC1000000
};
s32 D_80A9A4BC[] = { 0x0809090E, 0x0B020C02, 0x0D0D0B0B, 0x0B0F0900, 0x10101112, 0x1313140A,
                     0x09030303, 0x03030416, 0x16041718, 0x10101910, 0x1A0F0F1A, 0x0F030303,
                     0x1B1B0202, 0x0202160E, 0x0E0E0E0E, 0x05050505, 0x05000000 };
s8 D_80A9A500[] = { 0x00, 0x00, 0x00, 0x82, 0x46, 0xFF, 0x00, 0x6E, 0xAA, 0x14, 0xFF, 0x01, 0x01, 0x46, 0xBE, 0x3C,
                    0xFF, 0x01, 0x64, 0x1E, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x82, 0x46, 0xFF, 0x00, 0x6E, 0xAA, 0x14,
                    0xFF, 0x00, 0x00, 0x00, 0x82, 0x46, 0xFF, 0x00, 0x6E, 0xAA, 0x14, 0xFF, 0x00, 0x00, 0x00, 0x82,
                    0x46, 0xFF, 0x00, 0x6E, 0xAA, 0x14, 0xFF, 0x01, 0x01, 0x46, 0xBE, 0x3C, 0xFF, 0x01, 0x64, 0x1E,
                    0x00, 0xFF, 0x01, 0x01, 0x46, 0xBE, 0x3C, 0xFF, 0x01, 0x64, 0x1E, 0x00, 0xFF, 0x00, 0x00, 0x00,
                    0x82, 0x46, 0xFF, 0x00, 0x6E, 0xAA, 0x14, 0xFF, 0x00, 0x00, 0x00, 0x82, 0x46, 0xFF, 0x00, 0x6E,
                    0xAA, 0x14, 0xFF, 0x01, 0x01, 0x46, 0xBE, 0x3C, 0xFF, 0x01, 0x64, 0x1E, 0x00, 0xFF, 0x01, 0x01,
                    0x46, 0xBE, 0x3C, 0xFF, 0x01, 0x64, 0x1E, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x82, 0x46, 0xFF, 0x00,
                    0x6E, 0xAA, 0x14, 0xFF, 0x02, 0x01, 0x46, 0xBE, 0x3C, 0xFF, 0x01, 0x64, 0x1E, 0x00, 0xFF, 0x00 };
s32 D_80A9A590[] = { 0x06000000, 0x41F00000, 0x43340000, 0x06000000, 0x41F00000, 0x43340000, 0x06000000, 0x41F00000,
                     0x43340000, 0x06000000, 0x41F00000, 0x43340000, 0x06000000, 0x41F00000, 0x43340000, 0x01000000,
                     0x41F00000, 0x43700000, 0x06000000, 0x41F00000, 0x43340000, 0x06000000, 0x41F00000, 0x43340000,
                     0x06000000, 0x41F00000, 0x43340000, 0x06000000, 0x41F00000, 0x43340000, 0x06000000, 0x41F00000,
                     0x43340000, 0x06000000, 0x41F00000, 0x43340000, 0x06000000, 0x41F00000, 0x43340000 };
s32 D_80A9A62C[] = { 0x00000000, 0x00000000, 0x00000000, 0xC1F00000, 0xC1A00000, 0x00000000, 0x00000000, 0x00000000,
                     0xC1A00000, 0xC1200000, 0x00000000, 0x00000000, 0x00000000, 0xC1F00000, 0xC1A00000, 0xC1200000,
                     0x41200000, 0x41200000, 0xC1200000, 0xC1F00000, 0x00000000, 0x00000000, 0x00000000, 0xC1200000,
                     0xC1A00000, 0x00000000, 0x00000000, 0x00000000, 0xC1A00000, 0xC1A00000, 0x00000000, 0x00000000,
                     0x00000000, 0xC1200000, 0xC1A00000, 0x41200000, 0x41200000, 0x41200000, 0xC2700000, 0xC1A00000,
                     0xC1200000, 0xC1200000, 0xC1A00000, 0xC1F00000, 0xC1F00000, 0xC1200000, 0xC1200000, 0xC1200000,
                     0xC2200000, 0xC2200000, 0x00000000, 0x00000000, 0x00000000, 0xC1200000, 0xC1A00000, 0xC1200000,
                     0xC1200000, 0xC1A00000, 0xC1F00000, 0xC1F00000, 0x00000000, 0x00000000, 0x00000000, 0xC1A00000,
                     0xC1A00000 };
s32 D_80A9A730[] = { 0x01010100, 0x01010101, 0x01010101, 0x01000101, 0x01010001, 0x01010100,
                     0x01000000, 0x00000101, 0x01010101, 0x01010001, 0x00000000, 0x00000000,
                     0x00000101, 0x01010100, 0x00000000, 0x01010101, 0x01000000 };
s32 D_80A9A774[] = { 0x00000000, 0x00000000, 0x00000000 };

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A96DB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A96EC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A96F48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A96F94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A96FD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A97338.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A97610.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A97738.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A97B38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A97BC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A97C7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A97D00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A97D68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A97E18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A97EB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A97F20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A97F70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A98034.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A98124.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A98174.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A98254.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A9835C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A98464.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A9856C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A98674.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A9877C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A98934.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A98C18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A98CD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A98D2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A98DB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A98ECC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/EnKo_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/EnKo_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A99048.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A99384.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A99438.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A99504.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A99560.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A995CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/EnKo_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A99864.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A99BC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A99C94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/EnKo_Draw.s")
