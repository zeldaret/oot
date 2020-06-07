glabel EnBlkobj_Update
/* 002A0 809C2300 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002A4 809C2304 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002A8 809C2308 8C990168 */  lw      $t9, 0x0168($a0)           ## 00000168
/* 002AC 809C230C 0320F809 */  jalr    $ra, $t9                   
/* 002B0 809C2310 00000000 */  nop
/* 002B4 809C2314 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 002B8 809C2318 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002BC 809C231C 03E00008 */  jr      $ra                        
/* 002C0 809C2320 00000000 */  nop
