glabel func_80A5ED18
/* 03A28 80A5ED18 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 03A2C 80A5ED1C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03A30 80A5ED20 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03A34 80A5ED24 0C297B4F */  jal     func_80A5ED3C              
/* 03A38 80A5ED28 E48401C4 */  swc1    $f4, 0x01C4($a0)           ## 000001C4
/* 03A3C 80A5ED2C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03A40 80A5ED30 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03A44 80A5ED34 03E00008 */  jr      $ra                        
/* 03A48 80A5ED38 00000000 */  nop
