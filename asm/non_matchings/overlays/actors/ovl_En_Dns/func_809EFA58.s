glabel func_809EFA58
/* 00708 809EFA58 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 0070C 809EFA5C 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00710 809EFA60 944E0EF0 */  lhu     $t6, 0x0EF0($v0)           ## 8015F550
/* 00714 809EFA64 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00718 809EFA68 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0071C 809EFA6C 35CF0800 */  ori     $t7, $t6, 0x0800           ## $t7 = 00000800
/* 00720 809EFA70 A44F0EF0 */  sh      $t7, 0x0EF0($v0)           ## 8015F550
/* 00724 809EFA74 8C9802C0 */  lw      $t8, 0x02C0($a0)           ## 000002C0
/* 00728 809EFA78 87040000 */  lh      $a0, 0x0000($t8)           ## 00000000
/* 0072C 809EFA7C 00042023 */  subu    $a0, $zero, $a0            
/* 00730 809EFA80 00042400 */  sll     $a0, $a0, 16               
/* 00734 809EFA84 0C021CC3 */  jal     Rupees_ChangeBy              
/* 00738 809EFA88 00042403 */  sra     $a0, $a0, 16               
/* 0073C 809EFA8C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00740 809EFA90 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00744 809EFA94 03E00008 */  jr      $ra                        
/* 00748 809EFA98 00000000 */  nop


