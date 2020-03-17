glabel BgBdanObjects_Update
/* 00FA8 8086CC48 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00FAC 8086CC4C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00FB0 8086CC50 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00FB4 8086CC54 3C054248 */  lui     $a1, 0x4248                ## $a1 = 42480000
/* 00FB8 8086CC58 0C00B56E */  jal     Actor_SetHeight
              
/* 00FBC 8086CC5C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00FC0 8086CC60 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00FC4 8086CC64 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00FC8 8086CC68 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 00FCC 8086CC6C 0320F809 */  jalr    $ra, $t9                   
/* 00FD0 8086CC70 00000000 */  nop
/* 00FD4 8086CC74 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00FD8 8086CC78 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00FDC 8086CC7C 03E00008 */  jr      $ra                        
/* 00FE0 8086CC80 00000000 */  nop


