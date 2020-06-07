glabel EfcErupc_Update
/* 002C8 8099CF78 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002CC 8099CF7C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002D0 8099CF80 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 002D4 8099CF84 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 002D8 8099CF88 8C9918C8 */  lw      $t9, 0x18C8($a0)           ## 000018C8
/* 002DC 8099CF8C 0320F809 */  jalr    $ra, $t9                   
/* 002E0 8099CF90 00000000 */  nop
/* 002E4 8099CF94 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 002E8 8099CF98 0C26754B */  jal     func_8099D52C              
/* 002EC 8099CF9C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 002F0 8099CFA0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 002F4 8099CFA4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002F8 8099CFA8 03E00008 */  jr      $ra                        
/* 002FC 8099CFAC 00000000 */  nop
