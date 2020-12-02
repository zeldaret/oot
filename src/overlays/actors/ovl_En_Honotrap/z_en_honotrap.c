#include "z_en_honotrap.h"

#define FLAGS 0x00000010

#define THIS ((EnHonotrap*)thisx)

void EnHonotrap_Init(Actor* thisx, GlobalContext* globalCtx);
void EnHonotrap_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnHonotrap_Update(Actor* thisx, GlobalContext* globalCtx);
void EnHonotrap_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_0404D4E0;
extern UNK_TYPE D_05006810;

/*
const ActorInit En_Honotrap_InitVars = {
    ACTOR_EN_HONOTRAP,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_DANGEON_KEEP,
    sizeof(EnHonotrap),
    (ActorFunc)EnHonotrap_Init,
    (ActorFunc)EnHonotrap_Destroy,
    (ActorFunc)EnHonotrap_Update,
    (ActorFunc)EnHonotrap_Draw,
};

static ColliderTrisElementInit D_80A5AF80[2] = {
    {
        { ELEMTYPE_UNK4, { 0x00000000, 0x00, 0x00 }, { 0x0001F824, 0x00, 0x00 }, TOUCH_OFF, BUMP_ON, OCELEM_OFF },
        { { { 0.0f, 23.0f, 8.5f }, { -23.0f, 0.0f, 8.5f }, { 0.0f, -23.0f, 8.5f } } },
    },
    {
        { ELEMTYPE_UNK0, { 0x00000000, 0x00, 0x00 }, { 0x0001F824, 0x00, 0x00 }, TOUCH_OFF, BUMP_ON, OCELEM_OFF },
        { { { 0.0f, 23.0f, 8.5f }, { 0.0f, -23.0f, 8.5f }, { 23.0f, 0.0f, 8.5f } } },
    },
};

static ColliderTrisInit D_80A5AFF8 = {
    { COLTYPE_NONE, AT_OFF, AC_ON | AC_PLAYER, OC_OFF, OT_NONE, COLSHAPE_TRIS },
    2,
    D_80A5AF80,
};

static ColliderCylinderInit D_80A5B008 = {
    { COLTYPE_NONE, AT_ON | AT_ENEMY, AC_ON | AC_PLAYER, OC_ON | OC_ALL, OT_TYPE2, COLSHAPE_CYLINDER },
    { ELEMTYPE_UNK0,
      { 0xFFCFFFFF, 0x01, 0x04 },
      { 0x00100000, 0x00, 0x00 },
      TOUCH_ON | TOUCH_SFX_NONE,
      BUMP_ON,
      OCELEM_ON },
    { 10, 25, 0, { 0, 0, 0 } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A59C30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A59CC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A59D70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A59F08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/EnHonotrap_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/EnHonotrap_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A5A0E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A5A0FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A5A1B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A5A208.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A5A2D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A5A2EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A5A31C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A5A32C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A5A378.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A5A388.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A5A41C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A5A484.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A5A5C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A5A658.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A5A824.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A5A860.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A5AA14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A5AA24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/EnHonotrap_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A5ABFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/func_80A5AD28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Honotrap/EnHonotrap_Draw.s")
