glabel BgJyaBombchuiwa_Update
/* 00638 80894AD8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0063C 80894ADC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00640 80894AE0 8C82014C */  lw      $v0, 0x014C($a0)           ## 0000014C
/* 00644 80894AE4 50400004 */  beql    $v0, $zero, .L80894AF8     
/* 00648 80894AE8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0064C 80894AEC 0040F809 */  jalr    $ra, $v0                   
/* 00650 80894AF0 00000000 */  nop
/* 00654 80894AF4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80894AF8:
/* 00658 80894AF8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0065C 80894AFC 03E00008 */  jr      $ra                        
/* 00660 80894B00 00000000 */  nop


