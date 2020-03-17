glabel func_80AF2C68
/* 00718 80AF2C68 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0071C 80AF2C6C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00720 80AF2C70 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 00724 80AF2C74 51C0000C */  beql    $t6, $zero, .L80AF2CA8     
/* 00728 80AF2C78 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0072C 80AF2C7C 8CA21DA4 */  lw      $v0, 0x1DA4($a1)           ## 00001DA4
/* 00730 80AF2C80 50400009 */  beql    $v0, $zero, .L80AF2CA8     
/* 00734 80AF2C84 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00738 80AF2C88 944F0000 */  lhu     $t7, 0x0000($v0)           ## 00000000
/* 0073C 80AF2C8C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00740 80AF2C90 24180006 */  addiu   $t8, $zero, 0x0006         ## $t8 = 00000006
/* 00744 80AF2C94 55E10004 */  bnel    $t7, $at, .L80AF2CA8       
/* 00748 80AF2C98 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0074C 80AF2C9C 0C2BCA8E */  jal     func_80AF2A38              
/* 00750 80AF2CA0 AC9802A8 */  sw      $t8, 0x02A8($a0)           ## 000002A8
/* 00754 80AF2CA4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AF2CA8:
/* 00758 80AF2CA8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0075C 80AF2CAC 03E00008 */  jr      $ra                        
/* 00760 80AF2CB0 00000000 */  nop


