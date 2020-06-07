glabel func_80AC3ED8
/* 01238 80AC3ED8 30A200FF */  andi    $v0, $a1, 0x00FF           ## $v0 = 00000000
/* 0123C 80AC3EDC 30C300FF */  andi    $v1, $a2, 0x00FF           ## $v1 = 00000000
/* 01240 80AC3EE0 0043082A */  slt     $at, $v0, $v1              
/* 01244 80AC3EE4 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 01248 80AC3EE8 10200010 */  beq     $at, $zero, .L80AC3F2C     
/* 0124C 80AC3EEC AFA60008 */  sw      $a2, 0x0008($sp)           
/* 01250 80AC3EF0 24450002 */  addiu   $a1, $v0, 0x0002           ## $a1 = 00000002
.L80AC3EF4:
/* 01254 80AC3EF4 30A500FF */  andi    $a1, $a1, 0x00FF           ## $a1 = 00000002
/* 01258 80AC3EF8 00A3082A */  slt     $at, $a1, $v1              
/* 0125C 80AC3EFC 10200008 */  beq     $at, $zero, .L80AC3F20     
/* 01260 80AC3F00 00A01025 */  or      $v0, $a1, $zero            ## $v0 = 00000002
/* 01264 80AC3F04 00057080 */  sll     $t6, $a1,  2               
/* 01268 80AC3F08 008E7821 */  addu    $t7, $a0, $t6              
/* 0126C 80AC3F0C 8DF80200 */  lw      $t8, 0x0200($t7)           ## 00000200
/* 01270 80AC3F10 53000004 */  beql    $t8, $zero, .L80AC3F24     
/* 01274 80AC3F14 0043082A */  slt     $at, $v0, $v1              
/* 01278 80AC3F18 03E00008 */  jr      $ra                        
/* 0127C 80AC3F1C 00A01025 */  or      $v0, $a1, $zero            ## $v0 = 00000002
.L80AC3F20:
/* 01280 80AC3F20 0043082A */  slt     $at, $v0, $v1              
.L80AC3F24:
/* 01284 80AC3F24 5420FFF3 */  bnel    $at, $zero, .L80AC3EF4     
/* 01288 80AC3F28 24450002 */  addiu   $a1, $v0, 0x0002           ## $a1 = 00000004
.L80AC3F2C:
/* 0128C 80AC3F2C 240200FF */  addiu   $v0, $zero, 0x00FF         ## $v0 = 000000FF
/* 01290 80AC3F30 03E00008 */  jr      $ra                        
/* 01294 80AC3F34 00000000 */  nop
