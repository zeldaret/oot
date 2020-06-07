glabel func_80A34A80
/* 00460 80A34A80 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00464 80A34A84 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00468 80A34A88 0C28D243 */  jal     func_80A3490C              
/* 0046C 80A34A8C 00000000 */  nop
/* 00470 80A34A90 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00474 80A34A94 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00478 80A34A98 03E00008 */  jr      $ra                        
/* 0047C 80A34A9C 00000000 */  nop
