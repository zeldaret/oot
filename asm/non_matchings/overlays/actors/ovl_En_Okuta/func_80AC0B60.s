glabel func_80AC0B60
/* 00500 80AC0B60 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00504 80AC0B64 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00508 80AC0B68 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 0050C 80AC0B6C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00510 80AC0B70 24A50DDC */  addiu   $a1, $a1, 0x0DDC           ## $a1 = 06000DDC
/* 00514 80AC0B74 AFA60018 */  sw      $a2, 0x0018($sp)
/* 00518 80AC0B78 0C0294BE */  jal     SkelAnime_ChangeAnimationDefault
/* 0051C 80AC0B7C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00520 80AC0B80 8FA60018 */  lw      $a2, 0x0018($sp)
/* 00524 80AC0B84 3C0E80AC */  lui     $t6, %hi(func_80AC12D8)    ## $t6 = 80AC0000
/* 00528 80AC0B88 25CE12D8 */  addiu   $t6, $t6, %lo(func_80AC12D8) ## $t6 = 80AC12D8
/* 0052C 80AC0B8C 8CCF0190 */  lw      $t7, 0x0190($a2)           ## 00000190
/* 00530 80AC0B90 3C1980AC */  lui     $t9, %hi(func_80AC11A8)    ## $t9 = 80AC0000
/* 00534 80AC0B94 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 00538 80AC0B98 15CF0003 */  bne     $t6, $t7, .L80AC0BA8
/* 0053C 80AC0B9C 273911A8 */  addiu   $t9, $t9, %lo(func_80AC11A8) ## $t9 = 80AC11A8
/* 00540 80AC0BA0 10000002 */  beq     $zero, $zero, .L80AC0BAC
/* 00544 80AC0BA4 A4D80194 */  sh      $t8, 0x0194($a2)           ## 00000194
.L80AC0BA8:
/* 00548 80AC0BA8 A4C00194 */  sh      $zero, 0x0194($a2)         ## 00000194
.L80AC0BAC:
/* 0054C 80AC0BAC ACD90190 */  sw      $t9, 0x0190($a2)           ## 00000190
/* 00550 80AC0BB0 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00554 80AC0BB4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00558 80AC0BB8 03E00008 */  jr      $ra
/* 0055C 80AC0BBC 00000000 */  nop


