glabel func_8007C3F4
/* AF3594 8007C3F4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AF3598 8007C3F8 AFBF0014 */  sw    $ra, 0x14($sp)
/* AF359C 8007C3FC AFA40020 */  sw    $a0, 0x20($sp)
/* AF35A0 8007C400 0C01F0A7 */  jal   func_8007C29C
/* AF35A4 8007C404 27A40018 */   addiu $a0, $sp, 0x18
/* AF35A8 8007C408 87AE001C */  lh    $t6, 0x1c($sp)
/* AF35AC 8007C40C 240F3FFF */  li    $t7, 16383
/* AF35B0 8007C410 27B90018 */  addiu $t9, $sp, 0x18
/* AF35B4 8007C414 01EEC023 */  subu  $t8, $t7, $t6
/* AF35B8 8007C418 A7B8001C */  sh    $t8, 0x1c($sp)
/* AF35BC 8007C41C 8FA20020 */  lw    $v0, 0x20($sp)
/* AF35C0 8007C420 8F290000 */  lw    $t1, ($t9)
/* AF35C4 8007C424 AC490000 */  sw    $t1, ($v0)
/* AF35C8 8007C428 8F280004 */  lw    $t0, 4($t9)
/* AF35CC 8007C42C AC480004 */  sw    $t0, 4($v0)
/* AF35D0 8007C430 8FBF0014 */  lw    $ra, 0x14($sp)
/* AF35D4 8007C434 27BD0020 */  addiu $sp, $sp, 0x20
/* AF35D8 8007C438 03E00008 */  jr    $ra
/* AF35DC 8007C43C 00000000 */   nop   
