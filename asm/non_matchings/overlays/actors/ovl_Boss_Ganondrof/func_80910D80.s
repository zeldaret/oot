glabel func_80910D80
/* 00740 80910D80 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00744 80910D84 AFA5001C */  sw      $a1, 0x001C($sp)
/* 00748 80910D88 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 0074C 80910D8C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00750 80910D90 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00754 80910D94 24A519A4 */  addiu   $a1, $a1, 0x19A4           ## $a1 = 060019A4
/* 00758 80910D98 AFA60018 */  sw      $a2, 0x0018($sp)
/* 0075C 80910D9C 0C0294BE */  jal     SkelAnime_ChangeAnimDefaultRepeat
/* 00760 80910DA0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00764 80910DA4 8FA60018 */  lw      $a2, 0x0018($sp)
/* 00768 80910DA8 3C0E8091 */  lui     $t6, %hi(func_80910DCC)    ## $t6 = 80910000
/* 0076C 80910DAC 25CE0DCC */  addiu   $t6, $t6, %lo(func_80910DCC) ## $t6 = 80910DCC
/* 00770 80910DB0 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 00774 80910DB4 ACCE0190 */  sw      $t6, 0x0190($a2)           ## 00000190
/* 00778 80910DB8 A4CF01A8 */  sh      $t7, 0x01A8($a2)           ## 000001A8
/* 0077C 80910DBC 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00780 80910DC0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00784 80910DC4 03E00008 */  jr      $ra
/* 00788 80910DC8 00000000 */  nop


