glabel func_80B2B8FC
/* 016FC 80B2B8FC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01700 80B2B900 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01704 80B2B904 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 01708 80B2B908 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 0170C 80B2B90C 2486014C */  addiu   $a2, $a0, 0x014C           ## $a2 = 0000014C
/* 01710 80B2B910 0C0298CC */  jal     func_800A6330              
/* 01714 80B2B914 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01718 80B2B918 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0171C 80B2B91C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01720 80B2B920 03E00008 */  jr      $ra                        
/* 01724 80B2B924 00000000 */  nop
