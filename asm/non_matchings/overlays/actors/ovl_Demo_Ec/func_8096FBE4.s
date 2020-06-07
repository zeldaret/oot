glabel func_8096FBE4
/* 02734 8096FBE4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02738 8096FBE8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0273C 8096FBEC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02740 8096FBF0 0C25B54B */  jal     func_8096D52C              
/* 02744 8096FBF4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02748 8096FBF8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0274C 8096FBFC 0C25B565 */  jal     func_8096D594              
/* 02750 8096FC00 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02754 8096FC04 0C25B5A3 */  jal     func_8096D68C              
/* 02758 8096FC08 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0275C 8096FC0C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02760 8096FC10 0C25B553 */  jal     func_8096D54C              
/* 02764 8096FC14 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02768 8096FC18 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0276C 8096FC1C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02770 8096FC20 03E00008 */  jr      $ra                        
/* 02774 8096FC24 00000000 */  nop
