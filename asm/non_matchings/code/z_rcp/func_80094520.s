.rdata
glabel D_8013EDC0
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013EDCC
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_80094520
/* B0B6C0 80094520 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B0B6C4 80094524 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0B6C8 80094528 AFA40030 */  sw    $a0, 0x30($sp)
/* B0B6CC 8009452C 3C068014 */  lui   $a2, %hi(D_8013EDC0) # $a2, 0x8014
/* B0B6D0 80094530 24C6EDC0 */  addiu $a2, %lo(D_8013EDC0) # addiu $a2, $a2, -0x1240
/* B0B6D4 80094534 8FA50030 */  lw    $a1, 0x30($sp)
/* B0B6D8 80094538 27A4001C */  addiu $a0, $sp, 0x1c
/* B0B6DC 8009453C 0C031AB1 */  jal   func_800C6AC4
/* B0B6E0 80094540 24070711 */   li    $a3, 1809
/* B0B6E4 80094544 8FAE0030 */  lw    $t6, 0x30($sp)
/* B0B6E8 80094548 0C025128 */  jal   func_800944A0
/* B0B6EC 8009454C 8DC402B0 */   lw    $a0, 0x2b0($t6)
/* B0B6F0 80094550 8FA50030 */  lw    $a1, 0x30($sp)
/* B0B6F4 80094554 3C068014 */  lui   $a2, %hi(D_8013EDCC) # $a2, 0x8014
/* B0B6F8 80094558 24C6EDCC */  addiu $a2, %lo(D_8013EDCC) # addiu $a2, $a2, -0x1234
/* B0B6FC 8009455C 27A4001C */  addiu $a0, $sp, 0x1c
/* B0B700 80094560 24070713 */  li    $a3, 1811
/* B0B704 80094564 0C031AD5 */  jal   func_800C6B54
/* B0B708 80094568 ACA202B0 */   sw    $v0, 0x2b0($a1)
/* B0B70C 8009456C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0B710 80094570 27BD0030 */  addiu $sp, $sp, 0x30
/* B0B714 80094574 03E00008 */  jr    $ra
/* B0B718 80094578 00000000 */   nop   

