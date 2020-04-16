glabel func_80ACBA24
/* 01B04 80ACBA24 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01B08 80ACBA28 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01B0C 80ACBA2C 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 01B10 80ACBA30 51C00018 */  beql    $t6, $zero, .L80ACBA94     
/* 01B14 80ACBA34 948A03FC */  lhu     $t2, 0x03FC($a0)           ## 000003FC
/* 01B18 80ACBA38 8CA21DA8 */  lw      $v0, 0x1DA8($a1)           ## 00001DA8
/* 01B1C 80ACBA3C 50400015 */  beql    $v0, $zero, .L80ACBA94     
/* 01B20 80ACBA40 948A03FC */  lhu     $t2, 0x03FC($a0)           ## 000003FC
/* 01B24 80ACBA44 908F040A */  lbu     $t7, 0x040A($a0)           ## 0000040A
/* 01B28 80ACBA48 94580000 */  lhu     $t8, 0x0000($v0)           ## 00000000
/* 01B2C 80ACBA4C 51F8000F */  beql    $t7, $t8, .L80ACBA8C       
/* 01B30 80ACBA50 94490008 */  lhu     $t1, 0x0008($v0)           ## 00000008
/* 01B34 80ACBA54 949903FC */  lhu     $t9, 0x03FC($a0)           ## 000003FC
/* 01B38 80ACBA58 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 01B3C 80ACBA5C 37280004 */  ori     $t0, $t9, 0x0004           ## $t0 = 00000004
/* 01B40 80ACBA60 A48803FC */  sh      $t0, 0x03FC($a0)           ## 000003FC
/* 01B44 80ACBA64 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01B48 80ACBA68 0C2B344C */  jal     func_80ACD130              
/* 01B4C 80ACBA6C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01B50 80ACBA70 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01B54 80ACBA74 0C2B2EAE */  jal     func_80ACBAB8              
/* 01B58 80ACBA78 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01B5C 80ACBA7C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01B60 80ACBA80 10000003 */  beq     $zero, $zero, .L80ACBA90   
/* 01B64 80ACBA84 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01B68 80ACBA88 94490008 */  lhu     $t1, 0x0008($v0)           ## 00000008
.L80ACBA8C:
/* 01B6C 80ACBA8C A4890034 */  sh      $t1, 0x0034($a0)           ## 00000034
.L80ACBA90:
/* 01B70 80ACBA90 948A03FC */  lhu     $t2, 0x03FC($a0)           ## 000003FC
.L80ACBA94:
/* 01B74 80ACBA94 314B0080 */  andi    $t3, $t2, 0x0080           ## $t3 = 00000000
/* 01B78 80ACBA98 51600004 */  beql    $t3, $zero, .L80ACBAAC     
/* 01B7C 80ACBA9C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01B80 80ACBAA0 0C2B2DD2 */  jal     func_80ACB748              
/* 01B84 80ACBAA4 00000000 */  nop
/* 01B88 80ACBAA8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ACBAAC:
/* 01B8C 80ACBAAC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01B90 80ACBAB0 03E00008 */  jr      $ra                        
/* 01B94 80ACBAB4 00000000 */  nop
