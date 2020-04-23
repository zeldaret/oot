glabel func_80ACB904
/* 019E4 80ACB904 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 019E8 80ACB908 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 019EC 80ACB90C AFB10018 */  sw      $s1, 0x0018($sp)           
/* 019F0 80ACB910 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 019F4 80ACB914 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 019F8 80ACB918 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 019FC 80ACB91C 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 01A00 80ACB920 51C00011 */  beql    $t6, $zero, .L80ACB968     
/* 01A04 80ACB924 963903FC */  lhu     $t9, 0x03FC($s1)           ## 000003FC
/* 01A08 80ACB928 8CA21DA8 */  lw      $v0, 0x1DA8($a1)           ## 00001DA8
/* 01A0C 80ACB92C 5040000E */  beql    $v0, $zero, .L80ACB968     
/* 01A10 80ACB930 963903FC */  lhu     $t9, 0x03FC($s1)           ## 000003FC
/* 01A14 80ACB934 908F040A */  lbu     $t7, 0x040A($a0)           ## 0000040A
/* 01A18 80ACB938 94580000 */  lhu     $t8, 0x0000($v0)           ## 00000000
/* 01A1C 80ACB93C 51F80007 */  beql    $t7, $t8, .L80ACB95C       
/* 01A20 80ACB940 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01A24 80ACB944 0C2B344C */  jal     func_80ACD130              
/* 01A28 80ACB948 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 01A2C 80ACB94C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01A30 80ACB950 0C2B2EAE */  jal     func_80ACBAB8              
/* 01A34 80ACB954 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01A38 80ACB958 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
.L80ACB95C:
/* 01A3C 80ACB95C 0C2B34B3 */  jal     func_80ACD2CC              
/* 01A40 80ACB960 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01A44 80ACB964 963903FC */  lhu     $t9, 0x03FC($s1)           ## 000003FC
.L80ACB968:
/* 01A48 80ACB968 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01A4C 80ACB96C 33280080 */  andi    $t0, $t9, 0x0080           ## $t0 = 00000000
/* 01A50 80ACB970 51000004 */  beql    $t0, $zero, .L80ACB984     
/* 01A54 80ACB974 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01A58 80ACB978 0C2B2DD2 */  jal     func_80ACB748              
/* 01A5C 80ACB97C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01A60 80ACB980 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80ACB984:
/* 01A64 80ACB984 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 01A68 80ACB988 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 01A6C 80ACB98C 03E00008 */  jr      $ra                        
/* 01A70 80ACB990 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
