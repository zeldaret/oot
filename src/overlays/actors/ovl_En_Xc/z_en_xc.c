#include "z_en_xc.h"

#define ROOM  0x00
#define FLAGS 0x00000010

void EnXc_Init(EnXc* this, GlobalContext* globalCtx);
void EnXc_Destroy(EnXc* this, GlobalContext* globalCtx);
void EnXc_Update(EnXc* this, GlobalContext* globalCtx);
void EnXc_Draw(EnXc* this, GlobalContext* globalCtx);

/*
const ActorInit En_Xc_InitVars =
{
    ACTOR_EN_XC,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_XC,
    sizeof(EnXc),
    (ActorFunc)EnXc_Init,
    (ActorFunc)EnXc_Destroy,
    (ActorFunc)EnXc_Update,
    (ActorFunc)EnXc_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3C1E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3C22C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/EnXc_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3C298.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3C31C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3C3A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3C468.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3C4B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3C4D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3C4F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3C53C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3C588.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3C620.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3C700.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3C7BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3C7D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3C800.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3C820.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3C888.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3C8CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3C924.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3C964.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3C9DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3C9EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3CA38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3CA84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3CB58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3CBA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3CD00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3CD98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3CE78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3CE84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3CF04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3CF90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3D014.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3D118.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3D158.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3D298.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3D338.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3D3B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3D3F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3D48C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3D4D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3D56C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3D644.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3D664.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3D6F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3D710.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3D730.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3D750.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3D794.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3D8A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3D990.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3DA00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3DAA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3DAF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3DBAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3DC24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3DCA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3DD3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3DE00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3DE78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3DEF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3DFA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3E014.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3E0BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3E164.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3E1B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3E224.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3E25C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3E294.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3E30C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3E368.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3E3C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3E420.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3E464.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3E4AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3E4F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3E53C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3E580.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3E5C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3E610.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3E668.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3E6D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3E738.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3E7A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3E804.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3E85C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3E87C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3E8AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3E8E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3E908.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3EA7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3EBF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3EC00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3EC0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3EC90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3ECD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3ED48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3ED68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3ED88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3EDCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3EE28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3EE34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3EE40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3EE4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3EE58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3EE64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3EE74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3EEA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3EEC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3EEEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3EF10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3EF34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3EF58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3EF80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3EFA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3EFC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3EFEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F010.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F0B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F0DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F100.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F124.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F144.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F16C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F1A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F1D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F1F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F220.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F248.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F270.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F298.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F2C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F2E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F344.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F36C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F394.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F3BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F3C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F3D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F3F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F44C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F534.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F59C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F620.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F644.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F668.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F6DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F700.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F754.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F7BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F7F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F820.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F848.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F8A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F8C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F928.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F988.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3F9E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3FA08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3FA2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3FA4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3FAE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3FB24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3FF0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B3FFB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B40040.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B400AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B400E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B40104.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B4015C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B401CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B40224.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B40248.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B402C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B40590.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B405A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B4066C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B406A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B406F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B4070C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B407A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B40820.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B408FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B409D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B40A78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B40B18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B40BB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B40C50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B40C74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B40C98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B40CBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B40CE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B40D08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B40D2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B40D50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B40D74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B40D98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B40E40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B40E64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B40E88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B40EAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B41000.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B41020.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B41068.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B410AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B41110.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B41174.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B411AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B41204.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B41248.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B41284.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B412AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B412D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B412FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B41324.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B4134C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B41374.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B4139C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B413C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B41414.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B4143C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B41464.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B4148C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B414AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B415B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B41718.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B41798.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B417E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B41844.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/EnXc_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/EnXc_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B41A88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B41B0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B41B98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/func_80B41BA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Xc/EnXc_Draw.s")

