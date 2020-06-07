glabel func_80AB70A0
/* 01920 80AB70A0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01924 80AB70A4 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 01928 80AB70A8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0192C 80AB70AC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01930 80AB70B0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01934 80AB70B4 240508F2 */  addiu   $a1, $zero, 0x08F2         ## $a1 = 000008F2
/* 01938 80AB70B8 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 0193C 80AB70BC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01940 80AB70C0 0C02003E */  jal     func_800800F8              
/* 01944 80AB70C4 2406FF9D */  addiu   $a2, $zero, 0xFF9D         ## $a2 = FFFFFF9D
/* 01948 80AB70C8 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 0194C 80AB70CC 3C1880AB */  lui     $t8, %hi(func_80AB70F8)    ## $t8 = 80AB0000
/* 01950 80AB70D0 240E0064 */  addiu   $t6, $zero, 0x0064         ## $t6 = 00000064
/* 01954 80AB70D4 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 01958 80AB70D8 271870F8 */  addiu   $t8, $t8, %lo(func_80AB70F8) ## $t8 = 80AB70F8
/* 0195C 80AB70DC A4EE025C */  sh      $t6, 0x025C($a3)           ## 0000025C
/* 01960 80AB70E0 A4EF02A2 */  sh      $t7, 0x02A2($a3)           ## 000002A2
/* 01964 80AB70E4 ACF80250 */  sw      $t8, 0x0250($a3)           ## 00000250
/* 01968 80AB70E8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0196C 80AB70EC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01970 80AB70F0 03E00008 */  jr      $ra                        
/* 01974 80AB70F4 00000000 */  nop
