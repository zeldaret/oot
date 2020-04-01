glabel BgJyaIronobj_Draw
/* 00BA4 80899444 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00BA8 80899448 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00BAC 8089944C 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00BB0 80899450 84EE001C */  lh      $t6, 0x001C($a3)           ## 0000001C
/* 00BB4 80899454 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00BB8 80899458 3C05808A */  lui     $a1, %hi(D_808994A4)       ## $a1 = 808A0000
/* 00BBC 8089945C 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 00BC0 80899460 000FC080 */  sll     $t8, $t7,  2               
/* 00BC4 80899464 00B82821 */  addu    $a1, $a1, $t8              
/* 00BC8 80899468 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 00BCC 8089946C 8CA594A4 */  lw      $a1, %lo(D_808994A4)($a1)  
/* 00BD0 80899470 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00BD4 80899474 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00BD8 80899478 03E00008 */  jr      $ra                        
/* 00BDC 8089947C 00000000 */  nop

