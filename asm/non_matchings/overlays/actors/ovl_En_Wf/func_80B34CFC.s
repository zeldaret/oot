glabel func_80B34CFC
/* 0104C 80B34CFC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01050 80B34D00 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 01054 80B34D04 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 01058 80B34D08 3C050601 */  lui     $a1, %hi(D_060098C8)                ## $a1 = 06010000
/* 0105C 80B34D0C 24A598C8 */  addiu   $a1, $a1, %lo(D_060098C8)           ## $a1 = 060098C8
/* 01060 80B34D10 AFA70018 */  sw      $a3, 0x0018($sp)
/* 01064 80B34D14 24840188 */  addiu   $a0, $a0, 0x0188           ## $a0 = 00000188
/* 01068 80B34D18 0C0294D3 */  jal     Animation_MorphToLoop
/* 0106C 80B34D1C 3C06C080 */  lui     $a2, 0xC080                ## $a2 = C0800000
/* 01070 80B34D20 8FA40018 */  lw      $a0, 0x0018($sp)
/* 01074 80B34D24 240E000A */  addiu   $t6, $zero, 0x000A         ## $t6 = 0000000A
/* 01078 80B34D28 3C0580B3 */  lui     $a1, %hi(func_80B34D48)    ## $a1 = 80B30000
/* 0107C 80B34D2C 24A54D48 */  addiu   $a1, $a1, %lo(func_80B34D48) ## $a1 = 80B34D48
/* 01080 80B34D30 0C2CCF2C */  jal     func_80B33CB0
/* 01084 80B34D34 AC8E02D4 */  sw      $t6, 0x02D4($a0)           ## 000002D4
/* 01088 80B34D38 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 0108C 80B34D3C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01090 80B34D40 03E00008 */  jr      $ra
/* 01094 80B34D44 00000000 */  nop
