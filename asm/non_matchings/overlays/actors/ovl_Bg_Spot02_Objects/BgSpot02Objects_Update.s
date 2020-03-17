glabel BgSpot02Objects_Update
/* 00578 808ACBD8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0057C 808ACBDC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00580 808ACBE0 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 00584 808ACBE4 0320F809 */  jalr    $ra, $t9                   
/* 00588 808ACBE8 00000000 */  nop
/* 0058C 808ACBEC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00590 808ACBF0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00594 808ACBF4 03E00008 */  jr      $ra                        
/* 00598 808ACBF8 00000000 */  nop


