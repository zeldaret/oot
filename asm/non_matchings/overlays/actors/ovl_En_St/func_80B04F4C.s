glabel func_80B04F4C
/* 006BC 80B04F4C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 006C0 80B04F50 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 006C4 80B04F54 0C009AC3 */  jal     Effect_GetByIndex              
/* 006C8 80B04F58 8C840404 */  lw      $a0, 0x0404($a0)           ## 00000404
/* 006CC 80B04F5C 0C008048 */  jal     EffectBlure_AddSpace              
/* 006D0 80B04F60 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 006D4 80B04F64 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 006D8 80B04F68 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 006DC 80B04F6C 03E00008 */  jr      $ra                        
/* 006E0 80B04F70 00000000 */  nop
