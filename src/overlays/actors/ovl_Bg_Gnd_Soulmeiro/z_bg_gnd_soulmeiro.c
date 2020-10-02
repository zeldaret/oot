/*
 * File: z_bg_gnd_soulmeiro.c
 * Overlay: ovl_Bg_Gnd_Soulmeiro
 * Description: Web-Blocked Ceiling Hole (Inside Ganon's Castle)
 */

#include "z_bg_gnd_soulmeiro.h"

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

s32 D_8087B530[] = { 0x0A000900, 0x10010000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00020800, 0x00000000, 0x00010000, 0x00320014, 0x00140000, 0x00000000};
s32 D_8087B55C[] = { 0xC8500064, 0xB0F403E8, 0xB0F803E8, 0x30FC03E8};
s32 D_8087B56C[] = { 0x00000000, 0x00000000, 0x00000000};
s32 D_8087B578[] = { 0x06007C00, 0x06002320, 0x060035A0, 0x00000000, 0x00000000, 0x00000000};


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Soulmeiro/BgGndSoulmeiro_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Soulmeiro/BgGndSoulmeiro_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Soulmeiro/func_8087AF38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Soulmeiro/func_8087B284.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Soulmeiro/func_8087B350.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Soulmeiro/BgGndSoulmeiro_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Soulmeiro/BgGndSoulmeiro_Draw.s")
