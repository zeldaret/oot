glabel func_80029444
/* AA05E4 80029444 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AA05E8 80029448 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA05EC 8002944C AFA40030 */  sw    $a0, 0x30($sp)
/* AA05F0 80029450 AFA60038 */  sw    $a2, 0x38($sp)
/* AA05F4 80029454 AFA7003C */  sw    $a3, 0x3c($sp)
/* AA05F8 80029458 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA05FC 8002945C 27A4001C */   addiu $a0, $sp, 0x1c
/* AA0600 80029460 87AE003A */  lh    $t6, 0x3a($sp)
/* AA0604 80029464 87AF003E */  lh    $t7, 0x3e($sp)
/* AA0608 80029468 87B80042 */  lh    $t8, 0x42($sp)
/* AA060C 8002946C 8FA40030 */  lw    $a0, 0x30($sp)
/* AA0610 80029470 24050009 */  li    $a1, 9
/* AA0614 80029474 24060080 */  li    $a2, 128
/* AA0618 80029478 27A7001C */  addiu $a3, $sp, 0x1c
/* AA061C 8002947C A7AE0028 */  sh    $t6, 0x28($sp)
/* AA0620 80029480 A7AF002A */  sh    $t7, 0x2a($sp)
/* AA0624 80029484 0C009DE6 */  jal   func_80027798
/* AA0628 80029488 A7B8002C */   sh    $t8, 0x2c($sp)
/* AA062C 8002948C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA0630 80029490 27BD0030 */  addiu $sp, $sp, 0x30
/* AA0634 80029494 03E00008 */  jr    $ra
/* AA0638 80029498 00000000 */   nop   

