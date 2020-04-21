glabel MagicWind_Update
/* 004A0 80B8B5A0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 004A4 80B8B5A4 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 004A8 80B8B5A8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 004AC 80B8B5AC 00451021 */  addu    $v0, $v0, $a1              
/* 004B0 80B8B5B0 904203DC */  lbu     $v0, 0x03DC($v0)           ## 000103DC
/* 004B4 80B8B5B4 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 004B8 80B8B5B8 10410003 */  beq     $v0, $at, .L80B8B5C8       
/* 004BC 80B8B5BC 24010011 */  addiu   $at, $zero, 0x0011         ## $at = 00000011
/* 004C0 80B8B5C0 54410006 */  bnel    $v0, $at, .L80B8B5DC       
/* 004C4 80B8B5C4 8C990170 */  lw      $t9, 0x0170($a0)           ## 00000170
.L80B8B5C8:
/* 004C8 80B8B5C8 0C00B55C */  jal     Actor_Kill
              
/* 004CC 80B8B5CC 00000000 */  nop
/* 004D0 80B8B5D0 10000005 */  beq     $zero, $zero, .L80B8B5E8   
/* 004D4 80B8B5D4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 004D8 80B8B5D8 8C990170 */  lw      $t9, 0x0170($a0)           ## 00000170
.L80B8B5DC:
/* 004DC 80B8B5DC 0320F809 */  jalr    $ra, $t9                   
/* 004E0 80B8B5E0 00000000 */  nop
/* 004E4 80B8B5E4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B8B5E8:
/* 004E8 80B8B5E8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 004EC 80B8B5EC 03E00008 */  jr      $ra                        
/* 004F0 80B8B5F0 00000000 */  nop
