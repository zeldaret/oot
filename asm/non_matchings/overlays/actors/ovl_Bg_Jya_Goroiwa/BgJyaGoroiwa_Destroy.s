glabel BgJyaGoroiwa_Destroy
/* 00184 80897AF4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00188 80897AF8 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 0018C 80897AFC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00190 80897B00 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00194 80897B04 0C016F32 */  jal     Collider_DestroyJntSph              
/* 00198 80897B08 24C50150 */  addiu   $a1, $a2, 0x0150           ## $a1 = 00000150
/* 0019C 80897B0C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001A0 80897B10 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001A4 80897B14 03E00008 */  jr      $ra                        
/* 001A8 80897B18 00000000 */  nop
