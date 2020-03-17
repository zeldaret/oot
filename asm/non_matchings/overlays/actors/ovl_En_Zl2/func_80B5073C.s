glabel func_80B5073C
/* 01DAC 80B5073C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01DB0 80B50740 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01DB4 80B50744 10A0000A */  beq     $a1, $zero, .L80B50770     
/* 01DB8 80B50748 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01DBC 80B5074C 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01DC0 80B50750 24A5AFE0 */  addiu   $a1, $a1, 0xAFE0           ## $a1 = 0600AFE0
/* 01DC4 80B50754 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01DC8 80B50758 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01DCC 80B5075C 0C2D3F40 */  jal     func_80B4FD00              
/* 01DD0 80B50760 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01DD4 80B50764 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 01DD8 80B50768 240E000F */  addiu   $t6, $zero, 0x000F         ## $t6 = 0000000F
/* 01DDC 80B5076C ADEE019C */  sw      $t6, 0x019C($t7)           ## 0000019C
.L80B50770:
/* 01DE0 80B50770 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01DE4 80B50774 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01DE8 80B50778 03E00008 */  jr      $ra                        
/* 01DEC 80B5077C 00000000 */  nop


