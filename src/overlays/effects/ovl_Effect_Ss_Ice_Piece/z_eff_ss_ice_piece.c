/*
 * File: z_eff_ss_ice_piece.c
 * Overlay: ovl_Effect_Ss_Ice_Piece
 * Description:
 */

#include "z_eff_ss_ice_piece.h"

typedef enum {
    /* 0x00 */ SS_ICE_PIECE_0,
    /* 0x01 */ SS_ICE_PIECE_1,
    /* 0x02 */ SS_ICE_PIECE_2,
    /* 0x03 */ SS_ICE_PIECE_3,
    /* 0x04 */ SS_ICE_PIECE_4,
    /* 0x05 */ SS_ICE_PIECE_5,
    /* 0x06 */ SS_ICE_PIECE_6,
    /* 0x07 */ SS_ICE_PIECE_7,
    /* 0x08 */ SS_ICE_PIECE_8,
    /* 0x09 */ SS_ICE_PIECE_9,
    /* 0x0A */ SS_ICE_PIECE_A,
    /* 0x0B */ SS_ICE_PIECE_B,
    /* 0x0C */ SS_ICE_PIECE_C,
} EffectSsIce_PieceRegs;

u32 EffectSsIcePiece_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsIcePiece_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsIcePiece_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_Ice_Piece_InitVars = {
    EFFECT_SS_ICE_PIECE,
    EffectSsIcePiece_Init,
};

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Ice_Piece/EffectSsIcePiece_Init.s")
/*
? EffectSsIcePiece_Init(s32 arg0, ? arg1, void *arg2, void *arg3) {
    f32 sp20;
    f32 sp1C;

    arg2->unk0 = arg3->unk0;
    arg2->unk4 = arg3->unk4;
    arg2->unk8 = arg3->unk8;
    arg2->unk2C = arg3->unk0;
    arg2->unk30 = arg3->unk4;
    arg2->unk34 = arg3->unk8;
    arg2->unkC = arg3->unk10;
    arg2->unk10 = arg3->unk14;
    arg2->unk14 = arg3->unk18;
    arg2->unk18 = arg3->unk1C;
    arg2->unk1C = arg3->unk20;
    arg2->unk20 = arg3->unk24;
    arg2->unk28 = &func_809A8850;
    arg2->unk24 = &func_809A8AC0;
    arg2->unk5C = arg3->unk28;
    arg2->unk40 = arg3->unk28;
    arg2->unk48 = arg3->unkC * 100.0f;
    arg2->unk42 = atan2s((bitwise f32) arg3->unk18, (bitwise f32) arg3->unk10);
    arg2->unk44 = 0;
    sp1C = fabsf(arg3->unk14);
    sp20 = fabsf(arg3->unk10);
    arg2->unk46 = (Math_Rand_ZeroFloat(0x3F800000, arg2, arg3) + 0.5f) * ((sp20 + sp1C) * 100.0f);
    return 1;
}
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Ice_Piece/func_809A8850.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Ice_Piece/func_809A8AC0.s")
