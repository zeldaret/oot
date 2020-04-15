glabel func_80AFF7A0
/* 014F0 80AFF7A0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 014F4 80AFF7A4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 014F8 80AFF7A8 240E10BC */  addiu   $t6, $zero, 0x10BC         ## $t6 = 000010BC
/* 014FC 80AFF7AC A48E02C4 */  sh      $t6, 0x02C4($a0)           ## 000002C4
/* 01500 80AFF7B0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01504 80AFF7B4 0C2BF8AC */  jal     func_80AFE2B0              
/* 01508 80AFF7B8 24050009 */  addiu   $a1, $zero, 0x0009         ## $a1 = 00000009
/* 0150C 80AFF7BC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01510 80AFF7C0 0C2BF8CE */  jal     func_80AFE338              
/* 01514 80AFF7C4 2405000A */  addiu   $a1, $zero, 0x000A         ## $a1 = 0000000A
/* 01518 80AFF7C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0151C 80AFF7CC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01520 80AFF7D0 03E00008 */  jr      $ra                        
/* 01524 80AFF7D4 00000000 */  nop
