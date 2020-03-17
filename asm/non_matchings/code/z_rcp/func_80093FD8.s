.rdata
glabel D_8013ECA0
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013ECAC
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_80093FD8
/* B0B178 80093FD8 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0B17C 80093FDC AFBF0014 */  sw    $ra, 0x14($sp)
/* B0B180 80093FE0 00802825 */  move  $a1, $a0
/* B0B184 80093FE4 3C068014 */  lui   $a2, %hi(D_8013ECA0) # $a2, 0x8014
/* B0B188 80093FE8 24C6ECA0 */  addiu $a2, %lo(D_8013ECA0) # addiu $a2, $a2, -0x1360
/* B0B18C 80093FEC AFA50038 */  sw    $a1, 0x38($sp)
/* B0B190 80093FF0 27A40024 */  addiu $a0, $sp, 0x24
/* B0B194 80093FF4 0C031AB1 */  jal   func_800C6AC4
/* B0B198 80093FF8 24070631 */   li    $a3, 1585
/* B0B19C 80093FFC 8FA50038 */  lw    $a1, 0x38($sp)
/* B0B1A0 80094000 3C188012 */  lui   $t8, %hi(D_80126910) # $t8, 0x8012
/* B0B1A4 80094004 27186910 */  addiu $t8, %lo(D_80126910) # addiu $t8, $t8, 0x6910
/* B0B1A8 80094008 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0B1AC 8009400C 3C0FDE00 */  lui   $t7, 0xde00
/* B0B1B0 80094010 3C068014 */  lui   $a2, %hi(D_8013ECAC) # $a2, 0x8014
/* B0B1B4 80094014 246E0008 */  addiu $t6, $v1, 8
/* B0B1B8 80094018 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0B1BC 8009401C 24C6ECAC */  addiu $a2, %lo(D_8013ECAC) # addiu $a2, $a2, -0x1354
/* B0B1C0 80094020 27A40024 */  addiu $a0, $sp, 0x24
/* B0B1C4 80094024 24070635 */  li    $a3, 1589
/* B0B1C8 80094028 AC780004 */  sw    $t8, 4($v1)
/* B0B1CC 8009402C 0C031AD5 */  jal   func_800C6B54
/* B0B1D0 80094030 AC6F0000 */   sw    $t7, ($v1)
/* B0B1D4 80094034 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0B1D8 80094038 27BD0038 */  addiu $sp, $sp, 0x38
/* B0B1DC 8009403C 03E00008 */  jr    $ra
/* B0B1E0 80094040 00000000 */   nop   

