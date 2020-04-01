glabel BgSpot02Objects_Draw
/* 0059C 808ACBFC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 005A0 808ACC00 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 005A4 808ACC04 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 005A8 808ACC08 84EE001C */  lh      $t6, 0x001C($a3)           ## 0000001C
/* 005AC 808ACC0C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 005B0 808ACC10 3C05808B */  lui     $a1, %hi(D_808AD8B0)       ## $a1 = 808B0000
/* 005B4 808ACC14 000E7880 */  sll     $t7, $t6,  2               
/* 005B8 808ACC18 00AF2821 */  addu    $a1, $a1, $t7              
/* 005BC 808ACC1C 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 005C0 808ACC20 8CA5D8B0 */  lw      $a1, %lo(D_808AD8B0)($a1)  
/* 005C4 808ACC24 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 005C8 808ACC28 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 005CC 808ACC2C 03E00008 */  jr      $ra                        
/* 005D0 808ACC30 00000000 */  nop


