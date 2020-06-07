glabel func_80ADF574
/* 01824 80ADF574 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01828 80ADF578 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0182C 80ADF57C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01830 80ADF580 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01834 80ADF584 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01838 80ADF588 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 0183C 80ADF58C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01840 80ADF590 10400008 */  beq     $v0, $zero, .L80ADF5B4     
/* 01844 80ADF594 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 01848 80ADF598 860E00B6 */  lh      $t6, 0x00B6($s0)           ## 000000B6
/* 0184C 80ADF59C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01850 80ADF5A0 0C2B785B */  jal     func_80ADE16C              
/* 01854 80ADF5A4 A60E0032 */  sh      $t6, 0x0032($s0)           ## 00000032
/* 01858 80ADF5A8 240F0017 */  addiu   $t7, $zero, 0x0017         ## $t7 = 00000017
/* 0185C 80ADF5AC 10000007 */  beq     $zero, $zero, .L80ADF5CC   
/* 01860 80ADF5B0 A60F0198 */  sh      $t7, 0x0198($s0)           ## 00000198
.L80ADF5B4:
/* 01864 80ADF5B4 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 01868 80ADF5B8 0C01DE80 */  jal     Math_ApproxF
              
/* 0186C 80ADF5BC 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 01870 80ADF5C0 861800B6 */  lh      $t8, 0x00B6($s0)           ## 000000B6
/* 01874 80ADF5C4 27191000 */  addiu   $t9, $t8, 0x1000           ## $t9 = 00001000
/* 01878 80ADF5C8 A61900B6 */  sh      $t9, 0x00B6($s0)           ## 000000B6
.L80ADF5CC:
/* 0187C 80ADF5CC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01880 80ADF5D0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01884 80ADF5D4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01888 80ADF5D8 03E00008 */  jr      $ra                        
/* 0188C 80ADF5DC 00000000 */  nop
