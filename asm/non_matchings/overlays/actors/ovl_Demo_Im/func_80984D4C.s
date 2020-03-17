glabel func_80984D4C
/* 0016C 80984D4C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00170 80984D50 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00174 80984D54 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00178 80984D58 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0017C 80984D5C 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00180 80984D60 24C50284 */  addiu   $a1, $a2, 0x0284           ## $a1 = 00000284
/* 00184 80984D64 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00188 80984D68 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0018C 80984D6C 03E00008 */  jr      $ra                        
/* 00190 80984D70 00000000 */  nop


