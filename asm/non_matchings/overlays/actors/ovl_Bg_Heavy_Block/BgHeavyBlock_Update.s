glabel BgHeavyBlock_Update
/* 01458 80884BE8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0145C 80884BEC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01460 80884BF0 8C990174 */  lw      $t9, 0x0174($a0)           ## 00000174
/* 01464 80884BF4 0320F809 */  jalr    $ra, $t9                   
/* 01468 80884BF8 00000000 */  nop
/* 0146C 80884BFC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01470 80884C00 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01474 80884C04 03E00008 */  jr      $ra                        
/* 01478 80884C08 00000000 */  nop
