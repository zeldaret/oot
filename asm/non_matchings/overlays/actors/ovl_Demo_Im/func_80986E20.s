glabel func_80986E20
/* 02240 80986E20 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02244 80986E24 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02248 80986E28 0C261AE8 */  jal     func_80986BA0              
/* 0224C 80986E2C 00000000 */  nop
/* 02250 80986E30 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02254 80986E34 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02258 80986E38 03E00008 */  jr      $ra                        
/* 0225C 80986E3C 00000000 */  nop


