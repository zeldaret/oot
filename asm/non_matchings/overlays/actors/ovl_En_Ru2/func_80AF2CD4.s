glabel func_80AF2CD4
/* 00784 80AF2CD4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00788 80AF2CD8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0078C 80AF2CDC 0C2BCAD1 */  jal     func_80AF2B44              
/* 00790 80AF2CE0 00000000 */  nop
/* 00794 80AF2CE4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00798 80AF2CE8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0079C 80AF2CEC 03E00008 */  jr      $ra                        
/* 007A0 80AF2CF0 00000000 */  nop


