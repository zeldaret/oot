glabel func_80AD1AA8
/* 02608 80AD1AA8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0260C 80AD1AAC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02610 80AD1AB0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 02614 80AD1AB4 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 02618 80AD1AB8 24A505C4 */  addiu   $a1, $a1, 0x05C4           ## $a1 = 060005C4
/* 0261C 80AD1ABC AFA60018 */  sw      $a2, 0x0018($sp)           
/* 02620 80AD1AC0 0C0294BE */  jal     func_800A52F8              
/* 02624 80AD1AC4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 02628 80AD1AC8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0262C 80AD1ACC 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 02630 80AD1AD0 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 02634 80AD1AD4 240F0005 */  addiu   $t7, $zero, 0x0005         ## $t7 = 00000005
/* 02638 80AD1AD8 3C0580AD */  lui     $a1, %hi(func_80AD1B00)    ## $a1 = 80AD0000
/* 0263C 80AD1ADC 24A51B00 */  addiu   $a1, $a1, %lo(func_80AD1B00) ## $a1 = 80AD1B00
/* 02640 80AD1AE0 AC8E02B0 */  sw      $t6, 0x02B0($a0)           ## 000002B0
/* 02644 80AD1AE4 A48F02FC */  sh      $t7, 0x02FC($a0)           ## 000002FC
/* 02648 80AD1AE8 0C2B3D28 */  jal     func_80ACF4A0              
/* 0264C 80AD1AEC E48402E0 */  swc1    $f4, 0x02E0($a0)           ## 000002E0
/* 02650 80AD1AF0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02654 80AD1AF4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02658 80AD1AF8 03E00008 */  jr      $ra                        
/* 0265C 80AD1AFC 00000000 */  nop


