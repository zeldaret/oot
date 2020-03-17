glabel func_80AF2B94
/* 00644 80AF2B94 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00648 80AF2B98 C48400BC */  lwc1    $f4, 0x00BC($a0)           ## 000000BC
/* 0064C 80AF2B9C 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 00650 80AF2BA0 4604003E */  c.le.s  $f0, $f4                   
/* 00654 80AF2BA4 00000000 */  nop
/* 00658 80AF2BA8 45000003 */  bc1f    .L80AF2BB8                 
/* 0065C 80AF2BAC 00000000 */  nop
/* 00660 80AF2BB0 AC8E02A8 */  sw      $t6, 0x02A8($a0)           ## 000002A8
/* 00664 80AF2BB4 E48000BC */  swc1    $f0, 0x00BC($a0)           ## 000000BC
.L80AF2BB8:
/* 00668 80AF2BB8 03E00008 */  jr      $ra                        
/* 0066C 80AF2BBC 00000000 */  nop


