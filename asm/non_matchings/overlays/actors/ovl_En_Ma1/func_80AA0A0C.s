glabel func_80AA0A0C
/* 0037C 80AA0A0C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00380 80AA0A10 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00384 80AA0A14 848201E2 */  lh      $v0, 0x01E2($a0)           ## 000001E2
/* 00388 80AA0A18 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 0038C 80AA0A1C 14400003 */  bne     $v0, $zero, .L80AA0A2C     
/* 00390 80AA0A20 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00394 80AA0A24 10000003 */  beq     $zero, $zero, .L80AA0A34   
/* 00398 80AA0A28 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L80AA0A2C:
/* 0039C 80AA0A2C A4CE01E2 */  sh      $t6, 0x01E2($a2)           ## 000001E2
/* 003A0 80AA0A30 84C301E2 */  lh      $v1, 0x01E2($a2)           ## 000001E2
.L80AA0A34:
/* 003A4 80AA0A34 54600010 */  bnel    $v1, $zero, .L80AA0A78     
/* 003A8 80AA0A38 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003AC 80AA0A3C 84CF01E4 */  lh      $t7, 0x01E4($a2)           ## 000001E4
/* 003B0 80AA0A40 2404001E */  addiu   $a0, $zero, 0x001E         ## $a0 = 0000001E
/* 003B4 80AA0A44 2405001E */  addiu   $a1, $zero, 0x001E         ## $a1 = 0000001E
/* 003B8 80AA0A48 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 003BC 80AA0A4C A4D801E4 */  sh      $t8, 0x01E4($a2)           ## 000001E4
/* 003C0 80AA0A50 84D901E4 */  lh      $t9, 0x01E4($a2)           ## 000001E4
/* 003C4 80AA0A54 2B210003 */  slti    $at, $t9, 0x0003           
/* 003C8 80AA0A58 54200007 */  bnel    $at, $zero, .L80AA0A78     
/* 003CC 80AA0A5C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003D0 80AA0A60 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 003D4 80AA0A64 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 003D8 80AA0A68 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 003DC 80AA0A6C A4C201E2 */  sh      $v0, 0x01E2($a2)           ## 000001E2
/* 003E0 80AA0A70 A4C001E4 */  sh      $zero, 0x01E4($a2)         ## 000001E4
/* 003E4 80AA0A74 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AA0A78:
/* 003E8 80AA0A78 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003EC 80AA0A7C 03E00008 */  jr      $ra                        
/* 003F0 80AA0A80 00000000 */  nop
