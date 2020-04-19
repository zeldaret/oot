glabel func_8010328C
/* B7A42C 8010328C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B7A430 80103290 AFBF0014 */  sw    $ra, 0x14($sp)
/* B7A434 80103294 00802825 */  move  $a1, $a0
/* B7A438 80103298 0C04035B */  jal   __osContGetInitData
/* B7A43C 8010329C 27A4001F */   addiu $a0, $sp, 0x1f
/* B7A440 801032A0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B7A444 801032A4 27BD0020 */  addiu $sp, $sp, 0x20
/* B7A448 801032A8 03E00008 */  jr    $ra
/* B7A44C 801032AC 00000000 */   nop   

