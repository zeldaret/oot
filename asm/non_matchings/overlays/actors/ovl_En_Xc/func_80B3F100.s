glabel func_80B3F100
/* 02F20 80B3F100 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02F24 80B3F104 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02F28 80B3F108 2405002B */  addiu   $a1, $zero, 0x002B         ## $a1 = 0000002B
/* 02F2C 80B3F10C 0C2CF1EF */  jal     func_80B3C7BC              
/* 02F30 80B3F110 2406002C */  addiu   $a2, $zero, 0x002C         ## $a2 = 0000002C
/* 02F34 80B3F114 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02F38 80B3F118 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02F3C 80B3F11C 03E00008 */  jr      $ra                        
/* 02F40 80B3F120 00000000 */  nop


