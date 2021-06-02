.rdata
glabel D_801435DC
    .asciz "\n@@@%d,%d,%d,%d,"
    .balign 4

.text
glabel func_800B4A68
/* B2BC08 800B4A68 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B2BC0C 800B4A6C AFBF001C */  sw    $ra, 0x1c($sp)
/* B2BC10 800B4A70 27A20024 */  addiu $v0, $sp, 0x24
/* B2BC14 800B4A74 E7AC0024 */  swc1  $f12, 0x24($sp)
/* B2BC18 800B4A78 904E0003 */  lbu   $t6, 3($v0)
/* B2BC1C 800B4A7C 90470002 */  lbu   $a3, 2($v0)
/* B2BC20 800B4A80 90460001 */  lbu   $a2, 1($v0)
/* B2BC24 800B4A84 90450000 */  lbu   $a1, ($v0)
/* B2BC28 800B4A88 3C048014 */  lui   $a0, %hi(D_801435DC) # $a0, 0x8014
/* B2BC2C 800B4A8C 248435DC */  addiu $a0, %lo(D_801435DC) # addiu $a0, $a0, 0x35dc
/* B2BC30 800B4A90 0C00084C */  jal   osSyncPrintf
/* B2BC34 800B4A94 AFAE0010 */   sw    $t6, 0x10($sp)
/* B2BC38 800B4A98 8FBF001C */  lw    $ra, 0x1c($sp)
/* B2BC3C 800B4A9C 27BD0028 */  addiu $sp, $sp, 0x28
/* B2BC40 800B4AA0 03E00008 */  jr    $ra
/* B2BC44 800B4AA4 00000000 */   nop   

