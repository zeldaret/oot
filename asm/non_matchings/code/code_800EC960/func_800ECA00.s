glabel func_800ECA00
/* B63BA0 800ECA00 3C0E8017 */  lui   $t6, %hi(D_8016BA0C) # $t6, 0x8017
/* B63BA4 800ECA04 8DCEBA0C */  lw    $t6, %lo(D_8016BA0C)($t6)
/* B63BA8 800ECA08 27BDFF80 */  addiu $sp, $sp, -0x80
/* B63BAC 800ECA0C AFBF0014 */  sw    $ra, 0x14($sp)
/* B63BB0 800ECA10 3C048016 */  lui   $a0, %hi(gPadMgr) # $a0, 0x8016
/* B63BB4 800ECA14 248468C0 */  addiu $a0, %lo(gPadMgr) # addiu $a0, $a0, 0x68c0
/* B63BB8 800ECA18 27A50020 */  addiu $a1, $sp, 0x20
/* B63BBC 800ECA1C 00003025 */  move  $a2, $zero
/* B63BC0 800ECA20 0C031F82 */  jal   PadMgr_RequestPadData
/* B63BC4 800ECA24 AFAE0018 */   sw    $t6, 0x18($sp)
/* B63BC8 800ECA28 97AF0020 */  lhu   $t7, 0x20($sp)
/* B63BCC 800ECA2C 8FB80018 */  lw    $t8, 0x18($sp)
/* B63BD0 800ECA30 3C018017 */  lui   $at, %hi(D_8016BA0C) # $at, 0x8017
/* B63BD4 800ECA34 AC2FBA0C */  sw    $t7, %lo(D_8016BA0C)($at)
/* B63BD8 800ECA38 8FBF0014 */  lw    $ra, 0x14($sp)
/* B63BDC 800ECA3C 3C018017 */  lui   $at, %hi(D_8016BA14) # $at, 0x8017
/* B63BE0 800ECA40 83B90034 */  lb    $t9, 0x34($sp)
/* B63BE4 800ECA44 83A80035 */  lb    $t0, 0x35($sp)
/* B63BE8 800ECA48 AC38BA14 */  sw    $t8, %lo(D_8016BA14)($at)
/* B63BEC 800ECA4C 3C018017 */  lui   $at, %hi(D_8016BA08) # $at, 0x8017
/* B63BF0 800ECA50 27BD0080 */  addiu $sp, $sp, 0x80
/* B63BF4 800ECA54 A039BA08 */  sb    $t9, %lo(D_8016BA08)($at)
/* B63BF8 800ECA58 03E00008 */  jr    $ra
/* B63BFC 800ECA5C A028BA09 */   sb    $t0, %lo(D_8016BA09)($at)

