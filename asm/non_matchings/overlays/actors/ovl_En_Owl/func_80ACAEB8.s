glabel func_80ACAEB8
/* 00F98 80ACAEB8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00F9C 80ACAEBC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00FA0 80ACAEC0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00FA4 80ACAEC4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00FA8 80ACAEC8 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00FAC 80ACAECC 0C042F6F */  jal     func_8010BDBC              
/* 00FB0 80ACAED0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00FB4 80ACAED4 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00FB8 80ACAED8 14410021 */  bne     $v0, $at, .L80ACAF60       
/* 00FBC 80ACAEDC 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 00FC0 80ACAEE0 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00FC4 80ACAEE4 0C041AF2 */  jal     func_80106BC8              
/* 00FC8 80ACAEE8 AFA60024 */  sw      $a2, 0x0024($sp)           
/* 00FCC 80ACAEEC 1040001C */  beq     $v0, $zero, .L80ACAF60     
/* 00FD0 80ACAEF0 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 00FD4 80ACAEF4 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 00FD8 80ACAEF8 00461021 */  addu    $v0, $v0, $a2              
/* 00FDC 80ACAEFC 904204BD */  lbu     $v0, 0x04BD($v0)           ## 000104BD
/* 00FE0 80ACAF00 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00FE4 80ACAF04 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00FE8 80ACAF08 10400005 */  beq     $v0, $zero, .L80ACAF20     
/* 00FEC 80ACAF0C 00000000 */  nop
/* 00FF0 80ACAF10 10410009 */  beq     $v0, $at, .L80ACAF38       
/* 00FF4 80ACAF14 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00FF8 80ACAF18 1000000D */  beq     $zero, $zero, .L80ACAF50   
/* 00FFC 80ACAF1C 961803FC */  lhu     $t8, 0x03FC($s0)           ## 000003FC
.L80ACAF20:
/* 01000 80ACAF20 0C042DC8 */  jal     func_8010B720              
/* 01004 80ACAF24 24052071 */  addiu   $a1, $zero, 0x2071         ## $a1 = 00002071
/* 01008 80ACAF28 3C0E80AD */  lui     $t6, %hi(func_80ACAF74)    ## $t6 = 80AD0000
/* 0100C 80ACAF2C 25CEAF74 */  addiu   $t6, $t6, %lo(func_80ACAF74) ## $t6 = 80ACAF74
/* 01010 80ACAF30 10000006 */  beq     $zero, $zero, .L80ACAF4C   
/* 01014 80ACAF34 AE0E040C */  sw      $t6, 0x040C($s0)           ## 0000040C
.L80ACAF38:
/* 01018 80ACAF38 0C042DC8 */  jal     func_8010B720              
/* 0101C 80ACAF3C 24052072 */  addiu   $a1, $zero, 0x2072         ## $a1 = 00002072
/* 01020 80ACAF40 3C0F80AD */  lui     $t7, %hi(func_80ACA7E0)    ## $t7 = 80AD0000
/* 01024 80ACAF44 25EFA7E0 */  addiu   $t7, $t7, %lo(func_80ACA7E0) ## $t7 = 80ACA7E0
/* 01028 80ACAF48 AE0F040C */  sw      $t7, 0x040C($s0)           ## 0000040C
.L80ACAF4C:
/* 0102C 80ACAF4C 961803FC */  lhu     $t8, 0x03FC($s0)           ## 000003FC
.L80ACAF50:
/* 01030 80ACAF50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01034 80ACAF54 3319FFFD */  andi    $t9, $t8, 0xFFFD           ## $t9 = 00000000
/* 01038 80ACAF58 0C2B29C7 */  jal     func_80ACA71C              
/* 0103C 80ACAF5C A61903FC */  sh      $t9, 0x03FC($s0)           ## 000003FC
.L80ACAF60:
/* 01040 80ACAF60 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01044 80ACAF64 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01048 80ACAF68 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0104C 80ACAF6C 03E00008 */  jr      $ra                        
/* 01050 80ACAF70 00000000 */  nop
