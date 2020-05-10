glabel BgYdanHasi_Update
/* 0056C 808BEA6C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00570 808BEA70 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00574 808BEA74 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 00578 808BEA78 0320F809 */  jalr    $ra, $t9                   
/* 0057C 808BEA7C 00000000 */  nop
/* 00580 808BEA80 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00584 808BEA84 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00588 808BEA88 03E00008 */  jr      $ra                        
/* 0058C 808BEA8C 00000000 */  nop
