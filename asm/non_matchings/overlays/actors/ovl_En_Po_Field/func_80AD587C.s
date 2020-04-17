glabel func_80AD587C
/* 01D7C 80AD587C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01D80 80AD5880 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01D84 80AD5884 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01D88 80AD5888 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 01D8C 80AD588C 44813000 */  mtc1    $at, $f6                   ## $f6 = 2.00
/* 01D90 80AD5890 C484000C */  lwc1    $f4, 0x000C($a0)           ## 0000000C
/* 01D94 80AD5894 24050014 */  addiu   $a1, $zero, 0x0014         ## $a1 = 00000014
/* 01D98 80AD5898 46062200 */  add.s   $f8, $f4, $f6              
/* 01D9C 80AD589C E488000C */  swc1    $f8, 0x000C($a0)           ## 0000000C
/* 01DA0 80AD58A0 0C2B5535 */  jal     func_80AD54D4              
/* 01DA4 80AD58A4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01DA8 80AD58A8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01DAC 80AD58AC 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 01DB0 80AD58B0 908E0217 */  lbu     $t6, 0x0217($a0)           ## 00000217
/* 01DB4 80AD58B4 55C10004 */  bnel    $t6, $at, .L80AD58C8       
/* 01DB8 80AD58B8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01DBC 80AD58BC 0C2B50E1 */  jal     func_80AD4384              
/* 01DC0 80AD58C0 00000000 */  nop
/* 01DC4 80AD58C4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AD58C8:
/* 01DC8 80AD58C8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01DCC 80AD58CC 03E00008 */  jr      $ra                        
/* 01DD0 80AD58D0 00000000 */  nop
