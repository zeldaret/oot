glabel func_80AFFA0C
/* 0175C 80AFFA0C 3C078016 */  lui     $a3, %hi(gSaveContext)
/* 01760 80AFFA10 24E7E660 */  addiu   $a3, %lo(gSaveContext)
/* 01764 80AFFA14 94EE0EF2 */  lhu     $t6, 0x0EF2($a3)           ## 8015F552
/* 01768 80AFFA18 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0176C 80AFFA1C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01770 80AFFA20 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 01774 80AFFA24 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 01778 80AFFA28 31CF0040 */  andi    $t7, $t6, 0x0040           ## $t7 = 00000000
/* 0177C 80AFFA2C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01780 80AFFA30 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 01784 80AFFA34 15E0001B */  bne     $t7, $zero, .L80AFFAA4     
/* 01788 80AFFA38 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 0178C 80AFFA3C 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 01790 80AFFA40 00451021 */  addu    $v0, $v0, $a1              
/* 01794 80AFFA44 904203DC */  lbu     $v0, 0x03DC($v0)           ## 000103DC
/* 01798 80AFFA48 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 0179C 80AFFA4C 24180004 */  addiu   $t8, $zero, 0x0004         ## $t8 = 00000004
/* 017A0 80AFFA50 10410003 */  beq     $v0, $at, .L80AFFA60       
/* 017A4 80AFFA54 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 017A8 80AFFA58 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 017AC 80AFFA5C 14410011 */  bne     $v0, $at, .L80AFFAA4       
.L80AFFA60:
/* 017B0 80AFFA60 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 017B4 80AFFA64 00310821 */  addu    $at, $at, $s1              
/* 017B8 80AFFA68 A43804C6 */  sh      $t8, 0x04C6($at)           ## 000104C6
/* 017BC 80AFFA6C 0C041B33 */  jal     func_80106CCC              
/* 017C0 80AFFA70 AFA3002C */  sw      $v1, 0x002C($sp)           
/* 017C4 80AFFA74 8FA3002C */  lw      $v1, 0x002C($sp)           
/* 017C8 80AFFA78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 017CC 80AFFA7C 0C2BFA5A */  jal     func_80AFE968              
/* 017D0 80AFFA80 AC7006A8 */  sw      $s0, 0x06A8($v1)           ## 000006A8
/* 017D4 80AFFA84 44060000 */  mfc1    $a2, $f0                   
/* 017D8 80AFFA88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 017DC 80AFFA8C 0C00BCB3 */  jal     func_8002F2CC              
/* 017E0 80AFFA90 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 017E4 80AFFA94 0C2C00FD */  jal     func_80B003F4              
/* 017E8 80AFFA98 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 017EC 80AFFA9C 1000008C */  beq     $zero, $zero, .L80AFFCD0   
/* 017F0 80AFFAA0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AFFAA4:
/* 017F4 80AFFAA4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 017F8 80AFFAA8 02213021 */  addu    $a2, $s1, $at              
/* 017FC 80AFFAAC 90C203DC */  lbu     $v0, 0x03DC($a2)           ## 000003DC
/* 01800 80AFFAB0 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 01804 80AFFAB4 54410010 */  bnel    $v0, $at, .L80AFFAF8       
/* 01808 80AFFAB8 920902D6 */  lbu     $t1, 0x02D6($s0)           ## 000002D6
/* 0180C 80AFFABC 921902D6 */  lbu     $t9, 0x02D6($s0)           ## 000002D6
/* 01810 80AFFAC0 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 01814 80AFFAC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01818 80AFFAC8 1720000A */  bne     $t9, $zero, .L80AFFAF4     
/* 0181C 80AFFACC 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 01820 80AFFAD0 A20802D6 */  sb      $t0, 0x02D6($s0)           ## 000002D6
/* 01824 80AFFAD4 AFA60024 */  sw      $a2, 0x0024($sp)           
/* 01828 80AFFAD8 0C2BF8AC */  jal     func_80AFE2B0              
/* 0182C 80AFFADC AFA3002C */  sw      $v1, 0x002C($sp)           
/* 01830 80AFFAE0 3C078016 */  lui     $a3, %hi(gSaveContext)
/* 01834 80AFFAE4 24E7E660 */  addiu   $a3, %lo(gSaveContext)
/* 01838 80AFFAE8 8FA3002C */  lw      $v1, 0x002C($sp)           
/* 0183C 80AFFAEC 10000010 */  beq     $zero, $zero, .L80AFFB30   
/* 01840 80AFFAF0 8FA60024 */  lw      $a2, 0x0024($sp)           
.L80AFFAF4:
/* 01844 80AFFAF4 920902D6 */  lbu     $t1, 0x02D6($s0)           ## 000002D6
.L80AFFAF8:
/* 01848 80AFFAF8 2401001A */  addiu   $at, $zero, 0x001A         ## $at = 0000001A
/* 0184C 80AFFAFC 5120000D */  beql    $t1, $zero, .L80AFFB34     
/* 01850 80AFFB00 94C204C6 */  lhu     $v0, 0x04C6($a2)           ## 000004C6
/* 01854 80AFFB04 1441000A */  bne     $v0, $at, .L80AFFB30       
/* 01858 80AFFB08 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0185C 80AFFB0C A20002D6 */  sb      $zero, 0x02D6($s0)         ## 000002D6
/* 01860 80AFFB10 AFA60024 */  sw      $a2, 0x0024($sp)           
/* 01864 80AFFB14 AFA3002C */  sw      $v1, 0x002C($sp)           
/* 01868 80AFFB18 0C2BF8AC */  jal     func_80AFE2B0              
/* 0186C 80AFFB1C 24050009 */  addiu   $a1, $zero, 0x0009         ## $a1 = 00000009
/* 01870 80AFFB20 3C078016 */  lui     $a3, %hi(gSaveContext)
/* 01874 80AFFB24 24E7E660 */  addiu   $a3, %lo(gSaveContext)
/* 01878 80AFFB28 8FA3002C */  lw      $v1, 0x002C($sp)           
/* 0187C 80AFFB2C 8FA60024 */  lw      $a2, 0x0024($sp)           
.L80AFFB30:
/* 01880 80AFFB30 94C204C6 */  lhu     $v0, 0x04C6($a2)           ## 000004C6
.L80AFFB34:
/* 01884 80AFFB34 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 01888 80AFFB38 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0188C 80AFFB3C 1441000B */  bne     $v0, $at, .L80AFFB6C       
/* 01890 80AFFB40 24050009 */  addiu   $a1, $zero, 0x0009         ## $a1 = 00000009
/* 01894 80AFFB44 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01898 80AFFB48 00310821 */  addu    $at, $at, $s1              
/* 0189C 80AFFB4C A42004C6 */  sh      $zero, 0x04C6($at)         ## 000104C6
/* 018A0 80AFFB50 0C2BF8AC */  jal     func_80AFE2B0              
/* 018A4 80AFFB54 A20002D6 */  sb      $zero, 0x02D6($s0)         ## 000002D6
/* 018A8 80AFFB58 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 018AC 80AFFB5C 0C2BF8CE */  jal     func_80AFE338              
/* 018B0 80AFFB60 2405000A */  addiu   $a1, $zero, 0x000A         ## $a1 = 0000000A
/* 018B4 80AFFB64 1000005A */  beq     $zero, $zero, .L80AFFCD0   
/* 018B8 80AFFB68 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AFFB6C:
/* 018BC 80AFFB6C 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 018C0 80AFFB70 5441001F */  bnel    $v0, $at, .L80AFFBF0       
/* 018C4 80AFFB74 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 018C8 80AFFB78 94EA0EF2 */  lhu     $t2, 0x0EF2($a3)           ## 00000EF2
/* 018CC 80AFFB7C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 018D0 80AFFB80 00310821 */  addu    $at, $at, $s1              
/* 018D4 80AFFB84 314B0040 */  andi    $t3, $t2, 0x0040           ## $t3 = 00000000
/* 018D8 80AFFB88 15600016 */  bne     $t3, $zero, .L80AFFBE4     
/* 018DC 80AFFB8C 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 018E0 80AFFB90 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 018E4 80AFFB94 00310821 */  addu    $at, $at, $s1              
/* 018E8 80AFFB98 240C0004 */  addiu   $t4, $zero, 0x0004         ## $t4 = 00000004
/* 018EC 80AFFB9C A42C04C6 */  sh      $t4, 0x04C6($at)           ## 000104C6
/* 018F0 80AFFBA0 AFA3002C */  sw      $v1, 0x002C($sp)           
/* 018F4 80AFFBA4 0C01E221 */  jal     func_80078884              
/* 018F8 80AFFBA8 24044802 */  addiu   $a0, $zero, 0x4802         ## $a0 = 00004802
/* 018FC 80AFFBAC 8FA3002C */  lw      $v1, 0x002C($sp)           
/* 01900 80AFFBB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01904 80AFFBB4 0C2BFA5A */  jal     func_80AFE968              
/* 01908 80AFFBB8 AC7006A8 */  sw      $s0, 0x06A8($v1)           ## 000006A8
/* 0190C 80AFFBBC 44060000 */  mfc1    $a2, $f0                   
/* 01910 80AFFBC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01914 80AFFBC4 0C00BCB3 */  jal     func_8002F2CC              
/* 01918 80AFFBC8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0191C 80AFFBCC 240D10BB */  addiu   $t5, $zero, 0x10BB         ## $t5 = 000010BB
/* 01920 80AFFBD0 A60D02C4 */  sh      $t5, 0x02C4($s0)           ## 000002C4
/* 01924 80AFFBD4 0C2BFF38 */  jal     func_80AFFCE0              
/* 01928 80AFFBD8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0192C 80AFFBDC 1000003C */  beq     $zero, $zero, .L80AFFCD0   
/* 01930 80AFFBE0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AFFBE4:
/* 01934 80AFFBE4 10000039 */  beq     $zero, $zero, .L80AFFCCC   
/* 01938 80AFFBE8 A42E04C6 */  sh      $t6, 0x04C6($at)           ## 000004C6
/* 0193C 80AFFBEC 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
.L80AFFBF0:
/* 01940 80AFFBF0 14410009 */  bne     $v0, $at, .L80AFFC18       
/* 01944 80AFFBF4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01948 80AFFBF8 8C6F0680 */  lw      $t7, 0x0680($v1)           ## 00000680
/* 0194C 80AFFBFC 3C01FEFF */  lui     $at, 0xFEFF                ## $at = FEFF0000
/* 01950 80AFFC00 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FEFFFFFF
/* 01954 80AFFC04 01E1C024 */  and     $t8, $t7, $at              
/* 01958 80AFFC08 0C00B55C */  jal     Actor_Kill
              
