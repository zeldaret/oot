glabel func_80AA1CC0
/* 00320 80AA1CC0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00324 80AA1CC4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00328 80AA1CC8 0C2A871A */  jal     func_80AA1C68              
/* 0032C 80AA1CCC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00330 80AA1CD0 14400018 */  bne     $v0, $zero, .L80AA1D34     
/* 00334 80AA1CD4 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00338 80AA1CD8 84C2020C */  lh      $v0, 0x020C($a2)           ## 0000020C
/* 0033C 80AA1CDC 14400003 */  bne     $v0, $zero, .L80AA1CEC     
/* 00340 80AA1CE0 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00344 80AA1CE4 10000003 */  beq     $zero, $zero, .L80AA1CF4   
/* 00348 80AA1CE8 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L80AA1CEC:
/* 0034C 80AA1CEC A4CE020C */  sh      $t6, 0x020C($a2)           ## 0000020C
/* 00350 80AA1CF0 84C3020C */  lh      $v1, 0x020C($a2)           ## 0000020C
.L80AA1CF4:
/* 00354 80AA1CF4 54600010 */  bnel    $v1, $zero, .L80AA1D38     
/* 00358 80AA1CF8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0035C 80AA1CFC 84CF020E */  lh      $t7, 0x020E($a2)           ## 0000020E
/* 00360 80AA1D00 2404001E */  addiu   $a0, $zero, 0x001E         ## $a0 = 0000001E
/* 00364 80AA1D04 2405001E */  addiu   $a1, $zero, 0x001E         ## $a1 = 0000001E
/* 00368 80AA1D08 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 0036C 80AA1D0C A4D8020E */  sh      $t8, 0x020E($a2)           ## 0000020E
/* 00370 80AA1D10 84D9020E */  lh      $t9, 0x020E($a2)           ## 0000020E
/* 00374 80AA1D14 2B210003 */  slti    $at, $t9, 0x0003           
/* 00378 80AA1D18 54200007 */  bnel    $at, $zero, .L80AA1D38     
/* 0037C 80AA1D1C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00380 80AA1D20 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 00384 80AA1D24 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00388 80AA1D28 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 0038C 80AA1D2C A4C2020C */  sh      $v0, 0x020C($a2)           ## 0000020C
/* 00390 80AA1D30 A4C0020E */  sh      $zero, 0x020E($a2)         ## 0000020E
.L80AA1D34:
/* 00394 80AA1D34 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AA1D38:
/* 00398 80AA1D38 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0039C 80AA1D3C 03E00008 */  jr      $ra                        
/* 003A0 80AA1D40 00000000 */  nop


