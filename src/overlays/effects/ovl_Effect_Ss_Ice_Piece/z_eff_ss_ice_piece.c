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

/*
EffectSsInit Effect_Ss_Ice_Piece_InitVars = {
    EFFECT_SS_ICE_PIECE,
    EffectSsIcePiece_Init,
};
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Ice_Piece/EffectSsIcePiece_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Ice_Piece/func_809A8850.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Ice_Piece/func_809A8AC0.s")
