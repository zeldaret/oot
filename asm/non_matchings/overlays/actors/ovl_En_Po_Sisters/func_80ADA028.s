glabel func_80ADA028
/* 01098 80ADA028 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0109C 80ADA02C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 010A0 80ADA030 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 010A4 80ADA034 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 010A8 80ADA038 24A514CC */  addiu   $a1, $a1, 0x14CC           ## $a1 = 060014CC
/* 010AC 80ADA03C AFA70018 */  sw      $a3, 0x0018($sp)
/* 010B0 80ADA040 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 010B4 80ADA044 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 010B8 80ADA048 3C06C040 */  lui     $a2, 0xC040                ## $a2 = C0400000
/* 010BC 80ADA04C 8FA70018 */  lw      $a3, 0x0018($sp)
/* 010C0 80ADA050 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 010C4 80ADA054 3C0980AE */  lui     $t1, %hi(func_80ADBBF4)    ## $t1 = 80AE0000
/* 010C8 80ADA058 90EF0199 */  lbu     $t7, 0x0199($a3)           ## 00000199
/* 010CC 80ADA05C 8CF90004 */  lw      $t9, 0x0004($a3)           ## 00000004
/* 010D0 80ADA060 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 010D4 80ADA064 2529BBF4 */  addiu   $t1, $t1, %lo(func_80ADBBF4) ## $t1 = 80ADBBF4
/* 010D8 80ADA068 35F80015 */  ori     $t8, $t7, 0x0015           ## $t8 = 00000015
/* 010DC 80ADA06C 37280001 */  ori     $t0, $t9, 0x0001           ## $t0 = 00000001
/* 010E0 80ADA070 A0EE0231 */  sb      $t6, 0x0231($a3)           ## 00000231
/* 010E4 80ADA074 A0F80199 */  sb      $t8, 0x0199($a3)           ## 00000199
/* 010E8 80ADA078 ACE80004 */  sw      $t0, 0x0004($a3)           ## 00000004
/* 010EC 80ADA07C ACE90190 */  sw      $t1, 0x0190($a3)           ## 00000190
/* 010F0 80ADA080 E4E40068 */  swc1    $f4, 0x0068($a3)           ## 00000068
/* 010F4 80ADA084 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 010F8 80ADA088 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 010FC 80ADA08C 03E00008 */  jr      $ra
/* 01100 80ADA090 00000000 */  nop


