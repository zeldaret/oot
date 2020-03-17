glabel func_8083A40C
/* 081FC 8083A40C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 08200 8083A410 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 08204 8083A414 3C068085 */  lui     $a2, %hi(func_8084C760)    ## $a2 = 80850000
/* 08208 8083A418 24C6C760 */  addiu   $a2, $a2, %lo(func_8084C760) ## $a2 = 8084C760
/* 0820C 8083A41C 0C20D76B */  jal     func_80835DAC              
/* 08210 8083A420 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 08214 8083A424 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 08218 8083A428 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0821C 8083A42C 03E00008 */  jr      $ra                        
/* 08220 8083A430 00000000 */  nop


