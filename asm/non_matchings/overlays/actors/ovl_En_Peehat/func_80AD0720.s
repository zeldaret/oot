glabel func_80AD0720
/* 01280 80AD0720 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01284 80AD0724 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 01288 80AD0728 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 0128C 80AD072C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01290 80AD0730 24A505C4 */  addiu   $a1, $a1, 0x05C4           ## $a1 = 060005C4
/* 01294 80AD0734 AFA60018 */  sw      $a2, 0x0018($sp)
/* 01298 80AD0738 0C0294BE */  jal     SkelAnime_ChangeAnimDefaultRepeat
/* 0129C 80AD073C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 012A0 80AD0740 8FA40018 */  lw      $a0, 0x0018($sp)
/* 012A4 80AD0744 240E000E */  addiu   $t6, $zero, 0x000E         ## $t6 = 0000000E
/* 012A8 80AD0748 3C0580AD */  lui     $a1, %hi(func_80AD076C)    ## $a1 = 80AD0000
/* 012AC 80AD074C 24A5076C */  addiu   $a1, $a1, %lo(func_80AD076C) ## $a1 = 80AD076C
/* 012B0 80AD0750 AC8E02B0 */  sw      $t6, 0x02B0($a0)           ## 000002B0
/* 012B4 80AD0754 0C2B3D28 */  jal     func_80ACF4A0
/* 012B8 80AD0758 AC8002D4 */  sw      $zero, 0x02D4($a0)         ## 000002D4
/* 012BC 80AD075C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 012C0 80AD0760 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 012C4 80AD0764 03E00008 */  jr      $ra
/* 012C8 80AD0768 00000000 */  nop
