glabel func_80AFF5F0
/* 01340 80AFF5F0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01344 80AFF5F4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01348 80AFF5F8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0134C 80AFF5FC 0C029502 */  jal     func_800A5408              
/* 01350 80AFF600 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01354 80AFF604 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01358 80AFF608 0C2BF8CE */  jal     func_80AFE338              
/* 0135C 80AFF60C 24050008 */  addiu   $a1, $zero, 0x0008         ## $a1 = 00000008
/* 01360 80AFF610 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01364 80AFF614 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01368 80AFF618 03E00008 */  jr      $ra                        
/* 0136C 80AFF61C 00000000 */  nop


