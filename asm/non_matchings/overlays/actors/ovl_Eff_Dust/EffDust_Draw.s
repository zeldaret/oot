glabel EffDust_Draw
/* 0124C 8099EB1C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01250 8099EB20 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01254 8099EB24 8C990564 */  lw      $t9, 0x0564($a0)           ## 00000564
/* 01258 8099EB28 0320F809 */  jalr    $ra, $t9                   
/* 0125C 8099EB2C 00000000 */  nop
/* 01260 8099EB30 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01264 8099EB34 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01268 8099EB38 03E00008 */  jr      $ra                        
/* 0126C 8099EB3C 00000000 */  nop

