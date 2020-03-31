glabel func_808DBEC4
/* 05654 808DBEC4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 05658 808DBEC8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0565C 808DBECC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 05660 808DBED0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 05664 808DBED4 0C235C4B */  jal     func_808D712C              
/* 05668 808DBED8 2406017C */  addiu   $a2, $zero, 0x017C         ## $a2 = 0000017C
/* 0566C 808DBEDC 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 05670 808DBEE0 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 05674 808DBEE4 2484AA24 */  addiu   $a0, $a0, 0xAA24           ## $a0 = 0600AA24
/* 05678 808DBEE8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 0567C 808DBEEC 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 05680 808DBEF0 24A5AA24 */  addiu   $a1, $a1, 0xAA24           ## $a1 = 0600AA24
/* 05684 808DBEF4 468021A0 */  cvt.s.w $f6, $f4                   
/* 05688 808DBEF8 26040150 */  addiu   $a0, $s0, 0x0150           ## $a0 = 00000150
/* 0568C 808DBEFC 3C06C040 */  lui     $a2, 0xC040                ## $a2 = C0400000
/* 05690 808DBF00 0C029490 */  jal     SkelAnime_ChangeAnimationTransitionStop              
/* 05694 808DBF04 E60601CC */  swc1    $f6, 0x01CC($s0)           ## 000001CC
/* 05698 808DBF08 3C0E808E */  lui     $t6, %hi(func_808DBF30)    ## $t6 = 808E0000
/* 0569C 808DBF0C 25CEBF30 */  addiu   $t6, $t6, %lo(func_808DBF30) ## $t6 = 808DBF30
/* 056A0 808DBF10 240F0019 */  addiu   $t7, $zero, 0x0019         ## $t7 = 00000019
/* 056A4 808DBF14 AE0E0194 */  sw      $t6, 0x0194($s0)           ## 00000194
/* 056A8 808DBF18 A60F01B6 */  sh      $t7, 0x01B6($s0)           ## 000001B6
/* 056AC 808DBF1C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 056B0 808DBF20 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 056B4 808DBF24 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 056B8 808DBF28 03E00008 */  jr      $ra                        
/* 056BC 808DBF2C 00000000 */  nop


