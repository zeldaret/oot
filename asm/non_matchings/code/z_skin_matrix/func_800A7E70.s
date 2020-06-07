.rdata
glabel D_80140810
    .asciz "Skin_Matrix_to_Mtx_new() 確保失敗:NULLを返して終了\n"
    # EUC-JP: 確保失敗:NULLを返して終了 | Secure failure: Return NULL and end
    .balign 4

.text
glabel func_800A7E70
/* B1F010 800A7E70 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B1F014 800A7E74 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1F018 800A7E78 AFA50024 */  sw    $a1, 0x24($sp)
/* B1F01C 800A7E7C 0C031A73 */  jal   Graph_Alloc
/* B1F020 800A7E80 24050040 */   li    $a1, 64
/* B1F024 800A7E84 14400006 */  bnez  $v0, .L800A7EA0
/* B1F028 800A7E88 00402825 */   move  $a1, $v0
/* B1F02C 800A7E8C 3C048014 */  lui   $a0, %hi(D_80140810) # $a0, 0x8014
/* B1F030 800A7E90 0C00084C */  jal   osSyncPrintf
/* B1F034 800A7E94 24840810 */   addiu $a0, %lo(D_80140810) # addiu $a0, $a0, 0x810
/* B1F038 800A7E98 10000005 */  b     .L800A7EB0
/* B1F03C 800A7E9C 00001025 */   move  $v0, $zero
.L800A7EA0:
/* B1F040 800A7EA0 8FA40024 */  lw    $a0, 0x24($sp)
/* B1F044 800A7EA4 0C029F18 */  jal   func_800A7C60
/* B1F048 800A7EA8 AFA5001C */   sw    $a1, 0x1c($sp)
/* B1F04C 800A7EAC 8FA2001C */  lw    $v0, 0x1c($sp)
.L800A7EB0:
/* B1F050 800A7EB0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1F054 800A7EB4 27BD0020 */  addiu $sp, $sp, 0x20
/* B1F058 800A7EB8 03E00008 */  jr    $ra
/* B1F05C 800A7EBC 00000000 */   nop   

