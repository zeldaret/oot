glabel func_80AC0D7C
/* 0071C 80AC0D7C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00720 80AC0D80 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00724 80AC0D84 240E0050 */  addiu   $t6, $zero, 0x0050         ## $t6 = 00000050
/* 00728 80AC0D88 A48E0194 */  sh      $t6, 0x0194($a0)           ## 00000194
/* 0072C 80AC0D8C 240F0050 */  addiu   $t7, $zero, 0x0050         ## $t7 = 00000050
/* 00730 80AC0D90 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 00734 80AC0D94 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00738 80AC0D98 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0073C 80AC0D9C 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 00740 80AC0DA0 0C00D09B */  jal     func_8003426C              
/* 00744 80AC0DA4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00748 80AC0DA8 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 0074C 80AC0DAC 3C1880AC */  lui     $t8, %hi(func_80AC17BC)    ## $t8 = 80AC0000
/* 00750 80AC0DB0 271817BC */  addiu   $t8, $t8, %lo(func_80AC17BC) ## $t8 = 80AC17BC
/* 00754 80AC0DB4 AC980190 */  sw      $t8, 0x0190($a0)           ## 00000190
/* 00758 80AC0DB8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0075C 80AC0DBC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00760 80AC0DC0 03E00008 */  jr      $ra                        
/* 00764 80AC0DC4 00000000 */  nop
