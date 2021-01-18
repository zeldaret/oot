#include "z_en_ny.h"

#define FLAGS 0x00000005

#define THIS ((EnNy*)thisx)

void EnNy_Init(Actor* thisx, GlobalContext* globalCtx);
void EnNy_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnNy_Update(Actor* thisx, GlobalContext* globalCtx);
void EnNy_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_06001DD0;
extern UNK_TYPE D_06001EA8;
extern UNK_TYPE D_06001FC8;

/*
const ActorInit En_Ny_InitVars = {
    ACTOR_EN_NY,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_NY,
    sizeof(EnNy),
    (ActorFunc)EnNy_Init,
    (ActorFunc)EnNy_Destroy,
    (ActorFunc)EnNy_Update,
    (ActorFunc)EnNy_Draw,
};

static ColliderJntSphElementInit D_80ABE330[1] = {
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x04, 0x08 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 0, { { 0, 0, 0 }, 15 }, 100 },
    },
};

static ColliderJntSphInit D_80ABE354 = {
    {
        COLTYPE_NONE,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_JNTSPH,
    },
    1,
    D_80ABE330,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/EnNy_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/EnNy_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCD40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCD84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCD94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCDAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCDBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCDFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCE38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCE50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCE90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCEEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCF4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABD05C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABD11C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABD190.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABD3B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/EnNy_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABD728.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABD9AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABDBB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABDBF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/EnNy_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABE040.s")