/* 0195C 80AFFC0C AC780680 */  sw      $t8, 0x0680($v1)           ## 00000680
/* 01960 80AFFC10 1000002F */  beq     $zero, $zero, .L80AFFCD0   
/* 01964 80AFFC14 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AFFC18:
/* 01968 80AFFC18 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0196C 80AFFC1C 54410007 */  bnel    $v0, $at, .L80AFFC3C       
/* 01970 80AFFC20 28410005 */  slti    $at, $v0, 0x0005           
/* 01974 80AFFC24 8C790680 */  lw      $t9, 0x0680($v1)           ## 00000680
/* 01978 80AFFC28 3C010080 */  lui     $at, 0x0080                ## $at = 00800000
/* 0197C 80AFFC2C 03214025 */  or      $t0, $t9, $at              ## $t0 = 00800000
/* 01980 80AFFC30 10000026 */  beq     $zero, $zero, .L80AFFCCC   
/* 01984 80AFFC34 AC680680 */  sw      $t0, 0x0680($v1)           ## 00000680
/* 01988 80AFFC38 28410005 */  slti    $at, $v0, 0x0005           
.L80AFFC3C:
/* 0198C 80AFFC3C 54200024 */  bnel    $at, $zero, .L80AFFCD0     
/* 01990 80AFFC40 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01994 80AFFC44 94E90EF2 */  lhu     $t1, 0x0EF2($a3)           ## 00000EF2
/* 01998 80AFFC48 A4E01422 */  sh      $zero, 0x1422($a3)         ## 00001422
/* 0199C 80AFFC4C 240D0004 */  addiu   $t5, $zero, 0x0004         ## $t5 = 00000004
/* 019A0 80AFFC50 312A0040 */  andi    $t2, $t1, 0x0040           ## $t2 = 00000000
/* 019A4 80AFFC54 11400012 */  beq     $t2, $zero, .L80AFFCA0     
/* 019A8 80AFFC58 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 019AC 80AFFC5C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 019B0 80AFFC60 00310821 */  addu    $at, $at, $s1              
/* 019B4 80AFFC64 240B0004 */  addiu   $t3, $zero, 0x0004         ## $t3 = 00000004
/* 019B8 80AFFC68 A42B04C6 */  sh      $t3, 0x04C6($at)           ## 000104C6
/* 019BC 80AFFC6C AC7006A8 */  sw      $s0, 0x06A8($v1)           ## 000006A8
/* 019C0 80AFFC70 0C2BFA5A */  jal     func_80AFE968              
/* 019C4 80AFFC74 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 019C8 80AFFC78 44060000 */  mfc1    $a2, $f0                   
/* 019CC 80AFFC7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 019D0 80AFFC80 0C00BCB3 */  jal     func_8002F2CC              
/* 019D4 80AFFC84 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 019D8 80AFFC88 240C10BD */  addiu   $t4, $zero, 0x10BD         ## $t4 = 000010BD
/* 019DC 80AFFC8C A60C02C4 */  sh      $t4, 0x02C4($s0)           ## 000002C4
/* 019E0 80AFFC90 0C2BFF38 */  jal     func_80AFFCE0              
/* 019E4 80AFFC94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 019E8 80AFFC98 1000000D */  beq     $zero, $zero, .L80AFFCD0   
/* 019EC 80AFFC9C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AFFCA0:
/* 019F0 80AFFCA0 00310821 */  addu    $at, $at, $s1              
/* 019F4 80AFFCA4 A42D04C6 */  sh      $t5, 0x04C6($at)           ## 000004C6
/* 019F8 80AFFCA8 AC7006A8 */  sw      $s0, 0x06A8($v1)           ## 000006A8
/* 019FC 80AFFCAC 0C2BFA5A */  jal     func_80AFE968              
/* 01A00 80AFFCB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01A04 80AFFCB4 44060000 */  mfc1    $a2, $f0                   
/* 01A08 80AFFCB8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01A0C 80AFFCBC 0C00BCB3 */  jal     func_8002F2CC              
/* 01A10 80AFFCC0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01A14 80AFFCC4 0C2C00FD */  jal     func_80B003F4              
/* 01A18 80AFFCC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AFFCCC:
/* 01A1C 80AFFCCC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AFFCD0:
/* 01A20 80AFFCD0 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 01A24 80AFFCD4 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 01A28 80AFFCD8 03E00008 */  jr      $ra                        
/* 01A2C 80AFFCDC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
