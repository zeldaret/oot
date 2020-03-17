glabel func_80AC3AE0
/* 00E40 80AC3AE0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00E44 80AC3AE4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00E48 80AC3AE8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00E4C 80AC3AEC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00E50 80AC3AF0 0C01E221 */  jal     func_80078884              
/* 00E54 80AC3AF4 24044809 */  addiu   $a0, $zero, 0x4809         ## $a0 = 00004809
/* 00E58 80AC3AF8 8FA2001C */  lw      $v0, 0x001C($sp)           
/* 00E5C 80AC3AFC 240E0008 */  addiu   $t6, $zero, 0x0008         ## $t6 = 00000008
/* 00E60 80AC3B00 A0400251 */  sb      $zero, 0x0251($v0)         ## 00000251
/* 00E64 80AC3B04 A44E01FC */  sh      $t6, 0x01FC($v0)           ## 000001FC
/* 00E68 80AC3B08 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00E6C 80AC3B0C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00E70 80AC3B10 03E00008 */  jr      $ra                        
/* 00E74 80AC3B14 00000000 */  nop


