glabel func_80AFF1F0
/* 00F40 80AFF1F0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00F44 80AFF1F4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00F48 80AFF1F8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00F4C 80AFF1FC 0C2BF8AC */  jal     func_80AFE2B0              
/* 00F50 80AFF200 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 00F54 80AFF204 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00F58 80AFF208 0C2BF8CE */  jal     func_80AFE338              
/* 00F5C 80AFF20C 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 00F60 80AFF210 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00F64 80AFF214 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00F68 80AFF218 03E00008 */  jr      $ra                        
/* 00F6C 80AFF21C 00000000 */  nop
