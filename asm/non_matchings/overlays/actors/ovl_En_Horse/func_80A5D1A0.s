glabel func_80A5D1A0
/* 01EB0 80A5D1A0 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01EB4 80A5D1A4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01EB8 80A5D1A8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01EBC 80A5D1AC 0C297471 */  jal     func_80A5D1C4              
/* 01EC0 80A5D1B0 E48401C4 */  swc1    $f4, 0x01C4($a0)           ## 000001C4
/* 01EC4 80A5D1B4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01EC8 80A5D1B8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01ECC 80A5D1BC 03E00008 */  jr      $ra                        
/* 01ED0 80A5D1C0 00000000 */  nop


