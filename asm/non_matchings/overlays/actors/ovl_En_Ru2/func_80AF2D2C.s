glabel func_80AF2D2C
/* 007DC 80AF2D2C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 007E0 80AF2D30 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 007E4 80AF2D34 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 007E8 80AF2D38 0C2BC9D1 */  jal     func_80AF2744              
/* 007EC 80AF2D3C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 007F0 80AF2D40 0C2BC9E3 */  jal     func_80AF278C              
/* 007F4 80AF2D44 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 007F8 80AF2D48 0C2BC982 */  jal     func_80AF2608              
/* 007FC 80AF2D4C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00800 80AF2D50 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00804 80AF2D54 0C2BCAF0 */  jal     func_80AF2BC0              
/* 00808 80AF2D58 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 0080C 80AF2D5C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00810 80AF2D60 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00814 80AF2D64 03E00008 */  jr      $ra                        
/* 00818 80AF2D68 00000000 */  nop


