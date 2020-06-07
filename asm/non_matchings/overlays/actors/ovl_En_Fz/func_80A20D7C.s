glabel func_80A20D7C
/* 00FBC 80A20D7C 8C980004 */  lw      $t8, 0x0004($a0)           ## 00000004
/* 00FC0 80A20D80 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00FC4 80A20D84 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00FC8 80A20D88 3C0880A2 */  lui     $t0, %hi(func_80A20DBC)    ## $t0 = 80A20000
/* 00FCC 80A20D8C 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 00FD0 80A20D90 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 00FD4 80A20D94 25080DBC */  addiu   $t0, $t0, %lo(func_80A20DBC) ## $t0 = 80A20DBC
/* 00FD8 80A20D98 0301C824 */  and     $t9, $t8, $at              
/* 00FDC 80A20D9C A08E0260 */  sb      $t6, 0x0260($a0)           ## 00000260
/* 00FE0 80A20DA0 A0800248 */  sb      $zero, 0x0248($a0)         ## 00000248
/* 00FE4 80A20DA4 A08F0262 */  sb      $t7, 0x0262($a0)           ## 00000262
/* 00FE8 80A20DA8 AC990004 */  sw      $t9, 0x0004($a0)           ## 00000004
/* 00FEC 80A20DAC AC88014C */  sw      $t0, 0x014C($a0)           ## 0000014C
/* 00FF0 80A20DB0 E4800068 */  swc1    $f0, 0x0068($a0)           ## 00000068
/* 00FF4 80A20DB4 03E00008 */  jr      $ra                        
/* 00FF8 80A20DB8 E4800254 */  swc1    $f0, 0x0254($a0)           ## 00000254
