.rdata
glabel D_8013EDA8
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013EDB4
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_800944C4
/* B0B664 800944C4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B0B668 800944C8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0B66C 800944CC AFA40030 */  sw    $a0, 0x30($sp)
/* B0B670 800944D0 3C068014 */  lui   $a2, %hi(D_8013EDA8) # $a2, 0x8014
/* B0B674 800944D4 24C6EDA8 */  addiu $a2, %lo(D_8013EDA8) # addiu $a2, $a2, -0x1258
/* B0B678 800944D8 8FA50030 */  lw    $a1, 0x30($sp)
/* B0B67C 800944DC 27A4001C */  addiu $a0, $sp, 0x1c
/* B0B680 800944E0 0C031AB1 */  jal   func_800C6AC4
/* B0B684 800944E4 24070707 */   li    $a3, 1799
/* B0B688 800944E8 8FAE0030 */  lw    $t6, 0x30($sp)
/* B0B68C 800944EC 0C025128 */  jal   func_800944A0
/* B0B690 800944F0 8DC402C0 */   lw    $a0, 0x2c0($t6)
/* B0B694 800944F4 8FA50030 */  lw    $a1, 0x30($sp)
/* B0B698 800944F8 3C068014 */  lui   $a2, %hi(D_8013EDB4) # $a2, 0x8014
/* B0B69C 800944FC 24C6EDB4 */  addiu $a2, %lo(D_8013EDB4) # addiu $a2, $a2, -0x124c
/* B0B6A0 80094500 27A4001C */  addiu $a0, $sp, 0x1c
/* B0B6A4 80094504 24070709 */  li    $a3, 1801
/* B0B6A8 80094508 0C031AD5 */  jal   func_800C6B54
/* B0B6AC 8009450C ACA202C0 */   sw    $v0, 0x2c0($a1)
/* B0B6B0 80094510 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0B6B4 80094514 27BD0030 */  addiu $sp, $sp, 0x30
/* B0B6B8 80094518 03E00008 */  jr    $ra
/* B0B6BC 8009451C 00000000 */   nop   

