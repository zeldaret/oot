glabel func_80B3F644
/* 03464 80B3F644 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03468 80B3F648 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0346C 80B3F64C 2405002E */  addiu   $a1, $zero, 0x002E         ## $a1 = 0000002E
/* 03470 80B3F650 0C2CF1EF */  jal     func_80B3C7BC              
/* 03474 80B3F654 2406002F */  addiu   $a2, $zero, 0x002F         ## $a2 = 0000002F
/* 03478 80B3F658 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0347C 80B3F65C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03480 80B3F660 03E00008 */  jr      $ra                        
/* 03484 80B3F664 00000000 */  nop
