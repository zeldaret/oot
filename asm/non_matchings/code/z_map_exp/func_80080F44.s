glabel func_80080F44
/* AF80E4 80080F44 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AF80E8 80080F48 AFBF0014 */  sw    $ra, 0x14($sp)
/* AF80EC 80080F4C 0C01ECD9 */  jal   MapMark_ClearPointers
/* AF80F0 80080F50 00000000 */   nop   
/* AF80F4 80080F54 8FBF0014 */  lw    $ra, 0x14($sp)
/* AF80F8 80080F58 3C018016 */  lui   $at, %hi(D_8015FFD0) # $at, 0x8016
/* AF80FC 80080F5C AC20FFD0 */  sw    $zero, %lo(D_8015FFD0)($at)
/* AF8100 80080F60 03E00008 */  jr    $ra
/* AF8104 80080F64 27BD0018 */   addiu $sp, $sp, 0x18

