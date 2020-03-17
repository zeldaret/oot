.rdata
glabel D_8013EB68
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013EB74
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_800939F8
/* B0AB98 800939F8 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0AB9C 800939FC AFBF0014 */  sw    $ra, 0x14($sp)
/* B0ABA0 80093A00 00802825 */  move  $a1, $a0
/* B0ABA4 80093A04 3C068014 */  lui   $a2, %hi(D_8013EB68) # $a2, 0x8014
/* B0ABA8 80093A08 24C6EB68 */  addiu $a2, %lo(D_8013EB68) # addiu $a2, $a2, -0x1498
/* B0ABAC 80093A0C AFA50038 */  sw    $a1, 0x38($sp)
/* B0ABB0 80093A10 27A40024 */  addiu $a0, $sp, 0x24
/* B0ABB4 80093A14 0C031AB1 */  jal   func_800C6AC4
/* B0ABB8 80093A18 2407054D */   li    $a3, 1357
/* B0ABBC 80093A1C 8FA50038 */  lw    $a1, 0x38($sp)
/* B0ABC0 80093A20 3C188012 */  lui   $t8, %hi(D_80126C40) # $t8, 0x8012
/* B0ABC4 80093A24 27186C40 */  addiu $t8, %lo(D_80126C40) # addiu $t8, $t8, 0x6c40
/* B0ABC8 80093A28 8CA302D0 */  lw    $v1, 0x2d0($a1)
/* B0ABCC 80093A2C 3C0FDE00 */  lui   $t7, 0xde00
/* B0ABD0 80093A30 3C068014 */  lui   $a2, %hi(D_8013EB74) # $a2, 0x8014
/* B0ABD4 80093A34 246E0008 */  addiu $t6, $v1, 8
/* B0ABD8 80093A38 ACAE02D0 */  sw    $t6, 0x2d0($a1)
/* B0ABDC 80093A3C 24C6EB74 */  addiu $a2, %lo(D_8013EB74) # addiu $a2, $a2, -0x148c
/* B0ABE0 80093A40 27A40024 */  addiu $a0, $sp, 0x24
/* B0ABE4 80093A44 24070551 */  li    $a3, 1361
/* B0ABE8 80093A48 AC780004 */  sw    $t8, 4($v1)
/* B0ABEC 80093A4C 0C031AD5 */  jal   func_800C6B54
/* B0ABF0 80093A50 AC6F0000 */   sw    $t7, ($v1)
/* B0ABF4 80093A54 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0ABF8 80093A58 27BD0038 */  addiu $sp, $sp, 0x38
/* B0ABFC 80093A5C 03E00008 */  jr    $ra
/* B0AC00 80093A60 00000000 */   nop   

