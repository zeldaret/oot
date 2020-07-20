glabel func_800F68D4
/* B6DA74 800F68D4 3C0E8013 */  lui   $t6, %hi(D_8013060C) # $t6, 0x8013
/* B6DA78 800F68D8 81CE060C */  lb    $t6, %lo(D_8013060C)($t6)
/* B6DA7C 800F68DC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B6DA80 800F68E0 AFA40020 */  sw    $a0, 0x20($sp)
/* B6DA84 800F68E4 AFA60028 */  sw    $a2, 0x28($sp)
/* B6DA88 800F68E8 30C600FF */  andi  $a2, $a2, 0xff
/* B6DA8C 800F68EC 3084FFFF */  andi  $a0, $a0, 0xffff
/* B6DA90 800F68F0 15C00006 */  bnez  $t6, .L800F690C
/* B6DA94 800F68F4 AFBF001C */   sw    $ra, 0x1c($sp)
/* B6DA98 800F68F8 8FAF0030 */  lw    $t7, 0x30($sp)
/* B6DA9C 800F68FC 8FB80034 */  lw    $t8, 0x34($sp)
/* B6DAA0 800F6900 AFAF0010 */  sw    $t7, 0x10($sp)
/* B6DAA4 800F6904 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B6DAA8 800F6908 AFB80014 */   sw    $t8, 0x14($sp)
.L800F690C:
/* B6DAAC 800F690C 8FBF001C */  lw    $ra, 0x1c($sp)
/* B6DAB0 800F6910 27BD0020 */  addiu $sp, $sp, 0x20
/* B6DAB4 800F6914 03E00008 */  jr    $ra
/* B6DAB8 800F6918 00000000 */   nop   

