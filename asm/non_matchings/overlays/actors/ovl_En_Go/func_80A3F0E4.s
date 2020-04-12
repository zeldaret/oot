glabel func_80A3F0E4
/* 00B74 80A3F0E4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B78 80A3F0E8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B7C 80A3F0EC 84820214 */  lh      $v0, 0x0214($a0)           ## 00000214
/* 00B80 80A3F0F0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00B84 80A3F0F4 14400003 */  bne     $v0, $zero, .L80A3F104     
/* 00B88 80A3F0F8 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00B8C 80A3F0FC 10000003 */  beq     $zero, $zero, .L80A3F10C   
/* 00B90 80A3F100 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L80A3F104:
/* 00B94 80A3F104 A4CE0214 */  sh      $t6, 0x0214($a2)           ## 00000214
/* 00B98 80A3F108 84C30214 */  lh      $v1, 0x0214($a2)           ## 00000214
.L80A3F10C:
/* 00B9C 80A3F10C 54600010 */  bnel    $v1, $zero, .L80A3F150     
/* 00BA0 80A3F110 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00BA4 80A3F114 84CF0216 */  lh      $t7, 0x0216($a2)           ## 00000216
/* 00BA8 80A3F118 2404001E */  addiu   $a0, $zero, 0x001E         ## $a0 = 0000001E
/* 00BAC 80A3F11C 2405001E */  addiu   $a1, $zero, 0x001E         ## $a1 = 0000001E
/* 00BB0 80A3F120 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 00BB4 80A3F124 A4D80216 */  sh      $t8, 0x0216($a2)           ## 00000216
/* 00BB8 80A3F128 84D90216 */  lh      $t9, 0x0216($a2)           ## 00000216
/* 00BBC 80A3F12C 2B210003 */  slti    $at, $t9, 0x0003           
/* 00BC0 80A3F130 54200007 */  bnel    $at, $zero, .L80A3F150     
/* 00BC4 80A3F134 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00BC8 80A3F138 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 00BCC 80A3F13C AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00BD0 80A3F140 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00BD4 80A3F144 A4C20214 */  sh      $v0, 0x0214($a2)           ## 00000214
/* 00BD8 80A3F148 A4C00216 */  sh      $zero, 0x0216($a2)         ## 00000216
/* 00BDC 80A3F14C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A3F150:
/* 00BE0 80A3F150 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00BE4 80A3F154 03E00008 */  jr      $ra                        
/* 00BE8 80A3F158 00000000 */  nop
