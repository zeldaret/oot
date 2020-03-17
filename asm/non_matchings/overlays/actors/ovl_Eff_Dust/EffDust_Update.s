glabel EffDust_Update
/* 00C00 8099E4D0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C04 8099E4D4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C08 8099E4D8 8C990560 */  lw      $t9, 0x0560($a0)           ## 00000560
/* 00C0C 8099E4DC 0320F809 */  jalr    $ra, $t9                   
/* 00C10 8099E4E0 00000000 */  nop
/* 00C14 8099E4E4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C18 8099E4E8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C1C 8099E4EC 03E00008 */  jr      $ra                        
/* 00C20 8099E4F0 00000000 */  nop


