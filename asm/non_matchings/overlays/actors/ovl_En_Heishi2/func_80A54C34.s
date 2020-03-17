glabel func_80A54C34
/* 01D94 80A54C34 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01D98 80A54C38 24010010 */  addiu   $at, $zero, 0x0010         ## $at = 00000010
/* 01D9C 80A54C3C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01DA0 80A54C40 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01DA4 80A54C44 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 01DA8 80A54C48 14A10004 */  bne     $a1, $at, .L80A54C5C       
/* 01DAC 80A54C4C AFA70024 */  sw      $a3, 0x0024($sp)           
/* 01DB0 80A54C50 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 01DB4 80A54C54 0C034236 */  jal     Matrix_Get              
/* 01DB8 80A54C58 24840330 */  addiu   $a0, $a0, 0x0330           ## $a0 = 00000330
.L80A54C5C:
/* 01DBC 80A54C5C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01DC0 80A54C60 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01DC4 80A54C64 03E00008 */  jr      $ra                        
/* 01DC8 80A54C68 00000000 */  nop


