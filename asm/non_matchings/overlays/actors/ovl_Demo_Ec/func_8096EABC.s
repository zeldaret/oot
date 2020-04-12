glabel func_8096EABC
/* 0160C 8096EABC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01610 8096EAC0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01614 8096EAC4 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01618 8096EAC8 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 0161C 8096EACC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01620 8096EAD0 0C25B631 */  jal     func_8096D8C4              
/* 01624 8096EAD4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01628 8096EAD8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0162C 8096EADC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01630 8096EAE0 03E00008 */  jr      $ra                        
/* 01634 8096EAE4 00000000 */  nop
