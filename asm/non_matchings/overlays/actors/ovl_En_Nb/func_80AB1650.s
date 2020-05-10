.late_rodata
glabel D_80AB5208
 .word 0x42A6AAAB

.text
glabel func_80AB1650
/* 008C0 80AB1650 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 008C4 80AB1654 3C0180AB */  lui     $at, %hi(D_80AB5208)       ## $at = 80AB0000
/* 008C8 80AB1658 C4265208 */  lwc1    $f6, %lo(D_80AB5208)($at)  
/* 008CC 80AB165C C48400BC */  lwc1    $f4, 0x00BC($a0)           ## 000000BC
/* 008D0 80AB1660 46062200 */  add.s   $f8, $f4, $f6              
/* 008D4 80AB1664 03E00008 */  jr      $ra                        
/* 008D8 80AB1668 E48800BC */  swc1    $f8, 0x00BC($a0)           ## 000000BC
