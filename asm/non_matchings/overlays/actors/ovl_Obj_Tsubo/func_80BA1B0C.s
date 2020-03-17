glabel func_80BA1B0C
/* 00DAC 80BA1B0C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00DB0 80BA1B10 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00DB4 80BA1B14 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00DB8 80BA1B18 84EE001C */  lh      $t6, 0x001C($a3)           ## 0000001C
/* 00DBC 80BA1B1C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00DC0 80BA1B20 3C0580BA */  lui     $a1, %hi(D_80BA1B84)       ## $a1 = 80BA0000
/* 00DC4 80BA1B24 000E7A03 */  sra     $t7, $t6,  8               
/* 00DC8 80BA1B28 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 00DCC 80BA1B2C 0018C880 */  sll     $t9, $t8,  2               
/* 00DD0 80BA1B30 00B92821 */  addu    $a1, $a1, $t9              
/* 00DD4 80BA1B34 0C00D498 */  jal     Draw_DListOpa
              
/* 00DD8 80BA1B38 8CA51B84 */  lw      $a1, %lo(D_80BA1B84)($a1)  
/* 00DDC 80BA1B3C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00DE0 80BA1B40 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00DE4 80BA1B44 03E00008 */  jr      $ra                        
/* 00DE8 80BA1B48 00000000 */  nop
/* 00DEC 80BA1B4C 00000000 */  nop

