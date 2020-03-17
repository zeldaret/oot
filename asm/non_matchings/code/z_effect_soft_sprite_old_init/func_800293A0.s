glabel func_800293A0
/* AA0540 800293A0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AA0544 800293A4 87B80042 */  lh    $t8, 0x42($sp)
/* AA0548 800293A8 87B90046 */  lh    $t9, 0x46($sp)
/* AA054C 800293AC AFBF002C */  sw    $ra, 0x2c($sp)
/* AA0550 800293B0 240E0064 */  li    $t6, 100
/* AA0554 800293B4 240F0023 */  li    $t7, 35
/* AA0558 800293B8 24080008 */  li    $t0, 8
/* AA055C 800293BC AFA80020 */  sw    $t0, 0x20($sp)
/* AA0560 800293C0 AFAF0014 */  sw    $t7, 0x14($sp)
/* AA0564 800293C4 AFAE0010 */  sw    $t6, 0x10($sp)
/* AA0568 800293C8 AFB80018 */  sw    $t8, 0x18($sp)
/* AA056C 800293CC 0C00A4C8 */  jal   func_80029320
/* AA0570 800293D0 AFB9001C */   sw    $t9, 0x1c($sp)
/* AA0574 800293D4 8FBF002C */  lw    $ra, 0x2c($sp)
/* AA0578 800293D8 27BD0030 */  addiu $sp, $sp, 0x30
/* AA057C 800293DC 03E00008 */  jr    $ra
/* AA0580 800293E0 00000000 */   nop   

