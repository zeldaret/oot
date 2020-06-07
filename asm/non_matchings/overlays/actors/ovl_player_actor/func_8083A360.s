glabel func_8083A360
/* 08150 8083A360 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 08154 8083A364 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 08158 8083A368 3C068085 */  lui     $a2, %hi(func_8084CC98)    ## $a2 = 80850000
/* 0815C 8083A36C 24C6CC98 */  addiu   $a2, $a2, %lo(func_8084CC98) ## $a2 = 8084CC98
/* 08160 8083A370 0C20D76B */  jal     func_80835DAC              
/* 08164 8083A374 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 08168 8083A378 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0816C 8083A37C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 08170 8083A380 03E00008 */  jr      $ra                        
/* 08174 8083A384 00000000 */  nop
