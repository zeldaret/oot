glabel func_80AF2DAC
/* 0085C 80AF2DAC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00860 80AF2DB0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00864 80AF2DB4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00868 80AF2DB8 0C2BC9D1 */  jal     func_80AF2744              
/* 0086C 80AF2DBC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00870 80AF2DC0 0C2BC9E3 */  jal     func_80AF278C              
/* 00874 80AF2DC4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00878 80AF2DC8 0C2BC982 */  jal     func_80AF2608              
/* 0087C 80AF2DCC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00880 80AF2DD0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00884 80AF2DD4 0C2BCB1A */  jal     func_80AF2C68              
/* 00888 80AF2DD8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 0088C 80AF2DDC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00890 80AF2DE0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00894 80AF2DE4 03E00008 */  jr      $ra                        
/* 00898 80AF2DE8 00000000 */  nop


