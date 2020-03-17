glabel func_80B4FE6C
/* 014DC 80B4FE6C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 014E0 80B4FE70 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 014E4 80B4FE74 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
/* 014E8 80B4FE78 0C01E245 */  jal     func_80078914              
/* 014EC 80B4FE7C 240539C7 */  addiu   $a1, $zero, 0x39C7         ## $a1 = 000039C7
/* 014F0 80B4FE80 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 014F4 80B4FE84 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 014F8 80B4FE88 03E00008 */  jr      $ra                        
/* 014FC 80B4FE8C 00000000 */  nop


