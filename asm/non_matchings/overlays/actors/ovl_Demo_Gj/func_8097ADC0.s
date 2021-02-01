glabel func_8097ADC0
/* 02490 8097ADC0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02494 8097ADC4 3C0E0600 */  lui     $t6, %hi(D_06001B70)                ## $t6 = 06000000
/* 02498 8097ADC8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0249C 8097ADCC 25CE1B70 */  addiu   $t6, $t6, %lo(D_06001B70)           ## $t6 = 06001B70
/* 024A0 8097ADD0 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 024A4 8097ADD4 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 024A8 8097ADD8 0C25E3F3 */  jal     func_80978FCC              
/* 024AC 8097ADDC 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 024B0 8097ADE0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 024B4 8097ADE4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 024B8 8097ADE8 03E00008 */  jr      $ra                        
/* 024BC 8097ADEC 00000000 */  nop
