glabel func_80AF2B44
/* 005F4 80AF2B44 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 005F8 80AF2B48 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 005FC 80AF2B4C 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 00600 80AF2B50 51C0000D */  beql    $t6, $zero, .L80AF2B88     
/* 00604 80AF2B54 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00608 80AF2B58 8CA21D98 */  lw      $v0, 0x1D98($a1)           ## 00001D98
/* 0060C 80AF2B5C 5040000A */  beql    $v0, $zero, .L80AF2B88     
/* 00610 80AF2B60 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00614 80AF2B64 944F0000 */  lhu     $t7, 0x0000($v0)           ## 00000000
/* 00618 80AF2B68 24030002 */  addiu   $v1, $zero, 0x0002         ## $v1 = 00000002
/* 0061C 80AF2B6C 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00620 80AF2B70 546F0005 */  bnel    $v1, $t7, .L80AF2B88       
/* 00624 80AF2B74 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00628 80AF2B78 AC8302A8 */  sw      $v1, 0x02A8($a0)           ## 000002A8
/* 0062C 80AF2B7C 0C2BCA77 */  jal     func_80AF29DC              
/* 00630 80AF2B80 AC9802AC */  sw      $t8, 0x02AC($a0)           ## 000002AC
/* 00634 80AF2B84 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AF2B88:
/* 00638 80AF2B88 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0063C 80AF2B8C 03E00008 */  jr      $ra                        
/* 00640 80AF2B90 00000000 */  nop


