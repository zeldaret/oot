glabel func_8097A444
/* 01B14 8097A444 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01B18 8097A448 3C0E0600 */  lui     $t6, %hi(D_06002850)                ## $t6 = 06000000
/* 01B1C 8097A44C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01B20 8097A450 25CE2850 */  addiu   $t6, $t6, %lo(D_06002850)           ## $t6 = 06002850
/* 01B24 8097A454 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 01B28 8097A458 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 01B2C 8097A45C 0C25E3F3 */  jal     func_80978FCC              
/* 01B30 8097A460 24070004 */  addiu   $a3, $zero, 0x0004         ## $a3 = 00000004
/* 01B34 8097A464 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01B38 8097A468 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01B3C 8097A46C 03E00008 */  jr      $ra                        
/* 01B40 8097A470 00000000 */  nop
