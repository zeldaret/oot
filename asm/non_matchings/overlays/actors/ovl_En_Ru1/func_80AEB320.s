glabel func_80AEB320
/* 00710 80AEB320 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00714 80AEB324 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00718 80AEB328 8C8E0264 */  lw      $t6, 0x0264($a0)           ## 00000264
/* 0071C 80AEB32C 24010020 */  addiu   $at, $zero, 0x0020         ## $at = 00000020
/* 00720 80AEB330 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 00724 80AEB334 11C10005 */  beq     $t6, $at, .L80AEB34C       
/* 00728 80AEB338 00000000 */  nop
/* 0072C 80AEB33C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00730 80AEB340 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00734 80AEB344 10000004 */  beq     $zero, $zero, .L80AEB358   
/* 00738 80AEB348 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AEB34C:
/* 0073C 80AEB34C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00740 80AEB350 24A4014C */  addiu   $a0, $a1, 0x014C           ## $a0 = 0000014C
/* 00744 80AEB354 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AEB358:
/* 00748 80AEB358 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0074C 80AEB35C 03E00008 */  jr      $ra                        
/* 00750 80AEB360 00000000 */  nop


