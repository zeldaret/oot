.rdata
glabel D_8013EE38
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013EE44
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_80094A14
/* B0BBB4 80094A14 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0BBB8 80094A18 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0BBBC 80094A1C 00802825 */  move  $a1, $a0
/* B0BBC0 80094A20 3C068014 */  lui   $a2, %hi(D_8013EE38) # $a2, 0x8014
/* B0BBC4 80094A24 24C6EE38 */  addiu $a2, %lo(D_8013EE38) # addiu $a2, $a2, -0x11c8
/* B0BBC8 80094A28 AFA50038 */  sw    $a1, 0x38($sp)
/* B0BBCC 80094A2C 27A40024 */  addiu $a0, $sp, 0x24
/* B0BBD0 80094A30 0C031AB1 */  jal   func_800C6AC4
/* B0BBD4 80094A34 240707AC */   li    $a3, 1964
/* B0BBD8 80094A38 8FA50038 */  lw    $a1, 0x38($sp)
/* B0BBDC 80094A3C 3C188012 */  lui   $t8, %hi(D_80126A60) # $t8, 0x8012
/* B0BBE0 80094A40 27186A60 */  addiu $t8, %lo(D_80126A60) # addiu $t8, $t8, 0x6a60
/* B0BBE4 80094A44 8CA302B0 */  lw    $v1, 0x2b0($a1)
/* B0BBE8 80094A48 3C0FDE00 */  lui   $t7, 0xde00
/* B0BBEC 80094A4C 3C068014 */  lui   $a2, %hi(D_8013EE44) # $a2, 0x8014
/* B0BBF0 80094A50 246E0008 */  addiu $t6, $v1, 8
/* B0BBF4 80094A54 ACAE02B0 */  sw    $t6, 0x2b0($a1)
/* B0BBF8 80094A58 24C6EE44 */  addiu $a2, %lo(D_8013EE44) # addiu $a2, $a2, -0x11bc
/* B0BBFC 80094A5C 27A40024 */  addiu $a0, $sp, 0x24
/* B0BC00 80094A60 240707B0 */  li    $a3, 1968
/* B0BC04 80094A64 AC780004 */  sw    $t8, 4($v1)
/* B0BC08 80094A68 0C031AD5 */  jal   func_800C6B54
/* B0BC0C 80094A6C AC6F0000 */   sw    $t7, ($v1)
/* B0BC10 80094A70 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0BC14 80094A74 27BD0038 */  addiu $sp, $sp, 0x38
/* B0BC18 80094A78 03E00008 */  jr    $ra
/* B0BC1C 80094A7C 00000000 */   nop   

