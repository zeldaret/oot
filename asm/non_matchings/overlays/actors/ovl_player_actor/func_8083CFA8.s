glabel func_8083CFA8
/* 0AD98 8083CFA8 44866000 */  mtc1    $a2, $f12                  ## $f12 = 0.00
/* 0AD9C 8083CFAC 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 0ADA0 8083CFB0 44812000 */  mtc1    $at, $f4                   ## $f4 = 2.00
/* 0ADA4 8083CFB4 46006085 */  abs.s   $f2, $f12                  
/* 0ADA8 8083CFB8 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 0ADAC 8083CFBC 4602203C */  c.lt.s  $f4, $f2                   
/* 0ADB0 8083CFC0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0ADB4 8083CFC4 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 0ADB8 8083CFC8 AFA7004C */  sw      $a3, 0x004C($sp)           
/* 0ADBC 8083CFCC 45020032 */  bc1fl   .L8083D098                 
/* 0ADC0 8083CFD0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0ADC4 8083CFD4 C4A60908 */  lwc1    $f6, 0x0908($a1)           ## 00000908
/* 0ADC8 8083CFD8 27AF0034 */  addiu   $t7, $sp, 0x0034           ## $t7 = FFFFFFF4
/* 0ADCC 8083CFDC 27B80038 */  addiu   $t8, $sp, 0x0038           ## $t8 = FFFFFFF8
/* 0ADD0 8083CFE0 E7A60028 */  swc1    $f6, 0x0028($sp)           
/* 0ADD4 8083CFE4 C4A80910 */  lwc1    $f8, 0x0910($a1)           ## 00000910
/* 0ADD8 8083CFE8 44063000 */  mfc1    $a2, $f6                   
/* 0ADDC 8083CFEC E7A80030 */  swc1    $f8, 0x0030($sp)           
/* 0ADE0 8083CFF0 C4AA0028 */  lwc1    $f10, 0x0028($a1)          ## 00000028
/* 0ADE4 8083CFF4 44074000 */  mfc1    $a3, $f8                   
/* 0ADE8 8083CFF8 E7A2003C */  swc1    $f2, 0x003C($sp)           
/* 0ADEC 8083CFFC AFA40040 */  sw      $a0, 0x0040($sp)           
/* 0ADF0 8083D000 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 0ADF4 8083D004 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 0ADF8 8083D008 248507C0 */  addiu   $a1, $a0, 0x07C0           ## $a1 = 000007C0
/* 0ADFC 8083D00C 0C01084F */  jal     func_8004213C              
/* 0AE00 8083D010 E7AA0034 */  swc1    $f10, 0x0034($sp)          
/* 0AE04 8083D014 8FA40040 */  lw      $a0, 0x0040($sp)           
/* 0AE08 8083D018 1040001E */  beq     $v0, $zero, .L8083D094     
/* 0AE0C 8083D01C C7A2003C */  lwc1    $f2, 0x003C($sp)           
/* 0AE10 8083D020 8FB90044 */  lw      $t9, 0x0044($sp)           
/* 0AE14 8083D024 C7B00034 */  lwc1    $f16, 0x0034($sp)          
/* 0AE18 8083D028 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 0AE1C 8083D02C C7320028 */  lwc1    $f18, 0x0028($t9)          ## 00000028
/* 0AE20 8083D030 44815000 */  mtc1    $at, $f10                  ## $f10 = 100.00
/* 0AE24 8083D034 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 0AE28 8083D038 46128101 */  sub.s   $f4, $f16, $f18            
/* 0AE2C 8083D03C C7A80034 */  lwc1    $f8, 0x0034($sp)           
/* 0AE30 8083D040 27A50028 */  addiu   $a1, $sp, 0x0028           ## $a1 = FFFFFFE8
/* 0AE34 8083D044 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0AE38 8083D048 460A203C */  c.lt.s  $f4, $f10                  
/* 0AE3C 8083D04C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0AE40 8083D050 45020011 */  bc1fl   .L8083D098                 
/* 0AE44 8083D054 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0AE48 8083D058 44813000 */  mtc1    $at, $f6                   ## $f6 = 10.00
/* 0AE4C 8083D05C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 0AE50 8083D060 4606103E */  c.le.s  $f2, $f6                   
/* 0AE54 8083D064 00000000 */  nop
/* 0AE58 8083D068 45000003 */  bc1f    .L8083D078                 
/* 0AE5C 8083D06C 00000000 */  nop
/* 0AE60 8083D070 10000001 */  beq     $zero, $zero, .L8083D078   
/* 0AE64 8083D074 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8083D078:
/* 0AE68 8083D078 8FA8004C */  lw      $t0, 0x004C($sp)           
/* 0AE6C 8083D07C E7A8002C */  swc1    $f8, 0x002C($sp)           
/* 0AE70 8083D080 AFA20010 */  sw      $v0, 0x0010($sp)           
/* 0AE74 8083D084 0C00A527 */  jal     func_8002949C              
/* 0AE78 8083D088 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 0AE7C 8083D08C 10000002 */  beq     $zero, $zero, .L8083D098   
/* 0AE80 8083D090 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8083D094:
/* 0AE84 8083D094 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8083D098:
/* 0AE88 8083D098 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0AE8C 8083D09C 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 0AE90 8083D0A0 03E00008 */  jr      $ra                        
/* 0AE94 8083D0A4 00000000 */  nop


