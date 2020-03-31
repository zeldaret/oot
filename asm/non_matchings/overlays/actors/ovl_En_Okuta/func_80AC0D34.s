glabel func_80AC0D34
/* 006D4 80AC0D34 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 006D8 80AC0D38 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 006DC 80AC0D3C 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 006E0 80AC0D40 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 006E4 80AC0D44 24A508FC */  addiu   $a1, $a1, 0x08FC           ## $a1 = 060008FC
/* 006E8 80AC0D48 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 006EC 80AC0D4C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 006F0 80AC0D50 0C029490 */  jal     SkelAnime_ChangeAnimationTransitionStop              
/* 006F4 80AC0D54 3C06C040 */  lui     $a2, 0xC040                ## $a2 = C0400000
/* 006F8 80AC0D58 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 006FC 80AC0D5C 3C0E80AC */  lui     $t6, %hi(func_80AC14A8)    ## $t6 = 80AC0000
/* 00700 80AC0D60 25CE14A8 */  addiu   $t6, $t6, %lo(func_80AC14A8) ## $t6 = 80AC14A8
/* 00704 80AC0D64 A4E00194 */  sh      $zero, 0x0194($a3)         ## 00000194
/* 00708 80AC0D68 ACEE0190 */  sw      $t6, 0x0190($a3)           ## 00000190
/* 0070C 80AC0D6C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00710 80AC0D70 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00714 80AC0D74 03E00008 */  jr      $ra                        
/* 00718 80AC0D78 00000000 */  nop


