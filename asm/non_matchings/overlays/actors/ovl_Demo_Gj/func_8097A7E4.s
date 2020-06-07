glabel func_8097A7E4
/* 01EB4 8097A7E4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01EB8 8097A7E8 3C0E0600 */  lui     $t6, 0x0600                ## $t6 = 06000000
/* 01EBC 8097A7EC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01EC0 8097A7F0 25CE2FE4 */  addiu   $t6, $t6, 0x2FE4           ## $t6 = 06002FE4
/* 01EC4 8097A7F4 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 01EC8 8097A7F8 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 01ECC 8097A7FC 0C25E3F3 */  jal     func_80978FCC              
/* 01ED0 8097A800 24070006 */  addiu   $a3, $zero, 0x0006         ## $a3 = 00000006
/* 01ED4 8097A804 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01ED8 8097A808 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01EDC 8097A80C 03E00008 */  jr      $ra                        
/* 01EE0 8097A810 00000000 */  nop
