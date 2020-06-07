glabel func_80AAB0E0
/* 00E90 80AAB0E0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00E94 80AAB0E4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00E98 80AAB0E8 8482020C */  lh      $v0, 0x020C($a0)           ## 0000020C
/* 00E9C 80AAB0EC 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00EA0 80AAB0F0 14400003 */  bne     $v0, $zero, .L80AAB100     
/* 00EA4 80AAB0F4 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00EA8 80AAB0F8 10000003 */  beq     $zero, $zero, .L80AAB108   
/* 00EAC 80AAB0FC 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L80AAB100:
/* 00EB0 80AAB100 A4CE020C */  sh      $t6, 0x020C($a2)           ## 0000020C
/* 00EB4 80AAB104 84C3020C */  lh      $v1, 0x020C($a2)           ## 0000020C
.L80AAB108:
/* 00EB8 80AAB108 54600010 */  bnel    $v1, $zero, .L80AAB14C     
/* 00EBC 80AAB10C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00EC0 80AAB110 84CF020E */  lh      $t7, 0x020E($a2)           ## 0000020E
/* 00EC4 80AAB114 2404001E */  addiu   $a0, $zero, 0x001E         ## $a0 = 0000001E
/* 00EC8 80AAB118 2405001E */  addiu   $a1, $zero, 0x001E         ## $a1 = 0000001E
/* 00ECC 80AAB11C 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 00ED0 80AAB120 A4D8020E */  sh      $t8, 0x020E($a2)           ## 0000020E
/* 00ED4 80AAB124 84D9020E */  lh      $t9, 0x020E($a2)           ## 0000020E
/* 00ED8 80AAB128 2B210003 */  slti    $at, $t9, 0x0003           
/* 00EDC 80AAB12C 54200007 */  bnel    $at, $zero, .L80AAB14C     
/* 00EE0 80AAB130 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00EE4 80AAB134 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 00EE8 80AAB138 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00EEC 80AAB13C 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00EF0 80AAB140 A4C2020C */  sh      $v0, 0x020C($a2)           ## 0000020C
/* 00EF4 80AAB144 A4C0020E */  sh      $zero, 0x020E($a2)         ## 0000020E
/* 00EF8 80AAB148 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AAB14C:
/* 00EFC 80AAB14C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00F00 80AAB150 03E00008 */  jr      $ra                        
/* 00F04 80AAB154 00000000 */  nop
