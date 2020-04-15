glabel func_80ADF77C
/* 01A2C 80ADF77C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01A30 80ADF780 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01A34 80ADF784 908E0194 */  lbu     $t6, 0x0194($a0)           ## 00000194
/* 01A38 80ADF788 84980032 */  lh      $t8, 0x0032($a0)           ## 00000032
/* 01A3C 80ADF78C 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 01A40 80ADF790 2719F000 */  addiu   $t9, $t8, 0xF000           ## $t9 = FFFFF000
/* 01A44 80ADF794 A08F0194 */  sb      $t7, 0x0194($a0)           ## 00000194
/* 01A48 80ADF798 A4990032 */  sh      $t9, 0x0032($a0)           ## 00000032
/* 01A4C 80ADF79C 0C2B7A73 */  jal     func_80ADE9CC              
/* 01A50 80ADF7A0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01A54 80ADF7A4 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 01A58 80ADF7A8 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 01A5C 80ADF7AC 240402BC */  addiu   $a0, $zero, 0x02BC         ## $a0 = 000002BC
/* 01A60 80ADF7B0 90C20194 */  lbu     $v0, 0x0194($a2)           ## 00000194
/* 01A64 80ADF7B4 2405012C */  addiu   $a1, $zero, 0x012C         ## $a1 = 0000012C
/* 01A68 80ADF7B8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01A6C 80ADF7BC 04410004 */  bgez    $v0, .L80ADF7D0            
/* 01A70 80ADF7C0 468021A0 */  cvt.s.w $f6, $f4                   
/* 01A74 80ADF7C4 44814000 */  mtc1    $at, $f8                   ## $f8 = 4294967296.00
/* 01A78 80ADF7C8 00000000 */  nop
/* 01A7C 80ADF7CC 46083180 */  add.s   $f6, $f6, $f8              
.L80ADF7D0:
/* 01A80 80ADF7D0 3C0140FF */  lui     $at, 0x40FF                ## $at = 40FF0000
/* 01A84 80ADF7D4 44815000 */  mtc1    $at, $f10                  ## $f10 = 7.97
/* 01A88 80ADF7D8 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 01A8C 80ADF7DC 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 01A90 80ADF7E0 460A3402 */  mul.s   $f16, $f6, $f10            
/* 01A94 80ADF7E4 4448F800 */  cfc1    $t0, $31
/* 01A98 80ADF7E8 44C9F800 */  ctc1    $t1, $31
/* 01A9C 80ADF7EC 00000000 */  nop
/* 01AA0 80ADF7F0 460084A4 */  cvt.w.s $f18, $f16                 
/* 01AA4 80ADF7F4 4449F800 */  cfc1    $t1, $31
/* 01AA8 80ADF7F8 00000000 */  nop
/* 01AAC 80ADF7FC 31290078 */  andi    $t1, $t1, 0x0078           ## $t1 = 00000000
/* 01AB0 80ADF800 51200013 */  beql    $t1, $zero, .L80ADF850     
/* 01AB4 80ADF804 44099000 */  mfc1    $t1, $f18                  
/* 01AB8 80ADF808 44819000 */  mtc1    $at, $f18                  ## $f18 = 2147483648.00
/* 01ABC 80ADF80C 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 01AC0 80ADF810 46128481 */  sub.s   $f18, $f16, $f18           
/* 01AC4 80ADF814 44C9F800 */  ctc1    $t1, $31
/* 01AC8 80ADF818 00000000 */  nop
/* 01ACC 80ADF81C 460094A4 */  cvt.w.s $f18, $f18                 
/* 01AD0 80ADF820 4449F800 */  cfc1    $t1, $31
/* 01AD4 80ADF824 00000000 */  nop
/* 01AD8 80ADF828 31290078 */  andi    $t1, $t1, 0x0078           ## $t1 = 00000000
/* 01ADC 80ADF82C 15200005 */  bne     $t1, $zero, .L80ADF844     
/* 01AE0 80ADF830 00000000 */  nop
/* 01AE4 80ADF834 44099000 */  mfc1    $t1, $f18                  
/* 01AE8 80ADF838 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 01AEC 80ADF83C 10000007 */  beq     $zero, $zero, .L80ADF85C   
/* 01AF0 80ADF840 01214825 */  or      $t1, $t1, $at              ## $t1 = 80000000
.L80ADF844:
/* 01AF4 80ADF844 10000005 */  beq     $zero, $zero, .L80ADF85C   
/* 01AF8 80ADF848 2409FFFF */  addiu   $t1, $zero, 0xFFFF         ## $t1 = FFFFFFFF
/* 01AFC 80ADF84C 44099000 */  mfc1    $t1, $f18                  
.L80ADF850:
/* 01B00 80ADF850 00000000 */  nop
/* 01B04 80ADF854 0520FFFB */  bltz    $t1, .L80ADF844            
/* 01B08 80ADF858 00000000 */  nop
.L80ADF85C:
/* 01B0C 80ADF85C 44C8F800 */  ctc1    $t0, $31
/* 01B10 80ADF860 24010020 */  addiu   $at, $zero, 0x0020         ## $at = 00000020
/* 01B14 80ADF864 14410007 */  bne     $v0, $at, .L80ADF884       
/* 01B18 80ADF868 A0C9029D */  sb      $t1, 0x029D($a2)           ## 0000029D
/* 01B1C 80ADF86C 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 01B20 80ADF870 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 01B24 80ADF874 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01B28 80ADF878 A482019A */  sh      $v0, 0x019A($a0)           ## 0000019A
/* 01B2C 80ADF87C 0C2B785B */  jal     func_80ADE16C              
/* 01B30 80ADF880 A0800194 */  sb      $zero, 0x0194($a0)         ## 00000194
.L80ADF884:
/* 01B34 80ADF884 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01B38 80ADF888 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01B3C 80ADF88C 03E00008 */  jr      $ra                        
/* 01B40 80ADF890 00000000 */  nop
