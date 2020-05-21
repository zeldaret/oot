glabel EnTp_Destroy
/* 0027C 80B2105C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00280 80B21060 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00284 80B21064 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00288 80B21068 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0028C 80B2106C 0C016F32 */  jal     Collider_DestroyJntSph              
/* 00290 80B21070 24C50174 */  addiu   $a1, $a2, 0x0174           ## $a1 = 00000174
/* 00294 80B21074 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00298 80B21078 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0029C 80B2107C 03E00008 */  jr      $ra                        
/* 002A0 80B21080 00000000 */  nop
