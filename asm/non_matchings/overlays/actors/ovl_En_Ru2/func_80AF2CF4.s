glabel func_80AF2CF4
/* 007A4 80AF2CF4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 007A8 80AF2CF8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 007AC 80AF2CFC 0C2BCA5E */  jal     func_80AF2978              
/* 007B0 80AF2D00 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 007B4 80AF2D04 0C2BC9E3 */  jal     func_80AF278C              
/* 007B8 80AF2D08 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 007BC 80AF2D0C 0C2BC982 */  jal     func_80AF2608              
/* 007C0 80AF2D10 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 007C4 80AF2D14 0C2BCAE5 */  jal     func_80AF2B94              
/* 007C8 80AF2D18 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 007CC 80AF2D1C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 007D0 80AF2D20 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 007D4 80AF2D24 03E00008 */  jr      $ra                        
/* 007D8 80AF2D28 00000000 */  nop


