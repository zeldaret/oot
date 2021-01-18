#include "z_boss_ganon2.h"

#define FLAGS 0x00000035

#define THIS ((BossGanon2*)thisx)

void BossGanon2_Init(Actor* thisx, GlobalContext* globalCtx);
void BossGanon2_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BossGanon2_Update(Actor* thisx, GlobalContext* globalCtx);
void BossGanon2_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_06000BFC;
extern UNK_TYPE D_06000EA0;
extern UNK_TYPE D_06002168;
extern UNK_TYPE D_060028A8;
extern UNK_TYPE D_06002E6C;
extern UNK_TYPE D_06003754;
extern UNK_TYPE D_06003B1C;
extern UNK_TYPE D_06003F38;
extern UNK_TYPE D_06007288;
extern UNK_TYPE D_06008EB8;
extern UNK_TYPE D_0600A8E0;
extern UNK_TYPE D_0600ADD0;
extern UNK_TYPE D_0600BE90;
extern UNK_TYPE D_0600CAF8;
extern UNK_TYPE D_0600DFF0;
extern UNK_TYPE D_0600E8EC;
extern UNK_TYPE D_0600FFE4;
extern UNK_TYPE D_06010380;
extern UNK_TYPE D_060114E8;
extern UNK_TYPE D_060147E0;
extern UNK_TYPE D_06021A90;
extern UNK_TYPE D_06025970;
extern UNK_TYPE D_06026510;
extern UNK_TYPE D_06026AF4;
extern UNK_TYPE D_06027824;
extern UNK_TYPE D_0602A848;
extern UNK_TYPE D_060334F8;
extern UNK_TYPE D_06034278;
extern UNK_TYPE D_060353C0;

/*
const ActorInit Boss_Ganon2_InitVars = {
    ACTOR_BOSS_GANON2,
    ACTORTYPE_BOSS,
    FLAGS,
    OBJECT_GANON2,
    sizeof(BossGanon2),
    (ActorFunc)BossGanon2_Init,
    (ActorFunc)BossGanon2_Destroy,
    (ActorFunc)BossGanon2_Update,
    (ActorFunc)BossGanon2_Draw,
};

static ColliderJntSphElementInit D_80906D7C[16] = {
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 0, { { 0, 0, 0 }, 30 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 1, { { 0, 0, 0 }, 30 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 2, { { 0, 0, 0 }, 30 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 3, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 4, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 5, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 6, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 7, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 8, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 9, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 10, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 11, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 12, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 13, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 14, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x00 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 15, { { 0, 0, 0 }, 30 }, 100 },
    },
};

static ColliderJntSphInit D_80906FBC = {
    {
        COLTYPE_METAL,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_PLAYER,
        OC2_FIRST_ONLY | OC2_TYPE_1,
        COLSHAPE_JNTSPH,
    },
    16,
    D_80906D7C,
};

static ColliderJntSphElementInit D_80906FCC[2] = {
    {
        {
            ELEMTYPE_UNK2,
            { 0xFFCFFFFF, 0x00, 0x40 },
            { 0xFFDFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 15, { { 0, 0, 0 }, 45 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK2,
            { 0xFFCFFFFF, 0x00, 0x40 },
            { 0xFFDFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 16, { { 0, 0, 0 }, 45 }, 100 },
    },
};

static ColliderJntSphInit D_80907014 = {
    {
        COLTYPE_METAL,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_PLAYER,
        OC2_TYPE_1,
        COLSHAPE_JNTSPH,
    },
    2,
    D_80906FCC,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_808FCF40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_808FCF5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_808FD080.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_808FD108.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_808FD210.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_808FD27C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/BossGanon2_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/BossGanon2_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_808FD4D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_808FD5C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_808FD5F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_808FF898.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_808FFA24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_808FFAC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_808FFBBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_808FFC84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_808FFCFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_808FFDB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_808FFEBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_808FFF90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_808FFFE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_809000A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80900104.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80900210.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_8090026C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_809002CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80900344.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80900580.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80900650.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80900818.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80900890.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80901020.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_8090109C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_8090120C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80902348.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80902524.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/BossGanon2_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_809034E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80903F38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80904108.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80904340.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_8090464C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80904818.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_809049A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80904D88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80904FC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_8090523C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80905508.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80905674.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/BossGanon2_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80905DA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_809060E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80906538.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_809069F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80906AB0.s")
