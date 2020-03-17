glabel func_80062D60
/* AD9F00 80062D60 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AD9F04 80062D64 AFBF001C */  sw    $ra, 0x1c($sp)
/* AD9F08 80062D68 0C018B35 */  jal   func_80062CD4
/* AD9F0C 80062D6C 00000000 */   nop   
/* AD9F10 80062D70 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* AD9F14 80062D74 3C0E8013 */  lui   $t6, %hi(D_801333E8) # $t6, 0x8013
/* AD9F18 80062D78 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* AD9F1C 80062D7C 25CE33E8 */  addiu $t6, %lo(D_801333E8) # addiu $t6, $t6, 0x33e8
/* AD9F20 80062D80 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* AD9F24 80062D84 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* AD9F28 80062D88 AFAE0014 */  sw    $t6, 0x14($sp)
/* AD9F2C 80062D8C AFA70010 */  sw    $a3, 0x10($sp)
/* AD9F30 80062D90 24041808 */  li    $a0, 6152
/* AD9F34 80062D94 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* AD9F38 80062D98 24060004 */   li    $a2, 4
/* AD9F3C 80062D9C 8FBF001C */  lw    $ra, 0x1c($sp)
/* AD9F40 80062DA0 27BD0020 */  addiu $sp, $sp, 0x20
/* AD9F44 80062DA4 03E00008 */  jr    $ra
/* AD9F48 80062DA8 00000000 */   nop   

