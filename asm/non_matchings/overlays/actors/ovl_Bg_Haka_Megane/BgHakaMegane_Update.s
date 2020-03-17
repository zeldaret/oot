glabel BgHakaMegane_Update
/* 00230 8087DC70 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00234 8087DC74 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00238 8087DC78 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 0023C 8087DC7C 0320F809 */  jalr    $ra, $t9                   
/* 00240 8087DC80 00000000 */  nop
/* 00244 8087DC84 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00248 8087DC88 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0024C 8087DC8C 03E00008 */  jr      $ra                        
/* 00250 8087DC90 00000000 */  nop


