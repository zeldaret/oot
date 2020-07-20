glabel func_800E3FB4
/* B5B154 800E3FB4 27BDFFC0 */  addiu $sp, $sp, -0x40
/* B5B158 800E3FB8 AFB00030 */  sw    $s0, 0x30($sp)
/* B5B15C 800E3FBC 00808025 */  move  $s0, $a0
/* B5B160 800E3FC0 AFBF0034 */  sw    $ra, 0x34($sp)
/* B5B164 800E3FC4 24A5000F */  addiu $a1, $a1, 0xf
/* B5B168 800E3FC8 2401FFF0 */  li    $at, -16
/* B5B16C 800E3FCC 00A12824 */  and   $a1, $a1, $at
/* B5B170 800E3FD0 8C84000C */  lw    $a0, 0xc($a0)
/* B5B174 800E3FD4 0C039A10 */  jal   func_800E6840
/* B5B178 800E3FD8 AFA50044 */   sw    $a1, 0x44($sp)
/* B5B17C 800E3FDC 26040024 */  addiu $a0, $s0, 0x24
/* B5B180 800E3FE0 AFA4003C */  sw    $a0, 0x3c($sp)
/* B5B184 800E3FE4 2605003C */  addiu $a1, $s0, 0x3c
/* B5B188 800E3FE8 0C001874 */  jal   osCreateMesgQueue
/* B5B18C 800E3FEC 24060001 */   li    $a2, 1
/* B5B190 800E3FF0 8E0E000C */  lw    $t6, 0xc($s0)
/* B5B194 800E3FF4 8FAF0044 */  lw    $t7, 0x44($sp)
/* B5B198 800E3FF8 8FB8003C */  lw    $t8, 0x3c($sp)
/* B5B19C 800E3FFC 8E070008 */  lw    $a3, 8($s0)
/* B5B1A0 800E4000 AFAE0010 */  sw    $t6, 0x10($sp)
/* B5B1A4 800E4004 AFAF0014 */  sw    $t7, 0x14($sp)
/* B5B1A8 800E4008 AFB80018 */  sw    $t8, 0x18($sp)
/* B5B1AC 800E400C 82190002 */  lb    $t9, 2($s0)
/* B5B1B0 800E4010 3C088015 */  lui   $t0, %hi(D_80149450) # $t0, 0x8015
/* B5B1B4 800E4014 25089450 */  addiu $t0, %lo(D_80149450) # addiu $t0, $t0, -0x6bb0
/* B5B1B8 800E4018 AFA80020 */  sw    $t0, 0x20($sp)
/* B5B1BC 800E401C 26040040 */  addiu $a0, $s0, 0x40
/* B5B1C0 800E4020 00002825 */  move  $a1, $zero
/* B5B1C4 800E4024 00003025 */  move  $a2, $zero
/* B5B1C8 800E4028 0C038AF8 */  jal   func_800E2BE0
/* B5B1CC 800E402C AFB9001C */   sw    $t9, 0x1c($sp)
/* B5B1D0 800E4030 8FBF0034 */  lw    $ra, 0x34($sp)
/* B5B1D4 800E4034 8FB00030 */  lw    $s0, 0x30($sp)
/* B5B1D8 800E4038 27BD0040 */  addiu $sp, $sp, 0x40
/* B5B1DC 800E403C 03E00008 */  jr    $ra
/* B5B1E0 800E4040 00000000 */   nop

