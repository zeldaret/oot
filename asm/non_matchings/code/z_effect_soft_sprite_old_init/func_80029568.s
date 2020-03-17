glabel func_80029568
/* AA0708 80029568 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AA070C 8002956C AFBF0014 */  sw    $ra, 0x14($sp)
/* AA0710 80029570 AFA40028 */  sw    $a0, 0x28($sp)
/* AA0714 80029574 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0718 80029578 27A4001C */   addiu $a0, $sp, 0x1c
/* AA071C 8002957C 8FA40028 */  lw    $a0, 0x28($sp)
/* AA0720 80029580 2405000C */  li    $a1, 12
/* AA0724 80029584 24060080 */  li    $a2, 128
/* AA0728 80029588 0C009DE6 */  jal   func_80027798
/* AA072C 8002958C 27A7001C */   addiu $a3, $sp, 0x1c
/* AA0730 80029590 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA0734 80029594 27BD0028 */  addiu $sp, $sp, 0x28
/* AA0738 80029598 03E00008 */  jr    $ra
/* AA073C 8002959C 00000000 */   nop   

