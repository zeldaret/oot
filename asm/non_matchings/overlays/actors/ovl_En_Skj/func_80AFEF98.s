glabel func_80AFEF98
/* 00CE8 80AFEF98 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00CEC 80AFEF9C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00CF0 80AFEFA0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00CF4 80AFEFA4 3C040600 */  lui     $a0, %hi(D_060007A4)                ## $a0 = 06000000
/* 00CF8 80AFEFA8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00CFC 80AFEFAC 248407A4 */  addiu   $a0, $a0, %lo(D_060007A4)           ## $a0 = 060007A4
/* 00D00 80AFEFB0 0C028800 */  jal     Animation_GetLastFrame
              
/* 00D04 80AFEFB4 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00D08 80AFEFB8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00D0C 80AFEFBC 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 00D10 80AFEFC0 468021A0 */  cvt.s.w $f6, $f4                   
/* 00D14 80AFEFC4 C4C80164 */  lwc1    $f8, 0x0164($a2)           ## 00000164
/* 00D18 80AFEFC8 46083032 */  c.eq.s  $f6, $f8                   
/* 00D1C 80AFEFCC 00000000 */  nop
/* 00D20 80AFEFD0 45020016 */  bc1fl   .L80AFF02C                 
/* 00D24 80AFEFD4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D28 80AFEFD8 84CE02CC */  lh      $t6, 0x02CC($a2)           ## 000002CC
/* 00D2C 80AFEFDC 55C00013 */  bnel    $t6, $zero, .L80AFF02C     
/* 00D30 80AFEFE0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D34 80AFEFE4 90C302D4 */  lbu     $v1, 0x02D4($a2)           ## 000002D4
/* 00D38 80AFEFE8 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00D3C 80AFEFEC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00D40 80AFEFF0 1060000B */  beq     $v1, $zero, .L80AFF020     
/* 00D44 80AFEFF4 00000000 */  nop
/* 00D48 80AFEFF8 A3A3001F */  sb      $v1, 0x001F($sp)           
/* 00D4C 80AFEFFC 0C2BFA75 */  jal     func_80AFE9D4              
/* 00D50 80AFF000 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00D54 80AFF004 93A3001F */  lbu     $v1, 0x001F($sp)           
/* 00D58 80AFF008 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 00D5C 80AFF00C 240F0004 */  addiu   $t7, $zero, 0x0004         ## $t7 = 00000004
/* 00D60 80AFF010 2463FFFF */  addiu   $v1, $v1, 0xFFFF           ## $v1 = FFFFFFFF
/* 00D64 80AFF014 A4CF02CC */  sh      $t7, 0x02CC($a2)           ## 000002CC
/* 00D68 80AFF018 10000003 */  beq     $zero, $zero, .L80AFF028   
/* 00D6C 80AFF01C A0C302D4 */  sb      $v1, 0x02D4($a2)           ## 000002D4
.L80AFF020:
/* 00D70 80AFF020 0C2BFD7C */  jal     func_80AFF5F0              
/* 00D74 80AFF024 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
.L80AFF028:
/* 00D78 80AFF028 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AFF02C:
/* 00D7C 80AFF02C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00D80 80AFF030 03E00008 */  jr      $ra                        
/* 00D84 80AFF034 00000000 */  nop
