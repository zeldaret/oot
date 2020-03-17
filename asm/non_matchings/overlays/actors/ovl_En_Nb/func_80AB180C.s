glabel func_80AB180C
/* 00A7C 80AB180C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00A80 80AB1810 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00A84 80AB1814 10A00014 */  beq     $a1, $zero, .L80AB1868     
/* 00A88 80AB1818 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00A8C 80AB181C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00A90 80AB1820 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 00A94 80AB1824 24842B4C */  addiu   $a0, $a0, 0x2B4C           ## $a0 = 06002B4C
/* 00A98 80AB1828 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00A9C 80AB182C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00AA0 80AB1830 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 00AA4 80AB1834 468021A0 */  cvt.s.w $f6, $f4                   
/* 00AA8 80AB1838 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00AAC 80AB183C 44070000 */  mfc1    $a3, $f0                   
/* 00AB0 80AB1840 24A52B4C */  addiu   $a1, $a1, 0x2B4C           ## $a1 = 06002B4C
/* 00AB4 80AB1844 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00AB8 80AB1848 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 00ABC 80AB184C E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 00AC0 80AB1850 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00AC4 80AB1854 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 00AC8 80AB1858 E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 00ACC 80AB185C 8FAF0028 */  lw      $t7, 0x0028($sp)           
/* 00AD0 80AB1860 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 00AD4 80AB1864 ADEE0278 */  sw      $t6, 0x0278($t7)           ## 00000278
.L80AB1868:
/* 00AD8 80AB1868 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00ADC 80AB186C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00AE0 80AB1870 03E00008 */  jr      $ra                        
/* 00AE4 80AB1874 00000000 */  nop


