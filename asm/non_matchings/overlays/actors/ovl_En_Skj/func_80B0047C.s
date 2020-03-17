glabel func_80B0047C
/* 021CC 80B0047C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 021D0 80B00480 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 021D4 80B00484 0C2BF8CE */  jal     func_80AFE338              
/* 021D8 80B00488 24050018 */  addiu   $a1, $zero, 0x0018         ## $a1 = 00000018
/* 021DC 80B0048C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 021E0 80B00490 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 021E4 80B00494 03E00008 */  jr      $ra                        
/* 021E8 80B00498 00000000 */  nop


