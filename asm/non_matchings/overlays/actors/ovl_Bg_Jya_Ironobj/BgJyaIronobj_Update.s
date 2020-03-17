glabel BgJyaIronobj_Update
/* 00B80 80899420 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B84 80899424 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B88 80899428 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 00B8C 8089942C 0320F809 */  jalr    $ra, $t9                   
/* 00B90 80899430 00000000 */  nop
/* 00B94 80899434 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B98 80899438 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00B9C 8089943C 03E00008 */  jr      $ra                        
/* 00BA0 80899440 00000000 */  nop


