glabel BgSpot03Taki_Update
/* 005E0 808AE0C0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 005E4 808AE0C4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 005E8 808AE0C8 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 005EC 808AE0CC 0320F809 */  jalr    $ra, $t9                   
/* 005F0 808AE0D0 00000000 */  nop
/* 005F4 808AE0D4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 005F8 808AE0D8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 005FC 808AE0DC 03E00008 */  jr      $ra                        
/* 00600 808AE0E0 00000000 */  nop
