glabel func_808FD5C4
/* 00684 808FD5C4 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 00688 808FD5C8 8C8F0004 */  lw      $t7, 0x0004($a0)           ## 00000004
/* 0068C 808FD5CC 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00690 808FD5D0 3C0E8090 */  lui     $t6, %hi(func_808FD5F4)    ## $t6 = 80900000
/* 00694 808FD5D4 01E1C024 */  and     $t8, $t7, $at              
/* 00698 808FD5D8 25CED5F4 */  addiu   $t6, $t6, %lo(func_808FD5F4) ## $t6 = 808FD5F4
/* 0069C 808FD5DC AC8E0190 */  sw      $t6, 0x0190($a0)           ## 00000190
/* 006A0 808FD5E0 AC980004 */  sw      $t8, 0x0004($a0)           ## 00000004
/* 006A4 808FD5E4 3C018091 */  lui     $at, %hi(D_8090DAB0)       ## $at = 80910000
/* 006A8 808FD5E8 C424DAB0 */  lwc1    $f4, %lo(D_8090DAB0)($at)  
/* 006AC 808FD5EC 03E00008 */  jr      $ra                        
/* 006B0 808FD5F0 E4840028 */  swc1    $f4, 0x0028($a0)           ## 00000028


