glabel func_80979FD0
/* 016A0 80979FD0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 016A4 80979FD4 3C0E0600 */  lui     $t6, 0x0600                ## $t6 = 06000000
/* 016A8 80979FD8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 016AC 80979FDC 25CE1F70 */  addiu   $t6, $t6, 0x1F70           ## $t6 = 06001F70
/* 016B0 80979FE0 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 016B4 80979FE4 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 016B8 80979FE8 0C25E3F3 */  jal     func_80978FCC              
/* 016BC 80979FEC 24070002 */  addiu   $a3, $zero, 0x0002         ## $a3 = 00000002
/* 016C0 80979FF0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 016C4 80979FF4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 016C8 80979FF8 03E00008 */  jr      $ra                        
/* 016CC 80979FFC 00000000 */  nop
