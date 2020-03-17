glabel func_80AFF2A0
/* 00FF0 80AFF2A0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00FF4 80AFF2A4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00FF8 80AFF2A8 0C2BF8E4 */  jal     func_80AFE390              
/* 00FFC 80AFF2AC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01000 80AFF2B0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01004 80AFF2B4 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01008 80AFF2B8 24050005 */  addiu   $a1, $zero, 0x0005         ## $a1 = 00000005
/* 0100C 80AFF2BC 0C2BF8AC */  jal     func_80AFE2B0              
/* 01010 80AFF2C0 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 01014 80AFF2C4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01018 80AFF2C8 0C2BF8CE */  jal     func_80AFE338              
/* 0101C 80AFF2CC 24050005 */  addiu   $a1, $zero, 0x0005         ## $a1 = 00000005
/* 01020 80AFF2D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01024 80AFF2D4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01028 80AFF2D8 03E00008 */  jr      $ra                        
/* 0102C 80AFF2DC 00000000 */  nop


