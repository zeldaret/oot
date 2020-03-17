glabel func_8098E9EC
/* 0058C 8098E9EC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00590 8098E9F0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00594 8098E9F4 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 00598 8098E9F8 51C0000D */  beql    $t6, $zero, .L8098EA30     
/* 0059C 8098E9FC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 005A0 8098EA00 8CA21D9C */  lw      $v0, 0x1D9C($a1)           ## 00001D9C
/* 005A4 8098EA04 5040000A */  beql    $v0, $zero, .L8098EA30     
/* 005A8 8098EA08 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 005AC 8098EA0C 944F0000 */  lhu     $t7, 0x0000($v0)           ## 00000000
/* 005B0 8098EA10 24030002 */  addiu   $v1, $zero, 0x0002         ## $v1 = 00000002
/* 005B4 8098EA14 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 005B8 8098EA18 546F0005 */  bnel    $v1, $t7, .L8098EA30       
/* 005BC 8098EA1C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 005C0 8098EA20 AC830198 */  sw      $v1, 0x0198($a0)           ## 00000198
/* 005C4 8098EA24 0C263A1B */  jal     func_8098E86C              
/* 005C8 8098EA28 AC98019C */  sw      $t8, 0x019C($a0)           ## 0000019C
/* 005CC 8098EA2C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8098EA30:
/* 005D0 8098EA30 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 005D4 8098EA34 03E00008 */  jr      $ra                        
/* 005D8 8098EA38 00000000 */  nop


