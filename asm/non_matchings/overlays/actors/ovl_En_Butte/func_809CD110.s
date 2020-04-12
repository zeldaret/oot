.late_rodata
glabel D_809CE47C
 .word 0x3B449BA6

.text
glabel func_809CD110
/* 000A0 809CD110 3C02809D */  lui     $v0, %hi(D_809CE3BC)       ## $v0 = 809D0000
/* 000A4 809CD114 2442E3BC */  addiu   $v0, $v0, %lo(D_809CE3BC)  ## $v0 = 809CE3BC
/* 000A8 809CD118 3C01809D */  lui     $at, %hi(D_809CE47C)       ## $at = 809D0000
/* 000AC 809CD11C C426E47C */  lwc1    $f6, %lo(D_809CE47C)($at)  
/* 000B0 809CD120 C4440000 */  lwc1    $f4, 0x0000($v0)           ## 809CE3BC
/* 000B4 809CD124 3C03809D */  lui     $v1, %hi(D_809CE3C0)       ## $v1 = 809D0000
/* 000B8 809CD128 2463E3C0 */  addiu   $v1, $v1, %lo(D_809CE3C0)  ## $v1 = 809CE3C0
/* 000BC 809CD12C 846E0000 */  lh      $t6, 0x0000($v1)           ## 809CE3C0
/* 000C0 809CD130 46062200 */  add.s   $f8, $f4, $f6              
/* 000C4 809CD134 25CF0FA0 */  addiu   $t7, $t6, 0x0FA0           ## $t7 = 00000FA0
/* 000C8 809CD138 A46F0000 */  sh      $t7, 0x0000($v1)           ## 809CE3C0
/* 000CC 809CD13C 03E00008 */  jr      $ra                        
/* 000D0 809CD140 E4480000 */  swc1    $f8, 0x0000($v0)           ## 809CE3BC
