glabel func_80AF2D6C
/* 0081C 80AF2D6C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00820 80AF2D70 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00824 80AF2D74 0C2BC9D1 */  jal     func_80AF2744              
/* 00828 80AF2D78 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0082C 80AF2D7C 0C2BC9E3 */  jal     func_80AF278C              
/* 00830 80AF2D80 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00834 80AF2D84 AFA2001C */  sw      $v0, 0x001C($sp)           
/* 00838 80AF2D88 0C2BC982 */  jal     func_80AF2608              
/* 0083C 80AF2D8C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00840 80AF2D90 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00844 80AF2D94 0C2BCB15 */  jal     func_80AF2C54              
/* 00848 80AF2D98 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 0084C 80AF2D9C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00850 80AF2DA0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00854 80AF2DA4 03E00008 */  jr      $ra                        
/* 00858 80AF2DA8 00000000 */  nop


