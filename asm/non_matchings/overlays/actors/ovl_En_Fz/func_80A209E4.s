glabel func_80A209E4
/* 00C24 80A209E4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C28 80A209E8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C2C 80A209EC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00C30 80A209F0 848E0244 */  lh      $t6, 0x0244($a0)           ## 00000244
/* 00C34 80A209F4 11C00004 */  beq     $t6, $zero, .L80A20A08     
/* 00C38 80A209F8 00000000 */  nop
/* 00C3C 80A209FC 908F0247 */  lbu     $t7, 0x0247($a0)           ## 00000247
/* 00C40 80A20A00 55E00004 */  bnel    $t7, $zero, .L80A20A14     
/* 00C44 80A20A04 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A20A08:
/* 00C48 80A20A08 0C288288 */  jal     func_80A20A20              
/* 00C4C 80A20A0C 00000000 */  nop
/* 00C50 80A20A10 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A20A14:
/* 00C54 80A20A14 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C58 80A20A18 03E00008 */  jr      $ra                        
/* 00C5C 80A20A1C 00000000 */  nop
