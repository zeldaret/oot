glabel func_80A20D4C
/* 00F8C 80A20D4C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00F90 80A20D50 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00F94 80A20D54 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00F98 80A20D58 848E0244 */  lh      $t6, 0x0244($a0)           ## 00000244
/* 00F9C 80A20D5C 55C00004 */  bnel    $t6, $zero, .L80A20D70     
/* 00FA0 80A20D60 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00FA4 80A20D64 0C00B55C */  jal     Actor_Kill
              
/* 00FA8 80A20D68 00000000 */  nop
/* 00FAC 80A20D6C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A20D70:
/* 00FB0 80A20D70 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00FB4 80A20D74 03E00008 */  jr      $ra                        
/* 00FB8 80A20D78 00000000 */  nop


