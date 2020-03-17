glabel func_80B3E1B8
/* 01FD8 80B3E1B8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01FDC 80B3E1BC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01FE0 80B3E1C0 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 01FE4 80B3E1C4 51C00014 */  beql    $t6, $zero, .L80B3E218     
/* 01FE8 80B3E1C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01FEC 80B3E1CC 8CA21D9C */  lw      $v0, 0x1D9C($a1)           ## 00001D9C
/* 01FF0 80B3E1D0 50400011 */  beql    $v0, $zero, .L80B3E218     
/* 01FF4 80B3E1D4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01FF8 80B3E1D8 944F0000 */  lhu     $t7, 0x0000($v0)           ## 00000000
/* 01FFC 80B3E1DC 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 02000 80B3E1E0 55E1000D */  bnel    $t7, $at, .L80B3E218       
/* 02004 80B3E1E4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02008 80B3E1E8 84A200A4 */  lh      $v0, 0x00A4($a1)           ## 000000A4
/* 0200C 80B3E1EC 24010061 */  addiu   $at, $zero, 0x0061         ## $at = 00000061
/* 02010 80B3E1F0 24180013 */  addiu   $t8, $zero, 0x0013         ## $t8 = 00000013
/* 02014 80B3E1F4 14410005 */  bne     $v0, $at, .L80B3E20C       
/* 02018 80B3E1F8 00000000 */  nop
/* 0201C 80B3E1FC AC980260 */  sw      $t8, 0x0260($a0)           ## 00000260
/* 02020 80B3E200 AC800264 */  sw      $zero, 0x0264($a0)         ## 00000264
/* 02024 80B3E204 10000003 */  beq     $zero, $zero, .L80B3E214   
/* 02028 80B3E208 A08000C8 */  sb      $zero, 0x00C8($a0)         ## 000000C8
.L80B3E20C:
/* 0202C 80B3E20C 0C00B55C */  jal     Actor_Kill
              
/* 02030 80B3E210 00000000 */  nop
.L80B3E214:
/* 02034 80B3E214 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B3E218:
/* 02038 80B3E218 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0203C 80B3E21C 03E00008 */  jr      $ra                        
/* 02040 80B3E220 00000000 */  nop


