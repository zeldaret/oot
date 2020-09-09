#include "z_bg_spot16_bombstone.h"

#define FLAGS 0x00000010

#define THIS ((BgSpot16Bombstone*)thisx)

void BgSpot16Bombstone_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot16Bombstone_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot16Bombstone_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot16Bombstone_Draw(Actor* thisx, GlobalContext* globalCtx);
s16 func_808B4E58(BgSpot16Bombstone *this, GlobalContext *globalCtx, s16 arg3);
s16 func_808B4D9C(BgSpot16Bombstone *this, GlobalContext *globalCtx, s16 arg3);


// s32 D_808B5DD0 = 0.0f;
// s32 D_808B5DD4 = 0.0f;
// s32 D_808B5DD8[] = {
//     0x00080004, 0x004607D0, 0xFCE00000, 
//     0x00640000, 0x00000000, 0x00060003, 
//     0x003200C8, 0x0A28C350, 0x005A0000, 
//     0x00000000, 0x00050003, 0x0028F63C, 
//     0x019030B0, 0x00320000, 0x00000000,
//     0x00030001, 0x003C0258, 0xFF9CAFC8,
//     0x00320000, 0x00000000, 0x00030001, 
//     0x0028F2B8, 0xFF9C6590, 0x001E0000,
//     0x00000000, 0x00060009, 0x00280000, 
//     0x0BB8D8F0, 0x001E0000, 0x00000000
// 

// s32 D_808B5E50[] = {
//     0x00000000, 0x00000000, 0x00000000, 
//     0x4FC1FFF6, 0x00000000, 0x00010100, 
//     0x00000000, 0x00320000, 0x01200064
// };
// s32 D_808B5E74[] = { 0x0C000D39, 0x20000000, 0x00000001 };

// // s32 D_808B5E50;
// s32 D_808B5E84[] = {
//     0x0A000900, 0x00010000, 0x00000000, 
//     0x00000000, 0x00000000, 0x00000008, 
//     0x00000000, 0x00010000, 0x00BE0050, 
//     0x0000000A, 0x00000032
// };
// s32 D_808B5EB0[] = {
//     0x0000000A, 0x003CFFF6, 0x010401E0, 
//     0x00070000, 0x00000032, 0x00000104, 
//     0x017C000D, 0x0001001E, 0x00140014, 
//     0x00A00104, 0x000A0002, 0x00140028, 
//     0x001400C8, 0x00960007, 0x0003FFD8, 
//     0x0064001E, 0x00D20064, 0x00070004, 
//     0x000A0078, 0x000A00A0, 0x0028000A, 
//     0x0005FFA7, 0x006E0041, 0x00960118, 
//     0x00070006, 0xFFC40070, 0x006D006E, 
//     0x00820007, 0x0007FFF2, 0x0050007F, 
//     0x008C00D2, 0x00070008, 0x00140032, 
//     0x001E008C, 0x00C80007, 0x0009FFEC, 
//     0x00140028, 0x00C800B4, 0x0007000A, 
//     0x001E0028, 0xFFE20064, 0x00780007, 
//     0x000AFF92, 0x001D0078, 0x008C0118, 
//     0x000A000B, 0x001E0014, 0x001E0050, 
//     0x00C80006, 0x000C0028, 0x001EFFE2, 
//     0x00AA010E, 0x0011000D, 0xFFD80032, 
//     0xFFEC008C, 0x00560006, 0x000D0032, 
//     0x00320032, 0x009600C8, 0x000A000E, 
//     0x00280028, 0xFFD8003C, 0x00A00006, 
//     0x000FFFE2, 0x00140032, 0x00AA012C, 
//     0x00060010, 0x00280032, 0x001400AA, 
//     0x00780007, 0x0010001E, 0x0032003C, 
//     0x009600C8, 0x00060011, 0x000A000A, 
//     0x00000082, 0x00DC0006, 0x0012000A, 
//     0x00280014, 0x00B400DC, 0x000B0013, 
//     0x000A0005, 0x0000006E, 0x00460011, 
//     0x0013FFEC, 0x0032FFE2, 0x009600C8, 
//     0x00060014, 0x00500032, 0x00000096, 
//     0x00C80008
// };

