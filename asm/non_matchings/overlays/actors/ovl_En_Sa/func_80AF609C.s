glabel func_80AF609C
/* 00B3C 80AF609C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B40 80AF60A0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B44 80AF60A4 0C2BD80F */  jal     func_80AF603C              
/* 00B48 80AF60A8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00B4C 80AF60AC 1440001C */  bne     $v0, $zero, .L80AF6120     
/* 00B50 80AF60B0 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00B54 80AF60B4 84C2020E */  lh      $v0, 0x020E($a2)           ## 0000020E
/* 00B58 80AF60B8 14400003 */  bne     $v0, $zero, .L80AF60C8     
/* 00B5C 80AF60BC 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00B60 80AF60C0 10000003 */  beq     $zero, $zero, .L80AF60D0   
/* 00B64 80AF60C4 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L80AF60C8:
/* 00B68 80AF60C8 A4CE020E */  sh      $t6, 0x020E($a2)           ## 0000020E
/* 00B6C 80AF60CC 84C3020E */  lh      $v1, 0x020E($a2)           ## 0000020E
.L80AF60D0:
/* 00B70 80AF60D0 54600014 */  bnel    $v1, $zero, .L80AF6124     
/* 00B74 80AF60D4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B78 80AF60D8 84CF0212 */  lh      $t7, 0x0212($a2)           ## 00000212
/* 00B7C 80AF60DC 2404001E */  addiu   $a0, $zero, 0x001E         ## $a0 = 0000001E
/* 00B80 80AF60E0 2405001E */  addiu   $a1, $zero, 0x001E         ## $a1 = 0000001E
/* 00B84 80AF60E4 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 00B88 80AF60E8 A4D80212 */  sh      $t8, 0x0212($a2)           ## 00000212
/* 00B8C 80AF60EC 84C20212 */  lh      $v0, 0x0212($a2)           ## 00000212
/* 00B90 80AF60F0 28410003 */  slti    $at, $v0, 0x0003           
/* 00B94 80AF60F4 10200003 */  beq     $at, $zero, .L80AF6104     
/* 00B98 80AF60F8 00000000 */  nop
/* 00B9C 80AF60FC 10000008 */  beq     $zero, $zero, .L80AF6120   
/* 00BA0 80AF6100 A4C20214 */  sh      $v0, 0x0214($a2)           ## 00000214
.L80AF6104:
/* 00BA4 80AF6104 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 00BA8 80AF6108 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00BAC 80AF610C 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00BB0 80AF6110 A4C00214 */  sh      $zero, 0x0214($a2)         ## 00000214
/* 00BB4 80AF6114 84D90214 */  lh      $t9, 0x0214($a2)           ## 00000214
/* 00BB8 80AF6118 A4C2020E */  sh      $v0, 0x020E($a2)           ## 0000020E
/* 00BBC 80AF611C A4D90212 */  sh      $t9, 0x0212($a2)           ## 00000212
.L80AF6120:
/* 00BC0 80AF6120 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AF6124:
/* 00BC4 80AF6124 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00BC8 80AF6128 03E00008 */  jr      $ra                        
/* 00BCC 80AF612C 00000000 */  nop


