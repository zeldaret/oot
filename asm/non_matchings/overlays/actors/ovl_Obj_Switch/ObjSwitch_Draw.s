glabel ObjSwitch_Draw
/* 019AC 80B9EBBC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 019B0 80B9EBC0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 019B4 80B9EBC4 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 019B8 80B9EBC8 3C1980BA */  lui     $t9, %hi(D_80B9EDE8)       ## $t9 = 80BA0000
/* 019BC 80B9EBCC 31CF0007 */  andi    $t7, $t6, 0x0007           ## $t7 = 00000000
/* 019C0 80B9EBD0 000FC080 */  sll     $t8, $t7,  2               
/* 019C4 80B9EBD4 0338C821 */  addu    $t9, $t9, $t8              
/* 019C8 80B9EBD8 8F39EDE8 */  lw      $t9, %lo(D_80B9EDE8)($t9)  
/* 019CC 80B9EBDC 0320F809 */  jalr    $ra, $t9                   
/* 019D0 80B9EBE0 00000000 */  nop
/* 019D4 80B9EBE4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 019D8 80B9EBE8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 019DC 80B9EBEC 03E00008 */  jr      $ra                        
/* 019E0 80B9EBF0 00000000 */  nop
/* 019E4 80B9EBF4 00000000 */  nop
/* 019E8 80B9EBF8 00000000 */  nop
/* 019EC 80B9EBFC 00000000 */  nop

