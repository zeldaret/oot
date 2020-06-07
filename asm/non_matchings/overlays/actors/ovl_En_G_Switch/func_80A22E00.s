glabel func_80A22E00
/* 00F40 80A22E00 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00F44 80A22E04 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00F48 80A22E08 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00F4C 80A22E0C 848E0156 */  lh      $t6, 0x0156($a0)           ## 00000156
/* 00F50 80A22E10 55C00004 */  bnel    $t6, $zero, .L80A22E24     
/* 00F54 80A22E14 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00F58 80A22E18 0C00B55C */  jal     Actor_Kill
              
/* 00F5C 80A22E1C 00000000 */  nop
/* 00F60 80A22E20 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A22E24:
/* 00F64 80A22E24 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00F68 80A22E28 03E00008 */  jr      $ra                        
/* 00F6C 80A22E2C 00000000 */  nop
