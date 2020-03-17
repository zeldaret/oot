glabel func_808A1024
/* 00464 808A1024 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00468 808A1028 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0046C 808A102C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00470 808A1030 3C05808A */  lui     $a1, %hi(func_808A104C)    ## $a1 = 808A0000
/* 00474 808A1034 0C2282F0 */  jal     func_808A0BC0              
/* 00478 808A1038 24A5104C */  addiu   $a1, $a1, %lo(func_808A104C) ## $a1 = 808A104C
/* 0047C 808A103C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00480 808A1040 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00484 808A1044 03E00008 */  jr      $ra                        
/* 00488 808A1048 00000000 */  nop


