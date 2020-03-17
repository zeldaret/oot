glabel Demo6K_Update
/* 01688 80967FD8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0168C 80967FDC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01690 80967FE0 8C990288 */  lw      $t9, 0x0288($a0)           ## 00000288
/* 01694 80967FE4 0320F809 */  jalr    $ra, $t9                   
/* 01698 80967FE8 00000000 */  nop
/* 0169C 80967FEC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 016A0 80967FF0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 016A4 80967FF4 03E00008 */  jr      $ra                        
/* 016A8 80967FF8 00000000 */  nop


