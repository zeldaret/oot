glabel func_8097A9B4
/* 02084 8097A9B4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02088 8097A9B8 3C0E0600 */  lui     $t6, 0x0600                ## $t6 = 06000000
/* 0208C 8097A9BC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02090 8097A9C0 25CE33E0 */  addiu   $t6, $t6, 0x33E0           ## $t6 = 060033E0
/* 02094 8097A9C4 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 02098 8097A9C8 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 0209C 8097A9CC 0C25E3F3 */  jal     func_80978FCC              
/* 020A0 8097A9D0 24070007 */  addiu   $a3, $zero, 0x0007         ## $a3 = 00000007
/* 020A4 8097A9D4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 020A8 8097A9D8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 020AC 8097A9DC 03E00008 */  jr      $ra                        
/* 020B0 8097A9E0 00000000 */  nop


