glabel func_80AEEBB4
/* 03FA4 80AEEBB4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03FA8 80AEEBB8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03FAC 80AEEBBC 0C00BD60 */  jal     func_8002F580              
/* 03FB0 80AEEBC0 00000000 */  nop
/* 03FB4 80AEEBC4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03FB8 80AEEBC8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03FBC 80AEEBCC 03E00008 */  jr      $ra                        
/* 03FC0 80AEEBD0 00000000 */  nop
