glabel EnNy_Destroy
/* 00168 80ABCD18 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0016C 80ABCD1C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00170 80ABCD20 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00174 80ABCD24 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00178 80ABCD28 0C016F32 */  jal     func_8005BCC8              
/* 0017C 80ABCD2C 24C50150 */  addiu   $a1, $a2, 0x0150           ## $a1 = 00000150
/* 00180 80ABCD30 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00184 80ABCD34 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00188 80ABCD38 03E00008 */  jr      $ra                        
/* 0018C 80ABCD3C 00000000 */  nop
