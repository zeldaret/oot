glabel func_80BA153C
/* 007DC 80BA153C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 007E0 80BA1540 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 007E4 80BA1544 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 007E8 80BA1548 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 007EC 80BA154C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 007F0 80BA1550 00A12021 */  addu    $a0, $a1, $at              
/* 007F4 80BA1554 80C5019C */  lb      $a1, 0x019C($a2)           ## 0000019C
/* 007F8 80BA1558 0C026062 */  jal     Object_IsLoaded
              
/* 007FC 80BA155C AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00800 80BA1560 1040000E */  beq     $v0, $zero, .L80BA159C     
/* 00804 80BA1564 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00808 80BA1568 80CF019C */  lb      $t7, 0x019C($a2)           ## 0000019C
/* 0080C 80BA156C 3C0E80BA */  lui     $t6, %hi(func_80BA1B0C)    ## $t6 = 80BA0000
/* 00810 80BA1570 25CE1B0C */  addiu   $t6, $t6, %lo(func_80BA1B0C) ## $t6 = 80BA1B0C
/* 00814 80BA1574 ACCE0134 */  sw      $t6, 0x0134($a2)           ## 00000134
/* 00818 80BA1578 A0CF001E */  sb      $t7, 0x001E($a2)           ## 0000001E
/* 0081C 80BA157C AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00820 80BA1580 0C2E856B */  jal     func_80BA15AC              
/* 00824 80BA1584 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00828 80BA1588 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 0082C 80BA158C 2401FFEF */  addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
/* 00830 80BA1590 8CD80004 */  lw      $t8, 0x0004($a2)           ## 00000004
/* 00834 80BA1594 0301C824 */  and     $t9, $t8, $at              
/* 00838 80BA1598 ACD90004 */  sw      $t9, 0x0004($a2)           ## 00000004
.L80BA159C:
/* 0083C 80BA159C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00840 80BA15A0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00844 80BA15A4 03E00008 */  jr      $ra                        
/* 00848 80BA15A8 00000000 */  nop
