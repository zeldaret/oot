glabel func_808A47D8
/* 00198 808A47D8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0019C 808A47DC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001A0 808A47E0 3C05808A */  lui     $a1, %hi(func_808A47FC)    ## $a1 = 808A0000
/* 001A4 808A47E4 0C229190 */  jal     func_808A4640              
/* 001A8 808A47E8 24A547FC */  addiu   $a1, $a1, %lo(func_808A47FC) ## $a1 = 808A47FC
/* 001AC 808A47EC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001B0 808A47F0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001B4 808A47F4 03E00008 */  jr      $ra                        
/* 001B8 808A47F8 00000000 */  nop
