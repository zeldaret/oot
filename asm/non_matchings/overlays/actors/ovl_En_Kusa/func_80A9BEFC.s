glabel func_80A9BEFC
/* 00F5C 80A9BEFC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00F60 80A9BF00 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00F64 80A9BF04 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00F68 80A9BF08 848E019C */  lh      $t6, 0x019C($a0)           ## 0000019C
/* 00F6C 80A9BF0C 29C10078 */  slti    $at, $t6, 0x0078           
/* 00F70 80A9BF10 54200004 */  bnel    $at, $zero, .L80A9BF24     
/* 00F74 80A9BF14 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00F78 80A9BF18 0C2A7003 */  jal     func_80A9C00C              
/* 00F7C 80A9BF1C 00000000 */  nop
/* 00F80 80A9BF20 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A9BF24:
/* 00F84 80A9BF24 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00F88 80A9BF28 03E00008 */  jr      $ra                        
/* 00F8C 80A9BF2C 00000000 */  nop
