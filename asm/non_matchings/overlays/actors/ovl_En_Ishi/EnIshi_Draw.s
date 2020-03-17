glabel EnIshi_Draw
/* 01550 80A7F9B0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01554 80A7F9B4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01558 80A7F9B8 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 0155C 80A7F9BC 3C1980A8 */  lui     $t9, %hi(D_80A873E4)       ## $t9 = 80A80000
/* 01560 80A7F9C0 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 01564 80A7F9C4 000FC080 */  sll     $t8, $t7,  2               
/* 01568 80A7F9C8 0338C821 */  addu    $t9, $t9, $t8              
/* 0156C 80A7F9CC 8F3973E4 */  lw      $t9, %lo(D_80A873E4)($t9)  
/* 01570 80A7F9D0 0320F809 */  jalr    $ra, $t9                   
/* 01574 80A7F9D4 00000000 */  nop
/* 01578 80A7F9D8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0157C 80A7F9DC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01580 80A7F9E0 03E00008 */  jr      $ra                        
/* 01584 80A7F9E4 00000000 */  nop
/* 01588 80A7F9E8 00000000 */  nop
/* 0158C 80A7F9EC 00000000 */  nop

