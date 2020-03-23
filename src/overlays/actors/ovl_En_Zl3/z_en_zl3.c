#include "z_en_zl3.h"

#define ROOM 0x00
#define FLAGS 0x00000010

void EnZl3_Init(EnZl3* this, GlobalContext* globalCtx);
void EnZl3_Destroy(EnZl3* this, GlobalContext* globalCtx);
void EnZl3_Update(EnZl3* this, GlobalContext* globalCtx);
void EnZl3_Draw(EnZl3* this, GlobalContext* globalCtx);

/*
const ActorInit En_Zl3_InitVars =
{
    ACTOR_EN_ZL3,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_ZL2,
    sizeof(EnZl3),
    (ActorFunc)EnZl3_Init,
    (ActorFunc)EnZl3_Destroy,
    (ActorFunc)EnZl3_Update,
    (ActorFunc)EnZl3_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B533B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B533FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/EnZl3_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B53468.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B53488.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B534CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B53554.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B53568.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5357C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B53614.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5366C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B536B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B536C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B53764.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B537E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B538B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5394C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5396C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B53974.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B53980.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B53B64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B54360.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5458C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B54CE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B54DB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B54DC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B54DD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B54DE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B54E14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B54EA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B54EF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B54F18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B54FB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55054.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B550F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55144.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B551E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55220.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55268.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B552A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B552DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55334.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55368.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B553B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B553E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55408.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55444.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55550.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B555A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55604.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5566C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B556CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5572C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55780.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55808.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5582C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5585C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B558A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B559C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55A58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55A84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55AC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55B04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55B38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55B78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55BAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55C0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55C4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55C70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55CCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55D00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55DB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55E08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55E48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55E7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55EBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55EF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55F38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55F6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5604C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56090.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56108.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56160.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B561A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B561E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56214.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B562F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5634C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5638C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B563C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56400.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56434.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56474.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B564A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56658.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B566AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5670C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5676C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B567CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5682C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B568B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5691C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5697C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B569E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56A68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56AE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56B54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56BA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56C24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56C84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56CE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56D44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56DA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56DC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56DEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56E38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56EB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56EE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56F10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56F8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56FAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57034.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57104.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B571A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B571FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57240.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57298.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B572F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57324.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57350.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B573C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B573FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57458.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57564.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B575B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B575D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B575F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5764C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B576C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57704.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5772C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57754.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B577BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57858.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57890.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57A74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57AAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57AE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57C54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57C7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57C8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57CB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57D60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57D80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57EAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57EEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57F1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57F84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B58014.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B58214.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B58268.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B582C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B584B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B58624.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5884C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B58898.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B588E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B58938.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5899C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B58A1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B58A50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B58AAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B58C08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B58D50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B58DB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B58E10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B58E7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B58EF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B58F6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B58FDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5904C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B590BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5912C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B591BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5922C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B592A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B59340.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B593D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5944C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B59698.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B59768.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B59828.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B59A80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B59AD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B59B6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B59DB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/EnZl3_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/EnZl3_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B59F74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B59FE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B59FF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5A1D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/EnZl3_Draw.s")
