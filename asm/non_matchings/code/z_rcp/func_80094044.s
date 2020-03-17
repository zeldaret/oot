.rdata
glabel D_8013ECB8
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013ECC4
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_80094044
/* B0B1E4 80094044 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0B1E8 80094048 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0B1EC 8009404C 00802825 */  move  $a1, $a0
/* B0B1F0 80094050 3C068014 */  lui   $a2, %hi(D_8013ECB8) # $a2, 0x8014
/* B0B1F4 80094054 24C6ECB8 */  addiu $a2, %lo(D_8013ECB8) # addiu $a2, $a2, -0x1348
/* B0B1F8 80094058 AFA50038 */  sw    $a1, 0x38($sp)
/* B0B1FC 8009405C 27A40024 */  addiu $a0, $sp, 0x24
/* B0B200 80094060 0C031AB1 */  jal   func_800C6AC4
/* B0B204 80094064 24070641 */   li    $a3, 1601
/* B0B208 80094068 8FA50038 */  lw    $a1, 0x38($sp)
/* B0B20C 8009406C 3C188012 */  lui   $t8, %hi(D_80126AC0) # $t8, 0x8012
/* B0B210 80094070 27186AC0 */  addiu $t8, %lo(D_80126AC0) # addiu $t8, $t8, 0x6ac0
/* B0B214 80094074 8CA302D0 */  lw    $v1, 0x2d0($a1)
/* B0B218 80094078 3C0FDE00 */  lui   $t7, 0xde00
/* B0B21C 8009407C 3C068014 */  lui   $a2, %hi(D_8013ECC4) # $a2, 0x8014
/* B0B220 80094080 246E0008 */  addiu $t6, $v1, 8
/* B0B224 80094084 ACAE02D0 */  sw    $t6, 0x2d0($a1)
/* B0B228 80094088 24C6ECC4 */  addiu $a2, %lo(D_8013ECC4) # addiu $a2, $a2, -0x133c
/* B0B22C 8009408C 27A40024 */  addiu $a0, $sp, 0x24
/* B0B230 80094090 24070645 */  li    $a3, 1605
/* B0B234 80094094 AC780004 */  sw    $t8, 4($v1)
/* B0B238 80094098 0C031AD5 */  jal   func_800C6B54
/* B0B23C 8009409C AC6F0000 */   sw    $t7, ($v1)
/* B0B240 800940A0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0B244 800940A4 27BD0038 */  addiu $sp, $sp, 0x38
/* B0B248 800940A8 03E00008 */  jr    $ra
/* B0B24C 800940AC 00000000 */   nop   

