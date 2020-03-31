glabel ObjHana_Draw
/* 001B0 80B93A10 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001B4 80B93A14 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001B8 80B93A18 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 001BC 80B93A1C 84EE001C */  lh      $t6, 0x001C($a3)           ## 0000001C
/* 001C0 80B93A20 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 001C4 80B93A24 3C0580B9 */  lui     $a1, %hi(D_80B93AA4)       ## $a1 = 80B90000
/* 001C8 80B93A28 31CF0003 */  andi    $t7, $t6, 0x0003           ## $t7 = 00000000
/* 001CC 80B93A2C 000FC100 */  sll     $t8, $t7,  4               
/* 001D0 80B93A30 00B82821 */  addu    $a1, $a1, $t8              
/* 001D4 80B93A34 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 001D8 80B93A38 8CA53AA4 */  lw      $a1, %lo(D_80B93AA4)($a1)  
/* 001DC 80B93A3C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001E0 80B93A40 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001E4 80B93A44 03E00008 */  jr      $ra                        
/* 001E8 80B93A48 00000000 */  nop
/* 001EC 80B93A4C 00000000 */  nop

