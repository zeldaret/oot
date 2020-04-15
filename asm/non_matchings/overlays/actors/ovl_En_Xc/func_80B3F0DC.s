glabel func_80B3F0DC
/* 02EFC 80B3F0DC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02F00 80B3F0E0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02F04 80B3F0E4 2405002A */  addiu   $a1, $zero, 0x002A         ## $a1 = 0000002A
/* 02F08 80B3F0E8 0C2CF1EF */  jal     func_80B3C7BC              
/* 02F0C 80B3F0EC 2406002B */  addiu   $a2, $zero, 0x002B         ## $a2 = 0000002B
/* 02F10 80B3F0F0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02F14 80B3F0F4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02F18 80B3F0F8 03E00008 */  jr      $ra                        
/* 02F1C 80B3F0FC 00000000 */  nop
