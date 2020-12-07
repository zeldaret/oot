#include "z_en_syateki_itm.h"
#include "vt.h"
#include "overlays/actors/ovl_En_Syateki_Man/z_en_syateki_man.h"
#include "overlays/actors/ovl_En_Ex_Ruppy/z_en_ex_ruppy.h"
#include "overlays/actors/ovl_En_G_Switch/z_en_g_switch.h"

#define FLAGS 0x00000010

#define THIS ((EnSyatekiItm*)thisx)

void EnSyatekiItm_Init(Actor* thisx, GlobalContext* globalCtx);
void EnSyatekiItm_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnSyatekiItm_Update(Actor* thisx, GlobalContext* globalCtx);


const ActorInit En_Syateki_Itm_InitVars = {
    ACTOR_EN_SYATEKI_ITM,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnSyatekiItm),
    (ActorFunc)EnSyatekiItm_Init,
    (ActorFunc)EnSyatekiItm_Destroy,
    (ActorFunc)EnSyatekiItm_Update,
    NULL,
};

Vec3f D_80B10240 = {0.0f, -10.0f, -270.0f};
Vec3f D_80B1024C = {-220.0f, 66.0f, -320.0f};
Vec3f D_80B10258 = {260.0f, 66.0f, -320.0f};
Vec3f D_80B10264 = {0.0f, -10.0f, -270.0f};
Vec3f D_80B10270 = {-220.0f, 66.0f, -320.0f};
Vec3f D_80B1027C = {260.0f, 66.0f, -320.0f};
Vec3f D_80B10288 = {260.0f, 100.0f, -320.0f};
Vec3f D_80B10294 = {360.0f, 100.0f, -320.0f};
Vec3f D_80B102A0 = {-230.0f, 94.0f, -360.0f};
Vec3f D_80B102AC = {-400.0f, 94.0f, -360.0f};
Vec3f D_80B102B8 = {0.0f, 53.0f, -270.0f};
Vec3f D_80B102C4 = {-60.0f, 63.0f, -320.0f};
Vec3f D_80B102D0 = {60.0f, 63.0f, -320.0f};
Vec3f D_80B102DC = {0.0f, 0.0f, 0.0f};
Vec3f D_80B102E8 = {-60.0f, 63.0f, -320.0f};
Vec3f D_80B102F4 = {60.0f, 63.0f, -320.0f};
Vec3f D_80B10300 = {-230.0f, 0.0f, 0.0f};
Vec3f D_80B1030C = {-230.0f, 0.0f, 0.0f};
Vec3f D_80B10318 = {260.0f, 0.0f, 0.0f};
Vec3f D_80B10324 = {260.0f, 0.0f, 0.0f};
s16 D_80B10330[] = {0, 1, 0, 1, 2, 2};
s16 D_80B1033C[] = {0, 1, 1, 0, 1, 1, 4, 4, 4, 4};
Vec3f D_80B10350[] = {{-40.0f, 0.0f, -90.0f},{ -20.0f, 0.0f, -90.0f}, {0.0f, 0.0f, -90.0f}, {20.0f, 0.0f, -90.0f}, {40.0f, 0.0f, -90.0f}, {-40.0f, 0.0f, -60.0f}, {-20.0f, 0.0f, -60.0f}, {0.0f, 0.0f, -60.0f}, {20.0f, 0.0f, -60.0f}, {40.0f, 0.0f, -60.0f},};
s32 D_80B103C8[] = {0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000};

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Itm/EnSyatekiItm_Init.s")

void EnSyatekiItm_Destroy(Actor *thisx, GlobalContext *globalCtx) {
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Itm/func_80B0F838.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Itm/func_80B0F944.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Itm/func_80B0FABC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Itm/func_80B0FF44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Itm/func_80B0FFE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Itm/func_80B10070.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Itm/EnSyatekiItm_Update.s")
