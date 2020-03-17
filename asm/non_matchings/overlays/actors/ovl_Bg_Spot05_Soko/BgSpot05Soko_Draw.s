glabel BgSpot05Soko_Draw
/* 00250 808AE6C0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00254 808AE6C4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00258 808AE6C8 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 0025C 808AE6CC 84EE001C */  lh      $t6, 0x001C($a3)           ## 0000001C
/* 00260 808AE6D0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00264 808AE6D4 3C05808B */  lui     $a1, %hi(D_808AE724)       ## $a1 = 808B0000
/* 00268 808AE6D8 000E7880 */  sll     $t7, $t6,  2               
/* 0026C 808AE6DC 00AF2821 */  addu    $a1, $a1, $t7              
/* 00270 808AE6E0 0C00D498 */  jal     Draw_DListOpa
              
/* 00274 808AE6E4 8CA5E724 */  lw      $a1, %lo(D_808AE724)($a1)  
/* 00278 808AE6E8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0027C 808AE6EC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00280 808AE6F0 03E00008 */  jr      $ra                        
/* 00284 808AE6F4 00000000 */  nop
/* 00288 808AE6F8 00000000 */  nop
/* 0028C 808AE6FC 00000000 */  nop

