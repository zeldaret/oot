glabel func_8097A208
/* 018D8 8097A208 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 018DC 8097A20C 3C0E0600 */  lui     $t6, 0x0600                ## $t6 = 06000000
/* 018E0 8097A210 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 018E4 8097A214 25CE2448 */  addiu   $t6, $t6, 0x2448           ## $t6 = 06002448
/* 018E8 8097A218 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 018EC 8097A21C 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 018F0 8097A220 0C25E3F3 */  jal     func_80978FCC              
/* 018F4 8097A224 24070003 */  addiu   $a3, $zero, 0x0003         ## $a3 = 00000003
/* 018F8 8097A228 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 018FC 8097A22C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01900 8097A230 03E00008 */  jr      $ra                        
/* 01904 8097A234 00000000 */  nop


