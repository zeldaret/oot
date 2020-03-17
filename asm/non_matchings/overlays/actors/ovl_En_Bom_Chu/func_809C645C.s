glabel func_809C645C
/* 00C2C 809C645C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C30 809C6460 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C34 809C6464 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00C38 809C6468 84820150 */  lh      $v0, 0x0150($a0)           ## 00000150
/* 00C3C 809C646C 10400003 */  beq     $v0, $zero, .L809C647C     
/* 00C40 809C6470 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00C44 809C6474 A48E0150 */  sh      $t6, 0x0150($a0)           ## 00000150
/* 00C48 809C6478 84820150 */  lh      $v0, 0x0150($a0)           ## 00000150
.L809C647C:
/* 00C4C 809C647C 54400004 */  bnel    $v0, $zero, .L809C6490     
/* 00C50 809C6480 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C54 809C6484 0C00B55C */  jal     Actor_Kill
              
/* 00C58 809C6488 00000000 */  nop
/* 00C5C 809C648C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809C6490:
/* 00C60 809C6490 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C64 809C6494 03E00008 */  jr      $ra                        
/* 00C68 809C6498 00000000 */  nop


