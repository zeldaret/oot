glabel func_80A5E9F8
/* 03708 80A5E9F8 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0370C 80A5E9FC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03710 80A5EA00 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03714 80A5EA04 0C297A87 */  jal     func_80A5EA1C              
/* 03718 80A5EA08 E48401C4 */  swc1    $f4, 0x01C4($a0)           ## 000001C4
/* 0371C 80A5EA0C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03720 80A5EA10 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03724 80A5EA14 03E00008 */  jr      $ra                        
/* 03728 80A5EA18 00000000 */  nop


