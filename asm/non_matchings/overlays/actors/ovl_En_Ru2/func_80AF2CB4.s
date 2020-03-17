glabel func_80AF2CB4
/* 00764 80AF2CB4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00768 80AF2CB8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0076C 80AF2CBC 0C2BCAAD */  jal     func_80AF2AB4              
/* 00770 80AF2CC0 00000000 */  nop
/* 00774 80AF2CC4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00778 80AF2CC8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0077C 80AF2CCC 03E00008 */  jr      $ra                        
/* 00780 80AF2CD0 00000000 */  nop


