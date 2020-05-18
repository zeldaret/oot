glabel func_80029724
/* AA08C4 80029724 27BDFFB8 */  addiu $sp, $sp, -0x48
/* AA08C8 80029728 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA08CC 8002972C AFA40048 */  sw    $a0, 0x48($sp)
/* AA08D0 80029730 AFA60050 */  sw    $a2, 0x50($sp)
/* AA08D4 80029734 AFA70054 */  sw    $a3, 0x54($sp)
/* AA08D8 80029738 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA08DC 8002973C 27A40018 */   addiu $a0, $sp, 0x18
/* AA08E0 80029740 27A40024 */  addiu $a0, $sp, 0x24
/* AA08E4 80029744 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA08E8 80029748 8FA50050 */   lw    $a1, 0x50($sp)
/* AA08EC 8002974C 27A40030 */  addiu $a0, $sp, 0x30
/* AA08F0 80029750 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA08F4 80029754 8FA50054 */   lw    $a1, 0x54($sp)
/* AA08F8 80029758 8FAE0068 */  lw    $t6, 0x68($sp)
/* AA08FC 8002975C 87AF005A */  lh    $t7, 0x5a($sp)
/* AA0900 80029760 87B8005E */  lh    $t8, 0x5e($sp)
/* AA0904 80029764 87B90062 */  lh    $t9, 0x62($sp)
/* AA0908 80029768 87A80066 */  lh    $t0, 0x66($sp)
/* AA090C 8002976C 8FA40048 */  lw    $a0, 0x48($sp)
/* AA0910 80029770 2405000F */  li    $a1, 15
/* AA0914 80029774 24060080 */  li    $a2, 128
/* AA0918 80029778 27A70018 */  addiu $a3, $sp, 0x18
/* AA091C 8002977C AFAE003C */  sw    $t6, 0x3c($sp)
/* AA0920 80029780 A7AF0040 */  sh    $t7, 0x40($sp)
/* AA0924 80029784 A7B80042 */  sh    $t8, 0x42($sp)
/* AA0928 80029788 A7B90044 */  sh    $t9, 0x44($sp)
/* AA092C 8002978C 0C009DE6 */  jal   EffectSs_Spawn
/* AA0930 80029790 A7A80046 */   sh    $t0, 0x46($sp)
/* AA0934 80029794 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA0938 80029798 27BD0048 */  addiu $sp, $sp, 0x48
/* AA093C 8002979C 03E00008 */  jr    $ra
/* AA0940 800297A0 00000000 */   nop   

