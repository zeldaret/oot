glabel func_80AD0D3C
/* 0189C 80AD0D3C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 018A0 80AD0D40 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 018A4 80AD0D44 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 018A8 80AD0D48 3C050600 */  lui     $a1, %hi(D_06000350)                ## $a1 = 06000000
/* 018AC 80AD0D4C 24A50350 */  addiu   $a1, $a1, %lo(D_06000350)           ## $a1 = 06000350
/* 018B0 80AD0D50 AFA60018 */  sw      $a2, 0x0018($sp)
/* 018B4 80AD0D54 0C02947A */  jal     Animation_PlayOnce
/* 018B8 80AD0D58 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 018BC 80AD0D5C 8FA40018 */  lw      $a0, 0x0018($sp)
/* 018C0 80AD0D60 240E000A */  addiu   $t6, $zero, 0x000A         ## $t6 = 0000000A
/* 018C4 80AD0D64 3C0580AD */  lui     $a1, %hi(func_80AD0D84)    ## $a1 = 80AD0000
/* 018C8 80AD0D68 24A50D84 */  addiu   $a1, $a1, %lo(func_80AD0D84) ## $a1 = 80AD0D84
/* 018CC 80AD0D6C 0C2B3D28 */  jal     func_80ACF4A0
/* 018D0 80AD0D70 AC8E02B0 */  sw      $t6, 0x02B0($a0)           ## 000002B0
/* 018D4 80AD0D74 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 018D8 80AD0D78 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 018DC 80AD0D7C 03E00008 */  jr      $ra
/* 018E0 80AD0D80 00000000 */  nop
