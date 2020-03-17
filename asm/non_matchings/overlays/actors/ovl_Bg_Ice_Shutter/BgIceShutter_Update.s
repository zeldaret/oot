glabel BgIceShutter_Update
/* 0037C 80891E3C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00380 80891E40 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00384 80891E44 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 00388 80891E48 0320F809 */  jalr    $ra, $t9                   
/* 0038C 80891E4C 00000000 */  nop
/* 00390 80891E50 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00394 80891E54 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00398 80891E58 03E00008 */  jr      $ra                        
/* 0039C 80891E5C 00000000 */  nop


