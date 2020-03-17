glabel EnGirlA_Update
/* 01D24 80A3C474 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01D28 80A3C478 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01D2C 80A3C47C 8C990198 */  lw      $t9, 0x0198($a0)           ## 00000198
/* 01D30 80A3C480 0320F809 */  jalr    $ra, $t9                   
/* 01D34 80A3C484 00000000 */  nop
/* 01D38 80A3C488 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01D3C 80A3C48C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01D40 80A3C490 03E00008 */  jr      $ra                        
/* 01D44 80A3C494 00000000 */  nop


