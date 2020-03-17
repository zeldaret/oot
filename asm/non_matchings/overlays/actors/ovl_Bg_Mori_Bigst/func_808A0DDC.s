glabel func_808A0DDC
/* 0021C 808A0DDC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00220 808A0DE0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00224 808A0DE4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00228 808A0DE8 3C05808A */  lui     $a1, %hi(func_808A0E04)    ## $a1 = 808A0000
/* 0022C 808A0DEC 0C2282F0 */  jal     func_808A0BC0              
/* 00230 808A0DF0 24A50E04 */  addiu   $a1, $a1, %lo(func_808A0E04) ## $a1 = 808A0E04
/* 00234 808A0DF4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00238 808A0DF8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0023C 808A0DFC 03E00008 */  jr      $ra                        
/* 00240 808A0E00 00000000 */  nop


