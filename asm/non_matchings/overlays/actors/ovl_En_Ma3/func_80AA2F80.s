glabel func_80AA2F80
/* 004E0 80AA2F80 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 004E4 80AA2F84 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 004E8 80AA2F88 0C2A8BCA */  jal     func_80AA2F28              
/* 004EC 80AA2F8C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 004F0 80AA2F90 14400018 */  bne     $v0, $zero, .L80AA2FF4     
/* 004F4 80AA2F94 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 004F8 80AA2F98 84C2020C */  lh      $v0, 0x020C($a2)           ## 0000020C
/* 004FC 80AA2F9C 14400003 */  bne     $v0, $zero, .L80AA2FAC     
/* 00500 80AA2FA0 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00504 80AA2FA4 10000003 */  beq     $zero, $zero, .L80AA2FB4   
/* 00508 80AA2FA8 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L80AA2FAC:
/* 0050C 80AA2FAC A4CE020C */  sh      $t6, 0x020C($a2)           ## 0000020C
/* 00510 80AA2FB0 84C3020C */  lh      $v1, 0x020C($a2)           ## 0000020C
.L80AA2FB4:
/* 00514 80AA2FB4 54600010 */  bnel    $v1, $zero, .L80AA2FF8     
/* 00518 80AA2FB8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0051C 80AA2FBC 84CF020E */  lh      $t7, 0x020E($a2)           ## 0000020E
/* 00520 80AA2FC0 2404001E */  addiu   $a0, $zero, 0x001E         ## $a0 = 0000001E
/* 00524 80AA2FC4 2405001E */  addiu   $a1, $zero, 0x001E         ## $a1 = 0000001E
/* 00528 80AA2FC8 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 0052C 80AA2FCC A4D8020E */  sh      $t8, 0x020E($a2)           ## 0000020E
/* 00530 80AA2FD0 84D9020E */  lh      $t9, 0x020E($a2)           ## 0000020E
/* 00534 80AA2FD4 2B210003 */  slti    $at, $t9, 0x0003           
/* 00538 80AA2FD8 54200007 */  bnel    $at, $zero, .L80AA2FF8     
/* 0053C 80AA2FDC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00540 80AA2FE0 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 00544 80AA2FE4 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00548 80AA2FE8 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 0054C 80AA2FEC A4C2020C */  sh      $v0, 0x020C($a2)           ## 0000020C
/* 00550 80AA2FF0 A4C0020E */  sh      $zero, 0x020E($a2)         ## 0000020E
.L80AA2FF4:
/* 00554 80AA2FF4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AA2FF8:
/* 00558 80AA2FF8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0055C 80AA2FFC 03E00008 */  jr      $ra                        
/* 00560 80AA3000 00000000 */  nop


