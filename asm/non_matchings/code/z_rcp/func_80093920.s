.rdata
glabel D_8013EB38
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013EB44
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_80093920
/* B0AAC0 80093920 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0AAC4 80093924 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0AAC8 80093928 00802825 */  move  $a1, $a0
/* B0AACC 8009392C 3C068014 */  lui   $a2, %hi(D_8013EB38) # $a2, 0x8014
/* B0AAD0 80093930 24C6EB38 */  addiu $a2, %lo(D_8013EB38) # addiu $a2, $a2, -0x14c8
/* B0AAD4 80093934 AFA50038 */  sw    $a1, 0x38($sp)
/* B0AAD8 80093938 27A40024 */  addiu $a0, $sp, 0x24
/* B0AADC 8009393C 0C031AB1 */  jal   func_800C6AC4
/* B0AAE0 80093940 2407052D */   li    $a3, 1325
/* B0AAE4 80093944 8FA50038 */  lw    $a1, 0x38($sp)
/* B0AAE8 80093948 3C188012 */  lui   $t8, %hi(D_80126BE0) # $t8, 0x8012
/* B0AAEC 8009394C 27186BE0 */  addiu $t8, %lo(D_80126BE0) # addiu $t8, $t8, 0x6be0
/* B0AAF0 80093950 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0AAF4 80093954 3C0FDE00 */  lui   $t7, 0xde00
/* B0AAF8 80093958 3C068014 */  lui   $a2, %hi(D_8013EB44) # $a2, 0x8014
/* B0AAFC 8009395C 246E0008 */  addiu $t6, $v1, 8
/* B0AB00 80093960 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0AB04 80093964 24C6EB44 */  addiu $a2, %lo(D_8013EB44) # addiu $a2, $a2, -0x14bc
/* B0AB08 80093968 27A40024 */  addiu $a0, $sp, 0x24
/* B0AB0C 8009396C 24070531 */  li    $a3, 1329
/* B0AB10 80093970 AC780004 */  sw    $t8, 4($v1)
/* B0AB14 80093974 0C031AD5 */  jal   func_800C6B54
/* B0AB18 80093978 AC6F0000 */   sw    $t7, ($v1)
/* B0AB1C 8009397C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0AB20 80093980 27BD0038 */  addiu $sp, $sp, 0x38
/* B0AB24 80093984 03E00008 */  jr    $ra
/* B0AB28 80093988 00000000 */   nop   

