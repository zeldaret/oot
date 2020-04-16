glabel func_80B3EEC8
/* 02CE8 80B3EEC8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02CEC 80B3EECC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02CF0 80B3EED0 2405001F */  addiu   $a1, $zero, 0x001F         ## $a1 = 0000001F
/* 02CF4 80B3EED4 0C2CF1EF */  jal     func_80B3C7BC              
/* 02CF8 80B3EED8 24060020 */  addiu   $a2, $zero, 0x0020         ## $a2 = 00000020
/* 02CFC 80B3EEDC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02D00 80B3EEE0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02D04 80B3EEE4 03E00008 */  jr      $ra                        
/* 02D08 80B3EEE8 00000000 */  nop
