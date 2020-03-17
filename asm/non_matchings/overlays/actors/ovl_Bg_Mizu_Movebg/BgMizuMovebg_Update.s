glabel BgMizuMovebg_Update
/* 00BDC 8089E80C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00BE0 8089E810 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00BE4 8089E814 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 00BE8 8089E818 0320F809 */  jalr    $ra, $t9                   
/* 00BEC 8089E81C 00000000 */  nop
/* 00BF0 8089E820 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00BF4 8089E824 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00BF8 8089E828 03E00008 */  jr      $ra                        
/* 00BFC 8089E82C 00000000 */  nop


