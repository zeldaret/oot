glabel BgHidanKousi_Update
/* 003D4 80889D34 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003D8 80889D38 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003DC 80889D3C 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 003E0 80889D40 0320F809 */  jalr    $ra, $t9                   
/* 003E4 80889D44 00000000 */  nop
/* 003E8 80889D48 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003EC 80889D4C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003F0 80889D50 03E00008 */  jr      $ra                        
/* 003F4 80889D54 00000000 */  nop