// const ActorInit Bg_Spot16_Bombstone_InitVars = {
//     ACTOR_BG_SPOT16_BOMBSTONE,
//     ACTORTYPE_PROP,
//     FLAGS,
//     OBJECT_SPOT16_OBJ,
//     sizeof(BgSpot16Bombstone),
//     (ActorFunc)BgSpot16Bombstone_Init,
//     (ActorFunc)BgSpot16Bombstone_Destroy,
//     (ActorFunc)BgSpot16Bombstone_Update,
//     (ActorFunc)BgSpot16Bombstone_Draw,
// };

// s32 D_808B603C[] = {
//     0xB0F407D0, 0xB0F801F4, 0x30FC03E8
// };
// s32 D_808B6048[] = {
//     0xB06CFFFF, 0xB070FFF6, 0xB0F403E8, 
//     0xB0F800C8, 0x30FC03E8
// };
// s32 D_808B605C[] = {
//     0x00000000, 0x00000000, 0x00000000
// };
// s32 D_808B6068[] = {
//     0x00000000, 0x3ECCCCCD, 0x00000000
// };
// s32 D_808B6074[] = {
//     0x42840000, 0x424C0000, 0x42400000, 
//     0x42100000, 0x41A80000
// };
// s32 D_808B6088[] = {
//     0x00, 0x00, 0x00, 
//     0x01, 0x00, 0x02, 
//     0x00, 0x03, 0x00, 
//     0x04
// };

// s32 D_808B6092[] = {
//     0x00, 0x00, 0x00, 
//     0x00, 0x00, 0x00,
//     0x00, 0x00, 0x00, 
//     0x00, 0x00, 0x00, 
//     0x00, 0x00
// };


// s16 func_808B4C30(void *arg0) {
//     s16 temp_v0;

//     temp_v0 = arg0->unk1C;
//     arg0->unk156 = (s16) (((s32) temp_v0 >> 8) & 0x3F);
//     arg0->unk1C = (s16) (temp_v0 & 0xFF);
//     return temp_v0;
// }


s16 func_808B4C30(BgSpot16Bombstone *this) {
    s16 temp_v0;

    temp_v0 = this->actor.params;
    this->unk_156 = (temp_v0 >> 8) & 0x3F;
    this->actor.params = temp_v0 & 0xFF;
    return temp_v0;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B4C30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B4C4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B4D04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B4D9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B4E58.s")

// void BgSpot16Bombstone_Init(Actor *thisx, GlobalContext *globalCtx) {
//     short phi_v1;
 
//     phi_v1 = func_808B4C30(thisx);
 
//     if (phi_v1 >= 6) {
//         if (phi_v1 != 255) {
//         }
//     }
//     else {
//             switch(phi_v1) {
//                 case 0:
//                 case 1:
//                 case 2:
//                 case 3:
//                 case 4:
//                     phi_v1 = func_808B4D9C(thisx, globalCtx, phi_v1);
//                     break;
//                 case 5:
//                     phi_v1 = func_808B4E58(thisx, globalCtx, phi_v1);
//                     break;
//                 default:
//                     osSyncPrintf("Error : arg_data おかしいな(%s %d)(arg_data 0x%04x)\n", "../z_bg_spot16_bombstone.c", 0x29C, phi_v1);
//                     break;
//             }
//     }

//     if (phi_v1 == 0) {
//         Actor_Kill(thisx);
//         return;
//     }
//     osSyncPrintf("Spot16 obj 爆弾石 (scaleX %f)(arg_data 0x%04x)\n", thisx->scale.x, thisx->params);
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/BgSpot16Bombstone_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/BgSpot16Bombstone_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B51A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B5240.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B53A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B561C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B56BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B57E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B5934.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B5950.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B5A78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B5A94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B5AF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B5B04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B5B58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B5B6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/BgSpot16Bombstone_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/BgSpot16Bombstone_Draw.s")
