glabel func_80029530
/* AA06D0 80029530 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AA06D4 80029534 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA06D8 80029538 AFA40028 */  sw    $a0, 0x28($sp)
/* AA06DC 8002953C 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA06E0 80029540 27A4001C */   addiu $a0, $sp, 0x1c
/* AA06E4 80029544 8FA40028 */  lw    $a0, 0x28($sp)
/* AA06E8 80029548 2405000B */  li    $a1, 11
/* AA06EC 8002954C 24060080 */  li    $a2, 128
/* AA06F0 80029550 0C009DE6 */  jal   func_80027798
/* AA06F4 80029554 27A7001C */   addiu $a3, $sp, 0x1c
/* AA06F8 80029558 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA06FC 8002955C 27BD0028 */  addiu $sp, $sp, 0x28
/* AA0700 80029560 03E00008 */  jr    $ra
/* AA0704 80029564 00000000 */   nop   

