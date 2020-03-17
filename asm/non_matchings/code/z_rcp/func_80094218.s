.rdata
glabel D_8013ED18
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013ED24
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_80094218
/* B0B3B8 80094218 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0B3BC 8009421C AFBF0014 */  sw    $ra, 0x14($sp)
/* B0B3C0 80094220 00802825 */  move  $a1, $a0
/* B0B3C4 80094224 3C068014 */  lui   $a2, %hi(D_8013ED18) # $a2, 0x8014
/* B0B3C8 80094228 24C6ED18 */  addiu $a2, %lo(D_8013ED18) # addiu $a2, $a2, -0x12e8
/* B0B3CC 8009422C AFA50038 */  sw    $a1, 0x38($sp)
/* B0B3D0 80094230 27A40024 */  addiu $a0, $sp, 0x24
/* B0B3D4 80094234 0C031AB1 */  jal   func_800C6AC4
/* B0B3D8 80094238 24070686 */   li    $a3, 1670
/* B0B3DC 8009423C 8FA50038 */  lw    $a1, 0x38($sp)
/* B0B3E0 80094240 3C188012 */  lui   $t8, %hi(D_80126AF0) # $t8, 0x8012
/* B0B3E4 80094244 27186AF0 */  addiu $t8, %lo(D_80126AF0) # addiu $t8, $t8, 0x6af0
/* B0B3E8 80094248 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0B3EC 8009424C 3C0FDE00 */  lui   $t7, 0xde00
/* B0B3F0 80094250 3C068014 */  lui   $a2, %hi(D_8013ED24) # $a2, 0x8014
/* B0B3F4 80094254 246E0008 */  addiu $t6, $v1, 8
/* B0B3F8 80094258 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0B3FC 8009425C 24C6ED24 */  addiu $a2, %lo(D_8013ED24) # addiu $a2, $a2, -0x12dc
/* B0B400 80094260 27A40024 */  addiu $a0, $sp, 0x24
/* B0B404 80094264 2407068A */  li    $a3, 1674
/* B0B408 80094268 AC780004 */  sw    $t8, 4($v1)
/* B0B40C 8009426C 0C031AD5 */  jal   func_800C6B54
/* B0B410 80094270 AC6F0000 */   sw    $t7, ($v1)
/* B0B414 80094274 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0B418 80094278 27BD0038 */  addiu $sp, $sp, 0x38
/* B0B41C 8009427C 03E00008 */  jr    $ra
/* B0B420 80094280 00000000 */   nop   

