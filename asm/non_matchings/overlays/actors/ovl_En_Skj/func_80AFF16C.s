glabel func_80AFF16C
/* 00EBC 80AFF16C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00EC0 80AFF170 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00EC4 80AFF174 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00EC8 80AFF178 0C2BF8AC */  jal     func_80AFE2B0              
/* 00ECC 80AFF17C 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 00ED0 80AFF180 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00ED4 80AFF184 0C2BF8CE */  jal     func_80AFE338              
/* 00ED8 80AFF188 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 00EDC 80AFF18C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00EE0 80AFF190 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00EE4 80AFF194 03E00008 */  jr      $ra                        
/* 00EE8 80AFF198 00000000 */  nop


