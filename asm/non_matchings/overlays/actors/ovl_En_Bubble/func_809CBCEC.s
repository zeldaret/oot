glabel func_809CBCEC
/* 000EC 809CBCEC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000F0 809CBCF0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000F4 809CBCF4 0C272F00 */  jal     func_809CBC00              
/* 000F8 809CBCF8 3C05BF80 */  lui     $a1, 0xBF80                ## $a1 = BF800000
/* 000FC 809CBCFC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00100 809CBD00 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00104 809CBD04 2402000C */  addiu   $v0, $zero, 0x000C         ## $v0 = 0000000C
/* 00108 809CBD08 03E00008 */  jr      $ra                        
/* 0010C 809CBD0C 00000000 */  nop
