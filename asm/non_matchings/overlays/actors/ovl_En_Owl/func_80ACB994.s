glabel func_80ACB994
/* 01A74 80ACB994 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01A78 80ACB998 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01A7C 80ACB99C AFB10018 */  sw      $s1, 0x0018($sp)           
/* 01A80 80ACB9A0 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 01A84 80ACB9A4 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 01A88 80ACB9A8 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 01A8C 80ACB9AC 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 01A90 80ACB9B0 51C00011 */  beql    $t6, $zero, .L80ACB9F8     
/* 01A94 80ACB9B4 963903FC */  lhu     $t9, 0x03FC($s1)           ## 000003FC
/* 01A98 80ACB9B8 8CA21DA8 */  lw      $v0, 0x1DA8($a1)           ## 00001DA8
/* 01A9C 80ACB9BC 5040000E */  beql    $v0, $zero, .L80ACB9F8     
/* 01AA0 80ACB9C0 963903FC */  lhu     $t9, 0x03FC($s1)           ## 000003FC
/* 01AA4 80ACB9C4 908F040A */  lbu     $t7, 0x040A($a0)           ## 0000040A
/* 01AA8 80ACB9C8 94580000 */  lhu     $t8, 0x0000($v0)           ## 00000000
/* 01AAC 80ACB9CC 51F80007 */  beql    $t7, $t8, .L80ACB9EC       
/* 01AB0 80ACB9D0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01AB4 80ACB9D4 0C2B344C */  jal     func_80ACD130              
/* 01AB8 80ACB9D8 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 01ABC 80ACB9DC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01AC0 80ACB9E0 0C2B2EAE */  jal     func_80ACBAB8              
/* 01AC4 80ACB9E4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01AC8 80ACB9E8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
.L80ACB9EC:
/* 01ACC 80ACB9EC 0C2B3535 */  jal     func_80ACD4D4              
/* 01AD0 80ACB9F0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01AD4 80ACB9F4 963903FC */  lhu     $t9, 0x03FC($s1)           ## 000003FC
.L80ACB9F8:
/* 01AD8 80ACB9F8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01ADC 80ACB9FC 33280080 */  andi    $t0, $t9, 0x0080           ## $t0 = 00000000
/* 01AE0 80ACBA00 51000004 */  beql    $t0, $zero, .L80ACBA14     
/* 01AE4 80ACBA04 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01AE8 80ACBA08 0C2B2DD2 */  jal     func_80ACB748              
/* 01AEC 80ACBA0C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01AF0 80ACBA10 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80ACBA14:
/* 01AF4 80ACBA14 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 01AF8 80ACBA18 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 01AFC 80ACBA1C 03E00008 */  jr      $ra                        
/* 01B00 80ACBA20 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
