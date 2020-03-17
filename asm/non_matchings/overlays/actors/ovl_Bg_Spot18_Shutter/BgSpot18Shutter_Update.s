glabel BgSpot18Shutter_Update
/* 00428 808B97F8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0042C 808B97FC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00430 808B9800 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 00434 808B9804 0320F809 */  jalr    $ra, $t9                   
/* 00438 808B9808 00000000 */  nop
/* 0043C 808B980C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00440 808B9810 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00444 808B9814 03E00008 */  jr      $ra                        
/* 00448 808B9818 00000000 */  nop


