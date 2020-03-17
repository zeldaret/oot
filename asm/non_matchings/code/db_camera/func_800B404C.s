glabel func_800B404C
/* B2B1EC 800B404C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B2B1F0 800B4050 AFA40028 */  sw    $a0, 0x28($sp)
/* B2B1F4 800B4054 AFBF0014 */  sw    $ra, 0x14($sp)
/* B2B1F8 800B4058 00A02025 */  move  $a0, $a1
/* B2B1FC 800B405C AFA60030 */  sw    $a2, 0x30($sp)
/* B2B200 800B4060 0C02CFAF */  jal   func_800B3EBC
/* B2B204 800B4064 27A5001C */   addiu $a1, $sp, 0x1c
/* B2B208 800B4068 8FA40028 */  lw    $a0, 0x28($sp)
/* B2B20C 800B406C 27A5001C */  addiu $a1, $sp, 0x1c
/* B2B210 800B4070 0C02CFFD */  jal   func_800B3FF4
/* B2B214 800B4074 8FA60030 */   lw    $a2, 0x30($sp)
/* B2B218 800B4078 8FBF0014 */  lw    $ra, 0x14($sp)
/* B2B21C 800B407C 27BD0028 */  addiu $sp, $sp, 0x28
/* B2B220 800B4080 03E00008 */  jr    $ra
/* B2B224 800B4084 00000000 */   nop   

