glabel func_80AF366C
/* 0111C 80AF366C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01120 80AF3670 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01124 80AF3674 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01128 80AF3678 0C2BC9D1 */  jal     func_80AF2744              
/* 0112C 80AF367C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01130 80AF3680 0C2BC9E3 */  jal     func_80AF278C              
/* 01134 80AF3684 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01138 80AF3688 0C2BC982 */  jal     func_80AF2608              
/* 0113C 80AF368C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01140 80AF3690 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01144 80AF3694 0C2BCD59 */  jal     func_80AF3564              
/* 01148 80AF3698 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 0114C 80AF369C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01150 80AF36A0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01154 80AF36A4 03E00008 */  jr      $ra                        
/* 01158 80AF36A8 00000000 */  nop


