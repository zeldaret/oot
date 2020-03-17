.rdata
glabel D_8013EE08
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013EE14
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_80094678
/* B0B818 80094678 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0B81C 8009467C AFBF0014 */  sw    $ra, 0x14($sp)
/* B0B820 80094680 00802825 */  move  $a1, $a0
/* B0B824 80094684 3C068014 */  lui   $a2, %hi(D_8013EE08) # $a2, 0x8014
/* B0B828 80094688 24C6EE08 */  addiu $a2, %lo(D_8013EE08) # addiu $a2, $a2, -0x11f8
/* B0B82C 8009468C AFA50038 */  sw    $a1, 0x38($sp)
/* B0B830 80094690 27A40024 */  addiu $a0, $sp, 0x24
/* B0B834 80094694 0C031AB1 */  jal   func_800C6AC4
/* B0B838 80094698 2407074D */   li    $a3, 1869
/* B0B83C 8009469C 8FA50038 */  lw    $a1, 0x38($sp)
/* B0B840 800946A0 3C188012 */  lui   $t8, %hi(D_80126B50) # $t8, 0x8012
/* B0B844 800946A4 27186B50 */  addiu $t8, %lo(D_80126B50) # addiu $t8, $t8, 0x6b50
/* B0B848 800946A8 8CA302D0 */  lw    $v1, 0x2d0($a1)
/* B0B84C 800946AC 3C0FDE00 */  lui   $t7, 0xde00
/* B0B850 800946B0 3C068014 */  lui   $a2, %hi(D_8013EE14) # $a2, 0x8014
/* B0B854 800946B4 246E0008 */  addiu $t6, $v1, 8
/* B0B858 800946B8 ACAE02D0 */  sw    $t6, 0x2d0($a1)
/* B0B85C 800946BC 24C6EE14 */  addiu $a2, %lo(D_8013EE14) # addiu $a2, $a2, -0x11ec
/* B0B860 800946C0 27A40024 */  addiu $a0, $sp, 0x24
/* B0B864 800946C4 24070751 */  li    $a3, 1873
/* B0B868 800946C8 AC780004 */  sw    $t8, 4($v1)
/* B0B86C 800946CC 0C031AD5 */  jal   func_800C6B54
/* B0B870 800946D0 AC6F0000 */   sw    $t7, ($v1)
/* B0B874 800946D4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0B878 800946D8 27BD0038 */  addiu $sp, $sp, 0x38
/* B0B87C 800946DC 03E00008 */  jr    $ra
/* B0B880 800946E0 00000000 */   nop   

