glabel func_80ACFEB0
/* 00A10 80ACFEB0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00A14 80ACFEB4 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00A18 80ACFEB8 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00A1C 80ACFEBC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00A20 80ACFEC0 24A505C4 */  addiu   $a1, $a1, 0x05C4           ## $a1 = 060005C4
/* 00A24 80ACFEC4 AFA60018 */  sw      $a2, 0x0018($sp)
/* 00A28 80ACFEC8 0C0294BE */  jal     SkelAnime_ChangeAnimDefaultRepeat
/* 00A2C 80ACFECC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00A30 80ACFED0 8FA40018 */  lw      $a0, 0x0018($sp)
/* 00A34 80ACFED4 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 00A38 80ACFED8 3C0580AD */  lui     $a1, %hi(func_80ACFEF8)    ## $a1 = 80AD0000
/* 00A3C 80ACFEDC 24A5FEF8 */  addiu   $a1, $a1, %lo(func_80ACFEF8) ## $a1 = 80ACFEF8
/* 00A40 80ACFEE0 0C2B3D28 */  jal     func_80ACF4A0
/* 00A44 80ACFEE4 AC8E02B0 */  sw      $t6, 0x02B0($a0)           ## 000002B0
/* 00A48 80ACFEE8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00A4C 80ACFEEC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00A50 80ACFEF0 03E00008 */  jr      $ra
/* 00A54 80ACFEF4 00000000 */  nop
