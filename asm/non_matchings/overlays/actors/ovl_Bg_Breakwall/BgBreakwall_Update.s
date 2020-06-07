glabel BgBreakwall_Update
/* 009D4 808705B4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 009D8 808705B8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 009DC 808705BC 8C9901EC */  lw      $t9, 0x01EC($a0)           ## 000001EC
/* 009E0 808705C0 0320F809 */  jalr    $ra, $t9                   
/* 009E4 808705C4 00000000 */  nop
/* 009E8 808705C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 009EC 808705CC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 009F0 808705D0 03E00008 */  jr      $ra                        
/* 009F4 808705D4 00000000 */  nop
