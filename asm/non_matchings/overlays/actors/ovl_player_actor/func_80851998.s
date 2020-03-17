glabel func_80851998
/* 1F788 80851998 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 1F78C 8085199C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 1F790 808519A0 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 1F794 808519A4 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 1F798 808519A8 0C211659 */  jal     func_80845964              
/* 1F79C 808519AC 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 1F7A0 808519B0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 1F7A4 808519B4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 1F7A8 808519B8 03E00008 */  jr      $ra                        
/* 1F7AC 808519BC 00000000 */  nop


