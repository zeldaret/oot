glabel func_8083A388
/* 08178 8083A388 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0817C 8083A38C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 08180 8083A390 3C068085 */  lui     $a2, %hi(func_8084B78C)    ## $a2 = 80850000
/* 08184 8083A394 24C6B78C */  addiu   $a2, $a2, %lo(func_8084B78C) ## $a2 = 8084B78C
/* 08188 8083A398 0C20D716 */  jal     func_80835C58              
/* 0818C 8083A39C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 08190 8083A3A0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 08194 8083A3A4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 08198 8083A3A8 03E00008 */  jr      $ra                        
/* 0819C 8083A3AC 00000000 */  nop


