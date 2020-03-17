glabel func_80B02598
/* 00328 80B02598 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0032C 80B0259C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00330 80B025A0 0C009AC3 */  jal     func_80026B0C              
/* 00334 80B025A4 8C840538 */  lw      $a0, 0x0538($a0)           ## 00000538
/* 00338 80B025A8 0C008048 */  jal     func_80020120              
/* 0033C 80B025AC 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 00340 80B025B0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00344 80B025B4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00348 80B025B8 03E00008 */  jr      $ra                        
/* 0034C 80B025BC 00000000 */  nop


