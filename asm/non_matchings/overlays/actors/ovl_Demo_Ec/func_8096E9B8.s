glabel func_8096E9B8
/* 01508 8096E9B8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0150C 8096E9BC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01510 8096E9C0 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 01514 8096E9C4 24C604C8 */  addiu   $a2, $a2, 0x04C8           ## $a2 = 060004C8
/* 01518 8096E9C8 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0151C 8096E9CC AFA00014 */  sw      $zero, 0x0014($sp)         
/* 01520 8096E9D0 0C25B631 */  jal     func_8096D8C4              
/* 01524 8096E9D4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01528 8096E9D8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0152C 8096E9DC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01530 8096E9E0 03E00008 */  jr      $ra                        
/* 01534 8096E9E4 00000000 */  nop


