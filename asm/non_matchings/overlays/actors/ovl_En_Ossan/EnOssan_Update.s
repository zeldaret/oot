glabel EnOssan_Update
/* 04828 80AC74C8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0482C 80AC74CC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04830 80AC74D0 848E01E4 */  lh      $t6, 0x01E4($a0)           ## 000001E4
/* 04834 80AC74D4 8C990190 */  lw      $t9, 0x0190($a0)           ## 00000190
/* 04838 80AC74D8 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 0483C 80AC74DC 0320F809 */  jalr    $ra, $t9                   
/* 04840 80AC74E0 A48F01E4 */  sh      $t7, 0x01E4($a0)           ## 000001E4
/* 04844 80AC74E4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04848 80AC74E8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0484C 80AC74EC 03E00008 */  jr      $ra                        
/* 04850 80AC74F0 00000000 */  nop


