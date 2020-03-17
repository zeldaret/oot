glabel func_80AFFCE0
/* 01A30 80AFFCE0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01A34 80AFFCE4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01A38 80AFFCE8 A08002D6 */  sb      $zero, 0x02D6($a0)         ## 000002D6
/* 01A3C 80AFFCEC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01A40 80AFFCF0 0C2BF8AC */  jal     func_80AFE2B0              
/* 01A44 80AFFCF4 24050009 */  addiu   $a1, $zero, 0x0009         ## $a1 = 00000009
/* 01A48 80AFFCF8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01A4C 80AFFCFC 0C2BF8CE */  jal     func_80AFE338              
/* 01A50 80AFFD00 2405000C */  addiu   $a1, $zero, 0x000C         ## $a1 = 0000000C
/* 01A54 80AFFD04 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01A58 80AFFD08 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01A5C 80AFFD0C 03E00008 */  jr      $ra                        
/* 01A60 80AFFD10 00000000 */  nop


