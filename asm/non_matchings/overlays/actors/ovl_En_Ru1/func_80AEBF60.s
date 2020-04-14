glabel func_80AEBF60
/* 01350 80AEBF60 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01354 80AEBF64 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 01358 80AEBF68 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0135C 80AEBF6C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01360 80AEBF70 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01364 80AEBF74 24050006 */  addiu   $a1, $zero, 0x0006         ## $a1 = 00000006
/* 01368 80AEBF78 0C2BAD20 */  jal     func_80AEB480              
/* 0136C 80AEBF7C AFA60018 */  sw      $a2, 0x0018($sp)           
/* 01370 80AEBF80 1040000E */  beq     $v0, $zero, .L80AEBFBC     
/* 01374 80AEBF84 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 01378 80AEBF88 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 0137C 80AEBF8C 0C2BADF4 */  jal     func_80AEB7D0              
/* 01380 80AEBF90 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 01384 80AEBF94 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 01388 80AEBF98 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 0138C 80AEBF9C 8CD80024 */  lw      $t8, 0x0024($a2)           ## 00000024
/* 01390 80AEBFA0 8CCF0028 */  lw      $t7, 0x0028($a2)           ## 00000028
/* 01394 80AEBFA4 ACCE0264 */  sw      $t6, 0x0264($a2)           ## 00000264
/* 01398 80AEBFA8 ACD80364 */  sw      $t8, 0x0364($a2)           ## 00000364
/* 0139C 80AEBFAC 8CD8002C */  lw      $t8, 0x002C($a2)           ## 0000002C
/* 013A0 80AEBFB0 ACCF0368 */  sw      $t7, 0x0368($a2)           ## 00000368
/* 013A4 80AEBFB4 10000004 */  beq     $zero, $zero, .L80AEBFC8   
/* 013A8 80AEBFB8 ACD8036C */  sw      $t8, 0x036C($a2)           ## 0000036C
.L80AEBFBC:
/* 013AC 80AEBFBC 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 013B0 80AEBFC0 0C2BAE83 */  jal     func_80AEBA0C              
/* 013B4 80AEBFC4 8FA5001C */  lw      $a1, 0x001C($sp)           
.L80AEBFC8:
/* 013B8 80AEBFC8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 013BC 80AEBFCC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 013C0 80AEBFD0 03E00008 */  jr      $ra                        
/* 013C4 80AEBFD4 00000000 */  nop
