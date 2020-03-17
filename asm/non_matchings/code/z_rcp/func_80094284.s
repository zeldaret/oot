.rdata
glabel D_8013ED30
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013ED3C
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_80094284
/* B0B424 80094284 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0B428 80094288 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0B42C 8009428C 00802825 */  move  $a1, $a0
/* B0B430 80094290 3C068014 */  lui   $a2, %hi(D_8013ED30) # $a2, 0x8014
/* B0B434 80094294 24C6ED30 */  addiu $a2, %lo(D_8013ED30) # addiu $a2, $a2, -0x12d0
/* B0B438 80094298 AFA50038 */  sw    $a1, 0x38($sp)
/* B0B43C 8009429C 27A40024 */  addiu $a0, $sp, 0x24
/* B0B440 800942A0 0C031AB1 */  jal   func_800C6AC4
/* B0B444 800942A4 24070691 */   li    $a3, 1681
/* B0B448 800942A8 8FA50038 */  lw    $a1, 0x38($sp)
/* B0B44C 800942AC 3C188012 */  lui   $t8, %hi(D_80126B20) # $t8, 0x8012
/* B0B450 800942B0 27186B20 */  addiu $t8, %lo(D_80126B20) # addiu $t8, $t8, 0x6b20
/* B0B454 800942B4 8CA302B0 */  lw    $v1, 0x2b0($a1)
/* B0B458 800942B8 3C0FDE00 */  lui   $t7, 0xde00
/* B0B45C 800942BC 3C068014 */  lui   $a2, %hi(D_8013ED3C) # $a2, 0x8014
/* B0B460 800942C0 246E0008 */  addiu $t6, $v1, 8
/* B0B464 800942C4 ACAE02B0 */  sw    $t6, 0x2b0($a1)
/* B0B468 800942C8 24C6ED3C */  addiu $a2, %lo(D_8013ED3C) # addiu $a2, $a2, -0x12c4
/* B0B46C 800942CC 27A40024 */  addiu $a0, $sp, 0x24
/* B0B470 800942D0 24070695 */  li    $a3, 1685
/* B0B474 800942D4 AC780004 */  sw    $t8, 4($v1)
/* B0B478 800942D8 0C031AD5 */  jal   func_800C6B54
/* B0B47C 800942DC AC6F0000 */   sw    $t7, ($v1)
/* B0B480 800942E0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0B484 800942E4 27BD0038 */  addiu $sp, $sp, 0x38
/* B0B488 800942E8 03E00008 */  jr    $ra
/* B0B48C 800942EC 00000000 */   nop   

