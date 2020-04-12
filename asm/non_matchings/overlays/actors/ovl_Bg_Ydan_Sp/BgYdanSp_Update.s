glabel BgYdanSp_Update
/* 01194 808C05A4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01198 808C05A8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0119C 808C05AC 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 011A0 808C05B0 0320F809 */  jalr    $ra, $t9                   
/* 011A4 808C05B4 00000000 */  nop
/* 011A8 808C05B8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 011AC 808C05BC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 011B0 808C05C0 03E00008 */  jr      $ra                        
/* 011B4 808C05C4 00000000 */  nop
