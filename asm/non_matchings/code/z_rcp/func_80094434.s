.rdata
glabel D_8013ED90
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013ED9C
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_80094434
/* B0B5D4 80094434 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0B5D8 80094438 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0B5DC 8009443C 00802825 */  move  $a1, $a0
/* B0B5E0 80094440 3C068014 */  lui   $a2, %hi(D_8013ED90) # $a2, 0x8014
/* B0B5E4 80094444 24C6ED90 */  addiu $a2, %lo(D_8013ED90) # addiu $a2, $a2, -0x1270
/* B0B5E8 80094448 AFA50038 */  sw    $a1, 0x38($sp)
/* B0B5EC 8009444C 27A40024 */  addiu $a0, $sp, 0x24
/* B0B5F0 80094450 0C031AB1 */  jal   func_800C6AC4
/* B0B5F4 80094454 240706EF */   li    $a3, 1775
/* B0B5F8 80094458 8FA50038 */  lw    $a1, 0x38($sp)
/* B0B5FC 8009445C 3C188012 */  lui   $t8, %hi(D_801262E0) # $t8, 0x8012
/* B0B600 80094460 271862E0 */  addiu $t8, %lo(D_801262E0) # addiu $t8, $t8, 0x62e0
/* B0B604 80094464 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0B608 80094468 3C0FDE00 */  lui   $t7, 0xde00
/* B0B60C 8009446C 3C068014 */  lui   $a2, %hi(D_8013ED9C) # $a2, 0x8014
/* B0B610 80094470 246E0008 */  addiu $t6, $v1, 8
/* B0B614 80094474 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0B618 80094478 24C6ED9C */  addiu $a2, %lo(D_8013ED9C) # addiu $a2, $a2, -0x1264
/* B0B61C 8009447C 27A40024 */  addiu $a0, $sp, 0x24
/* B0B620 80094480 240706F3 */  li    $a3, 1779
/* B0B624 80094484 AC780004 */  sw    $t8, 4($v1)
/* B0B628 80094488 0C031AD5 */  jal   func_800C6B54
/* B0B62C 8009448C AC6F0000 */   sw    $t7, ($v1)
/* B0B630 80094490 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0B634 80094494 27BD0038 */  addiu $sp, $sp, 0x38
/* B0B638 80094498 03E00008 */  jr    $ra
/* B0B63C 8009449C 00000000 */   nop   

