glabel func_80062DAC
/* AD9F4C 80062DAC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AD9F50 80062DB0 AFBF001C */  sw    $ra, 0x1c($sp)
/* AD9F54 80062DB4 0C018B35 */  jal   func_80062CD4
/* AD9F58 80062DB8 AFA60028 */   sw    $a2, 0x28($sp)
/* AD9F5C 80062DBC 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* AD9F60 80062DC0 3C0E8013 */  lui   $t6, %hi(D_801333E8) # $t6, 0x8013
/* AD9F64 80062DC4 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* AD9F68 80062DC8 25CE33E8 */  addiu $t6, %lo(D_801333E8) # addiu $t6, $t6, 0x33e8
/* AD9F6C 80062DCC AFAE0014 */  sw    $t6, 0x14($sp)
/* AD9F70 80062DD0 AFA70010 */  sw    $a3, 0x10($sp)
/* AD9F74 80062DD4 24041808 */  li    $a0, 6152
/* AD9F78 80062DD8 8FA50028 */  lw    $a1, 0x28($sp)
/* AD9F7C 80062DDC 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* AD9F80 80062DE0 24060004 */   li    $a2, 4
/* AD9F84 80062DE4 8FBF001C */  lw    $ra, 0x1c($sp)
/* AD9F88 80062DE8 27BD0020 */  addiu $sp, $sp, 0x20
/* AD9F8C 80062DEC 03E00008 */  jr    $ra
/* AD9F90 80062DF0 00000000 */   nop   

