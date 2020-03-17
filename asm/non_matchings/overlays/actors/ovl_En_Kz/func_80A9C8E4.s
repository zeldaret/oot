glabel func_80A9C8E4
/* 00394 80A9C8E4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00398 80A9C8E8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0039C 80A9C8EC 8482020C */  lh      $v0, 0x020C($a0)           ## 0000020C
/* 003A0 80A9C8F0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 003A4 80A9C8F4 14400003 */  bne     $v0, $zero, .L80A9C904     
/* 003A8 80A9C8F8 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 003AC 80A9C8FC 10000003 */  beq     $zero, $zero, .L80A9C90C   
/* 003B0 80A9C900 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L80A9C904:
/* 003B4 80A9C904 A4CE020C */  sh      $t6, 0x020C($a2)           ## 0000020C
/* 003B8 80A9C908 84C3020C */  lh      $v1, 0x020C($a2)           ## 0000020C
.L80A9C90C:
/* 003BC 80A9C90C 54600010 */  bnel    $v1, $zero, .L80A9C950     
/* 003C0 80A9C910 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003C4 80A9C914 84CF0210 */  lh      $t7, 0x0210($a2)           ## 00000210
/* 003C8 80A9C918 2404001E */  addiu   $a0, $zero, 0x001E         ## $a0 = 0000001E
/* 003CC 80A9C91C 2405001E */  addiu   $a1, $zero, 0x001E         ## $a1 = 0000001E
/* 003D0 80A9C920 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 003D4 80A9C924 A4D80210 */  sh      $t8, 0x0210($a2)           ## 00000210
/* 003D8 80A9C928 84D90210 */  lh      $t9, 0x0210($a2)           ## 00000210
/* 003DC 80A9C92C 2B210003 */  slti    $at, $t9, 0x0003           
/* 003E0 80A9C930 54200007 */  bnel    $at, $zero, .L80A9C950     
/* 003E4 80A9C934 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003E8 80A9C938 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 003EC 80A9C93C AFA60018 */  sw      $a2, 0x0018($sp)           
/* 003F0 80A9C940 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 003F4 80A9C944 A4C2020C */  sh      $v0, 0x020C($a2)           ## 0000020C
/* 003F8 80A9C948 A4C00210 */  sh      $zero, 0x0210($a2)         ## 00000210
/* 003FC 80A9C94C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A9C950:
/* 00400 80A9C950 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00404 80A9C954 03E00008 */  jr      $ra                        
/* 00408 80A9C958 00000000 */  nop


