glabel BgBombwall_Destroy
/* 0036C 8086EB3C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00370 8086EB40 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00374 8086EB44 0C21BAB0 */  jal     func_8086EAC0              
/* 00378 8086EB48 00000000 */  nop
/* 0037C 8086EB4C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00380 8086EB50 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00384 8086EB54 03E00008 */  jr      $ra                        
/* 00388 8086EB58 00000000 */  nop


