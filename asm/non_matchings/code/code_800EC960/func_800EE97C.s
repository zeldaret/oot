glabel func_800EE97C
/* B65B1C 800EE97C 27BDFF80 */  addiu $sp, $sp, -0x80
/* B65B20 800EE980 AFBF0014 */  sw    $ra, 0x14($sp)
/* B65B24 800EE984 3C048016 */  lui   $a0, %hi(gPadMgr) # $a0, 0x8016
/* B65B28 800EE988 248468C0 */  addiu $a0, %lo(gPadMgr) # addiu $a0, $a0, 0x68c0
/* B65B2C 800EE98C 27A50020 */  addiu $a1, $sp, 0x20
/* B65B30 800EE990 0C031F82 */  jal   PadMgr_RequestPadData
/* B65B34 800EE994 00003025 */   move  $a2, $zero
/* B65B38 800EE998 97AE0068 */  lhu   $t6, 0x68($sp)
/* B65B3C 800EE99C 3C038017 */  lui   $v1, %hi(D_8016BAB4) # $v1, 0x8017
/* B65B40 800EE9A0 3C018017 */  lui   $at, %hi(D_8016BAB0) # $at, 0x8017
/* B65B44 800EE9A4 2463BAB4 */  addiu $v1, %lo(D_8016BAB4) # addiu $v1, $v1, -0x454c
/* B65B48 800EE9A8 AC2EBAB0 */  sw    $t6, %lo(D_8016BAB0)($at)
/* B65B4C 800EE9AC 8C6F0000 */  lw    $t7, ($v1)
/* B65B50 800EE9B0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B65B54 800EE9B4 3C018017 */  lui   $at, %hi(D_8016BAB8) # $at, 0x8017
/* B65B58 800EE9B8 01CFC026 */  xor   $t8, $t6, $t7
/* B65B5C 800EE9BC 030EC824 */  and   $t9, $t8, $t6
/* B65B60 800EE9C0 AC39BAB8 */  sw    $t9, %lo(D_8016BAB8)($at)
/* B65B64 800EE9C4 27BD0080 */  addiu $sp, $sp, 0x80
/* B65B68 800EE9C8 03E00008 */  jr    $ra
/* B65B6C 800EE9CC AC6E0000 */   sw    $t6, ($v1)

