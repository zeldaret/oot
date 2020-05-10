glabel func_80AB3228
/* 02498 80AB3228 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0249C 80AB322C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 024A0 80AB3230 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 024A4 80AB3234 0C2AC508 */  jal     func_80AB1420              
/* 024A8 80AB3238 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 024AC 80AB323C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 024B0 80AB3240 240E0015 */  addiu   $t6, $zero, 0x0015         ## $t6 = 00000015
/* 024B4 80AB3244 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 024B8 80AB3248 AC8E0278 */  sw      $t6, 0x0278($a0)           ## 00000278
/* 024BC 80AB324C AC8F027C */  sw      $t7, 0x027C($a0)           ## 0000027C
/* 024C0 80AB3250 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 024C4 80AB3254 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 024C8 80AB3258 03E00008 */  jr      $ra                        
/* 024CC 80AB325C 00000000 */  nop
