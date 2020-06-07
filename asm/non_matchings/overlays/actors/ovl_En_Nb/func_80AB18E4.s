glabel func_80AB18E4
/* 00B54 80AB18E4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B58 80AB18E8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B5C 80AB18EC 0C2AC5BF */  jal     func_80AB16FC              
/* 00B60 80AB18F0 00000000 */  nop
/* 00B64 80AB18F4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B68 80AB18F8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00B6C 80AB18FC 03E00008 */  jr      $ra                        
/* 00B70 80AB1900 00000000 */  nop
