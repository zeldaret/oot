glabel func_808AACE0
/* 00000 808AACE0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00004 808AACE4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00008 808AACE8 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
/* 0000C 808AACEC 0C01E245 */  jal     func_80078914              
/* 00010 808AACF0 24052839 */  addiu   $a1, $zero, 0x2839         ## $a1 = 00002839
/* 00014 808AACF4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00018 808AACF8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0001C 808AACFC 03E00008 */  jr      $ra                        
/* 00020 808AAD00 00000000 */  nop
