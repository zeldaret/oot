glabel func_80AF34F0
/* 00FA0 80AF34F0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00FA4 80AF34F4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00FA8 80AF34F8 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00FAC 80AF34FC AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00FB0 80AF3500 24A5DCAC */  addiu   $a1, $a1, 0xDCAC           ## $a1 = 0600DCAC
/* 00FB4 80AF3504 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00FB8 80AF3508 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00FBC 80AF350C 0C2BCA3A */  jal     func_80AF28E8              
/* 00FC0 80AF3510 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00FC4 80AF3514 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 00FC8 80AF3518 240E000D */  addiu   $t6, $zero, 0x000D         ## $t6 = 0000000D
/* 00FCC 80AF351C ADEE02A8 */  sw      $t6, 0x02A8($t7)           ## 000002A8
/* 00FD0 80AF3520 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00FD4 80AF3524 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00FD8 80AF3528 03E00008 */  jr      $ra                        
/* 00FDC 80AF352C 00000000 */  nop


