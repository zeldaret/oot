glabel func_809FA0F8
/* 01EA8 809FA0F8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01EAC 809FA0FC 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 01EB0 809FA100 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01EB4 809FA104 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01EB8 809FA108 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 01EBC 809FA10C 10A10004 */  beq     $a1, $at, .L809FA120       
/* 01EC0 809FA110 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 01EC4 809FA114 24010010 */  addiu   $at, $zero, 0x0010         ## $at = 00000010
/* 01EC8 809FA118 54A10008 */  bnel    $a1, $at, .L809FA13C       
/* 01ECC 809FA11C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809FA120:
/* 01ED0 809FA120 8FA2002C */  lw      $v0, 0x002C($sp)           
/* 01ED4 809FA124 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 01ED8 809FA128 C44C034C */  lwc1    $f12, 0x034C($v0)          ## 0000034C
/* 01EDC 809FA12C C44E0350 */  lwc1    $f14, 0x0350($v0)          ## 00000350
/* 01EE0 809FA130 0C0342A3 */  jal     Matrix_Scale              
/* 01EE4 809FA134 8C460354 */  lw      $a2, 0x0354($v0)           ## 00000354
/* 01EE8 809FA138 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809FA13C:
/* 01EEC 809FA13C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01EF0 809FA140 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 01EF4 809FA144 03E00008 */  jr      $ra                        
/* 01EF8 809FA148 00000000 */  nop


