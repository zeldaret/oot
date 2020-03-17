glabel func_8086EE94
/* 006C4 8086EE94 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 006C8 8086EE98 3C0E0500 */  lui     $t6, 0x0500                ## $t6 = 05000000
/* 006CC 8086EE9C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 006D0 8086EEA0 25CE4088 */  addiu   $t6, $t6, 0x4088           ## $t6 = 05004088
/* 006D4 8086EEA4 AC8E029C */  sw      $t6, 0x029C($a0)           ## 0000029C
/* 006D8 8086EEA8 0C21BAB0 */  jal     func_8086EAC0              
/* 006DC 8086EEAC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 006E0 8086EEB0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 006E4 8086EEB4 AC800298 */  sw      $zero, 0x0298($a0)         ## 00000298
/* 006E8 8086EEB8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 006EC 8086EEBC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 006F0 8086EEC0 03E00008 */  jr      $ra                        
/* 006F4 8086EEC4 00000000 */  nop


