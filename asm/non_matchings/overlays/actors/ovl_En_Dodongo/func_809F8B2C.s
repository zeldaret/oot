glabel func_809F8B2C
/* 008DC 809F8B2C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 008E0 809F8B30 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 008E4 809F8B34 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 008E8 809F8B38 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 008EC 809F8B3C 24A53088 */  addiu   $a1, $a1, 0x3088           ## $a1 = 06003088
/* 008F0 809F8B40 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 008F4 809F8B44 0C02947A */  jal     SkelAnimeChangeAnimationDefaultStop              
/* 008F8 809F8B48 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 008FC 809F8B4C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00900 809F8B50 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00904 809F8B54 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 00908 809F8B58 3C0580A0 */  lui     $a1, %hi(func_809F8D0C)    ## $a1 = 80A00000
/* 0090C 809F8B5C 24A58D0C */  addiu   $a1, $a1, %lo(func_809F8D0C) ## $a1 = 809F8D0C
/* 00910 809F8B60 AC8E0304 */  sw      $t6, 0x0304($a0)           ## 00000304
/* 00914 809F8B64 0C27E094 */  jal     func_809F8250              
/* 00918 809F8B68 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 0091C 809F8B6C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00920 809F8B70 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00924 809F8B74 03E00008 */  jr      $ra                        
/* 00928 809F8B78 00000000 */  nop


