glabel func_80ACA7E0
/* 008C0 80ACA7E0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 008C4 80ACA7E4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 008C8 80ACA7E8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 008CC 80ACA7EC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 008D0 80ACA7F0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 008D4 80ACA7F4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 008D8 80ACA7F8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 008DC 80ACA7FC 0C00B7D5 */  jal     func_8002DF54              
/* 008E0 80ACA800 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 008E4 80ACA804 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008E8 80ACA808 0C00BCCD */  jal     func_8002F334              
/* 008EC 80ACA80C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 008F0 80ACA810 10400019 */  beq     $v0, $zero, .L80ACA878     
/* 008F4 80ACA814 3C041100 */  lui     $a0, 0x1100                ## $a0 = 11000000
/* 008F8 80ACA818 0C03E803 */  jal     Audio_SetBGM
              
/* 008FC 80ACA81C 348400FF */  ori     $a0, $a0, 0x00FF           ## $a0 = 110000FF
/* 00900 80ACA820 860E03EE */  lh      $t6, 0x03EE($s0)           ## 000003EE
/* 00904 80ACA824 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00908 80ACA828 31CF003F */  andi    $t7, $t6, 0x003F           ## $t7 = 00000000
/* 0090C 80ACA82C 55E00006 */  bnel    $t7, $zero, .L80ACA848     
/* 00910 80ACA830 961803FC */  lhu     $t8, 0x03FC($s0)           ## 000003FC
/* 00914 80ACA834 0C2B298B */  jal     func_80ACA62C              
/* 00918 80ACA838 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0091C 80ACA83C 1000000A */  beq     $zero, $zero, .L80ACA868   
/* 00920 80ACA840 8E090004 */  lw      $t1, 0x0004($s0)           ## 00000004
/* 00924 80ACA844 961803FC */  lhu     $t8, 0x03FC($s0)           ## 000003FC
.L80ACA848:
/* 00928 80ACA848 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0092C 80ACA84C 3319FFFD */  andi    $t9, $t8, 0xFFFD           ## $t9 = 00000000
/* 00930 80ACA850 0C2B29C7 */  jal     func_80ACA71C              
/* 00934 80ACA854 A61903FC */  sh      $t9, 0x03FC($s0)           ## 000003FC
/* 00938 80ACA858 3C0880AD */  lui     $t0, %hi(func_80ACA690)    ## $t0 = 80AD0000
/* 0093C 80ACA85C 2508A690 */  addiu   $t0, $t0, %lo(func_80ACA690) ## $t0 = 80ACA690
/* 00940 80ACA860 AE08040C */  sw      $t0, 0x040C($s0)           ## 0000040C
/* 00944 80ACA864 8E090004 */  lw      $t1, 0x0004($s0)           ## 00000004
.L80ACA868:
/* 00948 80ACA868 3C01FFFE */  lui     $at, 0xFFFE                ## $at = FFFE0000
/* 0094C 80ACA86C 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
/* 00950 80ACA870 01215024 */  and     $t2, $t1, $at              
/* 00954 80ACA874 AE0A0004 */  sw      $t2, 0x0004($s0)           ## 00000004
.L80ACA878:
/* 00958 80ACA878 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0095C 80ACA87C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00960 80ACA880 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00964 80ACA884 03E00008 */  jr      $ra                        
/* 00968 80ACA888 00000000 */  nop


