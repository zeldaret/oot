glabel func_8097AB84
/* 02254 8097AB84 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02258 8097AB88 3C0E0600 */  lui     $t6, 0x0600                ## $t6 = 06000000
/* 0225C 8097AB8C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02260 8097AB90 25CE3AF0 */  addiu   $t6, $t6, 0x3AF0           ## $t6 = 06003AF0
/* 02264 8097AB94 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 02268 8097AB98 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 0226C 8097AB9C 0C25E3F3 */  jal     func_80978FCC              
/* 02270 8097ABA0 24070008 */  addiu   $a3, $zero, 0x0008         ## $a3 = 00000008
/* 02274 8097ABA4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02278 8097ABA8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0227C 8097ABAC 03E00008 */  jr      $ra                        
/* 02280 8097ABB0 00000000 */  nop
