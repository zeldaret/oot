.late_rodata
glabel D_808F7FCC
    .float 20000.0

.text
glabel func_808DB278
/* 04A08 808DB278 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 04A0C 808DB27C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04A10 808DB280 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 04A14 808DB284 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 04A18 808DB288 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 04A1C 808DB28C 44812000 */  mtc1    $at, $f4                   ## $f4 = 100.00
/* 04A20 808DB290 240E001E */  addiu   $t6, $zero, 0x001E         ## $t6 = 0000001E
/* 04A24 808DB294 A48001C2 */  sh      $zero, 0x01C2($a0)         ## 000001C2
/* 04A28 808DB298 A48E01B6 */  sh      $t6, 0x01B6($a0)           ## 000001B6
/* 04A2C 808DB29C 3C01808F */  lui     $at, %hi(D_808F7FCC)       ## $at = 808F0000
/* 04A30 808DB2A0 E480005C */  swc1    $f0, 0x005C($a0)           ## 0000005C
/* 04A34 808DB2A4 E4800060 */  swc1    $f0, 0x0060($a0)           ## 00000060
/* 04A38 808DB2A8 E48401D0 */  swc1    $f4, 0x01D0($a0)           ## 000001D0
/* 04A3C 808DB2AC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 04A40 808DB2B0 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 04A44 808DB2B4 C42C7FCC */  lwc1    $f12, %lo(D_808F7FCC)($at) 
/* 04A48 808DB2B8 4600018D */  trunc.w.s $f6, $f0                   
/* 04A4C 808DB2BC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 04A50 808DB2C0 3C19808E */  lui     $t9, %hi(func_808DB2E8)    ## $t9 = 808E0000
/* 04A54 808DB2C4 2739B2E8 */  addiu   $t9, $t9, %lo(func_808DB2E8) ## $t9 = 808DB2E8
/* 04A58 808DB2C8 44183000 */  mfc1    $t8, $f6                   
/* 04A5C 808DB2CC A48001AC */  sh      $zero, 0x01AC($a0)         ## 000001AC
/* 04A60 808DB2D0 AC990194 */  sw      $t9, 0x0194($a0)           ## 00000194
/* 04A64 808DB2D4 A49801AA */  sh      $t8, 0x01AA($a0)           ## 000001AA
/* 04A68 808DB2D8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04A6C 808DB2DC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 04A70 808DB2E0 03E00008 */  jr      $ra                        
/* 04A74 808DB2E4 00000000 */  nop
