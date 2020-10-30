#include "z_en_fd.h"

#define FLAGS 0x00000215

#define THIS ((EnFd*)thisx)

void EnFd_Init(Actor* thisx, GlobalContext* globalCtx);
void EnFd_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnFd_Update(Actor* thisx, GlobalContext* globalCtx);
void EnFd_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Fd_InitVars = {
    ACTOR_EN_FD,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_FW,
    sizeof(EnFd),
    (ActorFunc)EnFd_Init,
    (ActorFunc)EnFd_Destroy,
    (ActorFunc)EnFd_Update,
    (ActorFunc)EnFd_Draw,
};

static ColliderJntSphItemInit  D_80A0DE20[12] = {
    {
        { ELEMTYPE_UNK0, { 0xFFCFFFFF, 0x01, 0x04 }, { 0x00040088, 0x00, 0x00 }, TOUCH_ON, BUMP_HOOKABLE |
BUMP_ON, OCELEM_ON }, { 21, { { 1600, 0, 0 }, 5 }, 300 },
    },
    {
        { ELEMTYPE_UNK0, { 0xFFCFFFFF, 0x01, 0x04 }, { 0x00040008, 0x00, 0x00 }, TOUCH_ON, BUMP_ON, OCELEM_ON
}, { 12, { { 1600, 0, 0 }, 5 }, 400 },
    },
    {
        { ELEMTYPE_UNK0, { 0xFFCFFFFF, 0x01, 0x04 }, { 0x00040008, 0x00, 0x00 }, TOUCH_ON, BUMP_ON, OCELEM_ON
}, { 14, { { 800, 0, 0 }, 4 }, 300 },
    },
    {
        { ELEMTYPE_UNK0, { 0xFFCFFFFF, 0x01, 0x04 }, { 0x00040008, 0x00, 0x00 }, TOUCH_ON, BUMP_ON, OCELEM_ON
}, { 15, { { 1600, 0, 0 }, 4 }, 300 },
    },
    {
        { ELEMTYPE_UNK0, { 0xFFCFFFFF, 0x01, 0x04 }, { 0x00040008, 0x00, 0x00 }, TOUCH_ON, BUMP_ON, OCELEM_ON
}, { 16, { { 2000, 0, 0 }, 4 }, 300 },
    },
    {
        { ELEMTYPE_UNK0, { 0xFFCFFFFF, 0x01, 0x04 }, { 0x00040008, 0x00, 0x00 }, TOUCH_ON, BUMP_ON, OCELEM_ON
}, { 17, { { 800, 0, 0 }, 4 }, 300 },
    },
    {
        { ELEMTYPE_UNK0, { 0xFFCFFFFF, 0x01, 0x04 }, { 0x00040008, 0x00, 0x00 }, TOUCH_ON, BUMP_ON, OCELEM_ON
}, { 18, { { 1600, 0, 0 }, 4 }, 300 },
    },
    {
        { ELEMTYPE_UNK0, { 0xFFCFFFFF, 0x01, 0x04 }, { 0x00040008, 0x00, 0x00 }, TOUCH_ON, BUMP_ON, OCELEM_ON
}, { 19, { { 2000, 0, 0 }, 4 }, 300 },
    },
    {
        { ELEMTYPE_UNK0, { 0xFFCFFFFF, 0x01, 0x04 }, { 0x00040008, 0x00, 0x00 }, TOUCH_ON, BUMP_ON, OCELEM_ON
}, { 4, { { 2200, 0, 0 }, 4 }, 400 },
    },
    {
        { ELEMTYPE_UNK0, { 0xFFCFFFFF, 0x01, 0x04 }, { 0x00040008, 0x00, 0x00 }, TOUCH_ON, BUMP_ON, OCELEM_ON
}, { 4, { { 5000, 0, 0 }, 4 }, 300 },
    },
    {
        { ELEMTYPE_UNK0, { 0xFFCFFFFF, 0x01, 0x04 }, { 0x00040008, 0x00, 0x00 }, TOUCH_ON, BUMP_ON, OCELEM_ON
}, { 8, { { 2200, 0, 0 }, 4 }, 400 },
    },
    {
        { ELEMTYPE_UNK0, { 0xFFCFFFFF, 0x01, 0x04 }, { 0x00040008, 0x00, 0x00 }, TOUCH_ON, BUMP_ON, OCELEM_ON
}, { 8, { { 5000, 0, 0 }, 4 }, 300 },
    },
};

static ColliderJntSphInit D_80A0DFD0 = {
    { COLTYPE_UNK10, AT_ENEMY | AT_ON, AC_PLAYER | AC_ON, OC_ALL | OC_ON, OT_TYPE1, COLSHAPE_JNTSPH },
    12, D_80A0DE20,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fd/func_80A0B6C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fd/func_80A0B7B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fd/func_80A0B8D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fd/func_80A0BA44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fd/func_80A0BAE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fd/func_80A0BC70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fd/func_80A0BD78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fd/func_80A0BE34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fd/func_80A0BEA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fd/func_80A0BF6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fd/func_80A0C0A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fd/EnFd_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fd/EnFd_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fd/func_80A0C310.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fd/func_80A0C3A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fd/func_80A0C474.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fd/func_80A0C4F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fd/func_80A0C5D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fd/func_80A0C7EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fd/func_80A0CA44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fd/EnFd_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fd/func_80A0CCB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fd/func_80A0CCF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fd/EnFd_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fd/func_80A0D40C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fd/func_80A0D4FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fd/func_80A0D614.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fd/func_80A0D730.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fd/func_80A0DB44.s")
