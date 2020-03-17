glabel func_808519C0
/* 1F7B0 808519C0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 1F7B4 808519C4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 1F7B8 808519C8 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 1F7BC 808519CC AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 1F7C0 808519D0 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 1F7C4 808519D4 0C211659 */  jal     func_80845964              
/* 1F7C8 808519D8 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 1F7CC 808519DC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 1F7D0 808519E0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 1F7D4 808519E4 03E00008 */  jr      $ra                        
/* 1F7D8 808519E8 00000000 */  nop


