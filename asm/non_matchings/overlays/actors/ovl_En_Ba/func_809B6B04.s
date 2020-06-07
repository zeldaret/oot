glabel func_809B6B04
/* 007B4 809B6B04 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 007B8 809B6B08 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 007BC 809B6B0C 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 007C0 809B6B10 44812000 */  mtc1    $at, $f4                   ## $f4 = 20.00
/* 007C4 809B6B14 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 007C8 809B6B18 240F0014 */  addiu   $t7, $zero, 0x0014         ## $t7 = 00000014
/* 007CC 809B6B1C 241805DC */  addiu   $t8, $zero, 0x05DC         ## $t8 = 000005DC
/* 007D0 809B6B20 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 007D4 809B6B24 3C05809B */  lui     $a1, %hi(func_809B6B58)    ## $a1 = 809B0000
/* 007D8 809B6B28 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 007DC 809B6B2C A48F0318 */  sh      $t7, 0x0318($a0)           ## 00000318
/* 007E0 809B6B30 A480031A */  sh      $zero, 0x031A($a0)         ## 0000031A
/* 007E4 809B6B34 A498031C */  sh      $t8, 0x031C($a0)           ## 0000031C
/* 007E8 809B6B38 A09900AE */  sb      $t9, 0x00AE($a0)           ## 000000AE
/* 007EC 809B6B3C 24A56B58 */  addiu   $a1, $a1, %lo(func_809B6B58) ## $a1 = 809B6B58
/* 007F0 809B6B40 0C26D8D4 */  jal     func_809B6350              
/* 007F4 809B6B44 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 007F8 809B6B48 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 007FC 809B6B4C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00800 809B6B50 03E00008 */  jr      $ra                        
/* 00804 809B6B54 00000000 */  nop
