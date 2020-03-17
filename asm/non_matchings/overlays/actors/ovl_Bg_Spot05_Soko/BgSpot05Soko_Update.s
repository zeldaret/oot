glabel BgSpot05Soko_Update
/* 0022C 808AE69C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00230 808AE6A0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00234 808AE6A4 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 00238 808AE6A8 0320F809 */  jalr    $ra, $t9                   
/* 0023C 808AE6AC 00000000 */  nop
/* 00240 808AE6B0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00244 808AE6B4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00248 808AE6B8 03E00008 */  jr      $ra                        
/* 0024C 808AE6BC 00000000 */  nop


