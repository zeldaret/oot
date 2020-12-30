glabel func_8097A614
/* 01CE4 8097A614 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01CE8 8097A618 3C0E0600 */  lui     $t6, %hi(D_06002D28)                ## $t6 = 06000000
/* 01CEC 8097A61C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01CF0 8097A620 25CE2D28 */  addiu   $t6, $t6, %lo(D_06002D28)           ## $t6 = 06002D28
/* 01CF4 8097A624 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 01CF8 8097A628 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 01CFC 8097A62C 0C25E3F3 */  jal     func_80978FCC              
/* 01D00 8097A630 24070005 */  addiu   $a3, $zero, 0x0005         ## $a3 = 00000005
/* 01D04 8097A634 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01D08 8097A638 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01D0C 8097A63C 03E00008 */  jr      $ra                        
/* 01D10 8097A640 00000000 */  nop
