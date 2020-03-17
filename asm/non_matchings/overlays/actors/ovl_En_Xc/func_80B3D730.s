glabel func_80B3D730
/* 01550 80B3D730 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01554 80B3D734 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01558 80B3D738 0C2CF599 */  jal     func_80B3D664              
/* 0155C 80B3D73C 00000000 */  nop
/* 01560 80B3D740 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01564 80B3D744 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01568 80B3D748 03E00008 */  jr      $ra                        
/* 0156C 80B3D74C 00000000 */  nop


