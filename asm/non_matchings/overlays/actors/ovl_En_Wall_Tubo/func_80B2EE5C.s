glabel func_80B2EE5C
/* 0006C 80B2EE5C 8CA21C54 */  lw      $v0, 0x1C54($a1)           ## 00001C54
/* 00070 80B2EE60 3C0F80B3 */  lui     $t7, %hi(func_80B2EE9C)    ## $t7 = 80B30000
/* 00074 80B2EE64 2403014B */  addiu   $v1, $zero, 0x014B         ## $v1 = 0000014B
/* 00078 80B2EE68 1040000A */  beq     $v0, $zero, .L80B2EE94     
/* 0007C 80B2EE6C 25EFEE9C */  addiu   $t7, $t7, %lo(func_80B2EE9C) ## $t7 = 80B2EE9C
/* 00080 80B2EE70 844E0000 */  lh      $t6, 0x0000($v0)           ## 00000000
.L80B2EE74:
/* 00084 80B2EE74 106E0003 */  beq     $v1, $t6, .L80B2EE84       
/* 00088 80B2EE78 00000000 */  nop
/* 0008C 80B2EE7C 10000003 */  beq     $zero, $zero, .L80B2EE8C   
/* 00090 80B2EE80 8C420124 */  lw      $v0, 0x0124($v0)           ## 00000124
.L80B2EE84:
/* 00094 80B2EE84 10000003 */  beq     $zero, $zero, .L80B2EE94   
/* 00098 80B2EE88 AC820160 */  sw      $v0, 0x0160($a0)           ## 00000160
.L80B2EE8C:
/* 0009C 80B2EE8C 5440FFF9 */  bnel    $v0, $zero, .L80B2EE74     
/* 000A0 80B2EE90 844E0000 */  lh      $t6, 0x0000($v0)           ## 00000000
.L80B2EE94:
/* 000A4 80B2EE94 03E00008 */  jr      $ra                        
/* 000A8 80B2EE98 AC8F014C */  sw      $t7, 0x014C($a0)           ## 0000014C
