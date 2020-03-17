glabel func_800B3FF4
/* B2B194 800B3FF4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B2B198 800B3FF8 AFA40030 */  sw    $a0, 0x30($sp)
/* B2B19C 800B3FFC AFBF0014 */  sw    $ra, 0x14($sp)
/* B2B1A0 800B4000 00A02025 */  move  $a0, $a1
/* B2B1A4 800B4004 AFA60038 */  sw    $a2, 0x38($sp)
/* B2B1A8 800B4008 0C02CFCE */  jal   func_800B3F38
/* B2B1AC 800B400C 27A5001C */   addiu $a1, $sp, 0x1c
/* B2B1B0 800B4010 27A40028 */  addiu $a0, $sp, 0x28
/* B2B1B4 800B4014 0C01F0FD */  jal   func_8007C3F4
/* B2B1B8 800B4018 27A5001C */   addiu $a1, $sp, 0x1c
/* B2B1BC 800B401C 8FA50030 */  lw    $a1, 0x30($sp)
/* B2B1C0 800B4020 87AE002E */  lh    $t6, 0x2e($sp)
/* B2B1C4 800B4024 8FA40038 */  lw    $a0, 0x38($sp)
/* B2B1C8 800B4028 84AF000E */  lh    $t7, 0xe($a1)
/* B2B1CC 800B402C 27A60028 */  addiu $a2, $sp, 0x28
/* B2B1D0 800B4030 01CFC021 */  addu  $t8, $t6, $t7
/* B2B1D4 800B4034 0C02CED4 */  jal   func_800B3B50
/* B2B1D8 800B4038 A7B8002E */   sh    $t8, 0x2e($sp)
/* B2B1DC 800B403C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B2B1E0 800B4040 27BD0030 */  addiu $sp, $sp, 0x30
/* B2B1E4 800B4044 03E00008 */  jr    $ra
/* B2B1E8 800B4048 00000000 */   nop   

