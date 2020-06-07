glabel func_80B553E8
/* 02038 80B553E8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0203C 80B553EC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02040 80B553F0 0C2D66B4 */  jal     func_80B59AD0              
/* 02044 80B553F4 00000000 */  nop
/* 02048 80B553F8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0204C 80B553FC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02050 80B55400 03E00008 */  jr      $ra                        
/* 02054 80B55404 00000000 */  nop
