glabel ItemOcarina_Update
/* 00658 80B86788 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0065C 80B8678C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00660 80B86790 8C99014C */  lw      $t9, 0x014C($a0)           ## 0000014C
/* 00664 80B86794 0320F809 */  jalr    $ra, $t9                   
/* 00668 80B86798 00000000 */  nop
/* 0066C 80B8679C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00670 80B867A0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00674 80B867A4 03E00008 */  jr      $ra                        
/* 00678 80B867A8 00000000 */  nop


