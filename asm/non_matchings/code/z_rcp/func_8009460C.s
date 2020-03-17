.rdata
glabel D_8013EDF0
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013EDFC
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_8009460C
/* B0B7AC 8009460C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0B7B0 80094610 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0B7B4 80094614 00802825 */  move  $a1, $a0
/* B0B7B8 80094618 3C068014 */  lui   $a2, %hi(D_8013EDF0) # $a2, 0x8014
/* B0B7BC 8009461C 24C6EDF0 */  addiu $a2, %lo(D_8013EDF0) # addiu $a2, $a2, -0x1210
/* B0B7C0 80094620 AFA50038 */  sw    $a1, 0x38($sp)
/* B0B7C4 80094624 27A40024 */  addiu $a0, $sp, 0x24
/* B0B7C8 80094628 0C031AB1 */  jal   func_800C6AC4
/* B0B7CC 8009462C 2407073D */   li    $a3, 1853
/* B0B7D0 80094630 8FA50038 */  lw    $a1, 0x38($sp)
/* B0B7D4 80094634 3C188012 */  lui   $t8, %hi(D_80126A30) # $t8, 0x8012
/* B0B7D8 80094638 27186A30 */  addiu $t8, %lo(D_80126A30) # addiu $t8, $t8, 0x6a30
/* B0B7DC 8009463C 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0B7E0 80094640 3C0FDE00 */  lui   $t7, 0xde00
/* B0B7E4 80094644 3C068014 */  lui   $a2, %hi(D_8013EDFC) # $a2, 0x8014
/* B0B7E8 80094648 246E0008 */  addiu $t6, $v1, 8
/* B0B7EC 8009464C ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0B7F0 80094650 24C6EDFC */  addiu $a2, %lo(D_8013EDFC) # addiu $a2, $a2, -0x1204
/* B0B7F4 80094654 27A40024 */  addiu $a0, $sp, 0x24
/* B0B7F8 80094658 24070741 */  li    $a3, 1857
/* B0B7FC 8009465C AC780004 */  sw    $t8, 4($v1)
/* B0B800 80094660 0C031AD5 */  jal   func_800C6B54
/* B0B804 80094664 AC6F0000 */   sw    $t7, ($v1)
/* B0B808 80094668 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0B80C 8009466C 27BD0038 */  addiu $sp, $sp, 0x38
/* B0B810 80094670 03E00008 */  jr    $ra
/* B0B814 80094674 00000000 */   nop   

