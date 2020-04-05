glabel func_808AC4A4
/* 00364 808AC4A4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00368 808AC4A8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0036C 808AC4AC 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00370 808AC4B0 84EE001C */  lh      $t6, 0x001C($a3)           ## 0000001C
/* 00374 808AC4B4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00378 808AC4B8 3C05808B */  lui     $a1, %hi(D_808AC510)       ## $a1 = 808B0000
/* 0037C 808AC4BC 31CF0007 */  andi    $t7, $t6, 0x0007           ## $t7 = 00000000
/* 00380 808AC4C0 000FC080 */  sll     $t8, $t7,  2               
/* 00384 808AC4C4 00B82821 */  addu    $a1, $a1, $t8              
/* 00388 808AC4C8 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 0038C 808AC4CC 8CA5C510 */  lw      $a1, %lo(D_808AC510)($a1)  
/* 00390 808AC4D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00394 808AC4D4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00398 808AC4D8 03E00008 */  jr      $ra                        
/* 0039C 808AC4DC 00000000 */  nop

