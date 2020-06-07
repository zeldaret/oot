glabel func_8098EB6C
/* 0070C 8098EB6C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00710 8098EB70 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00714 8098EB74 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 00718 8098EB78 51C0000C */  beql    $t6, $zero, .L8098EBAC     
/* 0071C 8098EB7C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00720 8098EB80 8CA21DA4 */  lw      $v0, 0x1DA4($a1)           ## 00001DA4
/* 00724 8098EB84 50400009 */  beql    $v0, $zero, .L8098EBAC     
/* 00728 8098EB88 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0072C 8098EB8C 944F0000 */  lhu     $t7, 0x0000($v0)           ## 00000000
/* 00730 8098EB90 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00734 8098EB94 24180006 */  addiu   $t8, $zero, 0x0006         ## $t8 = 00000006
/* 00738 8098EB98 55E10004 */  bnel    $t7, $at, .L8098EBAC       
/* 0073C 8098EB9C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00740 8098EBA0 0C263A32 */  jal     func_8098E8C8              
/* 00744 8098EBA4 AC980198 */  sw      $t8, 0x0198($a0)           ## 00000198
/* 00748 8098EBA8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8098EBAC:
/* 0074C 8098EBAC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00750 8098EBB0 03E00008 */  jr      $ra                        
/* 00754 8098EBB4 00000000 */  nop
