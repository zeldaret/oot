glabel DemoKankyo_Update
/* 00B08 80989988 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B0C 8098998C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B10 80989990 8C990600 */  lw      $t9, 0x0600($a0)           ## 00000600
/* 00B14 80989994 0320F809 */  jalr    $ra, $t9                   
/* 00B18 80989998 00000000 */  nop
/* 00B1C 8098999C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B20 809899A0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00B24 809899A4 03E00008 */  jr      $ra                        
/* 00B28 809899A8 00000000 */  nop


