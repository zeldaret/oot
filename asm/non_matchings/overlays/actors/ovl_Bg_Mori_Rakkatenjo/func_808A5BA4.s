glabel func_808A5BA4
/* 00634 808A5BA4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00638 808A5BA8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0063C 808A5BAC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00640 808A5BB0 8C8E0168 */  lw      $t6, 0x0168($a0)           ## 00000168
/* 00644 808A5BB4 5DC00004 */  bgtzl   $t6, .L808A5BC8            
/* 00648 808A5BB8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0064C 808A5BBC 0C2296F5 */  jal     func_808A5BD4              
/* 00650 808A5BC0 00000000 */  nop
/* 00654 808A5BC4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808A5BC8:
/* 00658 808A5BC8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0065C 808A5BCC 03E00008 */  jr      $ra                        
/* 00660 808A5BD0 00000000 */  nop


