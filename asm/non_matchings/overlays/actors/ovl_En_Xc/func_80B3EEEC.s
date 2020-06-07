glabel func_80B3EEEC
/* 02D0C 80B3EEEC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02D10 80B3EEF0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02D14 80B3EEF4 24050020 */  addiu   $a1, $zero, 0x0020         ## $a1 = 00000020
/* 02D18 80B3EEF8 0C2CF1EF */  jal     func_80B3C7BC              
/* 02D1C 80B3EEFC 24060021 */  addiu   $a2, $zero, 0x0021         ## $a2 = 00000021
/* 02D20 80B3EF00 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02D24 80B3EF04 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02D28 80B3EF08 03E00008 */  jr      $ra                        
/* 02D2C 80B3EF0C 00000000 */  nop
