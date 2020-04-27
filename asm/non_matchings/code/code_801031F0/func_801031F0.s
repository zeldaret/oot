glabel func_801031F0
/* B7A390 801031F0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B7A394 801031F4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B7A398 801031F8 0C0419E8 */  jal   __osSpSetPc
/* B7A39C 801031FC 00002025 */   move  $a0, $zero
/* B7A3A0 80103200 8FBF0014 */  lw    $ra, 0x14($sp)
/* B7A3A4 80103204 27BD0018 */  addiu $sp, $sp, 0x18
/* B7A3A8 80103208 03E00008 */  jr    $ra
/* B7A3AC 8010320C 00000000 */   nop   

