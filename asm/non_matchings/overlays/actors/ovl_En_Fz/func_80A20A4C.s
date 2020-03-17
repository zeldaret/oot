glabel func_80A20A4C
/* 00C8C 80A20A4C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C90 80A20A50 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C94 80A20A54 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00C98 80A20A58 0C2881C1 */  jal     func_80A20704              
/* 00C9C 80A20A5C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00CA0 80A20A60 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00CA4 80A20A64 848E0244 */  lh      $t6, 0x0244($a0)           ## 00000244
/* 00CA8 80A20A68 55C00004 */  bnel    $t6, $zero, .L80A20A7C     
/* 00CAC 80A20A6C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00CB0 80A20A70 0C2882A2 */  jal     func_80A20A88              
/* 00CB4 80A20A74 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00CB8 80A20A78 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A20A7C:
/* 00CBC 80A20A7C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00CC0 80A20A80 03E00008 */  jr      $ra                        
/* 00CC4 80A20A84 00000000 */  nop


