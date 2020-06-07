glabel func_80B3EEA4
/* 02CC4 80B3EEA4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02CC8 80B3EEA8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02CCC 80B3EEAC 2405001E */  addiu   $a1, $zero, 0x001E         ## $a1 = 0000001E
/* 02CD0 80B3EEB0 0C2CF1EF */  jal     func_80B3C7BC              
/* 02CD4 80B3EEB4 2406001F */  addiu   $a2, $zero, 0x001F         ## $a2 = 0000001F
/* 02CD8 80B3EEB8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02CDC 80B3EEBC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02CE0 80B3EEC0 03E00008 */  jr      $ra                        
/* 02CE4 80B3EEC4 00000000 */  nop
