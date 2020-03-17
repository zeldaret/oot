glabel func_80B4FE10
/* 01480 80B4FE10 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01484 80B4FE14 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01488 80B4FE18 94821D74 */  lhu     $v0, 0x1D74($a0)           ## 00001D74
/* 0148C 80B4FE1C 2841033E */  slti    $at, $v0, 0x033E           
/* 01490 80B4FE20 14200005 */  bne     $at, $zero, .L80B4FE38     
/* 01494 80B4FE24 28410439 */  slti    $at, $v0, 0x0439           
/* 01498 80B4FE28 50200004 */  beql    $at, $zero, .L80B4FE3C     
/* 0149C 80B4FE2C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 014A0 80B4FE30 0C01E233 */  jal     func_800788CC              
/* 014A4 80B4FE34 24042098 */  addiu   $a0, $zero, 0x2098         ## $a0 = 00002098
.L80B4FE38:
/* 014A8 80B4FE38 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B4FE3C:
/* 014AC 80B4FE3C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 014B0 80B4FE40 03E00008 */  jr      $ra                        
/* 014B4 80B4FE44 00000000 */  nop


