glabel func_8097F19C
/* 01B2C 8097F19C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01B30 8097F1A0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01B34 8097F1A4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01B38 8097F1A8 0C25FBCD */  jal     func_8097EF34              
/* 01B3C 8097F1AC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01B40 8097F1B0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01B44 8097F1B4 0C25FBD0 */  jal     func_8097EF40              
/* 01B48 8097F1B8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01B4C 8097F1BC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01B50 8097F1C0 0C25FC2B */  jal     func_8097F0AC              
/* 01B54 8097F1C4 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01B58 8097F1C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01B5C 8097F1CC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01B60 8097F1D0 03E00008 */  jr      $ra                        
/* 01B64 8097F1D4 00000000 */  nop
