glabel BgMoriHineri_Update
/* 00764 808A3F34 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00768 808A3F38 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0076C 808A3F3C 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 00770 808A3F40 0320F809 */  jalr    $ra, $t9                   
/* 00774 808A3F44 00000000 */  nop
/* 00778 808A3F48 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0077C 808A3F4C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00780 808A3F50 03E00008 */  jr      $ra                        
/* 00784 808A3F54 00000000 */  nop
