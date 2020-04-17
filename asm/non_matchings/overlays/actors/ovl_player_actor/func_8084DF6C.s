glabel func_8084DF6C
/* 1BD5C 8084DF6C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1BD60 8084DF70 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 1BD64 8084DF74 8CAE067C */  lw      $t6, 0x067C($a1)           ## 0000067C
/* 1BD68 8084DF78 2401F3FF */  addiu   $at, $zero, 0xF3FF         ## $at = FFFFF3FF
/* 1BD6C 8084DF7C A0A00862 */  sb      $zero, 0x0862($a1)         ## 00000862
/* 1BD70 8084DF80 01C17824 */  and     $t7, $t6, $at              
/* 1BD74 8084DF84 ACAF067C */  sw      $t7, 0x067C($a1)           ## 0000067C
/* 1BD78 8084DF88 A0A00434 */  sb      $zero, 0x0434($a1)         ## 00000434
/* 1BD7C 8084DF8C 0C030129 */  jal     Gameplay_GetCamera              
/* 1BD80 8084DF90 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 1BD84 8084DF94 0C016C69 */  jal     func_8005B1A4              
/* 1BD88 8084DF98 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 1BD8C 8084DF9C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 1BD90 8084DFA0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 1BD94 8084DFA4 03E00008 */  jr      $ra                        
/* 1BD98 8084DFA8 00000000 */  nop
