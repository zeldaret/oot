glabel func_80AB1D54
/* 00FC4 80AB1D54 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00FC8 80AB1D58 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00FCC 80AB1D5C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00FD0 80AB1D60 0C2AC6C5 */  jal     func_80AB1B14              
/* 00FD4 80AB1D64 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00FD8 80AB1D68 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00FDC 80AB1D6C 0C2AC484 */  jal     func_80AB1210              
/* 00FE0 80AB1D70 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00FE4 80AB1D74 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00FE8 80AB1D78 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00FEC 80AB1D7C 03E00008 */  jr      $ra                        
/* 00FF0 80AB1D80 00000000 */  nop


