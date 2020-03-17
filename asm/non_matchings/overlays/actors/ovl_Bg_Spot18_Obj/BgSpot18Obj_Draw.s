glabel BgSpot18Obj_Draw
/* 00784 808B9094 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00788 808B9098 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0078C 808B909C 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00790 808B90A0 84EE001C */  lh      $t6, 0x001C($a3)           ## 0000001C
/* 00794 808B90A4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00798 808B90A8 3C05808C */  lui     $a1, %hi(D_808B9144)       ## $a1 = 808C0000
/* 0079C 808B90AC 31CF000F */  andi    $t7, $t6, 0x000F           ## $t7 = 00000000
/* 007A0 808B90B0 000FC080 */  sll     $t8, $t7,  2               
/* 007A4 808B90B4 00B82821 */  addu    $a1, $a1, $t8              
/* 007A8 808B90B8 0C00D498 */  jal     Draw_DListOpa
              
/* 007AC 808B90BC 8CA59144 */  lw      $a1, %lo(D_808B9144)($a1)  
/* 007B0 808B90C0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 007B4 808B90C4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 007B8 808B90C8 03E00008 */  jr      $ra                        
/* 007BC 808B90CC 00000000 */  nop

