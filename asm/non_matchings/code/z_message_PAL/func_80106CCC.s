glabel func_80106CCC
/* B7DE6C 80106CCC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B7DE70 80106CD0 3C0F0001 */  lui   $t7, 1
/* B7DE74 80106CD4 AFBF001C */  sw    $ra, 0x1c($sp)
/* B7DE78 80106CD8 AFA40020 */  sw    $a0, 0x20($sp)
/* B7DE7C 80106CDC 01E47821 */  addu  $t7, $t7, $a0
/* B7DE80 80106CE0 8DEF03D8 */  lw    $t7, 0x3d8($t7)
/* B7DE84 80106CE4 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B7DE88 80106CE8 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B7DE8C 80106CEC 11E00010 */  beqz  $t7, .L80106D30
/* B7DE90 80106CF0 248220D8 */   addiu $v0, $a0, 0x20d8
/* B7DE94 80106CF4 24417FFF */  addiu $at, $v0, 0x7fff
/* B7DE98 80106CF8 24180002 */  li    $t8, 2
/* B7DE9C 80106CFC 24190036 */  li    $t9, 54
/* B7DEA0 80106D00 3C088013 */  lui   $t0, %hi(D_801333E8) # $t0, 0x8013
/* B7DEA4 80106D04 A03863E8 */  sb    $t8, 0x63e8($at)
/* B7DEA8 80106D08 A0396305 */  sb    $t9, 0x6305($at)
/* B7DEAC 80106D0C A02063E5 */  sb    $zero, 0x63e5($at)
/* B7DEB0 80106D10 250833E8 */  addiu $t0, %lo(D_801333E8) # addiu $t0, $t0, 0x33e8
/* B7DEB4 80106D14 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B7DEB8 80106D18 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B7DEBC 80106D1C AFA80014 */  sw    $t0, 0x14($sp)
/* B7DEC0 80106D20 AFA70010 */  sw    $a3, 0x10($sp)
/* B7DEC4 80106D24 00002025 */  move  $a0, $zero
/* B7DEC8 80106D28 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B7DECC 80106D2C 24060004 */   li    $a2, 4
.L80106D30:
/* B7DED0 80106D30 8FBF001C */  lw    $ra, 0x1c($sp)
/* B7DED4 80106D34 27BD0020 */  addiu $sp, $sp, 0x20
/* B7DED8 80106D38 03E00008 */  jr    $ra
/* B7DEDC 80106D3C 00000000 */   nop   

