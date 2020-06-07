glabel func_80AFF038
/* 00D88 80AFF038 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00D8C 80AFF03C 44812000 */  mtc1    $at, $f4                   ## $f4 = 200.00
/* 00D90 80AFF040 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00D94 80AFF044 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00D98 80AFF048 240E0AAA */  addiu   $t6, $zero, 0x0AAA         ## $t6 = 00000AAA
/* 00D9C 80AFF04C A48E02C8 */  sh      $t6, 0x02C8($a0)           ## 000002C8
/* 00DA0 80AFF050 E48402EC */  swc1    $f4, 0x02EC($a0)           ## 000002EC
/* 00DA4 80AFF054 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00DA8 80AFF058 0C2BF8AC */  jal     func_80AFE2B0              
/* 00DAC 80AFF05C 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 00DB0 80AFF060 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00DB4 80AFF064 0C2BF8CE */  jal     func_80AFE338              
/* 00DB8 80AFF068 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 00DBC 80AFF06C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00DC0 80AFF070 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00DC4 80AFF074 03E00008 */  jr      $ra                        
/* 00DC8 80AFF078 00000000 */  nop
