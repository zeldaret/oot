glabel func_80AFF334
/* 01084 80AFF334 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01088 80AFF338 3C014416 */  lui     $at, 0x4416                ## $at = 44160000
/* 0108C 80AFF33C 44812000 */  mtc1    $at, $f4                   ## $f4 = 600.00
/* 01090 80AFF340 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01094 80AFF344 240E2000 */  addiu   $t6, $zero, 0x2000         ## $t6 = 00002000
/* 01098 80AFF348 240F0190 */  addiu   $t7, $zero, 0x0190         ## $t7 = 00000190
/* 0109C 80AFF34C A48E02C8 */  sh      $t6, 0x02C8($a0)           ## 000002C8
/* 010A0 80AFF350 A48F02CA */  sh      $t7, 0x02CA($a0)           ## 000002CA
/* 010A4 80AFF354 E48402EC */  swc1    $f4, 0x02EC($a0)           ## 000002EC
/* 010A8 80AFF358 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 010AC 80AFF35C 0C2BF8AC */  jal     func_80AFE2B0              
/* 010B0 80AFF360 24050006 */  addiu   $a1, $zero, 0x0006         ## $a1 = 00000006
/* 010B4 80AFF364 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 010B8 80AFF368 0C2BF8CE */  jal     func_80AFE338              
/* 010BC 80AFF36C 24050006 */  addiu   $a1, $zero, 0x0006         ## $a1 = 00000006
/* 010C0 80AFF370 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 010C4 80AFF374 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 010C8 80AFF378 03E00008 */  jr      $ra                        
/* 010CC 80AFF37C 00000000 */  nop


