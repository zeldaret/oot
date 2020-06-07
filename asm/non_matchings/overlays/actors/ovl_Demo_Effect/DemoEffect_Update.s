glabel DemoEffect_Update
/* 03740 80974690 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03744 80974694 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03748 80974698 8C99019C */  lw      $t9, 0x019C($a0)           ## 0000019C
/* 0374C 8097469C 0320F809 */  jalr    $ra, $t9                   
/* 03750 809746A0 00000000 */  nop
/* 03754 809746A4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03758 809746A8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0375C 809746AC 03E00008 */  jr      $ra                        
/* 03760 809746B0 00000000 */  nop
