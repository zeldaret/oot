.rdata
glabel D_8013ED48
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013ED54
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_800942F0
/* B0B490 800942F0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0B494 800942F4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0B498 800942F8 00802825 */  move  $a1, $a0
/* B0B49C 800942FC 3C068014 */  lui   $a2, %hi(D_8013ED48) # $a2, 0x8014
/* B0B4A0 80094300 24C6ED48 */  addiu $a2, %lo(D_8013ED48) # addiu $a2, $a2, -0x12b8
/* B0B4A4 80094304 AFA50038 */  sw    $a1, 0x38($sp)
/* B0B4A8 80094308 27A40024 */  addiu $a0, $sp, 0x24
/* B0B4AC 8009430C 0C031AB1 */  jal   func_800C6AC4
/* B0B4B0 80094310 240706A4 */   li    $a3, 1700
/* B0B4B4 80094314 8FA50038 */  lw    $a1, 0x38($sp)
/* B0B4B8 80094318 3C188012 */  lui   $t8, %hi(D_801269A0) # $t8, 0x8012
/* B0B4BC 8009431C 271869A0 */  addiu $t8, %lo(D_801269A0) # addiu $t8, $t8, 0x69a0
/* B0B4C0 80094320 8CA302D0 */  lw    $v1, 0x2d0($a1)
/* B0B4C4 80094324 3C0FDE00 */  lui   $t7, 0xde00
/* B0B4C8 80094328 3C068014 */  lui   $a2, %hi(D_8013ED54) # $a2, 0x8014
/* B0B4CC 8009432C 246E0008 */  addiu $t6, $v1, 8
/* B0B4D0 80094330 ACAE02D0 */  sw    $t6, 0x2d0($a1)
/* B0B4D4 80094334 24C6ED54 */  addiu $a2, %lo(D_8013ED54) # addiu $a2, $a2, -0x12ac
/* B0B4D8 80094338 27A40024 */  addiu $a0, $sp, 0x24
/* B0B4DC 8009433C 240706A8 */  li    $a3, 1704
/* B0B4E0 80094340 AC780004 */  sw    $t8, 4($v1)
/* B0B4E4 80094344 0C031AD5 */  jal   func_800C6B54
/* B0B4E8 80094348 AC6F0000 */   sw    $t7, ($v1)
/* B0B4EC 8009434C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0B4F0 80094350 27BD0038 */  addiu $sp, $sp, 0x38
/* B0B4F4 80094354 03E00008 */  jr    $ra
/* B0B4F8 80094358 00000000 */   nop   

